// Bodies of glitch::collada::CResFile (canonical class: collada/CColladaDatabase.hpp), reconstructed by residue pass ob. This file replaces the
// partial rows of the file-manager batch.
//
// A comment `// 0xADDR symbol` precedes each function.
#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-video/buffer.hpp"
#include "core-platform/memory.hpp"
#include "glitch-scene-collada-gui/collada/BdaeDecode.hpp"
#include "glitch-video/tb/glitch_res_AddressSpace.hpp"
#include "glitch-video/tb/glitch_res_File.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

// The IBuffer handle at a record's word, brought back to a static, dataless state; see CResFile::releaseRemovableBuffer.
bool isDriverMapped(const video::IBuffer& buffer) {
    return (buffer.m_flags12 & video::IBuffer::kFlagDriverMapped) != 0;
}

// A block of the file image given back: it leaves the 32-bit address space, then its memory is freed.
void freeBlock(void* block) {
    res::AddressSpace32::unmap(block);
    delete[] static_cast<std::uint8_t*>(block);
}

// The range blocks of the record (+0x44), their pointer array and the range table (+0x40): every block of the array (or only the first when
// the flag byte is clear), the array, the table.
void freeChunks(CResFile& record) {
    if (record.array_0x44 == nullptr) {
        return;
    }
    if (record.flag_0x48 == 0) {
        if (record.array_0x44[0] != nullptr) {
            freeBlock(record.array_0x44[0]);
        }
    } else {
        for (std::int32_t i = 0; i < record.arrayCount_0x38; ++i) {
            if (record.array_0x44[i] != nullptr) {
                freeBlock(record.array_0x44[i]);
            }
            record.array_0x44[i] = nullptr;
        }
    }
    delete[] record.array_0x44;
    record.array_0x44 = nullptr;
    delete[] static_cast<std::uint8_t*>(record.buffer_0x40);
    record.buffer_0x40 = nullptr;
}

}  // namespace

// 0x658048 _ZN6glitch7collada8CResFileC1EPKcPNS_2io9IReadFileEb (C2 0x65815c: the same body)
// The file image is fixed up by the inline res::File (the first word of which is the header block, +0x24 of the record): a file wholly in
// memory (with `flag`) keeps its reader and is initialised from the reader's buffer; any other is read through a CResFileReader over the
// manager's read file. The original then reads the tables through the fixed-up addresses; the port decodes the image into host-width records
// (collada/BdaeDecode, TRACK-B decision 2) and `data` is the decoded header. A file that does not load or does not decode leaves `data` null
// (the manager drops such a record).
CResFile::CResFile(const char* fileNameArg, io::IReadFile* readerArg, bool flag) : name(fileNameArg != nullptr ? fileNameArg : "") {
    refCount = 1;
    fileName = name.c_str();
    res::File loader;
    int result = 1;
    if (flag && readerArg->isAllInMemory()) {
        // The file is wholly in memory: this record keeps it (a use) and the file image is the reader's buffer.
        reader = readerArg;
        ++readerArg->referenceCounter;
        void* memory = reader->getBuffer(nullptr);
        // The image is placed in the address space with the size the reader has (Init(void*) would take the size the header claims).
        res::AddressSpace32::map(memory, static_cast<std::size_t>(reader->getSize()));
        result = loader.Init(memory);
    } else {
        // Otherwise the image is read through a CResFileReader over the manager's read file (a zip archive's entry, or the file itself).
        io::IReadFile* file = CResFileManager::Inst != nullptr ? CResFileManager::Inst->getReadFile(readerArg) : readerArg;
        if (CResFileManager::Inst == nullptr) {
            ++file->referenceCounter;
        }
        CResFileReader fileReader(file);
        result = loader.Init(&fileReader);
        file->drop();
    }
    // The inline res::File of the record: +0x24 the header block, +0x38 the number of range blocks, +0x40 the range table, +0x44 the block
    // addresses (here an array of host pointers), +0x48 whether every range has a block of its own, +0x4c the size of the on-demand tail.
    image = loader.header;
    arrayCount_0x38 = static_cast<std::int32_t>(loader.rangeCount);
    flag_0x48 = loader.separateRanges ? 1 : 0;
    keepSourceName = loader.unk_0x28;
    if (loader.rangeTargets != nullptr) {
        void** chunks = new void*[loader.rangeCount];
        for (std::uint32_t k = 0; k < loader.rangeCount; ++k) {
            chunks[k] = res::AddressSpace32::toPointer(loader.rangeTargets[k]);
        }
        array_0x44 = chunks;
        delete[] const_cast<std::uint32_t*>(loader.rangeTargets);
    }
    buffer_0x40 = const_cast<std::uint32_t*>(loader.rangeTable);
    data = nullptr;
    if (result == 0 && image != nullptr) {
        SColladaFileData* decoded = nullptr;
        hostModel = decodeBdae(image, decoded, nullptr);
        data = decoded;
    }
}

