// glitch::scene::CBatchMesh: the mesh that batches many static segments into shared buffers (levels, props). Canonical
// header of the engine unification wave (u1-scene). It replaces the CBatchMesh in scene_nodes.hpp (a partial view with a
// vector of batches), layouts/scene.hpp (a 32-bit layout struct) and layouts/scene_evidence.hpp (evidence::CBatchMesh), and
// the recon_04 / recon_31 stand-ins.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x578924 / 0x5789e4, operator new(0x7c) in the
// CBatchSceneNode constructor 0x57f9c0; tools/decomp_vtable.py glitch::scene::CBatchMesh, 80 bytes, no virtual base):
//   CBatchMesh derives from glitch::scene::IMesh: the IMesh slots +0x00 .. +0x28 are overridden and it adds
//   +0x30 load, +0x34 save, +0x38 getIndexRange, +0x3c init, +0x40 saveSegmentExtraData, +0x44 loadSegmentExtraData
//   (getUserProperty at +0x2c is inherited).
//   Members:
//     +0x00 vptr, +0x04 reference count (the constructor writes 0)
//     +0x08 .. +0x13 byte vector: the segment data (begin, end, capacity); a segment is `segmentStride` bytes
//     +0x14 .. +0x1f vector of SSegmentInfo (8 bytes: batch index, index inside the batch)
//     +0x20 .. +0x2b vector of SBatch (20 bytes each)
//     +0x2c .. +0x37 a vector of 32-bit entries released with GlitchFree in the destructor, plus two more words
//     +0x38 .. +0x4f aabbox3d, written (-1,-1,-1)..(1,1,1) by the constructor; role not recovered
//     +0x50 .. +0x67 aabbox3d, the batch bounding box (the constructor writes the same unit box)
//     +0x68 bounding-box source (0), +0x6c the tick of the last box update (-1), +0x70 segment stride in bytes
//     (44 by default, the constructor argument otherwise), +0x74 dirty byte (1), +0x78 a word (0)
// Port notes: pointers are host width; the three glitch vectors are std::vector; the batch handles count
// (glitch-core-io/boost/intrusive_ptr.hpp).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/video_types.hpp"  // video::CVertexAttributeMap, IVideoDriver (forward declarations)
// CMeshBuffer.hpp is not included: it must stay out of translation units that also include glitch-core-io/io/interfaces.hpp
// (which still declares a stub scene::CMeshBuffer); the sources that need the complete type include it themselves.

namespace glitch::collada {
class CRootSceneNode;
class CColladaFactory;
}  // namespace glitch::collada

namespace glitch::scene {

class CBatchMesh;

// The object a CBatchMesh tells after updateSegmentContent 0x57aae4: the call goes through the object's slot +0x08 with
// (mesh, segment-info index, "content was baked", flag). Whose class it is was not recovered (the compile callbacks' slot +0x08 takes an
// SCompileInfo instead), so it is declared by its use.
class ISegmentContentObserver {
public:
    virtual ~ISegmentContentObserver() = default;  // +0x00 / +0x04
    virtual void segmentContentUpdated(CBatchMesh* mesh, void* segment, bool baked, bool flag) = 0;  // +0x08
};

class CBatchMesh : public IMesh {
public:
    // One batch: a mesh buffer with its material and vertex-attribute map, and the range of segment infos it owns.
    struct SBatch {
        // 0x578d1c (C2) / 0x578d3c (C1): zeroes every field.
        SBatch();
        // 0x578d5c (C2) / 0x578d7c (C1): both 16-bit range words are set to `value`.
        explicit SBatch(std::uint16_t value);
        SBatch(const SBatch& other);
        SBatch& operator=(const SBatch& other);
        // 0x57a368 (D1), 0x57a688 (D2): release the three handles (the members).
        ~SBatch();

        boost::intrusive_ptr<CMeshBuffer> meshBuffer;                                 // +0x00
        boost::intrusive_ptr<video::CMaterial> material;                              // +0x04
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
        std::uint16_t firstSegmentInfo = 0;                                           // +0x0c start of the batch's range in the info vector
        std::uint16_t endSegmentInfo = 0;                                             // +0x0e end of the range (addSegment increments it)
        std::uint16_t field10 = 0;                                                    // +0x10 zeroed by SBatch(); role not recovered
    };

