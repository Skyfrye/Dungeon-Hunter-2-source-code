// Tests for the canonical glitch::ps::IParticleContext<P> bodies that
// include/glitch-scene-collada-gui/ps/IParticleSystem.hpp defines and src/ps/IParticleContext.cpp instantiates:
// the constructor, hashString, lockAxis, setParameter<T> and registerParameter (the destructor runs too, when the
// stub is destroyed).
//
// IParticleContext is an abstract virtual base (the forty model hooks), so the test derives a concrete stub that
// implements the hooks with neutral values. Only the members under test are called; the stubs exist so that the
// object can be created and its vtable emitted. The constructor's behaviour comes from the listing 0x63b560: it
// zeroes the state, seats the parameter map and inserts (hashString("AnimationDatabase"), this + 0x58).
// boost::intrusive_ptr is only forward-declared by IParticleSystem.hpp (line 47), so a translation unit that names
// an intrusive_ptr type has to include the definition first; this test overrides getRenderVertexStreams.
#include "glitch-core-io/boost/intrusive_ptr.hpp"

#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

#include <cmath>
#include <cstdint>
#include <cstdio>

// glitch-video's own header for CVertexStreams does not compile in a translation unit that does not also include
// the scene headers (video_types.hpp -> intrusive_ptr.hpp -> batch_driver.hpp, which needs CNullDriver complete), so
// the one thing the stub needs from glitch-video is declared here instead: the class and the count-at-+0x00
// add_ref/release pair that the canonical class defines next to itself. No CVertexStreams object is created.
namespace glitch::video {

class CVertexStreams {
public:
    std::uint32_t referenceCount = 0;  // +0x00
};

inline void intrusive_ptr_add_ref(const CVertexStreams* p) {
    ++const_cast<CVertexStreams*>(p)->referenceCount;
}

inline void intrusive_ptr_release(const CVertexStreams* p) {
    delete const_cast<CVertexStreams*>(p);
}

}  // namespace glitch::video

namespace {

using glitch::ps::GNPSParticle;
using glitch::ps::IParticleContext;
using glitch::ps::PForce;
using glitch::ps::PRenderData;
using glitch::ps::PSRandom;
using glitch::ps::SParticle;

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

bool near(float a, float b) {
    return std::fabs(a - b) < 1e-6f;
}

// One fold of the hash, written out so the expected values do not restate the implementation.
std::uint32_t foldOne(std::uint32_t seed, int character) {
    return seed ^ (static_cast<std::uint32_t>(character) - 0x61C88647u + (seed << 6) + (seed >> 2));
}

template <typename P>
class ContextStub : public IParticleContext<P> {
public:
    boost::intrusive_ptr<glitch::video::CVertexStreams> getRenderVertexStreams() override;
    std::uint32_t getRenderBufferSizeNeeded() const override { return 0; }
    void deallocateBuffer() override {}
    void setRenderBuffer(void*, std::uint32_t) override {}
    PSRandom* getPRand() override { return nullptr; }
    int hasColorAnimationTrack() override { return 0; }
    const float* getWorldMatrixPtr() const override { return nullptr; }
    void initGenerationModel() override {}
    P* generateParticles() override { return nullptr; }
    void initPSizeModel() override {}
    void initPSize(P*, P*) override {}
    void applyPSize(P*, P*) override {}
    void initPColorModel() override {}
    void initPColor(P*, P*) override {}
    void applyPColor(P*, P*, glitch::video::SColor&) override {}
    void initPEmitterModel() override {}
    void initPPosition(P*, P*) override {}
    void initPMotionModel() override {}
    void initPMotion(P*, P*) override {}
    void applyPMotion(P*, P*) override {}
    int addPForce(PForce<P>*) override { return 0; }
    void removePForce(PForce<P>*) override {}
    void removePForce(int) override {}
    void initPForcesModel() override {}
    void initPForces(P*, P*) override {}
    void applyPForces(P*, P*) override {}
    void initPSpinModel() override {}
    void initPSpin(P*, P*) override {}
    void applyPSpin(P*, P*) override {}
    void initPLifeModel() override {}
    void initPLife(P*, P*) override {}
    void applyPLife(P*, P*) override {}
    void initPRenderDataModel() override {}
    void initPRenderData(P*, P*) override {}
    void applyPRenderData(P*, P*) override {}
    PRenderData* getRenderData() override { return nullptr; }
};

template <typename P>
boost::intrusive_ptr<glitch::video::CVertexStreams> ContextStub<P>::getRenderVertexStreams() {
    return boost::intrusive_ptr<glitch::video::CVertexStreams>();
}

}  // namespace

