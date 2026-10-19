// Bodies of glitch::collada::CResFileManager and glitch::collada::CResFactory (canonical classes: collada/CColladaDatabase.hpp), reconstructed
// by residue pass ob. This file replaces src/tb_scene-collada-gui-glitch_collada_CResFileManager-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function.
#include <cstring>
#include <iterator>
#include <string>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/zip_reader.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

// _ZN6glitch7collada15CResFileManager4InstE (0x9f701c) and the default factory object.
CResFileManager* CResFileManager::Inst = nullptr;
CResFactory CResFileManager::DefaultResFactory;

}  // namespace glitch::collada

namespace glitch::collada {

namespace {

// The state get() reloads for a record that is already loaded: the external-file slot (selected by the sign of the header's flag word) and the
// header size.
void selectLoadedFile(CResFile& record) {
    SColladaFileData& data = *record.data;
    const int slot = data.externalFlags < 0 ? 1 : 0;
    // The fixed-up image of the file (a record built by hand has none: its header record stands in).
    res::File::ExternalFilePtr[slot] = record.image != nullptr ? record.image : reinterpret_cast<std::uint8_t*>(&data);
    res::File::ExternalFileOffsetTableSize[slot] = res::File::SizeOfHeader + 4u * data.offsetEntries;
    res::File::SizeOfHeader = data.headerSize;
}

}  // namespace

// 0x657894 _ZN6glitch7collada15CResFileManagerC1EPNS_7IDeviceE (C2 0x657914: the same body)
// The original writes the vtable, the count 1, the empty map, the device, the default factory and the four flag bytes (+0x28 = 1, +0x29 = 0,
// +0x2a = 1, +0x2b = 1), and publishes the singleton.
CResFileManager::CResFileManager(glitch::IDevice* deviceArg)
    : refCount(1),
      device(deviceArg),
      resFactory(&DefaultResFactory),
      autoUnloadEnabled(true),
      flag_0x29(false),
      zipLoadingEnabled(true),
      disableZipAfterFirstUse(true) {
    if (deviceArg != nullptr) {
        ++deviceArg->referenceCounter;
    }
    Inst = this;
}

// 0x6582c4 _ZN6glitch7collada15CResFileManagerD1Ev (D2 0x6583c4; D0 0x6583a8 is the deleting thunk)
// Every record loses the use the map holds, the singleton is cleared, and the map is erased.
CResFileManager::~CResFileManager() {
    for (auto& entry : files) {
        entry.second->drop();
    }
    Inst = nullptr;
    files.clear();
}

// 0x657994 _ZN6glitch7collada15CResFileManager12checkVersionEPNS_2io9IReadFileE
// The original body is a constant: it returns 0.
std::uint32_t CResFileManager::checkVersion(io::IReadFile*) {
    return 0;
}

// 0x65799c _ZN6glitch7collada15CResFileManager12checkVersionEPKc
// The file is opened by name, checked and released.
std::int32_t CResFileManager::checkVersion(const char* fileName) {
    io::IReadFile* file = device->fileSystem->createAndOpenFile(fileName);
    const std::int32_t result = static_cast<std::int32_t>(checkVersion(file));
    if (file != nullptr) {
        file->drop();
    }
    return result;
}

// 0x657bd0 _ZN6glitch7collada15CResFileManager11getReadFileEPNS_2io9IReadFileE
// With zip loading enabled and a zip archive, the "little_endian_not_quantized.bdae" entry of the archive; otherwise the file itself with a use
// (and, when the flag says so, zip loading is switched off after this first use).
io::IReadFile* CResFileManager::getReadFile(io::IReadFile* file) {
    if (zipLoadingEnabled && io::CZipReader::isValid(file)) {
        file->seek(0, false);
        io::CZipReader zip(file, true, true);
        return zip.openFile("little_endian_not_quantized.bdae");
    }
    if (disableZipAfterFirstUse && zipLoadingEnabled) {
        zipLoadingEnabled = false;
    }
    ++file->referenceCounter;
    return file;
}

// 0x658564 _ZN6glitch7collada15CResFileManager23updateExternalResourcesEPNS0_8CResFileEPNS_2io9IReadFileE
// The textures of the file's images: the directory of the file's name comes from the file system, and for every image the factory (slot +0x08)
// is asked for the texture with the log level raised to errors around the call. The record keeps the texture (a use), dropping the one it had;
// no texture clears it.
void CResFileManager::updateExternalResources(CResFile* file, io::IReadFile* reader) {
    SDatabaseTables* tables = file->data->tables;
    const core::stringc directory = device->fileSystem->getFileDir(core::stringc(file->name.c_str()));
    video::CTextureManager* textures = device->videoDriver->m_textureManager;
    for (SImage* image : tables->images) {
        const ELOG_LEVEL level = os::Printer::getLogLevel();
        os::Printer::setLogLevel(ELL_ERROR);
        boost::intrusive_ptr<video::ITexture> texture = resFactory->getTexture(file, directory, reader, textures, image);
        os::Printer::setLogLevel(level);
        glitch::IReferenceCounted* previous = image->imageData;
        image->imageData = texture.get();
        if (texture) {
            ++texture->referenceCounter;
        }
        if (previous != nullptr) {
            previous->drop();
        }
    }
}

// 0x658c90 _ZN6glitch7collada15CResFileManager15postLoadProcessEPNS0_8CResFileEPNS_2io9IReadFileE
// The stages of the original over the decoded records of the file. A handle on the record is held throughout (the original's CColladaDatabase
// on the stack: a use taken when the count is not zero, given back at the end). When the external resources were resolved already, only
// they are updated. Otherwise: the version text is checked against "0,0,0,777" (seven log lines on a mismatch, the file is loaded all the same),
// the name of the file read is kept when the file has an on-demand tail (the record's keepSourceName word), the animation track of every
// animation is made, the textures of the images not loaded outside the file are made through the factory (log level raised to errors around
// each), and then the words the file keeps as indices become the records they name, as the original does in place in the image: the effect of
// every material (an index at or below the effect count; -1 names an effect of another file, loaded through the manager; anything above the
// count gives none) and the image of the first sampler cell of every sampler parameter of the materials and of the four new-param lists of
// every effect, the geometries of the targets of the morph controllers, and the node instance of an emitter that names a mesh through a node.
// Host notes, named: a material whose effect index equals the effect count gets none (the original takes the address one past the table), and
// an image index outside the table leaves a sampler cell without an image (the original keeps the index as the cell's word).
int CResFileManager::postLoadProcess(CResFile* file, io::IReadFile* reader) {
    SDatabaseTables* tables = file->data->tables;
    CColladaDatabase handle;
    handle.factory = &CColladaDatabase::DefaultFactory;
    handle.record = file;
    if (file->refCount != 0) {
        ++file->refCount;
    }
    if (tables->externalResourcesDone != 0) {
        updateExternalResources(file, reader);
        dropDatabase(handle);
        return 0;
    }
    // The version check. (A record built by hand has no version text.)
    const bool mismatch = tables->versionText != nullptr && std::strcmp(tables->versionText, "0,0,0,777") != 0;
    if (mismatch) {
        os::Printer::log("- Error - Collada binary version check failed -----", ELL_WARNING);
        os::Printer::log("- Expected versions : 0,0,0,777", ELL_WARNING);
        os::Printer::log(file->fileName, ELL_WARNING);
        os::Printer::log(tables->versionText, ELL_WARNING);
        os::Printer::log("- The file will be loaded\t\t\t\t\t\t\t -", ELL_WARNING);
        os::Printer::log("- see CColladaDatabase::setVersionCheckBehavior(...) -", ELL_WARNING);
        os::Printer::log("------------------------------------------------------", ELL_WARNING);
    }
    // The name of the file the tables were read from is kept for the streamed animations when the file asks for it.
    if (file->keepSourceName != 0) {
        file->sourceNameStorage = reader->getFileName();
        tables->sourceName = file->sourceNameStorage.c_str();
    } else {
        tables->sourceName = nullptr;
    }
    // The track of every animation (SAnimation +0x14).
    for (SAnimation* animation : tables->animations) {
        animation->trackEx = CColladaDatabase::getAnimationTrackEx(animation);
    }
    const core::stringc directory = device->fileSystem->getFileDir(core::stringc(file->name.c_str()));
    video::CTextureManager* textures = device->videoDriver->m_textureManager;
    for (SImage* image : tables->images) {
        if (image->external != 0) {
            continue;
        }
        const ELOG_LEVEL level = os::Printer::getLogLevel();
        os::Printer::setLogLevel(ELL_ERROR);
        boost::intrusive_ptr<video::ITexture> texture = resFactory->getTexture(file, directory, reader, textures, image);
        os::Printer::setLogLevel(level);
        if (texture) {
            ++texture->referenceCounter;
            glitch::IReferenceCounted* previous = image->imageData;
            image->imageData = texture.get();
            if (previous != nullptr) {
                previous->drop();
            }
        }
    }
    const std::int32_t imageCount = static_cast<std::int32_t>(tables->images.size());
    const std::int32_t effectCount = static_cast<std::int32_t>(tables->effects.size());
    // A sampler parameter's value is an array of pointers to cells; the original fixes up the first one: -1 becomes none.
    auto fixSampler = [&](std::int32_t type, const void* values, bool checkRange) {
        if (type < SParam::ET_SAMPLER2D || type > SParam::ET_SAMPLERRECT || values == nullptr) {
            return;
        }
        SParamSampler* cell = static_cast<SParamSampler* const*>(values)[0];
        if (cell->index == -1) {
            cell->image = nullptr;
        } else if (!checkRange || cell->index < imageCount) {
            cell->image = cell->index >= 0 && cell->index < imageCount ? tables->images[static_cast<std::size_t>(cell->index)] : nullptr;
        }
    };
    // The materials.
    for (SMaterial* material : tables->materials) {
        if (material->effectIndex <= effectCount) {
            for (std::int32_t i = 0; i < material->paramCount; ++i) {
                fixSampler(material->params[i].type, material->params[i].values, false);
            }
            if (material->effectIndex == -1) {
                if (material->fileName != nullptr) {
                    CColladaDatabase other(material->fileName, &CColladaDatabase::DefaultFactory);
                    if (other.record != nullptr) {
                        material->effect = getEffect(*other.record->data->tables, material->effectUrl + 1);
                    } else {
                        os::Printer::logf(ELL_ERROR, "File : [%s] not found", material->fileName);
                        material->effect = nullptr;
                    }
                    dropDatabase(other);
                } else {
                    material->effect = nullptr;
                }
            } else {
                material->effect = material->effectIndex < effectCount ? tables->effects[static_cast<std::size_t>(material->effectIndex)] : nullptr;
            }
        } else {
            material->effect = nullptr;
        }
    }
    // The effects: the sampler cells of the four new-param lists.
    for (SEffect* effect : tables->effects) {
        for (int list = 0; list < 4; ++list) {
            for (std::int32_t i = 0; i < effect->paramCount[list]; ++i) {
                fixSampler(effect->params[list][i].type, effect->params[list][i].values, true);
            }
        }
    }
    // The morph controllers: the targets' geometry indices become the geometries (the host keeps their names).
    const std::int32_t geometryCount = static_cast<std::int32_t>(tables->geometries.size());
    for (SController* controller : tables->controllers) {
        if (controller->reserved != 1) {
            continue;
        }
        SMorph* morph = const_cast<SMorph*>(static_cast<const SMorph*>(controller->morph));
        for (std::int32_t i = 0; i < morph->targetCount; ++i) {
            const std::int32_t index = morph->targetIndices[static_cast<std::size_t>(i)];
            if (index >= 0 && index < geometryCount) {
                const_cast<const char**>(morph->targetNames)[i] = tables->geometries[static_cast<std::size_t>(index)]->name;
            }
        }
    }
    // The emitters that name their mesh through a node (mesh type 2): the node's first instance.
    for (SEmitter* emitter : tables->emitters) {
        if (emitter->meshType != 2) {
            continue;
        }
        SEmitterMesh* mesh = const_cast<SEmitterMesh*>(emitter->mesh);
        SNode* node = handle.getNode(mesh->nodeUrl + 1);
        if (node != nullptr && node->instanceCount > 0) {
            mesh->instance = node->instances[0].instance;
            if (node->instances[0].kind == EIK_GEOMETRY) {
                mesh->geometryUrl = static_cast<const SInstanceGeometry*>(mesh->instance)->url;
            }
        }
    }
    tables->externalResourcesDone = 1;
    dropDatabase(handle);
    return 0;
}

// 0x6584fc _ZN6glitch7collada15CResFileManager6unloadENSt4priv17_Rb_tree_iteratorISt4pairIKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS0_8CResFileEENS2_11_MapTraitsTISG_EEEEb
// 3 for the end of the map; 2 when the record has other users and `flag` is clear; otherwise the record loses the map's use and its entry is
// erased (1 when it still had other users, else 0).
std::int32_t CResFileManager::unload(std::map<std::string, CResFile*>::iterator position, bool flag) {
    if (position == files.end()) {
        return 3;
    }
    CResFile* record = position->second;
    std::int32_t result = 0;
    if (record->refCount > 1) {
        if (!flag) {
            return 2;
        }
        result = 1;
    }
    record->drop();
    files.erase(position);
    return result;
}

// 0x659b60 _ZN6glitch7collada15CResFileManager6unloadEPKcb
// The name is made absolute by the file system and looked up.
std::int32_t CResFileManager::unload(const char* fileName, bool flag) {
    const std::string absolute = core::to_std(device->fileSystem->getAbsolutePath(core::stringc(fileName)));
    return unload(files.find(absolute), flag);
}

// 0x659cfc _ZN6glitch7collada15CResFileManager6unloadEPKNS0_8SColladaEb
// The record whose table holder is `collada` is unloaded; 3 when there is none.
std::int32_t CResFileManager::unload(const SCollada* collada, bool flag) {
    for (auto& entry : files) {
        if (static_cast<const void*>(collada) == static_cast<const void*>(entry.second->data->tables)) {
            return unload(entry.first.c_str(), flag);
        }
    }
    return 3;
}

// 0x659c3c _ZN6glitch7collada15CResFileManager9unloadAllEv
// Every record is tried (the next entry is taken before the unload); answers how many were unloaded.
std::int32_t CResFileManager::unloadAll() {
    std::int32_t unloaded = 0;
    for (auto it = files.begin(); it != files.end();) {
        auto next = std::next(it);
        const std::string name = it->first;
        if (unload(name.c_str(), false) == 0) {
            ++unloaded;
        }
        it = next;
    }
    return unloaded;
}

// 0x65a748 _ZN6glitch7collada15CResFileManager3getEPNS_2io9IReadFileEbb
// The record for the read file's absolute name; a missing one is created (when `create`) from the file with `flag`, entered in the map and, when
// its header does not mark external resources, post-processed (a failed post-process gives null). A record that is already loaded re-selects the
// loader state. Automatic unloading is switched off meanwhile.
CResFile* CResFileManager::get(io::IReadFile* file, bool create, bool flag) {
    const bool savedAutoUnload = Inst->autoUnloadEnabled;
    Inst->autoUnloadEnabled = false;
    const std::string absolute = core::to_std(device->fileSystem->getAbsolutePath(core::stringc(file->getFileName())));
    CResFile* record = nullptr;
    auto found = files.find(absolute);
    if (found == files.end()) {
        if (create) {
            record = new CResFile(absolute.c_str(), file, flag);
            if (record->data == nullptr) {
                // Host guard: no host-width view of the file's tables was produced (see the CResFile constructor).
                record->drop();
                record = nullptr;
            } else {
                files[absolute] = record;
            }
            if (record != nullptr && record->data->externalFlags == 0) {
                io::IReadFile* readFile = getReadFile(file);
                const int process = postLoadProcess(record, readFile);
                readFile->drop();
                if (process != 0) {
                    record = nullptr;
                }
            }
        }
    } else {
        record = found->second;
        selectLoadedFile(*record);
    }
    Inst->autoUnloadEnabled = savedAutoUnload;
    return record;
}

// 0x65a9a8 _ZN6glitch7collada15CResFileManager3getEPKcb
// As the read-file form, for a file name: a missing record opens the file (logging "- Error - File not found   -", the name and a rule when it
// cannot be opened), is created with `flag` clear, entered and post-processed; a failed post-process unloads it again.
CResFile* CResFileManager::get(const char* fileName, bool create) {
    const bool savedAutoUnload = Inst->autoUnloadEnabled;
    Inst->autoUnloadEnabled = false;
    const std::string absolute = core::to_std(device->fileSystem->getAbsolutePath(core::stringc(fileName)));
    CResFile* record = nullptr;
    auto found = files.find(absolute);
    if (found == files.end()) {
        if (create) {
            io::IReadFile* file = device->fileSystem->createAndOpenFile(fileName);
            if (file != nullptr) {
                record = new CResFile(absolute.c_str(), file, false);
                if (record->data == nullptr) {
                    // Host guard: no host-width view of the file's tables was produced (see the CResFile constructor).
                    record->drop();
                    record = nullptr;
                } else {
                    files[absolute] = record;
                }
                if (record != nullptr && record->data->externalFlags == 0) {
                    io::IReadFile* readFile = getReadFile(file);
                    const int process = postLoadProcess(record, readFile);
                    readFile->drop();
                    if (process != 0) {
                        unload(absolute.c_str(), false);
                        record = nullptr;
                    }
                }
                file->drop();
            } else {
                os::Printer::print("- Error - File not found   -");
                os::Printer::print("%s", fileName);
                os::Printer::print("----------------------------");
            }
        }
    } else {
        record = found->second;
        selectLoadedFile(*record);
    }
    Inst->autoUnloadEnabled = savedAutoUnload;
    return record;
}

// 0x65ac74 _ZN6glitch7collada15CResFileManager3getEPNS0_8CResFileEPKcb
// A name relative to a record: the record's directory is added to the file system as a folder archive (with a closing slash) for the duration
// of the lookup; a record in no directory is looked up by name alone.
CResFile* CResFileManager::get(CResFile* relativeTo, const char* fileName, bool create) {
    std::string directory = core::to_std(device->fileSystem->getFileDir(core::stringc(relativeTo->name.c_str())));
    if (directory.empty()) {
        return get(fileName, create);
    }
    if (directory.back() != '\\' && directory.back() != '/') {
        directory += "/";
    }
    const bool added = device->fileSystem->addFolderFileArchive(directory.c_str(), true, true);
    CResFile* record = get(fileName, create);
    if (added) {
        device->fileSystem->removeFileArchive(directory.c_str());
    }
    return record;
}

// 0x65a98c _ZN6glitch7collada15CResFileManager4loadEPNS_2io9IReadFileEbPFvPKcPKNS0_8SColladaEEb
// With the first flag set nothing is loaded (null); otherwise the record for the file, created when missing.
CResFile* CResFileManager::load(io::IReadFile* file, bool flag, void (*)(const char*, const SCollada*), bool flagB) {
    if (flag) {
        return nullptr;
    }
    return get(file, true, flagB);
}

// 0x65ac5c _ZN6glitch7collada15CResFileManager4loadEPKcbPFvS3_PKNS0_8SColladaEE
CResFile* CResFileManager::load(const char* fileName, bool flag, void (*)(const char*, const SCollada*)) {
    if (flag) {
        return nullptr;
    }
    return get(fileName, true);
}

// 0x659704 _ZN6glitch7collada11CResFactory10getTextureEPNS0_8CResFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_2io9IReadFileEPNS_5video15CTextureManagerEPNS0_6SImageE
// The image's path (+0x08) looked up in the texture manager; the image's name (+0x00) is the alias handed along only when the manager's
// flag_0x29 is set.
boost::intrusive_ptr<video::ITexture> CResFactory::getTexture(CResFile*, const core::stringc& directory, io::IReadFile* file,
                                                              video::CTextureManager* manager, SImage* image) {
    const char* alias = (CResFileManager::Inst != nullptr && CResFileManager::Inst->flag_0x29) ? image->name : nullptr;
    return getTextureImpl(directory, file, manager, image->path, alias);
}

// 0x6594a0 _ZN6glitch7collada11CResFactory14getTextureImplERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_2io9IReadFileEPNS_5video15CTextureManagerEPKcSJ_
// The manager is asked for "directory/name" (with the alias), then for the name alone; failing that, the file is asked for an external buffer of
// that name (slot +0x34) and, when it has one, the texture is made from it as a memory file called "directory/name".
boost::intrusive_ptr<video::ITexture> CResFactory::getTextureImpl(const core::stringc& directory, io::IReadFile* file,
                                                                  video::CTextureManager* manager, const char* name, const char* alias) {
    boost::intrusive_ptr<video::ITexture> texture = manager->getTexture((directory + "/" + name).c_str(), alias);
    if (!texture) {
        texture = manager->getTexture(name, alias);
        if (!texture && file != nullptr) {
            long size = 0;
            void* buffer = file->getExternalBuffer(name, &size);
            if (buffer != nullptr) {
                const core::stringc memoryName = directory + "/" + name;
                io::CMemoryReadFile memory(buffer, size, memoryName.c_str(), false);
                texture = manager->getTexture(&memory, alias, false);
            }
        }
    }
    return texture;
}

}  // namespace glitch::collada
