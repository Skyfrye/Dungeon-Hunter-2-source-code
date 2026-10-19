#!/usr/bin/env python3
"""Normal maps for the remaster with StableNormal (REMASTER.md, "Normal maps").

  <sn>/.venv/Scripts/python.exe tools/trackb/remaster_normals.py generate [--src <hd3x/3d>] [--out <dir>] [--only a,b] [--all]
  <sn>/.venv/Scripts/python.exe tools/trackb/remaster_normals.py clean    [--out <dir>] [--sigma 12] [--max-slope 0.8]
  py -3 tools/trackb/remaster_normals.py pack --data <game data copy> [--out <dir>]

generate: StableNormal (Stable-X, Apache-2.0; code and weights stay in the user's tools folder, Documents/DH2-tools/
  StableNormal, own venv: torch cu128, diffusers 0.30.3, huggingface_hub 0.25.2, transformers 4.44.2) estimates a
  normal map for every lit-surface texture of <src> (world atlases, characters, weapons, objects; menus, skies, effects
  and data maps are skipped unless --all). It works on 1024 inputs, so a texture is cut into overlapping 1024 tiles
  blended with feathered weights. Raw output: <out>/<name>/normal.png (StableNormal's camera space: +x = image LEFT,
  +y = image up, measured on a rendered sphere). A texture whose normal.png is newer than its input is skipped.
  CHORD (Ubisoft La Forge) was tried first and rejected: on hand-painted art its relief is faint and blurred.

clean: StableNormal reads atlas pieces as whole 3D objects (a tilted background, whole armour plates leaning) and
  over-tilts some bevels. The large-scale tilt is removed (normal xy minus its Gaussian blur, --sigma pixels at 3x),
  x is flipped and transparent texels go flat. StableNormal reads a top-down painted floor as flat (ice cavern: 95 % of
  texels under 6 degrees), so the painted relief is added: height from the texture's luminance at four scales (dark
  crevices low, lit stone tops high; bands of 6 to 30 texels, finer is brush grain), scaled so its 95th percentile slope is
  --target-slope (0.35, about 19 degrees) on
  world textures and 40 % of that on characters; the sum is capped at --max-slope. Result:
  <out>/<name>/<name>_n.png, a tangent-space detail map in the convention of the remaster shaders (OpenGL: +x = +u,
  +y = image up, port setting normalgreen=1).

pack: every <name>_n.png goes into <data>/data/hd/3d/textures/<name>_n.tga as ETC2 RGB with a full mip chain (the
  HD layer the material hook reads, game-app remaster_normal_maps.cpp).
"""
import argparse
import os
import re
import shutil
import sys
import time

import numpy as np

HOME = os.path.expanduser('~')
SN = os.path.join(HOME, 'Documents', 'DH2-tools', 'StableNormal')
SRC = os.path.join(HOME, 'Documents', 'DH2-remaster', 'hd3x', '3d')
OUT = os.path.join(HOME, 'Documents', 'DH2-remaster', 'stablenormal')
LIT = re.compile(r'^(env_|char_|atlas_modular_|atlas_weapons|atlas_skinned_|atlas_dh2_game_objects_\d+$|dh1_atlas_|walls$)', re.I)
DATA = re.compile(r'(_spec$|_alpha$|lightmap|lightingmap|lightspec|_specular$)', re.I)
TILE, OVERLAP = 1024, 192


def wanted(name, everything):
    if everything:
        return True
    return bool(LIT.search(name)) and not DATA.search(name)


def feather(n, overlap):
    w = np.ones(n, np.float32)
    if overlap > 0:
        ramp = (np.arange(overlap, dtype=np.float32) + 0.5) / overlap
        w[:overlap] = ramp
        w[-overlap:] = ramp[::-1]
    return w


def starts(size, tile):
    if size <= tile:
        return [0]
    return sorted(set(list(range(0, size - tile, tile - OVERLAP)) + [size - tile]))


