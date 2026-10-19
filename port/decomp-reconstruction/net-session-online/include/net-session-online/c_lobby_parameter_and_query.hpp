// CLobbyParameterAndQuery: the game-parameter and query-condition block sent
// with lobby requests. Vtable _ZTV23CLobbyParameterAndQuery; the first slot is
// the destructor. The packed form is a count byte followed by the non-empty
// parameter values concatenated in order.
#pragma once

#include <cstdint>
#include <vector>

class CLobbyParameterAndQuery {
public:
    CLobbyParameterAndQuery();
    virtual ~CLobbyParameterAndQuery();
    CLobbyParameterAndQuery(const CLobbyParameterAndQuery&) = delete;
    CLobbyParameterAndQuery& operator=(const CLobbyParameterAndQuery&) = delete;

    // 0x836a20 _ZN23CLobbyParameterAndQuery13PackParameterERi
    // Returns a new[] buffer (caller frees with delete[]) or nullptr when there
    // is nothing to send. packedLength receives the buffer length in bytes.
    char* PackParameter(std::int32_t& packedLength);

    // 0x836b10 _ZN23CLobbyParameterAndQuery17AddQueryConditionEi11compareOptTPc
    // Stores the value as a record in slot index: [index][compareOpt][len >> 8]
    // [len & 0xff][value bytes]. The slot length is len + 4.
    void AddQueryCondition(std::int32_t index, std::int32_t compareOpt, const char* value);

    // 0x836c0c _ZN23CLobbyParameterAndQuery17SetParameterValueEiPc
    // Same record as AddQueryCondition, with the parameter type from +0x08 as the
    // second byte. The original's return value (the memcpy result) is not kept.
    void SetParameterValue(std::int32_t index, const char* value);

    // Not in the original: test seams. Reserve sets the parameter count (the
    // original reads it from oconf.bar, which is not recovered), StoreParameter
    // fills the +0x14 and +0x18 arrays that the original fills while parsing,
    // and SetParameterType fills the +0x08 type bytes the parser would fill.
    void Reserve(std::int32_t count);
    void StoreParameter(std::int32_t index, const char* data, std::int32_t length);
    void SetParameterType(std::int32_t index, std::uint8_t type);

    std::int32_t Count() const { return count_; }

private:
    void StoreRecord(std::int32_t index, std::uint8_t kind, const char* value);

    std::int32_t count_ = 0;                // +0x04
    std::vector<std::uint8_t> types_;       // +0x08 (one type byte per parameter)
    std::vector<char*> values_;             // +0x14 (array of owned buffers)
    std::vector<std::int32_t> lengths_;     // +0x18 (inline int array in the original)
};
