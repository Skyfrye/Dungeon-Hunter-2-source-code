#include <cstdlib>
// Batch g1-game-world-ObjectSearcher-3d104b-2 (ObjectSearcher, part 3): the backup and room list helpers, the
// TargetList constructor, the Search and SearchRect families, Resort and BackupResults. Declarations come from
// dh2/ObjectSearcher.hpp. Offsets in comments are the original 32-bit ones.
//
// Skipped: the two deleting destructors (0x4a19c4 RoomObjectList, 0x4a1fcc BackupObjectList). The compiler emits
// them for `delete`; each is the complete-object destructor followed by CustomFree(this).
// Partial: none. 0x4a1ab8 _IsCharacterValid applies the sneak gate (the searcher's Special_Sneak_Detection = Character +0x1314
// against the candidate's Special_Sneak = +0x1310, both signed), and 0x4a2858 SearchRect and 0x4a2f34
// Search use the real Point3D<float>::normalize and ::angle members (0x34d0b0 / 0x313058), which dh2/Point3D.hpp
// declares and g1-game-world-Point3D-3d74ab-0.cpp defines. The old "cannot share a TU with game_types.hpp" note is
// STALE: the stand-in includes Point3D.hpp now and this translation unit compiles.
// The two TargetList constructors (C1 0x4a2730, C2 0x4a348c) have identical bodies and share one definition.

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <deque>
#include <map>
#include <queue>
#include <string>
#include <vector>

#include "dh2/ObjectSearcher.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

using TargetQueue = std::priority_queue<ObjectSearcher::TargetInfo, std::deque<ObjectSearcher::TargetInfo>,
                                        ObjectSearcher::TargetSorter>;

// std::priority_queue keeps its heap in the protected member c. The original BackupResults copies the heap in
// storage order (the deque from begin to end), so this reads c through a pointer to that member, formed in a class
// derived from the queue. Nothing is constructed from this type.
struct TargetQueueAccess : TargetQueue {
    static std::deque<ObjectSearcher::TargetInfo>& Container(TargetQueue& queue) {
        return queue.*(&TargetQueueAccess::c);
    }
};

const char kObjectSearcherSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Helpers\\ObjectSearcher.cpp";

// The original ASSERT(expression) at ObjectSearcher.cpp:line. Level 2 stops the process (the original stores to
// address 0); level 1 prints the message and continues.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kObjectSearcherSource, line);
    }
}

// Float pi, bit pattern 0x40490FDB, the limit that Search (0x4a2f34) compares maxAngle against with __aeabi_fcmplt.
// It is not the float nearest to the literal 3.1416, which is 0x40490FF9 and admits a different range of angles.
constexpr float kFloatPi = 3.14159274f;

// The original compares with the float helpers and skips a candidate only when the comparison is true (fcmplt /
// fcmpgt / fcmpge, then BNE to the skip). A NaN therefore never skips. The tests below are written as negations so
// that a NaN operand admits the candidate, as in the original.

// Vec3f_K (ELF .bss 0x99f878), a Point3D<float> global. The static initialiser at 0x312e00 writes dword_99F880 =
// 1.0f (its z), dword_99F87C = 0 (its y) and Vec3f_K = 0 (its x), so it is (0, 0, 1). No shared declaration exists.
constexpr Point3D<float> kVec3fK{0.0f, 0.0f, 1.0f};

// The sorter for a TargetList sort type: 1 closest, 2 frontal, anything else unsorted.
ObjectSearcher::TargetSorter::CompareFn SorterForSortType(int sortType) {
    if (sortType == 1) {
        return &ObjectSearcher::TargetSorter::_sortClosest;
    }
    if (sortType == 2) {
        return &ObjectSearcher::TargetSorter::_sortFrontal;
    }
    return &ObjectSearcher::TargetSorter::_sortNoSort;
}

