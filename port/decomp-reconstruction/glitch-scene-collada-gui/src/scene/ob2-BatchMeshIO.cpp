// glitch::scene::CBatchMesh::save (0x57cd48) and ::load (0x57db94): the batch file format, a stored zip archive with the entries
// header.bin, segments_table.bin, batch_info.bin, segments_info.bin, batch_data.bin (and, on request, segment_streaming_info.bin).
// Owner B2 (2026-10-16). The materials are not written by save; load reads them from materials.bdae when the archive has it.
#include <cstdint>
#include <cstring>
#include <string>

#include "glitch-core-io/io/memory_write_file.hpp"
#include "glitch-core-io/io/zip_reader.hpp"
#include "glitch-core-io/io/zip_writer.hpp"
#include "glitch-core-io/os/byteswap.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/vertex_attribute_map.hpp"

namespace glitch::scene {

namespace {

std::uint16_t swap16(std::uint16_t v) { return static_cast<std::uint16_t>((v >> 8) | (v << 8)); }
std::uint32_t swap32(std::uint32_t v) {
    return (v >> 24) | ((v >> 8) & 0xff00u) | ((v << 8) & 0xff0000u) | (v << 24);
}

// glitch::video::getIndexTypeSize(E_INDEX_TYPE)::sizes (0x99b5d8): 1, 2 and 4 bytes.
std::uint32_t indexTypeSize(std::uint32_t type) {
    static const std::uint32_t kSizes[3] = {1, 2, 4};
    return type < 3 ? kSizes[type] : 0;
}

}  // namespace

// 0x57cd48 _ZNK6glitch5scene10CBatchMesh4saveEPNS_2io10IWriteFileEPNS_5video12IVideoDriverENS_2os8E_ENDIANEbb
// Writes the mesh as a zip archive on `file`. The 44-byte header is "BAT", the endian byte (2, the native order, is written as 0), the
// local box (24), the bounding box source word, the batch count, the segment-info count and the segment stride. The segment infos
// follow as segments_table.bin; with the byte-swapped format (endian 1) the original instead writes each swapped 8-byte info straight
// onto `file` between the archive entries (the listing calls the file's write slot; no entry is made), and that is kept. Then, per
// batch, io::save writes the mesh buffer into batch_data.bin, a 12-byte record ("ABAT", the segment count, the word at +0x10, 30 times
// the number of attribute map slots, and a stack word the original never sets) goes into batch_info.bin followed by the 30-byte
// vertex attribute map of every pass, and every segment of the batch goes into segments_info.bin (its record, then the extra data
// through saveSegmentExtraData) while segment_streaming_info.bin gets the byte offsets of its vertices and its indices. The third
// bool selects whether segment_streaming_info.bin is added; the second bool (the fifth argument) is not read. The original returns
// nothing; the port declares bool and answers true.
bool CBatchMesh::save(io::IWriteFile* file, video::IVideoDriver* /*driver*/, std::int32_t endian, bool /*flagA*/,
                      bool streamingInfo) const {
    io::CZipWriter zip(file);
    if (endian == 2) {
        endian = 0;
    }
    const bool swap = endian == 1;

    std::uint8_t header[44];
    header[0] = 'B';
    header[1] = 'A';
    header[2] = 'T';
    header[3] = static_cast<std::uint8_t>(endian);
    core::aabbox3d<float> box = localBox;  // +0x38 .. +0x4f
    std::uint32_t words[4] = {boundingBoxSource, static_cast<std::uint32_t>(batches.size()),
                              static_cast<std::uint32_t>(segmentInfos.size()), segmentStride};
    if (swap) {
        box = os::byteswap(box);
        for (std::uint32_t& word : words) {
            word = swap32(word);
        }
    }
    std::memcpy(header + 4, &box, 24);
    std::memcpy(header + 28, words, 16);
    zip.addNewFile(glitch::core::stringc("header.bin"), header, 44);

    if (swap) {
        for (std::size_t i = 0; i < segmentInfos.size(); ++i) {
            std::uint32_t pair[2] = {swap32(static_cast<std::uint32_t>(segmentInfos[i].batch)),
                                     swap32(static_cast<std::uint32_t>(segmentInfos[i].index))};
            file->write(pair, 8);
        }
    } else {
        zip.addNewFile(glitch::core::stringc("segments_table.bin"), segmentInfos.data(),
                       static_cast<unsigned>(segmentInfos.size() * sizeof(SSegmentInfo)));
    }

    io::CMemoryWriteFile streaming(static_cast<std::uint32_t>(segmentInfos.size() * 8));
    io::CMemoryWriteFile batchInfo(static_cast<std::uint32_t>(12 * batches.size()));
    io::CMemoryWriteFile segmentsInfo(static_cast<std::uint32_t>(segmentStride * segmentInfos.size()));
    io::CMemoryWriteFile batchData(static_cast<std::uint32_t>(200 * batches.size()));

    std::uint32_t dataPosition = 0;  // where the next batch's blob starts in batch_data.bin
    for (std::size_t b = 0; b < batches.size(); ++b) {
        const SBatch& batch = batches[b];
        unsigned vertexResult = 0;
        unsigned indexResult = 0;
        boost::intrusive_ptr<const CMeshBuffer> meshBuffer(batch.meshBuffer.get(), true);
        io::save(meshBuffer, &batchData, swap, &vertexResult, &indexResult);
        const unsigned vertexStride = io::getVertexStreamsStride(
            boost::intrusive_ptr<const video::CVertexStreams>(batch.meshBuffer->vertexStreams.get(), true));
        std::uint32_t vertexOffset = dataPosition + vertexResult;
        std::uint32_t indexOffset =
            dataPosition + vertexResult + indexResult + batch.meshBuffer->vertexStreams->m_field08 * vertexStride;
        const std::uint32_t indexType = batch.meshBuffer->primitiveStream.m_indexType;
        const std::uint32_t indexCount = batch.meshBuffer->primitiveStream.m_count;
        const std::uint32_t indexSize = indexTypeSize(indexType);
        const std::uint32_t nextPosition = indexOffset + indexCount * indexSize;

        std::uint8_t record[12];
        std::memcpy(record, "ABAT", 4);
        std::uint16_t half[4] = {static_cast<std::uint16_t>(batch.endSegmentInfo - batch.firstSegmentInfo), batch.field10,
                                 static_cast<std::uint16_t>(30 * getNbVertexAttributeMapsDataSize(batch.vertexAttributeMap)),
                                 0};
        if (swap) {
            for (std::uint16_t& value : half) {
                value = swap16(value);
            }
        }
        std::memcpy(record + 4, half, 8);
        batchInfo.write(record, 12);

        const video::CMaterialVertexAttributeMap& attributeMap = *batch.vertexAttributeMap;
        const video::CMaterialRenderer& renderer = *attributeMap.m_renderer;
        for (std::uint8_t t = 0; t < renderer.m_techniqueCount; ++t) {
            const video::STechniqueEntry& technique = renderer.m_techniques[t];
            for (std::uint8_t p = 0; p < technique.passCount; ++p) {
                const std::ptrdiff_t slot = technique.passes + p - renderer.m_passBase;
                batchInfo.write(attributeMap.m_maps[static_cast<std::size_t>(slot)]->m_map, 30);
            }
        }

        for (std::uint16_t k = batch.firstSegmentInfo; k < batch.endSegmentInfo; ++k) {
            const SSegment* segment = segmentAt(k);
            segment->save(&segmentsInfo, swap);
            saveSegmentExtraData(reinterpret_cast<const std::uint8_t*>(segment) + sizeof(SSegment), &segmentsInfo, swap);  // vptr+0x40
            streaming.write(&vertexOffset, 4);
            streaming.write(&indexOffset, 4);
            vertexOffset += static_cast<std::uint16_t>(segment->vertexEnd - segment->vertexBegin) * vertexStride;
            indexOffset += indexSize * (segment->indexEnd - segment->indexBegin);
        }
        dataPosition = nextPosition;
    }
    if (streamingInfo) {
        zip.addNewFile(glitch::core::stringc("segment_streaming_info.bin"), streaming.getBuffer(),
                       static_cast<unsigned>(streaming.getBufferSize()));
    }
    zip.addNewFile(glitch::core::stringc("batch_info.bin"), batchInfo.getBuffer(), static_cast<unsigned>(batchInfo.getBufferSize()));
    zip.addNewFile(glitch::core::stringc("segments_info.bin"), segmentsInfo.getBuffer(),
                   static_cast<unsigned>(segmentsInfo.getBufferSize()));
    zip.addNewFile(glitch::core::stringc("batch_data.bin"), batchData.getBuffer(), static_cast<unsigned>(batchData.getBufferSize()));
    return true;
}

// 0x57db94 _ZN6glitch5scene10CBatchMesh4loadEPNS_2io9IReadFileEPNS_5video12IVideoDriverEPNS2_11IFileSystemEPNS_7collada14CRootSceneNodeEPNS8_14CColladaFactoryE
// The mirror of save. The archive's materials.bdae (when present) becomes a collada database over `factory` (the default factory when
// null); the header gives the local box (+0x38), the bounding box source (+0x68), the batch count and the segment-info count (the
// stride in it is not read) and clears the dirty byte (+0x74); the segment infos come from segments_table.bin; the segment byte
// vector grows to infoCount records. Every batch reads its 12-byte record, builds its material from the database (the record's
// halfword at +0x0a is the material index) and a vertex attribute map with one map per pass read from batch_info.bin (30 bytes
// each), loads its segments from segments_info.bin (the first through a temporary record that is cloned, the rest in place; each
// followed by loadSegmentExtraData) and its mesh buffer from batch_data.bin (io::loadMB), and is appended; the dirty byte is
// raised. Host guards: a missing segments_table.bin in the swapped format and a batch without a material are tolerated (the
// original dereferences null).
bool CBatchMesh::load(io::IReadFile* file, video::IVideoDriver* driver, io::IFileSystem* /*fileSystem*/,
                      collada::CRootSceneNode* root, collada::CColladaFactory* factory) {
    io::CZipReader zip(file, false, false);
    io::IReadFile* materialsFile = zip.openFile("materials.bdae");
    collada::CColladaDatabase database;
    const bool hasDatabase = materialsFile != nullptr;
    if (hasDatabase) {
        database = collada::CColladaDatabase(materialsFile, factory != nullptr ? factory : &collada::CColladaDatabase::DefaultFactory);
    }

    io::IReadFile* headerFile = zip.openFile("header.bin");
    std::uint8_t header[44] = {};
    core::aabbox3d<float> box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    headerFile->read(header, 44);
    const bool swap = header[3] == 1;
    std::memcpy(&box, header + 4, 24);
    std::uint32_t words[4];
    std::memcpy(words, header + 28, 16);
    if (swap) {
        box = os::byteswap(box);
        for (std::uint32_t& word : words) {
            word = swap32(word);
        }
    }
    const std::uint32_t batchCount = words[1];
    const std::uint32_t infoCount = words[2];
    localBox = box;                 // +0x38 .. +0x4f
    boundingBoxSource = words[0];   // +0x68
    boundingBoxDirty = false;       // +0x74

    io::IReadFile* tableFile = zip.openFile("segments_table.bin");
    if (swap) {
        for (std::uint32_t i = 0; i < infoCount && tableFile != nullptr; ++i) {
            std::uint32_t pair[2];
            tableFile->read(pair, 8);
            SSegmentInfo info;
            info.batch = static_cast<std::int32_t>(swap32(pair[0]));
            info.index = static_cast<std::int32_t>(swap32(pair[1]));
            segmentInfos.push_back(info);
        }
    } else {
        segmentInfos.resize(infoCount, SSegmentInfo{});
        tableFile->read(segmentInfos.data(), 8 * infoCount);
    }
    segmentData.resize(infoCount * recordSize(), 0);

    io::IReadFile* batchInfoFile = zip.openFile("batch_info.bin");
    io::IReadFile* segmentsInfoFile = zip.openFile("segments_info.bin");
    io::IReadFile* batchDataFile = zip.openFile("batch_data.bin");
    for (std::uint32_t b = 0; b < batchCount; ++b) {
        std::uint8_t record[12];
        batchInfoFile->read(record, 12);
        std::uint16_t half[4];
        std::memcpy(half, record + 4, 8);
        if (swap) {
            for (std::uint16_t& value : half) {
                value = swap16(value);
            }
        }
        const std::uint16_t segmentCount = half[0];
        SBatch batch;
        boundingBoxDirty = true;
        batch.field10 = half[1];
        if (hasDatabase) {
            batch.material = boost::intrusive_ptr<video::CMaterial>(
                database.constructMaterial(driver, static_cast<int>(half[3]), root), false);
        }
        if (batch.material != nullptr) {
            batch.vertexAttributeMap = video::CMaterialVertexAttributeMap::allocate(batch.material->m_renderer);
            video::CMaterialVertexAttributeMap& attributeMap = *batch.vertexAttributeMap;
            const video::CMaterialRenderer& renderer = *attributeMap.m_renderer;
            for (std::uint8_t t = 0; t < renderer.m_techniqueCount; ++t) {
                const video::STechniqueEntry& technique = renderer.m_techniques[t];
                for (std::uint8_t p = 0; p < technique.passCount; ++p) {
                    boost::intrusive_ptr<video::CVertexAttributeMap> passMap(
                        new video::CVertexAttributeMap(boost::intrusive_ptr<const video::CVertexStreams>()));
                    attributeMap.set(t, p, passMap);
                    const std::ptrdiff_t slot = technique.passes + p - renderer.m_passBase;
                    for (int i = 0; i < 30; ++i) {
                        std::uint8_t value = 0;
                        batchInfoFile->read(&value, 1);
                        attributeMap.m_maps[static_cast<std::size_t>(slot)]->m_map[i] = value;
                    }
                }
            }
        }
        if (segmentCount != 0) {
            SSegment temporary;
            temporary.visible = 1;
            temporary.load(segmentsInfoFile, swap);
            const std::size_t first = temporary.infoIndex;
            SSegment* destination = segmentAt(first);
            temporary.sourceBuffer = nullptr;
            temporary.infos = &segmentInfos;
            batch.firstSegmentInfo = static_cast<std::uint16_t>(first);
            destination->clone(temporary);
            loadSegmentExtraData(segmentExtra(first), segmentsInfoFile, swap);  // vptr+0x44
            for (std::uint32_t k = 1; k < segmentCount; ++k) {
                SSegment* segment = segmentAt(first + k);
                segment->load(segmentsInfoFile, swap);
                segment->sourceBuffer = nullptr;
                segment->infos = &segmentInfos;
                loadSegmentExtraData(segmentExtra(first + k), segmentsInfoFile, swap);
            }
            if (temporary.ownsBox) {
                delete temporary.box;  // the clone made its own copy; the original returns the pool block
            }
        }
        batch.endSegmentInfo = static_cast<std::uint16_t>(segmentCount + batch.firstSegmentInfo);
        batch.meshBuffer = io::loadMB(batchDataFile, swap, driver);
        batches.push_back(batch);
    }
    return true;
}

}  // namespace glitch::scene
