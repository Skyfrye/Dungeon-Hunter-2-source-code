// Batch g1-game-world-CRoomSearchFilter-434a1f-0: the CRoomSearchFilter bodies (constructors, destructors, Clear,
// the Is/Erase/Set/Test methods, Copy and operator=). Declarations come from dh2/CRoomSearchFilter.hpp. A PARTIAL
// body names what it leaves out.
//
// The two active masks. The original constructors and the copy constructor store the vptr and the three vector words
// of each vector, but they never store the masks at +0x1c (m_intFilterMask) and +0x20 (m_binFilterMask). Copy and
// operator= do not copy them either. So a mask keeps whatever the storage held before construction. The port does the
// same: the masks have no initialiser in dh2/CRoomSearchFilter.hpp, so the constructors leave them indeterminate and
// they are first written by SetSearchAttribute* or EraseSearchAttribute*. That is not a divergence, so these rows are
// reconstructed. The owner's storage is not recovered (CMatchingLocal keeps one at +0x49f8 of the CMatchingLocal
// object, whose constructor is outside this batch).

#include <algorithm>
#include <cstring>

#include "dh2/CRoomAttributes.hpp"
#include "dh2/CRoomSearchFilter.hpp"

namespace {

// Bin filter values are stored inline in tSearchFilterBin::value (64 bytes, the 76-byte stride of the original).
constexpr unsigned int kBinFilterCapacity = sizeof(CRoomSearchFilter::tSearchFilterBin::value);

}  // namespace

// 0x8191fc CRoomSearchFilter::CRoomSearchFilter()   (base object constructor, C2)
// 0x81923c CRoomSearchFilter::CRoomSearchFilter()   (complete object constructor, C1; the same code)
// The original zeroes the vector begin, end and capacity words (the vectors' default state, given here by the
// vector default constructors) and the vptr is the compiler's. It does not store the masks at +0x1c and +0x20, so they
// stay indeterminate until a Set or an Erase writes them - the port's members have no initialiser, so the constructors
// leave them indeterminate in the same way.
CRoomSearchFilter::CRoomSearchFilter() {}

// 0x81a428 CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&)   (complete object constructor, C1)
// 0x81a478 CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&)   (base object constructor, C2; the same code)
// The original zeroes the vector words and then calls Copy, which copies the two vectors only. The masks are not
// copied, so they stay indeterminate in the new object, as in the default constructor; the port's vector members are
// default-constructed before this body and Copy copies the same two vectors.
CRoomSearchFilter::CRoomSearchFilter(const CRoomSearchFilter& other) {
    Copy(other);
}

// 0x819c64 CRoomSearchFilter::~CRoomSearchFilter()   (complete object destructor, D1)
// 0x819cbc CRoomSearchFilter::~CRoomSearchFilter()   (base object destructor, D2; the same code)
// The original stores the vptr, destroys the bin vector (+0x10) and then the int vector (+0x04). The members are
// destroyed in reverse declaration order, so the bin vector goes first here too.
CRoomSearchFilter::~CRoomSearchFilter() {}

// 0x819ca0 CRoomSearchFilter::~CRoomSearchFilter()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~CRoomSearchFilter() followed by CustomFree(this)). A delete
// expression on a CRoomSearchFilter does the same, so there is no separate body.

// 0x81927c CRoomSearchFilter::Clear()
// Sets the int vector end (+0x08) to its begin (+0x04) and the bin vector end (+0x14) to its begin (+0x10). The
// capacities and both masks are kept. The pseudocode also returns this in r0; the declared return type is void.
void CRoomSearchFilter::Clear() {
    m_intFilters.clear();
    m_binFilters.clear();
}

// 0x8192a0 CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_INT)
// Tests bit `attribute` of m_intFilterMask (+0x1c).
bool CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_INT attribute) {
    return (m_intFilterMask & (1 << attribute)) != 0;
}

