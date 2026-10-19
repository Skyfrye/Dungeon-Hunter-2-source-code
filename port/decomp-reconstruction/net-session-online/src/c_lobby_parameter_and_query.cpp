#include "net-session-online/c_lobby_parameter_and_query.hpp"

#include <cstdlib>
#include <cstring>
#include <string>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/xp_api.hpp"

namespace {
constexpr std::int32_t kMaxParameters = 10;  // GAME_PARAM_COUNT is capped at 10 in the original
constexpr char kLineFeed = 10;
constexpr char kCarriageReturn = 13;
constexpr char kKeyDelimiter = 58;           // ':'
constexpr char kTypeDelimiter = 124;         // '|'
}  // namespace

// 0x836e3c _ZN23CLobbyParameterAndQueryC1Ev
// 0x837224 _ZN23CLobbyParameterAndQueryC2Ev (same body as C1; this one definition serves both)
// Opens "oconf.bar" and parses it: the first line is read, then each following line is split
// into "KEY:VALUE". GAME_PARAM_COUNT sets the count (capped at 10) and GAME_PARAM_TYPE stores
// the '|'-separated type bytes while the count allows. A missing file is reported and leaves the
// object empty. Deviation: the original copies the value text into fixed 32 and 256 byte buffers
// and reads past a line without ':'; here the buffers are the size of the file, and a missing
// value is empty.
CLobbyParameterAndQuery::CLobbyParameterAndQuery() {
    types_.assign(static_cast<std::size_t>(kMaxParameters), 0);

    const int handle = XP_API_FILE_OPEN("oconf.bar", "r");
    if (handle == 0) {
        XP_DEBUG_OUT("[CLobbyParameterAndQuery] not found \n", "oconf.bar");
        return;
    }

    const std::size_t length = static_cast<std::size_t>(XP_API_FILE_GET_LENGTH(handle));
    std::vector<char> fileText(length + 1, 0);
    XP_API_FILE_READ(fileText.data(), length, 1, handle);

    std::vector<char> line(length + 1, 0);
    std::vector<char> key(length + 1, 0);
    std::vector<char> value(length + 1, 0);

    XP_API_PARSE_DATA(fileText.data(), line.data(), 0, kLineFeed);
    std::size_t lineLength = XP_API_STRLEN(line.data());
    if (lineLength > 0) {
        if (line[lineLength - 1] == kCarriageReturn) {
            line[lineLength - 1] = 0;
        }
        for (int index = 1;; ++index) {
            std::memset(key.data(), 0, key.size());
            std::memset(value.data(), 0, value.size());
            XP_API_PARSE_DATA(line.data(), key.data(), 0, kKeyDelimiter);
            const int valueStart = XP_API_PARSE_DATA(line.data(), value.data(), 1, kKeyDelimiter);
            std::memset(value.data(), 0, value.size());
            lineLength = XP_API_STRLEN(line.data());
            if (valueStart >= 0) {
                std::memcpy(value.data(), line.data() + valueStart, lineLength - static_cast<std::size_t>(valueStart));
            }
            XP_API_STRTRIM(key.data());
            XP_API_STRTRIM(value.data());

            if (std::strcmp(key.data(), "GAME_PARAM_COUNT") == 0) {
                const std::int32_t parsed = std::atoi(value.data());
                count_ = parsed >= 11 ? kMaxParameters : parsed;
            }

            if (std::strcmp(key.data(), "GAME_PARAM_TYPE") == 0) {
                const std::size_t valueLength = std::strlen(value.data());
                if (valueLength > 0) {
                    // The scan starts from the position the original's strcmp result leaves, 0.
                    std::size_t position = 0;
                    std::size_t segmentStart = 0;
                    std::int32_t typeIndex = 0;
                    do {
                        do {
                            ++position;
                        } while (position != valueLength && value[position] != kTypeDelimiter);
                        if (count_ > typeIndex) {
                            const std::string token(value.data() + segmentStart, position - segmentStart);
                            types_[static_cast<std::size_t>(typeIndex)] =
                                static_cast<std::uint8_t>(std::atoi(token.c_str()));
                            ++typeIndex;
                            segmentStart = position + 1;
                        }
                    } while (position != valueLength);
                }
            }

            std::memset(line.data(), 0, line.size());
            XP_API_PARSE_DATA(fileText.data(), line.data(), index, kLineFeed);
            lineLength = XP_API_STRLEN(line.data());
            if (lineLength == 0) {
                break;
            }
            if (line[lineLength - 1] == kCarriageReturn) {
                line[lineLength - 1] = 0;
            }
        }
    }
    XP_API_FILE_CLOSE(handle);

    // Deviation: a negative GAME_PARAM_COUNT is kept as 0 here (the original asks for a huge block).
    if (count_ < 0) {
        count_ = 0;
    }
    const std::size_t parameters = static_cast<std::size_t>(count_);
    values_.assign(parameters, nullptr);
    lengths_.assign(parameters, 0);
}

