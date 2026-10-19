// The .bdae loader on real files: glitch::collada::CResFile (0x658048) fixes the 32-bit image up in a 32-bit address space and decodes it into
// host-width records (collada/BdaeDecode), and CResFileManager::postLoadProcess (0x658c90) turns the file's indices into records. The sample files
// of the Android port (port/android-native/.../assets, about 4,700 .bdae files) are read twice: through the memory path (the reader holds the
// whole file) and through the reader path (the header, the pointer table, the local block and the range blocks are read separately). The expected
// values come from a plain parse of the raw file words at their documented offsets, independent of the loader. Exit status is non-zero when a
// check fails; the test is skipped (exit 0) when the sample files are not there.
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iterator>
#include <string>
#include <vector>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/BdaeDecode.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-scene-collada-gui/collada/CColladaMaterial.hpp"
#include "glitch-scene-collada-gui/collada/SEffectList.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/null_shader_manager.hpp"
#include "glitch-video/tb/glitch_res_AddressSpace.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"
#include "glitch-video/texture.hpp"

#if __has_include(<filesystem>)
#include <filesystem>
#endif

using namespace glitch;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// ---- the plain parse of the raw file words ----------------------------------------------------------------------------------------------------
struct Raw {
    std::vector<unsigned char> bytes;
    std::uint32_t u32(std::uint32_t offset) const {
        std::uint32_t value = 0;
        if (offset + 4 <= bytes.size()) std::memcpy(&value, bytes.data() + offset, 4);
        return value;
    }
    float f32(std::uint32_t offset) const {
        float value = 0;
        std::memcpy(&value, bytes.data() + offset, 4);
        return value;
    }
    const char* text(std::uint32_t offset) const { return reinterpret_cast<const char*>(bytes.data() + offset); }
    std::uint32_t tables() const { return u32(0x20); }
    std::uint32_t count(std::uint32_t slot) const { return u32(tables() + slot); }
    std::uint32_t base(std::uint32_t slot) const { return u32(tables() + slot); }
};

bool readFile(const std::string& path, Raw& raw) {
    std::ifstream in(path, std::ios::binary);
    if (!in) return false;
    raw.bytes.assign(std::istreambuf_iterator<char>(in), std::istreambuf_iterator<char>());
    return raw.bytes.size() > 0x3c && std::memcmp(raw.bytes.data(), "BRES", 4) == 0;
}

// ---- a file system that knows only the calls the manager makes -----------------------------------------------------------------------------
class FakeFileSystem : public io::IFileSystem {
public:
    io::IReadFile* createAndOpenFile(const char*) override { return nullptr; }
    io::IReadFile* createMemoryReadFile(void*, int, const char*, bool) override { return nullptr; }
    io::IWriteFile* createAndWriteFile(const char*, bool) override { return nullptr; }
    bool addZipFileArchive(const char*, bool, bool) override { return false; }
    bool addFolderFileArchive(const char*, bool, bool) override { return true; }
    bool addPakFileArchive(const char*, bool, bool) override { return false; }
    bool addObfuscationFileMap(const char*, unsigned char, glitch::core::stringc) override { return false; }
    bool removeFileArchive(const char*) override { return true; }
    const char* getWorkingDirectory() override { return ""; }
    bool changeWorkingDirectoryTo(const char*) override { return false; }
    glitch::core::stringc getAbsolutePath(const glitch::core::stringc& path) const override { return path; }
    glitch::core::stringc getFileDir(const glitch::core::stringc& path) const override {
        const std::size_t slash = path.find_last_of("/\\");
        return slash == std::string::npos ? glitch::core::stringc() : path.substr(0, slash);
    }
    glitch::core::stringc getFileBasename(const glitch::core::stringc& path, bool) const override { return path; }
    io::IFileList* createFileList() const override { return nullptr; }
    bool existFile(const char*) const override { return false; }
    bool existFile(const glitch::core::stringc&) const override { return false; }
    io::IXMLReader* createXMLReader(const char*) override { return nullptr; }
    io::IXMLReader* createXMLReader(io::IReadFile*) override { return nullptr; }
    io::IXMLReaderUTF8* createXMLReaderUTF8(const char*) override { return nullptr; }
    io::IXMLReaderUTF8* createXMLReaderUTF8(io::IReadFile*) override { return nullptr; }
    io::IXMLWriter* createXMLWriter(const char*) override { return nullptr; }
    io::IXMLWriter* createXMLWriter(io::IWriteFile*) override { return nullptr; }
    io::IAttributes* createEmptyAttributes(video::IVideoDriver*) override { return nullptr; }
    void clear() override {}
};

