// vox::DecoderNativeCursor::ParseFile (0x8738bc). Reads the VoxN header, the header body
// and the data that follows it, then walks the chunk list: Afmt, Segm, Cues, Grpe, Rule,
// Plst, Stat, Trsn and Grps. Chunks with other ids are skipped by their size.
//
// Where a count-bearing chunk ends: the original advances by 12 bytes (id, size, count)
// plus record size times count, not by the chunk size. That is kept, so the next chunk
// starts where the original would start it. The chunk size only decides the end for Afmt
// and the skipped chunks.
//
// Bounds checks that the original does not make (a malformed file would write out of
// range, or dereference null, there) return false instead. They are marked "malformed".
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/native_containers.hpp"
#include "vox-audio/vox/native_playlist.hpp"
#include "vox-audio/vox/stream.hpp"

namespace vox {

namespace {

constexpr std::uint32_t kNativeMagic = 0x4E786F56u;  // "VoxN"
constexpr std::uint32_t kChunkAfmt = 0x746D6641u;    // "Afmt"
constexpr std::uint32_t kChunkSegm = 0x6D676553u;    // "Segm"
constexpr std::uint32_t kChunkCues = 0x73657543u;    // "Cues"
constexpr std::uint32_t kChunkGrpe = 0x65707247u;    // "Grpe" (playlist elements)
constexpr std::uint32_t kChunkRule = 0x656C7552u;    // "Rule"
constexpr std::uint32_t kChunkPlst = 0x74736C50u;    // "Plst"
constexpr std::uint32_t kChunkStat = 0x74617453u;    // "Stat"
constexpr std::uint32_t kChunkTrns = 0x6E737254u;    // bytes 54 72 73 6E
constexpr std::uint32_t kChunkGrps = 0x73707247u;    // "Grps" (groups)

// The NativeChunk (segment info) and TransitionRule records are copied from the file as
// bytes; their sizes must be the 24 and 36 bytes the file layout uses.
static_assert(sizeof(NativeChunk) == 24, "segment info records are 24 bytes");
static_assert(sizeof(TransitionRule) == 36, "transition rule records are 36 bytes");

// Header words are read the way the original reads them (native byte order).
std::uint32_t ReadU32(const std::uint8_t* p) {
    std::uint32_t value = 0;
    std::memcpy(&value, p, sizeof(value));
    return value;
}

std::int32_t ReadI32(const std::uint8_t* p) {
    return static_cast<std::int32_t>(ReadU32(p));
}

// Record size of a chunk whose body (body_size bytes) starts with a count word. The record
// area is the rest of the body. Zero when there are no records.
std::int64_t RecordSize(std::uint32_t body_size, std::int32_t count) {
    if (count <= 0) {
        return 0;
    }
    return static_cast<std::int64_t>((body_size - 4) / static_cast<std::uint32_t>(count));
}

// Position of the chunk after a count-bearing chunk that starts at pos (the 8-byte chunk
// header, then the count word, then count records of rec bytes).
std::int64_t NextAfterRecords(std::int64_t pos, std::int64_t rec, std::int32_t count) {
    return pos + 12 + (count > 0 ? rec * count : 0);
}

// Copies the first limit bytes of a record into dst. The rest of dst is left as it is.
void CopyRecord(void* dst, const std::uint8_t* record, std::int64_t rec, std::size_t limit) {
    const auto bytes = static_cast<std::size_t>(rec < static_cast<std::int64_t>(limit) ? rec : static_cast<std::int64_t>(limit));
    std::memcpy(dst, record, bytes);
}

bool IsKnownChunk(std::uint32_t id) {
    switch (id) {
        case kChunkAfmt:
        case kChunkSegm:
        case kChunkCues:
        case kChunkGrpe:
        case kChunkRule:
        case kChunkPlst:
        case kChunkStat:
        case kChunkTrns:
        case kChunkGrps:
            return true;
        default:
            return false;
    }
}

}  // namespace

// The header is the 8-byte "VoxN" block (magic, body size) followed by the body. Word 3 of
// the body (+0x0c, the decoder's base offset at +0x18) is the total length of the file, so
// the data after the body is total - 16 - body size bytes. The data is read into one buffer
// and then walked.
// Reconstructed, compared with the Hex-Rays body chunk by chunk (Afmt, Segm, Cues, Grps, Grpe, Rule, Plst, Stat,
// Trsn, the skipped ids, the record-size and position arithmetic, the initial -1 / 0 / 1 values of the record
// scratch words). The Stat case is the only writer of the stack slot the Trsn case passes to
// CreateTransitionsContainer (verified in the ARM listing: STR R4,[SP,var_9C] at 0x873F74 and
// LDR R1,[SP,var_9C] at 0x8740D0), so a Trsn chunk that no Stat chunk precedes passes an uninitialised word as
// the transition count (undefined in the binary, a malformed-file case); the port passes state_count, which is
// 0 there.
bool DecoderNativeCursor::ParseFile() {
    if (stream_ == nullptr) {
        return false;
    }
    if (stream_->Tell() != 0) {
        stream_->Seek(0, 0);
    }
    std::uint8_t header[8];
    if (stream_->Read(header, static_cast<int>(sizeof(header))) != static_cast<int>(sizeof(header))) {
        return false;
    }
    if (ReadU32(header) != kNativeMagic) {
        return false;
    }
    const std::uint32_t body_size = ReadU32(header + 4);
    // Malformed: the body must hold word 3 (the total length). The original reads past the
    // body in that case.
    if (body_size < 16 || body_size > 0x7FFFFFFFu) {
        return false;
    }
    std::vector<std::uint8_t> body(body_size);
    stream_->Read(body.data(), static_cast<int>(body_size));

    auto* native = static_cast<DecoderNative*>(decoder_);
    NativeHeaderWords& block = native->header_words_;
    block.magic = static_cast<std::int32_t>(kNativeMagic);
    block.body_size = static_cast<std::int32_t>(body_size);
    // Body words 0..2 are kept as name words (+0x0c..+0x17); word 3 is the base offset.
    for (std::size_t i = 0; i < 3; ++i) {
        block.name_words[i] = ReadI32(body.data() + 4 * i);
    }
    block.base_offset = ReadI32(body.data() + 12);
    const std::int64_t data_size = static_cast<std::int64_t>(block.base_offset) - 16 -
                                   static_cast<std::int64_t>(body_size);
    if (data_size < 0) {
        return false;
    }
    std::vector<std::uint8_t> data(static_cast<std::size_t>(data_size));
    if (data_size > 0) {
        stream_->Read(data.data(), static_cast<int>(data_size));
    }

    // Shared across chunks. manager is the playlists manager (set by Plst); the original
    // keeps it in a local and dereferences it in Grpe and Grps.
    NativePlaylistsManager* manager = nullptr;
    // Plst count: the bound for the playlist index that Grpe and Grps records carry.
    std::int32_t playlist_count = 0;
    // Stat count. Verified against the ARM listing: the stack slot var_9C is written only by the
    // Stat case (0x873F74 -> STR R4,[SP,var_9C]) and read both by CreateStatesContainer there and
    // by CreateTransitionsContainer at 0x8740D0 (LDR R1,[SP,var_9C]). A Trsn chunk that no Stat
    // chunk precedes therefore passes an uninitialised stack word as the transition count; the
    // port passes 0, which is what the binary defines no value for.
    std::int32_t state_count = 0;

    std::int64_t pos = 0;
    while (pos < data_size) {
        if (data_size - pos < 8) {
            // Malformed or padded tail: the original would read past the buffer here.
            break;
        }
        const std::uint8_t* chunk = data.data() + pos;
        const std::uint32_t id = ReadU32(chunk);
        const std::uint32_t size = ReadU32(chunk + 4);
        if (!IsKnownChunk(id)) {
            pos += 8 + static_cast<std::int64_t>(size);
            continue;
        }
        if (pos + 8 + static_cast<std::int64_t>(size) > data_size) {
            return false;  // malformed: the chunk runs past the data
        }
        const std::uint8_t* body_ptr = chunk + 8;

        if (id == kChunkAfmt) {
            // The original writes the chunk id and size at +0x1c and +0x20, then copies the fmt
            // body to +0x24. The first 12 bytes fill format word, field_0c and sample word; the
            // bytes past them are kept in fmt_tail (+0x30 on).
            block.afmt_id = static_cast<std::int32_t>(kChunkAfmt);
            block.afmt_size = static_cast<std::int32_t>(size);
            CopyRecord(&block.format_word, body_ptr, static_cast<std::int64_t>(size), 12);
            if (size > 12) {
                block.fmt_tail.assign(body_ptr + 12, body_ptr + size);
            } else {
                block.fmt_tail.clear();
            }
            // The original then writes the halfword 16 at +0x2e: the bits-per-sample half of the
            // sample word.
            const auto sample = static_cast<std::uint32_t>(block.sample_word);
            block.sample_word = static_cast<std::int32_t>((sample & 0xFFFFu) | (16u << 16));
            pos += 8 + static_cast<std::int64_t>(size);
            continue;
        }

        if (size < 4) {
            return false;  // malformed: no count word
        }
        const std::int32_t count = ReadI32(body_ptr);
        const std::int64_t rec = RecordSize(size, count);
        const std::uint8_t* records = body_ptr + 4;

        switch (id) {
            case kChunkSegm: {
                // Malformed: the original divides by the count and allocates count - 1 records.
                if (count <= 0) {
                    return false;
                }
                native->CreateSegmentsInfoContainers(count, static_cast<int>(rec));
                for (std::int32_t i = 0; i < count; ++i) {
                    const auto index = static_cast<std::size_t>(i);
                    CopyRecord(&native->segments_[index], records + index * static_cast<std::size_t>(rec), rec,
                               sizeof(NativeChunk));
                    native->segment_cues_[index].push_back(0);
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkCues: {
                const auto segment_total = static_cast<std::int32_t>(native->segment_cues_.size());
                for (std::int32_t i = 0; i < count; ++i) {
                    // Malformed: the record needs word 1 (the segment index). The original
                    // leaves the index at -1 for shorter records and writes out of range.
                    if (rec < 8) {
                        return false;
                    }
                    const std::uint8_t* record = records + static_cast<std::size_t>(i) * static_cast<std::size_t>(rec);
                    const std::int32_t segment = ReadI32(record + 4);
                    if (segment < 0 || segment >= segment_total) {
                        return false;  // malformed: index outside the segment table
                    }
                    // Word 2 is the cue value. The original keeps 0 for records shorter than 12 bytes.
                    const std::int32_t value = rec >= 12 ? ReadI32(record + 8) : 0;
                    native->segment_cues_[static_cast<std::size_t>(segment)].push_back(value);
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkGrpe:
            case kChunkGrps: {
                if (count > 0 && manager == nullptr) {
                    return false;  // the original calls through a null manager here
                }
                for (std::int32_t i = 0; i < count; ++i) {
                    const std::uint8_t* record = records + static_cast<std::size_t>(i) * static_cast<std::size_t>(rec);
                    if (id == kChunkGrpe) {
                        PlaylistElementInfos element;
                        CopyRecord(element.words_, record, rec, sizeof(element.words_));
                        if (element.words_[0] < 0 || element.words_[0] >= playlist_count) {
                            return false;  // malformed: playlist index out of range
                        }
                        manager->AddPlaylistElement(&element);
                        if (!manager->IsValid()) {
                            return false;
                        }
                    } else {
                        GroupInfos group;
                        CopyRecord(&group, record, rec, sizeof(group));
                        if (group.unknown_00_ < 0 || group.unknown_00_ >= playlist_count) {
                            return false;  // malformed: playlist index out of range
                        }
                        manager->AddGroup(&group);
                        if (!manager->IsValid()) {
                            return false;
                        }
                    }
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkRule: {
                if (count < 0) {
                    return false;  // malformed: the original's allocation fails
                }
                native->CreateTransitionRulesContainer(count, static_cast<int>(rec));
                for (std::int32_t i = 0; i < count; ++i) {
                    const auto index = static_cast<std::size_t>(i);
                    CopyRecord(&native->rules_[index], records + index * static_cast<std::size_t>(rec), rec,
                               sizeof(TransitionRule));
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkPlst: {
                native->CreatePlaylistsContainer(count);
                manager = &native->playlists_;
                playlist_count = count;
                if (!manager->IsValid()) {
                    // The original stops reading records here and advances only past the count
                    // word, so the records are then read as chunk headers.
                    pos += 12;
                    break;
                }
                for (std::int32_t i = 0; i < count; ++i) {
                    // Word 1 defaults to 1 when the record is shorter than 8 bytes, as the
                    // original leaves its second word at 1.
                    PlaylistInfos info;
                    info.words_[1] = 1;
                    const std::uint8_t* record = records + static_cast<std::size_t>(i) * static_cast<std::size_t>(rec);
                    CopyRecord(info.words_, record, rec, sizeof(info.words_));
                    manager->AddPlaylist(i, &info);
                    if (!manager->IsValid()) {
                        return false;
                    }
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkStat: {
                state_count = count;
                if (count < 0) {
                    return false;  // malformed: the original's allocation fails
                }
                native->CreateStatesContainer(count);
                for (std::int32_t i = 0; i < count; ++i) {
                    // Malformed: a record needs the id word.
                    if (rec < 4) {
                        return false;
                    }
                    const std::uint8_t* record = records + static_cast<std::size_t>(i) * static_cast<std::size_t>(rec);
                    native->states_[static_cast<std::size_t>(i)] = ReadI32(record);
                    // The name is the NUL-terminated text after the id, within the record.
                    const char* text = reinterpret_cast<const char*>(record + 4);
                    const auto limit = static_cast<std::size_t>(rec - 4);
                    std::size_t length = 0;
                    while (length < limit && text[length] != '\0') {
                        ++length;
                    }
                    native->interactive_states_[vox::VoxString(text, length)] = i;
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            case kChunkTrns: {
                if (count < 0) {
                    return false;  // malformed: the original's allocation fails
                }
                native->CreateTransitionsContainer(static_cast<unsigned int>(state_count));
                for (std::int32_t i = 0; i < count; ++i) {
                    // Malformed: a record needs the list index word.
                    if (rec < 4) {
                        return false;
                    }
                    const std::uint8_t* record = records + static_cast<std::size_t>(i) * static_cast<std::size_t>(rec);
                    const std::int32_t list = ReadI32(record);
                    if (list < 0 || static_cast<std::size_t>(list) >= native->transitions_.size()) {
                        return false;  // malformed: list index out of range
                    }
                    TransitionParams params;
                    if (rec >= 12) {
                        params.value_ = ReadI32(record + 8);
                    }
                    if (rec >= 13) {
                        params.flag_ = record[12];
                    }
                    native->transitions_[static_cast<std::size_t>(list)].push_back(params);
                }
                pos = NextAfterRecords(pos, rec, count);
                break;
            }
            default:
                break;
        }
    }

    SetImplicitSegmentCues();
    return true;
}

}  // namespace vox