// 0x658a2c _ZN6glitch7collada8CResFileD1Ev (D2 0x658b6c; D0 0x658b50 is the deleting thunk)
// The objects are released first. A record that kept its reader drops it; otherwise the file-image memory is freed: every chunk of the pointer
// array (or only the first when the flag byte is clear), the array, the buffer and the header block.
CResFile::~CResFile() {
    releaseObjects();
    data = nullptr;
    hostModel.reset();
    if (reader != nullptr) {
        res::AddressSpace32::unmap(image);
        reader->drop();
        reader = nullptr;
        return;
    }
    freeChunks(*this);
    res::AddressSpace32::unmap(image);
    if (image != nullptr) {
        GlitchFree(image);
        image = nullptr;
    }
}

// 0x657c8c _ZN6glitch7collada8CResFile13releaseBufferERN5boost13intrusive_ptrINS_5video7IBufferEEE
// A buffer nobody else holds is dropped with its handle. Otherwise it keeps its size (when a driver maps it) but gives its data back, and
// the handle is cleared.
void CResFile::releaseBuffer(boost::intrusive_ptr<video::IBuffer>& buffer) {
    video::IBuffer* held = buffer.get();
    if (held == nullptr) {
        return;
    }
    if (held->referenceCounter > 1) {
        const std::uint32_t size = isDriverMapped(*held) ? held->m_size : 0u;
        held->reset(size, nullptr, true);
    }
    buffer.reset();
}

// 0x657cf8 _ZN6glitch7collada8CResFile22releaseRemovableBufferERN5boost13intrusive_ptrINS_5video7IBufferEEE
void CResFile::releaseRemovableBuffer(boost::intrusive_ptr<video::IBuffer>& buffer) {
    video::IBuffer* held = buffer.get();
    if (held == nullptr) {
        return;
    }
    if (isDriverMapped(*held)) {
        held->reset(held->m_size, nullptr, true);
    } else if ((held->m_flags12 & video::IBuffer::kFlagOwnsData) == 0) {
        os::Printer::log("Buffer released is not in VRAM", ELL_WARNING);
        held->copy();
    }
}

// 0x657d58 _ZN6glitch7collada8CResFile22releaseRemovableBufferEh
// Does nothing without the chunk array. With no skins in the file: bit 0 of `kinds` releases the removable buffers of every instantiated geometry
// (the vertex buffer or the buffers of the streams, whose data pointer word is cleared as listed, and the index buffer of every mesh buffer
// record), bit 1 those of the skins. Then the chunk array and the buffer are freed (see the destructor).
// Host note: the listing clears the word at +0x24 of the stream descriptor array after each stream; that is the second descriptor's buffer word
// (and out of range for a mesh with one stream), so the port clears it only when the array has a second descriptor.
void CResFile::releaseRemovableBuffer(std::uint8_t kinds) {
    if (array_0x44 == nullptr) {
        return;
    }
    SDatabaseTables* tables = data != nullptr ? data->tables : nullptr;
    if (tables != nullptr && tables->skinCount == 0) {
        if ((kinds & 1u) != 0) {
            for (SGeometry* geometry : tables->geometries) {
                if (geometry->notInstantiated != 0) {
                    continue;
                }
                SMesh* mesh = geometry->mesh;
                if (mesh == nullptr) {
                    continue;  // host guard: a geometry record without a mesh record
                }
                if (mesh->interleaved != 0) {
                    releaseRemovableBuffer(mesh->interleavedData->buffer);
                    mesh->interleavedData->dataBlock = nullptr;
                    mesh->interleavedData->data = nullptr;
                } else {
                    for (std::int32_t k = 0; k < mesh->count; ++k) {
                        releaseRemovableBuffer(mesh->streams[k].buffer);
                        if (mesh->count >= 2) {
                            mesh->streams[1].buffer.detach();  // the listing zeroes this word without a release
                        }
                    }
                }
                for (std::int32_t b = 0; b < mesh->bufferCount; ++b) {
                    releaseRemovableBuffer(mesh->buffers[b].indexBuffer);
                    mesh->buffers[b].indexBlock = nullptr;
                    mesh->buffers[b].indexData = nullptr;
                }
            }
        }
        if ((kinds & 2u) != 0) {
            for (SController* controller : tables->controllers) {
                if (controller->reserved == 0 && controller->morph != nullptr) {
                    releaseRemovableBuffer(static_cast<SSkin*>(const_cast<void*>(controller->morph))->proxy);
                }
            }
        }
    }
    freeChunks(*this);
}

