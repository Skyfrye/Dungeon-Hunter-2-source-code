// glitch::core::detail::SIDedCollection, layout recovered from the binary (ARM, 32-bit offsets).
// Shared header for the SIDedCollection instances (texture, shader, shader-code, material-renderer
// and shader-parameter managers). Offsets are kept as comments and are never used for pointer
// arithmetic. Evidence: the ITexture instance (insert 0x5ea53c, rename 0x5e9348, remove 0x5e9e7c,
// removeAll(bool) 0x5e9f78, getId 0x5e8ed8, ctor 0x5e840c, dtor 0x5e97a0) and the element-size and
// property checks in the other instances (listed below).
//
// Canonical definition (engine unification, u1-core): this template replaces the older
// glitch-core-io/core/sided_collection.hpp implementation, which now forwards here.
//
// Names (decision 10, the original mangled symbols): the class is glitch::core::detail::SIDedCollection<T, unsigned short, false,
// Props, Traits> with the nested SName / SIdValue / SEntry, and the traits are glitch::core::detail::sidedcollection::SValueTraits
// and SEmptyProperties, so the instances' member functions are emitted under the binary's names. The id type and the bool are
// template parameters as in the binary (every instance has unsigned short and false); the id arithmetic is fixed at 16 bits and the
// bool is not modelled (its use is not recovered). glitch::core::detail::sid_layout keeps the former three-parameter spelling as an
// alias.
//
// Collection (this):
//   +0x00  name map header (rb-tree header node): color byte (cleared), parent (0), left = leftmost
//          node at +0x08 (idBegin, 0x5e8398), right = rightmost at +0x0c. The header address is the
//          end iterator (idEnd, 0x5e83a0 returns this). The ctor (0x5e840c) points left and right at
//          the header itself.
//   +0x10  name map node count (0 in the ctor; not read by any recovered function)
//   +0x18  entry vector begin, +0x1c end, +0x20 end of storage (get 0x5e83ac, size, dtor)
//   +0x24  next free id (uint16)          (getNextId 0x5e8474)
//   +0x26  live count (uint16)            (size 0x5e83a4)
//
// Entry (vector element), the value followed by its name-map iterator (node pointer):
//   pointer values (ITexture, IShader, IShaderCode, CMaterialRenderer): stride 8 (get: LSL #3 at
//     0x5e83ac, 0x5d7d40, 0x5e539c, 0x6e0788), value +0x00, iterator +0x04. The count check uses
//     ASR #3 on the byte distance.
//   SShaderParameterDef: stride 20 (get 0x5b9da0: MLA with 0x14). Value is a shared-string data
//     pointer at +0x00 (count at data+0x00, released by SSharedStringHeapEntry::SData::release),
//     u16 at +0x04, bytes at +0x06 and +0x07, ints at +0x08 and +0x0c, iterator at +0x10 (SEntry
//     ctor 0x5ba010, SEntry() 0x5b9fb8, reset 0x5bc5c4, set 0x5bc620). Not covered by the template
//     below (see the open questions).
//
// Name map node (rb-tree node, 0x18 bytes plus the mapped record):
//   +0x00..+0x0f  rb base (color, parent, left, right)
//   +0x10         key SName: name char* at +0x10, managed byte at +0x14 (SName ctor 0x5e8498,
//                 setManaged 0x5e84b8, get 0x5e84c4, operator< 0x5e8544 = strcmp(a, b) < 0,
//                 dtor 0x5e855c = delete[] the name when managed)
//   +0x18         mapped SIdValue: the instance's Props record, then the id (uint16). The id is at
//                 the end of the Props record, not at a fixed offset (SIdValue ctors, getId):
//                   ITexture (STextureProperties, 0x1c bytes: a glitch string at +0x00 and int 39 at
//                     +0x18): id at SIdValue+0x1c, node +0x34 (ctor 0x5e85b4, getId 0x5e8ed8 reads +52)
//                   IShader (SShaderProperties, 4 bytes, zeroed): id at +0x04, node +0x1c (ctor 0x5e5490,
//                     getId 0x5d85d0 reads +28)
//                   CMaterialRenderer (SProperties: dword 0, dword -1, ushort 17): id at +0x0a, node +0x22
//                     (ctor 0x5d7e34, getId 0x5d98c4 reads +34)
//                   IShaderCode (SEmptyProperties): id at +0x00, node +0x18 (ctor 0x6e08b0, getId 0x6e1ab4
//                     reads +24)
//                   SShaderParameterDef (SPropeties, dword 1): id at +0x04, node +0x1c (ctor 0x5b9f64,
//                     getId 0x5bb378 reads +28)
//                 SIdValue therefore derives from Props and adds the id; getProperties(id) returns node +0x18,
//                 the SIdValue address, which is the Props subobject.
//
// Functions (ITexture instance addresses; the other instances use the same shape):
//   size 0x5e83a4, idBegin 0x5e8398, idEnd 0x5e83a0, get(id) 0x5e83ac (invalid entry when out of
//   range), getProperties(id) 0x5e83e4 (no range check), getNextId 0x5e8474, getMaxID 0x5e847c
//   (vector length - 1, truncated to 16 bits; 0xffff when the vector is empty), getId(name) 0x5e8ed8
//   (find; the key is an unmanaged temporary name; 0xffff when not found).
//   insert(name, value, managed) 0x5ea53c: see insert() below.
//   rename(id, name, managed) 0x5e9348: see rename() below.
//   remove(id, force) 0x5e9e7c: see remove() below.
//   removeAll(force) 0x5e9f78, removeAll() 0x5e67a0 (IShader), removeUnused() 0x5e67a8, remove(id)
//   0x5e67bc: wrappers with force = false.
//
// Template arguments: T is the stored value (boost::intrusive_ptr<X> in every pointer instance, whose
// copy and destruction do the counting; SShaderParameterDef in the shader-parameter instance), Props is the
// record handed out by getProperties, Traits gives isSet and useCount for a value. The original's second and
// third template arguments (the id type, unsigned short everywhere, and a bool that is false in every
// instance) are not parameters here; glitch-core-io/core/sided_collection.hpp spells the original instance
// names (glitch::core::detail::SIDedCollection<T, ushort, false, Props, Traits>) on top of this template.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iterator>
#include <map>
#include <vector>