// The start shared by Search and SearchRect, in the original's order: the trace switch is read (its value is not
// used by this build), the result queue is emptied and the two limits are checked with ASSERT (>= 0). The return
// value is the melee radius of the searching character, or 0 without one.
float BeginTargetSearch(ObjectSearcher::TargetList& searcher, float range, float limit, const char* limitName,
                        int rangeLine, int limitLine) {
    // The original calls load() on the static instance s_inst (private in the header). GetInstance() is the public
    // handle to that instance; on first use it may load the switch file once before the explicit load().
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingTargetSearch");
    while (!searcher.m_results.empty()) {
        searcher.m_results.pop();
    }
    // The asserts are fcmpge(value, 0) with a branch past the report, so the report fires unless value >= 0 holds.
    if (!(range >= 0.0f)) {
        ReportAssert("maxRange >= 0.0f", rangeLine);
    }
    if (!(limit >= 0.0f)) {
        ReportAssert(limitName, limitLine);
    }
    if (searcher.m_refCharacter) {
        return searcher.m_refCharacter->CharAI::AI_GetMeleeRadius();
    }
    return 0.0f;
}

// The candidate test of the Search and SearchRect loops. The object is not the searcher, is enabled (ObjectBase
// +0x8a), and is not zoned out (when it is zonable and zoning is on, it must be in a zone). It must interact with
// the searcher, and then pass the character filter or the object filter.
bool IsSearchCandidate(ObjectSearcher::TargetList& searcher, GameObject* object, Character* character) {
    if (!object || object == searcher.m_refObject || object->m_enabled == 0) {
        return false;
    }
    if (object->IsZonable() && object->m_zoningEnabled != 0 && object->m_inZone == 0) {
        return false;
    }
    if (!object->IsInteractive(searcher.m_refObject)) {
        return false;
    }
    if (character) {
        return searcher._IsCharacterValid(character);
    }
    return searcher._IsGameObjectValid(object);
}

// Offset from the search position to the target's position, as the original stores it in its three locals.
Point3D<float> OffsetFrom(const Point3D<float>& position, const Point3D<float>& target) {
    return Point3D<float>{target.X - position.X, target.Y - position.Y, target.Z - position.Z};
}

// The distance used by both searches: the centre distance minus the target's interaction radius and the searcher's
// melee radius.
float CentreDistance(const Point3D<float>& offset, float interactionRadius, float meleeRadius) {
    return (std::sqrt((offset.X * offset.X + offset.Y * offset.Y) + offset.Z * offset.Z) - interactionRadius) -
           meleeRadius;
}

// Local copy of Point3D<float>::normalize (0x34d0b0): divides each component by sqrtf(x*x + y*y + z*z), as
// operator/= (0x34d04c) does. Retained only for the vector-family helpers above; the Point3D members themselves are
// used by Search and SearchRect (the old header conflict is gone: Point3D.hpp and the game_types stand-in agree).
void NormalizePoint(Point3D<float>& v) {
    const float length = std::sqrt((v.X * v.X + v.Y * v.Y) + v.Z * v.Z);
    v.X = v.X / length;
    v.Y = v.Y / length;
    v.Z = v.Z / length;
}

// The cone admission of Search (0x4a2f34): a candidate is skipped only when maxAngle is below float pi and also below
// the angle to the direction (__aeabi_fcmplt is true for both). A NaN on either side makes the compare false, so the
// candidate is admitted.
bool ConeAdmits(float maxAngle, float absAngle) {
    return !(maxAngle < kFloatPi) || !(maxAngle < absAngle);
}

}  // namespace

// 0x4a19c4 ObjectSearcher::RoomObjectList::~RoomObjectList()
// Skipped: the deleting destructor (D0). The compiler emits it for `delete` on a RoomObjectList*. Its body is the
// empty base destructor, which resets the vtable, followed by CustomFree(this).

// 0x4a19f8 ObjectSearcher::BackupObjectList::_Clear(void)
// Drops the lock each object took in _Add (ObjectBase +0x29, m_lockCount, not below zero) and empties the vector.
// The vector keeps its capacity and the cursors m_current and m_end are not touched.
void ObjectSearcher::BackupObjectList::_Clear() {
    for (GameObject* object : m_objects) {
        if (object->m_lockCount != 0) {
            --object->m_lockCount;
        }
    }
    m_objects.clear();
}

// 0x4a1a38 ObjectSearcher::TargetList::FlushBackupResults(void)
// Clears every named backup list. The original walks the map in order, which is the in-order traversal of the
// node tree; each node's list gets _Clear once.
void ObjectSearcher::TargetList::FlushBackupResults() {
    for (auto& entry : m_backups) {
        entry.second._Clear();
    }
}

