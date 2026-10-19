// glitch::collada::CColladaDatabase and the loaded-file model it reads: the table-entry records (SAnimation, SImage, SEffect,
// SMaterial, SGeometry, SController, SLight, SCamera, SVisualScene, SForce, SCoronas, SGNPSEmitter, SEmitter, SNode), the table
// holder (SDatabaseTables), the loaded file (CResFile) and the resource classes around it (CResFileManager, CResFactory,
// CResFileReader, CAnimationStreamingManager). Canonical header of the engine unification wave (u1-scene). It replaces
// collada_database.hpp (the lookups over a vector model), layouts/collada_db.hpp (the 32-bit layout of the same records) and the
// CAnimationStreamingManager stand-in of collada_misc.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the offsets in the comments are the original ones):
//   CColladaDatabase is two words: +0x00 the loaded file (CResFile*, reference counted) and +0x04 the factory that builds the
//   scene objects. The tables are reached as record -> data (+0x24) -> tables (+0x20). Each table is a count followed by a base
//   pointer to contiguous entries of a fixed stride (given per record below). The host model keeps each table as a vector of
//   entry pointers (no stride arithmetic), except the animation-clip library, which is the contiguous 8-byte object the original
//   exposes (SLibraryAnimationClips).
//   The first word of every entry is its name, except SController, whose name is at +0x04.
// Port notes: pointers are host width, so sizeof differs from the original; the offsets are the contract. CResFile keeps its
// reference count as a plain word, because the database copies it only when it is not zero (0x6192f0, 0x619474), which is not the
// semantics of a counting handle.
#pragma once

#include <cstdint>
#include <map>
#include <memory>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / svector (STLPORT-DECISION.md section 6)

#include "glitch-scene-collada-gui/collada/SAnimation.hpp"
#include "glitch-scene-collada-gui/collada/SLibraryAnimationClips.hpp"
#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"
#include "glitch-scene-collada-gui/res/onDemand.hpp"
#include "glitch-scene-collada-gui/res/File.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"
#include "glitch-video/render_state.hpp"

namespace glitch::res {
class onDemandReader;  // layout not mapped in this category
}

namespace glitch {
namespace scene {
class CLightSceneNode;
}
class IReferenceCounted;
class IDevice;
namespace io {
class IReadFile;
class CMemoryReadFile;
}  // namespace io
namespace video {
class CMaterialVertexAttributeMap;
class CTextureManager;
class ITexture;
class IBuffer;
}  // namespace video
}  // namespace glitch

