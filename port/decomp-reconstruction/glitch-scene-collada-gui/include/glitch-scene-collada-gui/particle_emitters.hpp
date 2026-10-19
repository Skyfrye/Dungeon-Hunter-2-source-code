// glitch::scene particle emitters: point, box, cylinder, ring, sphere, mesh and animated-mesh-scene-node. Each concrete emitter
// derives from its per-shape interface (scene/IParticleEmitter.hpp), which derives from IParticleEmitter
// (IAttributeExchangingObject + virtual IReferenceCounted). Members sit at the original 32-bit offsets (kept as comments; the
// build is 64-bit). The slot order follows tools/decomp_vtable.py: interface slots first, then the concrete additions
// (getMinLifeTime, getMaxLifeTime, getMaxAngleDegrees, and for the mesh emitters getUseNormalDirection and getMBNumber).
//
// All emitters but the point emitter keep the particles they produced in a vector<SParticle> at +0x04 (begin, end, capacity
// words in the original; the destructor frees the storage). The point emitter embeds a single SParticle at +0x04..+0x48
// and hands a pointer to it out of emitt. emitt() adds the time since the last call to `time`; when the elapsed time exceeds
// 1000 / rate (rate drawn between the minimum and the maximum particles per second) it produces round(time / (1000 / rate))
// particles, at most twice the maximum rate, and resets `time`. The mesh and animated-mesh emitters' emitt returns 0.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/IParticleEmitter.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::scene {

