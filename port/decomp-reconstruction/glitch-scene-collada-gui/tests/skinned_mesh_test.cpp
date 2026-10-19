// glitch::collada skinning records and techniques (canonical classes, collada/CSkinnedMesh.hpp and collada/IColladaSkinTechnique.hpp).
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/IColladaSkinTechnique.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

#include <cstdio>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // A new skin buffer entry has no technique and all three technique bytes 0xff.
    {
        SSkinBuffer entry;
        CHECK(entry.technique == nullptr);
        CHECK(entry.requestedTechnique == 0xff && entry.appliedTechnique == 0xff && entry.unk_12 == 0xff);
        CHECK(!entry.buffer && !entry.material && !entry.vertexAttributeMap);
    }

    // The skinning cache starts clean.
    {
        SSkinCache cache;
        CHECK(cache.dirty == 0);
        CHECK(cache.palette.empty() && cache.jointMatrices.empty() && cache.dualQuaternions.empty());
        CHECK(!cache.buffer);
    }

    // The four techniques keep the has-skin-data flag of their constructors; attach stores the node at +0x14.
    {
        SSkin skin;
        SSkinCache cache;
        int tag = 0;
        auto* node = reinterpret_cast<glitch::scene::ISceneNode*>(&tag);
        detail::CColladaHardwareMatrixSkinTechnique matrixSkin(skin, cache, true);
        CHECK(matrixSkin.flag);
        matrixSkin.attach(node);
        CHECK(matrixSkin.attachedNode == node);
        detail::CColladaHardwareQuatSkinTechnique quatSkin(skin, cache, false);
        CHECK(!quatSkin.flag);
        quatSkin.attach(node);
        CHECK(quatSkin.attachedNode == node);
        detail::CColladaHardwareTextureSkinTechnique textureSkin(skin, cache, true);
        textureSkin.attach(node);
        CHECK(textureSkin.attachedNode == node);
        detail::CColladaSoftwareSkinTechnique softwareSkin(skin, cache, true);
        softwareSkin.attach(node);
        CHECK(softwareSkin.attachedNode == node);
    }

    std::printf("%s\n", failures ? "skinned_mesh: FAILED" : "skinned_mesh: ok");
    return failures != 0;
}
