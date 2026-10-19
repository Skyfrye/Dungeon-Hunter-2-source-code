// ObjectSearcher: target search helpers. TargetList scans an IObjectList (all room objects, characters,
// players or a saved result set) and keeps the objects that pass the filters in a priority queue ordered
// by one of three sorters. GameObject embeds a TargetList at +0x304.
// Offsets in comments are the original 32-bit ones. Reconstructed from libDungeonHunter2.so pseudocode
// (ObjectSearcher.cpp / ObjectSearcher.h asserts).
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <queue>
#include <deque>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"  // Point3D

class GameObject;
class Character;
class PlayerManager;

class ObjectSearcher {
public:
    // One search hit: 20 bytes (the deque element).
    struct TargetInfo {
        GameObject* object;                 // +0x00
        float distance;                     // +0x04 centre distance minus the target's radius and the searcher's melee radius
        float angle;                        // +0x08 absolute angle to the search direction (sorted by _sortFrontal)
        std::int32_t isCharacter;           // +0x0c bit 0 set when the hit is a Character (characters sort before objects)
        float lateral;                      // +0x10 absolute distance from the search direction's centre line (SearchRect)
    };

    // Comparator held by the priority queue: one function pointer, set by the TargetList constructor,
    // Resort and SetSortType.
    struct TargetSorter {
        typedef bool (*CompareFn)(const TargetInfo&, const TargetInfo&);
        TargetSorter() : m_compare(&_sortNoSort) {}
        explicit TargetSorter(CompareFn fn) : m_compare(fn) {}
        bool operator()(const TargetInfo& a, const TargetInfo& b) const { return m_compare(a, b); }
        static bool _sortNoSort(const TargetInfo& a, const TargetInfo& b);      // 0x38d568 always false
        static bool _sortClosest(const TargetInfo& a, const TargetInfo& b);     // 0x38d570 flags equal: a.distance > b.distance
        static bool _sortFrontal(const TargetInfo& a, const TargetInfo& b);     // 0x38d5b4 flags equal: a.angle > b.angle
        CompareFn m_compare;                // +0x00 (stored at TargetList +0x28)
    };

    // Iterator over a set of objects. vtable (40 bytes): destructors, then six slots.
    class IObjectList {
    public:
        virtual ~IObjectList();                     // +0x00, +0x04 (0x38aabc D1 defined in game-world/src/g1-game-world-ObjectSearcher-3d104b-0.cpp, 0x38b2cc D0)
        virtual void Reset() = 0;                   // +0x08
        virtual bool AtEnd() = 0;                   // +0x0c
        virtual void Next() = 0;                    // +0x10
        virtual int Size() = 0;                     // +0x14
        virtual GameObject* Get() = 0;              // +0x18
        virtual Character* GetChar() = 0;           // +0x1c null when the current object is not a Character
    };

    // All characters of the level: iterates a std::list<Character*>.
    class CharacterList : public IObjectList {
    public:
        ~CharacterList() override;                  // 0x38d60c / 0x38d764
        void Reset() override;                      // 0x38d4a4
        bool AtEnd() override;                      // 0x38d4b8
        void Next() override;                       // 0x38d4d0
        int Size() override;                        // 0x38d4e0
        GameObject* Get() override;                 // 0x38d50c
        Character* GetChar() override;              // 0x38d518
        const std::list<Character*>* m_list;        // +0x04
        std::list<Character*>::const_iterator m_current;    // +0x08
        std::list<Character*>::const_iterator m_end;        // +0x0c
    };

    // The players of the PlayerManager, by index.
    class PlayerList : public IObjectList {
    public:
        ~PlayerList() override;                     // 0x38d608 / 0x38d730
        void Reset() override;                      // 0x38d524
        bool AtEnd() override;                      // 0x38d530 index >= player count (PlayerManager +0x6c4)
        void Next() override;                       // 0x38d54c
        int Size() override;                        // 0x38d55c
        GameObject* Get() override;                 // 0x38d7d4
        Character* GetChar() override;              // 0x38d7bc PlayerManager::GetPlayer(index, 1) character (+0x660)
        PlayerManager* m_players;                   // +0x04
        int m_index;                                // +0x08
    };

