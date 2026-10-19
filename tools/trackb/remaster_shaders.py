#!/usr/bin/env python3
"""Remaster shaders: per-pixel lighting, specular, fog, rim light and normal maps (REMASTER.md, "Shaders").

  py -3 tools/trackb/remaster_shaders.py --data <files dir of a game data copy>

Reads GL_Diffuse_L1_iPhone_VS/FS.glsl (world, props) and ProfileCOMMON_emul_VS/FS.glsl (characters, skinned meshes,
objects; its lit, textured variants) from <data>/shaders.pak - the user's own game data: the shader text is not kept in
this repository - applies the edits below and writes <data>/data/port/remaster_shaders.zip. The game mounts that zip
before shaders.pak (game-app remaster_normal_maps.cpp), so these files replace the originals; the pak stays untouched.

Every effect is driven by a material uniform that the material hook sets from a port setting; at 0 the original code path
runs, so each one can be switched off on its own:
  PixelLighting   (pixellighting)   Light0 (the player light: ambient + diffuse * N.L * attenuation, the original's own
                                    formula) evaluated per pixel instead of per vertex - a round pool of light instead of
                                    one smeared over large triangles; the normal map takes part in N.L.
  NormalStrength  (normalstrength)  normal maps (<diffuse>_n.tga): tangent frame from screen-space derivatives (no mesh
                                    tangents), plus a detail term against Light0 tipped towards a fixed oblique direction
                                    (a light from straight above shows almost no relief). NormalGreen flips green.
  SpecularBoost   (specular)        world: Blinn-Phong per pixel with the camera position (EyePos, an automatic engine
                                    parameter) and the game's specular maps; characters: the original specular term with
                                    the real view vector (the original used a fixed "eye" of (0,0,1)).
  FogCurve        (fogcurve)        per-pixel fog from the view depth with a smoothstep curve (clear near, denser far)
                                    instead of a per-vertex linear factor.
  RimStrength     (rimlight)        characters and objects: a light rim on silhouettes, tinted by the player light.
  AlphaCoverage   (alphacoverage)   alpha-tested surfaces (foliage, grates, hair): the hard alpha cut becomes a one-pixel
                                    ramp that alpha-to-coverage turns into MSAA edge coverage (smooth cut-out edges). The
                                    uniform only survives in the alpha-tested variants, which is how the hook finds them;
                                    it switches the pass's SampleAlphaToCoverage state on (non-blended passes, MSAA only).
"""
import argparse
import os
import sys
import zipfile

VS_NAME = 'GL_Diffuse_L1_iPhone_VS.glsl'
FS_NAME = 'GL_Diffuse_L1_iPhone_FS.glsl'
PC_VS_NAME = 'ProfileCOMMON_emul_VS.glsl'
PC_FS_NAME = 'ProfileCOMMON_emul_FS.glsl'

FS_HEAD = '''#ifdef GL_ES
#extension GL_OES_standard_derivatives : enable
#endif
'''

# The mapped normal dhNp; dhN is the geometric world normal. The tangent axes T, B come from the mesh's vertex tangents when it
# has them (world shader: vNmTangent / vNmBinormal, game-app remaster_tangents.cpp) and otherwise from screen-space derivatives
# (needs vNmWorldPos and the texture coordinates `UV`), which change from triangle to triangle where a mapping is stretched.
DERIVATIVE_FRAME = '''		highp vec3 dp1 = dFdx(vNmWorldPos);
		highp vec3 dp2 = dFdy(vNmWorldPos);
		highp vec2 duv1 = dFdx(UV);
		highp vec2 duv2 = dFdy(UV);
		highp vec3 dp2perp = cross(dp2, dhN);
		highp vec3 dp1perp = cross(dhN, dp1);
		highp vec3 T = dp2perp * duv1.x + dp1perp * duv2.x;
		highp vec3 B = dp2perp * duv1.y + dp1perp * duv2.y;
'''

NORMAL_MAP = '''		mediump vec3 nm = texture2D(NormalSampler, UV).xyz * 2.0 - 1.0;
		nm.y *= (NormalGreen < 0.0) ? -1.0 : 1.0;
%FRAME%		// unit axes in the surface plane: each triangle's frame then differs from its neighbour's only by a small rotation.
		// (Scaling both by the longer axis, the usual cotangent frame, changed the bump strength from triangle to triangle
		// where the floor's mapping is stretched unevenly: visible lines along the triangle edges.)
		T = T - dhN * dot(dhN, T);
		B = B - dhN * dot(dhN, B);
		T *= inversesqrt(max(dot(T, T), 1e-12));
		B *= inversesqrt(max(dot(B, B), 1e-12));
		dhNp = normalize(T * nm.x + B * nm.y + dhN * nm.z);
'''