namespace glitch::collada {

class CColladaFactory;
class CRootSceneNode;
class CSkinnedMesh;
class CMorphingMesh;
class CModularSkinnedMesh;
class CCameraSceneNode;
class CLightSceneNode;
class CImage;
class IMesh;
class CAnimationBlock;
class CColladaDatabase;
struct SAnimationBlockSearchKey;
class CResFactory;
class CResFileManager;
class CCoronasSceneNode;
class CParticleSystemSceneNode;
class CGlitchNewParticleSystemSceneNode;
struct SCollada;

// ---------------------------------------------------------------------------------------------------------------------
// Table entry records. `name` is the first word of each original entry, except SController where the name is at +0x04.
// ---------------------------------------------------------------------------------------------------------------------
struct SNode;
struct SEventKeyTable;

// SAnimation (stride 0x20), SChannel and the records they point to: canonical in collada/SAnimation.hpp.
// SAnimationClip (name, start, end; stride 0x0c) and SLibraryAnimationClips are in collada/SLibraryAnimationClips.hpp.
struct SImage {
    const char* name = nullptr;                                  // +0x00, stride 0x14
    std::uint32_t reserved04 = 0;                                // +0x04
    const char* path = nullptr;                                  // +0x08 the image's file path: the name the texture is looked up under (CResFactory::getTexture)
    std::uint32_t external = 0;                                  // +0x0c non-zero for an image whose texture is loaded outside the file (postLoadProcess skips it)
    glitch::IReferenceCounted* imageData = nullptr;              // +0x10 the loaded image (a use is taken by CImage)
};
struct SEffect;  // stride 0x74, defined after SNewParam
// One parameter value of a material record (SMaterial +0x14, stride 0x18). `type` is SParam::E_TYPE, the value type the file gives it
// (its names are the strings of the createMaterial diagnostics: int, int2, int3, int4, float, float2, float3, float4, float2x2, float3x3,
// float4x4, sampler2D, sampler3D, samplerCube, samplerRect, color, colorf, light, surface, url, technique).
struct SParam {
    enum E_TYPE : std::int32_t {
        ET_INT = 0, ET_INT2 = 1, ET_INT3 = 2, ET_INT4 = 3, ET_FLOAT = 4, ET_FLOAT2 = 5, ET_FLOAT3 = 6, ET_FLOAT4 = 7,
        ET_FLOAT2X2 = 8, ET_FLOAT3X3 = 9, ET_FLOAT4X4 = 10, ET_SAMPLER2D = 11, ET_SAMPLER3D = 12, ET_SAMPLERCUBE = 13,
        ET_SAMPLERRECT = 14, ET_COLOR = 15, ET_COLORF = 16, ET_LIGHT = 17, ET_SURFACE = 18, ET_URL = 19, ET_TECHNIQUE = 20
    };
    const char* name = nullptr;                // +0x00 the parameter's name (interned text in the loaded file)
    std::uint32_t reserved04 = 0;              // +0x04
    std::int32_t type = 0;                     // +0x08 E_TYPE
    std::uint32_t reserved0c = 0;              // +0x0c
    const std::uint32_t* elementCount = nullptr;  // +0x10 points at the count of the elements the value array holds
    const void* values = nullptr;              // +0x14 the values: raw numbers for the numeric types, pointers to the image
                                               //       records for the samplers, the text pointers for the light URLs, and for
                                               //       ET_TECHNIQUE a record whose +0x04 is the technique name (SParamTechnique)
};
// The record SParam::values points at for ET_TECHNIQUE.
struct SParamTechnique {
    std::uint32_t reserved00 = 0;              // +0x00
    const char* name = nullptr;                // +0x04 the technique's name
};
// One parameter a new-param of an effect declares (stride 0x18): the layout differs from SParam's in the position of the type.
struct SNewParam {
    const char* name = nullptr;                // +0x00
    std::int32_t type = 0;                     // +0x04 SParam::E_TYPE
    std::int32_t semantic = 0;                 // +0x08 the shader parameter type handed to addParameterInternal
    std::int32_t dimensions = 0;               // +0x0c more than one logs "multidimensional parameters not supported yet"
    const std::uint32_t* elementCount = nullptr;  // +0x10
    const void* values = nullptr;              // +0x14 as SParam::values
};
// One sampler value cell: the word the file keeps as the index of the image record (-1: none) and that CResFileManager::postLoadProcess
// replaces by the record's address. `values` of a sampler parameter is an array of pointers to these cells (one per element).
struct SParamSampler {
    SImage* image = nullptr;       // +0x00 the image record once postLoadProcess has run (null: none)
    std::int32_t index = -1;       // +0x00 in the file: the index of the image record; kept for the postLoadProcess fix-up
};

// A binding of a render pass to a parameter of its effect (12 bytes in the file). The two profiles lay the record out differently: the
// programmable (GLES2) profile has the shader parameter's name at +0x00, the global flag byte at +0x04 and the shader-stage byte at +0x05;
// the fixed-function profile has the symbol id (16 bits) at +0x00, the global flag byte at +0x02 and the stage byte at +0x03. Both keep at
// +0x08 the index of the effect's new-param, or, for a global parameter, the name of the global (a pointer).
struct SPassBinding {
    const char* name = nullptr;          // GLES2 +0x00: the shader parameter's name
    std::uint16_t symbol = 0;            // fixed function +0x00: the symbol id
    std::uint8_t global = 0;             // 1: bound to a global parameter
    std::uint8_t stage = 0;              // the shader stage (the shader's parameter list)
    std::uint32_t index = 0;             // +0x08 the new-param index (global == 0)
    const char* globalName = nullptr;    // +0x08 the global parameter's name (global == 1)
};

// The state words of a pass of the fixed-function profile (SRenderStatesGLES): 0x4c bytes of fixed-function state, then the render state.
struct SRenderStatesGLES {
    std::uint8_t fixedFunction[0x4c] = {};  // +0x00 four texture-unit records and the lighting words (not mapped)
    glitch::video::SRenderState renderState;  // +0x4c the 0x4c-byte render state
};
// The state words of a pass of the programmable profile (SRenderStatesProgrammable): the shader sources and the render state.
struct SRenderStatesProgrammable {
    std::uint32_t unk_0x00 = 0;                 // +0x00
    const char* vertexFile = nullptr;           // +0x04 e.g. "ProfileCOMMON_emul_VS.glsl"
    const char* vertexEntry = nullptr;          // +0x08 "main"
    const char* vertexDefines = nullptr;        // +0x0c the preprocessor lines
    const char* fragmentFile = nullptr;         // +0x10
    const char* fragmentEntry = nullptr;        // +0x14
    const char* fragmentDefines = nullptr;      // +0x18
    glitch::video::SRenderState renderState;    // +0x1c
    std::uint32_t unk_0x68 = 0;                 // +0x68
};
// A render pass (SPass<SRenderStatesGLES>: 0xa0 bytes in the file; SPass<SRenderStatesProgrammable>: 0x74 bytes): the states, then the bindings.
template <typename States>
struct SPass {
    States states;
    std::int32_t bindingCount = 0;               // +0x98 / +0x6c
    SPassBinding* bindings = nullptr;            // +0x9c / +0x70, 12 bytes each in the file
};
// A technique of an effect (12 bytes in the file): its name and its passes.
template <typename PassT>
struct STechnique {
    const char* name = nullptr;                  // +0x00
    std::int32_t passCount = 0;                  // +0x04
    PassT* passes = nullptr;                     // +0x08
};

// An effect (stride 0x74 in the file, 29 words): the name, the id, then four profile sections of {technique count, techniques, new-param
// count, new-params, a count and an array that are not mapped}. Section 0 (+0x08) holds the passes of the fixed-function profile, section 1
// (+0x20) those of the programmable GLES2 profile; sections 2 (+0x3c) and 3 (+0x58) are empty in nearly all sample files (3 of 1590 checked have them) and their
// techniques are not decoded (only the counts and the new-params). The word after the unmapped pair of sections 1 to 3 is not initialised
// in the files.
struct SEffect {
    const char* name = nullptr;                  // +0x00
    const char* displayName = nullptr;           // +0x04
    std::int32_t techniqueCount[4] = {};         // +0x08, +0x20, +0x3c, +0x58
    STechnique<SPass<SRenderStatesGLES>>* nullTechniques = nullptr;          // +0x0c section 0
    STechnique<SPass<SRenderStatesProgrammable>>* gles2Techniques = nullptr; // +0x24 section 1
    std::int32_t paramCount[4] = {};             // +0x10, +0x28, +0x44, +0x60
    SNewParam* params[4] = {};                   // +0x14, +0x2c, +0x48, +0x64
    std::int32_t extraCount[4] = {};             // +0x18, +0x30, +0x4c, +0x68 (not mapped)
    const std::uint32_t* extra[4] = {};          // +0x1c, +0x34, +0x50, +0x6c
};
struct SMaterial {
    const char* name = nullptr;           // +0x00, stride 0x24
    std::uint32_t reserved04 = 0;         // +0x04
    const char* fileName = nullptr;       // +0x08 the file of the effect (CColladaFactory::createMaterial passes it to createMaterialRenderer)
    const char* effectUrl = nullptr;      // +0x0c "#<effect>"
    std::int32_t paramCount = 0;          // +0x10 (createMaterial 0x631ce8)
    const SParam* params = nullptr;       // +0x14 the parameter values, stride 0x18
    SEffect* effect = nullptr;            // +0x18 the effect record (a pointer once postLoadProcess has run)
    std::int32_t effectIndex = 0;         // +0x18 in the file the same word is the effect's index (-1: an effect of another file, see effectUrl);
                                          //       the host keeps it beside the pointer (the loader, collada/BdaeDecode, fills it)
};
struct SMesh;
struct SGeometry {
    const char* name;                 // +0x00, stride 0x10
    std::uint32_t reserved04;         // +0x04
    std::uint32_t notInstantiated;    // +0x08, non-zero makes constructGeometry return null
    SMesh* mesh;                      // +0x0c the mesh record (collada/SMesh.hpp)
};
// The morph record SController +0x08 points at for a morph controller (CMorphingMesh::instanciateMesh 0x64b700, morph 0x64a6e4).
struct SMorph {
    const char* baseUrl = nullptr;            // +0x00 "#<geometry or controller>" of the base mesh
    std::uint32_t relative = 0;               // +0x04 zero: the first target's weight is 1 minus the others'
    std::uint32_t reserved08[2] = {};         // +0x08, +0x0c
    std::int32_t targetCount = 0;             // +0x10
    const char* const* targetNames = nullptr; // +0x14 the geometry names of the targets (no '#'); the file holds the geometries' indices (targetIndices),
                                              //       which postLoadProcess turns into the geometry records, and the host keeps the names of those
    std::vector<std::int32_t> targetIndices;  // +0x14 the targets' geometry indices as the file keeps them
    std::int32_t weightCount = 0;             // +0x18
    const float* weights = nullptr;           // +0x1c one weight per target
};
struct SController {
    std::uint32_t reserved;           // +0x00 the controller kind: 0 a skin (SSkin at +0x08), 1 a morph (SMorph)
    const char* name;                 // +0x04, stride 0x0c
    const void* morph = nullptr;      // +0x08 the morph record (an SMorph) or the skin record (a 32-bit pointer into the file data in the original)
};
struct SLight {
    const char* name = nullptr;      // +0x00, stride 0x18 (the uid of the light node)
    std::uint32_t reserved04 = 0;    // +0x04
    std::uint32_t kind = 0;          // +0x08: 0 ambient, 1 point, 2 spot, 3 directional (CLightSceneNode ctor 0x6444ec)
    std::uint8_t color[4] = {};      // +0x0c the colour bytes (r, g, b, a)
    float intensity = 0.0f;          // +0x10 scales the colour (colour / 255 * intensity)
    const float* parameters = nullptr;  // +0x14 point and spot: attenuation (3 floats), spot: cone angle, falloff (+0x0c, +0x10)
};
struct SCamera {
    const char* name = nullptr;      // +0x00, stride 0x1c (the uid of the camera node)
    std::uint32_t orthographic = 0;  // +0x04 non-zero: orthographic projection (CCameraSceneNode ctor 0x6e5550)
    float fieldOfView = 0.0f;        // +0x08 horizontal field of view in degrees (perspective) or the x magnification (orthographic)
    float aspectRatio = 0.0f;        // +0x0c
    float nearValue = 0.0f;          // +0x10
    float farValue = 0.0f;           // +0x14
    const char* targetUrl = nullptr; // +0x18 "#<uid>" of the node the camera looks at (an empty string when none)
};
struct SVisualScene {
    const char* name;                    // +0x00, stride 0x10 (the id the lookups compare)
    const char* displayName = nullptr;   // +0x04 the name the root node gets (constructVisualScene: setName)
    std::uint32_t nodeCount = 0;  // +0x08, count of top-level SNode records
    SNode* nodes = nullptr;       // +0x0c, base of the SNode array (stride 0x50)
};
struct SForce {
    const char* name = nullptr;       // +0x00, stride 0x10
    std::uint32_t reserved04 = 0;     // +0x04
    std::uint32_t kind = 0;           // +0x08: 0 gravity, 1 wind, 2 deflector
    const float* values = nullptr;    // +0x0c the force's values (a 32-bit file offset in the original): gravity strength, decay, type;
                                      //       wind strength, decay, type, turbulence, frequency, scale; deflector bounce, variation, chaos,
                                      //       friction, inheritVelocity, width, length (CForceSceneNode constructors 0x631274, 0x631168, 0x631050)
};
// The coronas record (stride 0x24): read by the lookups (the id) and by the CCoronasSceneNode constructor from the database (0x6e7778).
struct SCoronas {
    const char* name = nullptr;          // +0x00 the id the lookups compare
    const char* displayName = nullptr;   // +0x04 the node's name (ISceneNode::setName)
    float width = 0.0f;                  // +0x08
    float height = 0.0f;                 // +0x0c
    float rotationScale = 0.0f;          // +0x10 -> node +0x134
    float rotationOffset = 0.0f;         // +0x14 -> node +0x138
    float unk_18 = 0.0f;                 // +0x18 -> node +0x13c
    float unk_1c = 0.0f;                 // +0x1c -> node +0x140
    std::uint8_t flag = 0;               // +0x20 -> node +0x144 (true when non-zero)
};
// The record SGNPSEmitter +0x2c points at (CColladaFactory::createGlitchNewParticleSystem 0x63133c): how a billboard system's quads are
// oriented.
struct SGNPSBillboard {
    std::uint8_t enabled = 0;         // +0x00 zero: nothing is set up
    std::uint8_t mode = 0;            // +0x01 0: axis 1 locked and the quads aligned to the motion, 1: axis 1 locked to axisB, 2: by the flags below
    std::uint8_t transformAxes = 0;   // +0x02 mode 2: the context's transformAxes byte (+0x21)
    std::uint8_t lockAxis0 = 0;       // +0x03 mode 2: axis 0 is locked to axisA
    std::uint8_t lockAxis1 = 0;       // +0x04 mode 2: axis 1 is locked to axisB
    float axisA[3] = {};              // +0x08 .. +0x10
    float axisB[3] = {};              // +0x14 .. +0x1c
};
// The new particle system's emitter record (SGNPSEmitter, stride 0xe8). Every field is read by CGlitchNewParticleSystemSceneNode::
// initParticleSystem (0x642e58) and the factory; offsets in the comments are the original ones, pointers are host pointers here.
struct SGNPSEmitter {
    const char* name = nullptr;                // +0x00 the uid of the node, and the prefix of the "<name>_particle_size_scale" style track names
    std::uint32_t reserved04 = 0;              // +0x04
    std::int32_t shapeType = 0;                // +0x08 "EmitterType"; 0 box (RadiusLength, Width, Height), 1 sphere, 2 cylinder (RadiusLength, Height)
    const float* shape = nullptr;              // +0x0c
    float birthRate = 0.0f;                    // +0x10 "BirthRate"
    float birthRateVariation = 0.0f;           // +0x14 "BirthRateVariation"
    std::int32_t maxParticles = 0;             // +0x18 "MaxParticles"
    std::int32_t maxParticlesVariation = 0;    // +0x1c "MaxParticlesVariation"
    float life = 0.0f;                         // +0x20 "Life"
    float lifeVariation = 0.0f;                // +0x24 "LifeVariation"
    std::uint8_t meshType = 0;                 // +0x28 0: a billboard system (initParticleSystem(driver, true)), 1: a mesh system
    std::uint8_t reserved29[3] = {};           // +0x29 .. +0x2b
    const SGNPSBillboard* billboard = nullptr; // +0x2c
    float targetSize = 0.0f;                   // +0x30 "TargetSize"
    float sizeVariation = 0.0f;                // +0x34 "SizeVariation"
    float sizeScale = 0.0f;                    // +0x38 "SizeScale" (used when sizeScaleOverLife is zero)
    std::uint8_t sizeScaleOverLife = 0;        // +0x3c "SizeScaleOverLife"
    std::uint8_t reserved3d[3] = {};           // +0x3d .. +0x3f
    float speed = 0.0f;                        // +0x40 "Speed"
    float speedVariation = 0.0f;               // +0x44 "SpeedVariation"
    float speedScale = 0.0f;                   // +0x48 "SpeedScale"
    std::uint8_t speedScaleOverLife = 0;       // +0x4c "SpeedScaleOverLife"
    std::uint8_t reserved4d[3] = {};           // +0x4d .. +0x4f
    float direction[3] = {};                   // +0x50 "Direction"
    float directionVariation[3] = {};          // +0x5c "DirectionVariation"
    std::uint8_t startAngleType = 0;           // +0x68 "StartAngleType"
    std::uint8_t spinKeepAlignedToMotion = 0;  // +0x69 "SpinKeepAlignedToMotion"
    std::uint8_t reserved6a[2] = {};           // +0x6a, +0x6b
    float spinPhase = 0.0f;                    // +0x6c "SpinPhase"
    float spinPhaseVariation = 0.0f;           // +0x70 "SpinPhaseVariation"
    float spinTime = 0.0f;                     // +0x74 "SpinTime"
    float spinVariation = 0.0f;                // +0x78 "SpinVariation"
    float spinScale = 0.0f;                    // +0x7c "SpinScale"
    std::uint8_t spinScaleOverLife = 0;        // +0x80 "SpinScaleOverLife"
    std::uint8_t reserved81[3] = {};           // +0x81 .. +0x83
    std::uint8_t spinAxisType = 0;             // +0x84 "SpinAxisType"
    std::uint8_t reserved85[3] = {};           // +0x85 .. +0x87
    float spinAxis[3] = {};                    // +0x88 "SpinAxis"
    float spinAxisVariation[3] = {};           // +0x94 "SpinAxisVariation"
    std::uint32_t reservedA0 = 0;              // +0xa0
    float spinPivotPoint[3] = {};              // +0xa4 "SpinPivotPoint"
    std::uint32_t reservedB0 = 0;              // +0xb0
    float motionRandom = 0.0f;                 // +0xb4 "MotionRandom"
    float motionRandomVariation = 0.0f;        // +0xb8 "MotionRandomVariation"
    float motionRandomScale = 0.0f;            // +0xbc "MotionRandomScale"
    std::uint8_t motionRandomScaleOverLife = 0;  // +0xc0 "MotionRandomScaleOverLife"
    std::uint8_t reservedC1[3] = {};           // +0xc1 .. +0xc3
    std::uint8_t textureSubDivise = 0;         // +0xc4 read for both "TextureSubDiviseH" and "TextureSubDiviseV" (0x643364, 0x64338c)
    std::uint8_t reservedC5 = 0;               // +0xc5
    std::uint8_t textureSubDiviseRandomPick = 0;  // +0xc6 "TextureSubDiviseRandomPick"
    std::uint8_t reservedC7[0x21] = {};        // +0xc7 .. +0xe7
};
// The record SEmitter +0x54 points at (CColladaFactory::createParticleSystem 0x634c64). With SEmitter::meshType 0 the record names one of the
// built-in particle meshes; with meshType 2 its second word is the URL "#<geometry>" of a mesh of the file.
struct SEmitterMesh {
    std::uint32_t kind = 0;                 // +0x00 meshType 0: 1 cube, 2 three crossed quads, 3 and 4 billboard, 7 sphere
    union {
        std::uint32_t billboardFlags = 0;   // +0x04 kinds 3 and 4: bit 1 locks axis 0 to axisA, bit 2 locks axis 1 to axisB
        const char* geometryUrl;            // +0x04 meshType 2: "#<geometry>"
    };
    std::uint32_t axisMode = 0;             // +0x08 kinds 3 and 4: 1 lock by flags, 2 lock axis 1 to axisB, 3 align to the motion
    float axisA[3] = {};                    // +0x0c .. +0x14
    float axisB[3] = {};                    // +0x18 .. +0x20
    const char* nodeUrl = nullptr;          // +0x00 with meshType 2 the first word of the record is the url "#<node>" (not `kind`)
    const void* instance = nullptr;         // +0x04 with meshType 2 postLoadProcess stores the node's first instance record there (and the url
                                            //       of a geometry instance in geometryUrl, which is what the factory looks the mesh up by)
};
// The old particle system's emitter record (SEmitter, stride 0x90). Every field is read by CParticleSystemSceneNode::initParticleSystem
// (0x656450) and the factory (0x634c64); the pointers are 32-bit offsets into the file in the original and host pointers here.
struct SEmitter {
    const char* name = nullptr;             // +0x00 the uid of the particle node
    std::uint32_t reserved04 = 0;           // +0x04
    std::int32_t shapeType = 0;             // +0x08 "EmitterType"; 0 box (RadiusLength, Width, Height), 1 sphere (RadiusLength), 2 cylinder (RadiusLength, Height)
    const float* shape = nullptr;           // +0x0c the shape's values in the order above
    std::uint32_t reserved10[2] = {};       // +0x10, +0x14
    std::int32_t maxParticles = 0;          // +0x18 "MaxParticles"
    std::uint32_t reserved1c = 0;           // +0x1c
    float birthRate = 0.0f;                 // +0x20 "BirthRate"
    std::uint32_t reserved24 = 0;           // +0x24
    float life = 0.0f;                      // +0x28 "Life"
    float lifeVariation = 0.0f;             // +0x2c "LifeVariation"
    float targetSize = 0.0f;                // +0x30 "TargetSize"
    float sizeVariation = 0.0f;             // +0x34 "SizeVariation"
    float sizeGrowthTime = 0.0f;            // +0x38 "SizeGrowthTime"
    float sizeFadeTime = 0.0f;              // +0x3c "SizeFadeTime"
    float speed = 0.0f;                     // +0x40 "Speed"
    float speedVariation = 0.0f;            // +0x44 "SpeedVariation"
    std::int32_t directionType = 0;         // +0x48 0 no direction, 1 a direction with a variation, 2 only a variation
    const float* direction = nullptr;       // +0x4c type 1: x, y, z, variation; type 2: [1] the variation
    std::int32_t meshType = 0;              // +0x50 0 a built-in particle mesh, 2 a mesh of the file
    const SEmitterMesh* mesh = nullptr;     // +0x54
    std::uint32_t reserved58 = 0;           // +0x58
    float animOffset = 0.0f;                // +0x5c "AnimOffset"
    float animOffsetVariation = 0.0f;       // +0x60 "AnimOffsetVariation"
    std::int32_t animKeyMappingType = 0;    // +0x64 "AnimKeyMappingType"
    float animLength = 0.0f;                // +0x68 "AnimLength"
    float animLengthVariation = 0.0f;       // +0x6c "AnimLengthVariation"
    float animScaleMultiplier = 0.0f;       // +0x70 "AnimScaleMultiplier"
    float animScaleMultiplierVariation = 0.0f;  // +0x74 "AnimScaleMultiplierVariation"
    float spinTime = 0.0f;                  // +0x78 "SpinTime"
    float spinVariation = 0.0f;             // +0x7c "SpinVariation"
    float spinPhase = 0.0f;                 // +0x80 "SpinPhase"
    float spinPhaseVariation = 0.0f;        // +0x84 "SpinPhaseVariation"
    std::int32_t spinAxisType = 0;          // +0x88 "SpinAxisType"; 1: the axis below is used
    const float* spinAxis = nullptr;        // +0x8c x, y, z, variation
};

// Instance records name their target. The instance URL is "#<id>"; the original skips the leading '#' before looking the target up.
struct SInstanceMaterial;
// One entry of a node's instance list (SNode +0x44) or of the scene's (SDatabaseTables +0xbc): a kind word and the instance record (8 bytes).
struct SInstanceRef {
    std::uint32_t kind = 0;        // +0x00 EInstanceKind
    void* instance = nullptr;      // +0x04 the record, of the type the kind names
};
enum EInstanceKind : std::uint32_t {
    EIK_CAMERA = 1,          // SInstanceCamera
    EIK_CONTROLLER = 2,      // SInstanceController
    EIK_GEOMETRY = 3,        // SInstanceGeometry
    EIK_LIGHT = 4,           // SInstanceLight
    EIK_VISUAL_SCENE = 6,    // the scene's entries: SInstanceVisualScene (+0x04 the URL "#<scene>")
    EIK_EMITTER = 9,         // SInstanceEmitter
    EIK_GNPS_EMITTER = 10,   // SInstanceGNPSEmitter
    EIK_CORONAS = 11,        // SInstanceCoronas
    EIK_FORCE = 12,          // SInstanceForce
    EIK_MODULAR_SKIN = 13,   // SInstanceModularSkin
};
struct SInstanceCamera {
    std::uint32_t reserved00 = 0;    // +0x00
    const char* url = nullptr;       // +0x04 "#<camera>"
};
struct SInstanceLight {
    std::uint32_t reserved00 = 0;    // +0x00
    const char* url = nullptr;       // +0x04 "#<light>"
};
struct SInstanceVisualScene {
    std::uint32_t reserved00 = 0;    // +0x00
    const char* url = nullptr;       // +0x04 "#<visual scene>"
};
struct SInstanceForce {
    std::uint32_t reserved00;    // +0x00
    const char* url;             // +0x04, "#<name>"
};
// An instanced controller: the module records of a modular skin point at these. The first word is not mapped, the second is the
// module's name (CModularSkinnedMesh::getModuleName, getModuleId).
struct SInstanceController {
    std::uint32_t reserved00 = 0;     // +0x00
    const char* name = nullptr;       // +0x04 the URL "#<controller>"
    std::uint32_t reserved08 = 0;     // +0x08
    std::int32_t bindingCount = 0;    // +0x0c material bindings (CColladaDatabase::constructController)
    SInstanceMaterial* bindings = nullptr;  // +0x10 the bindings, stride 0x3c
    std::int32_t renderingLayer = 0;  // +0x14 handed to the node's setRenderingLayer (constructNode)
};
// A geometry instance: the file it lives in (null: this file), the URL and the material bindings.
struct SInstanceGeometry {
    const char* file = nullptr;       // +0x00 an external file that holds the geometry, else null
    const char* url = nullptr;        // +0x04 "#<geometry>"
    std::uint32_t reserved08 = 0;     // +0x08
    std::int32_t bindingCount = 0;    // +0x0c
    SInstanceMaterial* bindings = nullptr;  // +0x10, stride 0x3c
    std::int32_t renderingLayer = 0;  // +0x14
};
// The particle-system and coronas instances: the URL, the material bindings and, for the emitters, the vector the builder receives
// (embedded at +0x18). Its entries are read by the nodes' attach (0x64f6f8, 0x63db4c) as the URLs "#<uid>" of the force nodes that act on the
// system; the field is still called `materials` here.
struct SInstanceEmitter {
    std::uint32_t reserved00 = 0;     // +0x00
    const char* url = nullptr;        // +0x04 "#<emitter>"
    std::uint32_t reserved08 = 0;     // +0x08
    std::int32_t bindingCount = 0;    // +0x0c
    SInstanceMaterial* bindings = nullptr;  // +0x10, stride 0x3c (the material of each binding is added to the node)
    std::int32_t renderingLayer = 0;  // +0x14
    glitch::res::vector<glitch::res::String> materials;  // +0x18
};
struct SInstanceGNPSEmitter {
    std::uint32_t reserved00 = 0;     // +0x00
    const char* url = nullptr;        // +0x04 "#<emitter>"
    std::uint32_t reserved08 = 0;     // +0x08
    std::int32_t bindingCount = 0;    // +0x0c
    SInstanceMaterial* bindings = nullptr;  // +0x10, stride 0x3c
    std::int32_t renderingLayer = 0;  // +0x14
    glitch::res::vector<glitch::res::String> materials;  // +0x18
};
struct SInstanceCoronas {
    std::uint32_t reserved00 = 0;     // +0x00
    const char* url = nullptr;        // +0x04 "#<coronas>"
    std::uint32_t reserved08 = 0;     // +0x08
    std::int32_t bindingCount = 0;    // +0x0c
    SInstanceMaterial* bindings = nullptr;  // +0x10, stride 0x3c
    std::int32_t renderingLayer = 0;  // +0x14
};
// One module of a category (8 bytes).
struct SModularModule {
    std::uint32_t reserved00 = 0;                  // +0x00
    SInstanceController* controller = nullptr;     // +0x04
};
// One category of a modular skin (16 bytes).
struct SModularCategory {
    const char* name = nullptr;                    // +0x00
    const char* defaultModule = nullptr;           // +0x04 the module the constructor selects
    std::int32_t moduleCount = 0;                  // +0x08
    SModularModule* modules = nullptr;             // +0x0c
};
// The instance record of a modular skin (CModularSkinnedMesh +0x1c): the categories and the number of extra module slots.
struct SInstanceModularSkin {
    std::int32_t categoryCount = 0;                // +0x00
    SModularCategory* categories = nullptr;        // +0x04
    std::int32_t extraSlotCount = 0;               // +0x08
    std::uint32_t reserved0c[2] = {};              // +0x0c .. +0x10
    std::int32_t renderingLayer = 0;               // +0x14 handed to the node's setRenderingLayer (constructNode)
};

// The billboard record SNode +0x4c points at (CBillboardSceneNode::updateAbsolutePosition 0x60cf88 reads it). Eight words.
struct SBillboardInfo {
    std::uint32_t mode[2] = {};    // +0x00, +0x04: the value 2 selects the camera-facing branch for each axis
    float axisA[3] = {};           // +0x08 .. +0x10 direction transformed by the camera matrix and normalised
    float axisB[3] = {};           // +0x14 .. +0x1c second direction, same treatment
};

// COLLADA scene-node record (stride 0x50). Word offsets are the original 32-bit offsets.
struct SNode {
    const char* id = nullptr;                   // +0x00 the node's uid (CSceneNode::getUID), compared with the lookup name
    const char* name = nullptr;                 // +0x04 the node name (CSceneNode constructor: ISceneNode::setName)
    const char* scopeId = nullptr;              // +0x08 the scope id (CSceneNode::getScopeID)
    float translation[3] = {};                  // +0x0c..+0x14
    float rotation[4] = {};                     // +0x18..+0x24 quaternion x y z w
    float scale[3] = {};                        // +0x28..+0x30
    std::uint32_t unk_34 = 0;                   // +0x34, bool word
    std::uint32_t childCount = 0;               // +0x38
    SNode* children = nullptr;                  // +0x3c, child array (stride 0x50)
    std::uint32_t instanceCount = 0;            // +0x40
    SInstanceRef* instances = nullptr;          // +0x44, instance array (stride 8)
    const scene::SUserProperty* userProperty = nullptr;  // +0x48 CSceneNode::getUserProperty; its first word is the property text
    const SBillboardInfo* billboard = nullptr;  // +0x4c non-null: the node is a billboard (selects the billboard builder)
};

// The data of an animation segment: an on-demand block of the file (res::SOnDemandBlock: +0x00 the use count, +0x04 the byte offset in the
// file, +0x08 the byte size, +0x0c the loaded bytes) plus, in the port, the output array built from the loaded bytes.
// Evidence (SAnimationSegment::getData 0x60bee4, onDemand<SAnimationData>::get 0x60b66c, the CAnimationBlock constructors): the loaded bytes
// are {+0x00 N, then N entries of {count, offset-relative-to-the-offset-word}}; getData turns each relative offset into an address in place,
// so the array is the SAnimationOutput array the animators index (entry i at bytes + 4 + 8 * i). The host cannot widen the words in place
// (the addresses do not fit 32 bits), so the fix-up builds `buffer`, an array of host SAnimationOutput records over the same bytes.
// A holder is released with `(*count)-- == 1` -> the bytes (and the array) are freed.
struct SAnimationDataHolder : res::SOnDemandBlock {
    const SAnimationOutput* buffer = nullptr;  // host: the output array over `data` (the original's `data` after the in-place fix-up)

