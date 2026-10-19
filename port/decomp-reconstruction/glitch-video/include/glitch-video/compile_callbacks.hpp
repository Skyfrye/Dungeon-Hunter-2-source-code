// glitch::scene::SCompileInfo and the two callback interfaces CSceneManager::compile hands to CBatchDriver
// (+0x238 ISegmentCompileCallback, +0x23C ISplitSegmentChoiceCallback). They live in glitch-video because
// CBatchDriver::thisAppendBatch (0x5a6fe0) is their caller and glitch-video must not include a glitch-scene header.
//
// SCompileInfo is the three-word block at CBatchDriver +0x240: thisAppendBatch stores the streams (+0x240, counted), the
// primitive stream address (+0x244, raw) and the mesh buffer (+0x248, counted) there, and passes the address of the block
// as the `SCompileInfo const&` of both callbacks (`(*cb)(0, 0, this + 0x240)`, asm 0x5a70b0-0x5a70d4 and 0x5a7dc0).
// The mangled name of the implementations (SDefaultSegmentCompileCallback 0x58c118 and
// batch::BatchNodeCompiler::SGameObjectLinkedCallback 0x3efe58) is operator()(CBatchMesh*, void*, SCompileInfo const&).
#pragma once

#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::scene {

class CBatchMesh;
class CMeshBuffer;
class CSceneManager;

struct SCompileInfo {
    boost::intrusive_ptr<const video::CVertexStreams> vertices;  // +0x00
    const video::CPrimitiveStream* primitives = nullptr;         // +0x04, not owned
    boost::intrusive_ptr<const CMeshBuffer> meshBuffer;          // +0x08
    // +0x0c: the fourth word. SDefaultSegmentCompileCallback::operator() (0x58c118) builds a local copy of the three words and
    // stores its scene manager here before it calls the user's callback (Hex-Rays v26 = *(callback + 8)).
    CSceneManager* sceneManager = nullptr;
};

class ISegmentCompileCallback {
public:
    // 0x3ef17c (D1, empty), 0x3ef3c8 (D0).
    virtual ~ISegmentCompileCallback() = default;
    // vtable +0x08.
    virtual void operator()(CBatchMesh* mesh, void* segment, const SCompileInfo& info) = 0;
};

class ISplitSegmentChoiceCallback {
public:
    virtual ~ISplitSegmentChoiceCallback() = default;
    // vtable +0x08. thisAppendBatch tests the result: non-zero lets it cluster the primitives. No implementation of
    // this interface exists in the binary, so the parameter list is the one the call site builds (0, 0, SCompileInfo&).
    virtual bool operator()(CBatchMesh* mesh, void* segment, const SCompileInfo& info) = 0;
};

}  // namespace glitch::scene
