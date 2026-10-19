// vox::DecoderNativeCursor::ParseFile and SetImplicitSegmentCues on an in-memory VoxN file.
// The file has the header, Afmt, Segm, Cues, Stat, Rule, Trsn and Plst chunks. Expected
// values come from walking the pseudocode by hand: the cue lists after SetImplicitSegmentCues,
// the state table, the transition lists and the playlist count.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <initializer_list>
#include <string>
#include <utility>
#include <vector>

#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/stream.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

void Put32(std::vector<std::uint8_t>& out, std::uint32_t value) {
    for (int shift = 0; shift < 32; shift += 8) {
        out.push_back(static_cast<std::uint8_t>(value >> shift));
    }
}

// Chunk: id, size, then body.
void Chunk(std::vector<std::uint8_t>& out, std::uint32_t id, const std::vector<std::uint8_t>& body) {
    Put32(out, id);
    Put32(out, static_cast<std::uint32_t>(body.size()));
    out.insert(out.end(), body.begin(), body.end());
}

// Count-bearing body: count word, then the record bytes.
std::vector<std::uint8_t> Counted(std::uint32_t count, const std::vector<std::uint8_t>& records) {
    std::vector<std::uint8_t> body;
    Put32(body, count);
    body.insert(body.end(), records.begin(), records.end());
    return body;
}

std::vector<std::uint8_t> Words(std::initializer_list<std::uint32_t> values) {
    std::vector<std::uint8_t> out;
    for (std::uint32_t v : values) {
        Put32(out, v);
    }
    return out;
}

// Header block: "VoxN", body size, then a 16-byte body whose word 3 is the total length.
std::vector<std::uint8_t> BuildFile(const std::vector<std::uint8_t>& data) {
    const std::uint32_t body_size = 16;
    std::vector<std::uint8_t> file;
    Put32(file, 0x4E786F56u);
    Put32(file, body_size);
    Put32(file, 0);
    Put32(file, 0);
    Put32(file, 0);
    Put32(file, static_cast<std::uint32_t>(data.size() + 16 + body_size));
    file.insert(file.end(), data.begin(), data.end());
    return file;
}

}  // namespace

namespace vox {

struct DecoderNativeTestAccess {
    static int FormatTag(const DecoderNative& d) { return static_cast<std::int16_t>(d.header_words_.format_word); }
    static int BaseOffset(const DecoderNative& d) { return d.header_words_.base_offset; }
    static int BitsPerSample(const DecoderNative& d) { return static_cast<std::uint32_t>(d.header_words_.sample_word) >> 16; }
    static std::size_t SegmentCues(const DecoderNative& d) { return d.segment_cues_.size(); }
    static const vox::VoxVector<int>& Cues(const DecoderNative& d, std::size_t i) { return d.segment_cues_[i]; }
    static std::size_t Transitions(const DecoderNative& d) { return d.transitions_.size(); }
    static const vox::VoxVector<TransitionParams>& Transition(const DecoderNative& d, std::size_t i) {
        return d.transitions_[i];
    }
    static std::size_t StatesCount(const DecoderNative& d) { return d.states_.size(); }
    static int State(const DecoderNative& d, int i) { return d.states_[static_cast<std::size_t>(i)]; }
    static int StateNamed(const DecoderNative& d, const vox::VoxString& name) {
        auto it = d.interactive_states_.find(name);
        return it == d.interactive_states_.end() ? -99 : it->second;
    }
    static bool NeedsParse(const DecoderNative& d) { return d.needs_parse_; }
    static int Playlists(const DecoderNative& d) { return d.playlists_.GetNbPlaylists(); }
};

}  // namespace vox

