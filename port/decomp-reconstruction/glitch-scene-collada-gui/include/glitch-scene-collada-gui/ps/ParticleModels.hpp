// glitch::ps particle models: the nine models PSManager::createParticleSystem<P, ...> mixes into a particle system (generation, size,
// colour, emitter, motion, forces, spin, life and the render-data model), PRenderData, the bakers and the particle sort functor.
// Canonical header (residue pass ob). It replaces the model declarations of the res3 pass (ps/IParticleSystem.hpp), the stand-in
// models of ps_types.hpp and the recon_17 / recon_18 / recon_20 / recon_21 stand-in functions of the same classes.
//
// The object model is the one ps/IParticleSystem.hpp describes: every model derives VIRTUALLY from IParticleContext<P>, the shared
// state (particle list, parameter map, times, animation database) lives in that virtual base, and the models reach it through the
// base pointer (the original's `this + *(vptr - 12)`). Member offsets in the comments are the ORIGINAL 32-bit offsets within the
// model object (the vptr is at +0x00); the host layout differs.
//
// Parameter slots. The models bind some of their members by name into the context's parameter map (registerParameter); a later
// setParameter<T> writes through that slot. A slot that the original declares as a 32-bit word but writes with different types
// (float, int, animation pointer) is a union here (`ScalarOrTrack`), so a host-width pointer write cannot spill into the next member.
//
// Evidence: constructors 0x6543f8 (PSizeModel), 0x654690 (PColorModel), 0x6548fc (PEmitterModel), 0x6540ec (PMotionModel), 0x654218
// (PSpinModel), 0x65452c (PLifeModel), 0x6545d0 (PGenerationModel), the Mixin constructors 0x654a74 / 0x654ec4 (render-data model),
// layouts/ps_evidence.hpp (the GNPS constructors 0x6415ac .. 0x6420a8) and the bodies cited at each function.
#pragma once

#include <algorithm>
#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"
#include "glitch-scene-collada-gui/ps/PForce.hpp"

#include "glitch-scene-collada-gui/collada/SAnimation.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::scene {
class CMeshBuffer;
}

namespace glitch::ps {

// The particle system heap helpers (0x64d290 PS_NEW, 0x64d778 PS_FREE; src/ps_types.cpp).
void* PS_NEW(std::uint32_t size);
void PS_FREE(void* p);

// A slot the original reads either as a float (a constant) or as an animation pointer (a track): the model tests the neighbouring
// "over life" word to know which one is live. Both are 32-bit words in the original.
union ScalarOrTrack {
    float scale;
    const collada::SAnimation* track;
};

// The sort functor of the render-data models (the comparisons inside the std::sort instantiations 0x651e6c / 0x639804): the particle
// with the larger squared distance to the camera comes first.
template <typename P>
struct AlphaSort {
    bool operator()(const P& a, const P& b) const { return a.distanceSq > b.distanceSq; }
};

// ---------------------------------------------------------------------------------------------------------------------
// Models of the old system (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x6545d0 ctor, 0x64fc50 initGenerationModel, 0x65317c generateParticles, 0x64d524 / 0x64ef98 dtors.
template <typename P>
class PGenerationModel : public virtual IParticleContext<P> {
public:
    PGenerationModel();
    ~PGenerationModel() override = default;
    void initGenerationModel() override;
    P* generateParticles() override;

    float birthRate = 1.0f;              // +0x04 "BirthRate"
    std::int32_t maxParticles = 1;       // +0x08 "MaxParticles"
    float lastDelta = 0.0f;              // +0x0c the time step of the last generateParticles
    float carry = 0.0f;                  // +0x10 the fraction of a particle carried to the next step
};

// 0x6543f8 ctor, 0x64bd08 initPSizeModel (empty), 0x64bd1c initPSize, 0x64be08 applyPSize, 0x64d4d8 / 0x64efec dtors.
template <typename P>
class PSizeModel : public virtual IParticleContext<P> {
public:
    PSizeModel();
    ~PSizeModel() override = default;
    void initPSizeModel() override;
    void initPSize(P* first, P* last) override;
    void applyPSize(P* first, P* last) override;