namespace glitch::core::detail {

namespace sidedcollection {

// Value traits for the instances: a value is set when it is non-null, and its use count is the
// reference count at +0x04 of the pointed-to object (the intrusive_ptr copies and destructions do the
// counting). The shader-parameter instance has its own traits next to SShaderParameterDef.
struct SValueTraits {
    template <class P>
    static bool isSet(const P& p) { return static_cast<bool>(p); }
    template <class P>
    static int useCount(const P& p) { return countOf(*p, 0); }

private:
    // IReferenceCounted objects keep the count in referenceCounter (+0x04); CMaterialRenderer and CMaterial are not
    // IReferenceCounted and keep it in their first word, m_refCount (+0x00).
    template <class T>
    static auto countOf(const T& object, int) -> decltype(static_cast<int>(object.referenceCounter)) {
        return static_cast<int>(object.referenceCounter);
    }
    template <class T>
    static auto countOf(const T& object, long) -> decltype(static_cast<int>(object.m_refCount)) {
        return static_cast<int>(object.m_refCount);
    }
};

// Property record of the collections without per-entry properties (IShaderCode): an empty class, so the
// SIdValue that derives from it keeps its id at +0x00.
struct SEmptyProperties {};

}  // namespace sidedcollection

template <class T, class IdT, bool Flag, class Props, class Traits = sidedcollection::SValueTraits>
class SIDedCollection {
public:
    // Name key. The rb node copy duplicates a managed name, so every key owns its own buffer.
    struct SName {
        explicit SName(const char* n) : name(n), managed(false) {}  // 0x5e8498
        SName(const SName& other) : name(other.name), managed(false) {
            if (other.managed && other.name) {
                char* copy = new char[std::strlen(other.name) + 1];
                std::strcpy(copy, other.name);
                name = copy;
                managed = true;
            }
        }
        SName& operator=(const SName&) = delete;
        ~SName() {                                                 // 0x5e855c
            if (managed && name) delete[] name;
        }
        void setManaged() const { managed = true; }                // 0x5e84b8
        const char* get() const { return name; }                   // 0x5e84c4
        bool operator<(const SName& other) const {                 // 0x5e8544
            return std::strcmp(name, other.name) < 0;
        }

        const char* name;             // +0x00 (node +0x10)
        mutable bool managed;         // +0x04 (node +0x14)
    };

    // Mapped value (node +0x18): the instance's Props record and then the id, which sits at the end of the
    // record (see the header comment for the id offset of each instance).
    struct SIdValue : Props {
        SIdValue() = default;
        explicit SIdValue(std::uint16_t value) : Props(), id(value) {}  // 0x5e85b4, 0x6e08b0, ...
        std::uint16_t id = 0;
    };

    using Map = std::map<SName, SIdValue>;
    using MapIterator = typename Map::iterator;

