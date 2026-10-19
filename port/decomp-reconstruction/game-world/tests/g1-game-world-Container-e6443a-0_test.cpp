// Test for batch g1-game-world-Container-e6443a-0 (part 1 of 2).
//
// The Container constructor is not linked, so the object storage is zero-filled. Only non-virtual calls are made
// (qualified names for the virtual getters, so no vtable dispatch happens). The visual and its scene node are
// zero-filled storage too; only the fields the bodies touch are set.
//
// GameObject::Serialize and GameObject::MeetCondition are stubs here. IStreamBase is a fake subclass that records
// the bytes written, and writeAs<unsigned char> is instantiated in this file.
//
// Not covered: Spawn and __Callback when they call PlayClip (that needs a constructed AnimController), and the
// partial bodies (__Callback's getLoop branch, Deserialize).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "dh2/Container.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_gameObjectSerializeCalls = 0;
int g_meetConditionCalls = 0;
bool g_meetConditionResult = false;

// Records what Container::Serialize writes. Every pure virtual, and the two non-pure ones, are overridden so that
// no engine definition is needed.
class FakeStream : public IStreamBase {
public:
    ~FakeStream() override = default;
    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return false; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void*, std::uint64_t) const override { return 0; }
    std::uint64_t read(void*, std::uint64_t) override { return 0; }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        const auto* p = static_cast<const unsigned char*>(src);
        bytes.insert(bytes.end(), p, p + n);
        return n;
    }
    void seek(std::uint64_t) override {}
    std::uint64_t tell() const override { return bytes.size(); }
    void skip(std::uint64_t) override {}
    void seekWrite(std::uint64_t) override {}
    std::uint64_t tellWrite() const override { return bytes.size(); }

    std::vector<unsigned char> bytes;
};

// Zero-filled storage, never constructed: only plain data members are read and written here.
alignas(Container) unsigned char g_containerStorage[sizeof(Container)];
alignas(VisualObject) unsigned char g_visualStorage[sizeof(VisualObject)];
alignas(RootSceneNode) unsigned char g_nodeStorage[sizeof(RootSceneNode)];

Container* Obj() {
    return reinterpret_cast<Container*>(g_containerStorage);
}

float FloatFromBits(std::uint32_t bits) {
    float f = 0.0f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

}  // namespace

// Stubs for the GameObject members that Container.cpp calls non-virtually.
void GameObject::Serialize(IStreamBase* stream) {
    (void)stream;
    ++g_gameObjectSerializeCalls;
}

bool GameObject::MeetCondition() const {
    ++g_meetConditionCalls;
    return g_meetConditionResult;
}

// IStreamBase has out-of-line virtual members in the engine. Defining the destructor here makes this file emit
// IStreamBase's vtable, which needs the two non-pure members as well. Both are unused by the test.
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) {
    (void)pos;
}
std::uint64_t IStreamBase::tellWrite() const {
    return 0;
}

// Container::Serialize calls writeAs<unsigned char>, which is defined in the engine. Define it here for the test.
template <typename T>
void IStreamBase::writeAs(const T& value) {
    write(&value, sizeof(T));
}
template void IStreamBase::writeAs<unsigned char>(const unsigned char&);