    // The fix-up loop of getData: builds `buffer` from the bytes at `data`.
    void buildOutputs();
    // Frees the loaded bytes and the output array (the count has reached zero).
    void freeData();
    // Gives up one use; the last one frees the data.
    void drop() {
        if (count-- == 1) {
            freeData();
        }
    }
};

// Segment entry: 0x18 bytes, range [begin, end). Used by getAnimationSegment.
struct SAnimationSegment {
    std::int32_t begin = 0;       // +0x00
    std::int32_t end = 0;         // +0x04
    SAnimationDataHolder data;    // +0x08 the on-demand block of the segment's key data (+0x08 count, +0x0c offset, +0x10 size, +0x14 bytes)

    // 0x60bee4 _ZN6glitch7collada17SAnimationSegment7getDataERNS_3res14onDemandReaderE
    // The segment's data with a use taken for the caller (the original returns it in an intrusive pointer through a hidden slot): not loaded
    // (count 0): loads it through `reader` and fixes the entries up; count 1: a block that is not read on demand (offset and size 0), fixed up
    // once (the size word is then set to 1); otherwise only the use is taken.
    SAnimationDataHolder* getData(glitch::res::onDemandReader& reader);
};

// Instance material (a material binding of a geometry, controller or particle instance, 0x3c bytes): the material it names and, once the
// factory built it, the vertex-attribute map; the link that linkInstanceMaterial sets and the map releaseObjects drops.
// The vertex-input bindings of an instance material: per technique name a list of (parameter, pairs) bindings.
struct SVertexInputBinding {
    std::uint32_t reserved00 = 0;                    // +0x00
    std::uint32_t count = 0;                         // +0x04 the pair count handed to CVertexAttributeMap::set
    const std::uint8_t* pairs = nullptr;             // +0x08
};
struct SVertexInputTechnique {
    const char* name = nullptr;                      // +0x00 the technique's name
    std::int32_t bindingCount = 0;                   // +0x04
    const SVertexInputBinding* bindings = nullptr;   // +0x08, one per pass, stride 0x0c
};
struct SVertexInputGroup {
    std::int32_t techniqueCount = 0;                 // +0x00
    const SVertexInputTechnique* techniques = nullptr;  // +0x04, stride 0x0c
};
struct SInstanceMaterial {
    const char* file = nullptr;                      // +0x00 the file the material lives in (null: this file)
    const char* url = nullptr;                       // +0x04 "#<material>" (read when `file` is set)
    std::int32_t materialIndex = 0;                  // +0x08 the material of this file otherwise (CColladaDatabase::getMaterial(int))
    std::uint32_t reserved0c[2] = {};                // +0x0c, +0x10
    SVertexInputGroup vertexInput[4];                // +0x14, +0x1c, +0x24, +0x2c: the bindings per driver family (createMaterialVertexAttributeMap
                                                     // 0x634520 picks +0x1c for the driver bits 7, +0x24 for 0x18, +0x14 for 0x60, +0x2c for 0x300)
    glitch::video::CMaterialVertexAttributeMap* vertexAttributeMap = nullptr;  // +0x34 (an intrusive pointer in the original)
    SInstanceMaterial* linkNext = nullptr;                                     // +0x38 instance list link
};

// Table holder: the record the original reaches as *(*this + 0x24) + 0x20. The comments give the original count and base
// offsets of each table. Counts are signed in the original (the lookups test `count <= 0`).
struct SDatabaseTables {
    std::uint32_t version = 0;                    // +0x00 read by getVersion(); in the file the word is the version text (versionText); the host keeps its number
    const char* versionText = nullptr;            // +0x00 the file's version text ("0,0,0,777"; postLoadProcess compares it)
    const char* sourceName = nullptr;             // +0x04 the name string CResFileManager::postLoadProcess stores (a heap string in the
                                                  //       original; null when the file has no reader name, stage D)
    SInstanceMaterial* instanceMaterials = nullptr;  // +0x08, head of the instance-material list
    std::uint32_t upAxis = 0;                     // +0x0c the file's up axis: 0 X_UP, 1 Y_UP, 2 Z_UP (CCameraSceneNode ctor 0x6e5550)
    std::uint32_t externalResourcesDone = 0;      // +0x10 set to 1 by postLoadProcess when the external resources were resolved
    std::uint32_t animationFlag = 0;              // +0x14 non-zero when the animations are streamed (CSceneNodeAnimator +0x34)
    SAnimationClip animationRange;                // +0x18 name (unmapped), +0x1c start and +0x20 end of the whole animation, milliseconds (CSceneNodeAnimator +0x38 / +0x3c);
                                                  //       the original hands the address of this record out as a clip when the file has no clip library (0x64fd60)
    std::vector<SAnimation*> animations;          // +0x24 / +0x28
    std::vector<SAnimationSegment> segments;      // segment record at +0x30 of the holder: {count, base}, stride 0x18
    const SEventKeyTable* eventKeyTable = nullptr;  // +0x2c the events track CSceneNodeAnimatorSet::setCurrentAnimation hands to setEventsTrack
    SLibraryAnimationClips animationClipLibrary;  // +0x34 count / +0x38 clips, stride 0x0c (the object getAnimationClipLibrary returns)
    std::vector<SImage*> images;                  // +0x4c / +0x50
    std::vector<SEffect*> effects;                // +0x54 / +0x58
    std::vector<SMaterial*> materials;            // +0x5c / +0x60
    std::int32_t skinCount = 0;                   // +0x64 CSkinnedMesh's constructor passes `skinCount > 0` to the four skin techniques (their flag byte)
    std::vector<SGeometry*> geometries;           // +0x68 / +0x6c
    std::vector<SController*> controllers;        // +0x70 / +0x74
    std::vector<SLight*> lights;                  // +0x44 / +0x48
    std::vector<SCamera*> cameras;                // +0x3c / +0x40
    std::vector<SVisualScene*> visualScenes;      // +0x98 / +0x9c
    std::vector<SForce*> forces;                  // +0x88 / +0x8c
    std::vector<SCoronas*> coronas;               // +0x90 / +0x94
    std::vector<SGNPSEmitter*> gnpsEmitters;      // +0x80 / +0x84
    std::vector<SEmitter*> emitters;              // +0x78 / +0x7c
    std::vector<SInstanceRef> scene;              // +0xb8 / +0xbc the scene object (CColladaDatabase::getScene): its entries of kind 6 name the visual scenes
};

// Mask bits accepted by find(); the original tries them in this order.
enum : unsigned {
    kFindAnimation = 0x01,
    kFindAnimationClip = 0x02,
    kFindImage = 0x04,
    kFindEffect = 0x08,
    kFindMaterial = 0x10,
    kFindGeometry = 0x20,
    kFindController = 0x40,
    kFindVisualScene = 0x80,
};

// ---------------------------------------------------------------------------------------------------------------------
// The loaded file and the resource classes around it (the 32-bit layout of layouts/collada_db.hpp, with typed members).
// ---------------------------------------------------------------------------------------------------------------------

// Per-file data block reached through CResFile::data (+0x24; the first word of the inline glitch::res::File).
struct SColladaFileData {
    std::uint8_t pad_0x00[0x08] = {};  // +0x00..+0x07
    std::uint32_t headerSize = 0;      // +0x08 becomes res::File::SizeOfHeader
    std::uint8_t pad_0x0c[0x04] = {};  // +0x0c..+0x0f
    std::uint32_t offsetEntries = 0;   // +0x10 external offset table size is headerSize + 4 * this
    std::int32_t externalFlags = 0;    // +0x14 sign bit selects the res::File::ExternalFilePtr slot
    std::uint8_t pad_0x18[0x08] = {};  // +0x18..+0x1f
    SDatabaseTables* tables = nullptr; // +0x20 the table holder
};

// The loaded COLLADA file. CColladaDatabase::record points here; a CResFile is constructed with new(0x50). The inline
// glitch::res::File starts at +0x24 and its first word is the header block `data`.
//
// Evidence (CResFile::CResFile 0x658048, ~CResFile 0x658a2c, releaseObjects 0x658744, releaseRemovableBuffer 0x657d58): the vtable is at +0x00
// (D1 0x658a2c, D2 0x658b6c, D0 0x658b50), the count at +0x04 (the constructor stores 1), the file the record was read from at +0x08 (a use is
// taken when the file is wholly in memory), the name (an STLport string) at +0x0c with its character pointer at +0x20, the inline res::File at
// +0x24 (its first word is the header block), and the file-image memory: +0x38 the number of chunks, +0x40 a buffer, +0x44 the chunk pointer
// array (+0x48 selects whether every chunk is freed or only the first).
class CResFile {
public:
    // Not part of the original (which has only the loading constructor): an empty record for tests and the stand-in loaders.
    CResFile() = default;
    // 0x658048 (C1) / 0x65815c (C2): the record named `name` for `reader`. A reader whose data is all in memory (and `flag`) is kept and the
    // file is initialised from its buffer; otherwise the file is initialised through a CResFileReader over the manager's read file (a memory copy
    // for zipped archives). The initialisation is the res::File loader (glitch-core-io; a link stub here).
    CResFile(const char* name, glitch::io::IReadFile* reader, bool flag);
    // 0x658a2c (D1) / 0x658b6c (D2): releases the objects, drops the reader, frees the file-image memory. D0 (0x658b50) is the deleting thunk.
    virtual ~CResFile();
    // Not in the original: a shallow copy, for the tests that reset a record by assignment (the arrays and the name pointer are shared).
    CResFile(const CResFile&) = default;
    CResFile& operator=(const CResFile&) = default;