// The factory asked for the textures of the images: records the images, makes no texture.
class RecordingFactory : public collada::CResFactory {
public:
    std::vector<std::string> names;
    boost::intrusive_ptr<video::ITexture> getTexture(collada::CResFile*, const glitch::core::stringc&, io::IReadFile*, video::CTextureManager*,
                                                     collada::SImage* image) override {
        names.push_back(image->path != nullptr ? image->path : "");
        return boost::intrusive_ptr<video::ITexture>();
    }
};

// ---- the checks that hold for every file ---------------------------------------------------------------------------------------------------
// The counts of the tables, and the names of the first and the last record of every named table, against the raw words.
int checkTables(const Raw& raw, const collada::SDatabaseTables& t) {
    int bad = 0;
    auto sized = [&](std::uint32_t slot, std::size_t size) { bad += raw.count(slot) != size; };
    sized(0x24, t.animations.size());
    sized(0x3c, t.cameras.size());
    sized(0x44, t.lights.size());
    sized(0x4c, t.images.size());
    sized(0x54, t.effects.size());
    sized(0x5c, t.materials.size());
    sized(0x68, t.geometries.size());
    sized(0x70, t.controllers.size());
    sized(0x78, t.emitters.size());
    sized(0x80, t.gnpsEmitters.size());
    sized(0x88, t.forces.size());
    sized(0x90, t.coronas.size());
    sized(0x98, t.visualScenes.size());
    sized(0xb8, t.scene.size());
    sized(0x34, static_cast<std::size_t>(t.animationClipLibrary.count));
    bad += raw.count(0x64) != static_cast<std::uint32_t>(t.skinCount);
    bad += std::strcmp(raw.text(raw.u32(raw.tables())), t.versionText) != 0 || t.version != 777;
    auto named = [&](std::uint32_t slot, std::uint32_t stride, std::uint32_t nameWord, const std::vector<const char*>& names) {
        for (std::size_t i = 0; i < names.size(); ++i) {
            const std::uint32_t at = raw.base(slot + 4) + stride * static_cast<std::uint32_t>(i) + nameWord;
            bad += names[i] == nullptr || std::strcmp(names[i], raw.text(raw.u32(at))) != 0;
        }
    };
    std::vector<const char*> names;
    for (auto* r : t.animations) names.push_back(r->name);
    named(0x24, 0x20, 0, names);
    names.clear();
    for (auto* r : t.images) names.push_back(r->name);
    named(0x4c, 0x14, 0, names);
    names.clear();
    for (auto* r : t.effects) names.push_back(r->name);
    named(0x54, 0x74, 0, names);
    names.clear();
    for (auto* r : t.materials) names.push_back(r->name);
    named(0x5c, 0x24, 0, names);
    names.clear();
    for (auto* r : t.geometries) names.push_back(r->name);
    named(0x68, 0x10, 0, names);
    names.clear();
    for (auto* r : t.controllers) names.push_back(r->name);
    named(0x70, 0x0c, 4, names);
    names.clear();
    for (auto* r : t.visualScenes) names.push_back(r->name);
    named(0x98, 0x10, 0, names);
    names.clear();
    for (auto* r : t.emitters) names.push_back(r->name);
    named(0x78, 0x90, 0, names);
    return bad;
}