// 0x4a1ab8 ObjectSearcher::TargetList::_IsCharacterValid(Character *)
// The first gate is the searching character's level (the signed int32 at CharProperties +0x31c, i.e. Character
// +0x1314 = CharProperties +0x560 + m_props +0x33c = m_props.m_w207) against the candidate's (m_props.m_w208,
// Character +0x1310): the candidate is rejected when the searching character's word is below its own. The fields were
// called undeclared before; they are the m_props sheet words, reached through the public CharProperties base. The
// filter bits below follow the Hex-Rays control flow.
bool ObjectSearcher::TargetList::_IsCharacterValid(Character* character) {
    Character* refChar = m_refCharacter;
    if (!refChar) {
        return true;
    }
    // Sneak gate: the searcher's Special_Sneak_Detection (Character +0x1314 = m_props +0x320) against the candidate's Special_Sneak
    // (+0x1310 = m_props +0x31c), both signed. m_props sits at Character +0xff4 (AIFaction, the first word, is at +0xff8).
    // This gate used to read Threat_PerDamageToFriendly / Menu_Average_Melee_To_Hit (+0x1330 / +0x1334), words 0x1c apart.
    if (refChar->CharProperties::m_props.Special_Sneak_Detection < character->CharProperties::m_props.Special_Sneak) {
        return false;
    }
    const int mask = m_filterMask;
    if (mask == 0x7fffffff) {
        return true;
    }
    if ((mask & 0x80) != 0 && character->IsPlayer()) {
        return true;
    }
    if ((mask & 0x10) != 0 && character->Character::IsMerchant()) {
        return true;
    }
    if ((mask & 0x20) != 0 && character->Character::IsCleaner()) {
        return true;
    }
    if ((mask & 0x40) != 0 && character->unk_2fa != 0) {
        return true;
    }
    if ((mask & 1) != 0 && !character->IsDead() && refChar->CharAI::AI_IsEnemy(character) &&
        (!character->IsPlayer() || !refChar->IsPlayer())) {
        return true;
    }
    if ((mask & 2) != 0 && !character->IsDead() && refChar->CharAI::AI_IsNeutral(character)) {
        return true;
    }
    if ((mask & 4) != 0 && refChar->CharAI::AI_IsFriend(character)) {
        return true;
    }
    if ((mask & 8) == 0) {
        return false;
    }
    if (!character->IsDead() || !refChar->CharAI::AI_IsFriend(character)) {
        return false;
    }
    if (refChar->CharStateMachine::SM_GetState() == 15) {
        return false;
    }
    return character->CharStateMachine::SM_GetState() != 16;
}

// 0x4a1cc8 ObjectSearcher::BackupObjectList::GetChar(void)
// The object at the cursor, as a Character through its handle (null for a non-character).
Character* ObjectSearcher::BackupObjectList::GetChar() {
    GameObject* object = this->Get();
    ObjectHandle handle = object->GetHandle();
    return static_cast<Character*>(handle);
}

// 0x4a1cfc ObjectSearcher::RoomObjectList::GetChar(void)
// The object at the cursor, as a Character through its handle (null for a non-character).
Character* ObjectSearcher::RoomObjectList::GetChar() {
    GameObject* object = this->Get();
    ObjectHandle handle = object->GetHandle();
    return static_cast<Character*>(handle);
}

// 0x4a1fcc ObjectSearcher::BackupObjectList::~BackupObjectList()
// Skipped: the deleting destructor (D0). The compiler emits it for `delete` on a BackupObjectList*. Its body is the
// complete-object destructor (0x38c900) followed by CustomFree(this).

// 0x4a20f0 ObjectSearcher::BackupObjectList::_Add(GameObject *)
// Appends the object and takes a lock on it (ObjectBase +0x29, m_lockCount). The original grows its vector by
// hand (double the size, 1 when empty, capped at 0x3fffffff); std::vector follows the same policy in practice.
void ObjectSearcher::BackupObjectList::_Add(GameObject* object) {
    m_objects.push_back(object);
    ++object->m_lockCount;
}

