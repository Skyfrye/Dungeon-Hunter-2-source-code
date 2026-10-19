// vox::EmitterObj constructors (two overloads), the buffer ring they build, and LoadAsync.
// The ring is a std::vector<void*> at +0xf4 (begin), +0xf8 (end) and +0xfc (capacity) in the
// original. Frame size is channels * (bits >> 3) bytes. The cursor overload and LoadAsync read the
// track words from the cursor's TrackParams block (cursor +0x04 channels, +0x08 sample rate, +0x0c
// bits, +0x10 length). The data-object overload reads its own words (data +0x28..+0x34).
#include <cstdint>
#include <limits>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"

namespace vox {

namespace {

// Sets the fields both constructors share with their original defaults: the gain, pitch and
// resume fades (target 1.0, flag set), the gain words, the 3D parameter block and the flags.
void InitCommonFields(EmitterObj& e, std::int64_t id, int priority, int bank) {
    e.id = id;                       // +0x08
    e.ref_count = 0;                 // +0x10
    e.priority_ = priority;          // +0x2c
    e.bank_ = bank;                  // +0x30
    e.in_bank_ = false;              // +0x34
    e.group_ = 0;                    // +0x28
    e.play_rate_ = 1;                // +0x20 (replaced by the data rate when a data object is set)
    e.gain_ = 1.0f;                  // +0x3c
    e.requested_gain_ = 1.0f;        // +0x40
    e.gain_modifier_ = 1.0f;         // +0x44
    e.gain_fade_ = VoxGainFade{};    // +0x48..+0x58
    e.gain_fade_.target = 1.0f;      // +0x4c
    e.gain_fade_.flag = true;        // +0x58
    e.resume_fade_ = VoxGainFade{};  // +0x5c..+0x6c
    e.resume_fade_.target = 1.0f;    // +0x60
    e.resume_fade_.flag = true;      // +0x6c
    e.pitch_ = 1.0f;                 // +0x74
    e.source_gain_ = 1.0f;           // +0x38
    e.source_pitch_ = 1.0f;          // +0x70
    e.pitch_fade_ = VoxGainFade{};   // +0x78..+0x88
    e.pitch_fade_.target = 1.0f;     // +0x7c
    e.pitch_fade_.flag = true;       // +0x88
    e.loop_read_ = 0;                // +0x8c
    e.loop_ = 0;                     // +0x8d
    e.state_ = 0;                    // +0x90
    e.state_set_ = 0;                // +0x94
    e.position_ = VoxVector3f{};     // +0x9c
    e.direction_ = VoxVector3f{};    // +0xa8
    e.velocity_ = VoxVector3f{};     // +0xb4
    e.param0_ = 0;                   // +0xc0
    // Parameters 1..7 (+0xc4..+0xdc); SetDefaultParameters writes 1..6 again.
    constexpr float kMax = std::numeric_limits<float>::max();
    e.float_params_[0] = kMax;       // +0xc4
    e.float_params_[1] = 100.0f;     // +0xc8
    e.float_params_[2] = 1.0f;       // +0xcc
    e.float_params_[3] = 360.0f;     // +0xd0
    e.float_params_[4] = 360.0f;     // +0xd4
    e.float_params_[5] = 0.0f;       // +0xd8
    e.float_params_[6] = kMax;       // +0xdc
    for (auto& flag : e.dirty_) {
        flag = 0;                    // +0xe0..+0xea
    }
    e.reset_flag_ = 0;               // +0x99
    e.callback_pending_ = false;     // +0x98
    e.dsp_buffer_ = nullptr;         // +0xec
    e.dsp_pending_ = nullptr;        // +0xf0
    e.decoder_cursor_ = nullptr;     // +0x114
    e.buffer_read_index_ = 0;        // +0x100
    e.buffer_count_ = 0;             // +0x104
    e.buffer_fill_ = 0;              // +0x10c
    e.state_callback_ = nullptr;     // +0x138
    e.state_callback_user_ = nullptr;  // +0x13c
    e.need_to_die_ = false;          // +0x11c
    e.auto_kill_ = false;            // +0x11d
    e.user_data_ = ~std::uintptr_t{0};  // +0x134: the original stores -1 here
    e.word_120_ = 0;                    // +0x120
    e.word_124_ = 1.0f;                 // +0x124
    e.word_128_ = 0;                    // +0x128
    e.word_12c_ = 0;                    // +0x12c
    e.byte_130_ = 1;                    // +0x130
    e.interactive_state_set_ = false;   // +0x144
    e.interactive_state_.clear();       // +0x146
}

// Play rate and length from the data object (+0x28 channels, +0x2c rate, +0x30 bits, +0x34
// length): rate and length times the frame size, in bytes.
void SetRateAndLengthFromData(EmitterObj& e, const DataObj* data) {
    if (data == nullptr) {
        return;
    }
    const int frame_bytes = data->channels_ * (data->bits_per_sample_ >> 3);
    e.play_length_ = data->length_ * frame_bytes;   // +0x24
    e.play_rate_ = data->sample_rate_ * frame_bytes;  // +0x20
}

// The cursor overload's play length and rate (0x86c5ec and 0x86ce1c read the cursor words):
// length = channels * length_frames * (bits >> 3) at +0x24, rate = (bits >> 3) * channels * sample
// rate (sample_rate) at +0x20. The arithmetic wraps at 32 bits, as the 32-bit listing does.
void SetRateAndLengthFromCursor(EmitterObj& e, const TrackParams& track) {
    const std::uint32_t channels = static_cast<std::uint32_t>(track.channels);
    const std::uint32_t bytes = static_cast<std::uint32_t>(track.bits_per_sample >> 3);
    e.play_length_ = static_cast<int>(channels * static_cast<std::uint32_t>(track.length_frames) * bytes);
    e.play_rate_ = static_cast<int>(bytes * channels * static_cast<std::uint32_t>(track.sample_rate));
}

// The decoder type the constructor stores (+0x140): GetType of the data object's decoder when
// the data is ready. The original calls GetType on a null pointer when the data is not ready;
// the port stores 0 there instead.
int DecoderTypeOf(const DataObj* data) {
    if (data == nullptr || data->state_ != 0 || data->decoder_ == nullptr) {
        return 0;
    }
    return data->decoder_->GetType();
}

// Builds the buffer ring (the original's vector at +0xf4) for a source and a decoder cursor.
// Returns buffer_count_ (+0x104). Zero means the ring could not be filled.
int BuildBufferRing(EmitterObj& e, DriverSourceInterface* source, DecoderCursorInterface* cursor) {
    const std::size_t chunk = static_cast<std::size_t>(e.buffer_chunk_bytes_);
    if (source->AllowBufferReference()) {
        if (cursor->AllowBufferReference()) {
            // The cursor hands out its own buffers: one empty slot is enough.
            e.buffer_count_ = 1;
            e.buffer_ring_.assign(1, nullptr);
            return e.buffer_count_;
        }
        const int limit = source->GetBufferCount();
        std::size_t index = 0;
        if (limit >= 0) {
            for (;;) {
                e.buffer_ring_.push_back(VoxAlloc(chunk));
                if (e.buffer_ring_[index] == nullptr) {
                    break;
                }
                ++index;
                ++e.buffer_count_;
                if (limit < static_cast<int>(index)) {
                    break;
                }
            }
        }
        return e.buffer_count_;
    }
    e.buffer_count_ = 1;
    if (!cursor->AllowBufferReference()) {
        e.buffer_ring_.push_back(VoxAlloc(chunk));
        if (e.buffer_ring_[0] == nullptr) {
            e.buffer_count_ = 0;
        }
        return e.buffer_count_;
    }
    e.buffer_ring_.assign(1, nullptr);
    return e.buffer_count_;
}

}  // namespace

// 0x866380 _ZN3vox10EmitterObjC1ExiiPNS_21DriverSourceInterfaceEPNS_7DataObjE
// 0x8665cc _ZN3vox10EmitterObjC2ExiiPNS_21DriverSourceInterfaceEPNS_7DataObjE (same body, both listed at 576 bytes)
// Reconstructed against the 0x866380 listing. It is the Handlable base (id +0x08, ref_count +0x10
// = 0, mutex +0x18) plus the shared defaults of InitCommonFields: the gain, resume and pitch fade
// records at +0x48, +0x5c and +0x78 with target 1.0 and flag 1, the gain words 1.0 (+0x38, +0x3c,
// +0x40, +0x44), the 3D parameter block, loop_read_/loop_ (+0x8c, +0x8d) 0, the state pair 0,
// dirty_ +0xe0..+0xea zeroed, the DSP pointers (+0xec, +0xf0) 0, the ring words (+0xf4, +0xf8,
// +0xfc) 0, state_callback_ pair 0, user_data_ +0x134 = -1, the +0x120..+0x130 words and the
// interactive state. Then ready_flag_ +0x1c = 1, play_length_ +0x24 = 0, dsp_source_ +0x110,
// data_ +0x118, buffer_chunk_bytes_ +0x108 = 0, the play rate and length from the data object's
// words (length = length +0x34 * channels +0x28 * (bits +0x30 >> 3) at +0x24, rate = rate +0x2c *
// the frame bytes at +0x20, only when the data object exists), SetDefaultParameters, the decoder
// type at +0x140 and +0x145 = 1.
// Deviation (host-necessitated): the listing takes the decoder as
// (data == null || data->state_ (+0x50) != 0) ? null : data->decoder_ (+0x3c) and then calls
// GetType (decoder +0x18) through it, so it faults for a null data object, for a data object that
// is not ready and for one with no decoder (all reachable while a data object is still loading);
// the port stores decoder type 0 for those cases (DecoderTypeOf).
EmitterObj::EmitterObj(std::int64_t id, int priority, int bank, DriverSourceInterface* source, DataObj* data) {
    InitCommonFields(*this, id, priority, bank);
    ready_flag_ = 1;                 // +0x1c: the data is not loaded yet (IsReady is false)
    play_length_ = 0;                // +0x24
    dsp_source_ = source;            // +0x110
    data_ = data;                    // +0x118
    buffer_chunk_bytes_ = 0;         // +0x108
    SetRateAndLengthFromData(*this, data);
    SetDefaultParameters();
    decoder_type_ = DecoderTypeOf(data);  // +0x140
    flag_145_ = 1;                   // +0x145
}

// 0x86c5ec _ZN3vox10EmitterObjC1ExiiiPNS_21DriverSourceInterfaceEPNS_22DecoderCursorInterfaceEPNS_7DataObjE
// 0x86ce1c _ZN3vox10EmitterObjC2ExiiiPNS_21DriverSourceInterfaceEPNS_22DecoderCursorInterfaceEPNS_7DataObjE (same body, both listed at 1036 bytes)
// Reconstructed against the 0x86c5ec listing. Same base and InitCommonFields defaults as C1
// (0x866380), except ready_flag_ +0x1c = 0, buffer_chunk_bytes_ +0x108 = chunk_bytes,
// dsp_source_ +0x110 = source, decoder_cursor_ +0x114 = cursor, data_ +0x118 = data, and
// play_rate_ +0x20 = 1. With a null cursor or a null source the listing sets need_to_die_ (+0x11c)
// and skips everything below, SetDefaultParameters included. Otherwise the play length and rate
// come from the cursor's track block (length = channels +0x04 * length +0x10 * (bits +0x0c >> 3) at
// +0x24, rate = (bits >> 3) * channels * rate +0x08 at +0x20), the ring at +0xf4 is built by the
// cursor and source AllowBufferReference (+0x34 and source +0x48) and GetBufferCount (source +0x54)
// branches (BuildBufferRing; a zero slot count sets need_to_die_), SetDefaultParameters runs, and
// the decoder type +0x140 and +0x145 = 1 are stored.
// Deviation (host-necessitated): the same null GetType path as C1 (0x866380). SetRateAndLengthFromCursor
// reads the base DecoderCursorInterface::params_ block, so no further cursor layout fix is needed here.
EmitterObj::EmitterObj(std::int64_t id, int priority, int bank, int chunk_bytes, DriverSourceInterface* source,
                       DecoderCursorInterface* cursor, DataObj* data) {
    InitCommonFields(*this, id, priority, bank);
    ready_flag_ = 0;                 // +0x1c: ready unless the ring below fails
    buffer_chunk_bytes_ = chunk_bytes;  // +0x108
    dsp_source_ = source;            // +0x110
    decoder_cursor_ = cursor;        // +0x114
    data_ = data;                    // +0x118
    play_length_ = 0;                // +0x24
    if (cursor == nullptr || source == nullptr) {
        need_to_die_ = true;         // +0x11c; the original skips SetDefaultParameters here
    } else {
        SetRateAndLengthFromCursor(*this, cursor->GetTrackParams());
        if (BuildBufferRing(*this, source, cursor) == 0) {
            need_to_die_ = true;
        }
        SetDefaultParameters();
    }
    decoder_type_ = DecoderTypeOf(data);  // +0x140
    flag_145_ = 1;                   // +0x145
}

// 0x86d238 _ZN3vox10EmitterObj9LoadAsyncEv
// Opens a cursor on the data object's stream and decoder, sizes the buffer chunk from the cursor's
// track block and builds the ring. Returns 1 when the ring is ready. Otherwise the emitter is marked
// for death, and the state is -1 on the paths that never got a cursor (a ring failure after the
// cursor exists keeps the state, as the listing does).
int EmitterObj::LoadAsync() {
    DataObj* data = data_;
    if (data == nullptr || dsp_source_ == nullptr || data->state_ != 0) {
        need_to_die_ = true;
        state_ = -1;
        return 0;
    }
    StreamInterface* stream = data->stream_;
    DecoderInterface* decoder = data->decoder_;
    if (stream == nullptr || decoder == nullptr) {
        need_to_die_ = true;
        state_ = -1;
        return 0;
    }
    StreamCursorInterface* stream_cursor = stream->CreateNewCursor();
    if (stream_cursor == nullptr) {
        need_to_die_ = true;
        state_ = -1;
        return 0;
    }
    DecoderCursorInterface* cursor = decoder->CreateNewCursor(stream_cursor);
    if (cursor != nullptr) {
        decoder_cursor_ = cursor;  // +0x114
        const TrackParams& track = cursor->GetTrackParams();
        int chunk = 0;
        if (dsp_source_->AllowBufferReference() && cursor->AllowBufferReference()) {
            // Original: (bits * length) / 8 bytes per chunk (cursor +0x0c and +0x10).
            chunk = static_cast<int>(static_cast<std::int64_t>(track.bits_per_sample) * track.length_frames / 8);
            buffer_chunk_bytes_ = chunk;  // +0x108
        } else {
            // About 150 ms of audio: frame bytes = (channels * bits) / 8 (cursor +0x04, +0x0c), bytes
            // per chunk = frame bytes * 150 * rate / 1000 (cursor +0x08), rounded down to whole frames.
            // A zero frame size gives a zero chunk, as the listing's remainder does.
            const std::int64_t frame_bytes = static_cast<std::int64_t>(track.channels) * track.bits_per_sample / 8;
            const std::int64_t per_chunk = frame_bytes * 150 * track.sample_rate / 1000;
            chunk = static_cast<int>(per_chunk - (frame_bytes > 0 ? per_chunk % frame_bytes : 0));
            buffer_chunk_bytes_ = chunk;  // +0x108
        }
        if (chunk > 0) {
            if (BuildBufferRing(*this, dsp_source_, cursor) != 0) {
                return 1;
            }
            need_to_die_ = true;
            return 0;
        }
        decoder->DestroyCursor(cursor);  // decoder +0x14
        decoder_cursor_ = nullptr;       // +0x114
    }
    stream->DestroyCursor(stream_cursor);  // stream +0x18
    need_to_die_ = true;
    state_ = -1;
    return 0;
}

}  // namespace vox
