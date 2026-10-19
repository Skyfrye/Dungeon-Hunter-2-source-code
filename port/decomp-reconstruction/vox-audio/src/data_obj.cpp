#include "vox-audio/vox/data_obj.hpp"

#include <cstddef>
#include <cstring>
#include <new>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/decoder_raw.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"

namespace vox {

// 0x863c24 _ZN3vox7DataObjD1Ev. The original frees the emitter list nodes, resets the
// sentinel and destroys the state mutex and the Handlable mutex. The std::list and the
// member mutexes do the same here.
DataObj::~DataObj() = default;

// 0x865878 _ZN3vox7DataObj11GetUserDataEv
std::uintptr_t DataObj::GetUserData() {
    mutex.Lock();
    std::uintptr_t value = user_data_;
    mutex.Unlock();
    return value;
}

// 0x8658a0 _ZN3vox7DataObj11SetUserDataERNS_18DataHandleUserDataE
void DataObj::SetUserData(const DataHandleUserData& user_data) {
    mutex.Lock();
    user_data_ = user_data.word;
    mutex.Unlock();
}

// 0x8658cc _ZN3vox7DataObj7IsReadyEv
// Returns true only for state 0 (the asm computes 1 - state when state <= 1).
bool DataObj::IsReady() {
    state_mutex_.Lock();
    bool ready = state_ == 0;
    state_mutex_.Unlock();
    return ready;
}

// 0x8658fc _ZN3vox7DataObj11GetDurationEv
// Returns the bit pattern of a float: length / sample rate, read under the Handlable
// mutex, or 0.0f when the object is not ready (state != 0).
std::uint32_t DataObj::GetDuration() {
    float seconds = 0.0f;
    if (IsReady()) {
        mutex.Lock();
        seconds = static_cast<float>(static_cast<std::uint32_t>(length_)) /
                  static_cast<float>(sample_rate_);
        mutex.Unlock();
    }
    std::uint32_t bits = 0;
    std::memcpy(&bits, &seconds, sizeof(bits));
    return bits;
}

// 0x865954 _ZN3vox7DataObj12GetDebugInfoERNS_21DebugChunk_dataSourceE
// Fills the chunk under the Handlable mutex. The stream and decoder types come from
// their GetType virtuals (stream +0x1c, decoder +0x18). The duration is taken before
// the lock, as the original does.
void DataObj::GetDebugInfo(DebugChunk_dataSource& chunk) {
    const std::uint32_t duration_bits = GetDuration();
    mutex.Lock();
    chunk.id = id;
    chunk.stream_type = stream_->GetType();
    chunk.decoder_type = decoder_->GetType();
    chunk.priority_bank_id = priority_bank_id_;
    chunk.sample_rate = sample_rate_;
    chunk.channels = channels_;
    chunk.bits_per_sample = bits_per_sample_;
    std::memcpy(&chunk.duration, &duration_bits, sizeof(chunk.duration));
    chunk.group = group_;
    chunk.ref_count = ref_count;
    mutex.Unlock();
}

// 0x8659ec _ZN3vox7DataObj10PrintDebugEv
// The binary calls GetDuration and takes and releases the mutex. It prints nothing,
// so the port keeps the same calls and the result is discarded.
void DataObj::PrintDebug() {
    (void)GetDuration();
    mutex.Lock();
    mutex.Unlock();
}

// 0x865a0c _ZN3vox7DataObj7IsGroupEj
// Tests bit group_ of the mask: the asm uses (mask & (1 << group_)) != 0.
bool DataObj::IsGroup(std::uint32_t groups) {
    mutex.Lock();
    bool member = (groups & (std::uint32_t{1} << group_)) != 0;
    mutex.Unlock();
    return member;
}

// 0x865a48 _ZN3vox7DataObj8GetGroupEv
int DataObj::GetGroup() {
    mutex.Lock();
    int group = group_;
    mutex.Unlock();
    return group;
}

// 0x865a70 _ZN3vox7DataObj9ShouldDieEv
// Under the Handlable mutex: true when no emitter is registered and the reference
// count is 0; otherwise true when need_to_die_ is set; otherwise true only in state -1.
// The original walks the emitter list to its sentinel before the flag tests. The walk
// only follows the links, so the port does not repeat it.
bool DataObj::ShouldDie() {
    mutex.Lock();
    bool result;
    if (emitters_.empty() && ref_count == 0) {
        result = true;
    } else if (!need_to_die_) {
        result = state_ == -1;
    } else {
        result = true;
    }
    mutex.Unlock();
    return result;
}

// 0x865aec _ZN3vox7DataObj9NeedToDieEv
// Sets need_to_die_ under the Handlable mutex, then moves the state to 4 under
// the state mutex.
void DataObj::NeedToDie() {
    mutex.Lock();
    need_to_die_ = true;
    mutex.Unlock();
    state_mutex_.Lock();
    state_ = 4;
    state_mutex_.Unlock();
}

// 0x865b30 _ZN3vox7DataObj17UnregisterEmitterEx
// Under the Handlable mutex, removes the first node whose id matches and frees it.
void DataObj::UnregisterEmitter(std::int64_t emitter_id) {
    mutex.Lock();
    for (auto it = emitters_.begin(); it != emitters_.end(); ++it) {
        if (*it == emitter_id) {
            emitters_.erase(it);
            break;
        }
    }
    mutex.Unlock();
}

// 0x865ba8 _ZN3vox7DataObj15RegisterEmitterEx
// Under the Handlable mutex, appends a node with the id at the tail.
void DataObj::RegisterEmitter(std::int64_t emitter_id) {
    mutex.Lock();
    emitters_.push_back(emitter_id);
    mutex.Unlock();
}

namespace {

// Copies the track parameter block of a decoder cursor (cursor +0x04..+0x10: channels, sample
// rate, bits, length) into the object at +0x28..+0x34.
void CopyTrackParams(DataObj& obj, const TrackParams& track) {
    obj.channels_ = track.channels;
    obj.sample_rate_ = track.sample_rate;
    obj.bits_per_sample_ = track.bits_per_sample;
    obj.length_ = track.length_frames;
}

// Replaces the object's stream and destroys the old one (Destruct, then VoxFree).
void ReplaceStream(DataObj& obj, StreamInterface* stream) {
    if (StreamInterface* old = obj.stream_) {
        Destruct(old);
        VoxFree(old);
    }
    obj.stream_ = stream;
}

// Builds a memory stream that owns the bytes. Returns null when the allocation fails.
StreamInterface* MakeOwningBuffer(void* data, int size) {
    StreamMemoryBufferParams params;
    params.data = static_cast<const std::uint8_t*>(data);
    params.size = size;
    params.explicit_owns = false;
    params.owns = true;
    void* mem = VoxAlloc(sizeof(StreamMemoryBuffer));
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) StreamMemoryBuffer(&params);
}

// Case 0 (source flags 0): one cursor from the stream, the track parameters from a decoder
// cursor, then both cursors are destroyed. Ready when the channel count is positive.
bool UpdateFromStreamCursor(DataObj& obj) {
    if (obj.stream_ == nullptr || obj.decoder_ == nullptr) {
        return false;
    }
    StreamCursorInterface* cursor = obj.stream_->CreateNewCursor();
    if (cursor != nullptr) {
        if (DecoderCursorInterface* decoder_cursor = obj.decoder_->CreateNewCursor(cursor)) {
            CopyTrackParams(obj, decoder_cursor->GetTrackParams());
            obj.decoder_->DestroyCursor(decoder_cursor);
        }
        obj.stream_->DestroyCursor(cursor);
    }
    return obj.channels_ > 0;
}

// Case 1 (source flags 1): the whole stream is read into memory and the object keeps
// a memory stream over it. The track parameters come from a decoder cursor on that stream.
bool UpdateBufferedStream(DataObj& obj) {
    if (obj.stream_ == nullptr || obj.decoder_ == nullptr) {
        return false;
    }
    const int size = obj.stream_->Size();
    if (size <= 0) {
        return false;
    }
    void* buffer = VoxAlloc(static_cast<std::size_t>(size));
    if (buffer == nullptr) {
        return false;
    }
    StreamCursorInterface* cursor = obj.stream_->CreateNewCursor();
    if (cursor == nullptr) {
        VoxFree(buffer);  // the original leaks this block on this path
        return false;
    }
    const int read = cursor->Read(static_cast<std::uint8_t*>(buffer), size);
    obj.stream_->DestroyCursor(cursor);
    if (read != size) {
        VoxFree(buffer);
        return false;
    }
    StreamInterface* memory = MakeOwningBuffer(buffer, size);
    if (memory == nullptr) {
        VoxFree(buffer);
        return false;
    }
    ReplaceStream(obj, memory);

    StreamCursorInterface* memory_cursor = memory->CreateNewCursor();
    if (memory_cursor == nullptr) {
        return false;
    }
    if (DecoderCursorInterface* decoder_cursor = obj.decoder_->CreateNewCursor(memory_cursor)) {
        CopyTrackParams(obj, decoder_cursor->GetTrackParams());
        obj.decoder_->DestroyCursor(decoder_cursor);
        obj.stream_->DestroyCursor(memory_cursor);
        return true;
    }
    obj.stream_->DestroyCursor(memory_cursor);
    return false;
}

// Case 2 (source flags 2): the whole stream is decoded into memory. The object gets a
// memory stream over the decoded bytes and a raw decoder with the same track parameters.
bool UpdateDecodedToMemory(DataObj& obj) {
    if (obj.stream_ == nullptr || obj.decoder_ == nullptr) {
        return false;
    }
    StreamCursorInterface* stream_cursor = obj.stream_->CreateNewCursor();
    if (stream_cursor == nullptr) {
        return false;
    }
    DecoderCursorInterface* decoder_cursor = obj.decoder_->CreateNewCursor(stream_cursor);
    if (decoder_cursor == nullptr) {
        obj.stream_->DestroyCursor(stream_cursor);
        return false;
    }
    CopyTrackParams(obj, decoder_cursor->GetTrackParams());
    // Bytes = channels * frames * (bits >> 3), as the original computes them.
    const int frame_bytes = obj.bits_per_sample_ >> 3;
    const int size = obj.channels_ * (obj.length_ * frame_bytes);
    void* buffer = nullptr;
    if (size <= 0 || (buffer = VoxAlloc(static_cast<std::size_t>(size))) == nullptr) {
        obj.stream_->DestroyCursor(stream_cursor);
        obj.decoder_->DestroyCursor(decoder_cursor);
        return false;
    }
    const int decoded = decoder_cursor->Decode(buffer, size);
    obj.stream_->DestroyCursor(stream_cursor);
    obj.decoder_->DestroyCursor(decoder_cursor);
    if (decoded <= 0) {
        VoxFree(buffer);
        return false;
    }
    StreamInterface* memory = MakeOwningBuffer(buffer, size);
    if (memory == nullptr) {
        VoxFree(buffer);
        return false;
    }
    ReplaceStream(obj, memory);

    const TrackParams track{obj.channels_, obj.sample_rate_, obj.bits_per_sample_, obj.length_};
    void* raw_mem = VoxAlloc(sizeof(DecoderRaw));
    if (raw_mem == nullptr) {
        return false;
    }
    DecoderRaw* raw = new (raw_mem) DecoderRaw(&track);
    if (DecoderInterface* old = obj.decoder_) {
        Destruct(old);
        VoxFree(old);
    }
    obj.decoder_ = raw;
    return true;
}

}  // namespace

// 0x866dec _ZN3vox7DataObj6UpdateEv
// Runs the load step while the object is in state 3 (loading). The source flags pick the
// path: 0 reads one cursor, 1 buffers the whole stream, 2 decodes it into memory. Any other
// flag value marks the object ready (state 0). A failed step sets state -1. The track words
// are copied from the decoder cursor's parameter block (cursor +0x04..+0x10) in every path,
// as the listing does. A null stream or decoder is treated as a failed step (the listing
// would dereference null there).
void DataObj::Update() {
    if (state_ == 0) {
        return;
    }
    mutex.Lock();
    if (state_ != 3) {
        mutex.Unlock();
        return;
    }
    bool ready = false;
    switch (source_flags_) {
        case 0:
            ready = UpdateFromStreamCursor(*this);
            break;
        case 1:
            ready = UpdateBufferedStream(*this);
            break;
        case 2:
            ready = UpdateDecodedToMemory(*this);
            break;
        default:
            ready = true;
            break;
    }
    state_ = ready ? 0 : -1;
    mutex.Unlock();
}

}  // namespace vox