    // IReferenceCounted::drop: the last use deletes the record.
    void drop() {
        if (refCount-- == 1) {
            delete this;
        }
    }

    // 0x657c8c: releases one buffer reference held by the record: the last user drops it; otherwise the buffer gives its data back (a
    // driver-mapped buffer keeps its size, with no data) and the handle is cleared.
    void releaseBuffer(boost::intrusive_ptr<video::IBuffer>& buffer);
    // 0x657cf8: a driver-mapped buffer gives its data back; one that is not mapped and not owned is logged ("Buffer released is not in VRAM") and
    // copied into private memory.
    void releaseRemovableBuffer(boost::intrusive_ptr<video::IBuffer>& buffer);
    // 0x657d58: releases the removable buffers of the file (bit 0 of `kinds`: the geometries' vertex and index buffers; bit 1: the skins'; only
    // a file without skins), then frees the file-image memory (+0x44 chunks, +0x40 buffer).
    void releaseRemovableBuffer(std::uint8_t kinds);
    // 0x658744: releases the objects the record created: the textures of the images (removed from the texture manager when the manager unloads
    // automatically and the record held the last use), the vertex-attribute maps of the instance materials, and the buffers of every geometry
    // (the mesh buffers' index buffers and cached scene buffers, the vertex buffers) and of the skins.
    void releaseObjects();

