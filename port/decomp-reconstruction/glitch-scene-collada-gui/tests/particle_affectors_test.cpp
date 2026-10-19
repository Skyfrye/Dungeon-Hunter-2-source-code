// Checks the glitch::scene particle affector settings: constructor arguments
// land in the members the accessors read, setters write them back, and the
// spin time conversion matches the original's float-to-unsigned truncation.
#include "glitch-scene-collada-gui/particle_affectors.hpp"

#include <cstdio>

using namespace glitch;
using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool sameVec(const core::vector3d<float>& a, const core::vector3d<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

int main() {
    const core::vector3d<float> point{1.f, 2.f, 3.f};
    const core::vector3d<float> other{-1.f, 0.f, 4.f};
    const video::SColor color{0xAABBCCDDu};

    {
        CParticleAttractionAffector a(point, 2.5f, true, false, true, false);
        CHECK(sameVec(a.getPoint(), point));
        CHECK(a.getSpeed() == 2.5f);
        CHECK(a.getAttract());
        CHECK(!a.getAffectX());
        CHECK(a.getAffectY());
        CHECK(!a.getAffectZ());
        a.setPoint(other);
        CHECK(sameVec(a.getPoint(), other));
        a.setAffectZ(true);
        CHECK(a.getAffectZ());
        a.setAttract(false);
        CHECK(!a.getAttract());
        SParticle* none = nullptr;
        a.affect(100, none, 0);
        a.affect(350, none, 0);  // partial: only the time step is computed
    }

    {
        CParticleGravityAffector g(point, 750);
        CHECK(sameVec(g.getGravity(), point));
        CHECK(g.getTimeForceLost() == 750.f);
        g.setTimeForceLost(12.5f);
        CHECK(g.getTimeForceLost() == 12.5f);
        g.setGravity(other);
        CHECK(sameVec(g.getGravity(), other));
    }

    {
        CParticleRotationAffector r(point, other);
        CHECK(sameVec(r.getPivotPoint(), point));
        CHECK(sameVec(r.getSpeed(), other));
        r.setPivotPoint(other);
        CHECK(sameVec(r.getPivotPoint(), other));
        r.setSpeed(point);
        CHECK(sameVec(r.getSpeed(), point));
        SParticle* none = nullptr;
        r.affect(10, none, 0);
        r.affect(20, none, 0);
    }

    {
        CParticleSizeAffector s(4.f, 0.5f, 300, 900);
        CHECK(s.getTargetSize() == 4.f);
        CHECK(s.getVariation() == 0.5f);
        CHECK(s.getGrowForTime() == 300.f);
        CHECK(s.getFadeForTime() == 900.f);
        s.setTargetSize(8.f);
        CHECK(s.getTargetSize() == 8.f);
        s.setVariation(1.f);
        CHECK(s.getVariation() == 1.f);
        s.setGrowForTime(2.f);
        CHECK(s.getGrowForTime() == 2.f);
        s.setFadeForTime(3.f);
        CHECK(s.getFadeForTime() == 3.f);
    }

    {
        CParticleSpinAffector sp(40, 0.25f);
        CHECK(sp.getSpinTime() == 40.f);
        CHECK(sp.getVariation() == 0.25f);
        sp.setSpinTime(12.9f);
        CHECK(sp.getSpinTime() == 12.f);  // truncates toward zero
        sp.setSpinTime(-3.f);
        CHECK(sp.getSpinTime() == 0.f);  // negative input saturates to zero
        sp.setVariation(0.75f);
        CHECK(sp.getVariation() == 0.75f);
    }

    {
        CParticleFadeOutAffector f(color, 500);
        CHECK(f.getTargetColor().color == color.color);
        CHECK(f.getFadeOutTime() == 500.f);
        f.setFadeOutTime(6.f);
        CHECK(f.getFadeOutTime() == 6.f);
        f.setTargetColor(video::SColor{0x01020304u});
        CHECK(f.getTargetColor().color == 0x01020304u);
        SParticle* none = nullptr;
        f.affect(0, none, 0);
    }

    // affect() on real particles (0x6f86cc, 0x6fa69c, 0x6fac14, 0x6fcf6c, 0x6fd63c, 0x6fe600).
    {
        SParticle p;
        p.startTime = 1000;
        p.endTime = 3000;
        p.startVector = {2.f, 0.f, 0.f};
        // Gravity: halfway through timeForceLost the velocity is the mean of the start vector and the gravity.
        CParticleGravityAffector g(core::vector3d<float>{0.f, 4.f, 0.f}, 1000);
        g.affect(1500, &p, 1);
        CHECK(p.vector.X == 1.f && p.vector.Y == 2.f && p.vector.Z == 0.f);
        g.setEnabled(false);
        p.vector = {};
        g.affect(1500, &p, 1);
        CHECK(p.vector.X == 0.f);  // a disabled affector leaves the particle alone

        // Fade out: outside the last fadeOutTime ms nothing changes; inside, the colour blends towards the target.
        p.color = video::SColor{7};
        p.startColor = video::SColor{0xFFFFFFFFu};
        CParticleFadeOutAffector f(video::SColor{0u}, 500);
        f.affect(2000, &p, 1);
        CHECK(p.color.color == 7);
        f.affect(2750, &p, 1);  // 250 ms left of 500: halfway
        CHECK(p.color.color != 7);

        // Size: grows from 0 over growForTime after birth.
        CParticleSizeAffector s(10.f, 0.f, 1000, 0);
        s.affect(1500, &p, 1);
        CHECK(p.size == 5.f);
        s.affect(2500, &p, 1);
        CHECK(p.size == 10.f);

        // Spin: a quarter period after birth the angle is pi / 2.
        CParticleSpinAffector sp(1000, 0.f);
        sp.affect(1250, &p, 1);
        CHECK(p.rotation > 1.5f && p.rotation < 1.6f);

        // Attraction: the first call only records the time; the second moves the particle by dt * speed toward the point.
        SParticle q;
        CParticleAttractionAffector at(core::vector3d<float>{10.f, 0.f, 0.f}, 2.f, true, true, true, true);
        at.affect(1000, &q, 1);
        CHECK(q.pos.X == 0.f);
        at.affect(2000, &q, 1);
        CHECK(q.pos.X == 2.f);
        at.setAttract(false);
        at.affect(3000, &q, 1);
        CHECK(q.pos.X == 0.f);

        // Rotation: a quarter turn per second about the pivot in the YZ plane on the first speed component.
        SParticle r;
        r.pos = {0.f, 1.f, 0.f};
        CParticleRotationAffector ro(core::vector3d<float>{}, core::vector3d<float>{90.f, 0.f, 0.f});
        ro.affect(1000, &r, 1);
        ro.affect(2000, &r, 1);
        CHECK(r.pos.Y < 0.001f && r.pos.Y > -0.001f);
        CHECK(r.pos.Z > 0.99f || r.pos.Z < -0.99f);
    }

    std::printf("%s\n", failures ? "particle_affectors: FAILED" : "particle_affectors: ok");
    return failures != 0;
}