// 0x658744 _ZN6glitch7collada8CResFile14releaseObjectsEv
// The textures of the images are released (and removed from the texture manager when the file manager unloads automatically and this record held
// the last use), the vertex-attribute maps of the instance materials are cleared, and every instantiated geometry gives up the buffers it
// created: its vertex buffer (or the stream buffers), and for every mesh buffer record the index buffer and the scene mesh buffer it cached; the
// skins give up their proxy buffer. The original makes a temporary database handle on this record around the release; its use is given back
// before the function ends, so it is not reproduced. A record without tables has nothing to release.
void CResFile::releaseObjects() {
    SDatabaseTables* tables = data != nullptr ? data->tables : nullptr;
    if (tables == nullptr) {
        return;
    }
    video::CTextureManager* textureManager = nullptr;
    if (CResFileManager::Inst != nullptr && CResFileManager::Inst->device != nullptr && CResFileManager::Inst->device->videoDriver != nullptr) {
        textureManager = CResFileManager::Inst->device->videoDriver->m_textureManager;
    }
    for (SImage* image : tables->images) {
        if (image->imageData != nullptr) {
            glitch::IReferenceCounted* texture = image->imageData;
            image->imageData = nullptr;
            // The listing drops the image's use and then reads the count; here it is read first (a count of 2 becomes 1) so a texture that
            // the drop deletes is never touched.
            const bool lastUser = texture->referenceCounter == 2;
            texture->drop();
            if (lastUser && CResFileManager::Inst != nullptr && CResFileManager::Inst->autoUnloadEnabled && textureManager != nullptr) {
                textureManager->removeTexture(static_cast<video::ITexture*>(texture));
            }
        }
    }
    for (SInstanceMaterial* material = tables->instanceMaterials; material != nullptr; material = material->linkNext) {
        if (material->vertexAttributeMap != nullptr) {
            boost::intrusive_ptr<video::CMaterialVertexAttributeMap> released(material->vertexAttributeMap, false);
            material->vertexAttributeMap = nullptr;
        }
    }
    for (SGeometry* geometry : tables->geometries) {
        if (geometry->notInstantiated != 0) {
            continue;
        }
        SMesh* mesh = geometry->mesh;
        if (mesh == nullptr) {
            continue;  // host guard: a geometry record without a mesh record
        }
        if (mesh->interleaved != 0) {
            releaseBuffer(mesh->interleavedData->buffer);
        } else {
            for (std::int32_t k = 0; k < mesh->count; ++k) {
                releaseBuffer(mesh->streams[k].buffer);
            }
        }
        for (std::int32_t b = 0; b < mesh->bufferCount; ++b) {
            releaseBuffer(mesh->buffers[b].indexBuffer);
            mesh->buffers[b].meshBuffer.reset();
        }
    }
    for (SController* controller : tables->controllers) {
        if (controller->reserved == 0 && controller->morph != nullptr) {
            releaseBuffer(static_cast<SSkin*>(const_cast<void*>(controller->morph))->proxy);
        }
    }
}

}  // namespace glitch::collada
