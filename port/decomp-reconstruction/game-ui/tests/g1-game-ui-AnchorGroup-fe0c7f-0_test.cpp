// Checks the AnchorGroup bodies of batch g1-game-ui-AnchorGroup-fe0c7f-0 that run without the engine: the registry
// (constructor and destructor registration, _AddAnchor, _RemoveAnchor) and the Reset forwarding to AnchorBase::Reset.
// AnchorGroup::_Update is not run here. It reads Application::m_lastTickTime and the position of a live GameObject,
// which need the engine.
// The objects are real AnchorGroup objects. Their base class, GameObject::IsDead and ApplicationGetInstance are not
// linked, so this file defines them as link stubs: the base constructor, destructor and Update do nothing, AnchorBase::Reset
// counts its calls, and the two engine accessors abort if reached. No test path reaches the aborting stubs.
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <memory>

#include "dh2/AnchorGroup.hpp"
#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"

namespace {

int g_baseResetCalls = 0;

}  // namespace

// Link stubs for the functions this batch calls but does not define.
AnchorBase::AnchorBase(GameObject* go, AnchorType type) : m_type(type), m_go(go) {}
AnchorBase::~AnchorBase() {}
void AnchorBase::Reset() { ++g_baseResetCalls; }
void AnchorBase::Update() {}  // the AnchorBase vtable, emitted with the stubs above, refers to it
bool GameObject::IsDead() const { std::abort(); }
Application& ApplicationGetInstance() { std::abort(); }

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// True when the registry holds exactly the n groups of expected, in order.
bool RegistryIs(AnchorGroup* const* expected, std::size_t n) {
    std::size_t i = 0;
    for (AnchorGroup* g : AnchorGroup::s_anchors) {
        if (i >= n || g != expected[i]) {
            return false;
        }
        ++i;
    }
    return i == n;
}

void TestConstructorAndDestructorRegister() {
    AnchorGroup::s_anchors.clear();
    const auto type = static_cast<AnchorBase::AnchorType>(0);

    auto a = std::make_unique<AnchorGroup>(nullptr, type);
    auto b = std::make_unique<AnchorGroup>(nullptr, type);
    auto c = std::make_unique<AnchorGroup>(nullptr, type);
    AnchorGroup* abc[] = {a.get(), b.get(), c.get()};
    Check(RegistryIs(abc, 3), "constructors append the groups in construction order");

    b.reset();
    AnchorGroup* ac[] = {a.get(), c.get()};
    Check(RegistryIs(ac, 2), "the destructor removes only the destroyed group");

    a.reset();
    AnchorGroup* c_only[] = {c.get()};
    Check(RegistryIs(c_only, 1), "destroying the first group keeps the later ones");

    c.reset();
    Check(AnchorGroup::s_anchors.empty(), "the registry is empty after every group is destroyed");
}

void TestAddAndRemoveAnchor() {
    AnchorGroup::s_anchors.clear();
    const auto type = static_cast<AnchorBase::AnchorType>(0);
    auto a = std::make_unique<AnchorGroup>(nullptr, type);
    auto b = std::make_unique<AnchorGroup>(nullptr, type);
    AnchorGroup* ab[] = {a.get(), b.get()};
    Check(RegistryIs(ab, 2), "two constructed groups are registered");

    // _AddAnchor appends, so a second registration of a makes a node for it at the tail.
    AnchorGroup::_AddAnchor(a.get());
    AnchorGroup* aba[] = {a.get(), b.get(), a.get()};
    Check(RegistryIs(aba, 3), "_AddAnchor appends a duplicate node at the tail");

    // _RemoveAnchor removes every node that holds the group.
    AnchorGroup::_RemoveAnchor(a.get());
    AnchorGroup* bonly[] = {b.get()};
    Check(RegistryIs(bonly, 1), "_RemoveAnchor removes every node that holds the group");

    // Removing a group that is no longer registered leaves the registry unchanged.
    AnchorGroup::_RemoveAnchor(a.get());
    Check(RegistryIs(bonly, 1), "removing an absent group does not change the registry");

    // A group constructed while another is registered goes to the tail.
    auto c = std::make_unique<AnchorGroup>(nullptr, type);
    AnchorGroup* bc[] = {b.get(), c.get()};
    Check(RegistryIs(bc, 2), "a group constructed later is appended after the others");

    b.reset();
    c.reset();
    Check(AnchorGroup::s_anchors.empty(), "the registry is empty at the end of the test");
}

void TestResetForwardsToBase() {
    AnchorGroup::s_anchors.clear();
    const auto type = static_cast<AnchorBase::AnchorType>(0);
    AnchorGroup g(nullptr, type);
    const int before = g_baseResetCalls;
    g.Reset();
    Check(g_baseResetCalls == before + 1, "AnchorGroup::Reset calls AnchorBase::Reset once");
}

}  // namespace

int main() {
    TestConstructorAndDestructorRegister();
    TestAddAndRemoveAnchor();
    TestResetForwardsToBase();
    if (g_failures == 0) {
        std::printf("AnchorGroup batch test: all checks passed\n");
        return 0;
    }
    std::printf("AnchorGroup batch test: %d failure(s)\n", g_failures);
    return 1;
}