int main() {
    using vox::DecoderNative;
    using vox::DecoderNativeTestAccess;

    // Afmt: PCM format tag 1, two channels, 44100 Hz, 16 bytes.
    std::vector<std::uint8_t> data;
    Chunk(data, 0x746D6641u, Words({0x00020001u, 44100u, 176400u, 0x00100004u}));

    // Segm: three segments with 12-byte records; word 2 is 5, 6 and 7.
    std::vector<std::uint8_t> segm_records;
    for (std::uint32_t w2 : {5u, 6u, 7u}) {
        auto rec = Words({0u, 0u, w2});
        segm_records.insert(segm_records.end(), rec.begin(), rec.end());
    }
    Chunk(data, 0x6D676553u, Counted(3, segm_records));

    // Cues: 8-byte records, word 1 is the segment index. Segment 0 gets one cue, segment 2
    // gets two.
    std::vector<std::uint8_t> cue_records;
    for (std::uint32_t seg : {0u, 2u, 2u}) {
        auto rec = Words({0u, seg});
        cue_records.insert(cue_records.end(), rec.begin(), rec.end());
    }
    Chunk(data, 0x73657543u, Counted(3, cue_records));

    // Stat: two states, 8-byte records (id, then a NUL-terminated name).
    std::vector<std::uint8_t> stat_records;
    for (std::uint32_t id : {10u, 11u}) {
        Put32(stat_records, id);
        const char* name = (id == 10u) ? "ab" : "cd";
        for (int i = 0; i < 4; ++i) {
            stat_records.push_back(static_cast<std::uint8_t>(i < 2 ? name[i] : 0));
        }
    }
    Chunk(data, 0x74617453u, Counted(2, stat_records));

    // Rule: one 36-byte record whose first word is 1.
    std::vector<std::uint8_t> rule_records(36, 0);
    rule_records[0] = 1;
    Chunk(data, 0x656C7552u, Counted(1, rule_records));

    // Trsn: two records of 12 bytes, lists 0 and 1, values 77 and 88 (count passed is the Stat
    // count, 2, so two lists exist).
    std::vector<std::uint8_t> trns_records;
    for (auto pair : {std::pair<std::uint32_t, std::uint32_t>{0u, 77u}, {1u, 88u}}) {
        auto rec = Words({pair.first, 0u, pair.second});
        trns_records.insert(trns_records.end(), rec.begin(), rec.end());
    }
    Chunk(data, 0x6E737254u, Counted(2, trns_records));

    // Plst: two playlists with 8-byte records (PlaylistInfos).
    std::vector<std::uint8_t> plst_records = Words({0u, 1u, 0u, 2u});
    Chunk(data, 0x74736C50u, Counted(2, plst_records));

    // A chunk with an unknown id is skipped by its size.
    Chunk(data, 0x21212121u, Words({1u, 2u}));

    const std::vector<std::uint8_t> file = BuildFile(data);
    vox::StreamMemoryBufferParams params;
    params.data = file.data();
    params.size = static_cast<int>(file.size());
    vox::StreamMemoryBuffer stream(&params);
    vox::StreamCursorInterface* cursor = stream.CreateNewCursor();

    DecoderNative decoder;
    vox::DecoderNativeCursor parsed(&decoder, cursor);
    CHECK(!DecoderNativeTestAccess::NeedsParse(decoder));
    CHECK(DecoderNativeTestAccess::FormatTag(decoder) == 1);
    CHECK(DecoderNativeTestAccess::BitsPerSample(decoder) == 16);

    // Segment cues: segment 0 = {0 (Segm), 0 (Cue)} size 2 -> +4, +4.
    //   {0, 0, 4, 4}
    // Segment 1 = {0 (Segm)} size 1 -> push 0, then 5, 5 -> {0, 0, 5, 5}
    // Segment 2 = {0, 0, 0} size 3 -> one push, 6 -> {0, 0, 0, 6}
    CHECK((DecoderNativeTestAccess::Cues(decoder, 0) == vox::VoxVector<int>{0, 0, 4, 4}));
    CHECK((DecoderNativeTestAccess::Cues(decoder, 1) == vox::VoxVector<int>{0, 0, 5, 5}));
    CHECK((DecoderNativeTestAccess::Cues(decoder, 2) == vox::VoxVector<int>{0, 0, 0, 6}));

    CHECK(DecoderNativeTestAccess::StatesCount(decoder) == 2);
    // Word 3 of the body is the total length: the file is 8 header bytes plus the 16-byte body
    // header and the data, so the total is file.size() + 8.
    CHECK(DecoderNativeTestAccess::BaseOffset(decoder) == static_cast<int>(file.size() + 8));
    CHECK(DecoderNativeTestAccess::State(decoder, 0) == 10);
    CHECK(DecoderNativeTestAccess::State(decoder, 1) == 11);
    CHECK(DecoderNativeTestAccess::StateNamed(decoder, "ab") == 0);
    CHECK(DecoderNativeTestAccess::StateNamed(decoder, "cd") == 1);

    CHECK(DecoderNativeTestAccess::Transitions(decoder) == 2);
    CHECK(DecoderNativeTestAccess::Transition(decoder, 0).size() == 1);
    CHECK(DecoderNativeTestAccess::Transition(decoder, 0).at(0).value_ == 77);
    CHECK(DecoderNativeTestAccess::Transition(decoder, 1).at(0).value_ == 88);
    CHECK(DecoderNativeTestAccess::Transition(decoder, 1).at(0).flag_ == 0);

    CHECK(DecoderNativeTestAccess::Playlists(decoder) == 2);

    stream.DestroyCursor(cursor);

    // A file with a wrong magic does not parse and leaves needs_parse_ set.
    {
        std::vector<std::uint8_t> bad = BuildFile({});
        bad[0] = 'X';
        vox::StreamMemoryBufferParams bad_params;
        bad_params.data = bad.data();
        bad_params.size = static_cast<int>(bad.size());
        vox::StreamMemoryBuffer bad_stream(&bad_params);
        vox::StreamCursorInterface* bad_cursor = bad_stream.CreateNewCursor();
        DecoderNative bad_decoder;
        vox::DecoderNativeCursor bad_parse(&bad_decoder, bad_cursor);
        CHECK(DecoderNativeTestAccess::NeedsParse(bad_decoder));
        bad_stream.DestroyCursor(bad_cursor);
    }

    if (g_failures != 0) {
        std::fprintf(stderr, "decoder_native_parse_w10_test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("decoder_native_parse_w10_test: ok\n");
    return 0;
}
