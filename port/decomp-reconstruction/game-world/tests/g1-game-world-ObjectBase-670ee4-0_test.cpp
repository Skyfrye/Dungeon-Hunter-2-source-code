// Test for batch g1-game-world-ObjectBase-670ee4-0.
//
// No ObjectBase is constructed (its constructor belongs to another batch), so the storage is zero-filled and only
// qualified (non-virtual) calls are made. The virtual transitions in SetEnable (Enabled and Disabled) run only on
// the unchanged path, which makes no call. The stream pair runs against a small IStreamBase subclass. The stubs
// below satisfy the link for the symbols the source refers to but these checks do not run (Application, the
// ConditionData methods, the stream bool templates, the ObjectManager instance). Both stream fields are bool, so
// the stream pair needs only readAs<bool> and writeAs<bool>.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <utility>
#include <vector>

#include "dh2/ObjectBase.hpp"
#include "dh2/Application.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(ObjectBase) unsigned char g_objectStorage[sizeof(ObjectBase)];
alignas(ObjectManager) unsigned char g_managerStorage[sizeof(ObjectManager)];
alignas(ObjectHandle) unsigned char g_slotStorage[sizeof(ObjectHandle)];
alignas(16) unsigned char g_boxStorage[64];

ObjectBase* Object() {
    return reinterpret_cast<ObjectBase*>(g_objectStorage);
}

struct TestedCall {
    const void* owner;
    bool tested;
};
std::vector<TestedCall> g_testedCalls;

// A stream with a byte input and a byte output.
class FakeStream : public IStreamBase {
public:
    explicit FakeStream(std::vector<std::uint8_t> input) : in(std::move(input)) {}

    std::uint32_t size() const override { return static_cast<std::uint32_t>(in.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void*, std::uint64_t) const override { return 0; }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        std::uint64_t got = 0;
        while (got < n && pos < in.size()) {
            static_cast<std::uint8_t*>(dst)[got] = in[pos];
            ++got;
            ++pos;
        }
        return got;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        const auto* bytes = static_cast<const std::uint8_t*>(src);
        out.insert(out.end(), bytes, bytes + n);
        return n;
    }
    void seek(std::uint64_t position) override { pos = static_cast<std::size_t>(position); }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += static_cast<std::size_t>(n); }

    std::vector<std::uint8_t> in;
    std::vector<std::uint8_t> out;
    std::size_t pos = 0;
};

}  // namespace

// Link stubs for symbols the source refers to.
Application& ApplicationGetInstance() {
    std::abort();
}

Level* Application::GetCurrentLevel() const {
    return nullptr;
}

static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

void ConditionData::SetAsTested(bool tested) {
    g_testedCalls.push_back(TestedCall{this, tested});
}

bool ConditionData::IsTrue() const {
    return true;
}

IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t) {}
std::uint64_t IStreamBase::tellWrite() const {
    return 0;
}

template <> void IStreamBase::readAs<bool>(bool& value) {
    read(&value, 1);
}
template <> void IStreamBase::writeAs<bool>(const bool& value) {
    write(&value, 1);
}

