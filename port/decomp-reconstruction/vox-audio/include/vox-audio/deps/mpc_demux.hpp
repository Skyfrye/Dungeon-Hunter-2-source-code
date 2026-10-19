// Declarations of the Musepack demuxer calls that DecoderMPC8Cursor makes (libmpcdec). The
// Musepack library is not part of the port: these are declared only, so any object that
// calls them needs the library at link time. Each struct below states the words the cursor reads.
#pragma once

#include <cstdint>

#include "vox-audio/deps/mpc_reader.hpp"

struct mpc_demux;  // opaque demuxer state (libmpcdec)

// Frame output of mpc_demux_decode (32-bit offsets). The cursor sets buffer to its PCM buffer
// before every call and reads samples, the number of sample frames decoded into that buffer.
struct MpcFrameInfo {
    std::int32_t samples = 0;        // +0x00
    std::int32_t reserved_04 = 0;    // +0x04, not read or written by the cursor
    float* buffer = nullptr;         // +0x08, decoded float samples go here
    // mpc_frame_info_t::is_key_frame (+0x0c in the 32-bit original, +0x10 with an 8-byte buffer pointer). The demuxer
    // writes it on every call, so the host struct must be as large as libmpcdec's (24 bytes on a 64-bit host).
    std::int32_t is_key_frame = 0;
};

// The libmpcdec entry points, called by name as the original does. libmpcdec is C, so the symbols are unmangled
// (mpc_demux_init, ... in the binary's symbol table); the vendored mpc_demux.c (dh2_vendor_mpc) defines them.
extern "C" {
mpc_demux* mpc_demux_init(mpc_reader_t* reader);
void mpc_demux_exit(mpc_demux* demux);
// Fills the stream info block. The cursor reads word 0 (sample rate), word 1 (channels) and
// word 14 (total sample frames).
void mpc_demux_get_info(mpc_demux* demux, std::uint32_t* info);
void mpc_demux_decode(mpc_demux* demux, MpcFrameInfo* frame);
// mpc_status mpc_demux_seek_sample(mpc_demux* d, mpc_uint64_t destsample) (mpcdec.h:122). The 64-bit sample travels in r2:r3 on
// ARM (r1 is padding); both calls the cursor makes pass 0 there, so they seek back to the start of the stream.
int mpc_demux_seek_sample(mpc_demux* demux, std::uint64_t destsample);

}  // extern "C"