// 0x8192b8 CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_BIN)
// Tests bit `attribute` of m_binFilterMask (+0x20).
bool CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_BIN attribute) {
    return (m_binFilterMask & (1 << attribute)) != 0;
}

// 0x8192d0 CRoomSearchFilter::EraseSearchAttributeInt(tROOM_ATTRIBUTES_INT)
// Clears the attribute's bit in m_intFilterMask (+0x1c). Then the first entry with that attribute, if there is one, is
// removed. The entries after it move down one place each, in order, and the end drops by one entry (12 bytes).
void CRoomSearchFilter::EraseSearchAttributeInt(tROOM_ATTRIBUTES_INT attribute) {
    m_intFilterMask &= ~(1 << attribute);
    const auto id = static_cast<std::int32_t>(attribute);
    auto it = std::find_if(m_intFilters.begin(), m_intFilters.end(),
                           [id](const tSearchFilterInt& filter) { return filter.attribute == id; });
    if (it != m_intFilters.end()) {
        m_intFilters.erase(it);
    }
}

// 0x8193ac CRoomSearchFilter::EraseSearchAttributeBin(tROOM_ATTRIBUTES_BIN)
// Clears the attribute's bit in m_binFilterMask (+0x20). Then the first entry with that attribute, if there is one, is
// removed. The entries after it move down one place each, in order (76 bytes each), and the end drops by one entry.
void CRoomSearchFilter::EraseSearchAttributeBin(tROOM_ATTRIBUTES_BIN attribute) {
    m_binFilterMask &= ~(1 << attribute);
    const auto id = static_cast<std::int32_t>(attribute);
    auto it = std::find_if(m_binFilters.begin(), m_binFilters.end(),
                           [id](const tSearchFilterBin& filter) { return filter.attribute == id; });
    if (it != m_binFilters.end()) {
        m_binFilters.erase(it);
    }
}

// 0x819488 CRoomSearchFilter::TestIntValues(int,int,ROOM_SEARCH_OPERATOR)
// roomValue is the room's attribute and filterValue the filter's value. The operator selects one of the six comparisons
// (0 to 5). Any other value gives false.
bool CRoomSearchFilter::TestIntValues(int roomValue, int filterValue, ROOM_SEARCH_OPERATOR op) {
    switch (op) {
        case kOpEqual:
            return roomValue == filterValue;
        case kOpNotEqual:
            return roomValue != filterValue;
        case kOpLess:
            return roomValue < filterValue;
        case kOpLessEqual:
            return roomValue <= filterValue;
        case kOpGreater:
            return roomValue > filterValue;
        case kOpGreaterEqual:
            return roomValue >= filterValue;
        default:
            return false;
    }
}

// 0x819510 CRoomSearchFilter::TestBinValues(char*,int,char*,int,ROOM_SEARCH_OPERATOR)
// The sizes must be equal and the bytes must match. A nonzero operator inverts that result, so under an inverting
// operator a size mismatch counts as a match.
bool CRoomSearchFilter::TestBinValues(char* roomBytes, int roomSize, char* filterBytes, int filterSize,
                                      ROOM_SEARCH_OPERATOR op) {
    const bool same = roomSize == filterSize &&
                      std::memcmp(roomBytes, filterBytes, static_cast<std::size_t>(roomSize)) == 0;
    return static_cast<int>(op) != 0 ? !same : same;
}