    std::uint32_t refCount = 1;                  // +0x04 intrusive count
    glitch::io::IReadFile* reader = nullptr;     // +0x08 file the record was read from (refcounted)
    std::string name;                            // +0x0c the file name (the string object)
    const char* fileName = nullptr;              // +0x20 the name's character data; passed to unload() and matched by the streaming cache
    SColladaFileData* data = nullptr;            // +0x24 first word of the inline res::File
    std::uint8_t flag_0x28 = 0;                  // +0x28 bool, zeroed by the constructor (role not confirmed)
    std::uint32_t word_0x2c = 0;                 // +0x2c zeroed by the constructor (role not confirmed)
    std::int32_t arrayCount_0x38 = 0;            // +0x38 the number of chunks of the pointer array at +0x44
    void* buffer_0x40 = nullptr;                 // +0x40 file-image buffer (an operator new[] array)
    void** array_0x44 = nullptr;                 // +0x44 chunk pointer array (operator new[] arrays)
    std::uint8_t flag_0x48 = 0;                  // +0x48 bool: every chunk of the array is freed (else only the first)
    std::uint32_t keepSourceName = 0;            // +0x4c a word of the inline res::File (set by its loader, not by the constructor): non-zero makes
                                                 //       postLoadProcess keep the name of the file it was read from (SDatabaseTables::sourceName)
    std::string sourceNameStorage;               // host: the text sourceName points at
    std::uint8_t* image = nullptr;               // host: the file image the loader fixed up (the first word of the inline res::File, +0x24 in the original);
                                                 //       owned (and freed with the record) unless the reader's own memory holds it
    std::shared_ptr<void> hostModel;             // host: the decoded records (collada/BdaeDecode) that `data` and `data->tables` point into
};

// glitch::collada::CResFactory: the factory the file manager builds the textures of a file's images with (vtable: D1 0x657890, D0
// 0x657a08, slot +0x08 getTexture). The object is held through a pointer in CResFileManager (the game may install a derived one).
class CResFactory {
public:
    // 0x65788c _ZN6glitch7collada11CResFactoryD2Ev (empty, same as D1)
    // 0x657890 _ZN6glitch7collada11CResFactoryD1Ev (empty)
    virtual ~CResFactory() = default;
    // K 0x08, 0x659704: the texture of the image record `image` of `resFile`, looked up in the texture manager `manager` with `directory` as the
    // directory of the file; the name is the image's name (+0x00), or when CResFileManager::flag_0x29 is set the image's first word.
    virtual boost::intrusive_ptr<video::ITexture> getTexture(CResFile* resFile, const glitch::core::stringc& directory, glitch::io::IReadFile* file,
                                                             glitch::video::CTextureManager* manager, SImage* image);
    // 0x6594a0: the texture `fallback` as "directory/name" (or by name alone) from the manager; failing that, the file's external buffer of
    // that name (slot +0x34) as a memory file of the same name.
    boost::intrusive_ptr<video::ITexture> getTextureImpl(const glitch::core::stringc& directory, glitch::io::IReadFile* file,
                                                         glitch::video::CTextureManager* manager, const char* name, const char* fallback);
};

// glitch::collada::CResFileReader. Its vtable pointer is at +0x00 and the wrapped IReadFile is at +0x04. CResFile builds one on
// the stack. Polymorphic in the original.
class CResFileReader : public res::FileReader {
public:
    explicit CResFileReader(glitch::io::IReadFile* readFile = nullptr) : file(readFile) {}
    // 0x657888 _ZN6glitch7collada14CResFileReaderD1Ev (empty); D0 0x6579e0 is the deleting thunk.
    ~CResFileReader() override = default;

    // 0x657818, 0x657834, 0x657850, 0x65786c: forward to the wrapped file's position, read, seek and size slots.
    std::int32_t tell() override;
    std::int32_t read(void* buffer, std::uint32_t size) override;
    std::int32_t seek(std::int32_t position, bool relative) override;
    std::int32_t getSize() override;

    glitch::io::IReadFile* file = nullptr;       // +0x04 wrapped file (tell/read/seek/getSize forward to it)
};

// glitch::collada::CResFileManager, a singleton (static Inst).
class CResFileManager {
public:
    static CResFileManager* Inst;
    static CResFactory DefaultResFactory;

    std::uint32_t vptr_0x00 = 0;                 // +0x00 vtable pointer (constructed with off_983030)
    std::uint32_t refCount = 1;                  // +0x04 set to 1 by the constructor
    // +0x08..+0x1b: the loaded records by absolute file name (std::map<std::string, CResFile*>; the tree header, 20 bytes, is at +0x08).
    std::map<std::string, CResFile*> files;
    glitch::IDevice* device = nullptr;           // +0x20 file system is read from device +0x34
    CResFactory* resFactory = nullptr;           // +0x24 set to &DefaultResFactory
    bool autoUnloadEnabled = true;               // +0x28 streaming/unload path of ~CColladaDatabase; get() clears it temporarily
    bool flag_0x29 = false;                      // +0x29 read by CResFactory::getTexture: the image's name is its first word
    bool zipLoadingEnabled = true;               // +0x2a enables the zip path in getReadFile
    bool disableZipAfterFirstUse = true;         // +0x2b when set, getReadFile clears zipLoadingEnabled after one use

    // 0x657894 (C1) / 0x657914 (C2): zeroes the members, stores the device and the default factory and publishes the
    // singleton. Reconstructed; see src/collada/CResFileManager.cpp.
    explicit CResFileManager(glitch::IDevice* device);
    CResFileManager() = default;
    // 0x6582c4 (D1) / 0x6583c4 (D2): drops every record, unpublishes the singleton and clears the map. D0 (0x6583a8) is the deleting thunk.
    ~CResFileManager();
    // 0x65799c: the version check of a file by name (the file is opened and checked through checkVersion(IReadFile*)).
    std::int32_t checkVersion(const char* fileName);
    // 0x657bd0: the read file the loaders use for `file`: the "little_endian_not_quantized.bdae" entry of a zip archive, else the file itself
    // (with a use taken).
    glitch::io::IReadFile* getReadFile(glitch::io::IReadFile* file);
    // 0x658564: resolves the external resources of `file` (the textures of its images) through the factory.
    void updateExternalResources(CResFile* file, glitch::io::IReadFile* reader);
    // 0x6584fc: unload(iterator into the loaded-file map): 3 for the end iterator, 2 when the record has other users (and `flag` is clear), 1
    // when it is unloaded in spite of them, else 0.
    std::int32_t unload(std::map<std::string, CResFile*>::iterator position, bool flag);
    // 0x659b60, 0x659cfc, 0x659c3c: unload by name, by SCollada record, and everything (answers how many were unloaded).
    std::int32_t unload(const char* fileName, bool flag);
    std::int32_t unload(const SCollada* collada, bool flag);
    std::int32_t unloadAll();
    // 0x65a748, 0x65a9a8, 0x65ac74: the loaded record for a read file / a file name / a name relative to a record; loads it when
    // missing. 0x65a98c, 0x65ac5c: load with an optional completion callback.
    CResFile* get(glitch::io::IReadFile* file, bool flagA, bool flagB);
    CResFile* get(const char* fileName, bool flag);
    CResFile* get(CResFile* relativeTo, const char* fileName, bool flag);
    CResFile* load(glitch::io::IReadFile* file, bool flag, void (*callback)(const char*, const SCollada*), bool flagB);
    CResFile* load(const char* fileName, bool flag, void (*callback)(const char*, const SCollada*));