    // Vector element: the value (+0x00) and its name-map node. 8 bytes for a pointer value, 20 for
    // SShaderParameterDef (16-byte value, node at +0x10).
    struct SEntry {
        SEntry() = default;                                                 // 0x5e84cc
        SEntry(const T& v, MapIterator it) : value(v), iterator(it) {}      // 0x5e84ec
        // 0x5e9e10: stores the new value (the old one is released by the assignment) and the node.
        void set(const T& v, MapIterator it) {
            value = v;
            iterator = it;
        }
        // 0x5e9e50: clears the value (released) and the node.
        void reset() {
            value = T{};
            iterator = MapIterator{};
        }

        T value{};              // +0x00
        MapIterator iterator{};  // +0x04
    };

    SIDedCollection() = default;  // 0x5e840c: count 0, next id 0, empty map and vector

    // 0x5e97a0: the vector is destroyed first (each value is released), then the map is cleared.
    ~SIDedCollection() {
        entries.clear();
        ids.clear();
        count = 0;
    }

    SIDedCollection(const SIDedCollection&) = delete;
    SIDedCollection& operator=(const SIDedCollection&) = delete;

    // Names in key order (strcmp); idBegin is the leftmost node, idEnd the header.
    typename Map::const_iterator idBegin() const { return ids.begin(); }  // 0x5e8398
    typename Map::const_iterator idEnd() const { return ids.end(); }      // 0x5e83a0
    std::uint16_t size() const { return count; }                          // 0x5e83a4

    // The entry at id, or the shared invalid entry when id is out of range (0x5e83ac).
    SEntry* get(std::uint16_t id) {
        if (id < entries.size()) return &entries[id];
        return &invalidEntry;
    }
    const SEntry* get(std::uint16_t id) const {
        if (id < entries.size()) return &entries[id];
        return &invalidEntry;
    }

    // Record of the entry (0x5e83e4, 0x5e83f8): node +0x18, the SIdValue address, which is the Props
    // subobject. No range check in the original.
    Props* getProperties(std::uint16_t id) { return static_cast<Props*>(&entries[id].iterator->second); }
    const Props* getProperties(std::uint16_t id) const {
        return static_cast<const Props*>(&entries[id].iterator->second);
    }

    std::uint16_t getNextId() const { return nextId; }  // 0x5e8474

    // Vector length - 1, truncated to 16 bits (0x5e847c). 0xffff for an empty vector.
    std::uint16_t getMaxID() const { return static_cast<std::uint16_t>(entries.size() - 1); }

    // Id of the name, or 0xffff (0x5e8ed8).
    std::uint16_t getId(const char* name) const {
        const auto it = ids.find(SName(name));
        if (it == ids.end()) return 0xffff;
        return it->second.id;
    }

    // 0x5ea53c. Counts the entry first (+0x26), takes id = next free id (+0x24), inserts the name
    // (the original uses insert_unique and does not test its bool: an existing name is re-linked
    // to the new value; see the open questions), sets the managed flag when asked, stores the
    // value at entries[id] (replacing a slot below the vector length, or appending), then moves
    // next free id up past the set entries. Returns id.
    std::uint16_t insert(const char* name, const T& value, bool managed) {
        ++count;
        const std::uint16_t id = nextId;
        const auto result = ids.emplace(SName(name), SIdValue(id));
        const auto it = result.first;
        if (managed) it->first.setManaged();
        if (id < entries.size()) {
            entries[id].set(value, it);
        } else {
            SEntry entry;
            entry.set(value, it);
            entries.push_back(entry);
        }
        std::size_t next = id;
        do {
            ++next;
            nextId = static_cast<std::uint16_t>(next);
        } while (next < entries.size() && Traits::isSet(entries[next].value));
        return id;
    }

    // Test helper, not a recovered function: inserts a copy of the name (owned by the key) under the next
    // free id. Returns the id, or 0xffff when the name already exists.
    std::uint16_t add(const char* name, const T& value) {
        if (ids.find(SName(name)) != ids.end()) return 0xffff;
        char* owned = new char[std::strlen(name) + 1];
        std::strcpy(owned, name);
        return insert(owned, value, true);
    }

    // The Props hook of the CMaterialRenderer instance (SProperties::onRemove 0x5d7c44, called by 0x5d9f74 before the node is erased
    // with the record, the collection and the id); a Props without one (every other instance) does nothing.
    template <class P>
    static auto invokeOnRemove(P& props, void* owner, std::uint16_t id, int) -> decltype(props.onRemove(owner, id), void()) {
        props.onRemove(owner, id);
    }
    // The use count remove() tests: the traits' count of the value, or, for an instance whose traits count through the record
    // (the shader-parameter instance counts the users in its Props word at node +0x18), their count of value and record.
    template <class Tr, class V, class P>
    static auto useCountOf(const V& value, const P& props, int) -> decltype(Tr::useCount(value, props)) {
        return Tr::useCount(value, props);
    }
    template <class Tr, class V, class P>
    static int useCountOf(const V& value, const P&, long) {
        return Tr::useCount(value);
    }
    template <class P>
    static void invokeOnRemove(P&, void*, std::uint16_t, long) {}