// A number that stands for the decoded content of a file, to compare the two load paths with.
std::uint64_t signature(const collada::SDatabaseTables& t) {
    std::uint64_t h = 1469598103934665603ull;
    auto mix = [&](std::uint64_t v) { h = (h ^ v) * 1099511628211ull; };
    auto mixText = [&](const char* s) {
        if (s == nullptr) { mix(0xdead); return; }
        for (; *s; ++s) mix(static_cast<unsigned char>(*s));
        mix(0xff);
    };
    for (auto* a : t.animations) { mixText(a->name); mix(static_cast<std::uint64_t>(a->channelCount)); for (int i = 0; i < a->channelCount; ++i) mixText(a->channels[i].name); }
    for (auto* e : t.effects) {
        mixText(e->name);
        for (int s = 0; s < 4; ++s) { mix(static_cast<std::uint64_t>(e->paramCount[s])); for (int p = 0; p < e->paramCount[s]; ++p) mixText(e->params[s][p].name); }
        for (int k = 0; k < e->techniqueCount[1]; ++k) { mixText(e->gles2Techniques[k].name); for (int p = 0; p < e->gles2Techniques[k].passCount; ++p) { mixText(e->gles2Techniques[k].passes[p].states.vertexFile); mix(static_cast<std::uint64_t>(e->gles2Techniques[k].passes[p].bindingCount)); } }
        for (int k = 0; k < e->techniqueCount[0]; ++k) { mixText(e->nullTechniques[k].name); for (int p = 0; p < e->nullTechniques[k].passCount; ++p) mix(static_cast<std::uint64_t>(e->nullTechniques[k].passes[p].bindingCount)); }
    }
    for (auto* g : t.geometries) {
        mixText(g->name);
        if (g->mesh) { mix(static_cast<std::uint64_t>(g->mesh->count)); mix(static_cast<std::uint64_t>(g->mesh->bufferCount)); for (int b = 0; b < g->mesh->bufferCount; ++b) mix(static_cast<std::uint64_t>(g->mesh->buffers[b].indexCount)); }
    }
    for (auto* v : t.visualScenes) { mixText(v->name); mix(v->nodeCount); }
    for (auto* i : t.images) mixText(i->path);
    return h;
}

struct Loaded {
    collada::CResFile* record = nullptr;
    std::vector<unsigned char> memory;  // the file, kept alive for the memory path
    io::CMemoryReadFile* file = nullptr;
};

void load(const Raw& raw, const std::string& name, bool memoryPath, Loaded& out) {
    out.memory = raw.bytes;
    out.file = new io::CMemoryReadFile(out.memory.data(), static_cast<long>(out.memory.size()), name.c_str(), false);
    out.record = new collada::CResFile(name.c_str(), out.file, memoryPath);
}

void release(Loaded& loaded) {
    loaded.record->drop();
    loaded.file->drop();
    loaded.record = nullptr;
    loaded.file = nullptr;
}

// The sample file whose name (after the last separator) is `name`.
std::string pick(const std::vector<std::string>& files, const std::string& name) {
    for (const std::string& f : files) {
        const std::size_t slash = f.find_last_of("/\\");
        if (f.compare(slash == std::string::npos ? 0 : slash + 1, std::string::npos, name) == 0) return f;
    }
    return std::string();
}

#ifdef __cpp_lib_filesystem
std::string findAssets() {
    namespace fs = std::filesystem;
    std::error_code ec;
    fs::path here = fs::absolute(fs::path(__FILE__), ec);
    for (fs::path p = here; !p.empty() && p.has_parent_path() && p != p.parent_path(); p = p.parent_path()) {
        const fs::path candidate = p / "android-native" / "app" / "src" / "main" / "assets";
        if (fs::is_directory(candidate, ec)) return candidate.string();
    }
    return std::string();
}

std::vector<std::string> listBdae(const std::string& root) {
    namespace fs = std::filesystem;
    std::vector<std::string> files;
    std::error_code ec;
    for (fs::recursive_directory_iterator it(root, fs::directory_options::skip_permission_denied, ec), end; !ec && it != end; it.increment(ec)) {
        if (it->is_regular_file(ec) && it->path().extension() == ".bdae") files.push_back(it->path().string());
    }
    return files;
}
#endif

}  // namespace