    // 0x657994 _ZN6glitch7collada15CResFileManager12checkVersionEPNS_2io9IReadFileE: returns 0 (the original body is a constant).
    std::uint32_t checkVersion(glitch::io::IReadFile* file);
    // 0x658c90 _ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE
    // Partial: see src/collada/CResFileManager.cpp.
    int postLoadProcess(CResFile* file, glitch::io::IReadFile* reader);
};

// glitch::collada::CAnimationStreamingManager, a singleton (static Instance). The object is 0x20 bytes of data (no vptr): its
// constructor (0x60b3cc / 0x60b410) zeroes the eight words. The two vectors of the original (the registry at +0x00, the cache at +0x0c) are
// std::vectors here.
class CAnimationStreamingManager {
public:
    // Cache entry, 12 bytes in the original: the bytes charged to the cache, a counted pointer to the on-demand block of the cached data (an
    // entry is evicted when the cache holds the only use) and the name of the file the block belongs to (matched by release()).
    struct SegmentCacheEntry {
        std::uint32_t size;              // +0x00 bytes charged to cacheUsage
        SAnimationDataHolder* holder;    // +0x04 the block (a use is held for the entry)
        const char* fileName;            // +0x08 owning record's fileName, matched by release()
    };

    // 0x60b3cc _ZN6glitch7collada26CAnimationStreamingManagerC2Ev
    // 0x60b410 _ZN6glitch7collada26CAnimationStreamingManagerC1Ev
    // Zeroes the members (the original publishes the object through the static Instance pointer).
    CAnimationStreamingManager();

    static CAnimationStreamingManager* Instance;

    // 0x60c59c _ZN6glitch7collada26CAnimationStreamingManager17getAnimationBlockERNS0_24SAnimationBlockSearchKeyERN5boost13intrusive_ptrINS0_15CAnimationBlockEEE
    // Finds (or loads) the block that holds the keys of the clip at the key's time and stores it in `block` (a counted slot), replacing the held
    // one: the held block's neighbours are asked first (CAnimationBlock::getBlock), then the registry.
    void getAnimationBlock(SAnimationBlockSearchKey& key, CAnimationBlock*& block);
    // 0x60c220: the one-argument form; the registered block for the key or a new one (null when the file has no animations).
    CAnimationBlock* getAnimationBlock(SAnimationBlockSearchKey& key);
    // 0x60b918: drops the cached entries of `database`'s file. 0x60b990: evicts cached blocks while the usage is above the limit (logging when
    // it cannot). 0x60bc7c: adds a block's data to the cache. 0x60c414 / 0x60bb64: insert into / remove from the sorted registry.
    void release(CColladaDatabase* database);
    void checkMemoryUsage();
    void cache(CAnimationBlock* block);
    void registerAnimationBlock(CAnimationBlock* block);
    void unregisterAnimationBlock(CAnimationBlock* block);

    std::vector<CAnimationBlock*> registry;           // +0x00..+0x08 sorted registry of blocks (database presence, clip, segment start)
    std::vector<SegmentCacheEntry> cacheEntries;      // +0x0c..+0x14
    std::int32_t cacheLimit = 0;                      // +0x18 maximum cache bytes; caching is off when not positive
    std::int32_t cacheUsage = 0;                      // +0x1c bytes currently cached

private:
    // The vector's erase (0x60b888): the entry gives up its use of the block (the last use frees the data) and the following entries move down.
    std::vector<SegmentCacheEntry>::iterator eraseEntry(std::vector<SegmentCacheEntry>::iterator position);
};

// ---------------------------------------------------------------------------------------------------------------------
// glitch::collada::CColladaDatabase. The original's two pointer words are `record` (+0x00) and `factory` (+0x04); the table
// holder is reached as record->data->tables (original *(*this + 0x24) + 0x20).
//
// Member functions below are the ones declared so far; each comment gives the original address. Overloads taking an index use the
// unchecked base + index * stride reads of the original.
// ---------------------------------------------------------------------------------------------------------------------
struct SInstanceGeometry;
struct SInstanceCamera;
struct SInstanceCoronas;
struct SInstanceEmitter;
struct SInstanceGNPSEmitter;

class CColladaDatabase {
public:
    CResFile* record = nullptr;           // +0x00
    CColladaFactory* factory = nullptr;   // +0x04

    const SDatabaseTables& tables() const { return *record->data->tables; }
    const char* fileName() const { return record ? record->fileName : nullptr; }

    // The original constructors (C1 and C2 share one body). Each loads through CResFileManager::Inst and takes one reference on the
    // loaded record (the factory is stored at +0x04). The default constructor is the empty pair the tables use as a value.
    CColladaDatabase() = default;
    CColladaDatabase(const char* fileName, CColladaFactory* factory);                                  // 0x60f25c, 0x60f2b0
    CColladaDatabase(glitch::io::IReadFile* file, bool flag, CColladaFactory* factory);               // 0x60f304, 0x60f364
    CColladaDatabase(glitch::io::IReadFile* file, CColladaFactory* factory);                          // 0x60f3c4, 0x60f42c
    CColladaDatabase(const CColladaDatabase* source, const char* name, CColladaFactory* factory);    // 0x6192f0, 0x619344

    // 0x60e2a8 getVersion() const
    std::uint32_t getVersion() const;
    // 0x60e334 getAnimationClipLibrary() const
    // The address of the 8-byte clip library inside the table holder (holder +0x34): null when no file is loaded.
    const SLibraryAnimationClips* getAnimationClipLibrary() const;
    // 0x60e348 getScene() const
    // The scene object of the file (holder +0xb8): the entries, of which the ones of kind EIK_VISUAL_SCENE are built by constructScene.
    const std::vector<SInstanceRef>* getScene() const;
    // 0x60fa24 constructController(IVideoDriver*, SController*, CRootSceneNode*) const
    // The skin or the morphing mesh of the controller record. The original returns an intrusive_ptr through a hidden out slot; in the
    // port (as for every constructX of this class) the result is the raw pointer, carrying the one reference the caller adopts.
    IMesh* constructController(video::IVideoDriver* driver, SController* controller, CRootSceneNode* root) const;
    // 0x60fb54 constructAnimator() const
    // The animator of the file (CColladaFactory::createAnimator): null when the file has no animation, image sequence or event track.
    void* constructAnimator() const;
    // The factory the static loaders use when they are given none (a CColladaFactory object of the original's data segment).
    static CColladaFactory DefaultFactory;

    // 0x60e4bc getExternalLightSceneNode(intrusive_ptr<CMaterial const> const&, unsigned short, unsigned int, char const*) const
    // Forwards to the factory slot +0x78: the light node (scene::CLightSceneNode) the URL names, null when there is none.
    scene::CLightSceneNode* getExternalLightSceneNode(const boost::intrusive_ptr<video::CMaterial const>& material, std::uint16_t a,
                                                      std::uint32_t b, const char* name) const;
    // 0x60e504 getExternalLightSceneNode(intrusive_ptr<CMaterialRenderer const> const&, unsigned short, unsigned int, char const*) const
    scene::CLightSceneNode* getExternalLightSceneNode(const boost::intrusive_ptr<video::CMaterialRenderer const>& renderer,
                                   std::uint16_t a, std::uint32_t b, const char* name) const;

    // 0x60e570 constructEffect(IVideoDriver*, SEffect*, CRootSceneNode*) const
    video::CMaterialRenderer* constructEffect(video::IVideoDriver* driver, SEffect* effect,
                                              CRootSceneNode* root) const;
    // 0x60e5e4 constructEffect(IVideoDriver*, int, CRootSceneNode*) const
    video::CMaterialRenderer* constructEffect(video::IVideoDriver* driver, int index, CRootSceneNode* root) const;
    // 0x61b10c constructEffect(IVideoDriver*, char const*, CRootSceneNode*) const
    video::CMaterialRenderer* constructEffect(video::IVideoDriver* driver, const char* name,
                                              CRootSceneNode* root) const;

    // 0x60e634 constructGeometry(IVideoDriver*, SGeometry*) const
    IMesh* constructGeometry(video::IVideoDriver* driver, SGeometry* geometry) const;
    // 0x60e6b8 constructGeometry(IVideoDriver*, int) const
    IMesh* constructGeometry(video::IVideoDriver* driver, int index) const;
    // 0x61aaa8 constructGeometry(IVideoDriver*, char const*) const
    IMesh* constructGeometry(video::IVideoDriver* driver, const char* name) const;

    // 0x60e6f0 constructModularSkin(SInstanceModularSkin*, CRootSceneNode*) const
    CModularSkinnedMesh* constructModularSkin(SInstanceModularSkin* instance, CRootSceneNode* root) const;

    // 0x60e88c constructForce(SForce*, CRootSceneNode*) const
    void* constructForce(SForce* force, CRootSceneNode* root) const;
    // 0x60e910 constructForce(int, CRootSceneNode*) const
    void* constructForce(int index, CRootSceneNode* root) const;
    // 0x61a970 constructForce(char const*, CRootSceneNode*) const
    void* constructForce(const char* name, CRootSceneNode* root) const;
    // 0x61a994 constructForce(SInstanceForce*, CRootSceneNode*) const
    void* constructForce(SInstanceForce* instance, CRootSceneNode* root) const;

    // 0x60f9a4 constructMorph(IVideoDriver*, SController*, CRootSceneNode*) const
    CMorphingMesh* constructMorph(video::IVideoDriver* driver, SController* controller, CRootSceneNode* root) const;

    // 0x60e62c constructCamera(SInstanceCamera*, CRootSceneNode*) const: returns null (an empty body in the original).
    CCameraSceneNode* constructCamera(SInstanceCamera* instance, CRootSceneNode* root) const;
    // 0x619398 constructCamera(SCamera*, CRootSceneNode*) const
    CCameraSceneNode* constructCamera(SCamera* camera, CRootSceneNode* root) const;
    // 0x6193e0 constructCamera(int, CRootSceneNode*) const
    CCameraSceneNode* constructCamera(int index, CRootSceneNode* root) const;
    // 0x61b2d0 constructCamera(char const*, CRootSceneNode*) const
    CCameraSceneNode* constructCamera(const char* name, CRootSceneNode* root) const;

    // 0x619404 constructLight(SLight*, CRootSceneNode*) const
    CLightSceneNode* constructLight(SLight* light, CRootSceneNode* root) const;
    // 0x619450 constructLight(int, CRootSceneNode*) const
    CLightSceneNode* constructLight(int index, CRootSceneNode* root) const;
    // 0x61b24c constructLight(char const*, CRootSceneNode*) const
    CLightSceneNode* constructLight(const char* name, CRootSceneNode* root) const;

    // 0x61ace8 constructController(IVideoDriver*, SInstanceController*, CRootSceneNode*, bool) const
    // The mesh of the controller instance (an owned reference, as above).
    IMesh* constructController(video::IVideoDriver* driver, SInstanceController* instance, CRootSceneNode* root,
                                                    bool flag) const;
    // 0x61aeb8 constructGeometry(IVideoDriver*, SInstanceGeometry*, CRootSceneNode*) const
    // The mesh of the geometry instance, with the materials of its bindings.
    IMesh* constructGeometry(video::IVideoDriver* driver, SInstanceGeometry* instance, CRootSceneNode* root) const;
    // 0x61b2f4 constructNode(IVideoDriver*, SNode*, CRootSceneNode*) const
    // The scene node built for `node` with its instances and children below it (an owned reference, as the factory returns it).
    scene::ISceneNode* constructNode(video::IVideoDriver* driver, SNode* node, CRootSceneNode* root) const;
    // 0x61b9e8 constructScene(IVideoDriver*) const
    // The root scene node of the file: the factory's scene, the visual scenes of the file's scene object built below it, then the root's
    // onPostLoad and resolveURLs. Null when no file is loaded.
    CRootSceneNode* constructScene(video::IVideoDriver* driver) const;

