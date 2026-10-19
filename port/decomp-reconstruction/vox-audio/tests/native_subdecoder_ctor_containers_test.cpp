// The VoxNativeSubDecoder, PCM and IMA ADPCM constructors with the native containers. Checks
// the header words, the stopped segment records and the IMA buffers and frame count.
#include <cstdio>
#include <map>
#include <string>
#include <vector>

#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_containers.hpp"
#include "vox-audio/vox/native_playlist.hpp"
#include "vox-audio/vox/native_sub_decoder.hpp"
#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

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
}  // namespace

namespace vox {

// Probes read the protected words the constructors set.
struct PcmProbe : VoxNativeSubDecoderPCM {
    using VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM;
    static const SegmentState& Segment(const PcmProbe& p, int i) { return p.segments_[i]; }
    static bool HasData(const PcmProbe& p) { return p.has_data_; }
};

struct ImaProbe : VoxNativeSubDecoderIMAADPCM {
    using VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM;
    static int FramesPerBlock(const ImaProbe& p) { return p.frames_per_block_; }
    static const DecodeBuffers* Buffers(const ImaProbe& p) { return p.decode_buffers_; }
    static const void* Pending(const ImaProbe& p) { return p.pending_; }
};

}  // namespace vox

int main() {
    using vox::AudioSegments;
    using vox::NativeHeaderWords;
    using vox::NativePlaylistsManager;
    using vox::States;
    using vox::TransitionParams;
    using vox::TransitionRules;

    // PCM: format tag 1, two channels, field_0c 7, 16 bytes per sample, 32 bits.
    {
        NativeHeaderWords header;
        header.base_offset = 44;
        header.format_word = static_cast<std::int32_t>(1u | (2u << 16));
        header.field_0c = 7;
        header.sample_word = static_cast<std::int32_t>(16u | (32u << 16));

        States states;
        AudioSegments segments(3);
        vox::VoxVector<vox::VoxVector<int>> loops;
        TransitionRules rules;
        vox::VoxVector<vox::VoxVector<TransitionParams>> transitions;
        vox::VoxMap<vox::VoxString, int, vox::StringCompare> names;
        NativePlaylistsManager playlists;

        vox::PcmProbe pcm(nullptr, header, &states, &segments, &loops, &rules, &transitions,
                          &names, &playlists);
        const vox::TrackParams params = pcm.GetTrackParams();
        CHECK(params.channels == 2);
        CHECK(params.sample_rate == 7);
        CHECK(params.bits_per_sample == 32);
        CHECK(vox::PcmProbe::HasData(pcm));
        const vox::SegmentState& a = vox::PcmProbe::Segment(pcm, 0);
        const vox::SegmentState& b = vox::PcmProbe::Segment(pcm, 1);
        const vox::SegmentState& c = vox::PcmProbe::Segment(pcm, 2);
        CHECK(a.chunk_index == -1 && a.play_mode == 3 && a.state == 2);
        CHECK(b.chunk_index == -1 && b.play_mode == 2 && b.state == 2);
        CHECK(c.chunk_index == -1 && c.play_mode == 1 && c.state == 2);
        CHECK(c.entry_count == 1 && c.entries_left == 1 && c.decoding_slot == -1);
    }

    // IMA ADPCM: format tag 17, two channels, 8 bytes per sample: one frame per block.
    {
        NativeHeaderWords header;
        header.format_word = static_cast<std::int32_t>(17u | (2u << 16));
        header.sample_word = static_cast<std::int32_t>(8u | (16u << 16));

        States states;
        AudioSegments segments;
        vox::VoxVector<vox::VoxVector<int>> loops;
        TransitionRules rules;
        vox::VoxVector<vox::VoxVector<TransitionParams>> transitions;
        vox::VoxMap<vox::VoxString, int, vox::StringCompare> names;
        NativePlaylistsManager playlists;

        vox::ImaProbe ima(nullptr, header, &states, &segments, &loops, &rules, &transitions,
                          &names, &playlists);
        CHECK(vox::ImaProbe::FramesPerBlock(ima) == 1);
        CHECK(vox::ImaProbe::Buffers(ima) != nullptr);
        CHECK(vox::ImaProbe::Pending(ima) != nullptr);
        CHECK(ima.GetTrackParams().channels == 2);
        CHECK(ima.GetTrackParams().sample_rate == 0);
    }

    // Eight channels is the limit: nine channels zero the track words.
    {
        NativeHeaderWords header;
        header.format_word = static_cast<std::int32_t>(17u | (9u << 16));
        header.sample_word = static_cast<std::int32_t>(8u | (16u << 16));
        States states;
        AudioSegments segments;
        vox::VoxVector<vox::VoxVector<int>> loops;
        TransitionRules rules;
        vox::VoxVector<vox::VoxVector<TransitionParams>> transitions;
        vox::VoxMap<vox::VoxString, int, vox::StringCompare> names;
        NativePlaylistsManager playlists;
        vox::ImaProbe ima(nullptr, header, &states, &segments, &loops, &rules, &transitions,
                          &names, &playlists);
        CHECK(ima.GetTrackParams().channels == 0);
    }

    std::printf("native_subdecoder_ctor_containers_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
