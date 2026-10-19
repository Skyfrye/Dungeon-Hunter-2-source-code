// Batch g1-game-world-ObjectHandle-4d223d-0 (part 1 of 1): the ObjectHandle constructors, GetObject and its const
// thunk, the GameObject and Character conversions, and the Container* conversion.
// Declarations come from dh2/ObjectHandle.hpp. GetObject resolves through ObjectManager's id map (dh2/ObjectListItem.hpp).
//
// Layout facts used here (original 32-bit offsets):
//   ObjectHandle +0x00 m_id          object id, the key of ObjectManager's id map
//   ObjectHandle +0x04 m_cached      cached ObjectBase*
//   ObjectHandle +0x08 m_generation  ObjectManager generation the cache is valid for (-1 initially)
//   ObjectManager +0x0c m_objectMap  std::map<int, ObjectListItem>
//   ObjectManager +0x78 m_generation the generation compared with the handle's cache key
//   ObjectBase +0xf4 m_goId          GO id, compared with 21 (Container) by the Container* conversion
//   ObjectBase vtable +0x20 IsGameObject(), +0x24 IsCharacter()

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Character.hpp"
#include "dh2/Container.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance

namespace {

const char kObjectHandleSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectHandle.cpp";
const char kObjectHandleHeader[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources/Core/ObjectManager/ObjectHandle.h";

// The original ASSERT(expression) at file:line. Level 2 stops the process (the original writes to address 0);
// level 1 prints the message.
void ReportAssert(const char* expression, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, file, line);
    }
}

// Container::ClassID as the Container* conversion compares it with m_goId (+0xf4). The value is 0x15 in the binary.
constexpr std::int32_t kContainerClassId = 21;

}  // namespace

// 0x33f4f4 _ZN12ObjectHandleC2Ev
// 0x33f50c _ZN12ObjectHandleC1Ev
// Both symbols have the same body: id 0, cached pointer null, generation -1 (the "never resolved" marker).
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0xFFFFFFFFu) {}

// 0x33f524 _ZN12ObjectHandleC1EP10ObjectBase
// 0x33f578 _ZN12ObjectHandleC2EP10ObjectBase
// Starts from the default state. A non-null object gives the three words of object->GetHandle() (the non-const
// overload, which refreshes the object's handle generation).
ObjectHandle::ObjectHandle(ObjectBase* object) : ObjectHandle() {
    if (object != nullptr) {
        const ObjectHandle handle = object->GetHandle();
        m_id = handle.m_id;                  // +0x00
        m_cached = handle.m_cached;          // +0x04
        m_generation = handle.m_generation;  // +0x08
    }
}

// 0x33fdc0 _ZN12ObjectHandle9GetObjectEb
// Resolves the handle. An id of 0 gives null. Otherwise, when the cached pointer is null or the handle's generation
// differs from ObjectManager's generation (+0x78), the id is looked up in dword_99F764->m_objectMap (operator[] on the
// id, inserting if absent; ObjectListItem +0x18 is the object), and the result and the current generation are stored
// into the handle. The assert reports ObjectHandle.cpp:49 for the unresolved "obj" when assertFound is set.
// The map lookup and the cache refresh follow the disassembly (STMIB R6,{R4,R8}: m_cached and m_generation).
ObjectBase* ObjectHandle::GetObject(bool assertFound) {
    ObjectBase* object = nullptr;
    if (m_id != 0) {
        const std::uint32_t generation = static_cast<std::uint32_t>(dword_99F764->m_generation);  // ObjectManager +0x78
        object = m_cached;
        if (object == nullptr || m_generation != generation) {
            object = dword_99F764->m_objectMap[static_cast<std::int32_t>(m_id)].m_object;
            m_cached = object;
            m_generation = generation;
        }
    }
    if (assertFound && object == nullptr) {
        ReportAssert("obj", kObjectHandleSource, 49);
    }
    return object;
}

// 0x33ff8c _ZNK12ObjectHandle9GetObjectEb
// Thunk: the original is a tail branch to ObjectHandle::GetObject(bool) (0x33fdc0) with the same arguments. The
// non-const overload writes the cache, so the const form calls it through a const_cast.
ObjectBase* ObjectHandle::GetObject(bool assertFound) const {
    return const_cast<ObjectHandle*>(this)->GetObject(assertFound);
}

// 0x33feac _ZN12ObjectHandlecvPK10GameObjectEv
// The resolved object, when it reports IsGameObject() (vtable +0x20); otherwise null.
ObjectHandle::operator GameObject const*() {
    ObjectBase* object = GetObject(false);
    if (object != nullptr && object->IsGameObject()) {
        return static_cast<GameObject*>(object);
    }
    return nullptr;
}

// 0x33fee4 _ZN12ObjectHandlecvP10GameObjectEv
// The resolved object, when it reports IsGameObject() (vtable +0x20); otherwise null.
ObjectHandle::operator GameObject*() {
    ObjectBase* object = GetObject(false);
    if (object != nullptr && object->IsGameObject()) {
        return static_cast<GameObject*>(object);
    }
    return nullptr;
}

// 0x33ff1c _ZN12ObjectHandlecvPK9CharacterEv
// The resolved object, when it reports IsCharacter() (vtable +0x24); otherwise null.
ObjectHandle::operator Character const*() {
    ObjectBase* object = GetObject(false);
    if (object != nullptr && object->IsCharacter()) {
        return static_cast<Character*>(object);
    }
    return nullptr;
}

// 0x33ff54 _ZN12ObjectHandlecvP9CharacterEv
// The resolved object, when it reports IsCharacter() (vtable +0x24); otherwise null.
ObjectHandle::operator Character*() {
    ObjectBase* object = GetObject(false);
    if (object != nullptr && object->IsCharacter()) {
        return static_cast<Character*>(object);
    }
    return nullptr;
}

// 0x4593f4 _ZN12ObjectHandlecvPT_I9ContainerEEv
// Explicit specialization of the template conversion for Container (WEAK in the original). The sequence matches the
// binary: GetObject(false), then the ASSERT on (int)T::ClassID < (int)ObjectBase::GO_ID_INVALID, then the check of
// m_goId (+0xf4) against Container's id. The binary tests gAssertLevel for that ASSERT and has no branch on the
// expression (the comparison was folded at build time), so the report runs for levels 1 and 2 whatever the id is.
template <>
ObjectHandle::operator Container*() {
    ObjectBase* object = GetObject(false);
    ReportAssert("(int)T::ClassID < (int)ObjectBase::GO_ID_INVALID", kObjectHandleHeader, 72);
    if (object != nullptr && static_cast<std::int32_t>(object->m_goId) == kContainerClassId) {
        return static_cast<Container*>(object);
    }
    return nullptr;
}
