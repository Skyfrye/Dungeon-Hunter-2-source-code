// Host check for the CMaterialRendererManager layout constants (material_renderer_manager_layout.hpp).
// The checks are the arithmetic the original pseudocode fixes: field offsets inside each record, record
// sizes, table strides and map header spacing. No host struct is laid out here.
#include <cstdio>

#include "glitch-video/material_renderer_manager_layout.hpp"

namespace L = glitch::video::materialrenderermanager_layout;

// Manager object.
static_assert(L::kCollectionNextId == 0x24 && L::kCollectionCount == 0x26, "collection next id and count (insert 0x5dc548)");
static_assert(L::kCollectionEntryBegin == 0x18 && L::kCollectionEntryEnd == 0x1c, "entry vector (createMI 0x5d9af0)");
static_assert(L::kMaterialTypeIdTable + L::kMaterialTypeCount * 2 == 0x4e, "id table 0x2c..0x4d (ctor memset 0x22 bytes)");
static_assert(L::kMaterialTypeCount == 17, "17 material types (loop bound in createMR 0x5d8b28)");
static_assert(L::kNameMapB - L::kNameMapA == L::kNameMapStride, "two name maps at 24-byte spacing (getNameID 0x5dbb60)");
static_assert(L::kNameMapA + L::kNameMapCountOffset == 0x60, "map A count at +0x60 (ctor)");
static_assert(L::kNameMapB + L::kNameMapCountOffset == 0x78, "map B count at +0x78 (ctor)");
static_assert(L::kDriver == 0x28, "driver pointer (ctor, createMR)");
static_assert(L::kCreationState + 4 == L::kCurrentRendererId, "renderer id follows the creation state pointer");
static_assert(L::kCurrentRendererId == 0x94, "current renderer id (ctor writes -1 at +0x94)");

// Renderer instance table and name-map node.
static_assert(L::kInstanceEntryStride == 8 && L::kInstanceEntryNode == 4, "entry is pointer then node iterator");
static_assert(L::kNodeProps == 0x18, "SProperties at node +0x18 (getProperties 0x5d7e20)");
static_assert(L::kNodeId == 0x22, "renderer id at node +0x22 (getId 0x5d98c4, clrUI 0x5d9db8)");
static_assert(L::kNodeManaged == 0x14 && L::kNodeName == 0x10, "name and managed flag (insert 0x5dc548)");

// SCreationState object.
static_assert(L::kStateSize == 0x58, "SCreationState size (beginMR allocates 0x58)");
static_assert(L::kStateTechniqueTail == L::kStateTechniqueList + 4, "technique list sentinel and tail");
static_assert(L::kStatePassTail == L::kStatePassList + 4, "pass list sentinel and tail");
static_assert(L::kStateHolderTail == L::kStateHolderList + 4, "holder list sentinel and tail");
static_assert(L::kStatePinkTail == L::kStatePinkList + 4 && L::kStatePinkCursor == 0x30, "pink list (dtor 0x5dafe8, endT)");
static_assert(L::kStateParamCount == L::kStateParamMap + 0x10, "parameter map count at header +0x10 (dtor 0x5dafe8)");
static_assert(L::kStateBindingTotal + 4 <= L::kStateSize, "last written word inside the state block");
static_assert(L::kStatePassCount == 0x24 && L::kStateTechniqueCount == 0x25, "pass count and technique count bytes");
static_assert(L::kMaxTechniques == 0x20, "beginT refuses above 0x1f");

// STechnique list node (0x14), holder node (0x0c), pass node (0x3c), pink node (0x10).
static_assert(L::kTechniqueNodeSize == 0x14 && L::kTechniqueAllocSize == 0x14, "technique node size (makeTechnique)");
static_assert(L::kTechniquePayload + L::kTechniqueCount == 0x0c, "pass count at node +0x0c (endMR 0x5dddb4)");
static_assert(L::kTechniquePayload + L::kTechniquePasses == 0x10, "pass array at node +0x10 (endMR, makeTechnique)");
static_assert(L::kHolderNodeSize == 0x0c && L::kHolderAllocSize == 0x0c, "holder node size (makeTechnique)");
static_assert(L::kHolderArray + 4 == L::kHolderNodeSize, "holder stores the array at +0x08");
static_assert(L::kPassSize == 52, "SRenderPass is 52 bytes (endMR 52 * i, makeTechnique copy)");
static_assert(L::kPassNodePayload + L::kPassSize == L::kPassNodeSize, "pending pass node = 8 + 52 bytes");
static_assert(L::kPassFlag30 + 1 == L::kPassSize - 3, "last written byte of SRenderPass is +0x30");
static_assert(L::kPassShader == 0x20 && L::kPassBindings == 0x24, "shader and binding table pointers");
static_assert(L::kPinkNodeSize == 0x10 && L::kPinkValue + 2 <= L::kPinkNodeSize, "pink node (dtor 0x10 bytes)");
static_assert(L::kParamNodeValue == L::kParamNodeKey + 4, "parameter map value follows the key");

int main() {
    // The layout is compile-time only; the run just reports that the header compiles and links.
    std::printf("material_renderer_manager_layout: state=0x%x pass=%u technique_node=0x%x\n",
                static_cast<unsigned>(L::kStateSize), static_cast<unsigned>(L::kPassSize),
                static_cast<unsigned>(L::kTechniqueNodeSize));
    return 0;
}