VERTEX_FRAME = '''		highp vec3 T = vNmTangent.xyz;
		highp vec3 B = vNmBinormal;
		if (vNmTangent.w < 1.5)  // no remaster tangents on this mesh (w = 2 marks them)
		{
''' + DERIVATIVE_FRAME.replace('highp vec3 T =', 'T =').replace('highp vec3 B =', 'B =') + '''		}
'''

RELIEF = '''	if (NormalStrength > 0.0)
	{
		// detail relief against Light0 tipped towards an oblique direction (world is Z-up)
		mediump vec3 dhRL = normalize(dhL + vec3(-0.55, 0.55, 0.35));
		mediump float relief = 1.0 + NormalStrength * (dot(dhNp, dhRL) - dot(dhN, dhRL));
		color.xyz *= clamp(relief, 0.5, 1.5);
	}
'''

DYN_LIGHT_DECLS = '''// dynamic lights (torches, spells; game-app remaster_lights.cpp): position, colour with intensity in alpha, radius in x
uniform highp vec4 Light5Position;
uniform mediump vec4 Light5Diffusecolor;
uniform highp vec3 Light5Attenuation;
uniform highp vec4 Light6Position;
uniform mediump vec4 Light6Diffusecolor;
uniform highp vec3 Light6Attenuation;
uniform highp vec4 Light7Position;
uniform mediump vec4 Light7Diffusecolor;
uniform highp vec3 Light7Attenuation;
mediump vec3 dhPointLight(highp vec3 p, mediump vec4 c, highp float r, mediump vec3 n)
{
	highp vec3 v = p - vNmWorldPos;
	highp float d2 = dot(v, v);
	mediump float w = clamp(1.0 - d2 / max(r * r, 1.0), 0.0, 1.0);
	w *= w;
	return c.rgb * (c.a * w * max(dot(n, v * inversesqrt(max(d2, 1.0))), 0.0));
}'''

# ---- GL_Diffuse_L1 (world, props) ---------------------------------------------------------------------------------------

DIFF_VS_DECLS = '''
// DH2 remaster (tools/trackb/remaster_shaders.py)
uniform highp vec3 EyePos;
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
varying mediump vec3 vNmEyeVec;
varying lowp vec4 vNmVertexColor;
attribute vec4 Tangent;
attribute vec3 Binormal;
varying mediump vec4 vNmTangent;
varying mediump vec3 vNmBinormal;
#ifdef FG
varying mediump float vNmFogDepth;
#endif
'''

DIFF_FS_DECLS = '''
// DH2 remaster (tools/trackb/remaster_shaders.py)
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
varying mediump vec3 vNmEyeVec;
varying lowp vec4 vNmVertexColor;
varying mediump vec4 vNmTangent;
varying mediump vec3 vNmBinormal;
uniform lowp sampler2D NormalSampler;
uniform mediump float NormalStrength;
uniform mediump float NormalGreen;
uniform mediump float PixelLighting;
uniform mediump float SpecularBoost;
uniform mediump float FogCurve;
uniform mediump float AlphaCoverage;
uniform highp vec3 Light0Attenuation;
uniform highp vec4 Light0Ambientcolor;
uniform highp vec4 Light0Diffusecolor;
#ifdef FG
varying mediump float vNmFogDepth;
uniform mediump vec2 fogstartend;
#endif
''' + DYN_LIGHT_DECLS + '''
#ifdef SP
uniform mediump float Glossiness;
#endif
'''