// 0x819548 CRoomSearchFilter::TestRoomAttributes(CRoomAttributes&)
// Every int filter must hold, in list order, and then every bin filter. A filter whose attribute is not active in the
// room fails. With no bin filters the result is true once the int filters hold.
bool CRoomSearchFilter::TestRoomAttributes(CRoomAttributes& attributes) {
    for (const tSearchFilterInt& filter : m_intFilters) {
        const auto attribute = static_cast<tROOM_ATTRIBUTES_INT>(filter.attribute);
        if (!attributes.IsAttibuteActive(attribute)) {
            return false;
        }
        const int roomValue = attributes.GetAttributeInt(attribute);
        if (!TestIntValues(roomValue, filter.value, static_cast<ROOM_SEARCH_OPERATOR>(filter.op))) {
            return false;
        }
    }
    for (tSearchFilterBin& filter : m_binFilters) {
        const auto attribute = static_cast<tROOM_ATTRIBUTES_BIN>(filter.attribute);
        if (!attributes.IsAttibuteActive(attribute)) {
            return false;
        }
        std::uint8_t roomBytes[256];
        const int roomSize = attributes.GetAttributeBin(attribute, roomBytes, sizeof(roomBytes));
        if (!TestBinValues(reinterpret_cast<char*>(roomBytes), roomSize, reinterpret_cast<char*>(filter.value),
                           filter.size, static_cast<ROOM_SEARCH_OPERATOR>(filter.op))) {
            return false;
        }
    }
    return true;
}

// 0x819cf8 CRoomSearchFilter::SetSearchAttributeInt(tROOM_ATTRIBUTES_INT,ROOM_SEARCH_OPERATOR,int)
// Replaces any filter on the attribute: the old entry is erased (EraseSearchAttributeInt), the mask bit is set, and the
// new entry (attribute, op, value) is appended at the end. The original grows its storage when that is full; the port
// leaves growth to std::vector.
void CRoomSearchFilter::SetSearchAttributeInt(tROOM_ATTRIBUTES_INT attribute, ROOM_SEARCH_OPERATOR op, int value) {
    EraseSearchAttributeInt(attribute);
    m_intFilterMask |= 1 << attribute;
    tSearchFilterInt filter{};
    filter.attribute = static_cast<std::int32_t>(attribute);
    filter.op = static_cast<std::int32_t>(op);
    filter.value = value;
    m_intFilters.push_back(filter);
}

// 0x819edc CRoomSearchFilter::SetSearchAttributeBin(tROOM_ATTRIBUTES_BIN,ROOM_SEARCH_OPERATOR,void*,unsigned int)
// PARTIAL: the original copies `size` bytes into the 64-byte inline value buffer with no bound. Above 64 bytes it
// overruns the stack buffer that holds the new entry, so that case is undefined in the original and is not reproduced.
// The port copies at most 64 bytes and stores that count as the size. The per-attribute limit is
// CRoomAttributes::GetMaxBufferSize (table CSWTCH_280, not recovered).
// The rest follows the original: the old entry is erased, the mask bit is set, the value buffer is zeroed, and the new
// entry is appended at the end.
void CRoomSearchFilter::SetSearchAttributeBin(tROOM_ATTRIBUTES_BIN attribute, ROOM_SEARCH_OPERATOR op, void* data,
                                              unsigned int size) {
    EraseSearchAttributeBin(attribute);
    m_binFilterMask |= 1 << attribute;
    tSearchFilterBin filter{};
    filter.attribute = static_cast<std::int32_t>(attribute);
    filter.op = static_cast<std::int32_t>(op);
    const unsigned int count = std::min(size, kBinFilterCapacity);
    if (count != 0) {
        std::memcpy(filter.value, data, count);
    }
    filter.size = static_cast<std::int32_t>(count);
    m_binFilters.push_back(filter);
}

// 0x81a3e4 CRoomSearchFilter::Copy(CRoomSearchFilter const&)
// Assigns the int vector (+0x04) and then the bin vector (+0x10) from other. The masks are not copied.
void CRoomSearchFilter::Copy(const CRoomSearchFilter& other) {
    m_intFilters = other.m_intFilters;
    m_binFilters = other.m_binFilters;
}

// 0x81a40c CRoomSearchFilter::operator=(CRoomSearchFilter const&)
// Self-assignment does nothing; otherwise Copy. Returns this.
CRoomSearchFilter& CRoomSearchFilter::operator=(const CRoomSearchFilter& other) {
    if (this != &other) {
        Copy(other);
    }
    return *this;
}