    float targetSize = 1.0f;     // +0x04 "TargetSize"
    float sizeVariation = 0.0f;  // +0x08 "SizeVariation"
    float growthTime = 0.0f;     // +0x0c "SizeGrowthTime"
    float fadeTime = 0.0f;       // +0x10 "SizeFadeTime"
};

// 0x654690 ctor, 0x64beec initPColorModel (empty), 0x64bf00 initPColor, 0x64c06c hasColorAnimationTrack, 0x64e830 applyPColor,
// 0x64d48c / 0x64f040 dtors.
template <typename P>
class PColorModel : public virtual IParticleContext<P> {
public:
    PColorModel();
    ~PColorModel() override = default;
    void initPColorModel() override;
    void initPColor(P* first, P* last) override;
    int hasColorAnimationTrack() override;
    void applyPColor(P* first, P* last, video::SColor& color) override;

    const collada::SAnimation* textureTransformTrack = nullptr;  // +0x04 "TextureTransformTrack"
    const collada::SAnimation* diffuseColorTrack = nullptr;      // +0x08 "DiffuseColorTrack"
    std::int32_t animKeyMappingType = 0;                         // +0x0c "AnimKeyMappingType" (1: the age is a fraction of the life)
    float animOffset = 0.0f;                                     // +0x10 "AnimOffset"
    float animOffsetVariation = 0.0f;                            // +0x14 "AnimOffsetVariation"
    float animLength = 0.0f;                                     // +0x18 "AnimLength"
    float animLengthVariation = 0.0f;                            // +0x1c "AnimLengthVariation"
    float animScaleMultiplier = 0.0f;                            // +0x20 "AnimScaleMultiplier"
    float animScaleMultiplierVariation = 0.0f;                   // +0x24 "AnimScaleMultiplierVariation"
};

// 0x6548fc (SParticle) / 0x6415ac (GNPSParticle) ctor, 0x64e750 / 0x63c4c8 initPEmitterModel, 0x64c08c / 0x638544 initPPosition,
// 0x64d3f0 / 0x64d460 / 0x63a350 / 0x63a3c0 dtors.
template <typename P>
class PEmitterModel : public virtual IParticleContext<P> {
public:
    PEmitterModel();
    ~PEmitterModel() override;
    void initPEmitterModel() override;
    void initPPosition(P* first, P* last) override;

    PDomain* domain = nullptr;    // +0x04 owned; PDBox(-1 .. +1) from the constructor
    std::int32_t emitterType = 0; // +0x08 "EmitterType": 0 box, 1 sphere, 2 cylinder
    float radiusLength = 2.0f;    // +0x0c "RadiusLength"
    float width = 2.0f;           // +0x10 "Width" (the string table entry is "ParticleWidth")
    float height = 2.0f;          // +0x14 "Height" ("ParticleHeight")
};

// 0x6540ec ctor, 0x64c17c initPMotionModel (empty), 0x653bb8 initPMotion, 0x64c190 applyPMotion, 0x64d3a4 / 0x64f094 dtors.
template <typename P>
class PMotionModel : public virtual IParticleContext<P> {
public:
    PMotionModel();
    ~PMotionModel() override = default;
    void initPMotionModel() override;
    void initPMotion(P* first, P* last) override;
    void applyPMotion(P* first, P* last) override;

    core::vector3d<float> direction;   // +0x04 "Direction"
    float directionVariation = 0.0f;   // +0x10 "DirectionVariation" (a fraction of 180 degrees)
    float speed = 0.0f;                // +0x14 "Speed"
    float speedVariation = 0.0f;       // +0x18 "SpeedVariation"
};

// 0x654218 ctor, 0x64c248 initPSpinModel (empty), 0x64e3c8 initPSpin, 0x64c25c applyPSpin, 0x64d358 / 0x64f0e8 dtors.
template <typename P>
class PSpinModel : public virtual IParticleContext<P> {
public:
    PSpinModel();
    ~PSpinModel() override = default;
    void initPSpinModel() override;
    void initPSpin(P* first, P* last) override;
    void applyPSpin(P* first, P* last) override;

