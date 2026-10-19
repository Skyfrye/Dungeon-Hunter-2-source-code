// Test for batch r2a-game-app-pack1-e4281c-0: PlayerLightTweaker::GetIdsFromName (0x40dd7c). The name parsing runs without
// the engine: a bracketed name yields 0xffffffd0 (the original reads the NUL terminator, not the digit), and every other
// name yields -1. Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/POCharacter.hpp"

// Engine assert level. 0 keeps the assert silent, so the test output is only the check lines.
int gAssertLevel = 0;

// Test-only stubs. The POVillager destructor in the batch source emits the POVillager vtable, which names the POCharacter
// and PhysicalObject members below. The test never constructs a physics body, so none of these is ever called; they
// exist only so the test links without the physics engine.
POCharacter::~POCharacter() {}
bool POCharacter::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short,
                                  unsigned short) {
    return false;
}
void POCharacter::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void POCharacter::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void POCharacter::onCollisionEnds(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void POCharacter::onCollisionResults(PhysicalBaseObject*, const Point2D<float>&, bool) {}
PhysicalObject::~PhysicalObject() {}
bool PhysicalObject::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short,
                                     unsigned short) {
    return false;
}
void PhysicalObject::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::onCollisionEnds(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::Update() {}
void PhysicalObject::Draw() const {}
void PhysicalObject::getLookAt(Point2D<float>&) {}
void PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool) {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

}  // namespace

int main() {
    // GetIdsFromName never reads its object, so a null receiver is used for the calls.
    PlayerLightTweaker* self = nullptr;

    // Bracketed names: the digit is read at the NUL terminator, so the result is 0 - '0' = 0xffffffd0.
    Check(self->GetIdsFromName("m_attenuation[0]") == 0xffffffd0u, "bracketed name returns 0xffffffd0");
    Check(self->GetIdsFromName("m_ambientColor[4]") == 0xffffffd0u, "bracketed name with digit 4 returns 0xffffffd0");
    Check(self->GetIdsFromName("[0]") == 0xffffffd0u, "shortest bracketed name returns 0xffffffd0");

    // Names without a trailing "[n]" pattern return -1.
    Check(self->GetIdsFromName("m_fogStart") == 0xffffffffu, "plain name returns -1");
    Check(self->GetIdsFromName("m_lights[2") == 0xffffffffu, "name without closing bracket returns -1");
    Check(self->GetIdsFromName("m_lights2]") == 0xffffffffu, "name without opening bracket returns -1");
    Check(self->GetIdsFromName("ab") == 0xffffffffu, "name shorter than three characters returns -1");
    Check(self->GetIdsFromName("") == 0xffffffffu, "empty name returns -1");

    if (g_failures == 0) {
        std::printf("r2a-game-app-pack1-e4281c-0 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-pack1-e4281c-0 test: %d failure(s)\n", g_failures);
    return 1;
}