    // 0x61c0c8 getAnimation(char const*, SChannel::Type, unsigned char) const
    SAnimation* getAnimation(const char* name, SChannel::Type type, std::uint8_t flag) const;
    // 0x61c1e0 getBlendableAnimation(SChannel const*) const
    SAnimation* getBlendableAnimation(const SChannel* channel) const;
    // 0x611ae0 getAnimationTrackEx(SAnimation const*): the track that reads the key data of the animation and writes its target: chosen by
    // the channel type (and the key width of the offset / scale record, or the material parameter's type and component), one of the
    // singletons of the animation_track classes; null for a type or width with no track. (A static: the original takes no database.)
    static IAnimationTrackEx* getAnimationTrackEx(const SAnimation* animation);
    // 0x61c214 getNode(char const*, SNode&) const
    // Returns `node` when its name matches, else the first match among its descendants.
    SNode* getNode(const char* name, SNode& node) const;
    // 0x61c290 getNode(char const*) const
    SNode* getNode(const char* name) const;
    // 0x61c2f8 getDefaultValue(char const*, SChannel::Type, void**, void*) const
    // The original returns a char that is 1 on success; here it is bool. Partial: see the .cpp.
    bool getDefaultValue(const char* name, SChannel::Type type, void** out, void* flag) const;
    // 0x61c6bc getDefaultValue(SChannel const*, void**) const
    bool getDefaultValue(const SChannel* channel, void** out) const;

    // ---- Loading constructors. CColladaDatabase is a plain {record, factory} pair in this port (a handle that is copied with
    // copyDatabase and dropped with dropDatabase), so the constructors that load a file are static creators here. Each original
    // constructor is a C1 / C2 pair. Declared only: they go through CResFileManager::get / load, which are not reconstructed.
    static CColladaDatabase create(const char* fileName, CColladaFactory* factory);                           // 0x60f25c (C1), 0x60f2b0 (C2)
    static CColladaDatabase create(glitch::io::IReadFile* file, bool flag, CColladaFactory* factory);          // 0x60f304 (C1), 0x60f364 (C2)
    static CColladaDatabase create(glitch::io::IReadFile* file, CColladaFactory* factory);                     // 0x60f3c4 (C1), 0x60f42c (C2)
    // 0x619344: the database of file `name` next to `source`'s file.
    static CColladaDatabase create(const CColladaDatabase* source, const char* name, CColladaFactory* factory);

    // ---- The indexed getters (getLight(int) and the family) are the free helpers lightAt ... below; the two-name getMaterial is
    // materialOfFile below. Members of those names would hide the free getX(tables, name) lookups the constructX members call.
    // 0x61c1fc / 0x61c6ec: the SAnimation* spellings of getBlendableAnimation(const SChannel*) / getDefaultValue(const SChannel*, ...).
    SAnimation* getBlendableAnimation(const SAnimation* animation) const;
    bool getDefaultValue(const SAnimation* animation, void** out) const;
    // 0x61c91c: the animation named `name` of type `type` whose binding URI matches `uri`.
    SAnimation* getAnimation(const char* name, SChannel::Type type, const char* uri) const;

    // ---- Constructors of scene objects by record, index and name. The factory is `factory` (+0x04). Declared only unless noted.
    // Coronas: 0x60e75c (record), 0x61a750 (name), 0x61a77c (instance record). The original builds the node through the factory.
    CCoronasSceneNode* constructCoronas(SCoronas* coronas, video::IVideoDriver* driver, CRootSceneNode* root) const;
    CCoronasSceneNode* constructCoronas(const char* name, video::IVideoDriver* driver, CRootSceneNode* root) const;
    CCoronasSceneNode* constructCoronas(SInstanceCoronas* instance, video::IVideoDriver* driver, CRootSceneNode* root) const;
    // Emitters: 0x60e79c (record), 0x60e7e0 (index), 0x61a854 (name), 0x61a888 (instance record).
    CParticleSystemSceneNode* constructEmitter(SEmitter* emitter, video::IVideoDriver* driver, res::vector<res::String>* materials,
                                               CRootSceneNode* root) const;
    CParticleSystemSceneNode* constructEmitter(int index, video::IVideoDriver* driver, res::vector<res::String>* materials,
                                               CRootSceneNode* root) const;
    CParticleSystemSceneNode* constructEmitter(const char* name, video::IVideoDriver* driver, res::vector<res::String>* materials,
                                               CRootSceneNode* root) const;
    CParticleSystemSceneNode* constructEmitter(SInstanceEmitter* instance, video::IVideoDriver* driver, CRootSceneNode* root) const;
    // Glitch-new-particle-system emitters: 0x60e814 (record), 0x60e858 (index), 0x61a5d4 (name), 0x61a608 (instance record).
    CGlitchNewParticleSystemSceneNode* constructGNPSEmitter(SGNPSEmitter* emitter, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials, CRootSceneNode* root) const;
    CGlitchNewParticleSystemSceneNode* constructGNPSEmitter(int index, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials, CRootSceneNode* root) const;
    CGlitchNewParticleSystemSceneNode* constructGNPSEmitter(const char* name, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials, CRootSceneNode* root) const;
    CGlitchNewParticleSystemSceneNode* constructGNPSEmitter(SInstanceGNPSEmitter* instance, video::IVideoDriver* driver,
                                                            CRootSceneNode* root) const;
    // Skins, controllers by index / name, images, materials: the original returns an intrusive_ptr through a hidden out slot (the first
    // argument here, as for the other controllers). Declared only.
    CSkinnedMesh* constructSkin(video::IVideoDriver* driver, SController* controller,
                                                     CRootSceneNode* root) const;                            // 0x60f924
    IMesh* constructController(video::IVideoDriver* driver, int index, CRootSceneNode* root) const;      // 0x60fa70
    IMesh* constructController(video::IVideoDriver* driver, const char* name,
                                                    CRootSceneNode* root) const;                              // 0x61aa00
    CImage* constructImage(SImage* image, CRootSceneNode* root) const;                    // 0x60fc70
    CImage* constructImage(int index, CRootSceneNode* root) const;                        // 0x60fcc0
    CImage* constructImage(const char* name, CRootSceneNode* root) const;                 // 0x61b1b4
    video::CMaterial* constructMaterial(video::IVideoDriver* driver, SMaterial* material,
                                                             CRootSceneNode* root) const;                    // 0x61cca8
    video::CMaterial* constructMaterial(video::IVideoDriver* driver, const char* name,
                                                             CRootSceneNode* root) const;                    // 0x61cefc
    video::CMaterial* constructMaterial(video::IVideoDriver* driver, int index,
                                                             CRootSceneNode* root) const;                    // 0x61cf44
    // 0x61aae0: the geometry `geometryName` of the file `fileName`, which is opened next to this database's file through
    // CResFileManager::get (it logs "File not found" and "Geometry not found" through the printer). Out-slot return as above.
    IMesh* constructGeometry(video::IVideoDriver* driver, const char* fileName,
                                                  const char* geometryName) const;
    // Visual scenes: 0x61b8bc (record), 0x61b988 (index), 0x61b9b8 (name). The scene's nodes are constructed below `root`.
    CRootSceneNode* constructVisualScene(video::IVideoDriver* driver, SVisualScene* scene, CRootSceneNode* root) const;
    CRootSceneNode* constructVisualScene(video::IVideoDriver* driver, int index, CRootSceneNode* root) const;
    CRootSceneNode* constructVisualScene(video::IVideoDriver* driver, const char* name, CRootSceneNode* root) const;
    // Scenes: 0x61babc (the scene of the file with the flag) is a member. The four loading overloads below are static in the
    // original (the decompiler lists a leading `this` that is really the driver): each one asks CResFileManager::load for the file,
    // switches the manager's flag at +0x28 off, builds a temporary database over the loaded file with `factory` (the static
    // CColladaDatabase::DefaultFactory when null), runs the member constructScene(driver) and drops the database.
    CRootSceneNode* constructScene(video::IVideoDriver* driver, bool flag) const;                                          // 0x61babc
    static CRootSceneNode* constructScene(video::IVideoDriver* driver, const char* fileName, CColladaFactory* factory);   // 0x61bb20
    static CRootSceneNode* constructScene(video::IVideoDriver* driver, const char* fileName, bool flag,
                                          CColladaFactory* factory);                                                       // 0x61bbd4
    static CRootSceneNode* constructScene(video::IVideoDriver* driver, glitch::io::IReadFile* file, bool flagA, bool flagB,
                                          CColladaFactory* factory);                                                       // 0x61bc8c
    static CRootSceneNode* constructScene(video::IVideoDriver* driver, glitch::io::IReadFile* file, bool flag,
                                          CColladaFactory* factory);                                                       // 0x61bd54
    // Nodes: 0x61be14 (a record, without the root) and 0x61c6f4 (by name) are members; the three loading overloads are static and
    // follow the scheme above for the named node.
    CRootSceneNode* constructNode(video::IVideoDriver* driver, SNode* node) const;                                         // 0x61be14
    CRootSceneNode* constructNode(video::IVideoDriver* driver, const char* nodeName) const;                                // 0x61c6f4
    static CRootSceneNode* constructNode(video::IVideoDriver* driver, glitch::io::IReadFile* file, const char* nodeName, bool flag,
                                         CColladaFactory* factory);                                                        // 0x61c71c
    static CRootSceneNode* constructNode(video::IVideoDriver* driver, glitch::io::IReadFile* file, const char* nodeName,
                                         CColladaFactory* factory);                                                        // 0x61c7cc
    static CRootSceneNode* constructNode(video::IVideoDriver* driver, const char* fileName, const char* nodeName,
                                         CColladaFactory* factory);                                                        // 0x61c878
    // 0x619510, 0x6195c8, 0x61967c: the animator of a file, static, same scheme (the member constructAnimator() is 0x60fb54).
    static void* constructAnimator(glitch::io::IReadFile* file, bool flag, CColladaFactory* factory);
    static void* constructAnimator(glitch::io::IReadFile* file, CColladaFactory* factory);
    static void* constructAnimator(const char* fileName, CColladaFactory* factory);
};

// ---------------------------------------------------------------------------------------------------------------------
// The animation block the streaming manager hands to the animators (glitch::collada::CAnimationBlock, 0x20 bytes; constructors
// 0x60c05c, 0x60c610, 0x60c7a8, 0x60c940, destructor 0x60bbd8, drop 0x60bb1c; all read through the layout evidence of the
// constructors and the destructor):
//   +0x00 the reference count (drop frees the block when it reaches one), +0x04 / +0x08 a copy of the CColladaDatabase handle (its
//   record gets a use), +0x0c the clip range the block was built for (when 0 it becomes the database clip at +24), +0x10 the animation
//   segment (count +0x00, index +0x04, users +0x08), +0x14 the data holder (SAnimationDataHolder), +0x18 / +0x1c the next and previous
//   blocks (prepareNextBlock links them; the destructor clears the peer's link).
// The data holder (SAnimationDataHolder, defined with SAnimationSegment) keeps the loaded key data: its +0x00 is the reference count and
// `buffer` the output array the animators build their SAnimationAccessor over.
// ---------------------------------------------------------------------------------------------------------------------
class CAnimationBlock {
public:
    // 0x60c05c (C1) / 0x60c940 (C2): the block for the clip range `range` (null: the whole animation) at `time`: the segment of that time is
    // loaded through a reader over the file the database came from, and the block is registered (and cached) with the streaming manager.
    CAnimationBlock(const CColladaDatabase& source, const SAnimationClip* range, std::int32_t time);
    // 0x60c610 (C1) / 0x60c7a8 (C2): the same for a given segment. The original opens the file for the reader and never drops it.
    CAnimationBlock(const CColladaDatabase& source, const SAnimationClip* range, SAnimationSegment* segment);
    // 0x60ba2c (D1) / 0x60bbd8 (D2): releases the neighbours' links (the next block is freed when this holds its last use), the data holder and
    // the database handle. D0 (0x60bbd8's deleting variant) is the compiler's thunk.
    ~CAnimationBlock();