// 0x4a2730 ObjectSearcher::TargetList::TargetList(GameObject *,int,int,int)   (C1, complete object)
// 0x4a348c ObjectSearcher::TargetList::TargetList(GameObject *,int,int,int)   (C2, base object; same body)
// The original zeroes the members, initialises the deque, stores the filter and the third argument, installs the
// sorter for the sort type and sets the reference object. The queue starts empty, so its clearing loop does nothing.
ObjectSearcher::TargetList::TargetList(GameObject* refObject, int filterMask, int arg3, int sortType)
    : m_results(ObjectSearcher::TargetSorter(SorterForSortType(sortType))),
      m_refObject(nullptr),
      m_refCharacter(nullptr),
      m_filterMask(filterMask),
      m_arg3(arg3) {
    SetRefObject(refObject);
}

// 0x4a2858 ObjectSearcher::TargetList::SearchRect(Point3D<float> const&,float,Point3D<float> const&,float,ObjectSearcher::IObjectList &)
// PARTIAL (Point3D arithmetic through local copies, see the header note): the normal and the angle are computed by
// NormalizePoint and AngleBetween instead of the Point3D members.
// Walks the list. Each candidate lies in front of the search direction (non-negative dot product with the direction)
// and within `length` of the searcher, after the target radius and the melee radius. Its lateral distance from the
// search line, measured along the horizontal normal cross(direction, Vec3f_K), must not exceed `width`. The entry
// keeps the angle to the direction as its sort key.
void ObjectSearcher::TargetList::SearchRect(const Point3D<float>& position, float length, const Point3D<float>& direction,
                                            float width, IObjectList& list) {
    const float meleeRadius = BeginTargetSearch(*this, length, width, "maxWidth >= 0.0f", 307, 308);
    list.Reset();
    while (!list.AtEnd()) {
        GameObject* object = list.Get();
        Character* character = list.GetChar();
        if (IsSearchCandidate(*this, object, character)) {
            const float interactionRadius = object->GetInteractionRadius();
            const Point3D<float>& target = object->GetTargetPosition();
            const Point3D<float> offset = OffsetFrom(position, target);
            const float forward = (offset.X * direction.X + offset.Y * direction.Y) + offset.Z * direction.Z;
            if (!(forward < 0.0f)) {
                const float distance = CentreDistance(offset, interactionRadius, meleeRadius);
                if (!(distance > length)) {
                    Point3D<float> normal{direction.Y * kVec3fK.Z - direction.Z * kVec3fK.Y,
                                          direction.Z * kVec3fK.X - kVec3fK.Z * direction.X,
                                          kVec3fK.Y * direction.X - direction.Y * kVec3fK.X};
                    normal.normalize();   // Point3D<float>::normalize (0x34d0b0)
                    const float lateral =
                        std::fabs((normal.X * offset.X + normal.Y * offset.Y) + normal.Z * offset.Z);
                    if (!(lateral > width)) {
                        const float angle = offset.angle(direction);   // Point3D<float>::angle (0x313058)
                        TargetInfo info;
                        info.object = object;
                        info.distance = distance;
                        info.angle = std::fabs(angle);
                        info.isCharacter = character ? 1 : 0;
                        info.lateral = lateral;
                        m_results.push(info);
                    }
                }
            }
        }
        list.Next();
    }
}

// 0x4a2e70 ObjectSearcher::TargetList::SearchRect(Point3D<float> const&,float,float,ObjectSearcher::IObjectList &)
// The direction is the reference object's look-at vector.
void ObjectSearcher::TargetList::SearchRect(const Point3D<float>& position, float length, float width, IObjectList& list) {
    Point3D<float> lookAt{0.0f, 0.0f, 0.0f};
    m_refObject->GetLookAtVec(lookAt);
    SearchRect(position, length, lookAt, width, list);
}

// 0x4a2ed0 ObjectSearcher::TargetList::SearchRect(float,float,ObjectSearcher::IObjectList &)
// Searches from the reference object's target position along its look-at vector.
void ObjectSearcher::TargetList::SearchRect(float length, float width, IObjectList& list) {
    Point3D<float> lookAt{0.0f, 0.0f, 0.0f};
    m_refObject->GetLookAtVec(lookAt);
    const Point3D<float>& target = m_refObject->GetTargetPosition();
    SearchRect(target, length, lookAt, width, list);
}