    float spinTime = 0.0f;               // +0x04 "SpinTime"
    float spinVariation = 0.0f;          // +0x08 "SpinVariation"
    float spinPhase = 0.0f;              // +0x0c "SpinPhase"
    float spinPhaseVariation = 0.0f;     // +0x10 "SpinPhaseVariation"
    core::vector3d<float> spinAxis;      // +0x14 "SpinAxis"
    float spinAxisVariation = 0.0f;      // +0x20 "SpinAxisVariation"
    std::int32_t spinAxisType = 0;       // +0x24 "SpinAxisType": 0 random, 2 the particle's velocity, else the axis above
};

// 0x65452c ctor, 0x64c2e8 initPLifeModel (empty), 0x64c2fc initPLife, 0x64c3f4 applyPLife, 0x64d30c / 0x64f13c dtors.
template <typename P>
class PLifeModel : public virtual IParticleContext<P> {
public:
    PLifeModel();
    ~PLifeModel() override = default;
    void initPLifeModel() override;
    void initPLife(P* first, P* last) override;
    void applyPLife(P* first, P* last) override;

    float life = 0.0f;           // +0x04 "Life"
    float lifeVariation = 0.0f;  // +0x08 "LifeVariation"
};

// ---------------------------------------------------------------------------------------------------------------------
// Models of the new system (GNPSParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x641e2c ctor, 0x63dea0 initGenerationModel, 0x63e644 generateParticles, 0x63a484 / 0x63d7a0 dtors.
template <typename P>
class GNPSGenerationModel : public virtual IParticleContext<P> {
public:
    GNPSGenerationModel();
    ~GNPSGenerationModel() override = default;
    void initGenerationModel() override;
    P* generateParticles() override;

    float birthRate = 1.0f;                  // +0x04 "BirthRate"
    float birthRateVariation = 0.0f;         // +0x08 "BirthRateVariation"
    std::int32_t maxParticlesVariation = 0;  // +0x0c "MaxParticlesVariation"
    std::int32_t maxParticles = 1;           // +0x10 "MaxParticles" (initGenerationModel adds a random share of the variation to it)
    float lastDelta = 0.0f;                  // +0x14 the time step of the last generateParticles
    float carry = 0.0f;                      // +0x18 the fraction of a particle carried to the next step
};

// 0x641f70 ctor, 0x63802c initPSizeModel (empty), 0x638040 initPSize, 0x63c388 applyPSize, 0x63a438 / 0x63d7f4 dtors.
template <typename P>
class GNPSSizeModel : public virtual IParticleContext<P> {
public:
    GNPSSizeModel();
    ~GNPSSizeModel() override = default;
    void initPSizeModel() override;
    void initPSize(P* first, P* last) override;
    void applyPSize(P* first, P* last) override;

    float targetSize = 1.0f;             // +0x04 "TargetSize"
    float sizeVariation = 0.0f;          // +0x08 "SizeVariation"
    std::int32_t sizeScaleOverLife = 0;  // +0x0c "SizeScaleOverLife": > 0 selects the track in sizeScale
    ScalarOrTrack sizeScale{};           // +0x10 "SizeScale": a float, or an SAnimation* with sizeScaleOverLife
};

// 0x6420a8 ctor, 0x6380d8 initPColorModel (empty), 0x6380ec initPColor, 0x638524 hasColorAnimationTrack, 0x63c5a8 applyPColor,
// 0x63a3ec / 0x63d848 dtors.
template <typename P>
class GNPSColorModel : public virtual IParticleContext<P> {
public:
    GNPSColorModel();
    ~GNPSColorModel() override = default;
    void initPColorModel() override;
    void initPColor(P* first, P* last) override;
    int hasColorAnimationTrack() override;
    void applyPColor(P* first, P* last, video::SColor& color) override;

