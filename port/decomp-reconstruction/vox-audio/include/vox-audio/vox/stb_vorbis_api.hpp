// Declarations of the stb_vorbis entry points that the vox Ogg Vorbis decoder calls.
// The library itself is upstream public-domain code (stb_vorbis by Sean Barrett) and is
// not retyped in this tree; see NOTES.md (Decisions). The signatures follow the calls in
// the binary: stb_vorbis_open_file takes the vox StreamCursorInterface instead of a FILE*
// (the Gameloft-modified variant), and every other entry point matches upstream v1.x.
// Nothing here is defined in the port, so a test that links these calls must supply them.
#pragma once

namespace vox {
class StreamCursorInterface;
}  // namespace vox

struct stb_vorbis;

struct stb_vorbis_alloc {
    char* alloc_buffer;
    int alloc_buffer_length_in_bytes;
};

// Upstream stb_vorbis_info. Only sample_rate and channels are read by the vox cursor.
struct stb_vorbis_info {
    unsigned int sample_rate;
    int channels;
    unsigned int setup_memory_required;
    unsigned int setup_temp_memory_required;
    unsigned int temp_memory_required;
    int max_frame_size;
};

// 0x87e0c8 at the call site in DecoderStbVorbisCursor's constructor.
stb_vorbis* stb_vorbis_open_file(vox::StreamCursorInterface* stream, int close_on_free, int* error,
                                 stb_vorbis_alloc* alloc);  // non-const: the binary's name is ..P16stb_vorbis_alloc
// Returned by value; the binary passes a hidden result pointer (0x876e2c).
stb_vorbis_info stb_vorbis_get_info(stb_vorbis* f);
unsigned int stb_vorbis_stream_length_in_samples(stb_vorbis* f);
void stb_vorbis_seek_start(stb_vorbis* f);
// Returns the number of samples per channel that were produced.
int stb_vorbis_get_samples_float_interleaved(stb_vorbis* f, int channels, float* buffer,
                                             int num_floats);
int stb_vorbis_get_samples_short_interleaved(stb_vorbis* f, int channels, short* buffer,
                                             int num_shorts);
void stb_vorbis_close(stb_vorbis* f);