    // One entry of the info vector: which batch a segment belongs to and its position in it (8 bytes).
    struct SSegmentInfo {
        std::int32_t batch = 0;  // +0x00
        std::int32_t index = 0;  // +0x04
    };

    // One segment record inside the byte vector (44 bytes in the original; see recordSize() for the host stride). Layout recovered
    // from addSegment 0x57d98c (which builds one on the stack), clone 0x57b67c, setSourceBuffer 0x588e80, save 0x578ee0, load
    // 0x57b3d8 and sort 0x57c19c. The three pointer fields are host width; every other field keeps its original offset in the
    // comments. The original sizeof is 0x2c; the host record is larger by the pointer widening.
    struct SSegment {
        std::vector<SSegmentInfo>* infos = nullptr;     // +0x00 the owning mesh's segment-info vector (mesh +0x14)
        std::uint32_t infoIndex = 0;                    // +0x04 index of this segment's SSegmentInfo in that vector
        const CMeshBuffer* sourceBuffer = nullptr;      // +0x08 buffer the segment's content comes from (null: baked into the batch)
        const core::aabbox3d<float>* box = nullptr;     // +0x0c bounding box: owned when ownsBox, else external (block2c or source)
        std::uint32_t indexBegin = 0;                   // +0x10 first index of the segment (getIndexRange)
        std::uint32_t indexEnd = 0;                     // +0x14 end index (getIndexRange)
        std::uint32_t indexEndCopy = 0;                 // +0x18 written equal to +0x14 by addSegment; saved and loaded
        std::uint32_t lastVisibleTick = 0;              // +0x1c os::Timer::TickCount of the last time a visibility pass listed the segment (zero in addSegment; not saved)
        std::uint8_t visible = 0;                       // +0x20 read by CBatchSceneNode::isSegmentVisible
        std::uint8_t ownsBox = 0;                       // +0x21 the box is a pool allocation this record must give back
        std::int16_t priority = 0;                      // +0x22 addSegment's third argument; the transparent sort order
        std::uint16_t vertexBegin = 0;                  // +0x24 first vertex of the segment in its batch's buffer
        std::uint16_t vertexEnd = 0;                    // +0x26 end vertex
        std::uint16_t vertexEndCopy = 0;                // +0x28 written equal to +0x26 by addSegment

        // 0x578ee0 / 0x57b3d8: write / read the segment's file record (49 bytes; with `swap` every word is byte-swapped).
        bool save(io::IWriteFile* file, bool swap) const;
        bool load(io::IReadFile* file, bool swap);
        SSegment() = default;
        SSegment(const SSegment& other) = default;
        // 0x57b67c: copies the record; an owned box is duplicated.
        void clone(const SSegment& other);
        // 0x588e80: stores the source buffer and, for a non-null buffer, its box (an owned box is returned first); a null buffer
        // drops the box.
        void setSourceBuffer(const CMeshBuffer* buffer, const core::aabbox3d<float>* box);
    };

    // 0x578924 (C2) / 0x5789e4 (C1): the default constructor (segment stride 44).
    CBatchMesh();
    // 0x578aa4 (C2) / 0x578b60 (C1): the stride argument.
    explicit CBatchMesh(std::uint32_t segmentStride);
    // 0x57a59c (D1), 0x57a620 (D2), 0x57a604 (D0, skipped): frees the blocks and the batch vector.
    ~CBatchMesh() override;

    // vptr+0x0c .. +0x28 (scene::IMesh).
    boost::intrusive_ptr<IMesh> clone() const override;                                          // 0x578c1c (null handle)
    std::uint32_t getMeshBufferCount() const override;                                           // 0x578c28
    boost::intrusive_ptr<CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;         // 0x578c50
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;      // 0x578ccc
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                     // 0x578cf4
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x57a2ac
    const core::aabbox3d<float>& getBoundingBox() const override;                                // 0x57aa8c
    void setBoundingBox(const core::aabbox3d<float>& box) override;                              // 0x578c78

