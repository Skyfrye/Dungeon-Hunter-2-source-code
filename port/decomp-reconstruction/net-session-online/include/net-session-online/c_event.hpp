// CEvent: one queued session event, a type id plus a private copy of an opaque
// payload, stamped with the online clock when it was created.
// Original vtable: _ZTV6CEvent. Offsets below are the original 32-bit layout.
#pragma once

#include <cstddef>
#include <cstdint>

class CEvent {
public:
    CEvent(std::int32_t type, const void* data, std::size_t size);  // C1EiPvi / C2EiPvi
    CEvent(const CEvent& other);                                    // C1ERKS_ / C2ERKS_
    CEvent& operator=(const CEvent& other);                         // aSERKS_
    virtual ~CEvent();                                              // D1 / D2

    // Re-stamps the event and replaces its payload with a copy of data/size.
    void Init(std::int32_t type, const void* data, std::size_t size);  // 4InitEiPvi
    // True when the flag is set and the event is more than 99 ms old.
    bool IsExpired(unsigned int enabled) const;                        // 9IsExpiredEj
    // Copies the payload to dst when it fits in capacity; always returns -1.
    int CopyData(void* dst, int capacity) const;                       // 8CopyDataEPvi

    std::int32_t Type() const { return type_; }

private:
    std::int32_t type_ = 0;        // +0x04
    void* data_ = nullptr;         // +0x08
    std::size_t size_ = 0;         // +0x0c
    std::int32_t timestamp_ = 0;   // +0x10 online clock at Init
};