    const collada::SAnimation* textureTransformTrack = nullptr;  // +0x04 "TextureTransformTrack"
    const collada::SAnimation* diffuseColorTrack = nullptr;      // +0x08 "DiffuseColorTrack"
    std::int32_t animKeyMappingType = 1;                         // +0x0c "AnimKeyMappingType"
    float animOffset = 0.0f;                                     // +0x10 "AnimOffset"
    float animOffsetVariation = 0.0f;                            // +0x14 "AnimOffsetVariation"
    float animLength = 0.0f;                                     // +0x18 "AnimLength"
    float animLengthVariation = 0.0f;                            // +0x1c "AnimLengthVariation"
    float animScaleMultiplier = 1.0f;                            // +0x20 "AnimScaleMultiplier"
    float animScaleMultiplierVariation = 0.0f;                   // +0x24
    float tintStrength = 0.0f;                                   // +0x28 "TintStrength"
    std::uint32_t tintColor = 0;                                 // +0x2c "TintColor"
    std::int32_t visibility = 0;                                 // +0x30 "Visibility"
    std::int32_t randomColor = 0;                                // +0x34 "RandomColor"
    std::int32_t textureSubDiviseH = 1;                          // +0x38 "TextureSubDiviseH"
    std::int32_t textureSubDiviseV = 1;                          // +0x3c "TextureSubDiviseV"
    std::int32_t textureSubDiviseRandomPick = 0;                 // +0x40
    std::int32_t subdivisionCounter = 0;                         // +0x44 the sequential cell counter (not bound by name)
    std::int32_t flipU = 0;                                      // +0x48 "FlipU"
    std::int32_t flipV = 0;                                      // +0x4c "FlipV"
};

// 0x641724 ctor, 0x638634 initPMotionModel (empty), 0x6410b0 initPMotion, 0x63beec applyPMotion, 0x63a304 / 0x63d89c dtors.
template <typename P>
class GNPSMotionModel : public virtual IParticleContext<P> {
public:
    GNPSMotionModel();
    ~GNPSMotionModel() override = default;
    void initPMotionModel() override;
    void initPMotion(P* first, P* last) override;
    void applyPMotion(P* first, P* last) override;

    core::vector3d<float> direction;            // +0x04 "Direction"
    core::vector3d<float> directionVariation;   // +0x10 "DirectionVariation"
    float motionRandom = 0.0f;                  // +0x1c "MotionRandom"
    float motionRandomVariation = 0.0f;         // +0x20 "MotionRandomVariation"
    std::int32_t speedScaleOverLife = 0;        // +0x24 "SpeedScaleOverLife": > 0 selects the track in speedScale
    std::int32_t motionRandomScaleOverLife = 0; // +0x28 "MotionRandomScaleOverLife": the same for motionRandomScale
    ScalarOrTrack speedScale{};                 // +0x2c "SpeedScale"
    ScalarOrTrack motionRandomScale{};          // +0x30 "MotionRandomScale"
    float speed = 0.0f;                         // +0x34 "Speed"
    float speedVariation = 0.0f;                // +0x38 "SpeedVariation"
};

// 0x6419dc ctor, 0x63865c initPSpinModel (empty), 0x63cce8 initPSpin, 0x63d390 applyPSpin, 0x63a2b8 / 0x63d8f0 dtors.
template <typename P>
class GNPSSpinModel : public virtual IParticleContext<P> {
public:
    GNPSSpinModel();
    ~GNPSSpinModel() override = default;
    void initPSpinModel() override;
    void initPSpin(P* first, P* last) override;
    void applyPSpin(P* first, P* last) override;