    // vptr+0x30 .. +0x44.
    virtual bool load(io::IReadFile* file, video::IVideoDriver* driver, io::IFileSystem* fileSystem,
                      collada::CRootSceneNode* root, collada::CColladaFactory* factory);           // 0x57db94 (skipped, 2412 bytes)
    // `endian` is a glitch::os::E_ENDIAN (not defined in this tree), passed as its 32-bit value.
    virtual bool save(io::IWriteFile* file, video::IVideoDriver* driver, std::int32_t endian, bool flagA,
                      bool flagB) const;                                                           // 0x57cd48 (skipped, 2788 bytes)
    virtual void getIndexRange(std::uint32_t& first, std::uint32_t& last, const SSegment* segment) const;  // 0x50cd10
    virtual void init();                                                                           // 0x50cd24 (empty)
    virtual void saveSegmentExtraData(const void* data, io::IWriteFile* file, bool flag) const;    // 0x50cd28 (empty)
    virtual void loadSegmentExtraData(void* data, io::IReadFile* file, bool flag);                 // 0x578920 (empty)

    // Non-virtual members; bodies are the recon_04 / recon_05 stand-ins or not reconstructed.
    void strip();                                                    // 0x57a4a8 shrinks the three vectors to fit
    void updateBoundingBox() const;                                  // 0x57a6d4 PARTIAL
    // `segment` is a segment-info index passed through the void* (the original does the same).
    void updateSegmentContent(void* segment, const CMeshBuffer* buffer, std::uint32_t index, bool flag,
                              const boost::intrusive_ptr<video::CMaterial>& material,
                              const boost::intrusive_ptr<video::CVertexAttributeMap>& vertexAttributeMap,
                              const video::IVideoDriver* driver);  // 0x57aae4
    void initStaticSegmentBoundingBoxes();                           // 0x57b174
    std::int32_t addBatch();                                         // 0x57b900 appends an SBatch and returns its index
    void quantizeComponents(bool flagA, bool flagB, video::IVideoDriver* driver);  // 0x57b96c
    std::uint32_t sortBatches(const video::IVideoDriver* driver, std::uint32_t* order);     // 0x57bc78
    void clear();                                                    // 0x57bd44
    void setBuffer(std::uint32_t index, const boost::intrusive_ptr<CMeshBuffer>& buffer,
                   const boost::intrusive_ptr<video::CMaterial>& material);        // 0x57be34
    std::uint32_t sort(const video::IVideoDriver* driver);           // 0x57c19c (returns the solid batch count)
    std::uint32_t addSegment(std::uint16_t a, std::uint32_t b, std::int16_t c);    // 0x57d98c
    // `segment` is a segment-info index passed through the void*; the centre of the segment's box comes back by value.
    core::vector3d<float> getSegmentCenter(void* segment) const;     // 0x57e90c
    // Not in the original: the host record geometry. The original stride (segmentStride, 44 by default) counts 32-bit pointers;
    // the host record is an SSegment followed by the caller's extra data, whose original byte count is doubled (pointer words).
    std::size_t recordSize() const { return sizeof(SSegment) + (((segmentStride - 44u) * 2u + 7u) & ~7u); }
    SSegment* segmentAt(std::size_t index) { return reinterpret_cast<SSegment*>(segmentData.data() + recordSize() * index); }
    const SSegment* segmentAt(std::size_t index) const {
        return reinterpret_cast<const SSegment*>(segmentData.data() + recordSize() * index);
    }
    std::size_t segmentCount() const { return segmentData.size() / recordSize(); }
    // The extra data that follows the record (the original's bytes +0x2c ..), host aligned.
    void* segmentExtra(std::size_t index) { return reinterpret_cast<std::uint8_t*>(segmentAt(index)) + sizeof(SSegment); }

    std::vector<std::uint8_t> segmentData;        // +0x08
    std::vector<SSegmentInfo> segmentInfos;       // +0x14
    std::vector<SBatch> batches;                  // +0x20
    std::vector<core::aabbox3d<float>> block2c;   // +0x2c the boxes of the segments baked into the batches (sort 0x57c19c resizes it)
    // +0x30 and +0x34 (zeroed by the constructor) are the end and capacity words of the vector at +0x2c.
    core::aabbox3d<float> localBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};     // +0x38
    mutable core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x50 (updateBoundingBox is const)
    std::uint32_t boundingBoxSource = 0;          // +0x68 tested by getBoundingBox
    mutable std::uint32_t boundingBoxStamp = 0xFFFFFFFFu;  // +0x6c os::Timer::TickCount of the last update (-1 initially)
    std::uint32_t segmentStride = 44;             // +0x70
    mutable bool boundingBoxDirty = true;         // +0x74
    ISegmentContentObserver* contentObserver = nullptr;  // +0x78 told by updateSegmentContent (virtual +0x08); the setter is not in this class
};

}  // namespace glitch::scene