DIFF_FS_LIGHTING = '''
	// DH2 remaster: normal map and per-pixel lighting
	mediump vec3 dhN = normalize(vNmWorldNormal);
	mediump vec3 dhNp = dhN;
	if (NormalStrength > 0.0)
	{
''' + NORMAL_MAP.replace('%FRAME%', VERTEX_FRAME).replace('UV', 'vTexCoord0.xy') + '''	}
	highp float dhDist = length(vNmLightVec);
	mediump vec3 dhL = vNmLightVec / max(dhDist, 1e-4);
	mediump float dhAtt = 1.0 / (Light0Attenuation.x + Light0Attenuation.y * dhDist + Light0Attenuation.z * dhDist * dhDist);
	// the original's vertex shader uses the world normal without normalising it (scaled meshes light brighter): kept
	mediump vec3 dhNs = dhNp * length(vNmWorldNormal);
	if (PixelLighting > 0.0)
	{
		// the original light near the player exceeds 2; per vertex it was spread over large triangles, per pixel it peaks right
		// under the player and bright textures (ice) clip to flat colour. Only the direct (diffuse) term rolls off, above 0.6
		// (asymptote 1.2): the ambient term (full white in many levels) and the light away from the peak are unchanged.
		mediump float dhDirect = max(dot(dhNs, dhL), 0.0) * dhAtt;
		mediump float dhOver = max(dhDirect - 0.6, 0.0);
		dhDirect = min(dhDirect, 0.6) + dhOver / (1.0 + dhOver * 1.67);
		mediump vec3 dhLight = Light0Ambientcolor.xyz + Light0Diffusecolor.xyz * dhDirect;
		color = vec4(dhLight * vNmVertexColor.xyz, 1.0) * Diffuse;
	}
	// DH2 remaster: dynamic lights
	mediump vec3 dhDyn = dhPointLight(Light5Position.xyz, Light5Diffusecolor, Light5Attenuation.x, dhNp)
	                   + dhPointLight(Light6Position.xyz, Light6Diffusecolor, Light6Attenuation.x, dhNp)
	                   + dhPointLight(Light7Position.xyz, Light7Diffusecolor, Light7Attenuation.x, dhNp);
	color.xyz += dhDyn * vNmVertexColor.xyz * Diffuse.xyz;
'''


def find_or_exit(text, anchor, label, start=0):
    i = text.find(anchor, start)
    if i < 0:
        sys.exit('anchor not found (%s): %r' % (label, anchor))
    return i


def insert_after(text, anchor, addition, label, start=0):
    j = find_or_exit(text, anchor, label, start) + len(anchor)
    return text[:j] + addition + text[j:]


def insert_before(text, anchor, addition, label, start=0):
    i = find_or_exit(text, anchor, label, start)
    return text[:i] + addition + text[i:]


def replace_once(text, old, new, label):
    find_or_exit(text, old, label)
    return text.replace(old, new, 1)


def patch_vs(src):
    src = insert_after(src, 'varying mediump vec4 vTexCoord0;', DIFF_VS_DECLS, 'vs declarations')
    src = insert_after(src, 'highp vec3 worldSpacePos = (matWorld * Vertex).xyz;',
                       '\n\tvNmWorldPos = worldSpacePos;\n\tvNmWorldNormal = transformedNormal;'
                       '\n\tvNmTangent = vec4((matWorld * vec4(Tangent.xyz, 0.0)).xyz, Tangent.w);\n\tvNmBinormal = (matWorld * vec4(Binormal, 0.0)).xyz;'
                       '\n\tvNmEyeVec = (matWorld * vec4(EyePos, 1.0)).xyz - worldSpacePos;', 'vs position')
    src = insert_before(src, '// Light Attenuation', 'vNmLightVec = Light0Vec;\n    ', 'vs light vector')
    # SP variants: the specular eye vector exactly as the original computes it (its eye position from matViewIT)
    src = insert_after(src, 'highp vec3 eye = normalize(eyePos.xyz - worldSpacePos);', '\n\t\tvNmEyeVec = eyePos.xyz - worldSpacePos;',
                       'vs specular eye')
    src = insert_after(src, 'vColor = color * vec4(Color.xyz, 1.0);', '\n    vNmVertexColor = vec4(Color.xyz, 1.0);', 'vs vertex colour')
    src = insert_after(src, 'float fogDistance = dot(matWorldViewT[2], Vertex);//length(fogVector);',
                       '\n\tvNmFogDepth = fogDistance;', 'vs fog depth')
    return src


COVERAGE_NOTE = '// DH2 remaster: alpha to coverage - the cut becomes a one-pixel ramp that MSAA turns into partial coverage'


SOFT_CLIP = '''	// DH2 remaster: highlights roll off above 0.8 instead of clipping, so a bright texture under the player's light keeps its
	// detail (the ice floors went flat); colours below 0.8, most of every level, are unchanged
	if (PixelLighting > 0.0)
	{
		mediump vec3 dhHi = max(color.xyz - 0.8, 0.0);
		color.xyz = min(color.xyz, vec3(0.8)) + dhHi / (1.0 + dhHi * 5.0);
	}
	// the relief after the roll-off, so the bumps stay visible where the player's light is brightest
''' + RELIEF