int main() {
    std::setvbuf(stdout, nullptr, _IONBF, 0);
#ifndef __cpp_lib_filesystem
    std::printf("bdae_loader_test: skipped (no <filesystem>)\n");
    return 0;
#else
    const std::string assets = findAssets();
    if (assets.empty()) {
        std::printf("bdae_loader_test: skipped (the sample files are not there)\n");
        return 0;
    }
    std::vector<std::string> files = listBdae(assets);
    if (files.empty()) {
        std::printf("bdae_loader_test: skipped (no .bdae files)\n");
        return 0;
    }

    // ---- a mesh: assassin.bdae -------------------------------------------------------------------------------------------------------------
    {
        Raw raw;
        const std::string path = pick(files, "assassin.bdae");
        CHECK(!path.empty() && readFile(path, raw));
        for (int pathKind = 0; pathKind < 2; ++pathKind) {
            Loaded loaded;
            load(raw, path, pathKind == 0, loaded);
            collada::CResFile& record = *loaded.record;
            CHECK(record.data != nullptr && record.data->tables != nullptr);
            if (record.data == nullptr) { release(loaded); continue; }
            const collada::SDatabaseTables& t = *record.data->tables;
            CHECK(checkTables(raw, t) == 0);
            // The header words.
            CHECK(record.data->headerSize == 0x3c && record.data->offsetEntries == 0x627 && record.data->externalFlags == 0);
            CHECK(record.keepSourceName == 0);  // no on-demand tail
            // The 18 range blocks: in the reader path they are blocks of their own (one shared block, the flag clear); in the memory path they
            // are in the reader's buffer.
            CHECK(record.arrayCount_0x38 == 0x12 && (record.array_0x44 != nullptr) == (pathKind == 1) && record.flag_0x48 == 0);
            // The counts and names.
            CHECK(std::strcmp(t.versionText, "0,0,0,777") == 0 && t.upAxis == 2 && t.skinCount == 0);
            CHECK(t.images.size() == 6 && t.effects.size() == 6 && t.materials.size() == 8 && t.geometries.size() == 7 && t.controllers.size() == 2 &&
                  t.visualScenes.size() == 1 && t.scene.size() == 1 && t.animations.empty());
            CHECK(std::strcmp(t.geometries[0]->name, "MC_LWeapon_Claw_nobatch-mesh") == 0);
            CHECK(std::strcmp(t.controllers[0]->name, "_mesh_shadow-mesh-skin") == 0 && t.controllers[0]->reserved == 0);
            CHECK(t.scene[0].kind == collada::EIK_VISUAL_SCENE && t.scene[0].instance != nullptr);
            // The mesh: an interleaved vertex buffer of 0x58 vertices, 0x24 bytes each, four streams, one buffer of 0x123 indices.
            const collada::SMesh& mesh = *t.geometries[0]->mesh;
            CHECK(mesh.interleaved == 1 && mesh.count == 0x58 && mesh.bufferCount == 1);
            CHECK(mesh.interleavedData != nullptr && mesh.interleavedData->stride == 0x24 && mesh.interleavedData->data != nullptr &&
                  mesh.interleavedData->dataBlock == nullptr);
            CHECK(mesh.interleavedData->offsets[0] == raw.u32(raw.u32(raw.u32(raw.u32(raw.base(0x6c) + 12) + 8) + 8)) &&
                  mesh.interleavedData->offsets[1] == raw.u32(raw.u32(raw.u32(raw.u32(raw.base(0x6c) + 12) + 8) + 8) + 4));
            const collada::SMeshBuffer& buffer = mesh.buffers[0];
            CHECK(buffer.positionStream == 0 && buffer.normalStream == 1 && buffer.colorStream[0] == 2 && buffer.colorStream[1] == -1 &&
                  buffer.texCoordStreams[0] == 3 && buffer.texCoordStreams[1] == -1);
            CHECK(buffer.lastVertex == 0x57 && buffer.indexCount == 0x123 && buffer.indexData != nullptr);
            CHECK(mesh.boundingBox[0] == raw.f32(raw.u32(raw.base(0x6c) + 12) + 0x14) && mesh.boundingBox[3] > mesh.boundingBox[0]);
            // The vertex bytes are the file's own: the first index word of the buffer reads the same in the image and in the raw file.
            CHECK(std::memcmp(buffer.indexData, raw.bytes.data() + raw.u32(raw.u32(raw.u32(raw.base(0x6c) + 12) + 0x10) + 0x2c), 8) == 0);
            // A skin controller: the bind matrices, the joint ids and the boxes.
            const collada::SSkin& skin = *static_cast<const collada::SSkin*>(t.controllers[0]->morph);
            CHECK(skin.jointCount == 1 && std::strcmp(skin.jointScopeIds[0], "Bone20") == 0 && std::strcmp(skin.sourceUrl, "#_mesh_shadow-mesh") == 0);
            CHECK(skin.bindShapeMatrix[0] == 1.0f && skin.bindShapeMatrix[5] == 1.0f && skin.weightsPerVertex == 1 && skin.boxCount == 1);
            // An effect with its techniques of both profiles.
            const collada::SEffect& effect = *t.effects[0];
            CHECK(std::strcmp(effect.name, "ProfileCOMMON_Atlas-Weapons_dh2_rimlight-fx1302961562_assassin") == 0 &&
                  std::strcmp(effect.displayName, "ProfileCOMMON_Atlas-Weapons_dh2_rimlight") == 0);
            CHECK(effect.techniqueCount[0] == 4 && effect.techniqueCount[1] == 4 && effect.techniqueCount[2] == 0 && effect.paramCount[0] == 8 &&
                  effect.paramCount[1] == 10);
            CHECK(std::strcmp(effect.gles2Techniques[0].name, "default") == 0 && effect.gles2Techniques[0].passCount == 1);
            const auto& pass = effect.gles2Techniques[0].passes[0];
            CHECK(std::strcmp(pass.states.vertexFile, "ProfileCOMMON_emul_VS.glsl") == 0 && std::strcmp(pass.states.fragmentFile, "ProfileCOMMON_emul_FS.glsl") == 0 &&
                  std::strcmp(pass.states.vertexEntry, "main") == 0);
            CHECK(pass.bindingCount == 5 && std::strcmp(pass.bindings[0].name, "DiffuseColor") == 0 && pass.bindings[0].index == 1 && pass.bindings[0].global == 0 &&
                  std::strcmp(pass.bindings[2].name, "Sampler0") == 0 && pass.bindings[2].index == 6);
            CHECK(pass.states.renderState.m_word00 == 0xff000101u && pass.states.renderState.m_word04 == 0xffff00ffu);
            const auto& nullPass = effect.nullTechniques[0].passes[0];
            CHECK(nullPass.bindingCount == 5 && nullPass.bindings[0].symbol == 6 && nullPass.bindings[0].index == 4 && nullPass.bindings[3].symbol == 2 &&
                  nullPass.bindings[3].index == 2 && nullPass.states.renderState.m_word00 == 0xff000101u);
            // The new-params: a texture parameter keeps its cell with the image index.
            bool sampler = false;
            for (int p = 0; p < effect.paramCount[1]; ++p) {
                const collada::SNewParam& param = effect.params[1][p];
                if (param.type >= collada::SParam::ET_SAMPLER2D && param.type <= collada::SParam::ET_SAMPLERRECT) {
                    sampler = param.values != nullptr && static_cast<collada::SParamSampler* const*>(param.values)[0] != nullptr;
                }
            }
            CHECK(sampler);
            // A node tree with instances.
            const collada::SNode& root = t.visualScenes[0]->nodes[0];
            CHECK(t.visualScenes[0]->nodeCount >= 1 && root.id != nullptr && std::strcmp(root.id, raw.text(raw.u32(raw.u32(raw.base(0x9c) + 12)))) == 0);
            release(loaded);
        }
    }

    // ---- an animation: assassindemon_attack_01.bdae --------------------------------------------------------------------------------------------
    {
        Raw raw;
        const std::string path = pick(files, "assassindemon_attack_01.bdae");
        CHECK(!path.empty() && readFile(path, raw));
        for (int pathKind = 0; pathKind < 2; ++pathKind) {
            Loaded loaded;
            load(raw, path, pathKind == 0, loaded);
            collada::CResFile& record = *loaded.record;
            CHECK(record.data != nullptr);
            if (record.data == nullptr) { release(loaded); continue; }
            const collada::SDatabaseTables& t = *record.data->tables;
            CHECK(checkTables(raw, t) == 0);
            CHECK(record.keepSourceName == 0x1ae8 && record.arrayCount_0x38 == 2);
            CHECK(t.animations.size() == 24 && t.segments.size() == 1 && t.animationClipLibrary.count == 1);
            CHECK(std::strcmp(t.animations[0]->name, "Bip01-node-rotation") == 0 && std::strcmp(t.animations[23]->name, "root_camera-node-translation") == 0);
            CHECK(t.animations[0]->channelCount == 1 && t.animations[0]->channels[0].name != nullptr && t.animations[0]->keyframes != nullptr);
            CHECK(t.segments[0].begin == 0x85 && t.segments[0].end == 0x4f2 && t.segments[0].data.offset == 0x86d4 && t.segments[0].data.size == 0x1ae8 &&
                  t.segments[0].data.data == nullptr);
            CHECK(t.animationRange.start == 0x85 && t.animationRange.end == 0x4f2);
            CHECK(t.images.size() == 1 && t.effects.size() == 3 && t.materials.size() == 3 && t.geometries.empty() && t.eventKeyTable != nullptr);
            CHECK(t.eventKeyTable->keyCount >= 0 && t.eventKeyTable->entryCount == raw.u32(raw.u32(raw.tables() + 0x2c) + 0x10));
            for (int e = 0; e < t.eventKeyTable->entryCount; ++e) {
                for (int n = 0; n < t.eventKeyTable->entries[e].nameCount; ++n) CHECK(t.eventKeyTable->entries[e].names[n] != nullptr);
            }
            release(loaded);
        }
    }

    // ---- both load paths over many files -------------------------------------------------------------------------------------------------------
    // Every file loads through the memory path with the tables of the raw words; every tenth also through the reader path, with the same
    // content. The loads leave no block behind in the address space.
    std::size_t loadedCount = 0;
    std::size_t withEmitters = 0, withLights = 0, withCameras = 0, withForces = 0, withEvents = 0, withSkins = 0;
    for (std::size_t i = 0; i < files.size(); ++i) {
        Raw raw;
        if (!readFile(files[i], raw)) continue;
        Loaded a;
        load(raw, files[i], true, a);
        if (a.record->data == nullptr) {
            // Say why: decode the image again and print the reason.
            std::vector<unsigned char> again = raw.bytes;
            res::File loader;
            std::string reason = "the image did not load";
            if (loader.Init(again.data()) == 0) {
                collada::SColladaFileData* unused = nullptr;
                decodeBdae(loader.header, unused, &reason);
            }
            res::AddressSpace32::unmap(again.data());
            std::printf("FAIL: no records for %s (%s)\n", files[i].c_str(), reason.c_str());
            ++failures;
            release(a);
            continue;
        }
        const collada::SDatabaseTables& t = *a.record->data->tables;
        const int bad = checkTables(raw, t);
        if (bad != 0) {
            std::printf("FAIL: %d table mismatches in %s\n", bad, files[i].c_str());
            ++failures;
        }
        ++loadedCount;
        withEmitters += !t.emitters.empty();
        withLights += !t.lights.empty();
        withCameras += !t.cameras.empty();
        withForces += !t.forces.empty();
        withEvents += t.eventKeyTable != nullptr;
        withSkins += t.skinCount > 0;
        if (i % 10 == 0) {
            Loaded b;
            load(raw, files[i], false, b);
            if (b.record->data == nullptr) {
                std::printf("FAIL: the reader path gave no records for %s\n", files[i].c_str());
                ++failures;
            } else if (signature(*b.record->data->tables) != signature(t)) {
                std::printf("FAIL: the two load paths differ for %s\n", files[i].c_str());
                ++failures;
            }
            release(b);
        }
        release(a);
    }
    CHECK(loadedCount >= files.size() - 20 && loadedCount > 100);
    CHECK(withEmitters > 0 && withLights > 0 && withCameras > 0 && withForces > 0 && withEvents > 0 && withSkins > 0);
    std::printf("bdae_loader_test: %zu files loaded (%zu with emitters, %zu lights, %zu cameras, %zu forces, %zu events, %zu on-demand skins)\n", loadedCount,
                withEmitters, withLights, withCameras, withForces, withEvents, withSkins);

    // ---- the manager: get() loads, post-processes and finds the record again ---------------------------------------------------------------------
    {
        SCreationParameters parameters;
        std::memset(parameters.bytes, 0, sizeof(parameters.bytes));
        IDevice device(parameters);
        FakeFileSystem fileSystem;
        device.fileSystem = &fileSystem;
        video::CNullDriver driver(static_cast<IDevice*>(nullptr));
        device.videoDriver = &driver;
        struct DeviceDetach { IDevice& d; ~DeviceDetach() { d.fileSystem = nullptr; d.videoDriver = nullptr; } } detach{device};  // ~IDevice drops both; they are stack objects here
        device.referenceCounter = 100;
        RecordingFactory factory;
        {
            collada::CResFileManager manager(&device);
            manager.resFactory = &factory;
            Raw raw;
            const std::string path = pick(files, "assassin.bdae");
            CHECK(!path.empty() && readFile(path, raw));
            std::vector<unsigned char> memory = raw.bytes;
            io::CMemoryReadFile file(memory.data(), static_cast<long>(memory.size()), path.c_str(), false);
            collada::CResFile* record = manager.get(&file, true, true);
            CHECK(record != nullptr && manager.files.size() == 1);
            if (record != nullptr) {
                const collada::SDatabaseTables& t = *record->data->tables;
                CHECK(t.externalResourcesDone == 1 && t.sourceName == nullptr);
                // The textures of the 6 images were asked for (the non-external ones), by path.
                CHECK(factory.names.size() == 6);
                // Every material has its effect: the index became the record.
                // A material whose effect is in another file (index -1) gets none here: that file is not found.
                bool allEffects = true;
                int outside = 0;
                for (const collada::SMaterial* material : t.materials) {
                    if (material->effectIndex == -1) {
                        ++outside;
                        allEffects = allEffects && material->effect == nullptr;
                    } else {
                        allEffects = allEffects && material->effect == t.effects[static_cast<std::size_t>(material->effectIndex)];
                    }
                }
                CHECK(allEffects && outside < static_cast<int>(t.materials.size()));
                // The sampler cells of the materials and the effects point at the images the indices name.
                int cells = 0, resolved = 0;
                for (const collada::SMaterial* material : t.materials) {
                    for (int p = 0; p < material->paramCount; ++p) {
                        const collada::SParam& param = material->params[p];
                        if (param.type >= collada::SParam::ET_SAMPLER2D && param.type <= collada::SParam::ET_SAMPLERRECT) {
                            const collada::SParamSampler* cell = static_cast<collada::SParamSampler* const*>(param.values)[0];
                            ++cells;
                            resolved += cell->index == -1 ? cell->image == nullptr : cell->image == t.images[static_cast<std::size_t>(cell->index)];
                        }
                    }
                }
                CHECK(cells > 0 && cells == resolved);
                CHECK(manager.get(&file, true, true) == record);  // found again by name, not loaded twice
            }
        }
    }

    // ---- postLoadProcess over every file whose materials all have their effect in the file ---------------------------------------------------
    // (A material that names an effect of another file makes the manager look for that file, which this fake file system does not have.)
    {
        SCreationParameters parameters;
        std::memset(parameters.bytes, 0, sizeof(parameters.bytes));
        IDevice device(parameters);
        FakeFileSystem fileSystem;
        device.fileSystem = &fileSystem;
        video::CNullDriver driver(static_cast<IDevice*>(nullptr));
        device.videoDriver = &driver;
        struct DeviceDetach { IDevice& d; ~DeviceDetach() { d.fileSystem = nullptr; d.videoDriver = nullptr; } } detach{device};  // ~IDevice drops both; they are stack objects here
        device.referenceCounter = 100;
        RecordingFactory factory;
        collada::CResFileManager manager(&device);
        manager.resFactory = &factory;
        std::size_t processed = 0, badRecords = 0, cellsChecked = 0;
        for (const std::string& path : files) {
            Raw raw;
            if (!readFile(path, raw)) continue;
            bool outside = false;
            for (std::uint32_t i = 0; i < raw.count(0x5c); ++i) outside = outside || raw.u32(raw.base(0x60) + 0x24 * i + 0x18) == 0xFFFFFFFFu;
            if (outside) continue;
            std::vector<unsigned char> memory = raw.bytes;
            io::CMemoryReadFile file(memory.data(), static_cast<long>(memory.size()), path.c_str(), false);
            collada::CResFile* record = manager.get(&file, true, true);
            if (record == nullptr) {
                std::printf("FAIL: get() gave nothing for %s\n", path.c_str());
                ++failures;
                continue;
            }
            ++processed;
            const collada::SDatabaseTables& t = *record->data->tables;
            bool ok = t.externalResourcesDone == 1;
            auto cellOk = [&](std::int32_t type, const void* values) {
                if (type < collada::SParam::ET_SAMPLER2D || type > collada::SParam::ET_SAMPLERRECT) return true;
                const collada::SParamSampler* cell = static_cast<collada::SParamSampler* const*>(values)[0];
                ++cellsChecked;
                return cell->index == -1 ? cell->image == nullptr
                                         : cell->index >= 0 && cell->index < static_cast<std::int32_t>(t.images.size()) && cell->image == t.images[static_cast<std::size_t>(cell->index)];
            };
            for (const collada::SMaterial* material : t.materials) {
                ok = ok && material->effect == t.effects[static_cast<std::size_t>(material->effectIndex)];
                for (int p = 0; p < material->paramCount; ++p) ok = ok && cellOk(material->params[p].type, material->params[p].values);
            }
            for (const collada::SEffect* effect : t.effects)
                for (int list = 0; list < 4; ++list)
                    for (int p = 0; p < effect->paramCount[list]; ++p) ok = ok && cellOk(effect->params[list][p].type, effect->params[list][p].values);
            for (const collada::SAnimation* animation : t.animations) ok = ok && animation->channelCount >= 0;
            if (!ok) {
                std::printf("FAIL: the records of %s are not post-processed\n", path.c_str());
                ++badRecords;
            }
            manager.unload(path.c_str(), true);
        }
        failures += static_cast<int>(badRecords);
        CHECK(processed > files.size() / 2 && cellsChecked > 0);
        std::printf("bdae_loader_test: %zu files post-processed, %zu sampler cells checked\n", processed, cellsChecked);
    }

    // ---- an effect of a real file becomes a material renderer (the fixed-function profile, 0x6357a0) ------------------------------------------
    {
        SCreationParameters parameters;
        std::memset(parameters.bytes, 0, sizeof(parameters.bytes));
        video::CNullDriver driver(static_cast<IDevice*>(nullptr));
        // The driver owns its managers and deletes them.
        video::CMaterialRendererManager& rendererManager = *new video::CMaterialRendererManager(&driver);
        driver.m_materialRendererManager = &rendererManager;
        driver.m_shaderManager = new video::CNullShaderManager(nullptr);
        driver.m_globalParameters = new video::CGlobalMaterialParameterManager(&driver);
        Raw raw;
        const std::string path = pick(files, "assassin.bdae");
        CHECK(!path.empty() && readFile(path, raw));
        Loaded loaded;
        load(raw, path, true, loaded);
        if (loaded.record != nullptr && loaded.record->data != nullptr) {
            const collada::SDatabaseTables& t = *loaded.record->data->tables;
            collada::CColladaDatabase db;
            db.record = loaded.record;
            db.factory = &collada::CColladaDatabase::DefaultFactory;
            ++loaded.record->refCount;
            {
                collada::SEffectList list(db, t.effects[0]);
                boost::intrusive_ptr<video::CMaterialRenderer> renderer =
                    collada::createMaterialRendererForProfile<collada::SProfileNullTraits>(db, &driver, "b3_fx0", list, nullptr);
                CHECK(renderer);
                if (renderer) {
                    // The four techniques of the effect, each of one pass; the renderer is the one the manager made under the name.
                    CHECK(renderer->m_techniqueCount == 4 && renderer->m_name != nullptr && std::strcmp(renderer->m_name, "b3_fx0") == 0);
                    CHECK(renderer->getTechniqueID("default") != 255);
                    const collada::SEffect& effect = *t.effects[0];
                    CHECK(renderer->getTechniqueID(effect.nullTechniques[1].name) != 255);
                    // The manager holds the renderer too (the test and the manager: two uses).
                    CHECK(renderer->m_refCount == 2 && rendererManager.getMaterialRenderer(renderer->m_id).get() == renderer.get());
                    // The null shaders have no parameters: the bindings of the passes find no shader parameter, nothing is bound.
                    CHECK(renderer->m_parameterCount == 0);
                    // The same name again: the definition is refused and the renderer that exists is the answer.
                    boost::intrusive_ptr<video::CMaterialRenderer> again =
                        collada::createMaterialRendererForProfile<collada::SProfileNullTraits>(db, &driver, "b3_fx0", list, nullptr);
                    CHECK(again.get() == renderer.get());
                }
                // Two effects: the techniques of the second that have the names of the first are not made again.
                collada::SEffectList both(db, t.effects[1]);
                both.add(db, t.effects[2]);
                boost::intrusive_ptr<video::CMaterialRenderer> two =
                    collada::createMaterialRendererForProfile<collada::SProfileNullTraits>(db, &driver, "b3_fx12", both, nullptr);
                CHECK(two && two->m_techniqueCount == 4 && two->getTechniqueID("default") != 255);
            }
            collada::dropDatabase(db);
        }
        release(loaded);
    }

    // The mappings the loads made are gone with the records.
    CHECK(res::AddressSpace32::blockCount() == 0);

    if (failures == 0) {
        std::printf("bdae_loader_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
#endif
}