def generate(a):
    import posixpath
    import types
    from PIL import Image
    sys.path.insert(0, a.sn)
    cwd = os.getcwd()
    os.chdir(a.sn)
    import hubconf
    hubconf.os = types.SimpleNamespace(path=posixpath)  # its repo ids are joined with os.path.join: '\' on Windows
    pred = hubconf.StableNormal()
    os.chdir(cwd)
    Image.MAX_IMAGE_PIXELS = None
    names = sorted(os.path.splitext(f)[0] for f in os.listdir(a.src) if f.lower().endswith('.png'))
    only = {n.strip() for n in a.only.split(',') if n.strip()}
    names = [n for n in names if n in only] if only else [n for n in names if wanted(n, a.all)]
    print('textures:', len(names), flush=True)
    for name in names:
        src = os.path.join(a.src, name + '.png')
        dst = os.path.join(a.out, name, 'normal.png')
        if os.path.exists(dst) and os.path.getmtime(dst) >= os.path.getmtime(src):
            continue
        t0 = time.time()
        rgba = Image.open(src).convert('RGBA')
        rgb = rgba.convert('RGB')
        alpha = np.asarray(rgba)[..., 3]
        w, h = rgb.size
        tile = min(TILE, w, h)
        acc = np.zeros((h, w, 3), np.float32)
        wsum = np.zeros((h, w), np.float32)
        for y in starts(h, tile):
            for x in starts(w, tile):
                n = pred(rgb.crop((x, y, x + tile, y + tile)), resolution=tile, match_input_resolution=True)
                n = np.asarray(n).astype(np.float32) / 255.0 * 2 - 1
                wt = np.outer(feather(tile, OVERLAP if h > tile else 0), feather(tile, OVERLAP if w > tile else 0))
                acc[y:y + tile, x:x + tile] += n * wt[..., None]
                wsum[y:y + tile, x:x + tile] += wt
        n = acc / np.maximum(wsum, 1e-6)[..., None]
        n[alpha < 5] = (0, 0, 1)
        n /= np.maximum(np.linalg.norm(n, axis=2, keepdims=True), 1e-6)
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        Image.fromarray(((n * 0.5 + 0.5) * 255 + 0.5).astype(np.uint8)).save(dst)
        print('%-44s %dx%d %.1fs' % (name, w, h, time.time() - t0), flush=True)


WORLD = re.compile(r'^(env_|walls$|dh1_atlas_|atlas_dh2_game_objects_)', re.I)


def painted_relief(texture_rgba, device):
    """Height from the painting (multi-scale luminance: stones and cracks at 3x are a few texels to ~30 texels wide; the
    coarse bands get more weight than the fine one so the paint grain does not become noise), as slopes (dh/du, dh/dv)."""
    import torch
    from torchvision.transforms.functional import gaussian_blur
    rgb = texture_rgba[..., :3].astype(np.float32) / 255.0
    lum = 0.299 * rgb[..., 0] + 0.587 * rgb[..., 1] + 0.114 * rgb[..., 2]
    L = torch.from_numpy(np.ascontiguousarray(lum))[None, None].to(device)
    h = torch.zeros_like(L)
    # stone-scale bands only: a band finer than ~6 texels at 3x is brush strokes and paint grain, which read as grit
    for sigma, w in ((6.0, 0.6), (14.0, 1.0), (30.0, 0.8)):
        k = int(sigma * 6) | 1
        h += w * (L - gaussian_blur(L, [k, k], [sigma, sigma]))
    h = gaussian_blur(h, [15, 15], [2.5, 2.5])[0, 0]
    dh_dv, dh_du = torch.gradient(h)
    return np.dstack([-dh_du.cpu().numpy(), dh_dv.cpu().numpy()])  # height up where bright: +u slope tilts the normal to -x