def patch_fs(src):
    src = FS_HEAD + src
    src = insert_after(src, 'varying mediump vec4 vTexCoord0;', DIFF_FS_DECLS, 'fs declarations')
    src = replace_once(src, '#ifdef AT\n\tif (Diffuse.w < 0.8) discard;\t\n#endif', '''#ifdef AT
	if (AlphaCoverage > 0.0)
	{
		''' + COVERAGE_NOTE + '''
		Diffuse.w = clamp((Diffuse.w - 0.8) / max(fwidth(Diffuse.w), 1e-3) + 0.5, 0.0, 1.0);
		if (Diffuse.w <= 0.0) discard;
	}
	else if (Diffuse.w < 0.8) discard;
#endif''', 'fs alpha test')
    main = find_or_exit(src, 'void main()', 'fs main')
    src = insert_after(src, '#else\n\tlowp vec4 color = Diffuse;\n#endif', '\n' + DIFF_FS_LIGHTING, 'fs colour init', main)
    src = replace_once(src, '\tspecularColor *= vAttNdotHV;', '''	if (PixelLighting > 0.0)
	{
		mediump vec3 dhH = normalize(dhL + normalize(vNmEyeVec));
		specularColor *= (dot(dhNs, dhL) > 0.0 ? dhAtt * pow(max(dot(dhNs, dhH), 0.0), Glossiness) : 0.0) * SpecularBoost;
	}
	else
	{
		specularColor *= vAttNdotHV;
	}''', 'fs specular')
    src = insert_before(src, '\tgl_FragColor = clamp(color, 0.0, 1.0);', SOFT_CLIP, 'fs soft clip')
    src = replace_once(src, '\tcolor.xyz = mix(color.xyz, fogcolor.xyz, vFogFactor);', '''	mediump float dhFog = vFogFactor;
	if (FogCurve > 0.0)
	{
		mediump float f = clamp((vNmFogDepth - fogstartend.x) / max(fogstartend.y - fogstartend.x, 1e-3), 0.0, 1.0);
		dhFog = mix(f, f * f * (3.0 - 2.0 * f), FogCurve);
	}
	color.xyz = mix(color.xyz, fogcolor.xyz, dhFog);''', 'fs fog')
    return src


# ---- ProfileCOMMON_emul (characters, skinned meshes, objects) ---------------------------------------------------------

PC_GUARD = '#if defined LIGHTING && defined TEXTURED'

PC_VS_DECLS = '''
''' + PC_GUARD + '''
// DH2 remaster (tools/trackb/remaster_shaders.py)
uniform highp vec3 EyePos;
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
varying mediump vec3 vNmEyeVec;
#endif
'''

PC_FS_DECLS = '''
''' + PC_GUARD + '''
// DH2 remaster (tools/trackb/remaster_shaders.py)
varying highp vec3 vNmWorldPos;
varying mediump vec3 vNmWorldNormal;
varying mediump vec3 vNmLightVec;
varying mediump vec3 vNmEyeVec;
uniform lowp sampler2D NormalSampler;
uniform mediump float NormalStrength;
uniform mediump float NormalGreen;
uniform mediump float PixelLighting;
uniform mediump float SpecularBoost;
uniform mediump float RimStrength;
uniform highp vec3 Light0Attenuation;
uniform highp vec4 Light0Ambientcolor;
uniform highp vec4 Light0Diffusecolor;
uniform highp vec4 Light0Specularcolor;
uniform highp vec4 emissioncolor;
uniform highp vec4 ambientcolor;
uniform highp vec4 specularcolor;
uniform highp float shininess;
uniform highp vec4 SceneAmbientLight;
uniform mediump vec4 DiffuseColor;
''' + DYN_LIGHT_DECLS + '''
#endif
'''