    // Objects of the active rooms: walks the room list, then each room's objects (node layout as std::list iterators).
    class RoomObjectList : public IObjectList {
    public:
        ~RoomObjectList() override;                 // 0x4a18a4 / 0x4a19c4
        void Reset() override;                      // 0x4a18fc
        bool AtEnd() override;                      // 0x4a17fc
        void Next() override;                       // 0x4a18ec
        int Size() override;                        // 0x4a1814
        GameObject* Get() override;                 // 0x4a1840
        Character* GetChar() override;              // 0x4a1cfc via ObjectBase::GetHandle
        void _ValidateCurrent();                    // 0x4a18a8 skips ahead while the current entry repeats the previous one
        // The room list is ObjectManager's list at +0x80. Its elements are the object lists of the rooms
        // (std::list<GameObject*>*, see RoomZone::AddObject and ObjectManager::AddRoomObjects).
        const std::list<std::list<GameObject*>*>* m_list;                // +0x04 the room list (ObjectManager +0x80)
        std::list<std::list<GameObject*>*>::const_iterator m_node;       // +0x08 current room
        std::list<std::list<GameObject*>*>::const_iterator m_end;        // +0x0c end of the room list
        std::list<GameObject*>::const_iterator m_current;                // +0x10 current object of the current room
    };

    // A saved result set: a vector of GameObject* whose objects hold a reference count byte (GameObject +0x29).
    class BackupObjectList : public IObjectList {
    public:
        ~BackupObjectList() override;               // 0x38c900 / 0x4a1fcc
        void Reset() override;                      // 0x4a184c
        bool AtEnd() override;                      // 0x4a185c
        void Next() override;                       // 0x4a1874
        int Size() override;                        // 0x4a1884
        GameObject* Get() override;                 // 0x4a1898
        Character* GetChar() override;              // 0x4a1cc8
        void _Clear();                              // 0x4a19f8 drops the references and empties the vector
        void _Add(GameObject* object);              // 0x4a20f0 appends and takes a reference
        std::vector<GameObject*> m_objects;         // +0x04 (begin, end, capacity)
        GameObject** m_current;                     // +0x10
        GameObject** m_end;                         // +0x14
    };

    // Size 0x54. Members: priority_queue (deque +0x00..+0x27, sorter +0x28), the reference object and
    // filters, and the named backup result sets.
    class TargetList {
    public:
        // refObject: the searching object. filterMask: the _IsCharacterValid bit mask (0x7fffffff = all).
        // The third int is stored at +0x38. sortType: 1 closest, 2 frontal, other = unsorted.
        TargetList(GameObject* refObject, int filterMask, int arg3, int sortType);  // 0x4a2730 / 0x4a348c
        ~TargetList();                              // 0x38d18c

        void Search(float maxRange, float maxAngle);                                        // 0x3d0020 (all room objects)
        void Search(float maxRange, float maxAngle, IObjectList& list);                     // 0x4a3428
        void Search(const Point3D<float>& position, float maxRange, float maxAngle, IObjectList& list);   // 0x4a33c8
        void Search(const Point3D<float>& position, float maxRange, const Point3D<float>& direction,
                    float maxAngle, IObjectList& list);                                     // 0x4a2f34
        void SearchRect(float length, float width, IObjectList& list);                      // 0x4a2ed0
        void SearchRect(const Point3D<float>& position, float length, float width, IObjectList& list);    // 0x4a2e70
        void SearchRect(const Point3D<float>& position, float length, const Point3D<float>& direction,
                        float width, IObjectList& list);                                    // 0x4a2858
        void SetSortType(int sortType);             // 0x3d015c (clone: pops everything, installs _sortFrontal)
        void Resort(int sortType);                  // 0x4a35b4 pops everything, installs the sorter, rebuilds the heap
        void SetRefObject(GameObject* object);      // 0x4a191c also records it as the Character when IsCharacter()
        void BackupResults(const char* name);       // 0x4a36b0 asserts name != null
        BackupObjectList& GetResultsBackup(const char* name);   // 0x38f72c
        void FlushBackupResults();                  // 0x4a1a38
        bool _IsGameObjectValid(GameObject* object);    // 0x4a1950
        bool _IsCharacterValid(Character* character);   // 0x4a1ab8 faction / merchant / cleaner mask tests

        // +0x00 .. +0x27 deque of TargetInfo, +0x28 the sorter's function pointer.
        std::priority_queue<TargetInfo, std::deque<TargetInfo>, TargetSorter> m_results;
        GameObject* m_refObject;                    // +0x2c
        Character* m_refCharacter;                  // +0x30 m_refObject when it is a Character
        int m_filterMask;                           // +0x34 constructor argument a3
        int m_arg3;                                 // +0x38 constructor argument a4. Name candidate: m_objectFilter (GameObject::_SetTargetListObjectFilter, 0x390624, stores its Lua number here)
        std::map<std::string, BackupObjectList> m_backups;  // +0x3c (the original map is 0x18 bytes, ends at +0x54)
    };
};