// 0x4a2f34 ObjectSearcher::TargetList::Search(Point3D<float> const&,float,Point3D<float> const&,float,ObjectSearcher::IObjectList &)
// PARTIAL (Point3D arithmetic through a local copy, see the header note): the angle is computed by AngleBetween.
// A cone search. Each candidate within `maxRange` (after the radii) enters the queue unless maxAngle is below both
// float pi (kFloatPi, 0x40490FDB) and the angle to the direction. The original's test is
// !(maxAngle < kFloatPi) || !(maxAngle < |angle|), so a NaN maxAngle or NaN angle admits the candidate. Its lateral
// value is 0.
void ObjectSearcher::TargetList::Search(const Point3D<float>& position, float maxRange, const Point3D<float>& direction,
                                        float maxAngle, IObjectList& list) {
    const float meleeRadius = BeginTargetSearch(*this, maxRange, maxAngle, "maxAngle >= 0.0f", 204, 205);
    list.Reset();
    while (!list.AtEnd()) {
        GameObject* object = list.Get();
        Character* character = list.GetChar();
        if (IsSearchCandidate(*this, object, character)) {
            const float interactionRadius = object->GetInteractionRadius();
            const Point3D<float>& target = object->GetTargetPosition();
            const Point3D<float> offset = OffsetFrom(position, target);
            const float distance = CentreDistance(offset, interactionRadius, meleeRadius);
            if (!(distance > maxRange)) {
                const float angle = offset.angle(direction);   // Point3D<float>::angle (0x313058)
                const float absAngle = std::fabs(angle);
                if (ConeAdmits(maxAngle, absAngle)) {
                    TargetInfo info;
                    info.object = object;
                    info.distance = distance;
                    info.angle = absAngle;
                    info.isCharacter = character ? 1 : 0;
                    info.lateral = 0.0f;
                    m_results.push(info);
                }
            }
        }
        list.Next();
    }
}

// 0x4a33c8 ObjectSearcher::TargetList::Search(Point3D<float> const&,float,float,ObjectSearcher::IObjectList &)
// The direction is the reference object's look-at vector.
void ObjectSearcher::TargetList::Search(const Point3D<float>& position, float maxRange, float maxAngle, IObjectList& list) {
    Point3D<float> lookAt{0.0f, 0.0f, 0.0f};
    m_refObject->GetLookAtVec(lookAt);
    Search(position, maxRange, lookAt, maxAngle, list);
}

// 0x4a3428 ObjectSearcher::TargetList::Search(float,float,ObjectSearcher::IObjectList &)
// Searches from the reference object's target position along its look-at vector.
void ObjectSearcher::TargetList::Search(float maxRange, float maxAngle, IObjectList& list) {
    Point3D<float> lookAt{0.0f, 0.0f, 0.0f};
    m_refObject->GetLookAtVec(lookAt);
    const Point3D<float>& target = m_refObject->GetTargetPosition();
    Search(target, maxRange, lookAt, maxAngle, list);
}

// 0x4a35b4 ObjectSearcher::TargetList::Resort(int)
// Empties the queue, then installs the sorter for the sort type. The original rebuilds the heap over the deque's
// range afterwards, and that range is empty by then, so nothing is left to do.
void ObjectSearcher::TargetList::Resort(int sortType) {
    while (!m_results.empty()) {
        m_results.pop();
    }
    m_results = TargetQueue(ObjectSearcher::TargetSorter(SorterForSortType(sortType)));
}

// 0x4a36b0 ObjectSearcher::TargetList::BackupResults(char const*)
// Stores the queue's entries, in heap storage order, under `name`. The named list is cleared, then each entry's
// object is added (taking its lock), and the list cursors are set to the new contents. The original asserts that
// the name is not null (line 405); a null name reaches the map lookup and faults there in the original.
void ObjectSearcher::TargetList::BackupResults(const char* name) {
    if (!name) {
        ReportAssert("n", 405);
    }
    BackupObjectList& backup = m_backups[name];
    backup._Clear();
    const std::deque<TargetInfo>& results = TargetQueueAccess::Container(m_results);
    backup.m_objects.reserve(results.size());
    for (const TargetInfo& info : results) {
        backup._Add(info.object);
    }
    backup.m_current = backup.m_objects.data();
    backup.m_end = backup.m_objects.data() + backup.m_objects.size();
}
