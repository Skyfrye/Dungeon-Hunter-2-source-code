// Test for batch g1-game-world-ObjectHandle-4d223d-0 (part 1 of 1).
//
// Covered: the default and object constructors (the object path copies the three words of GetHandle), the cache hit of
// GetObject and its const thunk, the id-0 case, the null results of the GameObject and Character conversions, and the
// Container* conversion on a zero-filled object whose m_goId (+0xf4) is set.
//
// Link stubs defined here, because the batch source calls them and their owners are not linked in this test:
//   ObjectBase::GetHandle   returns g_stubHandle and counts its calls
//   dword_99F764            the ObjectManager instance, pointed at zero-filled storage with m_generation set
//   gAssertLevel            0 (no assert output)
// The object and manager storage is zero-filled and never constructed. Only plain data members are read, and no
// virtual function is called on it.
//
// Not covered: the cache-miss lookup in GetObject (partial, waits on ObjectListItem), and the GameObject and Character
// conversions on a non-null object (they call IsGameObject and IsCharacter through the vtable).

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/Container.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

// Engine assert level (core-platform/memory.cpp is not linked here).
int gAssertLevel = 0;

// The ObjectManager instance global. The ObjectManager batches define it in the full build.
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// ObjectBase::GetHandle stub state.
ObjectHandle g_stubHandle;
int g_stubCalls = 0;

alignas(16) unsigned char g_managerStorage[sizeof(ObjectManager)];
alignas(16) unsigned char g_objectStorage[sizeof(ObjectBase)];
unsigned char g_cachedTag = 0;  // stands in for a cached object pointer; never dereferenced

ObjectBase* CachedTag() { return reinterpret_cast<ObjectBase*>(&g_cachedTag); }

void TestDefaultState() {
    ObjectHandle h;
    EXPECT(h.m_id == 0);
    EXPECT(h.m_cached == nullptr);
    EXPECT(h.m_generation == 0xFFFFFFFFu);

    ObjectHandle fromNull(static_cast<ObjectBase*>(nullptr));
    EXPECT(fromNull.m_id == 0);
    EXPECT(fromNull.m_cached == nullptr);
    EXPECT(fromNull.m_generation == 0xFFFFFFFFu);
    EXPECT(g_stubCalls == 0);
}

void TestConstructFromObject() {
    g_stubHandle.m_id = 7;
    g_stubHandle.m_cached = CachedTag();
    g_stubHandle.m_generation = 3;
    g_stubCalls = 0;

    ObjectHandle h(reinterpret_cast<ObjectBase*>(g_objectStorage));
    EXPECT(g_stubCalls == 1);
    EXPECT(h.m_id == 7);
    EXPECT(h.m_cached == CachedTag());
    EXPECT(h.m_generation == 3);
}

void TestGetObject() {
    // The manager generation is 5 (set in main).
    ObjectHandle h;
    h.m_id = 7;
    h.m_cached = CachedTag();
    h.m_generation = 5;
    EXPECT(h.GetObject(false) == CachedTag());
    EXPECT(h.GetObject(true) == CachedTag());

    const ObjectHandle& constRef = h;
    EXPECT(constRef.GetObject(false) == CachedTag());  // const thunk forwards to the non-const form

    // An id of 0 resolves to null even when a cached pointer is present.
    ObjectHandle zero;
    zero.m_cached = CachedTag();
    zero.m_generation = 5;
    EXPECT(zero.GetObject(false) == nullptr);
    EXPECT(zero.GetObject(true) == nullptr);  // assert output is off at level 0
}

void TestConversionsWithoutObject() {
    ObjectHandle zero;
    EXPECT(zero.operator GameObject const*() == nullptr);
    EXPECT(zero.operator GameObject*() == nullptr);
    EXPECT(zero.operator Character const*() == nullptr);
    EXPECT(zero.operator Character*() == nullptr);
}

void TestContainerConversion() {
    ObjectBase* object = reinterpret_cast<ObjectBase*>(g_objectStorage);
    std::memset(g_objectStorage, 0, sizeof g_objectStorage);

    ObjectHandle h;
    h.m_id = 9;
    h.m_cached = object;
    h.m_generation = 5;

    // m_goId (+0xf4) == 21 is Container: the object comes back as Container*.
    object->m_goId = static_cast<ObjectBase::GO_IDS>(21);
    Container* container = h;
    EXPECT(container == static_cast<Container*>(object));

    // Any other id gives null.
    object->m_goId = static_cast<ObjectBase::GO_IDS>(5);
    Container* other = h;
    EXPECT(other == nullptr);

    // No object gives null.
    ObjectHandle zero;
    Container* none = zero;
    EXPECT(none == nullptr);
}

}  // namespace

// Link stub for ObjectBase::GetHandle (the non-const overload the batch source calls).
ObjectHandle ObjectBase::GetHandle() {
    ++g_stubCalls;
    return g_stubHandle;
}

int main() {
    ObjectManager* manager = reinterpret_cast<ObjectManager*>(g_managerStorage);
    std::memset(g_managerStorage, 0, sizeof g_managerStorage);
    manager->m_generation = 5;
    dword_99F764 = manager;

    TestDefaultState();
    TestConstructFromObject();
    TestGetObject();
    TestConversionsWithoutObject();
    TestContainerConversion();

    if (g_failures == 0) {
        std::printf("ObjectHandle test: all checks passed\n");
        return 0;
    }
    std::printf("ObjectHandle test: %d failure(s)\n", g_failures);
    return 1;
}