def clean(a):
    import torch
    from PIL import Image
    from torchvision.transforms.functional import gaussian_blur
    Image.MAX_IMAGE_PIXELS = None
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    k = int(a.sigma * 6) | 1
    for name in sorted(os.listdir(a.out)):
        src = os.path.join(a.out, name, 'normal.png')
        dst = os.path.join(a.out, name, name + '_n.png')
        texture = os.path.join(a.src, name + '.png')
        if not os.path.exists(src) or not os.path.exists(texture):
            continue
        rgba = np.asarray(Image.open(texture).convert('RGBA'))
        # 1. StableNormal's shape (characters, objects): large-scale tilt removed, kept as it is (no gain)
        n = np.asarray(Image.open(src).convert('RGB')).astype(np.float32) / 255.0 * 2 - 1
        xy = torch.from_numpy(np.ascontiguousarray(n[..., :2].transpose(2, 0, 1)))[None].to(device)
        d = (xy - gaussian_blur(xy, [k, k], [a.sigma, a.sigma]))[0].cpu().numpy().transpose(1, 2, 0)
        z = np.sqrt(np.clip(1 - (d ** 2).sum(2), 0.05, 1))[..., None]
        sn = d / z
        sn[..., 0] = -sn[..., 0]  # StableNormal +x points to the image left; tangent space +x is +u (image right)
        sn_p95 = float(np.percentile(np.linalg.norm(sn, axis=2), 95))
        # 2. painted relief from the texture, scaled so its 95th percentile slope is --target-slope on world textures (floors,
        #    walls, props: stones become bumps and cracks grooves) and 40 % of that on characters and weapons (detail only)
        pr = painted_relief(rgba, device)
        pr_p95 = float(np.percentile(np.linalg.norm(pr, axis=2), 95))
        target = a.target_slope if WORLD.search(name) else a.target_slope * 0.4
        pr = pr * (target / max(pr_p95, 1e-6))
        s = sn + pr
        m = np.linalg.norm(s, axis=2, keepdims=True)
        s = s * np.minimum(1, a.max_slope / np.maximum(m, 1e-6))
        out = np.dstack([s, np.ones(s.shape[:2], np.float32)])
        out /= np.linalg.norm(out, axis=2, keepdims=True)
        out[rgba[..., 3] < 5] = (0, 0, 1)
        Image.fromarray(((out * 0.5 + 0.5) * 255 + 0.5).astype(np.uint8)).save(dst)
        print('cleaned %-44s stablenormal p95 %.2f + painted relief (target %.2f)' % (name, sn_p95, target), flush=True)


def pack(a):
    from PIL import Image
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import textures
    Image.MAX_IMAGE_PIXELS = None
    texdir = os.path.join(a.data, 'data', 'hd', '3d', 'textures')
    tmp = os.path.join(a.data, '_etc2_tmp')
    os.makedirs(texdir, exist_ok=True)
    os.makedirs(tmp, exist_ok=True)
    count = 0
    for name in sorted(os.listdir(a.out)):
        src = os.path.join(a.out, name, name + '_n.png')
        if not os.path.exists(src):
            continue
        blob, psnr = textures.etc2_container(Image.open(src).convert('RGBA'), tmp)
        with open(os.path.join(texdir, name + '_n.tga'), 'wb') as fh:
            fh.write(blob)
        count += 1
        print('%-44s PSNR %s' % (name + '_n', psnr), flush=True)
    shutil.rmtree(tmp, ignore_errors=True)
    print('packed', count, 'normal maps into', texdir)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('cmd', choices=['generate', 'clean', 'pack'])
    ap.add_argument('--sn', default=SN)
    ap.add_argument('--src', default=SRC)
    ap.add_argument('--out', default=OUT)
    ap.add_argument('--only', default='')
    ap.add_argument('--all', action='store_true')
    ap.add_argument('--sigma', type=float, default=12.0)
    ap.add_argument('--max-slope', type=float, default=1.0)
    ap.add_argument('--target-slope', type=float, default=0.35)
    ap.add_argument('--data', default='')
    a = ap.parse_args()
    if a.cmd == 'pack' and not a.data:
        ap.error('pack needs --data')
    {'generate': generate, 'clean': clean, 'pack': pack}[a.cmd](a)


if __name__ == '__main__':
    sys.exit(main())