    float spinTime = 0.0f;                          // +0x04 "SpinTime"
    float spinVariation = 0.0f;                     // +0x08 "SpinVariation"
    float spinPhase = 0.0f;                         // +0x0c "SpinPhase"
    float spinPhaseVariation = 0.0f;                // +0x10 "SpinPhaseVariation"
    core::vector3d<float> spinAxis;                 // +0x14 "SpinAxis"
    core::vector3d<float> spinAxisVariation;        // +0x20 "SpinAxisVariation"
    std::int32_t startAngleType = 0;                // +0x2c "StartAngleType": 0 random, 1 the phase, 2 aligned to the motion
    std::int32_t spinKeepAlignedToMotion = 0;       // +0x30 "SpinKeepAlignedToMotion"
    core::CMatrix4<float> viewRotMatrix{core::CMatrix4<float>::EM4CONST_IDENTITY};  // +0x34 "ViewRotMatrix" (identity; the translation is ignored by the model)
    core::vector3d<float> spinPivotPoint;           // +0x78 "SpinPivotPoint"
    std::int32_t spinScaleOverLife = 0;             // +0x84 "SpinScaleOverLife": > 0 selects the track in spinScale
    ScalarOrTrack spinScale{};                      // +0x88 "SpinScale"
    std::int32_t spinAxisType = 0;                  // +0x8c "SpinAxisType": 0 random, 2 the particle's velocity, else the axis above
};

// 0x641d7c ctor, 0x638670 initPLifeModel (empty), 0x638684 initPLife, 0x63904c applyPLife, 0x63a26c / 0x63d944 dtors.
template <typename P>
class GNPSLifeModel : public virtual IParticleContext<P> {
public:
    GNPSLifeModel();
    ~GNPSLifeModel() override = default;
    void initPLifeModel() override;
    void initPLife(P* first, P* last) override;
    void applyPLife(P* first, P* last) override;

    float life = 0.0f;           // +0x04 "Life"
    float lifeVariation = 0.0f;  // +0x08 "LifeVariation"
};

// ---------------------------------------------------------------------------------------------------------------------
// Forces (both systems)
// ---------------------------------------------------------------------------------------------------------------------

// 0x64f190 / 0x63ec44 addPForce, 0x64f278 / 0x63da68 removePForce(PForce*), 0x64f318 / 0x63dc3c removePForce(int), 0x64d9d4 /
// 0x63b188 initPForcesModel, 0x64c234 / 0x638648 initPForces (empty), 0x64d948 / 0x63b0fc applyPForces, 0x64d64c .. 0x63a670 dtors.
template <typename P>
class PForcesModel : public virtual IParticleContext<P> {
public:
    PForcesModel() = default;
    ~PForcesModel() override;
    int addPForce(PForce<P>* force) override;
    void removePForce(PForce<P>* force) override;
    void removePForce(int index) override;
    void initPForcesModel() override;
    void initPForces(P* first, P* last) override;
    void applyPForces(P* first, P* last) override;

    std::vector<PForce<P>*> forces;  // +0x04 .. +0x0c begin, end, capacity (GlitchAlloc block of pointers); owned, deleted through the virtual destructor
    bool dirty = false;              // +0x10 set by every change; the list is sorted by priority on the next initPForcesModel / applyPForces
};

// ---------------------------------------------------------------------------------------------------------------------
// Render data
// ---------------------------------------------------------------------------------------------------------------------

// The render buffers a particle system fills: the vertex stream table, the index stream and the byte size of one particle's vertices.
// 0x63f898 setRenderDataInfo. Layout within the model object: the streams pointer at +0x10, then a CPrimitiveStream (+0x14 .. +0x2b:
// index buffer, offset, count, first vertex, last vertex, index type 255 -> 1, primitive type 6) and the size at +0x2c.
class PRenderData {
public:
    // Builds the stream table for the attributes the mesh buffer's own table has (a new table when it has none yet or lacks one),
    // points them at the index buffer's data and stores `meshBuffer.vertexStreams.field08 * the stride sum` as bytesPerParticle.
    void setRenderDataInfo(scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver);

