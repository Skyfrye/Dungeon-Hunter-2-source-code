// Checks the glitch::scene particle emitter settings: constructor arguments
// land in the members the accessors read, and the setters write them back.
#include "glitch-scene-collada-gui/particle_emitters.hpp"

#include <cstdio>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-core-io/os/randomizer.hpp"

using namespace glitch;
using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool sameVec(const core::vector3d<float>& a, const core::vector3d<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

int main() {
    const core::vector3d<float> center{1.f, 2.f, 3.f};
    const core::vector3d<float> normal{0.f, 1.f, 0.f};
    const core::vector3d<float> direction{0.f, 0.03f, 0.f};
    const video::SColor minColor{0x11223344u};
    const video::SColor maxColor{0x55667788u};

    {
        CParticleCylinderEmitter e(center, 5.f, normal, 9.f, true, direction, 20, 40, minColor,
                                   maxColor, 2000, 4000, 15);
        CHECK(sameVec(e.getCenter(), center));
        CHECK(sameVec(e.getNormal(), normal));
        CHECK(e.getRadius() == 5.f);
        CHECK(e.getLength() == 9.f);
        CHECK(e.getOutlineOnly());
        CHECK(sameVec(e.getDirection(), direction));
        CHECK(e.getMinParticlesPerSecond() == 20);
        CHECK(e.getMaxParticlesPerSecond() == 40);
        CHECK(e.getMinStartColor().color == minColor.color);
        CHECK(e.getMaxStartColor().color == maxColor.color);
        CHECK(e.getMinLifeTime() == 2000);
        CHECK(e.getMaxLifeTime() == 4000);
        CHECK(e.getMaxAngleDegrees() == 15);

        e.setCenter({4.f, 5.f, 6.f});
        CHECK(e.getCenter().X == 4.f && e.getCenter().Z == 6.f);
        e.setRadius(0.5f);
        CHECK(e.getRadius() == 0.5f);
        e.setOutlineOnly(false);
        CHECK(!e.getOutlineOnly());
        e.setMaxParticlesPerSecond(7);
        CHECK(e.getMaxParticlesPerSecond() == 7);
        e.setMinStartColor(maxColor);
        CHECK(e.getMinStartColor().color == maxColor.color);
        SParticle* out = nullptr;
        // The rate is drawn with rand() % (max - min), unsigned as in the binary; min 20 > max 7 makes that a huge
        // modulus, so pin the seed at 0 (rand() then returns 0 and the rate is the minimum, 20 per second).
        glitch::os::Randomizer::Seed = 0;
        // Not enough time has passed for a particle: nothing is produced and the time is kept.
        CHECK(e.emitt(0, 1, out) == 0);
        // Enough time for the rate (at most 2 * max rate particles): the cylinder emits and hands out its array.
        const int n = e.emitt(5000, 2000, out);
        CHECK(n > 0 && n <= 2 * 7);
        CHECK(out != nullptr);
        CHECK(out[0].startTime == 5000 && out[0].endTime >= 5000 + 2000 && out[0].endTime <= 5000 + 4000);
        CHECK(out[0].startVector.X == out[0].vector.X);
    }

    {
        CParticlePointEmitter p(direction, 3, 9, minColor, maxColor, 100, 300, -4);
        CHECK(sameVec(p.getDirection(), direction));
        CHECK(p.getMinParticlesPerSecond() == 3);
        CHECK(p.getMaxParticlesPerSecond() == 9);
        CHECK(p.getMinStartColor().color == minColor.color);
        CHECK(p.getMaxStartColor().color == maxColor.color);
        CHECK(p.getMinLifeTime() == 100);
        CHECK(p.getMaxLifeTime() == 300);
        CHECK(p.getMaxAngleDegrees() == -4);
        p.setDirection(normal);
        CHECK(sameVec(p.getDirection(), normal));
        p.setMinParticlesPerSecond(1);
        CHECK(p.getMinParticlesPerSecond() == 1);
    }

    {
        core::aabbox3d<float> box;
        box.MinEdge = {-1.f, -1.f, -1.f};
        box.MaxEdge = {1.f, 2.f, 3.f};
        CParticleBoxEmitter b(box, direction, 5, 6, minColor, maxColor, 10, 20, 90);
        CHECK(b.getBox().MinEdge.X == -1.f);
        CHECK(b.getBox().MaxEdge.Z == 3.f);
        CHECK(sameVec(b.getDirection(), direction));
        CHECK(b.getMinParticlesPerSecond() == 5);
        CHECK(b.getMaxParticlesPerSecond() == 6);
        CHECK(b.getMinLifeTime() == 10);
        CHECK(b.getMaxLifeTime() == 20);
        CHECK(b.getMaxAngleDegrees() == 90);
        core::aabbox3d<float> other;
        other.MinEdge = {0.f, 0.f, 0.f};
        other.MaxEdge = {8.f, 8.f, 8.f};
        b.setBox(other);
        CHECK(b.getBox().MaxEdge.X == 8.f);
        b.setMaxStartColor(minColor);
        CHECK(b.getMaxStartColor().color == minColor.color);
    }

    {
        CParticleRingEmitter r(center, 2.f, 0.25f, direction, 1, 2, minColor, maxColor, 7, 8, 0);
        CHECK(sameVec(r.getCenter(), center));
        CHECK(r.getRadius() == 2.f);
        CHECK(r.getRingThickness() == 0.25f);
        CHECK(sameVec(r.getDirection(), direction));
        CHECK(r.getMinParticlesPerSecond() == 1);
        CHECK(r.getMaxParticlesPerSecond() == 2);
        CHECK(r.getMinLifeTime() == 7);
        CHECK(r.getMaxLifeTime() == 8);
        CHECK(r.getMaxAngleDegrees() == 0);
        r.setRingThickness(1.5f);
        CHECK(r.getRingThickness() == 1.5f);
        r.setCenter(normal);
        CHECK(sameVec(r.getCenter(), normal));
    }

    {
        CParticleSphereEmitter s(center, 3.f, direction, 4, 8, minColor, maxColor, 50, 60, 45);
        CHECK(sameVec(s.getCenter(), center));
        CHECK(s.getRadius() == 3.f);
        CHECK(sameVec(s.getDirection(), direction));
        CHECK(s.getMinParticlesPerSecond() == 4);
        CHECK(s.getMaxParticlesPerSecond() == 8);
        CHECK(s.getMinStartColor().color == minColor.color);
        CHECK(s.getMaxStartColor().color == maxColor.color);
        CHECK(s.getMinLifeTime() == 50);
        CHECK(s.getMaxLifeTime() == 60);
        CHECK(s.getMaxAngleDegrees() == 45);
        s.setRadius(6.f);
        CHECK(s.getRadius() == 6.f);
        s.setDirection(normal);
        CHECK(sameVec(s.getDirection(), normal));
    }

    {
        boost::intrusive_ptr<const IMesh> none(new CMesh);
        CParticleMeshEmitter m(none, true, direction, 0.25f, 2, true, 9, 10, minColor, maxColor, 300,
                               600, 30);
        CHECK(m.getMesh().get() == none.get());
        CHECK(m.meshBufferCount == 0 && m.totalVertexCount == 0);
        CHECK(m.isUsingNormalDirection());
        CHECK(m.getUseNormalDirection());
        CHECK(sameVec(m.getDirection(), direction));
        CHECK(m.getNormalDirectionModifier() == 0.25f);
        CHECK(m.getEveryMeshVertex());
        CHECK(m.getMBNumber() == 2);
        CHECK(m.getMinParticlesPerSecond() == 9);
        CHECK(m.getMaxParticlesPerSecond() == 10);
        CHECK(m.getMinStartColor().color == minColor.color);
        CHECK(m.getMaxStartColor().color == maxColor.color);
        CHECK(m.getMinLifeTime() == 300);
        CHECK(m.getMaxLifeTime() == 600);
        CHECK(m.getMaxAngleDegrees() == 30);
        m.setUseNormalDirection(false);
        CHECK(!m.isUsingNormalDirection());
        m.setEveryMeshVertex(false);
        CHECK(!m.getEveryMeshVertex());
        m.setNormalDirectionModifier(2.f);
        CHECK(m.getNormalDirectionModifier() == 2.f);
        m.setMaxParticlesPerSecond(12);
        CHECK(m.getMaxParticlesPerSecond() == 12);
        SParticle* out = nullptr;
        CHECK(m.emitt(0, 10, out) == 0);
    }

    // The animated-mesh-scene-node emitter needs a live IAnimatedMeshSceneNode (its constructor asks the node for its mesh), so it is
    // not constructed here.

    // Point emitter: a single embedded particle is handed out once the interval has passed.
    {
        CParticlePointEmitter pe(core::vector3d<float>{0.f, 1.f, 0.f}, 10, 10, minColor, maxColor, 500, 500, 0);
        SParticle* out = nullptr;
        CHECK(pe.emitt(100, 50, out) == 0);
        CHECK(pe.emitt(200, 80, out) == 1);  // 130 ms > 1000 / 10
        CHECK(out == &pe.particle);
        CHECK(out->startTime == 200 && out->endTime == 700 && out->vector.Y == 1.f && out->startVector.Y == 1.f);
    }

    // Box emitter: particles start inside the box with the emission direction.
    {
        core::aabbox3d<float> box;
        box.MinEdge = {-1.f, -2.f, -3.f};
        box.MaxEdge = {1.f, 2.f, 3.f};
        CParticleBoxEmitter be(box, normal, 10, 10, minColor, maxColor, 100, 100, 0);
        SParticle* out = nullptr;
        const int n = be.emitt(1000, 1000, out);  // 1000 ms at 10 per second: 10 particles
        CHECK(n == 10);
        bool inside = true;
        for (int i = 0; i < n; ++i) {
            inside = inside && out[i].pos.X >= -1.f && out[i].pos.X <= 1.f && out[i].pos.Y >= -2.f && out[i].pos.Y <= 2.f &&
                     out[i].pos.Z >= -3.f && out[i].pos.Z <= 3.f && out[i].vector.Y == 1.f && out[i].endTime == 1100;
        }
        CHECK(inside);
    }

    // Ring and sphere emitters produce particles around their centre.
    {
        CParticleRingEmitter re(center, 5.f, 1.f, normal, 4, 4, minColor, maxColor, 10, 10, 0);
        SParticle* out = nullptr;
        CHECK(re.emitt(1000, 1000, out) == 4);
        CParticleSphereEmitter se(center, 5.f, normal, 4, 4, minColor, maxColor, 10, 10, 0);
        CHECK(se.emitt(1000, 1000, out) == 4);
        CHECK(out != nullptr);
    }

    std::printf("%s\n", failures ? "particle_emitters: FAILED" : "particle_emitters: ok");
    return failures != 0;
}