    std::uint32_t refCount = 0;               // +0x00
    CColladaDatabase database;                // +0x04 / +0x08
    const SAnimationClip* range = nullptr;    // +0x0c
    SAnimationSegment* segment = nullptr;     // +0x10
    SAnimationDataHolder* dataHolder = nullptr;  // +0x14 (a counted pointer to segment->data)
    CAnimationBlock* next = nullptr;          // +0x18 the next block, or this block when there is none
    CAnimationBlock* previous = nullptr;      // +0x1c

    // 0x60b350: the block of the chain (this one, then the next ones forward when the time is past this segment, the previous ones backward
    // when before) whose segment holds the key's time, for the same clip range and database presence; null when none does.
    CAnimationBlock* getBlock(SAnimationBlockSearchKey& key);
    // 0x60bad0: unregisters the block from the streaming manager (which gives up the registry's use) and deletes it.
    void free();
    // 0x60c31c: links the block that follows this one (the key is the same clip range at the end of this segment plus one, or the clip's start
    // when the range is covered; this block's next is itself when there is nothing left to load).
    void prepareNextBlock();
    // 0x60c3f0: takes a use of the block; the second use loads the next block when none is linked.
    void grab();
    // 0x60bb1c: drops a use; at a count of one the block is freed when it has no previous block, or the previous one holds the last use of
    // its own, or else (the original frees the NEXT block there) when the next one holds only its own use.
    void drop();
};

// The key the streaming manager looks a block up by (SAnimationBlockSearchKey): the database handle, the clip range and the time.
struct SAnimationBlockSearchKey {
    SAnimationBlockSearchKey() = default;
    // 0x65d6d8: copies the database handle (a use of the record); the clip is the library's clip `clipIndex` (the whole-animation record when
    // the file has no clip library) and the time is clamped into the clip's range.
    SAnimationBlockSearchKey(const CColladaDatabase& source, std::int32_t clipIndex, std::int32_t timeMs);
    CColladaDatabase database;                // +0x00 / +0x04 (a copy of the animator's handle; the destructor drops it)
    const SAnimationClip* clip = nullptr;     // +0x08 the clip range
    std::int32_t time = 0;                    // +0x0c
};

// The copy of a database handle that the original inlines at each member copy (e.g. 0x65dbd8, 0x644eb8, 0x64b9c8): the record gets
// a use only when its count is not zero. CColladaDatabase keeps plain pointers (see the file comment), so the copy takes the use.
inline void copyDatabase(CColladaDatabase& to, const CColladaDatabase& from) {
    to.record = from.record;
    to.factory = from.factory;
    if (to.record != nullptr && to.record->refCount != 0) {
        ++to.record->refCount;
    }
}

// ~CColladaDatabase (0x619474 D1, 0x619784 D2): the record loses the use the handle held (only when its count is not zero); when the file
// manager unloads automatically and the record is then held only by the manager (count 1), the streaming manager forgets the cached
// segments of the file and the manager unloads it by name. The handle is cleared. The handles are plain pointers in the port (the copies
// take their use through copyDatabase), so the destructor is this function, called where the original's destructor runs.
// Host deviations: the use is given up by decrementing (a record built outside the manager, with a count of one, is not deleted here), and
// the unload is skipped for a record with no name.
inline void dropDatabase(CColladaDatabase& database) {
    CResFile* record = database.record;
    if (record != nullptr && record->refCount != 0) {
        --record->refCount;
        if (CResFileManager::Inst != nullptr && CResFileManager::Inst->autoUnloadEnabled && record->refCount == 1 && record->fileName != nullptr) {
            if (CAnimationStreamingManager::Instance != nullptr) {
                CAnimationStreamingManager::Instance->release(&database);
            }
            CResFileManager::Inst->unload(record->fileName, false);
        }
    }
    database.record = nullptr;
}

// Lookups by name over the tables (the CColladaDatabase::getX(char const*) members of the original, over the table holder).
// 0x61be98 _ZNK6glitch7collada16CColladaDatabase16getAnimationClipEPKc
SAnimationClip* getAnimationClip(const SDatabaseTables& tables, const char* name);
// 0x61bef8 _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKc
SAnimation* getAnimation(const SDatabaseTables& tables, const char* name);
// 0x61a574 _ZNK6glitch7collada16CColladaDatabase14getGNPSEmitterEPKc
SGNPSEmitter* getGNPSEmitter(const SDatabaseTables& tables, const char* name);
// 0x61a6f0 _ZNK6glitch7collada16CColladaDatabase10getCoronasEPKc
SCoronas* getCoronas(const SDatabaseTables& tables, const char* name);
// 0x61a7f4 _ZNK6glitch7collada16CColladaDatabase10getEmitterEPKc
SEmitter* getEmitter(const SDatabaseTables& tables, const char* name);
// 0x61a690 _ZNK6glitch7collada16CColladaDatabase14getVisualSceneEPKc
SVisualScene* getVisualScene(const SDatabaseTables& tables, const char* name);
// 0x61a910 _ZNK6glitch7collada16CColladaDatabase8getForceEPKc
SForce* getForce(const SDatabaseTables& tables, const char* name);
// 0x61a9a0 _ZNK6glitch7collada16CColladaDatabase13getControllerEPKc
SController* getController(const SDatabaseTables& tables, const char* name);
// 0x61aa48 _ZNK6glitch7collada16CColladaDatabase11getGeometryEPKc
SGeometry* getGeometry(const SDatabaseTables& tables, const char* name);
// 0x61ac28 _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKc
SMaterial* getMaterial(const SDatabaseTables& tables, const char* name);
// 0x61b0ac _ZNK6glitch7collada16CColladaDatabase9getEffectEPKc
SEffect* getEffect(const SDatabaseTables& tables, const char* name);
// 0x61b154 _ZNK6glitch7collada16CColladaDatabase8getImageEPKc
SImage* getImage(const SDatabaseTables& tables, const char* name);
// 0x61b1ec _ZNK6glitch7collada16CColladaDatabase8getLightEPKc
SLight* getLight(const SDatabaseTables& tables, const char* name);
// 0x61b270 _ZNK6glitch7collada16CColladaDatabase9getCameraEPKc
SCamera* getCamera(const SDatabaseTables& tables, const char* name);

// 0x61bf58 _ZNK6glitch7collada16CColladaDatabase4findEPKcRj
// Tries the kinds selected in `mask` in order; on a hit, `mask` is set to the kind that matched and the entry is returned (as
// void*, the kind is in mask).
const void* find(const SDatabaseTables& tables, const char* name, unsigned& mask);

// 0x60e2bc _ZNK6glitch7collada16CColladaDatabase19getAnimationSegmentEi
// Returns the segment whose [begin, end) contains `frame`; otherwise the last segment. Null when the table is empty.
const SAnimationSegment* getAnimationSegment(const SDatabaseTables& tables, int frame);
// 0x60e28c _ZNK6glitch7collada16CColladaDatabase20linkInstanceMaterialEPNS0_17SInstanceMaterialE
void linkInstanceMaterial(SDatabaseTables& tables, SInstanceMaterial* instance);

// Index getters of the original (0x60e390..0x60e450 family): base + index * stride. They are unchecked, as in the original.
SEffect* effectAt(const SDatabaseTables& tables, int index);        // 0x60e3e4 getEffect(int)
SGeometry* geometryAt(const SDatabaseTables& tables, int index);    // 0x60e41c getGeometry(int)
SForce* forceAt(const SDatabaseTables& tables, int index);          // 0x60e450 getForce(int)
SLight* lightAt(const SDatabaseTables& tables, int index);          // 0x60e3ac getLight(int)
SCamera* cameraAt(const SDatabaseTables& tables, int index);        // 0x60e390 getCamera(int)
// 0x61ac88 getMaterial(char const*, char const*) const: the material `name` of the file `fileName` next to the database's file (the
// original builds a temporary database over that file with the default factory, looks the name up and drops the database).
// Declared only: it goes through CResFileManager::get, which is not reconstructed.
SMaterial* materialOfFile(const CColladaDatabase& database, const char* fileName, const char* name);
// Index getters of the remaining CColladaDatabase::getX(int) members (see collada_database_create.cpp for the members that are
// already written). Kept as free helpers: a member named getX would hide the free getX(tables, name) lookups that the constructX
// members call unqualified.
SAnimation* animationAt(const SDatabaseTables& tables, int index);        // 0x60e35c
SAnimationClip* animationClipAt(const SDatabaseTables& tables, int index); // 0x60e374
SImage* imageAt(const SDatabaseTables& tables, int index);                 // 0x60e3c8
SMaterial* materialAt(const SDatabaseTables& tables, int index);           // 0x60e400
SController* controllerAt(const SDatabaseTables& tables, int index);       // 0x60e434
SEmitter* emitterAt(const SDatabaseTables& tables, int index);             // 0x60e468
SGNPSEmitter* gnpsEmitterAt(const SDatabaseTables& tables, int index);     // 0x60e484
SCoronas* coronasAt(const SDatabaseTables& tables, int index);             // 0x60e4a0
SVisualScene* visualSceneAt(const SDatabaseTables& tables, int index);     // 0x60e54c

}  // namespace glitch::collada