    boost::intrusive_ptr<video::CVertexStreams> streams;  // +0x00 (model +0x10)
    video::CPrimitiveStream primitives;                    // +0x04 (model +0x14)
    std::uint32_t bytesPerParticle = 0;                    // +0x1c (model +0x2c)
};

// The bakers write their results into static tables (the original's `glitch::ps::<Baker>::Position`, `TexCoords`, `RotMat` ...); the
// models' render path (video::CParticleSystemBaker, not reconstructed) reads them back. Each instantiation has its own copy.

// 0x64c674 / 0x638954 convertVertexPosition, 0x64ea84 / 0x63c800 getPerParticlePosition.
template <typename P>
class PSGenericPositionBaker {
public:
    // The vertex `vertex` of the mapped stream is moved from the node's frame to the particle's: the scene node matrix (rotation part,
    // the translation is added and subtracted again), then SpinMat, then RotMat, then the particle's position is added.
    static void convertVertexPosition(const P* particle, unsigned int vertex, unsigned int unused,
                                      const video::SVertexStream::SMapBuffer<core::vector3d<float>>& stream);
    // RotMat = the rotation taking the z axis to the particle's velocity direction; SpinMat = the rotation about the spin axis.
    static void getPerParticlePosition(const IParticleContext<P>* context, const P* particle);

    static const core::CMatrix4<float>* SceneNodeWorldMat;  // 0x9f7cf8 / 0x9f7cfc (a pointer: the callers set it)
    static core::CMatrix4<float> SpinMat;                   // 0x9f7d00 / 0x9f7d44
    static core::CMatrix4<float> RotMat;                    // 0x9f7d88 / 0x9f7dcc
};

// 0x64dcd8 / 0x63b7fc getPerParticleSystemPosition, 0x6c0238 / 0x6c063c getPerParticlePosition.
template <typename P>
class PSBillboardPositionBaker {
public:
    // Position[0] = the view matrix's up column (elements 1, 5, 9), [1] = the negated forward column (2, 6, 10); [2] and [3] = the
    // half right and half up vectors of the quad, derived from them and from the locked axes of the context.
    static void getPerParticleSystemPosition(const IParticleContext<P>* context, const core::CMatrix4<float>* viewMatrix);
    // Position[4 .. 7] = the four corners of the quad as offsets from the particle (from [2] and [3], optionally aligned to the motion
    // and rotated by the spin).
    static void getPerParticlePosition(const IParticleContext<P>* context, const P* particle);

    static core::vector3d<float> Position[8];  // 0x9f7be0 / 0x9f7c4c
    static core::vector3d<float> Pivot;        // 0x9f7cc4 (the GNPSParticle table only writes it)
};

// 0x6c01d8 / 0x6c01dc getPerParticleTexCoords.
template <typename P>
class PSBillboardTexCoordsBaker {
public:
    static void getPerParticleTexCoords(const IParticleContext<P>* context, const P* particle);

