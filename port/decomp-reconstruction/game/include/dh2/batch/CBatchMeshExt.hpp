// glitch::scene::CBatchMeshExt<T>: a CBatchMesh whose every segment record carries one T after the 44-byte base record. The binary has
// one instantiation, CBatchMeshExt<GameObject*> (vtable 0x96bde8 + 8, destructors 0x50cf74 / 0x50d15c): the batch mesh of the game's
// batch node, built by BatchNodeCompiler::Compile (0x50dc84) with the segment stride 0x30 (44 + 4 for the object pointer). Its own
// virtuals are the two segment extra-data slots (save 0x50cf04, load 0x50cf00), both empty, and the destructors.
// Host width: the stride argument is the original's byte count; CBatchMesh::recordSize() widens the extra bytes to pointer words, so
// the object pointer sits at segmentExtra(index).
#pragma once

#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"

namespace glitch::scene {

template <typename T>
class CBatchMeshExt : public CBatchMesh {
public:
    CBatchMeshExt() : CBatchMesh(static_cast<std::uint32_t>(44 + sizeof(std::uint32_t))) {}   // 0x30 in the original (T is a 4-byte pointer there)
    ~CBatchMeshExt() override = default;                                  // 0x50cf74 (D1), 0x50d15c (D0)
    // The two segment extra-data slots, both empty bodies of their own in the binary (vptr+0x40 save 0x50cf04, vptr+0x44 load 0x50cf00).
    void saveSegmentExtraData(const void* /*data*/, io::IWriteFile* /*file*/, bool /*flag*/) const override {}
    void loadSegmentExtraData(void* /*data*/, io::IReadFile* /*file*/, bool /*flag*/) override {}
};

}  // namespace glitch::scene