    // 0x5e9348. Fails (false) when the id is out of range or unset, or when the new name already
    // exists. Otherwise the new name is linked to the same id, the old node is erased, the managed
    // flag is set on the new key when asked, and the entry points at the new node. Count and next
    // free id are unchanged.
    bool rename(std::uint16_t id, const char* name, bool managed) {
        if (id >= entries.size()) return false;
        SEntry& entry = entries[id];
        if (!Traits::isSet(entry.value)) return false;
        const auto result = ids.emplace(SName(name), SIdValue(id));
        if (!result.second) return false;
        ids.erase(entry.iterator);
        if (managed) result.first->first.setManaged();
        entry.iterator = result.first;
        return true;
    }

    // 0x5e9e7c. Removes the entry at id when it is set and either only the collection uses the value
    // (count 1) or force is true. The node is erased, the entry reset, count decremented, next free
    // id lowered to id when that is smaller, and the trailing unset entries are cut from the vector
    // only when at least one set entry remains (an all-unset vector keeps its length).
    // The CMaterialRenderer instance (0x5d9f74) calls materialrenderermanager::SProperties::onRemove
    // before the erase; that hook belongs to glitch-video's manager, and the template calls it when the Props has one.
    bool remove(std::uint16_t id, bool force = false) {
        if (id >= entries.size()) return false;
        SEntry& entry = entries[id];
        if (!Traits::isSet(entry.value)) return false;
        if (useCountOf<Traits>(entry.value, entry.iterator->second, 0) != 1 && !force) return false;
        invokeOnRemove(entry.iterator->second, static_cast<void*>(this), id, 0);  // the record's onRemove hook, when it has one
        ids.erase(entry.iterator);
        entry.reset();
        if (id < nextId) nextId = id;
        --count;
        std::size_t last = entries.size();
        while (last > 0 && !Traits::isSet(entries[last - 1].value)) --last;
        if (last > 0 && last < entries.size()) entries.resize(last);
        return true;
    }

    // 0x5e9f78. In-order walk over the names; the successor is taken before each removal. Returns
    // the number removed (uint16 in the original, which keeps the count in a 16-bit slot).
    std::uint16_t removeAll(bool force = false) {
        std::uint16_t removed = 0;
        auto it = ids.begin();
        while (it != ids.end()) {
            const auto next = std::next(it);
            if (remove(it->second.id, force)) ++removed;
            it = next;
        }
        return removed;
    }

    void removeUnused() { removeAll(false); }  // 0x5ea048 / 0x5e67a8

    // Entry table and name map at the original offsets (see the header comment).
    std::vector<SEntry> entries;  // +0x18..+0x20
    Map ids;                      // +0x00..+0x10
    std::uint16_t nextId = 0;     // +0x24
    std::uint16_t count = 0;      // +0x26

private:
    SEntry invalidEntry{};  // the original's shared invalid entry
};

namespace sid_layout {
// The former spelling of the shared template and its traits.
using SValueTraits = sidedcollection::SValueTraits;
using IntrusiveTraits = sidedcollection::SValueTraits;
using SEmptyProperties = sidedcollection::SEmptyProperties;
template <class T, class Props, class Traits = sidedcollection::SValueTraits>
using SIDedCollection = glitch::core::detail::SIDedCollection<T, std::uint16_t, false, Props, Traits>;
}  // namespace sid_layout

}  // namespace glitch::core::detail

// Open questions (not coded as fact):
//   - The ITexture instance's Props (STextureProperties) holds a glitch string and the int 39 (0x27) that
//     every SIdValue ctor of that instance writes at +0x18; the meaning of the int is not recovered
//     (glitch-video owns STextureProperties).
//   - insert does not test the bool of insert_unique (0x5ea53c): a duplicate name re-links to the
//     existing node. Whether callers guarantee uniqueness is not recovered.
//   - SShaderParameterDef (20-byte entries, see the header comment): the template holds it as T; its
//     shared-string member (SSharedStringHeapEntry::SData, released by SData::release) and its traits are
//     glitch-video's.
//   - The managed flag: the original sets it on the key after insertion (insert, rename); the name
//     is not copied, so the caller's buffer becomes owned when managed is true.