class CParticleCylinderEmitter : public IParticleCylinderEmitter {
public:
    // 0x6f9b38 (C2) / 0x6f9c88 (C1).
    CParticleCylinderEmitter(const core::vector3d<float>& center, float radius, const core::vector3d<float>& normal,
                             float length, bool outlineOnly, const core::vector3d<float>& direction,
                             std::uint32_t minParticlesPerSecond, std::uint32_t maxParticlesPerSecond,
                             video::SColor minStartColor, video::SColor maxStartColor, std::uint32_t lifeTimeMin,
                             std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticleCylinderEmitter(const CParticleCylinderEmitter&) = delete;
    CParticleCylinderEmitter& operator=(const CParticleCylinderEmitter&) = delete;
    ~CParticleCylinderEmitter() override;  // 0x6f9e28 (D1), D0 0x6f9e90

    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6f9ecc
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    void setCenter(const core::vector3d<float>& value) override;
    void setNormal(const core::vector3d<float>& value) override;
    void setRadius(float value) override;
    void setLength(float value) override;
    void setOutlineOnly(bool value) override;
    const core::vector3d<float>& getCenter() const override;
    const core::vector3d<float>& getNormal() const override;
    float getRadius() const override;
    float getLength() const override;
    bool getOutlineOnly() const override;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    std::vector<SParticle> particles;                // +0x04
    core::vector3d<float> center;                    // +0x10
    core::vector3d<float> normal;                    // +0x1c
    float radius = 0.0f;                             // +0x28
    float length = 0.0f;                             // +0x2c
    bool outlineOnly = false;                        // +0x30
    core::vector3d<float> direction;                 // +0x34
    std::uint32_t minParticlesPerSecond = 0;         // +0x40
    std::uint32_t maxParticlesPerSecond = 0;         // +0x44
    video::SColor minStartColor;                     // +0x48
    video::SColor maxStartColor;                     // +0x4c
    std::uint32_t minLifeTime = 0;                   // +0x50
    std::uint32_t maxLifeTime = 0;                   // +0x54
    std::uint32_t time = 0;                          // +0x58
    std::uint32_t emitted = 0;                       // +0x5c
    std::int32_t maxAngleDegrees = 0;                // +0x60
};

class CParticlePointEmitter : public IParticleEmitter {
public:
    // 0x6fba68 (C2) / 0x6fbb80 (C1). The vector argument is the emission direction; the point emitter has no centre.
    CParticlePointEmitter(const core::vector3d<float>& direction, std::uint32_t minParticlesPerSecond,
                          std::uint32_t maxParticlesPerSecond, video::SColor minStartColor, video::SColor maxStartColor,
                          std::uint32_t lifeTimeMin, std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticlePointEmitter(const CParticlePointEmitter&) = delete;
    CParticlePointEmitter& operator=(const CParticlePointEmitter&) = delete;
    ~CParticlePointEmitter() override;  // 0x6fc2fc (D1), D0 0x6fc340

    // vptr+0x00, 0x6fbcd8: Direction, MinParticlesPerSecond, MaxParticlesPerSecond, MinStartColor, MaxStartColor, MinLifeTime,
    // MaxLifeTime, MaxAngleDegrees.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x3c, 0x6fbe4c: reads them back by name, repairing zero or inverted ranges.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleEmitter::deserializeAttributes;
    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6fc0b4
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    SParticle particle;                              // +0x04..+0x47: the one particle emitt hands out
    core::vector3d<float> direction;                 // +0x48
    std::uint32_t minParticlesPerSecond = 0;         // +0x54
    std::uint32_t maxParticlesPerSecond = 0;         // +0x58
    video::SColor minStartColor;                     // +0x5c
    video::SColor maxStartColor;                     // +0x60
    std::uint32_t minLifeTime = 0;                   // +0x64
    std::uint32_t maxLifeTime = 0;                   // +0x68
    std::int32_t maxAngleDegrees = 0;                // +0x6c
    std::uint32_t time = 0;                          // +0x70
    std::uint32_t emitted = 0;                       // +0x74
};

class CParticleBoxEmitter : public IParticleBoxEmitter {
public:
    // 0x6f8a48 (C2) / 0x6f8bb0 (C1).
    CParticleBoxEmitter(const core::aabbox3d<float>& box, const core::vector3d<float>& direction,
                        std::uint32_t minParticlesPerSecond, std::uint32_t maxParticlesPerSecond,
                        video::SColor minStartColor, video::SColor maxStartColor, std::uint32_t lifeTimeMin,
                        std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticleBoxEmitter(const CParticleBoxEmitter&) = delete;
    CParticleBoxEmitter& operator=(const CParticleBoxEmitter&) = delete;
    ~CParticleBoxEmitter() override;  // 0x6f8f50 (D1), D0 0x6f8f98

    // vptr+0x00, 0x6f8d5c: Box (the half extents), Direction and the shared settings.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x3c, 0x6f8fd4.
    int deserializeAttributes(int index, io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    using IParticleEmitter::deserializeAttributes;
    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6f9508
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    void setBox(const core::aabbox3d<float>& value) override;
    const core::aabbox3d<float>& getBox() const override;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    std::vector<SParticle> particles;                // +0x04
    core::aabbox3d<float> box;                       // +0x10
    core::vector3d<float> direction;                 // +0x28
    std::uint32_t minParticlesPerSecond = 0;         // +0x34
    std::uint32_t maxParticlesPerSecond = 0;         // +0x38
    video::SColor minStartColor;                     // +0x3c
    video::SColor maxStartColor;                     // +0x40
    std::uint32_t minLifeTime = 0;                   // +0x44
    std::uint32_t maxLifeTime = 0;                   // +0x48
    std::uint32_t time = 0;                          // +0x4c
    std::uint32_t emitted = 0;                       // +0x50
    std::int32_t maxAngleDegrees = 0;                // +0x54
};

class CParticleRingEmitter : public IParticleRingEmitter {
public:
    // 0x6fc4c8 (C2) / 0x6fc5f4 (C1).
    CParticleRingEmitter(const core::vector3d<float>& center, float radius, float ringThickness,
                         const core::vector3d<float>& direction, std::uint32_t minParticlesPerSecond,
                         std::uint32_t maxParticlesPerSecond, video::SColor minStartColor, video::SColor maxStartColor,
                         std::uint32_t lifeTimeMin, std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticleRingEmitter(const CParticleRingEmitter&) = delete;
    CParticleRingEmitter& operator=(const CParticleRingEmitter&) = delete;
    ~CParticleRingEmitter() override;  // 0x6fc78c (D1), D0 0x6fc7d8

    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6fc814
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    void setCenter(const core::vector3d<float>& value) override;
    void setRadius(float value) override;
    void setRingThickness(float value) override;
    const core::vector3d<float>& getCenter() const override;
    float getRadius() const override;
    float getRingThickness() const override;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    std::vector<SParticle> particles;                // +0x04
    core::vector3d<float> center;                    // +0x10
    float radius = 0.0f;                             // +0x1c
    float ringThickness = 0.0f;                      // +0x20
    core::vector3d<float> direction;                 // +0x24
    std::uint32_t minParticlesPerSecond = 0;         // +0x30
    std::uint32_t maxParticlesPerSecond = 0;         // +0x34
    video::SColor minStartColor;                     // +0x38
    video::SColor maxStartColor;                     // +0x3c
    std::uint32_t minLifeTime = 0;                   // +0x40
    std::uint32_t maxLifeTime = 0;                   // +0x44
    std::uint32_t time = 0;                          // +0x48
    std::uint32_t emitted = 0;                       // +0x4c
    std::int32_t maxAngleDegrees = 0;                // +0x50
};

class CParticleSphereEmitter : public IParticleSphereEmitter {
public:
    // 0x6fd9e8 (C2) / 0x6fdb0c (C1).
    CParticleSphereEmitter(const core::vector3d<float>& center, float radius, const core::vector3d<float>& direction,
                           std::uint32_t minParticlesPerSecond, std::uint32_t maxParticlesPerSecond,
                           video::SColor minStartColor, video::SColor maxStartColor, std::uint32_t lifeTimeMin,
                           std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticleSphereEmitter(const CParticleSphereEmitter&) = delete;
    CParticleSphereEmitter& operator=(const CParticleSphereEmitter&) = delete;
    ~CParticleSphereEmitter() override;  // 0x6fdc9c (D1), D0 0x6fdcec

    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6fdd28
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    void setCenter(const core::vector3d<float>& value) override;
    void setRadius(float value) override;
    const core::vector3d<float>& getCenter() const override;
    float getRadius() const override;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    std::vector<SParticle> particles;                // +0x04
    core::vector3d<float> center;                    // +0x10
    float radius = 0.0f;                             // +0x1c
    core::vector3d<float> direction;                 // +0x20
    std::uint32_t minParticlesPerSecond = 0;         // +0x2c
    std::uint32_t maxParticlesPerSecond = 0;         // +0x30
    video::SColor minStartColor;                     // +0x34
    video::SColor maxStartColor;                     // +0x38
    std::uint32_t minLifeTime = 0;                   // +0x3c
    std::uint32_t maxLifeTime = 0;                   // +0x40
    std::uint32_t time = 0;                          // +0x44
    std::uint32_t emitted = 0;                       // +0x48
    std::int32_t maxAngleDegrees = 0;                // +0x4c
};

class CParticleMeshEmitter : public IParticleMeshEmitter {
public:
    // 0x6fb2e4 (C2) / 0x6fb708 (C1). The mesh is held and the vertex count of every mesh buffer is recorded.
    CParticleMeshEmitter(const boost::intrusive_ptr<const IMesh>& mesh, bool useNormalDirection,
                         const core::vector3d<float>& direction, float normalDirectionModifier,
                         std::int32_t meshBufferNumber, bool everyMeshVertex, std::uint32_t minParticlesPerSecond,
                         std::uint32_t maxParticlesPerSecond, video::SColor minStartColor, video::SColor maxStartColor,
                         std::uint32_t lifeTimeMin, std::uint32_t lifeTimeMax, std::int32_t maxAngleDegrees);
    CParticleMeshEmitter(const CParticleMeshEmitter&) = delete;
    CParticleMeshEmitter& operator=(const CParticleMeshEmitter&) = delete;
    ~CParticleMeshEmitter() override;  // 0x6fb0fc (D1), D0 0x6fb184

    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6fb0d4: returns 0
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    // 0x6fb57c: replaces the mesh and recounts the vertices of every mesh buffer.
    void setMesh(const boost::intrusive_ptr<const IMesh>& value) override;
    void setUseNormalDirection(bool value) override;
    void setNormalDirectionModifier(float value) override;
    void setEveryMeshVertex(bool value) override;
    const boost::intrusive_ptr<const IMesh>& getMesh() const override;
    bool isUsingNormalDirection() const override;
    float getNormalDirectionModifier() const override;
    bool getEveryMeshVertex() const override;
    virtual bool getUseNormalDirection() const;
    virtual std::int32_t getMBNumber() const;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    boost::intrusive_ptr<const IMesh> mesh;          // +0x04
    std::uint32_t totalVertexCount = 0;              // +0x08
    std::uint32_t meshBufferCount = 0;               // +0x0c
    std::int32_t meshBufferNumber = 0;               // +0x10
    std::vector<std::int32_t> bufferVertexCounts;    // +0x14 (begin, end, capacity)
    bool everyMeshVertex = false;                    // +0x20
    bool useNormalDirection = false;                 // +0x21
    float normalDirectionModifier = 0.0f;            // +0x24
    std::vector<SParticle> particles;                // +0x28 (upstream Particles; emitt is a stub in the binary, so it stays empty; the destructor frees it)
    core::vector3d<float> direction;                 // +0x34
    std::uint32_t minParticlesPerSecond = 0;         // +0x40
    std::uint32_t maxParticlesPerSecond = 0;         // +0x44
    video::SColor minStartColor;                     // +0x48
    video::SColor maxStartColor;                     // +0x4c
    std::uint32_t minLifeTime = 0;                   // +0x50
    std::uint32_t maxLifeTime = 0;                   // +0x54
    std::uint32_t time = 0;                          // +0x58
    std::uint32_t emitted = 0;                       // +0x5c
    std::int32_t maxAngleDegrees = 0;                // +0x60
};

class CParticleAnimatedMeshSceneNodeEmitter : public IParticleAnimatedMeshSceneNodeEmitter {
public:
    // 0x6f7a94 (C2) / 0x6f7ff0 (C1). Stores the node, then derives the mesh from it as setAnimatedMeshSceneNode does.
    CParticleAnimatedMeshSceneNodeEmitter(IAnimatedMeshSceneNode* node, bool useNormalDirection,
                                          const core::vector3d<float>& direction, float normalDirectionModifier,
                                          std::int32_t meshBufferNumber, bool everyMeshVertex,
                                          std::uint32_t minParticlesPerSecond, std::uint32_t maxParticlesPerSecond,
                                          video::SColor minStartColor, video::SColor maxStartColor,
                                          std::uint32_t lifeTimeMin, std::uint32_t lifeTimeMax,
                                          std::int32_t maxAngleDegrees);
    CParticleAnimatedMeshSceneNodeEmitter(const CParticleAnimatedMeshSceneNodeEmitter&) = delete;
    CParticleAnimatedMeshSceneNodeEmitter& operator=(const CParticleAnimatedMeshSceneNodeEmitter&) = delete;
    ~CParticleAnimatedMeshSceneNodeEmitter() override;  // 0x6f789c (D1), D0 0x6f7934

    int emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) override;  // 0x6f7820: returns 0
    void setDirection(const core::vector3d<float>& value) override;
    void setMinParticlesPerSecond(std::uint32_t value) override;
    void setMaxParticlesPerSecond(std::uint32_t value) override;
    void setMinStartColor(const video::SColor& value) override;
    void setMaxStartColor(const video::SColor& value) override;
    const core::vector3d<float>& getDirection() const override;
    std::uint32_t getMinParticlesPerSecond() const override;
    std::uint32_t getMaxParticlesPerSecond() const override;
    const video::SColor& getMinStartColor() const override;
    const video::SColor& getMaxStartColor() const override;
    // 0x6f7ddc: stores the node and re-derives the mesh and the vertex counts.
    void setAnimatedMeshSceneNode(IAnimatedMeshSceneNode* node) override;
    void setUseNormalDirection(bool value) override;
    void setNormalDirectionModifier(float value) override;
    void setEveryMeshVertex(bool value) override;
    IAnimatedMeshSceneNode* getAnimatedMeshSceneNode() const override;
    bool isUsingNormalDirection() const override;
    float getNormalDirectionModifier() const override;
    bool getEveryMeshVertex() const override;
    virtual bool getUseNormalDirection() const;
    virtual std::int32_t getMBNumber() const;
    virtual std::uint32_t getMinLifeTime() const;
    virtual std::uint32_t getMaxLifeTime() const;
    virtual std::int32_t getMaxAngleDegrees() const;

    IAnimatedMeshSceneNode* node = nullptr;          // +0x04 (not referenced)
    boost::intrusive_ptr<IAnimatedMesh> animatedMesh;  // +0x08
    boost::intrusive_ptr<IMesh> mesh;                // +0x0c
    std::uint32_t totalVertexCount = 0;              // +0x10
    std::uint32_t meshBufferCount = 0;               // +0x14
    std::int32_t meshBufferNumber = 0;               // +0x18
    std::vector<std::int32_t> bufferVertexCounts;    // +0x1c (begin, end, capacity)
    bool everyMeshVertex = false;                    // +0x28
    bool useNormalDirection = false;                 // +0x29
    float normalDirectionModifier = 0.0f;            // +0x2c
    std::vector<SParticle> particles;                // +0x30 (upstream Particles; emitt is a stub in the binary, so it stays empty; the destructor frees it)
    core::vector3d<float> direction;                 // +0x3c
    std::uint32_t minParticlesPerSecond = 0;         // +0x48
    std::uint32_t maxParticlesPerSecond = 0;         // +0x4c
    video::SColor minStartColor;                     // +0x50
    video::SColor maxStartColor;                     // +0x54
    std::uint32_t minLifeTime = 0;                   // +0x58
    std::uint32_t maxLifeTime = 0;                   // +0x5c
    std::uint32_t time = 0;                          // +0x60
    std::uint32_t emitted = 0;                       // +0x64
    std::int32_t maxAngleDegrees = 0;                // +0x68
};

}  // namespace glitch::scene