int main() {
    std::memset(g_objectStorage, 0, sizeof g_objectStorage);
    std::memset(g_managerStorage, 0, sizeof g_managerStorage);
    std::memset(g_slotStorage, 0, sizeof g_slotStorage);
    std::memset(g_boxStorage, 0, sizeof g_boxStorage);
    ObjectBase* go = Object();

    // Constant predicates.
    EXPECT(!go->ObjectBase::IsGameObject());
    EXPECT(!go->ObjectBase::IsCharacter());
    EXPECT(!go->ObjectBase::IsPlayer());
    EXPECT(!go->ObjectBase::IsDead());
    EXPECT(!go->ObjectBase::IsUpdatable());

    // setUpdating stores its argument at +0x85.
    go->ObjectBase::setUpdating(true);
    EXPECT(go->unk_85 == 1);
    go->ObjectBase::setUpdating(false);
    EXPECT(go->unk_85 == 0);

    // SetVisible: +0x80 is m_enabled (+0x8a) when visible is set, and false otherwise.
    go->m_enabled = 1;
    go->ObjectBase::SetVisible(true);
    EXPECT(go->m_visible == true);
    go->m_enabled = 0;
    go->ObjectBase::SetVisible(true);
    EXPECT(go->m_visible == false);
    go->m_enabled = 1;
    go->ObjectBase::SetVisible(false);
    EXPECT(go->m_visible == false);

    // IsRemotelyUpdated: with no net owner (-1) it returns the +0x118 flag, otherwise true.
    go->m_netOwnerId = -1;
    go->unk_118 = 0;
    EXPECT(!go->ObjectBase::IsRemotelyUpdated());
    go->unk_118 = 1;
    EXPECT(go->ObjectBase::IsRemotelyUpdated());
    go->m_netOwnerId = 4;
    go->unk_118 = 0;
    EXPECT(go->ObjectBase::IsRemotelyUpdated());

    // Delete: +0x82 becomes 2 and +0x81 becomes 1.
    go->m_deleteMode = 0;
    go->m_markedForDeletion = 0;
    go->ObjectBase::Delete();
    EXPECT(go->m_deleteMode == 2);
    EXPECT(go->m_markedForDeletion == 1);

    // SetEnable with the value already set makes no change and calls no transition.
    go->m_enabled = 1;
    go->ObjectBase::SetEnable(true);
    EXPECT(go->m_enabled == 1);
    go->m_enabled = 0;
    go->ObjectBase::SetEnable(false);
    EXPECT(go->m_enabled == 0);

    // TestCullingBeforeUpdate: state 0 becomes 1 and the object is kept; state 2 is kept as is. (State 1 needs the
    // level and the frustum, so it is not run here.)
    const aabb<float>& box = *reinterpret_cast<const aabb<float>*>(g_boxStorage);
    go->m_cullState = 0;
    EXPECT(go->ObjectBase::TestCullingBeforeUpdate(box));
    EXPECT(go->m_cullState == 1);
    go->m_cullState = 2;
    EXPECT(go->ObjectBase::TestCullingBeforeUpdate(box));
    EXPECT(go->m_cullState == 2);

    // GetHandle: the handle's cache generation becomes the ObjectManager generation (+0x78), and a copy is returned.
    ObjectManager* manager = reinterpret_cast<ObjectManager*>(g_managerStorage);
    manager->m_generation = 42;
    dword_99F764 = manager;
    ObjectHandle* slot = reinterpret_cast<ObjectHandle*>(g_slotStorage);
    slot->m_id = 7;
    slot->m_cached = go;
    slot->m_generation = 0;
    go->m_handle = slot;
    ObjectHandle copy = go->ObjectBase::GetHandle();
    EXPECT(copy.m_id == 7);
    EXPECT(copy.m_cached == go);
    EXPECT(copy.m_generation == 42u);
    EXPECT(slot->m_generation == 42u);

    const ObjectBase* constObject = go;
    slot->m_generation = 0;
    ObjectHandle constCopy = constObject->ObjectBase::GetHandle();
    EXPECT(constCopy.m_generation == 42u);
    EXPECT(slot->m_generation == 42u);
    dword_99F764 = nullptr;

    // Serialize writes m_visible (bool) and then m_enabled (one byte).
    go->m_visible = true;
    go->m_enabled = 0;
    FakeStream writer({});
    go->ObjectBase::Serialize(&writer);
    EXPECT(writer.out.size() == 2);
    EXPECT(writer.out.size() == 2 && writer.out[0] == 1 && writer.out[1] == 0);

    // Deserialize reads m_visible, then m_enabled, then clears the tested flag of both conditions.
    FakeStream reader({0, 1});
    g_testedCalls.clear();
    go->ObjectBase::Deserialize(&reader);
    EXPECT(go->m_visible == false);
    EXPECT(go->m_enabled == 1);
    EXPECT(g_testedCalls.size() == 2);
    if (g_testedCalls.size() == 2) {
        EXPECT(g_testedCalls[0].owner == &go->m_enableCond);
        EXPECT(g_testedCalls[0].tested == false);
        EXPECT(g_testedCalls[1].owner == &go->m_disableCond);
        EXPECT(g_testedCalls[1].tested == false);
    }

    if (g_failures == 0) {
        std::printf("ObjectBase batch 0 test: all checks passed\n");
        return 0;
    }
    std::printf("ObjectBase batch 0 test: %d failure(s)\n", g_failures);
    return 1;
}
