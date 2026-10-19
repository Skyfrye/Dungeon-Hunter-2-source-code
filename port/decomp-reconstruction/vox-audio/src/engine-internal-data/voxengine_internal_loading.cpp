// VoxEngineInternal source loading: LoadDataSource (synchronous) and LoadDataSourceAsync build a
// DataObj from a stream factory and a decoder factory. ConvertToRamBufferSource and
// ConvertToRawSource turn an existing data object into a memory-buffer source.
#include <cstddef>
#include <cstdint>
#include <new>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

namespace {

// The handle the original returns for "no source": id -1, no engine, no object, zero stamps.
DataHandle NullDataHandle() { return DataHandle(-1, nullptr, nullptr, 0, 0); }

// Builds a DataObj from its parts, as both loaders do. The loader sets the state and the
// parameters that differ between them.
DataObj* NewDataObj(std::int64_t id, StreamInterface* stream, DecoderInterface* decoder, int group,
                    unsigned int slot) {
    void* storage = VoxAlloc(sizeof(DataObj), kVoxMemHintDefault);
    if (storage == nullptr) {
        return nullptr;
    }
    DataObj* obj = new (storage) DataObj();
    obj->id = id;
    obj->stream_ = stream;      // +0x38
    obj->decoder_ = decoder;    // +0x3c
    obj->group_ = group;        // +0x1c
    obj->slot_ = static_cast<int>(slot);  // +0x14
    obj->uid_ = -1;             // +0x24
    obj->user_data_ = ~static_cast<std::uintptr_t>(0);  // +0x48 (-1 in the original)
    obj->ref_count = 0;         // +0x10
    return obj;
}

}  // namespace

// 0x86b144 _ZN3vox17VoxEngineInternal14LoadDataSourceEiPviS1_i
// Creates the stream (factory table +0x444, count +0x4c4) and the decoder (+0x4c8, count +0x548),
// probes them with a cursor, and reads the four track words from that cursor's parameter block
// (cursor +0x10 length, +0x04 channels, +0x0c bits, +0x08 sample rate; asm 0x86b24c-0x86b268).
// The cursor is destroyed (decoder +0x14) before the channel count is tested (channels > 0), and
// the words are stored at DataObj +0x34/+0x28/+0x30/+0x2c. The object is queued on the pending
// container (+0x28) under the data write access, and the handle carries the stamp slot (+0x590).
// A failed attempt destroys the stream and the decoder in that order.
// Deviations, both host-necessitated: the port reads the block through
// DecoderCursorInterface::GetTrackParams, which is the same cursor block; and it destroys the
// cursor only when the decoder returned one, where the original calls the slot through a null
// pointer (the Raw decoder's CreateNewCursor always returns an object, so the path was unreachable
// there).
DataHandle VoxEngineInternal::LoadDataSource(int stream_type, void* stream_arg, int decoder_type,
                                             void* decoder_arg, int group) {
    if (stream_type < 0 || stream_type >= stream_factory_count_ || stream_factories_[stream_type] == nullptr) {
        return NullDataHandle();
    }
    StreamInterface* stream = stream_factories_[stream_type](stream_arg);
    if (stream == nullptr) {
        return NullDataHandle();
    }
    auto destroy_stream = [&stream]() {
        Destruct(stream);
        VoxFree(stream);
    };
    if (decoder_type < 0 || decoder_type >= decoder_factory_count_ || decoder_factories_[decoder_type] == nullptr) {
        destroy_stream();
        return NullDataHandle();
    }
    DecoderInterface* decoder = decoder_factories_[decoder_type](decoder_arg);
    if (decoder == nullptr) {
        destroy_stream();
        return NullDataHandle();
    }
    auto destroy_decoder = [&decoder]() {
        Destruct(decoder);
        VoxFree(decoder);
    };

    // Probe the stream and the decoder with a cursor, as the original does.
    StreamCursorInterface* stream_cursor = stream->CreateNewCursor();  // stream vtable +0x14
    if (stream_cursor == nullptr) {
        destroy_decoder();
        destroy_stream();
        return NullDataHandle();
    }
    TrackParams params;
    bool has_channels = false;
    if (DecoderCursorInterface* cursor = decoder->CreateNewCursor(stream_cursor)) {  // decoder +0x10
        params = cursor->GetTrackParams();  // the cursor block at +0x04..+0x10
        has_channels = params.channels > 0;
        decoder->DestroyCursor(cursor);  // decoder +0x14
    }
    stream->DestroyCursor(stream_cursor);  // stream vtable +0x18
    if (!has_channels) {
        destroy_decoder();
        destroy_stream();
        return NullDataHandle();
    }

    const std::int64_t id = GetFreeDataObjectId();
    const unsigned int slot = next_data_slot_;
    DataObj* obj = NewDataObj(id, stream, decoder, group, slot);
    if (obj == nullptr) {
        destroy_decoder();
        destroy_stream();
        return NullDataHandle();
    }
    obj->channels_ = params.channels;                 // +0x28
    obj->sample_rate_ = params.sample_rate;           // +0x2c
    obj->bits_per_sample_ = params.bits_per_sample;   // +0x30
    obj->length_ = params.length_frames;              // +0x34
    obj->state_ = 0;  // +0x50: ready (IsReady)
    obj->source_flags_ = 0;

    next_data_slot_ = (next_data_slot_ + 1) & 0xFu;
    DataHandle handle(id, &VoxEngineInternal::s_voxEngineInternal, obj, data_stamps_[slot], slot);
    data_access_.GetWriteAccess();
    data_pending_.Add(obj);
    data_access_.ReleaseWriteAccess();
    return handle;
}

