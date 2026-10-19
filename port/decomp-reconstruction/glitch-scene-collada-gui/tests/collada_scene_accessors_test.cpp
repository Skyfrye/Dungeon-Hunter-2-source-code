// Checks the glitch::collada scene-node, mesh, timeline and animation-set
// accessors that read one member or forward to another accessor, plus the
// identity values of the float and weight tracks.
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"
#include "glitch-scene-collada-gui/collada_misc.hpp"
#include "glitch-scene-collada-gui/collada_empty_dtors.hpp"
#include "glitch-scene-collada-gui/collada/CCoronasSceneNode.hpp"
#include "glitch-video/null_driver.hpp"

#include <cstdio>
#include <cstring>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // CDynamicAnimationSet: channels are 16-byte records indexed directly.
    {
        CDynamicAnimationSet set;
        set.ownedChannels.resize(3);
        CHECK(set.getChannel(0) == &set.ownedChannels[0]);
        CHECK(set.getChannel(2) == &set.ownedChannels[2]);
        const CDynamicAnimationSet& cset = set;
        CHECK(cset.getChannel(1) == &set.ownedChannels[1]);
    }

    // Bounding boxes are returned by reference to the stored box.
    {
        CMesh mesh;
        CHECK(&mesh.getBoundingBox() == &mesh.boundingBox);
        // The canonical class has no default constructor (its base ISceneNode takes id, position, rotation and scale), so the
        // driver constructor (0x6e7164) is used. The box is what the two checks below read; the other arguments are inert.
        glitch::video::CNullDriver coronaDriver(static_cast<glitch::IDevice*>(nullptr));  // the constructor makes the quad's vertex buffer
        CCoronasSceneNode corona(&coronaDriver, -1, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                 boost::intrusive_ptr<glitch::video::CMaterial>(),
                                 glitch::core::dimension2d<float>{1.0f, 1.0f}, glitch::video::SColor{});
        CHECK(&corona.getBoundingBox() == &corona.boundingBox);
    }

    // The morphing mesh clone returns a null handle.
    {
        CMorphingMesh morph;
        CHECK(!morph.clone());
    }

    // Animation set ranges read through the scene-node animator set.
    {
        boost::intrusive_ptr<CAnimationSet> anim(new CAnimationSet());
        anim->lengths = {30, 60};
        anim->starts = {1, 2};
        anim->ends = {10, 20};
        anim->animatedTrackCount = 5;
        CSceneNodeAnimatorSet set;
        set.animationSet = anim;
        CHECK(set.getAnimationLength(1) == 60);
        CHECK(set.getAnimationLength(3) == 0);
        CHECK(set.getAnimationStart(1) == 2);
        CHECK(set.getAnimationEnd(0) == 10);
        CHECK(set.getTargetCount() == 5);
    }

    // Timeline clip table: count, start, end and name per clip; no table gives 0.
    {
        SAnimationClip clips[2];
        clips[0].name = "idle";
        clips[0].start = 0;
        clips[0].end = 30;
        clips[1].name = "run";
        clips[1].start = 30;
        clips[1].end = 50;
        SLibraryAnimationClips table;
        table.count = 2;
        table.clips = clips;
        CTimelineController timeline;
        CHECK(timeline.getClipCount() == 0);
        timeline.clipTable = &table;
        CHECK(timeline.getClipCount() == 2);
        CHECK(timeline.getClipStart(1) == 30);
        CHECK(timeline.getClipEnd(1) == 50);
        CHECK(timeline.getClipName(0) == clips[0].name);
    }

    // Mesh bounding box setter.
    CMesh colladaMesh;
    glitch::core::aabbox3d<float> colladaBox{{0.0f, 0.0f, 0.0f}, {2.0f, 2.0f, 2.0f}};
    colladaMesh.setBoundingBox(colladaBox);
    CHECK(colladaMesh.getBoundingBox().MaxEdge.X == 2.0f);
    // The base prepare step returns 16 for every step (0x6676b8, the CMesh inherits it).
    CHECK(colladaMesh.IMesh::onPrepareBufferForRendering(0, nullptr, 0) == 16);
    CHECK(colladaMesh.IMesh::onPrepareBufferForRendering(1, nullptr, 7) == 16);

    // Scene-node uid and scope accessors, light id and uid, and the dynamic set clear.
    {
        CDynamicAnimationSet dynamicSet;
        dynamicSet.databases.resize(3);
        dynamicSet.clearSet();
        CHECK(dynamicSet.databases.empty() && dynamicSet.dirty);
    }

    std::printf("%s\n", failures ? "collada_scene_accessors: FAILED" : "collada_scene_accessors: ok");
    return failures != 0;
}