int main() {
    std::memset(g_containerStorage, 0, sizeof g_containerStorage);
    std::memset(g_visualStorage, 0, sizeof g_visualStorage);
    std::memset(g_nodeStorage, 0, sizeof g_nodeStorage);
    Container* c = Obj();

    // Constant getters.
    EXPECT(c->Container::IsUpdatable() == false);
    EXPECT(c->Container::GetScript() == nullptr);
    EXPECT(c->Container::GetVisual() == -1);
    EXPECT(c->Container::GetDataId() == -1);
    EXPECT(c->Container::GetLoot() == -1);
    EXPECT(c->Container::GetSound() == -1);
    EXPECT(c->Container::KeepPhysics() == false);
    EXPECT(c->Container::GetLootFixedNumPowers() == -1);
    EXPECT(c->Container::IsAnimated() == true);
    EXPECT(c->Container::IsObstacle() == true);

    // The float getters return the bit patterns 0x43160000 (150.0f) and 0x41200000 (10.0f).
    EXPECT(c->Container::GetObstacleRadius() == FloatFromBits(0x43160000u));
    EXPECT(c->Container::GetObstacleRadius() == 150.0f);
    EXPECT(c->Container::GetObstacleStrength() == FloatFromBits(0x41200000u));
    EXPECT(c->Container::GetObstacleStrength() == 10.0f);

    // IsDead: true only for ACTIVATE (3) and OPENED (4). The unsigned compare also rejects 5 and above.
    const int deadExpect[] = {0, 0, 0, 1, 1, 0, 0};
    for (int s = 0; s < 7; ++s) {
        c->m_state = static_cast<Container::State>(s);
        EXPECT(c->Container::IsDead() == (deadExpect[s] != 0));
    }

    // IsInteractive: needs state IDLE and a clear m_markedForDeletion (+0x81). The second argument is unused.
    c->m_state = Container::STATE_IDLE;
    c->m_markedForDeletion = 0;
    EXPECT(c->Container::IsInteractive(nullptr) == true);
    c->m_markedForDeletion = 1;
    EXPECT(c->Container::IsInteractive(nullptr) == false);
    c->m_markedForDeletion = 0;
    c->m_state = Container::STATE_PRESPAWN;
    EXPECT(c->Container::IsInteractive(nullptr) == false);
    c->m_state = Container::STATE_ACTIVATE;
    EXPECT(c->Container::IsInteractive(nullptr) == false);
    c->m_state = Container::STATE_OPENED;
    EXPECT(c->Container::IsInteractive(nullptr) == false);

    // Visual and node: the node's flags word is ISceneNode::flags (+0x11c). Only the 0x400 bit is set or cleared here.
    VisualObject* visual = reinterpret_cast<VisualObject*>(g_visualStorage);
    RootSceneNode* node = reinterpret_cast<RootSceneNode*>(g_nodeStorage);
    visual->m_node = node;
    c->m_visualObject = visual;

    node->flags = 0x200u;
    c->Container::SetState(Container::STATE_IDLE);
    EXPECT(c->m_state == Container::STATE_IDLE);
    EXPECT(node->flags == 0x600u);  // 0x400 set for IDLE, 0x200 kept

    c->Container::SetState(Container::STATE_ACTIVATE);
    EXPECT(c->m_state == Container::STATE_ACTIVATE);
    EXPECT(node->flags == 0x200u);  // 0x400 cleared for ACTIVATE

    c->Container::SetState(Container::STATE_OPENED);
    EXPECT(c->m_state == Container::STATE_OPENED);
    EXPECT(node->flags == 0x600u);  // 0x400 set for OPENED

    c->Container::SetState(Container::STATE_PRESPAWN);
    EXPECT(c->m_state == Container::STATE_PRESPAWN);
    EXPECT(node->flags == 0x600u);

    // Spawn does nothing without a visual, or when the state is not PRESPAWN (no animation call happens).
    c->m_visualObject = nullptr;
    c->m_state = Container::STATE_PRESPAWN;
    c->Container::Spawn();
    EXPECT(c->m_state == Container::STATE_PRESPAWN);

    c->m_visualObject = visual;
    c->m_state = Container::STATE_IDLE;
    node->flags = 0x200u;
    c->Container::Spawn();
    EXPECT(c->m_state == Container::STATE_IDLE);
    EXPECT(node->flags == 0x200u);

    // IsZonable forwards to GameObject::MeetCondition.
    g_meetConditionResult = true;
    g_meetConditionCalls = 0;
    EXPECT(c->Container::IsZonable() == true);
    EXPECT(g_meetConditionCalls == 1);
    g_meetConditionResult = false;
    EXPECT(c->Container::IsZonable() == false);
    EXPECT(g_meetConditionCalls == 2);

    // Serialize writes the GameObject part, then the state as one byte.
    FakeStream stream;
    g_gameObjectSerializeCalls = 0;
    c->m_state = Container::STATE_OPENED;
    c->Container::Serialize(&stream);
    EXPECT(g_gameObjectSerializeCalls == 1);
    EXPECT(stream.bytes.size() == 1);
    EXPECT(stream.bytes.size() == 1 && stream.bytes[0] == 4);

    if (g_failures == 0) {
        std::printf("Container part 1: all checks passed\n");
        return 0;
    }
    std::printf("Container part 1: %d check(s) failed\n", g_failures);
    return 1;
}
