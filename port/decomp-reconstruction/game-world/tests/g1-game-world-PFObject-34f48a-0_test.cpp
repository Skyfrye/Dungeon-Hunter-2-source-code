// Test for batch g1-game-world-PFObject-34f48a-0.
//
// The PFObject constructor and destructor are defined in the batch source, so a real object is built on the stack.
// No PFFloor is constructed: PFFloor's constructor is not in this batch, so the floor-positive branches of
// IsOverAHole, IsInWater and CanPathOn are not exercised here. The path-length sum needs PFGInnerEdge and the
// DBG_ draw functions need the driver or the PFWorld singleton, so only their early-return cases run; the material
// set-up of PFObject::DBG_DrawObstacleForces is reached by the moving-object word and is described at the call.

#include <cstdio>
#include <cstring>

#include "dh2/PFObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/global/Vec3f_K.hpp"

// The batch source references the PFWorld singleton (the destructor calls DropPath and InitObstacle) and Vec3f_K (the
// constructor copies it). The integrator defines those; this test defines them with empty bodies so the object can be
// built and destroyed. The PFWorld constructor and destructor are empty as well.
Point3D<float> Vec3f_K{0.0f, 0.0f, 1.0f};
PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static PFWorld g_testInstance_1{};
PFWorld& PFWorld::s_inst = g_testInstance_1;
void PFWorld::DropPath(PFObject&) {}
void PFWorld::InitObstacle(PFObject&, bool, float, float) {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

}  // namespace

int main() {
    {
        PFObject obj;

        // Constructor defaults (original offsets in the comments).
        EXPECT(obj.m_owner == nullptr);                         // +0x00
        EXPECT(obj.m_flags == 8u);                              // +0x04
        EXPECT(obj.m_radius == 1.0f);                           // +0x08
        EXPECT(obj.m_room == nullptr);                            // +0x0c
        EXPECT(obj.m_floor == nullptr);                         // +0x10
        EXPECT(obj.m_moveFlags == 2u);                          // +0x14
        EXPECT(obj.m_pos.X == 0.0f && obj.m_pos.Y == 0.0f && obj.m_pos.Z == 0.0f);  // +0x18
        EXPECT(obj.m_floorNormal.X == 0.0f && obj.m_floorNormal.Y == 0.0f && obj.m_floorNormal.Z == 1.0f);  // +0x24
        EXPECT(obj.m_obstacleRadius == 1.0f);                   // +0x30
        EXPECT(obj.m_obstacleStrength == 0.0f);                 // +0x34
        EXPECT(obj.m_path.empty());                             // +0x38
        EXPECT(obj.m_pathEnd.X == 0.0f && obj.m_pathEnd.Y == 0.0f && obj.m_pathEnd.Z == 0.0f);  // +0x40
        EXPECT(obj.m_pathSmoothIdx == 0u);                      // +0x7c
        EXPECT(obj.m_waypointDir.X == 0.0f && obj.m_waypointDir.Y == 0.0f && obj.m_waypointDir.Z == 0.0f);  // +0x80
        EXPECT(obj.m_debugName.empty());                        // +0x8c
        EXPECT(obj.unk_9c == static_cast<void*>(&obj.m_debugName));  // +0x9c
        EXPECT(obj.unk_a0 == static_cast<void*>(&obj.m_debugName));  // +0xa0

        EXPECT(obj.m_edge.m_from == nullptr && obj.m_edge.m_to == nullptr);  // +0x50, +0x54
        EXPECT(obj.m_edge.m_weight == 1.0f);                    // +0x58 weight of the embedded edge

        // Flying and swimming are bits 0 and 1 of m_moveFlags. The default word 2 means swimming.
        EXPECT(!obj.IsFlying());
        EXPECT(obj.IsSwimming());
        obj.SetFlying(true);
        EXPECT(obj.IsFlying());
        EXPECT(obj.IsSwimming());
        EXPECT(obj.m_moveFlags == 3u);
        obj.SetSwimming(false);
        EXPECT(obj.IsFlying());
        EXPECT(!obj.IsSwimming());
        EXPECT(obj.m_moveFlags == 1u);
        obj.SetFlying(false);
        EXPECT(!obj.IsFlying());
        EXPECT(!obj.IsSwimming());
        EXPECT(obj.m_moveFlags == 0u);
        obj.SetSwimming(true);
        EXPECT(obj.IsSwimming());
        EXPECT(obj.m_moveFlags == 2u);

        // No floor: the floor queries are false and CanPathOn(nullptr) is false.
        EXPECT(!obj.IsOverAHole());
        EXPECT(!obj.IsInWater());
        EXPECT(!obj.CanPathOn(nullptr));

        // An empty path has length 0.
        EXPECT(obj.GetPathLengthSQ() == 0.0f);

        // The DBG_ draw functions return before they touch the video driver for those flag words. The guard of
        // DBG_DrawObstacleForces is (m_flags bit 1 clear), which is what the three words below set. The other half
        // of the guard, a moving object that is not static (bit 1 set, bit 0 clear), does NOT return: the listing
        // then runs the material set-up, which needs Application::m_device, the driver's
        // CMaterialRendererManager and that manager's createMaterialRenderer. That path cannot run in a host test
        // (the device is null and those two calls are aborting link stubs), so it is not called here.
        obj.DBG_DrawPath();       // empty path
        obj.DBG_DrawObstacle();   // bits 2 and 3 are not both set
        obj.m_flags = 2u;         // bit 1 set, bit 0 clear: the moving-object word, no call (see above)
        EXPECT(obj.m_flags == 2u);
        obj.m_flags = 0u;         // bit 1 clear
        obj.DBG_DrawObstacleForces();
        obj.m_flags = 3u;         // bit 0 set (static)
        obj.DBG_DrawObstacleForces();
        obj.m_flags = 1u;         // static
        obj.DBG_DrawObstacleForces();
    }  // ~PFObject runs here and clears the (empty) path list.

    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("PFObject tests passed\n");
    return 0;
}
