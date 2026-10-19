// Dispatch checks for the CColladaDatabase constructors: a recording factory
// stands in for the builders, so each wrapper's slot, argument order, name
// lookup and root attachment is verified.
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-scene-collada-gui/collada_database.hpp"

#include <cstdio>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/collada/CColladaFactory.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"

using namespace glitch::collada;
namespace video = glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Distinct non-null sentinels for pointers the factory hands back.
int tokenA, tokenB;

struct Recorder final : CColladaFactory {
    std::vector<std::string> calls;
    const char* effectName = nullptr;
    const char* fileName = nullptr;
    const void* lastInstance = nullptr;
    std::uint32_t lastFlag = 0;
    std::uint16_t lastShort = 0;

    void* createAnimator(const CColladaDatabase&, SLibraryAnimationClips*) override { calls.push_back("createAnimator"); return nullptr; }
    CLightSceneNode* createLight(const CColladaDatabase&, SLight*) override {
        calls.push_back("createLight");
        return reinterpret_cast<CLightSceneNode*>(&tokenA);
    }
    void getAdditionalEffects(const CColladaDatabase&, SEffect*, SEffectList&) override { calls.push_back("getAdditionalEffects"); }
    std::string getEffectName(const CColladaDatabase&, const char*, const char*) override { calls.push_back("getEffectName"); return std::string(); }
    video::CMaterialRenderer* createMaterialRenderer(const CColladaDatabase&, video::IVideoDriver*, SEffect*, CRootSceneNode*) override {
        calls.push_back("createMaterialRenderer4"); return nullptr;
    }
    video::CMaterialRenderer* createMaterialRenderer(const CColladaDatabase&, video::IVideoDriver*, SEffect*, const char* name,
                                                     const char* file, CRootSceneNode*) override {
        calls.push_back("createMaterialRenderer6");
        effectName = name;
        fileName = file;
        return reinterpret_cast<video::CMaterialRenderer*>(&tokenA);
    }
    video::CMaterial* createMaterial(const CColladaDatabase&, video::IVideoDriver*, SMaterial*, CRootSceneNode*) override { calls.push_back("createMaterial"); return nullptr; }
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> createMaterialVertexAttributeMap(
        const CColladaDatabase&, SInstanceMaterial*, const boost::intrusive_ptr<IMesh>&, const boost::intrusive_ptr<video::CMaterial>&,
        unsigned int, bool) override {
        calls.push_back("createMaterialVertexAttributeMap");
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    SBufferConfig getVertexBufferConfig(const CColladaDatabase&, SGeometry*) override { calls.push_back("getVertexBufferConfig"); return SBufferConfig{0, 0, 0}; }
    SBufferConfig getIndexBufferConfig(const CColladaDatabase&, SGeometry*) override { calls.push_back("getIndexBufferConfig"); return SBufferConfig{0, 0, 0}; }
    bool isSharingMeshBuffers(const CColladaDatabase&, SGeometry*) override { calls.push_back("isSharingMeshBuffers"); return true; }
    IMesh* createGeometry(const CColladaDatabase&, video::IVideoDriver*, SGeometry* geometry) override {
        calls.push_back("createGeometry");
        lastInstance = geometry;
        return reinterpret_cast<IMesh*>(&tokenB);
    }
    CMorphingMesh* createMorph(const CColladaDatabase&, video::IVideoDriver*, SController*, CRootSceneNode*) override {
        calls.push_back("createMorph");
        return reinterpret_cast<CMorphingMesh*>(&tokenA);
    }
    CSceneNode* createNode(const CColladaDatabase&, SNode*) override { calls.push_back("createNode"); return nullptr; }
    void* createBillboard(const CColladaDatabase&, SNode*) override { calls.push_back("createBillboard"); return nullptr; }
    CCameraSceneNode* createCameraNode(const CColladaDatabase&, SCamera*) override {
        calls.push_back("createCameraNode");
        return reinterpret_cast<CCameraSceneNode*>(&tokenB);
    }
    void* createMeshNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>&, void*) override { calls.push_back("createMeshNode"); return nullptr; }
    void* createSkinNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>&, void*) override { calls.push_back("createSkinNode"); return nullptr; }
    void* createModularSkinNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>&, void*) override { calls.push_back("createModularSkinNode"); return nullptr; }
    void* createScene(const CColladaDatabase&) override { calls.push_back("createScene"); return nullptr; }
    CSkinnedMesh* createSkin(const CColladaDatabase&, video::IVideoDriver*, SController*, CRootSceneNode*) override { calls.push_back("createSkin"); return nullptr; }
    CModularSkinnedMesh* createModularSkin(const CColladaDatabase&, SInstanceModularSkin* instance, CRootSceneNode*) override {
        calls.push_back("createModularSkin");
        lastInstance = instance;
        return reinterpret_cast<CModularSkinnedMesh*>(&tokenA);
    }
    CCoronasSceneNode* createCoronas(const CColladaDatabase&, video::IVideoDriver*, SCoronas*, CRootSceneNode*) override { calls.push_back("createCoronas"); return nullptr; }
    CGlitchNewParticleSystemSceneNode* createGlitchNewParticleSystem(const CColladaDatabase&, video::IVideoDriver*, SGNPSEmitter*,
                                                                     glitch::res::vector<glitch::res::String>*, CRootSceneNode*) override {
        calls.push_back("createGlitchNewParticleSystem"); return nullptr;
    }
    CParticleSystemSceneNode* createParticleSystem(const CColladaDatabase&, video::IVideoDriver*, SEmitter*,
                                                   glitch::res::vector<glitch::res::String>*, CRootSceneNode*) override {
        calls.push_back("createParticleSystem"); return nullptr;
    }
    void* createParticleSystemGravityForce(const CColladaDatabase&, SForce*) override { calls.push_back("gravity"); return &tokenA; }
    void* createParticleSystemWindForce(const CColladaDatabase&, SForce*) override { calls.push_back("wind"); return &tokenB; }
    void* createParticleSystemDeflectorForce(const CColladaDatabase&, SForce*) override { calls.push_back("deflector"); return &tokenA; }
    glitch::scene::CLightSceneNode* getExternalLightSceneNode(const CColladaDatabase&, const boost::intrusive_ptr<video::CMaterial const>&,
                                                              std::uint16_t a, std::uint32_t b, const char*) override {
        calls.push_back("externalLight-material");
        lastShort = a;
        lastFlag = b;
        return nullptr;
    }
    glitch::scene::CLightSceneNode* getExternalLightSceneNode(const CColladaDatabase&,
                                                              const boost::intrusive_ptr<video::CMaterialRenderer const>&,
                                                              std::uint16_t a, std::uint32_t b, const char*) override {
        calls.push_back("externalLight-renderer");
        lastShort = a;
        lastFlag = b;
        return nullptr;
    }
};

