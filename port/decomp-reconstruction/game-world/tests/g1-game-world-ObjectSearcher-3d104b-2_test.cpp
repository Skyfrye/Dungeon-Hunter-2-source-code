// Test for batch g1-game-world-ObjectSearcher-3d104b-2 (fix pass).
//
// Covers the cone admission of TargetList::Search (0x4a2f34): the float pi limit 0x40490FDB and the NaN cases, which
// the original admits. The batch source is included so that the anonymous-namespace helper ConeAdmits and the
// constant kFloatPi are visible. The link stubs below stand in for the engine and for other batches. No GameObject is
// created or dereferenced; only the admission rule runs.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <limits>
#include <string>

#include "../src/g1-game-world-ObjectSearcher-3d104b-2.cpp"

// ---- Link stubs: engine and other-batch definitions the batch source references. None is reached by the tests. ----

int gAssertLevel = 0;

bool ObjectSearcher::TargetSorter::_sortNoSort(const TargetInfo&, const TargetInfo&) {
    return false;
}

bool ObjectSearcher::TargetSorter::_sortClosest(const TargetInfo&, const TargetInfo&) {
    return false;
}

bool ObjectSearcher::TargetSorter::_sortFrontal(const TargetInfo&, const TargetInfo&) {
    return false;
}

ObjectSearcher::IObjectList::~IObjectList() {}

ObjectSearcher::BackupObjectList::~BackupObjectList() {}

// The vtable of BackupObjectList (emitted here, since this TU defines its key function) refers to these, which batch
// g1-game-world-ObjectSearcher-3d104b-1 defines. The cone tests never reach them.
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() {
    return true;
}
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() {
    return 0;
}
// DELIBERATE TEST STUB, not a real cursor. The batch source is included above, so this definition replaces the
// library's real ObjectSearcher::BackupObjectList::Get (src/g1-game-world-ObjectSearcher-3d104b-1.cpp) for the whole
// executable. Nothing here calls it: the checks exercise only ConeAdmits and kFloatPi, and no test in the tree calls
// TargetList::Search or SearchRect. A later check that walks a list through Search/SearchRect would receive null
// from this stub and fault in the candidate test; the real Get returns the object the cursor points at.
GameObject* ObjectSearcher::BackupObjectList::Get() {
    return nullptr;
}

void ObjectSearcher::TargetList::SetRefObject(GameObject* object) {
    m_refObject = object;
    m_refCharacter = nullptr;
}

bool ObjectSearcher::TargetList::_IsGameObjectValid(GameObject*) {
    return false;
}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectHandle ObjectBase::GetHandle() {
    return ObjectHandle();
}

ObjectHandle::operator Character*() {
    return nullptr;
}

DebugSwitches* DebugSwitches::GetInstance() {
    // Storage only: the stubs below never touch members, and the object is never destroyed.
    alignas(DebugSwitches) static unsigned char storage[sizeof(DebugSwitches)];
    return reinterpret_cast<DebugSwitches*>(storage);
}

void DebugSwitches::load() {}

bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

void GameObject::GetLookAtVec(Point3D<float>&) const {}

const Point3D<float>& GameObject::GetTargetPosition() const {
    static const Point3D<float> origin{0.0f, 0.0f, 0.0f};
    return origin;
}

int CharStateMachine::SM_GetState() const {
    return -1;
}

bool CharAI::AI_IsEnemy(const GameObject*) const {
    return false;
}

bool CharAI::AI_IsFriend(const GameObject*) const {
    return false;
}

bool CharAI::AI_IsNeutral(const GameObject*) const {
    return false;
}

float CharAI::AI_GetMeleeRadius() const {
    return 0.0f;
}

bool Character::IsMerchant() const {
    return false;
}

bool Character::IsCleaner() const {
    return false;
}

// ---- Tests ----

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

std::uint32_t BitsOf(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

void TestFloatPiConstant() {
    // The original compares maxAngle with the float 0x40490FDB (float pi). The double literal 3.1416 rounds to the
    // float 0x40490FF9, a different limit, so the two must stay distinct.
    EXPECT(BitsOf(kFloatPi) == 0x40490FDBu);
    EXPECT(BitsOf(3.1416f) == 0x40490FF9u);
    EXPECT(BitsOf(kFloatPi) != BitsOf(3.1416f));
}

void TestConeAdmission() {
    const float nan = std::numeric_limits<float>::quiet_NaN();
    const float infinity = std::numeric_limits<float>::infinity();

    // Below float pi and below the angle: skipped.
    EXPECT(!ConeAdmits(0.5f, 1.0f));
    EXPECT(!ConeAdmits(std::nextafter(kFloatPi, 0.0f), 3.2f));

    // The angle is within maxAngle: admitted.
    EXPECT(ConeAdmits(1.0f, 0.5f));
    EXPECT(ConeAdmits(1.0f, 1.0f));

    // maxAngle at float pi (0x40490FDB, written as a literal here) admits any angle: !(maxAngle < pi) is true. Had the
    // limit been the double literal 3.1416 (0x40490FF9), maxAngle would fall below it and this candidate would be
    // rejected, so this case separates the two constants.
    EXPECT(ConeAdmits(3.14159274f, 3.2f));
    EXPECT(ConeAdmits(infinity, 0.1f));

    // A NaN maxAngle: fcmplt(NaN, pi) is false, so the candidate is admitted.
    EXPECT(ConeAdmits(nan, 0.1f));
    EXPECT(ConeAdmits(nan, nan));

    // A NaN angle (acosf of a zero-length offset or direction): fcmplt(maxAngle, NaN) is false, so admitted.
    EXPECT(ConeAdmits(0.5f, nan));
}

}  // namespace

int main() {
    TestFloatPiConstant();
    TestConeAdmission();
    if (g_failures == 0) {
        std::printf("g1-game-world-ObjectSearcher-3d104b-2 tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