    static float TexCoords[8];  // 0x9f7b88 (u0 v0, u0 v1, u1 v1, u1 v0)
};

class PSNullShaderParametersBaker;
// 0x9f7b80 / 0x9f7b84 Color (the particle's colour word), 0x9f7bc8 / 0x9f7bd4 Normal (the reversed view direction): the billboard bake's
// per-vertex colour and normal.
template <typename P>
class PSBillboardColorBaker {
public:
    static std::uint8_t Color[4];
};
template <typename P>
class PSBillboardNormalBaker {
public:
    static float Normal[3];
};
template <typename Baker> class PSNullColorBaker;
template <typename Baker> class PSGenericNormalBaker;
template <typename Baker> class PSGenericTexCoordsBaker;

// The billboard render-data model. 0x652384 / 0x6524dc / 0x63fa14 / 0x63fb6c initPRenderDataModel, 0x64c448 .. getRenderVertexStreams,
// 0x64c484 getRenderBufferSizeNeeded, 0x64dba0 deallocateBuffer, 0x64dbe8 setRenderBuffer, 0x64c49c initPRenderData (empty),
// 0x651eec / 0x652138 / 0x639884 / 0x639ad0 applyPRenderData, 0x6539a8 / 0x653ab0 destructors.
// Object layout (model offsets): +0x04 meshBuffer ("RenderMesh"), +0x08 material ("RenderMaterial"), +0x0c u16 parameter id, +0x10
// PRenderData, +0x30 ViewMatrix (CMatrix4 with the flag at +0x70), +0x74 BBox, +0x8c AllocateBuffer, +0x90 RenderBuffer, +0x94 the
// buffer size, +0x98 RBufferSizeNeeded, +0x9c a one-byte allocation freed by the destructor, +0xa0 OutIndexBuffer.
template <typename P, typename ShaderParametersBaker, typename ColorBaker, typename NormalBaker, typename PositionBaker,
          typename TexCoordsBaker>
class PRenderDataBillboardModel : public virtual IParticleContext<P> {
public:
    // The constructor is inlined in the Mixin constructors 0x654a74 / 0x654ec4: it zeroes the members, makes the view matrix an
    // identity, the box (-1 .. 1), sets AllocateBuffer, registers the eight parameters and gives the context its default axes.
    PRenderDataBillboardModel();
    ~PRenderDataBillboardModel() override;
    boost::intrusive_ptr<video::CVertexStreams> getRenderVertexStreams() override;
    std::uint32_t getRenderBufferSizeNeeded() const override;
    void deallocateBuffer() override;
    void setRenderBuffer(void* data, std::uint32_t size) override;
    void initPRenderDataModel() override;
    void initPRenderData(P* first, P* last) override;  // empty in the original
    void applyPRenderData(P* first, P* last) override;
    // 0x6558b0 / 0x65605c / 0x640804 / 0x640fb0: bakes the particles into the render streams (the bake of video::CParticleSystemBaker is
    // done inline, see src/ps/ParticleModels.cpp), sets the vertex and index counts and returns the render data.
    PRenderData* getRenderData() override;

    scene::CMeshBuffer* renderMesh = nullptr;                  // +0x04 "RenderMesh"
    boost::intrusive_ptr<video::CMaterial> renderMaterial;     // +0x08 "RenderMaterial"
    std::uint16_t parameterId = 0;                             // +0x0c the renderer's parameter of type 6
    PRenderData renderData;                                    // +0x10
    core::CMatrix4<float> viewMatrix;                          // +0x30 "ViewMatrix"
    core::aabbox3d<float> boundingBox;                         // +0x74 "BBox"
    bool allocateBuffer = true;                                // +0x8c "AllocateBuffer"
    void* renderBuffer = nullptr;                              // +0x90 "RenderBuffer"
    std::uint32_t renderBufferSize = 0;                        // +0x94
    std::uint32_t renderBufferSizeNeeded = 0;                  // +0x98 "RBufferSizeNeeded"
    void* placeholder = nullptr;                               // +0x9c operator new(1)
    boost::intrusive_ptr<video::IBuffer> outIndexBuffer;       // +0xa0 "OutIndexBuffer"
};

}  // namespace glitch::ps

namespace glitch::video {

// video::CParticleSystemBaker<P>::bake (0x6403f8 and 0x640904 for GNPSParticle, 0x6554a4 and 0x6559b0 for SParticle): the render
// bake of a particle model. One member template: a null colour baker selects the generic shape (the template vertices carried
// through the node matrix, SpinMat and RotMat), any other colour baker the billboard shape (quad corners, view normal, texture
// coordinates and colour per vertex). Defined in src/ps/ParticleModels.cpp, which is its only user.
template <typename P>
class CParticleSystemBaker {
public:
    template <typename ColorBaker, typename NormalBaker, typename PositionBaker, typename TexCoordsBaker,
              typename ShaderParametersBaker>
    static void bake(const ps::IParticleContext<P>* context, const CVertexStreams* templateStreams, CVertexStreams* output,
                     const core::CMatrix4<float>* viewMatrix, const boost::intrusive_ptr<CMaterial>& material);
};

}  // namespace glitch::video

