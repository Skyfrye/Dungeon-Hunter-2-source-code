#include "net-session-online/c_event.hpp"

#include <cstring>

#include "net-session-online/c_online.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"

// 0x7fe084 _ZN6CEventC1ERKS_
// 0x7fe0d4 _ZN6CEventC2ERKS_
CEvent::CEvent(const CEvent& other) {
    Init(other.type_, other.data_, other.size_);
}

// 0x7fe124 _ZN6CEventC1EiPvi
// 0x7fe164 _ZN6CEventC2EiPvi
CEvent::CEvent(std::int32_t type, const void* data, std::size_t size) {
    Init(type, data, size);
}

// 0x7fde40 _ZN6CEventD1Ev
// 0x7fdea4 _ZN6CEventD2Ev
CEvent::~CEvent() {
    if (data_ != nullptr) {
        CustomFree(data_);
    }
}

// 0x7fdfe0 _ZN6CEvent4InitEiPvi
void CEvent::Init(std::int32_t type, const void* data, std::size_t size) {
    type_ = type;
    timestamp_ = static_cast<std::int32_t>(COnline::GetInstance()->GetCounter());  // GetOnline()+0x28, the receive counter (not the clock)
    // Original: (data && size != 0) && (int)size >= 0.
    const bool copyable = data != nullptr && size != 0 &&
                          static_cast<std::ptrdiff_t>(size) >= 0;
    if (!copyable) {
        return;
    }
    void* copy = ::operator new[](size, static_cast<MemoryHintState>(2));  // _Znaj15MemoryHintState, hint 2
    data_ = copy;
    if (copy != nullptr) {
        size_ = size;
        std::memcpy(copy, data, size);
    }
}

// 0x7fe03c _ZN6CEventaSERKS_
CEvent& CEvent::operator=(const CEvent& other) {
    if (this != &other) {
        if (data_ != nullptr) {
            CustomFree(data_);
        }
        // Deviation: the original leaves the freed pointer in place, which
        // lets a later destructor free it twice when `other` has no payload.
        data_ = nullptr;
        Init(other.type_, other.data_, other.size_);
    }
    return *this;
}

// 0x7fdeec _ZN6CEvent9IsExpiredEj
bool CEvent::IsExpired(unsigned int enabled) const {
    if (enabled == 0) {
        return false;
    }
    const auto now = COnline::GetInstance()->GetCounter();  // GetOnline()+0x28 (0x7fdf04: LDR R0,[R0,#0x28])
    const auto age = now - static_cast<std::uint32_t>(timestamp_);
    return 99 < age;
}

// 0x7fdf24 _ZN6CEvent8CopyDataEPvi
// -1 when the destination is null, the capacity is not positive, or the payload does not fit; otherwise the payload is copied and
// its size (+0x0c) is returned.
int CEvent::CopyData(void* dst, int capacity) const {
    if (dst == nullptr || capacity <= 0) {
        return -1;
    }
    const std::int32_t size = static_cast<std::int32_t>(size_);
    if (capacity < size) {
        return -1;
    }
    std::memcpy(dst, data_, size_);
    return size;
}