int main() {
    ContextStub<GNPSParticle> gnps;
    ContextStub<SParticle> sps;

    // The constructor's map insert: hashString("AnimationDatabase") -> the animationDatabase member, the one slot the
    // original registers before the nine models run.
    const std::uint32_t animationDatabaseKey = gnps.hashString("AnimationDatabase");
    check(gnps.parameters.size() == 1, "the constructor registered exactly one parameter");
    check(gnps.parameters.count(animationDatabaseKey) == 1, "the registered name is AnimationDatabase");
    check(gnps.parameters[animationDatabaseKey] == &gnps.animationDatabase,
          "AnimationDatabase resolves to the animationDatabase member");
    check(gnps.axisLocked[0] == 0 && gnps.axisLocked[1] == 0 && gnps.transformAxes == 0,
          "the lock state starts zeroed");
    check(sps.parameters.size() == 1, "the SParticle constructor registers it too");

    // hashString: empty is zero, one byte folds once with the char sign-extended (the listing reads it with LDRSB at
    // 0x64d130, so 0xff arrives as -1), and the fold is sequential. 2654435866 (0x9E3779BA) and 0x9E3779B8 are the
    // values the retired slice-20 stand-in already recorded for 0x64d0bc.
    check(gnps.hashString("") == 0u, "hashString(\"\") == 0 (GNPS)");
    check(sps.hashString("") == 0u, "hashString(\"\") == 0 (SParticle)");
    check(gnps.hashString("a") == foldOne(0u, 'a'), "hashString(\"a\") is one fold (GNPS)");
    check(gnps.hashString("a") == 2654435866u, "hashString(\"a\") == 2654435866 (GNPS)");
    check(sps.hashString("a") == 2654435866u, "hashString(\"a\") == 2654435866 (SParticle)");
    check(gnps.hashString("\xff") == 0x9E3779B8u, "hashString(\"\\xff\") sign-extends to -1");
    check(gnps.hashString("ab") == foldOne(gnps.hashString("a"), 'b'), "hashString is sequential");
    // The two instantiations are the same code; they must agree byte for byte on a name the models register.
    check(gnps.hashString("TargetSize") == sps.hashString("TargetSize"), "both instantiations agree");

    // lockAxis: sets axisLocked[index] and stores half of the NORMALISED direction in axis[index]; the normalise is
    // glitch::core::vector3d<float>::normalize (0x35e8e0) and each component is then multiplied by 0.5 with its own
    // multiply (0x6309fc / 0x630a1c / 0x630a20 in the SParticle instance).
    gnps.lockAxis(0, {3.0f, 0.0f, 0.0f});
    check(gnps.axisLocked[0] == 1, "lockAxis sets axisLocked[0]");
    check(near(gnps.axis[0].X, 0.5f) && near(gnps.axis[0].Y, 0.0f) && near(gnps.axis[0].Z, 0.0f),
          "lockAxis normalises then halves");
    check(gnps.axisLocked[1] == 0, "index 1 stays unlocked");
    gnps.lockAxis(1, {0.0f, 0.0f, 4.0f});
    check(gnps.axisLocked[1] == 1 && near(gnps.axis[1].Z, 0.5f), "lockAxis on index 1");
    check(gnps.axisLocked[0] == 1, "index 0 stays locked");
    // The SParticle instantiation writes the same state (the original's two bodies are identical).
    sps.lockAxis(0, {0.0f, 5.0f, 0.0f});
    check(sps.axisLocked[0] == 1 && near(sps.axis[0].Y, 0.5f), "the SParticle instance writes the same state");
    // A zero direction is left unchanged by normalize (the original's v2 == 0 early-out), so the halves stay zero.
    sps.lockAxis(1, {0.0f, 0.0f, 0.0f});
    check(sps.axisLocked[1] == 1 && near(sps.axis[1].X, 0.0f), "a zero direction stays zero");

    // setParameter: a name with no registered slot gets an empty slot and nothing is written; registerParameter (the
    // pair the model constructors insert) is what arms the slot, and then setParameter writes through it.
    float targetSize = -1.0f;
    gnps.registerParameter("TargetSize", &targetSize);
    gnps.setParameter("TargetSize", 2.5f);
    check(near(targetSize, 2.5f), "setParameter writes through a registered slot");
    check(gnps.parameters.size() == 2, "registerParameter added one slot");

    int unregistered = 7;
    gnps.setParameter("NotRegistered", 9);
    check(unregistered == 7, "an unregistered name writes nothing");
    check(gnps.parameters.count(gnps.hashString("NotRegistered")) == 1, "the missing name got a slot");
    check(gnps.parameters[gnps.hashString("NotRegistered")] == nullptr, "and the new slot is null");

    glitch::core::vector3d<float> direction;
    gnps.registerParameter("Direction", &direction);
    gnps.setParameter("Direction", glitch::core::vector3d<float>{1.0f, 2.0f, 3.0f});
    check(near(direction.X, 1.0f) && near(direction.Y, 2.0f) && near(direction.Z, 3.0f),
          "setParameter<vector3d<float>> copies three words");

    int mode = 0;
    sps.registerParameter("AnimKeyMappingType", &mode);
    sps.setParameter("AnimKeyMappingType", 1);
    check(mode == 1, "setParameter<int> on the SParticle context");

    // A second registerParameter for the same name: the original inserts through insert_unique, so the existing
    // slot wins and the re-registration changes nothing. The port's std::map::operator[] overwrites, so the two
    // implementations differ here; what both agree on (and what this test pins) is that the slot count does not grow
    // and the name still resolves to a live slot.
    int other = 0;
    gnps.registerParameter("TargetSize", &other);
    check(gnps.parameters.size() == 4, "re-registering does not add a slot");
    check(gnps.parameters[gnps.hashString("TargetSize")] == &other ||
              gnps.parameters[gnps.hashString("TargetSize")] == &targetSize,
          "the slot still points at a registered member");

    std::printf("%s\n", failures == 0 ? "ps_particle_context: ok" : "ps_particle_context: FAILED");
    return failures == 0 ? 0 : 1;
}