// 0x86aee8 _ZN3vox17VoxEngineInternal19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
// The asynchronous form: the stream and the decoder are created, but the object is left in the
// loading state (+0x50 = 3) with the loading flags stored (+0x54), and it is queued for the
// update loop (+0x4c). The track parameters stay zero until the loader fills them.
DataHandle VoxEngineInternal::LoadDataSourceAsync(int stream_type, void* stream_arg, int decoder_type,
                                                  void* decoder_arg, int group,
                                                  VoxSourceLoadingFlags flags) {
    if (stream_type < 0 || stream_type >= stream_factory_count_ || stream_factories_[stream_type] == nullptr) {
        return NullDataHandle();
    }
    StreamInterface* stream = stream_factories_[stream_type](stream_arg);
    if (stream == nullptr) {
        return NullDataHandle();
    }
    if (decoder_type < 0 || decoder_type >= decoder_factory_count_ || decoder_factories_[decoder_type] == nullptr) {
        Destruct(stream);
        VoxFree(stream);
        return NullDataHandle();
    }
    DecoderInterface* decoder = decoder_factories_[decoder_type](decoder_arg);
    if (decoder == nullptr) {
        Destruct(stream);
        VoxFree(stream);
        return NullDataHandle();
    }

    const std::int64_t id = GetFreeDataObjectId();
    const unsigned int slot = next_data_slot_;
    DataObj* obj = NewDataObj(id, stream, decoder, group, slot);
    if (obj == nullptr) {
        Destruct(decoder);
        VoxFree(decoder);
        Destruct(stream);
        VoxFree(stream);
        return NullDataHandle();
    }
    obj->state_ = 3;                                       // +0x50: loading
    obj->source_flags_ = static_cast<std::uint16_t>(flags);  // +0x54

    next_data_slot_ = (next_data_slot_ + 1) & 0xFu;
    DataHandle handle(id, &VoxEngineInternal::s_voxEngineInternal, obj, data_stamps_[slot], slot);
    data_access_.GetWriteAccess();
    data_pending_.Add(obj);
    data_access_.ReleaseWriteAccess();
    QueueForRelease(obj);
    return handle;
}