PC_FS_LIGHTING = '''
''' + PC_GUARD + '''
	// DH2 remaster: normal map, per-pixel lighting (the original's formula), view-dependent specular, rim light
	mediump vec3 dhN = normalize(vNmWorldNormal);
	mediump vec3 dhNp = dhN;
	if (NormalStrength > 0.0)
	{
''' + NORMAL_MAP.replace('%FRAME%', DERIVATIVE_FRAME).replace('UV', 'vTexCoord0') + '''	}
	highp float dhDist = length(vNmLightVec);
	mediump vec3 dhL = vNmLightVec / max(dhDist, 1e-4);
	mediump vec3 dhV = normalize(vNmEyeVec);
	mediump float dhAtt = 1.0 / (Light0Attenuation.x + Light0Attenuation.y * dhDist + Light0Attenuation.z * dhDist * dhDist);
	if (PixelLighting > 0.0)
	{
		// the original's vertex shader uses the world normal without normalising it: its length is kept in N.L
		// wrapped diffuse: the player's light sits just above the characters, so with plain N.L only their tops caught it and they
		// stayed dark next to the lit floor; wrapping lets it reach their sides
		mediump float nDotVP = max((dot(dhNp, dhL) + 0.6) / 1.6, 0.0) * length(vNmWorldNormal);
		mediump float nDotHV = max(dot(dhNp, normalize(dhL + dhV)), 0.0);
		mediump float pf = nDotVP > 0.0 ? pow(nDotHV, max(shininess, 0.0001)) : 0.0;
		highp vec4 lit = emissioncolor + (SceneAmbientLight + Light0Ambientcolor * dhAtt) * ambientcolor
		               + Light0Diffusecolor * (nDotVP * dhAtt) * DiffuseColor
		               + Light0Specularcolor * (pf * dhAtt * SpecularBoost) * specularcolor;
		color = vec4(clamp(lit.xyz, 0.0, 1.0), vColor0.w);
	}
	if (RimStrength > 0.0)
	{
		mediump float rim = 1.0 - max(dot(dhNp, dhV), 0.0);
		color.xyz += (rim * rim * rim * RimStrength) * clamp(Light0Diffusecolor.xyz * (0.5 + dhAtt), 0.0, 1.0);
	}
	// dynamic lights (torches, spells), before the texture is applied
	color.xyz += (dhPointLight(Light5Position.xyz, Light5Diffusecolor, Light5Attenuation.x, dhNp)
	            + dhPointLight(Light6Position.xyz, Light6Diffusecolor, Light6Attenuation.x, dhNp)
	            + dhPointLight(Light7Position.xyz, Light7Diffusecolor, Light7Attenuation.x, dhNp)) * DiffuseColor.xyz;
#endif
'''

PC_FS_RELIEF = '''
''' + PC_GUARD + '''
''' + RELIEF + '''#endif
'''


def patch_pc_vs(src):
    src = insert_after(src, 'varying lowp vec4 vColor0;', PC_VS_DECLS, 'pc vs declarations')
    src = insert_after(src, 'vec3 Light0Vec = Light0Position.xyz - worldPosition.xyz * Light0Position.w;',
                       '\n#ifdef TEXTURED\n    vNmWorldPos = worldPosition.xyz;\n    vNmWorldNormal = transformedNormal;\n'
                       '    vNmLightVec = Light0Vec;\n    vNmEyeVec = (matWorld * vec4(EyePos, 1.0)).xyz - worldPosition.xyz;\n#endif',
                       'pc vs assignments')
    return src


def patch_pc_fs(src):
    src = FS_HEAD + src
    src = insert_after(src, 'varying lowp vec4 vColor0;', PC_FS_DECLS + '\nuniform mediump float AlphaCoverage;\n', 'pc fs declarations')
    src = replace_once(src, '#ifdef ALPHATEST\n\tif (color.a <= AlphaRef)\n\t{\n\t\tdiscard;\n\t}\n#endif', '''#ifdef ALPHATEST
	if (AlphaCoverage > 0.0)
	{
		''' + COVERAGE_NOTE + '''
		color.a = clamp((color.a - AlphaRef) / max(fwidth(color.a), 1e-3) + 0.5, 0.0, 1.0);
		if (color.a <= 0.0) discard;
	}
	else if (color.a <= AlphaRef)
	{
		discard;
	}
#endif''', 'pc fs alpha test')
    main = find_or_exit(src, 'void main()', 'pc fs main')
    src = insert_after(src, 'lowp vec4 color = vColor0;', PC_FS_LIGHTING, 'pc fs lighting', main)
    main = find_or_exit(src, 'void main()', 'pc fs main')
    src = insert_before(src, '#ifdef ALPHATEST', PC_FS_RELIEF, 'pc fs relief', main)
    return src


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--data', required=True, help='files dir of a game data copy (holds shaders.pak and data/)')
    a = ap.parse_args()
    with zipfile.ZipFile(os.path.join(a.data, 'shaders.pak')) as z:
        sources = {n: z.read(n).decode('latin-1').replace(chr(13) + chr(10), chr(10)) for n in (VS_NAME, FS_NAME, PC_VS_NAME, PC_FS_NAME)}
    out_dir = os.path.join(a.data, 'data', 'port')
    os.makedirs(out_dir, exist_ok=True)
    out = os.path.join(out_dir, 'remaster_shaders.zip')
    with zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) as z:
        z.writestr(VS_NAME, patch_vs(sources[VS_NAME]).encode('latin-1'))
        z.writestr(FS_NAME, patch_fs(sources[FS_NAME]).encode('latin-1'))
        z.writestr(PC_VS_NAME, patch_pc_vs(sources[PC_VS_NAME]).encode('latin-1'))
        z.writestr(PC_FS_NAME, patch_pc_fs(sources[PC_FS_NAME]).encode('latin-1'))
    print('wrote', out)


if __name__ == '__main__':
    main()