std::string joined(const std::vector<std::string>& calls) {
    std::string out;
    for (const auto& c : calls) out += c + ";";
    return out;
}

}  // namespace

int main() {
    // Tables: one entry of each kind the constructors reach.
    SEffect effect{"fx"};
    SGeometry geometry{"geo", 0, 0, 0};
    SGeometry hiddenGeometry{"hidden", 0, 1, 0};
    SForce gravity{"g", 0, 0, 0};
    SForce wind{"w", 0, 1, 0};
    SForce deflector{"d", 0, 2, 0};
    SForce unknownKind{"u", 0, 7, 0};
    SCamera camera{"cam"};
    SLight light{"lt"};
    SInstanceForce gustInstance{0, "#w"};
    SInstanceModularSkin modular{};

    SDatabaseTables tables;
    tables.effects = {&effect};
    tables.geometries = {&geometry, &hiddenGeometry};
    tables.forces = {&gravity, &wind, &deflector, &unknownKind};
    tables.cameras = {&camera};
    tables.lights = {&light};

    SColladaFileData fileData;
    fileData.tables = &tables;
    CResFile record;
    record.fileName = "scene.dae";
    record.data = &fileData;

    Recorder factory;
    CColladaDatabase db;
    db.record = &record;
    db.factory = &factory;

    CRootSceneNode root(db);
    video::IVideoDriver* driver = reinterpret_cast<video::IVideoDriver*>(&tokenB);

    // Material-based and renderer-based external light lookups forward with
    // their own slot and the same argument order.
    db.getExternalLightSceneNode(boost::intrusive_ptr<video::CMaterial const>(), 3, 9, "lamp");
    CHECK(factory.calls.back() == "externalLight-material");
    CHECK(factory.lastShort == 3 && factory.lastFlag == 9);
    db.getExternalLightSceneNode(boost::intrusive_ptr<video::CMaterialRenderer const>(), 4, 5, "lamp");
    CHECK(factory.calls.back() == "externalLight-renderer");
    CHECK(factory.lastShort == 4 && factory.lastFlag == 5);

    // constructEffect: the effect name and the database file name go to the 6-argument builder.
    factory.calls.clear();
    auto* renderer = db.constructEffect(driver, &effect, &root);
    CHECK(renderer == reinterpret_cast<video::CMaterialRenderer*>(&tokenA));
    CHECK(joined(factory.calls) == "createMaterialRenderer6;");
    CHECK(std::string(factory.effectName) == "fx");
    CHECK(std::string(factory.fileName) == "scene.dae");

    // A null effect gets an empty name, not a null pointer.
    factory.calls.clear();
    db.constructEffect(driver, static_cast<SEffect*>(nullptr), &root);
    CHECK(std::string(factory.effectName) == "");

    // Index and name overloads resolve through the holder tables.
    factory.calls.clear();
    db.constructEffect(driver, 0, &root);
    CHECK(factory.effectName != nullptr && std::string(factory.effectName) == "fx");
    factory.calls.clear();
    db.constructEffect(driver, "fx", &root);
    CHECK(std::string(factory.effectName) == "fx");

    // Geometry: a flagged geometry is skipped; others reach createGeometry.
    factory.calls.clear();
    CHECK(db.constructGeometry(driver, &hiddenGeometry) == nullptr);
    CHECK(factory.calls.empty());
    CHECK(db.constructGeometry(driver, &geometry) == reinterpret_cast<IMesh*>(&tokenB));
    CHECK(joined(factory.calls) == "createGeometry;");
    CHECK(factory.lastInstance == &geometry);
    CHECK(db.constructGeometry(driver, 1) == nullptr);       // hidden entry by index
    CHECK(db.constructGeometry(driver, "geo") != nullptr);   // by name

    // Forces: kind 0 gravity, 1 wind, 2 deflector; other kinds build nothing.
    factory.calls.clear();
    CHECK(db.constructForce(&gravity, &root) == &tokenA);
    CHECK(db.constructForce(&wind, &root) == &tokenB);
    CHECK(db.constructForce(&deflector, &root) == &tokenA);
    CHECK(db.constructForce(&unknownKind, &root) == nullptr);
    CHECK(db.constructForce(static_cast<SForce*>(nullptr), &root) == nullptr);
    CHECK(joined(factory.calls) == "gravity;wind;deflector;");

    // Instance force "#w": the leading '#' is skipped before the name lookup.
    factory.calls.clear();
    db.constructForce(&gustInstance, &root);
    CHECK(joined(factory.calls) == "wind;");

    // Morph meshes are attached to the root's morphing list.
    factory.calls.clear();
    CHECK(db.constructMorph(driver, nullptr, &root) == reinterpret_cast<CMorphingMesh*>(&tokenA));
    CHECK(joined(factory.calls) == "createMorph;");
    CHECK(root.morphingMeshes.size() == 1);

    // Cameras and lights: null in, nothing made; otherwise built and attached.
    factory.calls.clear();
    CHECK(db.constructCamera(static_cast<SCamera*>(nullptr), &root) == nullptr);
    CHECK(factory.calls.empty());
    CHECK(db.constructCamera(&camera, &root) == reinterpret_cast<CCameraSceneNode*>(&tokenB));
    CHECK(root.cameras.size() == 1);
    CHECK(db.constructCamera(0, &root) != nullptr);
    CHECK(root.cameras.size() == 2);
    CHECK(db.constructCamera("cam", &root) != nullptr);
    CHECK(root.cameras.size() == 3);

    CHECK(db.constructLight(static_cast<SLight*>(nullptr), &root) == nullptr);
    CHECK(db.constructLight(&light, &root) == reinterpret_cast<CLightSceneNode*>(&tokenA));
    CHECK(root.lights.size() == 1);
    CHECK(db.constructLight("lt", &root) != nullptr);
    CHECK(root.lights.size() == 2);

    // Modular skin passes its instance record straight to the factory.
    factory.calls.clear();
    CHECK(db.constructModularSkin(&modular, &root) == reinterpret_cast<CModularSkinnedMesh*>(&tokenA));
    CHECK(factory.lastInstance == &modular);

    std::printf("%s\n", failures ? "collada_database_create: FAILED" : "collada_database_create: ok");
    return failures != 0;
}