// 0x86b420 _ZN3vox17VoxEngineInternal24ConvertToRamBufferSourceERNS_10DataHandleE
// Reads the whole stream into a buffer (the stream's Size, a cursor, Seek(0) and Read), and loads a
// memory-buffer source from it with the decoder's type and parameter block. Only for a loaded
// object (state 0) that has both a stream and a decoder. Returns the null handle otherwise.
DataHandle VoxEngineInternal::ConvertToRamBufferSource(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    DataObj* obj = GetDataObject(data);
    if (obj == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return NullDataHandle();
    }
    DataHandle result = NullDataHandle();
    StreamInterface* stream = obj->stream_;
    DecoderInterface* decoder = obj->decoder_;
    if (obj->state_ != 0 || stream == nullptr || decoder == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    StreamCursorInterface* cursor = stream->CreateNewCursor();
    if (cursor == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    const int size = stream->Size();
    if (size <= 0) {
        stream->DestroyCursor(cursor);
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    void* buffer = VoxAlloc(static_cast<std::size_t>(size), kVoxMemHintDefault);
    if (buffer == nullptr) {
        stream->DestroyCursor(cursor);
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    cursor->Seek(0, 0);
    cursor->Read(static_cast<std::uint8_t*>(buffer), size);
    stream->DestroyCursor(cursor);
    data_objects_access_.ReleaseReadAccess();

    StreamMemoryBufferParams params;
    params.data = static_cast<const std::uint8_t*>(buffer);
    params.size = size;
    params.explicit_owns = false;
    params.owns = true;
    const int decoder_type = decoder->GetType();
    void* decoder_arg = decoder->GetParam();
    const int group = obj->GetGroup();
    result = LoadDataSource(0, &params, decoder_type, decoder_arg, group);
    return result;
}

// 0x86b694 _ZN3vox17VoxEngineInternal18ConvertToRawSourceERNS_10DataHandleE
// Runs only for a loaded object (state word +0x50 is 0) with a stream (+0x38). It makes a stream
// cursor, then a decoder cursor on it, and reads the buffer size and the four track words from the
// decoder cursor's parameter block (asm 0x86b730: [R6,#0xc] bits >> 3, times [R6,#0x10] frames,
// times [R6,#0x04] channels). A size of zero or less releases both cursors and returns the null
// handle; otherwise it allocates that many bytes, seeks the cursor to 0, decodes into the buffer,
// releases both cursors and the read access, and loads a raw source (decoder type 0, the four words
// as the parameter block, a memory-buffer stream over the decoded bytes, the object's group).
// Deviations, both host-necessitated: the port reads the block through
// DecoderCursorInterface::GetTrackParams; and it releases the read access on the paths where the
// decoder cursor cannot be made (asm 0x86b918, which releases nothing), so a reader count left
// behind does not block the next writer.
DataHandle VoxEngineInternal::ConvertToRawSource(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    DataObj* obj = GetDataObject(data);
    if (obj == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return NullDataHandle();
    }
    DataHandle result = NullDataHandle();
    StreamInterface* stream = obj->stream_;
    DecoderInterface* decoder = obj->decoder_;
    if (obj->state_ != 0 || stream == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    StreamCursorInterface* stream_cursor = stream->CreateNewCursor();
    if (stream_cursor == nullptr) {
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    DecoderCursorInterface* cursor = decoder != nullptr ? decoder->CreateNewCursor(stream_cursor) : nullptr;
    if (cursor == nullptr) {
        stream->DestroyCursor(stream_cursor);
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    const TrackParams params = cursor->GetTrackParams();  // cursor +0x04..+0x10
    const int bytes = params.channels * params.length_frames * (params.bits_per_sample >> 3);
    if (bytes <= 0) {
        decoder->DestroyCursor(cursor);
        stream->DestroyCursor(stream_cursor);
        data_objects_access_.ReleaseReadAccess();
        return result;
    }
    void* buffer = VoxAlloc(static_cast<std::size_t>(bytes), kVoxMemHintDefault);
    int decoded = 0;
    if (buffer != nullptr) {
        cursor->Seek(0);
        decoded = cursor->Decode(buffer, bytes);
    }
    decoder->DestroyCursor(cursor);
    stream->DestroyCursor(stream_cursor);
    data_objects_access_.ReleaseReadAccess();
    if (buffer == nullptr) {
        return result;
    }

    StreamMemoryBufferParams source;
    source.data = static_cast<const std::uint8_t*>(buffer);
    source.size = decoded;
    source.explicit_owns = false;
    source.owns = true;
    // The four words the raw factory reads, in the order the original builds them from the cursor
    // block (channels, sample rate, bits, frames).
    std::int32_t track_words[4] = {params.channels, params.sample_rate, params.bits_per_sample,
                                   params.length_frames};
    const int group = obj->GetGroup();
    result = LoadDataSource(0, &source, 0, track_words, group);
    return result;
}

}  // namespace vox