// 0x836d00 _ZN23CLobbyParameterAndQueryD1Ev
// 0x836dac _ZN23CLobbyParameterAndQueryD2Ev
CLobbyParameterAndQuery::~CLobbyParameterAndQuery() {
    for (char* value : values_) {
        delete[] value;
    }
}


// 0x836a20 _ZN23CLobbyParameterAndQuery13PackParameterERi
char* CLobbyParameterAndQuery::PackParameter(std::int32_t& packedLength) {
    packedLength = 0;
    if (count_ <= 0) {
        return nullptr;
    }
    std::int32_t total = 0;
    for (std::int32_t i = 0; i < count_; ++i) {
        total += lengths_[i];
    }
    if (total == 0) {
        return nullptr;
    }

    // Buffer holds the count byte, the payload and one trailing zero.
    char* out = new char[static_cast<std::size_t>(total) + 2]();
    // Count byte: the number of parameters with a non-zero length. The
    // original counts down from count_ once for each empty parameter.
    std::int32_t nonEmpty = count_;
    std::int32_t offset = 1;
    for (std::int32_t i = 0; i < count_; ++i) {
        const std::int32_t len = lengths_[i];
        if (len == 0) {
            --nonEmpty;
            continue;
        }
        std::memcpy(out + offset, values_[i], static_cast<std::size_t>(len));
        offset += len;
    }
    out[0] = static_cast<char>(nonEmpty);
    packedLength = offset;
    return out;
}

// Helper, not in the original: builds the record that both setters store. The
// original allocates len + 5 bytes (the extra one stays zero), records len + 4 as
// the slot length, and frees the previous slot value before the new one is set.
void CLobbyParameterAndQuery::StoreRecord(std::int32_t index, std::uint8_t kind, const char* value) {
    const std::size_t slot = static_cast<std::size_t>(index);
    const std::size_t valueLen = std::strlen(value);

    char* record = new char[valueLen + 5]();
    record[0] = static_cast<char>(index);                          // slot index, low byte
    record[1] = static_cast<char>(kind);                           // compareOpt or type
    record[2] = static_cast<char>((valueLen >> 8) & 0xff);         // length, high byte
    record[3] = static_cast<char>(valueLen & 0xff);                // length, low byte
    std::memcpy(record + 4, value, valueLen);

    delete[] values_[slot];
    values_[slot] = record;
    lengths_[slot] = static_cast<std::int32_t>(valueLen + 4);
}

// 0x836b10 _ZN23CLobbyParameterAndQuery17AddQueryConditionEi11compareOptTPc
// The original's compareOpt argument is a char; the record keeps its low byte.
void CLobbyParameterAndQuery::AddQueryCondition(std::int32_t index, std::int32_t compareOpt,
                                                const char* value) {
    if (index < 0 || index >= count_ || value == nullptr) {
        return;
    }
    StoreRecord(index, static_cast<std::uint8_t>(compareOpt), value);
}

// 0x836c0c _ZN23CLobbyParameterAndQuery17SetParameterValueEiPc
// The second record byte is the parameter type from the +0x08 table.
void CLobbyParameterAndQuery::SetParameterValue(std::int32_t index, const char* value) {
    if (index < 0 || index >= count_ || value == nullptr) {
        return;
    }
    StoreRecord(index, types_[static_cast<std::size_t>(index)], value);
}

void CLobbyParameterAndQuery::Reserve(std::int32_t count) {
    count_ = count;
    const std::size_t n = count > 0 ? static_cast<std::size_t>(count) : 0;
    types_.assign(n, 0);
    values_.assign(n, nullptr);
    lengths_.assign(n, 0);
}

void CLobbyParameterAndQuery::SetParameterType(std::int32_t index, std::uint8_t type) {
    if (index < 0 || index >= count_) {
        return;
    }
    types_[static_cast<std::size_t>(index)] = type;
}

void CLobbyParameterAndQuery::StoreParameter(std::int32_t index, const char* data,
                                             std::int32_t length) {
    if (index < 0 || index >= count_) {
        return;
    }
    char*& slot = values_[static_cast<std::size_t>(index)];
    delete[] slot;
    slot = nullptr;
    lengths_[static_cast<std::size_t>(index)] = length;
    if (length > 0 && data != nullptr) {
        slot = new char[static_cast<std::size_t>(length)];
        std::memcpy(slot, data, static_cast<std::size_t>(length));
    }
}
