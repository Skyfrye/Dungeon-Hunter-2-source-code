#pragma once

// Structs::v2Is* condition records for slice structs_0 (see NOTES.md, "Structs records" and
// "Thunks: read and finalize forwarders"). The roots derive from Structs::v2Condition
// (structs_records.hpp); the others derive from one of the roots. Field names are m_wN (word N), and the
// comment gives the 32-bit offset. The roots' read functions are partial (see w7_structs_0.cpp).
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace Structs {

class v2IsQuestInState : public v2Condition {
public:
    ~v2IsQuestInState() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);
    std::int32_t Quest = 0;  // +0x8
    std::int32_t State = 0;  // +0xc
};

class v2IsQuestStateLower : public v2Condition {
public:
    ~v2IsQuestStateLower() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);
    std::int32_t Quest = 0;  // +0x8
    std::int32_t State = 0;  // +0xc
};

class v2IsQuestStateHigher : public v2Condition {
public:
    ~v2IsQuestStateHigher() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);
    std::int32_t Quest = 0;  // +0x8
    std::int32_t State = 0;  // +0xc
};

class v2IsPlayerInLevel : public v2Condition {
public:
    ~v2IsPlayerInLevel() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);
    std::int32_t Level = 0;  // +0x8
    std::int32_t NotUsed1 = 0;  // +0xc
};

class v2IsEventInState : public v2Condition {
public:
    ~v2IsEventInState() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);
    std::int32_t Event = 0;  // +0x8
    std::int32_t State = 0;  // +0xc
};

class v2IsQuestLocked : public v2IsQuestInState {
public:
    ~v2IsQuestLocked() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestActive : public v2IsQuestInState {
public:
    ~v2IsQuestActive() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestCompleted : public v2IsQuestInState {
public:
    ~v2IsQuestCompleted() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestClosed : public v2IsQuestInState {
public:
    ~v2IsQuestClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestPostClosed : public v2IsQuestInState {
public:
    ~v2IsQuestPostClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenLocked : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenLocked() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenAvailable : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenAvailable() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenActive : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenActive() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenCompleted : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenCompleted() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenClosed : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestLowerThenPostClosed : public v2IsQuestStateLower {
public:
    ~v2IsQuestLowerThenPostClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenLocked : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenLocked() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenAvailable : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenAvailable() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenActive : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenActive() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenCompleted : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenCompleted() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenClosed : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsQuestHigherThenPostClosed : public v2IsQuestStateHigher {
public:
    ~v2IsQuestHigherThenPostClosed() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsEventActive : public v2IsEventInState {
public:
    ~v2IsEventActive() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsEventInactive : public v2IsEventInState {
public:
    ~v2IsEventInactive() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2IsEventCompleted : public v2IsEventInState {
public:
    ~v2IsEventCompleted() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

// Free functions for the deleting destructors (D0), one per class.
void DeletingDestructor(v2IsQuestInState* self);
void DeletingDestructor(v2IsQuestStateLower* self);
void DeletingDestructor(v2IsQuestStateHigher* self);
void DeletingDestructor(v2IsPlayerInLevel* self);
void DeletingDestructor(v2IsEventInState* self);
void DeletingDestructor(v2IsQuestLocked* self);
void DeletingDestructor(v2IsQuestActive* self);
void DeletingDestructor(v2IsQuestCompleted* self);
void DeletingDestructor(v2IsQuestClosed* self);
void DeletingDestructor(v2IsQuestPostClosed* self);
void DeletingDestructor(v2IsQuestLowerThenLocked* self);
void DeletingDestructor(v2IsQuestLowerThenAvailable* self);
void DeletingDestructor(v2IsQuestLowerThenActive* self);
void DeletingDestructor(v2IsQuestLowerThenCompleted* self);
void DeletingDestructor(v2IsQuestLowerThenClosed* self);
void DeletingDestructor(v2IsQuestLowerThenPostClosed* self);
void DeletingDestructor(v2IsQuestHigherThenLocked* self);
void DeletingDestructor(v2IsQuestHigherThenAvailable* self);
void DeletingDestructor(v2IsQuestHigherThenActive* self);
void DeletingDestructor(v2IsQuestHigherThenCompleted* self);
void DeletingDestructor(v2IsQuestHigherThenClosed* self);
void DeletingDestructor(v2IsQuestHigherThenPostClosed* self);
void DeletingDestructor(v2IsEventActive* self);
void DeletingDestructor(v2IsEventInactive* self);
void DeletingDestructor(v2IsEventCompleted* self);

}  // namespace Structs
