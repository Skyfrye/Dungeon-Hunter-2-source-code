# vox-audio notes

## Vendored upstream (2026-10-13)

Upstream sources are in `upstream/`. Each folder's README.md gives the URL, the SHA-256 of the archive, the version
evidence and the DH2 changes (`// DH2:`).

- `stb_vorbis-0.99996/`: stb_vorbis.c at its initial checkin (commit e2caccb811), the oldest revision, which matches the
  binary's `stb_vorbis_*` function set. Compiled as C++ (the binary's symbols are C++-mangled). The DH2 changes read the
  stream through `vox::StreamCursorInterface`, define `STB_VORBIS_NO_PUSHDATA_API`, turn off `extern "C"`, and compile
  out the `fopen` filename entry points.
- `libmpcdec-r475/`: the seven SV8-capable libmpcdec units of musepack_src_r475 (`mpc_demux.c`, `mpc_decoder.c`, ...).
  `mpc_reader.c` is not used: vox's own reader (`src/mpc_reader.cpp`) is Gameloft code.
- `include/vox-audio/vox/stb_vorbis_api.hpp`: `stb_vorbis_open_file` takes a non-const `stb_vorbis_alloc*`, which is
  the binary's mangled signature (`...P16stb_vorbis_alloc`).

Ledger: `ledger.d/vendor-2.csv` (68 rows): 58 name the vendored file (stb_vorbis 25, libmpcdec 33). Eight name matches are
left as they are (body size outside the gate); two skipped rows keep their status.

Not changed: `vox::tixml` (the sound-pack XML reader in `w10-xml`) is still the vox subset reader, not TinyXML.

Status after wave 7. The ledger has 699 data rows: 452 reconstructed, 182 partial,
65 skipped. Wave 7 added 68 rows (from 631 at the start of the wave). The queue has 1374
functions: 699 ledgered, 675 remain. Of the 675, 237 are queue entries that are not
vox-audio code (see Wave 7), so the vox-audio pool is 438 (386 named bodies and 52
Musepack entries).

Builds: `tools/decomp_build.sh host vox-audio` (30 tests, all pass) and
`tools/decomp_build.sh windows vox-audio` (MinGW cross build, tests under Wine; 30 of 30
pass, no compile errors or warnings). Each category is one static library (port/decomp-reconstruction/CMakeLists.txt),
so a source that calls a declared-but-undefined function only fails in a test that links
it. No test links the VoxEngineInternal or VoxEngine sources yet.

Tests (30): access_controller, data_obj, decoder_cursor_base, decoder_mpc8,
decoder_mswav_cursor, decoder_raw, decoder_stb_vorbis, driver, driver_android,
driver_callback, emitter_obj, file_stdio, gain_fade, group_ctor, groups, handlable,
handle, ima_adpcm, mswav_sub_decoder_pcm, native_playlist, native_sub_decoder,
priority_bank, random48, sound_pack_xml, state_mutex, stream_base, stream,
string_compare, vox_thread, voxcallback_manager.

Wave 6 added: file_stdio (vox:: stdio helpers, a new header and source), native_playlist
and native_playlist_calls (PlaylistElement, NativePlaylist, NativePlaylistsManager
partial), driver_callback (DriverCallbackSourceInterface state machine and ring),
driver_android (DriverAndroid mode dispatch and VoxSet* exports), native_sub_decoder_state
(derived state ctors and dtors, partial), mswav_sub_decoder_imaadpcm (dtor), the
SegmentGroup and SequentialGroup constructors (groups.cpp, with GroupInfos), and the
DecoderRaw factory (decoder_raw.cpp). Also corrected: GetPitch and GetGain use 2^-14,
not 2^-15 (the ARM constant is 0x38800000).

## Class coverage

Counts are ledger rows by status (reconstructed / partial / skipped) and the
functions still queued. Queued totals come from queue.csv.

Complete (every queued method ledgered):

- AdpcmState (4), HandlableContainer (11, all reconstructed), DriverInterface (11),
  DriverSourceInterface (6), DecoderRaw (8) and DecoderRawCursor (9),
  StreamMemoryBuffer (8) and StreamMemoryBufferCursor (9), PriorityBank (1 skipped).
- DataHandle (8) and EmitterHandle (8): all rows are partial. The refcount helpers
  they call (Increase/DecreaseDataObjectRefCount, Increase/DecreaseEmitterObjectRefCount)
  are not defined, so the bodies stop at those calls.
- DataObj (15: 7 reconstructed, 8 partial), DecoderCursorInterface (11: 10 + 1 partial),
  StreamCFile (8: 7 + 1 partial), StreamCFileCursor (9: 8 + 1 partial), Mutex (10:
  7 reconstructed, 3 skipped as the decompiler thunk and the deleted copy constructor).

In progress:

- VoxEngineInternal: 79 of 123 ledgered (78 reconstructed, 1 partial), 44 remain.
  Remaining: the debug output, GetDataObject (0x8686bc), DetachEmitterObject
  (0x86a5d0), the update loops, and SetInteractiveMusicStateChange.
- VoxEngine facade: 98 of 111 ledgered, all but 6 partial. Each forwarder calls a
  VoxEngineInternal target (see Decisions). 13 remain.
- EmitterObj: 38 of 60 ledgered (36 reconstructed, 2 partial), 22 remain. Play, Pause,
  Stop, Resume, SetGain, SetPitch, Update and the 3D debug helpers depend on a fade
  state machine that is not yet traced.
- DecoderMSWavCursor 7 of 10, DecoderMPC8 6 of 8, DecoderMSWav 3 of 9, DecoderNative
  3 of 14, VoxNativeSubDecoder 3 of 27, VoxNativeSubDecoderPCM 7 of 18,
  VoxNativeSubDecoderIMAADPCM 1 of 21, VoxMSWavSubDecoderPCM 2 of 8.
- Groups: SequentialGroup 11 of 15 (GetGroupElementPosition partial), SegmentGroup 6
  of 10, RandomGroup 2 of 16 (its position cycle needs lrand48, see Open questions).
- PriorityBankManager 10 of 13, FileLimited 4 of 10, VoxThread 2 of 9.

Not started: VoxSoundManager (52), VoxSoundPackXML (39), DriverAndroid (7) and
DriverAndroidSource (6), CZipReader (10) and SZipFileEntry (4), DecoderNativeCursor
(16), DecoderMPC8Cursor (10), DecoderStbVorbisCursor (8), DriverCallbackInterface
(12), FileSystemInterface (11), FileSystemStdio (5), plus the Musepack helpers.
NativePlaylist (15) and NativePlaylistsManager (10) are blocked, see Remaining work.

## Layouts inferred (32-bit offsets from the pseudocode, kept as comments)

Base layouts from waves 1 to 4:

- `vox::StreamCursorInterface` vtable: +0x08 Init, +0x0c Shutdown, +0x10 Seek,
  +0x18 Tell, +0x1c Read, +0x20 ReadRef, +0x28 AllowBufferReference. Slots
  +0x14 and +0x24 are pure virtuals with no symbol. The header calls them
  IsSeekable and EndOfStream respectively. Neither assignment is confirmed by a listing.
- `vox::StreamInterface` vtable: +0x10 Size.
- `vox::StreamMemoryBuffer`: +0x04 size, +0x08 data pointer, +0x0c owns byte.
  Params block `StreamMemoryBufferParams`: +0x00 data, +0x04 size, +0x08
  explicit-owns flag, +0x09 owns byte.
- `vox::StreamMemoryBufferCursor` (12 bytes, VoxAlloc(0xc)): +0x04 owner,
  +0x08 position.
- `vox::StreamCFile`: +0x04 size, +0x18 path string, +0x20 file system.
- `vox::StreamCFileCursor` (0x801c bytes): +0x04 owner, +0x08 file handle,
  +0x0c position (-1 = unknown), +0x10 32 KiB read-ahead window, +0x8010 window
  fill, +0x8014 window index, +0x8018 window base offset.
- File handle (`vox::FileInterface`, stand-in): +0x08 Read(dst, size, count),
  +0x0c Seek, +0x10 Tell. File system (`FileSystemInterface`): +0x08 OpenFile,
  +0x0c CloseFile. The port exposes the handle as `GetFilePtr()` at +0x04.
- `vox::DecoderCursorInterface` (base members, inherited by DecoderRawCursor):
  +0x14 decoder_ (DecoderInterface*), +0x18 stream_ (StreamCursorInterface*),
  +0x1c loop_ (bool). Vtable: +0x14 DecodeRef, +0x1c Reset, +0x20
  GetRewindLimit, +0x24 Rewind, +0x28 Seek, +0x2c SetLoop, +0x30
  GetStreamCursor, +0x34 AllowBufferReference.
- `vox::EmitterObj` (see Decisions for the accessor quirks): +0x18 mutex_,
  +0x1c ready_flag_, +0x28 group_, +0x44 gain_modifier_, +0x8c loop_read_,
  +0x8d loop_, +0x90 state_, +0x94 state_set_, +0x99 reset_flag_, +0x134
  user_data_.
- `vox::VoxEngineInternal` vtable (52 bytes, 13 slots): +0x00/+0x04 destructor,
  +0x08 Initialize, +0x0c Suspend, +0x10 Resume, +0x14 IsSuspended, +0x18
  UpdateSources, +0x1c UpdateEmitters, +0x20 KillEmitter(EmitterObj*), +0x24
  SetGroupGain, +0x28 SetMasterGain. The last two slots are not named.
- `vox::VoxThread`: Sleep is usleep(ms * 1000) in the original; GetCurThreadId
  is pthread_self(). The port uses std::this_thread for both.
- `AdpcmState`: uint16 at +0x00 (initialised to 0xffff), byte at +0x02 (0).
  Meaning not established. Decoder fields in VoxNativeSubDecoderIMAADPCM are
  at +0x1a0 onward, four-byte stride.

Wave 5 additions:

- `vox::VoxEngineInternal` members: data_objects_ (HandlableContainer) +0x08,
  data_pending_ +0x28, emitters_ +0x78, emitter_pending_ +0x98, emitter_access_ +0xc4,
  emitter_pending_access_ +0xd0, priority_bank_ +0xdc, master_gain_ +0xe4,
  group_slots_[32] +0xf8 (20-byte stride, `VoxGroupSlot`: float gain at +0x00, four
  words after), data_objects_access_ +0x54, data_access_ +0x60, driver_ +0x54c,
  mutex_ +0x3f4. Listener block: position +0x3f8 (x y z), velocity +0x404,
  orientation +0x410 (front xyz, up xyz). General 3D parameters +0x428 (param 0 float),
  +0x42c (param 1 float), +0x430 (param 2 int). Dirty bytes: general +0x434..+0x436,
  listener +0x437 (position), +0x438 (velocity), +0x439 (orientation). Stream factory
  table: 31 pointers at +0x444, count at +0x4c4. Decoder factory table: 31 pointers
  at +0x4c8, count at +0x548. suspend_count_ +0x594.
- `vox::DriverInterface` vtable: +0x10 Suspend, +0x14 Resume (no symbol; declared pure
  in the port and named after the VoxEngineInternal callers), +0x18 RampOut, +0x1c
  RampIn, +0x20 Update(float), +0x28 SetDSPParameter, +0x2c SetStaticBusRouting, +0x30
  SetDynamicBusRouting, +0x34 SetSFXPresetActive, +0x38 SetOutputMode, +0x3c
  GetOutputMode.
- `vox::DriverSourceInterface` vtable: +0x40 SetDSPParameter, +0x44 Update, +0x48
  AllowBufferReference, +0x4c FreeDisposableData.
- `vox::EmitterObj` (wave 5 slots): bank_ +0x30, in_bank_ +0x34, flag_6c_ +0x6c,
  callback_pending_ +0x98, dsp_buffer_ +0xec, dsp_buffer_size_ +0xf0, owned_buffer_
  +0xf4, dsp_source_ +0x110 (DriverSourceInterface*), need_to_die_ +0x11c, auto_kill_
  +0x11d, state_callback_ +0x138, state_callback_user_ +0x13c. 3D block: position
  +0x9c (parameter 8), direction +0xa8 (parameter 10), velocity +0xb4 (parameter 9),
  param0 +0xc0, float parameters 1..7 at +0xc4..+0xdc, dirty bytes +0xe0..+0xea.
- `vox::DataObj`: priority_bank_id_ +0x20, uid_ +0x24 (the other slots are above).
- `vox::Vox3DGeneralParameters` (12 bytes) is the copy shape of the +0x428 block.
- `DecoderMPC8`: first (int32) at +0x00 of the params block, param_ at +0x04
  (initialised to -1).
- `VoxMSWavSubDecoder` (interface): Decode +0x08, Seek +0x0c, HasData +0x10.
  `DecoderMSWavCursor`: sub_decoder_ +0x24, loop_ +0x28 (the cursor sets it).
- `VoxNativeSubDecoder`: has_data_ +0x16c. `VoxNativeSubDecoderPCM`: bytes_per_sample_
  (int16) at +0x10 of the PCM object.
- `mpc_reader_t`: callbacks[5] at +0x00..+0x10 (not used by the wrappers), `data`
  (StreamCursorInterface*) at +0x14.

Wave 9 native sub-decoder slots (w9-native-subdecoder). Offsets are from the vptr, which is
the address point of the vtable symbol plus 8. The decompiled indirect calls use the same
numbers (`*(this) + N`). Names come from the PCM and IMA ADPCM overrides in the vtable
symbols (vtables-001.json) and from the call sites; the base class vtable has zero words
(pure) in every slot not listed as a method.

- `vox::VoxNativeSubDecoder` (14 slots): +0x00 D1, +0x04 D0, +0x08 HasData (defined),
  +0x0c Seek(unsigned), +0x10 Reset (defined), +0x14 DecodeCurrentSegmentWithOffset(void*, int),
  +0x18 DecodeSegment(void*, int, SegmentState*), +0x1c GetBytePositionFromSampleOffset(unsigned)
  (returns unsigned), +0x20 GetDecodingBuffer(), +0x24 ReleaseDecodingBuffer(int),
  +0x28 Seek(int, SegmentState*), +0x2c SetDecodingBufferToSegmentPosition(SegmentState*),
  +0x30 EmulateDecodeCurrentSegmentWithOffset(int), +0x34 EmulateDecodeSegment(int, SegmentState*).
  The first call of the decode path is Decode through +0x18 with the segment, the mix of
  one segment through +0x14, and the emulated mix through +0x30 and +0x34.
- `vox::VoxNativeSubDecoderIMAADPCM` adds +0x38 EmulateSetDecodingBufferToSegmentPosition(SegmentState*),
  which the IMA-only vtable (68 bytes) holds after the shared 14 slots.
- Segment record: 0x44 bytes, copied as 0x41 bytes (the record without padding). The three
  records sit at +0x98 (A), +0xdc (B) and +0x120 (C) in VoxNativeSubDecoder, and at +0x6c, +0xb0
  and +0xf4 in NativeSubDecoderState. Word n of a record is +4n: 0 chunk, 1 play mode, 2 byte
  offset, 3 sample position, 4 loop start, 5 end frame, 6 entry count, 7 entries left, 8 restart
  at end, 9 state, 10 remaining frames, 11 (field_2c), 12 ramp frames, 13 ramp step, 14 gain,
  15 decoding slot, byte 16 reset flag.
- Object words used by the segment code: +0x2c loop lists (vector<vector<int>>*), +0x30
  playlists, +0x94 active segments, +0x164 next event, +0x168 pending seek, +0x16c has data,
  +0x0a channels, +0x0c track word, +0x10 bytes per sample, +0x12 bits. The mixing buffer is
  s_pMixingBuffer (32-bit sums) with s_nbSamplesMixingBuffer frames.
- Constructors are blocked: the base C1 and C2 take the stream, chunks, states, audio segments,
  loop lists, rules, parameters, a map, an int, a string compare and the playlists. The ARM
  order (stream in r1, unused r2, states in r3) does not match the mangled order, so the
  NativeChunks position is taken from the readers only. Needs the caller to settle it.

## Decisions

- stb_vorbis is ledgered `skipped`, not `upstream`. The binary's copy is a
  Gameloft-modified derivative: stream I/O goes through vox StreamCursorInterface
  shims (fgetc/fread/ftell/fseek), the state struct is 0x5a8 bytes, and there is a
  C++ build path. The README defines `upstream` as unmodified, so these rows do
  not qualify. The upstream stb_vorbis v1.22 was fetched to the scratchpad for
  comparison only and nothing from it is in the repo. This departs from the brief,
  which asked for `upstream`. Rows note "see NOTES.md". All 61 stb_vorbis-named
  queue entries are now ledgered this way (`skipped`).
- VoxEngine forwarders are `partial`. Each one calls `VoxEngineInternal`, which
  is declared but not defined. Functions that take a null engine return a default
  (documented per function in voxengine.hpp), for example the no-engine DataHandle
  is DataHandle(-1, nullptr, nullptr, 0, 0).
- VoxEngine facade vs instance. The port's VoxEngine forwarders are static. The
  original UpdateEmittersThreaded, UpdateThreaded, the constructor and the destructor
  take `this` (an object with a double timestamp at +0x10). Two thunks, 0x862d08
  (UpdateThreaded) and 0x862d0c (UpdateEmittersThreaded), are 4-byte `b` jumps to
  0x862cf0 and 0x862c4c. They are not ported, because their targets are instance
  methods the port does not have yet. The brief asks thunks to forward to the same
  target, so these two are left open rather than copied.
- AAPCS for 64-bit handle arguments: a 64-bit argument goes in an even register pair.
  The handle constructor's arguments (0, 0xffffffff, 0xffffffff, 0, 0, 0, 0) therefore
  mean padding in r1, id = -1 in r2:r3, a null engine and handlable, and stamps of 0.
- EmitterObj::IsAlive (0x8657f4) locks the mutex twice in the original (own lock,
  then ShouldDie). The port calls the unlocked body, because a second lock on a
  non-recursive mutex would deadlock. Marked partial.
- EmitterObj state callbacks. NeedToSendStateChangedCallback hands out a callback
  once (clears +0x98) and maps the state word: 0 or 3 -> 4, 1 -> 1, 2 -> 2, else 0.
  GetStatus reports state 1 as 2 when flag_6c_ is set, else 0x11 or 0x21 by the
  sub-state (+0x94). State 2 gives 2, states 0 and 3 give 4, others 0.
- VoxEngineInternal::Play/Stop (EmitterObj*) handle the priority bank membership:
  a bank entry that is already set is removed first; a rejected AddEmitter stops the
  emitter. Without a bank manager nothing starts.
- Driver defaults with no driver: GetOutputMode returns -1, SetOutputMode returns 0,
  and UpdateDSP, SetRoutingVolume and _SetDefault3DParameters are empty.
- Registry: RegisterStreamType and RegisterDecoderType return the slot index, or -1
  when all 31 slots are full. UpdateDebugServer is empty.
- mpc_seek returns 1 when the cursor seeks to the absolute position, 0 otherwise.
  mpc_canseek returns 1. mpc_getsize returns 0 (see Open questions).
- DecoderMSWavCursor's destructor deletes the sub-decoder it owns (virtual destructor,
  then VoxFree). The test places a FakeSub in malloc storage with placement new so
  that the cursor can free it safely.
- EmitterObj reproduces the ARM accessor quirks: SetLoop writes +0x8d but GetLoop
  reads +0x8c, and SetState writes +0x94 but GetState reads +0x90. Both are kept
  as the binary has them, and each accessor's header comment points here.
  IsReady returns (ready_flag_ ^ 1) != 0.
- DecoderRaw allocation: `VoxAlloc(sizeof(DecoderRawCursor))`. The original
  allocates 0x20 bytes on the 32-bit layout, but the 64-bit object is about 48
  bytes. The old size caused a heap overflow that aborted decoder_raw_test.
- StreamCursorInterface::ReadRef default calls Read(ref, size). The ARM at
  0x8886f8 loads *ref and calls vtable +0x1c with (this, ref, size).
- DecoderCursorInterface::Reset (0x86fb5c) calls the virtual Seek(0) and drops
  the result, as the original does.
- Mutex is a std::mutex wrapper (portable to MinGW). The copy constructor is
  deleted. Lock/Unlock keep the original lock-guard pattern.
- Mutex-wrapped accessors (Get3DGeneralParameteri and the like) have garbled
  pseudocode. Their bodies were read from the ARM listing (asm.py).
- StringCompare uses LessByBytes (memcmp over the shorter length, tie goes to
  the shorter string). c8stringcomp is ASCII case-insensitive, returning ca < cb.
- The test for stream_base uses placement new, an explicit destructor via
  `Destruct`, then `::operator delete`. Calling the destructor and then `delete`
  is undefined behaviour and segfaulted at -O2.
- IMA ADPCM (`ima_adpcm.hpp`): the step and index tables are the standard IMA
  values. The native binary is not in the container (recovered/native/ has only
  the debug, symbols and assembly directories), so the rodata tables are not
  confirmed. The algorithm and frame count are ported and tested, but the stream
  read is not. DecodeBlock is therefore partial.
- Cursor and stream factories (StreamMemoryBufferFactory, StreamCFileFactory)
  return raw VoxAlloc blocks. Their constructor calls are not visible in the
  pseudocode.
- StreamMemoryBuffer copy branch sets size to 0 after the copy, as the pseudocode
  shows. Not yet checked against the ARM.
- Stdio shims: fgetc returns the byte (0 at EOF), fseek discards the seek result.
  VoxAlloc out-of-memory reports through vox::SetOutOfMemoryHook with no stats dump.
- Decoder MSWav and Native classes are abstract. GetType returns 1 and 4. Their
  CreateNewCursor is not ported. DestroyCursor is a virtual destructor followed
  by VoxFree.
- SetUserData overloads take the first word of the record (EmitterObj) and the
  whole record (DataObj). The mangled EmitterObj symbol takes EmitterHandleUserData&,
  which does not match the port's `const uintptr_t&`. Left as is (see Open questions).

- Wave 6: VoxNativeSubDecoderPCM Reset, SetState and GetState are empty bodies (4-byte
  ARM, bare return), ledgered reconstructed. GetNbAvailableSamples returns 0 for a zero
  buffer_bytes_, where the original divides without a guard.

## Wave 7 (Hex-Rays as the primary source)

Source: `tools/decomp_extract.py --category vox-audio` defaults to Hex-Rays
(recovered/native/hexrays-all, commit 9476235b). ARM listings were used to confirm stores,
float helper calls and declared sizes. A Hex-Rays `int` return on a method the port
declares void is the Mutex::Unlock tail call: the original returns the unlock result and
the port drops it. Those bodies are marked partial (SetGroupGain, SetMasterGain, SetGain,
SetPitch, Resume).

Queue byte counts are not reliable. The ARM declared_size is the real size
(VoxMSWavSubDecoder::GoToNextDataChunk is 140 bytes, not 4).

Queue defect: all 237 FUN_ entries in queue.csv have elf_address exactly 0x10000 below the
address in their names (FUN_0089ece4 is listed at 88ece4). Resolved by name they are
libstdc++ (197, std::exception and locale), LCAndroidSocket (17), LCXPlayerSocket (17) and a
few runtime helpers. None is vox-audio code, so none is ledgered. They need re-queueing in
the owning category.

Layouts (offsets from the pseudocode):
- VoxGainFade (gain_fade.hpp): current +0x00, target +0x04, elapsed +0x08, duration +0x0c,
  flag +0x10; 20 bytes. Used for the master fade (VoxEngineInternal +0xe0), the group fades
  (from +0xf4, 20-byte stride) and three EmitterObj records.
- EmitterObj: raw gain +0x40 (requested_gain_); gain fade +0x48..+0x58 (target +0x4c);
  gain_ +0x3c is what GetGain returns (SetGain does not write it); pitch raw +0x74 (pitch_);
  pitch fade +0x78..+0x88 (target +0x7c, which also takes the raw pitch); resume fade
  +0x5c..+0x6c (target 1.0). The flag at +0x6c is what GetStatus tests in state 1, so
  flag_6c_ is now resume_fade_.flag. Interactive state: flag +0x144, name +0x146
  (port: std::string).
- VoxEngineInternal: master fade +0xe0 (target +0xe4); group fades +0xf4 + 20*i (target
  +0xf8 + 20*i); emitter access +0xc4; data objects access +0x54; data access +0x60;
  emitter pending access +0xd0.
- VoxMSWavSubDecoder base: stream +0x04, chunk +0x08, node +0x0c, channels +0x10, sample rate
  +0x14, bits +0x18, total frames +0x1c, node position +0x20, frame position +0x24, loop +0x28.
- DataNode {offset +0x00, size +0x04, next +0x08}; WaveChunk {channels +0x16, sample_rate
  +0x18, block_align +0x20, bits_per_sample +0x22, current_data_size +0x28, data_list +0x38}.
  Stand-ins until DecoderMSWavCursor::ParseFile is ported.
- VoxCallback: vtable +0x00 dtor, +0x08 Invoke. Ring node VoxCallbackNode {next +0x00,
  prev +0x04, callback +0x08}; the sentinel head is the manager.

Decisions:
- Fade durations. SetMasterGain and SetGroupGain store time + 0.001 (constant 0x3a83126f).
  EmitterObj SetGain, SetPitch and Resume store the time as given. RestartFadeWithDuration
  (gain_fade.hpp) is the exact form; RestartFade adds 0.001.
- Clamping. Master and group gains clamp to [0, 1]. EmitterObj::SetGain stores the raw value
  (a test keeps 3.0).
- Float helpers, from use and constants: 0x30e70c __aeabi_fcmplt (a < b), 0x30e2f8
  __aeabi_fcmpgt (a > b), 0x30ed6c __aeabi_fmul, 0x30ec94 __aeabi_fdiv, 0x30e3ac
  __aeabi_fsub, 0x30eba4 __aeabi_fadd (0x3a83126f is 0.001f), 0x30e904 __aeabi_idivmod,
  0x30e2a4 __aeabi_idiv. Division by zero returns 0 (the ARM default handler), as DivOrZero
  does in mswav_sub_decoder_pcm.cpp.
- lrand48 is ported (random48.cpp): X = (0x5DEECE66D * X + 0xB) mod 2^48, output X >> 17,
  srand48 sets (seed << 16) | 0x330E. Seeded sequences match host glibc (seed 1: 89400484,
  976015093). The unseeded state follows POSIX (0x1234ABCD330E). glibc starts from zero, so
  the unseeded values are not checked against the host.
- GetFreeEmitterObjectId and GetFreeDataObjectId return int64 (Hex-Rays shows the
  GetFreeHandleId type).
- Deleting destructors (D0) are compiler-generated. They are ledgered as reconstructed when the
  D1 they wrap is ported (VoxNativeSubDecoderPCM D0 0x8884f8).
- Musepack (mpc_*) is not ledgered; see the policy question below.

Why the remaining bodies are not reconstructed in this wave:
- Classes not in the port: VoxSoundManager (game glue at 0x36xxxx), CZipReader and
  SZipFileEntry, DecoderNativeCursor, VoxNativeSubDecoderIMAADPCM, DriverCallbackInterface,
  GroupXMLDef and EventXMLDef.
- Members the port lacks: NativePlaylist Reset, PeekAtNextElement, SetToPreviousState and
  GetState; NativePlaylistsManager AddPlaylistElement, AddGroup and TransposePlaylistParameters
  (they call element virtuals that are not ported); VoxSoundPackXML ResetEvent(int) and
  GetEventSoundUid(int, int&) (the int overloads); the VoxEngine singleton (GetVoxEngine,
  DestroyVoxEngine); the VoxThread object (ctor, Stop, Update, dtors); the
  DriverCallbackSourceInterface ctor, dtor and SetDriverCallbackPeriod (the static is not
  ported); EmitterHandleUserData (forward-declared only, so the emitter SetUserData overloads
  cannot take it).
- Unnamed DSP virtuals: EmitterObj::GetPlayCursor (source vtable +0x1c) and PrintDebug
  (+0x50), and SetPlayCursor (1382 bytes). The driver source vtable slots are not modelled.
- Large state machines: EmitterObj Play, Pause, Stop and Update; VoxEngineInternal
  UpdateEmitters, CreateEmitter, LoadDataSource, GetDataObject, DetachEmitterObject;
  PriorityBankManager::Update (2395 bytes) and AddEmitter (4839 bytes).
- IMA ADPCM family (ctor 0x8755b0, Decode 0x875cc8, Seek 0x875c34, HasData 0x875418): large,
  and the decoder class is not ported.

Policy question: the 52 mpc_* queue entries are Musepack (upstream libmpcdec) code. They are
not ledgered as skipped or upstream. Decide whether vox-audio records them as upstream rows.

Windows build (MinGW cross build, tests under Wine), final code: no compile errors or
warnings; `100% tests passed, 0 tests failed out of 30`.

## Open questions

- StreamCFile::Init and StreamCFileCursor::Init test the owner's +0x1c value and
  pass +0x1c to OpenFile. The port reads +0x1c as "path set" and opens the path.
  Confirm against the disassembly.
- StreamCFileCursor::Read and StreamMemoryBufferCursor::Read: the pseudocode stops
  after memcpy (the decompiler treats memcpy as non-returning). Position advance
  and return count are reconstructed. The original return is 0 on every visible path.
- StreamCFileCursor::Seek: the file Seek arguments are lost. The port seeks with
  whence 0 to the target.
- Several memcpy and idiv calls are marked non-returning, so tails of some
  functions are missing (ADPCM DecodeBlock, stream Read/ReadRef tails).
- Stream vtable slots +0x14 and +0x24 (see Layouts).
- DataObj: the duration helpers at 0x30e2e0, 0x30e964 and 0x30ec94 are not
  reconstructed. The DebugChunk_dataSource layout is also unknown, which blocks
  GetDebugInfo.
- DataObj virtual slots +0x08 and +0x0c are called by the data refcount helpers
  (Increase/DecreaseDataObjectRefCount). Those helpers are not in the port, so the
  DataHandle copy and destructor rows stay partial.
- GetDataObject (0x8686bc) and DetachEmitterObject (0x86a5d0) are not reconstructed.
  The data forwarders and KillEmitter(EmitterHandle&) call them. Both are declared only.
- GetFreeEmitterObjectId and GetFreeDataObjectId: resolved in wave 7 (int64, from
  Hex-Rays). Both are reconstructed.
- RandomGroup::GetActiveElementIndex uses lrand48. lrand48 is portable now (random48.cpp,
  wave 7). RandomGroup::GetActiveElementIndex itself is not ported.
- FileInterface and FileLimited read and seek go through unidentified global pointers
  (DAT_00a43eb4, DAT_00a43eb8) and FileSystemInterface::m_IOFunc. The owner of those
  globals is not identified.
- EmitterObj +0x6c is the flag of the resume fade record (+0x5c, wave 7). The owner of the
  buffer at +0xf4 is not identified.
- EmitterObj::UpdateDSP frees dsp_buffer_ without clearing it when +0xf0 is set. The
  original does the same, so a second call frees it again. Kept as is.
- SequentialGroup::GetGroupElementPosition returns -1 for an empty element vector; the
  original reads through a null vector. Partial.
- mpc_getsize needs the owning stream's size through the cursor's owner pointer.
  StreamCursorInterface has no owner slot in the port, so it returns 0 (partial).
- EmitterObj::SetUserData signature mismatch (see Decisions).
- Android JNI setters (VoxSetJavaVM, VoxSetDataThreshold, VoxSetAndroidAPILevel) are
  queued but not started. They belong with DriverAndroid.

- Float helpers (wave 6). The bl targets 0x30ed6c, 0x30e2f8, 0x30e70c, 0x30e9ac, 0x30e4cc,
  0x30e964, 0x30ec94, 0x30eba4, 0x30e2a4, 0x30e904 are PLT stubs, so symbols.csv has no
  names for them. 0x30ed6c is __aeabi_fmul: the 16384.0f argument (0x46800000) in
  SetDriverCallbackPeriod and SetGain fixes the meaning. 0x30e2a4 is __aeabi_idiv (Ghidra
  names it in GetNbAvailableSamples); 0x30e904 is taken as the remainder helper (inferred). 0x30e4cc
  (float to int) and 0x30e964 (int to float) are inferred from the Q14 scale. The two
  compare helpers (0x30e2f8, 0x30e70c) are not confirmed as eq or le. Wave 7 confirmed
  both from use (see Wave 7, Decisions). SetGain and SetPitch are partial only for the
  unlock result.
- GetPitch and GetGain: wave 5 used 2^-15. The ARM constant 0x38800000 is 2^-14, so wave
  6 corrected both (driver_callback.cpp and their ledger rows).
- DriverBuffer +0x10 is named field_10_ (the count GetNbAvailableSamples subtracts);
  +0x08 and +0x0c stay unidentified.


## Remaining work (675 unledgered of 1374 queued)

By class, as the queue names them (recounted at the end of wave 7):

- FUN_ entries: 237. Their queue addresses are 0x10000 low, and their real bodies are
  libstdc++ and socket code (see Wave 7). They are not vox-audio code. Re-queue them in
  the owning category; do not ledger them here.
- VoxSoundManager 52 (game glue: JNI, iPod playlist, glitch-side calls). Not started.
  The glitch:: entries belong in that category.
- VoxEngineInternal 44 (debug output, GetDataObject, DetachEmitterObject, update loops,
  SetInteractiveMusicStateChange) and VoxEngine 13 (instance methods, see Decisions).
- VoxSoundPackXML 39, DriverAndroid 7, DriverAndroidSource 6. Not started.
- EmitterObj 22: the fade state machine (Play, Pause, Stop, Resume, SetGain, SetPitch,
  Update, 3D debug helpers).
- DriverCallbackSourceInterface 22: GetWorkData, FillBufferStereo16, FillBufferMono16(NoInter),
  FillBuffer, UploadData, SetPitch, SetGain (partial, done), GetDopplerPitch, GetDistanceGain,
  GetDirectionalGain, GetStereoPanning, Set3DParameter(s), the constructors and dtors.
  Most float bodies call helpers that are not named (see Open questions).
- DriverCallbackInterface 12: its base class is not in the port yet, so its constructors
  and dtors wait for that header.
- Native sub-decoders: VoxNativeSubDecoderIMAADPCM 20, VoxNativeSubDecoder 18,
  VoxNativeSubDecoderPCM 8 (Seek-like and state methods still missing), VoxMSWavSubDecoderIMAADPCM 6.
  The native segment code (SegmentState, TransitionRule) is not ported.
- DecoderNativeCursor 16 and DecoderNative 11: the native cursor class is not in the port;
  DecoderNative has no CreateNewCursor, so it stays abstract.
- NativePlaylist 15 and NativePlaylistsManager 10: blocked. The original NativePlaylist
  is larger than the port layout (a vector of element pointers at +0x24..+0x2c, and
  AddGroup allocates 0x5c-byte group objects). Reset, SetState, SetToPreviousState and
  the manager copies call element virtuals (slots 0x10, 0x14, 0x18, 0x1c, 0x24) that
  are not ported.
- RandomGroup 14: needs lrand48 (see Open questions) and the list sentinel layout.
- SegmentGroup 2 and SequentialGroup 2: the copy constructors (0x88199c, 0x881a08,
  0x8839fc, 0x883ab8) need the GroupInfos-based copy, not yet traced.
- FileSystemInterface 11, FileSystemStdio 5, FileInterface 4, FileLimited 6: Read and Seek
  go through unidentified global pointers (see Open questions).
- CZipReader 10 and SZipFileEntry 4: the SAllocator string layout (+0x10, +0x18, +0x30)
  is not reproduced, and there is no zip reader in the port.
- DecoderMPC8Cursor 10, DecoderMPC8 2, DecoderStbVorbisCursor 8, DecoderStbVorbis 5:
  the cursors are not in the port. stb_vorbis is upstream (see Decisions).
- VoxUtils 6, VoxThread 7, vox 7 (the decoder factories and stdio shims),
  VoxCallbackManager 4, PriorityBankManager 3, EventXMLDef 3, GroupXMLDef 3, DataNode 1,
  StreamInterface 1.
- Musepack (not started): the mpc_* helpers (mpc_bits_*, mpc_demux_*, mpc_decoder_*,
  mpc_synthese_filter_float_internal, mpc_random_int, mpc_streaminfo_get_length*,
  mpc_get_encoder_string, mpc_set_replay_level) plus streaminfo_gain,
  streaminfo_encoder_info, streaminfo_read_header_sv7/sv8, huff_init_lut,
  huff_fill_lut and can_fill_lut.

## Wave 8 (parallel slices, Windows verified)

Fourteen workers each took one class slice (see ledger.parts/ for the per-slice ledgers, now
merged into ledger.csv). The Musepack rows were already upstream on the integrator branch, so
the duplicate rows from the musepack slice were dropped. The 237 FUN_ rows were re-queued by the
integrator (280fd865). Three FUN_ rows (0x8a0364, 0x8a2330, 0x8a7e90) are still unassigned.

Build: `tools/decomp_build.sh windows vox-audio` (MinGW-w64 under Wine) passes 45 of 45 tests.
MinGW and Wine were installed with apt on the integrator container.

Blocked groups, each needing a structural decision rather than another row:
- Driver source and decoder vtable slots (EmitterObj ctors, LoadAsync, Update, Update3D, the
  play-cursor getters): the port does not name these slots yet.
- PlaylistElement table at +0x30: the original is a PlaylistElement* vector, the port an int32
  table. Blocks AddPlaylistElement, the NativePlaylist dtor and copy ctor.
- Game glue for VoxSoundManager: 49 of 52 rows depend on JAVA_SOUNDS, the Arrays tables, menus and
  the native sound bridge.
- Native decoder cursor Seek, Decode and Rewind: need the sub-decoder Seek and Decode slots.
- VoxMSWav/MPC8 demux calls: libmusepack demux functions are declared but not in the port.

## Wave 9 (w9-mpc: DecoderMPC8 cursor and streaminfo rows)

Hex-Rays and the asm listing (decomp_asm.py) were checked against the port. Changes:
- Reader wrappers: the cursor constructor stores mpc_read, mpc_seek, mpc_tell, mpc_getsize and
  mpc_canseek at reader +0x00..+0x10 (0x87018c). mpc_reader_t now has typed slots (read, seek,
  tell, get_size, can_seek, data at +0x14).
- Frame block for mpc_demux_decode: samples at +0x00, the PCM buffer at +0x08. The Decode loop
  stores the PCM buffer there before each call (asm at 0x86ff24).
- Decode loop restart: the if-path seeks to the pre-update position (+0x20 read before the
  update). The else-path argument is clobbered on the ARM side, so it is not recoverable (partial).
- No new named vtable slots in this slice: the DecoderMPC8 virtuals are the DecoderInterface and
  DecoderCursorInterface slots already in the port. Slot offsets were not re-measured here.
- New test decoder_mpc8_cursor_demux_test drives the cursor through a fake demuxer.
- streaminfo_gain and streaminfo_encoder_info stay skipped (Musepack rule, name not confirmed).

## Wave 9: native decoder slice (w9-native-decoder)

Layouts (vptr-relative slot offsets, the same convention as the wave 1 to 4 entries above):
- `vox::DecoderNativeCursor` vtable: +0x00/+0x04 D1/D0, +0x08 Init, +0x0c Shutdown, +0x10
  Decode, +0x14 DecodeRef, +0x18 HasData, +0x1c Reset, +0x20 GetRewindLimit, +0x24 Rewind,
  +0x28 Seek, +0x2c SetLoop, +0x30 GetStreamCursor, +0x34 AllowBufferReference.
- `vox::DecoderNative` vtable: +0x00/+0x04 D1/D0, +0x08 Init, +0x0c Shutdown, +0x10
  CreateNewCursor, +0x14 DestroyCursor, +0x18 GetType, +0x1c GetParam.
- Sub-decoder slots the cursor calls (vptr-relative, VoxNativeSubDecoder and its PCM and IMA
  classes): +0x08 HasData, +0x0c Seek(unsigned), +0x10 Reset. The cursor reaches them through
  the concrete class picked by the format tag (decoder +0x24, 17 selects IMA ADPCM, else PCM),
  which is the class the original vptr would select. Decode, SetState(int) and
  EmulateDecode are direct (non-virtual) calls on VoxNativeSubDecoder.
- `vox::DecoderNative` format tag: halfword at +0x24, the first word of the 'fmt ' chunk body.
  Added as `format_tag_`. The original cursor reaches the header block through its own +0x20
  pointer (decoder +0x04); the port reads `decoder_` directly.
- Frame counters of the cursor (names as in the port): frames_before_ +0x58, frames_current_
  +0x5c, frames_capacity_ +0x60 (the cursor's frame limit, from 600 * channels * the second track
  word / 500 in the constructor), frames_mark_ +0x64, decode_calls_ +0x4c.

Decisions:
- Seek, Reset, Rewind and Decode are reconstructed with the sub-decoder class chosen by the
  format tag, not by a new virtual in VoxNativeSubDecoder (that header belongs to the
  native sub-decoder slice). If that slice adds the virtuals, these calls can switch to them.
- A rewind or a decode that uses the IMA state copies depends on IMA SetState and GetState,
  which are partial in their own slice. The cursor bodies are complete.
- The cursor and decoder destructors are reconstructed. The playlist manager destructor is
  partial in the playlists slice, so its body is what is still open.
- CreateTransitionRulesContainer and CreateSegmentsInfoContainers match the pseudocode line for
  line and are reconstructed. The 36-byte and 24-byte records are still stand-ins, as before.

Still partial (this slice):
- ParseFile: the chunk loop (Afmt at 0x746D6641, Segm at 0x6D676553, Cues at 0x73657543, then
  Grpe, Rule, Plst, Stat and end) is about 14 KB of pseudocode. Only the VoxN header is checked.
- The cursor C1 and C2: after parsing, the original creates the sub-decoder (PCM object 0x170
  bytes with states of 0x144 bytes, or IMA object 0x1c0 bytes with states of 0x150 bytes) and
  the playlist manager copy, then sets the track parameters and the frame capacity.
- SetImplicitSegmentCues: the decompiled structure pushes one value twice on the size-1 path
  (LABEL_7 then LABEL_3). Left empty until the assembly settles it.
- CreatePlaylistsContainer: the original returns NativePlaylistsManager::Init's result, which
  the port does not return.

## Wave 9: files-xml slice (SLICE w9-files-xml)

Rows: 23 (ledger.parts/w9-files-xml.csv). Reconstructed 12, partial 7, skipped 4 (decided from
the Hex-Rays body and the ARM listing via decomp_asm.py). Host build passes 47 of 47 tests
(new: sound_pack_event_pick_test, zip_path_strip_test). No MinGW or Wine run in this slice.

Layouts confirmed by the listing:
- `vox::StreamInterface` base: `Size()` returns the word at +0x04 (LDR R0,[R0,#4]). Still
  partial; the port's stream classes keep their own size_.
- `vox::FileInterface`: handle at +0x04. Seek calls slot (handle, offset, origin); Tell
  calls slot (handle). Both return -1 for a null handle or slot. The slots are
  off_A33EB4 and off_A33EB8 read through m_IOFunc.
- `vox::FileSystemInterface::CloseFile`: vtable slot +0x18 of the file is tested; a nonzero
  result calls off_A33EC0; then vtable slot 0, VoxFree, return 0.
- `vox::VoxSoundPackXML` event record (44 bytes): used list +0x08 (sentinel at +0x08),
  picked uids pool vector +0x10..+0x18, mode short +0x1c (0 random without repeat, 1 in
  order), max used short +0x1e, percent-no-sound short +0x20, mode 1 index short +0x22.
  ResetEvent stores the event record count in the +0x22 index (STRH R3, count).
- `VoxSoundPackXML` +0x48: string-keyed map (StringComp order) of group masks; the port
  member is group_masks_.
- `CZipReader::files_`: the map orders keys with StringComp (the port now uses it too).
  The entry data offset (+0x48 in the port's SZipFileEntry) and the method and uncompressed
  size in the local header are consistent with the listing's node offsets (+0x10 node
  header of 16 bytes plus the 24-byte key string).
- `CZipReader::deletePathFromFilename`: the string ends at +0x10 and starts at +0x14; the
  loop walks backwards from the end.

Still open in this slice:
- EventXMLDef (88a090, 88b104, 88b1fc) and SoundXMLDef (889e98) are loader records that
  are not in the port. The original copies the +0x28 pointer block shallowly and frees it
  in the destructor, so two copies would double-free. Not reproduced.
- LoadXML (88d344) and the VoxSoundPackXML constructors (88ec4c, 88ecc4) are partial: LoadXML
  is a stub, so a pack built from a file is empty. The TinyXML loader belongs with the
  TinyXML category.
- VoxSoundPackXML destructors (88c2cc, 88c36c) use the implicit destructor.
- FileSystemInterface::CloseFile needs the vtable slot +0x18 (not in the port).
- The owner of the FileInterface slots (off_A33EB4..off_A33EC0 through m_IOFunc) is still
  not identified.

## Wave 9 (w9-emitter-slots): driver and decoder vtable slots

Source of truth: `recovered/native/symbols/libDungeonHunter2.so/vtables-001.json`. Its
entries are symbol-relative, so the offsets below are vptr-relative (symbol offset minus 8).
Pure slots have no entry in the base vtable, so their names come from the concrete
overrides and from the emitter call sites.

- `vox::DriverSourceInterface` (emitter `dsp_source_` at +0x110): +0x08 Play, +0x0c Stop,
  +0x10 Pause, +0x14 Reset, +0x18 GetState, +0x1c GetByteOffset, +0x20 SetByteOffset,
  +0x24 NeedData, +0x28 UploadData, +0x2c SetGain, +0x30 SetPitch, +0x34 GetGain, +0x38
  GetPitch, +0x3c Set3DParameter, +0x40 SetDSPParameter, +0x44 Update, +0x48
  AllowBufferReference, +0x4c FreeDisposableData, +0x50 PrintDebug, +0x54 GetBufferCount,
  +0x58 Init, +0x5c Cleanup. The header declares them with empty defaults (the base slots are
  pure in the binary, and driver_test derives a plain source from the base).
- `vox::DriverInterface`: +0x08 Init(void*) and +0x0c Shutdown (named by DriverAndroid only,
  not declared), +0x10 Suspend, +0x14 Resume, +0x18 RampOut, +0x1c RampIn, +0x20 Update,
  +0x24 Set3DParameter, +0x28 SetDSPParameter, +0x2c SetStaticBusRouting, +0x30
  SetDynamicBusRouting, +0x34 SetSFXPresetActive, +0x38 SetOutputMode, +0x3c GetOutputMode,
  +0x40 PrintDebug, +0x44 CreateDriverSource and +0x48 DestroyDriverSource (DriverAndroid).
- `vox::DecoderCursorInterface` (the cursor at emitter +0x114): +0x08 Init, +0x0c Shutdown,
  +0x10 Decode (pure), +0x14 DecodeRef, +0x18 HasData (pure), +0x1c Reset, +0x20
  GetRewindLimit, +0x24 Rewind, +0x28 Seek (pure), +0x2c SetLoop, +0x30 GetStreamCursor,
  +0x34 AllowBufferReference. HasData moved to +0x18 in the header (it was last).
- `vox::DecoderInterface` (the decoder at DataObj +0x3c): +0x08 Init, +0x0c Shutdown, +0x10
  CreateNewCursor, +0x14 DestroyCursor, +0x18 GetType (1 MSWav, 3 MPC8, 4 Native), +0x1c
  GetParam. The header order was GetType, GetParam, CreateNewCursor, DestroyCursor; the
  slots are now commented and reordered to match.
- Call-site arguments in the Hex-Rays output are not reliable: the decompiler prints a
  leftover register as an argument (for example Reset is called with a float). Use the
  vtable names above, not the printed argument lists.

## Wave 9: engine-internal-a (VoxEngine facade, Suspend to SetAutoKillAfterDone)

Queue: 67 facade rows from Suspend/Resume through SetAutoKillAfterDone (the brief said 68; the
queue file holds 67 data rows). Every row is a tail call (B) to a VoxEngineInternal method, or a
null-guarded forward whose no-engine result is 0, -1 or 1 (IsEngineSuspended, IsDone, GetOutputMode).
The arguments pass through unchanged, including the stack arguments of SetRoutingVolume.

Vtable slots used by the facade (VoxEngineInternal, named in voxengine_internal.hpp):
+0x0c Suspend, +0x10 Resume, +0x14 IsSuspended, +0x18 UpdateSources, +0x24 SetGroupGain,
+0x28 SetMasterGain. The facade reads m_internal and calls through the vtable for these six.
All other targets are direct calls.

Decisions:
- SetOutputMode and GetAllEmitters now return the target's int (the original returns it); the
  facade declarations in voxengine.hpp changed from void to int, returning 0 without an engine.
- Partial (5 rows): SetMasterGain and SetGroupGain (the target returns the Mutex unlock result,
  which the void facade drops, as in wave 7); UpdateSourcesThreaded (target UpdateSources is
  skipped); GetDebugInfo (target skipped, DebugChunk layout unknown); SetInteractiveMusicState
  (target skipped).
- No test links the facade yet. voxengine.o references the three skipped targets and EmitterObj
  GetPlayCursor, SetPlayCursor, PrintDebug and Update, so any test that pulls it fails to link.
  Add a null-default test once those land.
## Wave 9 playlists (layouts and decisions)

Layouts (32-bit offsets, from the Hex-Rays bodies and the ARM listings):

- `vox::NativePlaylist`: +0x00 valid, +0x04 field_04 (the reset flag the walk tests),
  +0x08 total repeats, +0x0c current group, +0x10 current element, +0x14 remaining repeats,
  +0x18 previous group, +0x1c previous element, +0x20 saved repeats, +0x24..+0x2c the
  SegmentGroup* vector, +0x30..+0x38 the PlaylistElement* vector (changed in this wave from the
  int32 table).
- `vox::PlaylistElement` (0x14 bytes): +0x00 word 3 of the element info, +0x04 unset (0),
  +0x08 word 4, +0x0c word 5, +0x10 word 6 (the default is 1). The element accessors return the
  element pointer, as the original returns the pointer word.
- `vox::RandomGroupElement` (the record RandomGroup::AddElement stores): +0x00 value (element
  info word 1), +0x04 weight (element info word 7).
- `vox::NativePlaylistsManager`: +0x00 valid, +0x04 field_04, +0x08 count, +0x0c NativePlaylist*
  array.
- `vox::SegmentGroup` vtable slots (vptr-relative, the entry the ARM code calls with `ldr pc,
  [vptr, #n]`). Slot 0x00 D1, 0x04 D0, 0x08 GetGroupElementPosition(), 0x0c
  PeekAtNextGroupElement(GroupPeekMode), 0x10 Reset(int reset_mode), 0x14 SegmentGroup::SetState
  (SegmentGroup&), 0x18 SetToPreviousState(), 0x1c GetState(record), 0x20 SetState(group&),
  0x24 SetState(record). The derived classes fill 0x08 to 0x24 with their own functions
  (`vtables-001.json`, symbol offset + 8). Slot 0x10 has a return-type conflict in the port
  (SequentialGroup::Reset is void, RandomGroup::Reset is int), and slots 0x1c and 0x24 take
  different record types per kind, so the playlist code calls the group functions by the
  group's select mode instead of through SegmentGroup.

Decisions:

- The element table is a `std::vector<PlaylistElement*>`. Each element is a VoxAlloc block owned
  by its playlist (freed by the destructor, copied by the copy constructor).
- Accessors that return an element return `PlaylistElement*` (GetCurrentElement, the two
  GetPlaylistElement overloads, PeekAtNextElement, and the manager's GetPlaylistElement and
  PeekAtNextPlaylistElement). The original returns the element pointer in an int-typed function.
- Group dispatch: AddGroup builds a RandomGroup for a nonzero select mode and a SequentialGroup
  otherwise, so the select mode gives the dynamic type. The walk and state code cast on that
  basis; the calls reach the same functions as the vtable slots.
- Reset calls on each group pass 1 as the reset mode. The Hex-Rays body in the walk hides the
  argument; the ARM listing sets r1 to 1 before each call (0x88202c and 0x882124).
- A RandomGroup element record is copied to a heap RandomGroupElement owned by the group, as the
  original's AddElement copies its two-word argument.
- The NativeSubDecoderState constructor copies the manager argument (manager copy constructor).
  Its scalar defaults stay unreproduced (partial).

Build: `tools/decomp_build.sh host vox-audio` passes 46 of 46 (the 45 tests already on the branch
plus native_playlist_elements_test from this slice). MinGW and Wine
are not installed in this container, so the Windows build was not run.

Still open in this area: VoxNativeSubDecoder and the PCM and IMA ADPCM sub-decoder constructors
(skipped) need NativeChunks, States, AudioSegments, TransitionRules and the TransitionParams
vectors; those types are not ported.

## Wave 9 (w9-emitter-slots): EmitterObj rows

Ledger part: `ledger.parts/w9-emitter-slots.csv` (24 rows: 4 reconstructed, 11 partial, 9 skipped).
New source: `src/w9-emitter-slots/emitter_obj_playback.cpp` (PrintDebug, Update3D, GetPlayCursor,
ProcessNonNativeData). Edited in place: UpdateDSP (`src/emitter_obj_state.cpp`) and CleanUp
(`src/emitter-obj/emitter_obj_dsp.cpp`). Test: `tests/emitter_obj_playback_w9_test.cpp`.

- Emitter layout added (emitter_obj.hpp): play_rate_ +0x20, play_length_ +0x24, decoder_cursor_
  +0x114 (the cursor that feeds dsp_source_), and the buffer ring: buffer_ring_ +0xf4 (was
  owned_buffer_, a void*, now void**), buffer_read_index_ +0x100, buffer_count_ +0x104,
  buffer_chunk_bytes_ +0x108, buffer_fill_ +0x10c. The constructors that write these are not ported.
- UpdateDSP fix: the pending-name path calls source SetDSPParameter(0, name) and returns, so Update
  does not run on that frame. The IDA listing shows r1 = 0 and r2 = the name at the call (+0x40).
- Blocked: SetPlayCursor and the cursor-driven states need the cursor params block (+0x04..+0x13,
  TrackParams). It lives in each cursor class, not in DecoderCursorInterface. Moving it into the
  base would shift the derived classes' own params_ members, so it stays open.
- Blocked: ProcessNativeData needs the byte at +0x145 named and the return of cursor slot +0x24
  (Rewind(int) in the vtable) checked. The pseudocode uses its return value.
- Deviations recorded in the rows: GetPlayCursor and CleanUp unlock or clear where the original
  does not (the pseudocode shows the lock held or the pointers set). ProcessNonNativeData returns 0
  when a pointer or the ring count is missing, where the original would fault.

## Wave 10 (w10-debuginfo): GetDebugInfo rows

Ledger part: `ledger.parts/w10-debuginfo.csv` (4 rows: 2 reconstructed, 2 partial). New sources:
`src/w10-debuginfo/debuginfo_emitter.cpp` (EmitterObj::GetDebugInfo) and
`src/w10-debuginfo/debuginfo_engine.cpp` (VoxEngineInternal::GetDebugInfo). Test:
`tests/debuginfo_w10_test.cpp` (EmitterObj record fields and the DebugInfo defaults).

- DebugInfo (voxengine_types.hpp), 16 bytes: +0x00 data_count (data_objects_ node count, container
  +0x10 = VoxEngineInternal +0x18), +0x04 emitter_count (emitters_ node count at +0x88), +0x08
  playing_count, +0x0c end_marker (always -1). Read locks: data_objects_access_ (+0x54) and
  emitter_access_ (+0xc4). HandlableContainer::Size() added to handlable.hpp for the counts.
- DebugChunk_emitter (emitter_obj.hpp), 0x74 bytes: +0x00 emitter id (int64), +0x08 data id (int64),
  +0x10 position xyz, +0x1c state (state_set_), +0x20 unnamed (EmitterObj +0x38), +0x24 gain,
  +0x28 unnamed (EmitterObj +0x70), +0x2c pitch, +0x30 loop_read_, +0x34 ref count, +0x38 group,
  +0x3c velocity xyz, +0x48 direction xyz, +0x54 param0, +0x58..+0x70 parameters 1..7.
- Open for EmitterObj::GetDebugInfo: the owners of EmitterObj +0x38 and +0x70 are not identified, and
  the cursor's first params word (TrackParams::channels at cursor +0x04) is not reachable from the base
  cursor class. The VoxEngineInternal path has no test because the engine vtable links undefined methods.
- PriorityBankManager::GetDebugInfo stays partial (the unlock result is not returned).

## Wave 10: containers (w10-containers)

Ledger part: `ledger.parts/w10-containers.csv` (11 rows: 9 reconstructed, 2 partial; the
cursor rows C1 and C2 are partial and the playlist container is partial).

Containers (`include/vox-audio/vox/native_containers.hpp`, new):
- `NativeChunks` and `AudioSegments` are the same vector of 24-byte `NativeChunk` records
  (`std::vector<NativeChunk>`). The segment code reads it as the chunk table (`(*chunks_)[i]`).
- `States` is `std::vector<std::int32_t>` (the state ids).
- `TransitionRules` is `std::vector<TransitionRule>` (36-byte records; TransitionRule moved
  here from native_sub_decoder.hpp).
- `TransitionParams` is a 36-byte record of nine words (fields not named).
- The decoder holds `states_`, `segments_` and `rules_` as these vectors. The count words
  (+0x30, +0x48, +0x50) are the vector sizes now, and the Create*Container functions assign the
  vectors. The extra_bytes argument is not kept (the original's trailing bytes).

Layouts:
- `NativeHeaderWords` (the VoxN header words the sub-decoder constructors read, decoder
  offsets): base_offset +0x18, format_word +0x24 (low half the format tag, high half the
  channels), field_0c +0x28, sample_word +0x2c (low half the bytes per sample, high half the
  bits). Stored as `DecoderNative::header_words_`. ParseFile does not fill it yet.
- The sub-decoder constructor argument order follows the mangled name and the cursor call:
  stream, header words, States*, AudioSegments*, the loop lists, TransitionRules*, the
  transition parameter lists, the state-name map and the playlist manager. The header block
  is not the NativeChunks vector; the mangled name used the wrong type for that argument.
- Base constructor slots: +0x04 stream, +0x18 chunks (segments), +0x1c rules, +0x20 states,
  +0x24 transitions, +0x28 names, +0x2c loop lists, +0x30 playlists.
- The three segment records are written as in the pseudocode: play mode 3, 2 and 1 for
  A (+0x98), B (+0xdc) and C (+0x120); state 2, one loop entry with one left, decoding slot -1.
  has_data_ is set (byte +0x16c).

Decisions and differences:
- Format tags: the pseudocode selects PCM on tag 1 and IMA ADPCM on tag 17, and no sub-decoder
  for any other tag. The old comment said "anything else PCM"; the cursor now follows the
  pseudocode.
- Cursor C1 and C2: sub-decoder creation, the playlist copy, the states and the track parameters
  are ported. The cursor is partial only because header_words_ comes from ParseFile.
- NativeSubDecoderState C1 and C2 (0x8860dc, 0x88621c): the scalar defaults match SetStopped,
  so these rows are reconstructed. A null manager gets a default manager.
- The IMA constructor's extra allocations (decode buffers, pending block) are reproduced with
  VoxAlloc. Failures zero the track words, as the LABEL_12 path does.
- CreatePlaylistsContainer (0x872ac8) stays partial: the binary returns the pointer that
  NativePlaylistsManager::Init allocates (void* in the binary, void in the port).

Open:
- ParseFile must fill `DecoderNative::header_words_` (from the fmt chunk and the header block) for
  the cursor and the sub-decoder constructors to get real values. Until then the constructors
  run on zero words and the track parameters come out zero.

Tests: `tests/native_subdecoder_ctor_containers_test.cpp` (PCM and IMA constructors: header
words, the segment records, the IMA buffers and frames per block, and the nine-channel limit).
Host build passes all tests. No MinGW or Wine run in this slice.

## Wave 10: xml slice (w10-xml)

Rows: 9 (ledger.parts/w10-xml.csv). Reconstructed 8, partial 1 (LoadXML, 88d344). Host build
passes 55 of 55 tests (new: w10_xml_load_test, w10_xml_record_copy_test). No MinGW or Wine run.

TinyXML source. The category in this checkout (port/decomp-reconstruction/tinyxml-and-c-libs,
tixml_dh.hpp/.cpp) has only the TiXmlPrinterDH overlay. TiXmlDocument, TiXmlHandle and the parser
are not in the checkout, and the upstream TinyXML 2.5.x sources are not vendored. Decision: a
minimal subset under vox-audio/vendor (include/vox-audio/vendor/tixml_dh.hpp,
src/vendor/tixml_dh/tixml_dh.cpp, namespace vox::tixml) that implements only the calls LoadXML
makes: Parse, Error, FirstChild, ToElement, Attribute, QueryIntAttribute, QueryDoubleAttribute and
NextSiblingElement (any sibling name, as in TinyXML). Text content is skipped. Nothing is linked
across categories.

Loader records (the classes that LoadXML fills, all owned strings, so copies are deep):
- `vox::SoundXMLDef` (68 bytes): uid +0x00, priority +0x04, label +0x08 (string), data file name
  +0x0c (string), loading flags +0x10, format +0x14 (byte, -1 until read), bank +0x15, group +0x16,
  loop +0x17, nine floats +0x18..+0x38 (refdistance, maxdistance, rolloff, basegain, mingainmod,
  maxgainmod, basepitch, minpitchmod, maxpitchmod), custom count +0x3c, custom strings +0x40.
- `vox::EventXMLDef` (44 bytes): uid +0x00, name +0x04, used list (sentinel +0x08), sound uid
  vector +0x10..+0x18, mode +0x1c (0 random, 1 playlist), most-used count +0x1e (min of the first
  params token and the uid count), percent no-sound +0x20 (clamped to 100), sound count +0x22,
  custom count +0x24, custom strings +0x28.
- `vox::GroupXMLDef` (existing): uid +0x00, bus +0x04 (name_), name +0x1c (label_), type +0x34
  (pos3d: y 1, r 2, other 0).
- `vox::BankXMLDef` (40 bytes): uid +0x00, behaviour +0x04, max playbacks +0x08, threshold +0x0c,
  name +0x10.
- `vox::XmlLoadedTables`: the four loader vectors and the custom pointer arrays. The pack keeps it
  in `loaded_` (a shared pointer), because the record tables and the uid map point into its strings.

Changes to existing records: SoundRecordXML::emitter_values_ and EmitterInfoXML::values_ are
float[9] (the loader writes floats). LoadXML returns int (1 when the file was read, 0 otherwise).
VoxSoundPackXML has a declared destructor (88c2cc, 88c36c) and the `loaded_` member.

Decisions:
- A uid that is missing or out of range skips the element. The binary keeps the uid of the
  previous element in a stale variable, and writes out of range without a check.
- A sound with no format leaves the data name empty; with a format and no file name, the data
  name is label + extension (wav 1, ogg 2, mpc 3, vxn 4).
- Groups and banks get size + 1 records (as the binary), events get size records.
- Group masks are added to the existing map and not cleared at the start (the binary does not
  clear the +0x48 map in LoadXML; only the destructor empties it).
- A file that fails to parse returns 1 with the tables cleared (the binary does the same).
- A file size below zero counts as a failed read (the binary would read with a negative size).

Open questions:
- The loader writes the sound priority at +0x04, but the accessors read +0x04 as the emitter uid
  (GetEmitterInfo). The port stores the priority in the record's emitter_uid word, so both readings
  give the same value, but the binary may use the word for something else. Confirm against the
  accessor listing.
- The label at +0x08 of the sound record is an int in the accessor layout (field_08). The label is
  only kept in the loader record and in the uid map, so GetEmitterInfo reports field_08 as 0.
- The loader's default format (-1) and default record uid are read from the conditional checks in
  the pseudocode, not from the default constructor (not in the queue).
- The stale-uid behaviour above is the one place the partial status comes from. Check the
  ARM listing for the uid register before changing it.

## Wave 10 (w10-parsefile): native decoder ParseFile

Source: `ParseFile` 0x8738bc (Hex-Rays, 14 KB; the Trsn call and the Grps block checked against the
ARM listing), `SetImplicitSegmentCues` 0x872cf0 (branch structure checked against the ARM listing),
`CreatePlaylistsContainer` 0x872ac8 (tail call to NativePlaylistsManager::Init). ParseFile and
SetImplicitSegmentCues moved out of decoder_native_cursor.cpp into src/w10-parsefile/.

Layouts (VoxN file, 32-bit offsets):
- Header: magic "VoxN" (0x4E786F56), body size, then the body. Body word 3 (+0x0c) is the decoder's
  base offset (+0x18, `header_words_.base_offset`) and the total file length, so the data after the
  body is total - 16 - body size bytes.
- Chunk ids (little-endian words): Afmt 0x746D6641, Segm 0x6D676553, Cues 0x73657543, Grpe
  0x65707247, Rule 0x656C7552, Plst 0x74736C50, Stat 0x74617453, Trsn 0x6E737254 (bytes 54 72 73 6E),
  Grps 0x73707247. Each chunk is id, size, body. Count-bearing chunks have a count word, then count
  records of (size - 4) / count bytes.
- Chunk advance: a count-bearing chunk ends at start + 12 + record size * count, not at its size.
  Afmt and unknown chunks end at start + 8 + size. A Plst whose manager is invalid advances by 12 only.
- Afmt: the fmt body fills header_words_ format word (+0x24), field_0c (+0x28) and sample word
  (+0x2c); the original then writes 16 at +0x2e, the bits half of the sample word.
- Segment info (NativeChunk, 24 bytes): frame_count at +0x08 is the implicit cue source.
- Cue record: word 1 is the segment index, word 2 (when the record is 12+ bytes) the cue value.
- Trsn record: word 0 is the list index, word 2 (default -1) and byte 12 (default 0) form a
  TransitionParams. The element is 8 bytes (the Trsn loop and the vector growth step by 8), so
  native_containers.hpp's TransitionParams is now {int32 value_, uint8 flag_} (it was 36 bytes).
- Stat record: word 0 is the state id; the NUL-terminated name after it is the map key.
- Plst record: PlaylistInfos (word 0, word 1; word 1 defaults to 1 when the record is shorter).
- Grpe record: PlaylistElementInfos (8 words; word 0 selects the playlist). Grps record: GroupInfos
  (24 bytes; unknown_00 selects the playlist).

Decisions:
- Trsn: the original passes a stack slot to CreateTransitionsContainer that only the Stat case
  writes (the last Stat count). The port passes the last Stat count (0 when there was none).
- NativePlaylistsManager::Init returns the array pointer (src/native_playlist.cpp and the header),
  so CreatePlaylistsContainer can return the allocation result.
- Malformed input returns false where the original would read or write out of range: chunk past the
  data, record too short for the word it needs, index outside its table, null manager, negative count.
  Well-formed files do not reach these.
- Not kept (ParseFile stays partial): header body words at +0x0c..+0x17 other than the base offset,
  the Afmt id and size words (+0x1c, +0x20), and fmt bytes past +0x2f. No ported code reads them yet.

Tests: decoder_native_parse_w10_test builds a VoxN file in memory (Afmt, Segm, Cues, Stat, Rule, Trsn,
Plst, and an unknown chunk) and checks the header words, the cue lists after SetImplicitSegmentCues,
the state table and name map, the transition lists and the playlist count. Host build passes 56 of 56.
No MinGW or Wine run in this slice.

## Wave 10 (w10-dataobj-emitter): DataObj, EmitterObj constructors, emitter creation

Ledger part: `ledger.parts/w10-dataobj-emitter.csv` (21 rows: 12 reconstructed, 9 partial).
New sources: `src/w10-dataobj-emitter/` (emitter_obj_ctor_load.cpp, emitter_obj_update.cpp,
voxengine_create_emitter.cpp). Edited in place: `src/data_obj.cpp`, `src/driver.cpp`,
`src/driver_android.cpp`. Test: `tests/emitter_obj_ctor_test.cpp`.

- DataObj words (see data_obj.hpp): +0x28 channels, +0x2c sample rate, +0x30 bits per sample,
  +0x34 length (frames). The four form a TrackParams block in that order. Duration is
  length / sample rate (float bits, GetDuration). Stream at +0x38, decoder at +0x3c, the emitter
  id list at +0x40 (a list of ids: the original nodes are 16 bytes, two links and the id).
- GetDebugInfo writes DebugChunk_dataSource: id +0x00, stream type +0x08 (stream vptr+0x1c),
  decoder type +0x0c (decoder vptr+0x18), bank +0x10, rate +0x14, channels +0x18, bits +0x1c,
  duration bits +0x20, group +0x24, refcount +0x28. The brief named DebugChunk_emitter for this
  row; the signature takes DebugChunk_dataSource&, so that name is used. The emitter's own
  debug chunk is in the w10-debuginfo part.
- EmitterObj words named this wave: source_gain_ +0x38 and source_pitch_ +0x70 (the values
  Update reads back from the source; the constructors set both to 1.0), decoder_type_ +0x140
  (the decoder GetType stored by the constructors), flag_145_ +0x145, and the buffer ring as
  std::vector<void*> at +0xf4 (begin), +0xf8 (end), +0xfc (capacity).
- Vtable slots used here (vptr-relative): StreamInterface Size +0x10, CreateNewCursor +0x14,
  DestroyCursor +0x18, GetType +0x1c (from the Update and GetDebugInfo listings). The port's
  StreamInterface declares them in another order; the calls go through the names.
  DriverInterface CreateDriverSource +0x44 (params, user, flags) and DestroyDriverSource +0x48
  are now virtual in the base (null and empty). DriverAndroid overrides them as stubs, so the
  creation paths return the null handle on Android until its source is ported.
- One stamp table at VoxEngineInternal +0x550. GetDataObject, CreateEmitter and the emitter
  constructors index the same words (340 + slot in the pseudocode). The earlier separate
  emitter_stamps_ array at the same offset is removed; its users now use data_stamps_.
- Track words: the original reads four words from the cursor (LoadAsync, CreateEmitter,
  Update) or from the decoder cursor's params block (DataObj::Update). The port cursors have
  no params block, so these use the data object's words (same values the cursor was built
  from) or the decoder's GetParam block (as LoadDataSource does). A decoder whose GetParam
  returns null (MSWav, MPC8) leaves the DataObj words unset, so DataObj::Update fails there.
- Deviations: decoder_type_ is 0 when the data is not ready (the original calls GetType on
  null); ShouldDie does not walk the emitter list (the walk has no effect); PrintDebug prints
  nothing, as the binary does.
- Unnamed words still not stored by the constructors: +0x120, +0x124 (1.0), +0x128, +0x12c,
  +0x130 (set to 1 in the 4-argument and 7-argument constructors). Their rows are partial.
- Not tested: the engine creation paths. VoxEngineInternal does not link in a test while
  EmitterObj::SetPlayCursor is declared but undefined in the port.


## Wave 11 (w11-loadxml): LoadXML priority word and the sound uid slot

Source: `VoxSoundPackXML::LoadXML` 0x88d344 (Hex-Rays, IDA listing via decomp_asm.py), accessors
`GetEmitterInfo(int, int&, ...)` 0x889894 and `GetEmitterInfo(int, EmitterInfoXML&)` 0x88993c.

Priority word decision (the Open question above is closed):
- Loader writes: the sound loop calls QueryIntAttribute("priority") and stores the value at
  record +0x04 (asm 0x88d77c to 0x88d7b0, record stride 0x44). The attribute list the loader
  reads has no separate emitter-uid attribute, so +0x04 holds the XML priority.
- Accessors read: both GetEmitterInfo overloads load record +0x04 and report it as their
  emitter uid output (STR to the out parameter). The struct overload copies +0x04 to
  EmitterInfoXML::emitter_uid, the index overload to `int& emitter_uid`.
- The binary is consistent with itself: one word, written as priority and read as emitter uid.
  The port keeps that single word (SoundRecordXML::emitter_uid, written from the priority). The
  side that was misnamed is the record comment, which now says +0x04 is the priority.
  The existing test (w10_xml_load_test) expects emitter_uid == priority, which matches.
- Consequence: the label at +0x08 and the other fields keep their current layout.

Stale uid (sound loop), now ported:
- The sound loop reads uid into one stack slot (var_13C). Only the uid query writes that slot.
  A missing or non-integer uid attribute leaves it unchanged, so the element writes its fields
  into the record of the last uid read (the uid query loop starts at 0x88d6e8 and the store that follows uses the slot as index).
- Port: an element without a uid reuses the last uid read. A leading run of elements without a
  uid is skipped, because the slot is not initialised before the first read (the one value the
  binary takes from the caller's stack). Out-of-range uids are still skipped (the binary writes
  past the array).
- The uid map key is now a copy owned by the loaded tables (XmlLoadedTables::labels). The old
  key pointed into the label string, which a stale element rewrites.
- Test: tests/w11_xml_stale_uid_test.cpp.

Still partial, one missing item: the uid stack slots of the group, bank and event loops. The
group loop reads its uid into var_118 (asm 0x88df04), a slot the sound loop also uses for its
int attributes, so the value before its first element is not established. The bank and event
loops' uid query was not traced (the "uid" string is loaded at 0x88e298 for one of them). Until
they are traced, a group, bank or event without a uid is still skipped.

## Wave 11 (w11-partial-2): partial-row sweep

Re-decided from Hex-Rays and the asm listings (decomp_asm.py). Rows are in ledger.parts/w11-partial-2.csv.

- Reconstructed now (asm checked): EmitterHandle D1/D2/D0, DataHandle copy C1/C2, operator=, D1/D2/D0,
  GetUserData, CreateEmitterAsync, Initialize, AddPriorityBank, GetVoxEngineInternal.
- Decisions:
  - VoxEngineInternal::Initialize (virtual +0x08) returns FileSystemInterface* (the GetInstance result, tail call in the binary).
    CreateDriver is declared at the top of voxengine_internal_lifecycle.cpp; it is defined in files-xml-zip-stream/create_driver.cpp.
  - PriorityBankManager::AddPriorityBank returns the new index, or -1 when the count does not equal the bank count (asm end compare).
    The bank keeps its default values in the -1 case. tests/priority_bank_test.cpp checks index 2.
  - HandlableContainer::SetFirstHandleId (handlable.hpp, one inline setter). The VoxEngineInternal constructor sets 1 on the four containers
    (next-id words at container +0x18: data objects +0x20, pending data +0x40, emitters +0x90, pending emitters +0xb0).
  - The destructor calls FileSystemInterface::DestroyInstance after the driver and before s_voxEngineInternal is cleared.
  - GetData: the binary releases emitter_access_ twice on the null-data path. Kept partial, not reproduced.
  - Mutex::Unlock returns void in the port. SetGroupGain, SetMasterGain, EmitterObj SetGain, SetPitch and Resume return the unlock int in the
    binary. Kept partial until the mutex wrapper returns a result.
- Named open items:
  - Decoder cursor parameter block: the words at +4..+0x10 of the object returned by decoder vtable +0x10 (channels, rate, bits, length).
    Rows 0x86b144, 0x86b694, 0x86c5ec, 0x86ca08 read them; the port cursor has no such block.
  - VoxEngineInternal intrusive list sentinel at +0x43c/+0x440 and words at +0x598 and +0x59c: no owner in the port (rows 0x869a94, 0x869d8c, 0x86be68, 0x86c010, 0x86c02c).
  - Default PriorityBankManager constructor: the binary leaves the bank count at +0 unwritten (rows 0x869858, 0x8698a0).
- Slot names used: driver CreateDriverSource +0x44 and DestroyDriverSource +0x48; source AllowBufferReference +0x48 and GetBufferCount +0x54;
  cursor AllowBufferReference +0x34 (decoder.hpp).
## Wave 11 (w11-partial-4): partial-row sweep
- StreamInterface: the size word of the original base (+0x04) is now a protected `size_` in the
  port's StreamInterface, and Size() is a virtual accessor (0x8886e4). StreamMemoryBuffer and
  StreamCFile use the shared word. Test: tests/w11_stream_size_test.cpp.
- VoxNativeSubDecoderIMAADPCM::DecodeBlock (0x887068) is ported from the Hex-Rays body, with
  the nibble step written out (the same tables as ima_adpcm.cpp). Seek (0x887464) and
  SetDecodingBufferToSegmentPosition (0x887544) are reconstructed on top of it. Test:
  tests/w11_ima_decode_block_test.cpp (checked against ImaAdpcmDecodeBlock on a stereo block).
- Native sub-decoder state constructors and destructors (PCM and IMA ADPCM, 0x886f7c..0x888670)
  are reconstructed now that the base constructor and destructors are ported.
- VoxSetJavaVMC (0x88ee1c): the asm shows the argument passes through unchanged, so the
  pseudocode gap is closed.
- Still partial, with the one missing item named in the ledger: UpdateSegmentsStates and the
  element lookup it needs (0x885740), which blocks DecodeSegment and DecodeCurrentSegmentWithOffset;
  StreamCFile file-name word (owner+0x1c); the DriverAndroid JNI bodies (no JNIEnv type or
  m_updateStartTime/m_dataDuration statics in the port); VoxAlloc_c (needs the 4-argument VoxAlloc).


## Wave 12 (w12-rem-2): int returns from Mutex::Unlock
- Functions that the binary ends with a tail call to Mutex::Unlock (or to AccessController::ReleaseReadAccess, which tail-calls Mutex::Unlock) now return that int. Changed: AccessController::ReleaseReadAccess; EmitterObj::SetGain, SetPitch, Resume, Play, Pause, Stop; VoxEngineInternal::SetGroupGain and SetMasterGain (virtual slots +0x24 and +0x28); VoxEngineInternal::SetUserData(EmitterHandle), SetGain(EmitterHandle), Resume(EmitterHandle), Resume, Pause and Stop (EmitterObj*). The null-emitter path of the EmitterObj* wrappers returns 0, as the binary's SUBS leaves 0 in the result register.
- Callers left void (not changed in this slice): VoxEngine::SetGroupGain, SetMasterGain, SetInteractiveMusicState and the other facade wrappers in src/voxengine.cpp, and the VoxEngineInternal handle wrappers Play, Stop, Pause and SetPitch (EmitterHandle). Their asm was not checked for the tail call in this wave, so their int results are dropped at those points.
- VoxEngineInternal::GetData reproduces the second ReleaseReadAccess on the null-data path (asm 0x869028 and 0x869030). The read count drops once more on that path, as in the binary.
- VoxEngineInternal::SetInteractiveMusicState (0x86764c) is in src/w12-rem-2/voxengine_interactive_music.cpp. Partial: a non-zero data state word makes the binary call a null decoder; the port skips the call.
- Test: tests/w12_rem2_unlock_result_test.cpp checks the int results and the transport state.
## Wave 12 (w12-rem-3): VoxUtils loaders, MPC and native remainders

- VoxEngine::LoadDataSource and LoadDataSourceAsync take (stream_type, stream_arg,
  decoder_type, decoder_arg, group), as VoxEngineInternal does. The listing (asm
  0x86f558, 0x86f3b4, 0x86f5fc) passes a path load as (1, path, format, 0, user) and a RAM
  load as (0, block, format, 0, user). The port's VoxUtils had these arguments shifted;
  voxutils.cpp now uses the listing order. The static facade drops the engine instance.
- ConvertToRawSource (asm 0x86f5a0): the engine is the instance pointer and the loaded
  handle is the argument. The earlier Hex-Rays reading (engine as the argument) was wrong.
- get_stb_vorbis_struct_size (0x876298) returns 0x5a8. Reconstructed as a size query in
  src/w12-rem-3/; the stb_vorbis library itself stays unported (see Decisions).
- Rows still partial name one missing item each in the ledger notes: the owner word of
  StreamCursorInterface (mpc_getsize), the MPC seek register and zero-sample decode
  (DecoderMPC8Cursor::Decode), the ParseFile header words, the ADPCM step table bytes
  (not in the checkout), and the native and group slots listed in the ledger.


## Wave 12 (w12-rem-1): remaining rows (VoxAlloc, VoxEngine facade and threads, EmitterObj, PriorityBank)
- Return values changed to the Mutex::Unlock int (Mutex::Unlock returns 0 in the port, as the binary does):
  VoxEngineInternal::SetMasterGain and SetGroupGain (vtable +0x28, +0x24) now return int; VoxEngineInternal::SetInteractiveMusicState
  (declared int, body still missing at 0x86764c); PriorityBankManager::GetDebugInfo; EmitterObj::SetDSPParameter and
  EmitterObj::GetDebugInfo. VoxEngine::SetInteractiveMusicState returns 0 without an engine (the listing returns m_internal).
- Kept void on purpose: VoxEngine::SetMasterGain, SetGroupGain, UpdateEmittersThreaded, UpdateThreaded, Initialize. Their listings
  return an int* or a double's low word left in r0 (a register leftover). The thread callbacks are void(*)(void*, void*), as the
  VoxThread cast in Initialize shows.
- Found: VoxEngineInternal::UpdateEmitters (0x86db40) returns the AccessController release int on both tails (ReleaseReadAccess and
  ReleaseWriteAccess now return int upstream). The port's UpdateEmitters is still void, so the int is dropped there and in
  VoxEngine::UpdateEmittersThreaded. That is the one item left in those rows.
- Found: CustomMemalign (0x3105b4) ignores its alignment argument and returns CustomAlloc(size). So VoxAlloc with a hint > 0 is the same
  allocation as the hint-less path. The remaining gap in the VoxAlloc rows is the gAssertLevel branches (CustomAlloc 0x310454).
- VoxThread destructor and VoxEngine::Shutdown are now present, so the Shutdown blocker is gone. D1/D2/D0 and DestroyVoxEngine stay
  partial only for VoxEngineInternal::~VoxEngineInternal (0x86be68).
## Wave 12 (w12-rem-4): segment code, driver ring and thread rows

Ledger part: `ledger.parts/w12-rem-4.csv` (24 rows: 1 reconstructed, 19 partial, 4 skipped).

Layouts confirmed from the segment pseudocode (VoxNativeSubDecoder, offsets as in the wave 9 notes):
- this[72] (+0x120) is segments_[2].chunk_index; this[75] (+0x12c) is segments_[2].sample_position;
  this[79] (+0x13c) is segments_[2].entries_left; the byte at +0x160 is segments_[2].reset_pending.
- this[33] (+0x84) is current_element_.field_0c_; this[89] (+0x164) is next_event_.
- Loop lists: the 12-byte records behind loop_lists_ are vector<int> objects. Word [2] and word
  [1] of the list are read on the peek path (next_event_).
- The state list (*states_)[field_3c_] is the playlist index; states[index] is also written to
  segments_[2].chunk_index by SetState.

Decisions:
- Division by a zero divisor returns 0 (the existing __aeabi_idiv decision). GetNbAvailableSamples
  is reconstructed on that basis; its zero buffer_bytes_ case is tested.
- UpdateSegmentsStates, InterpretTransitionRule and SetState are now ported with their
  playlist lookups. UpdateSegmentsStates returns the current element index as an int.
- Void port functions that drop an int or float from the binary (InterpretTransitionRule, the
  Init and FreeDisposableData Unlock results, _FillBuffer's float) stay partial. The base virtual
  slots +0x4c and +0x58 are void, so the derived return types cannot change without a base
  change, which needs a decision by the integrator.
- VoxThread priority and GetCurThreadId follow pthread on POSIX builds. Windows keeps the
  thread-id hash and skips the priority step (no equivalent in std::thread).

Tests:
- `tests/w12_get_nb_available_zero_bytes_test.cpp` (new): zero buffer_bytes_ gives -1 for a free ring and 0 for a ready buffer.
- `tests/native_subdecoder_base_test.cpp`: the SetState(int) check now sets field_38 to 0 and a state list, because UpdateSegmentsStates reads the playlist manager (the fixture has none).
Host build passes all 65 tests. No MinGW or Wine run in this slice.


## Wave 13 (w13-d1): stream owner word and the cursor parameter block

- `vox::StreamCursorInterface` now keeps the owner word at +0x04 (`owner_stream_`, read through
  `OwnerStream()`). The memory-buffer and file-backed cursors set it in their constructors.
  `mpc_getsize` reads it and returns the owner's Size (slot +0x10), so the row is reconstructed.
- The cursor parameter block (+0x04..+0x10 of the cursor) is still not in the port's
  DecoderCursorInterface. LoadDataSource, ConvertToRawSource, CreateEmitter, the EmitterObj
  cursor overloads and GetDebugInfo name it as the missing item. LoadDataSource no longer
  dereferences a null GetParam result.
- KillEmitter: the driver call at +0x48 takes the driver as its only argument, so it is not the
  port's DestroyDriverSource (which takes a source). Left partial with the three named items.
## Wave 13 (w13-c): layout gaps in VoxEngineInternal, PriorityBankManager and RandomGroup

Rows are in ledger.parts/w13-c.csv. Offsets come from the Hex-Rays writes and reads. A scan of every
Hex-Rays body for the member indices 271, 272, 339, 356 to 359 (+0x43c, +0x440, +0x54c, +0x590 to +0x598)
finds only the VoxEngineInternal constructors and destructors as writers and readers of +0x43c, +0x440,
+0x598 and +0x59c. Other members used by the engine: +0x590 (next data slot) and +0x594 (suspend count).
- VoxEngineInternal intrusive list sentinel: list_head_ at +0x43c and list_tail_ at +0x440 (VoxListNode,
  next word at node +0x00). The original keeps the sentinel's own address in both words when empty; the
  port uses nullptr for the empty list. No code in the binary links a node in.
- VoxEngineInternal +0x598: side_buffer_, freed with VoxFree in the destructor when non-null (between
  FileSystemInterface::DestroyInstance and the s_voxEngineInternal clear). +0x59c: side_word_, zeroed by the
  constructor, never read.
- PriorityBankManager bank count word at +0 (bank_count_): the default constructor (0x869858) does not write
  it (asm). The member has no initializer now; the int constructor sets it.
- RandomGroup: element count +0x38, current +0x44, cycle remaining +0x4c, prior index +0x50 and prior cycle
  remaining +0x54 have no initializer in the header. The two-argument constructor (0x881ad0) does not write
  them, and NativePlaylist::AddGroup (0x883c04) hands it VoxAlloc storage. The default constructor and the
  copy constructor set all of them.
- Open item kept partial: RandomGroup::SetToPreviousState (0x883404), reinsert with an empty removed list
  (see the ledger note).
- VoxEngine D1 (0x862990) and DestroyVoxEngine (0x8628f8) are reconstructed now that the VoxEngineInternal
  destructor is complete. The D0 wrapper of VoxEngine (0x862a18) and D2 (0x862a34) are not in this slice.

## Wave 13 (w13-b): cursor parameter block, VoxN header block, ParseFile header words

Ledger part: `ledger.parts/w13-b.csv` (12 rows: 4 reconstructed, 6 partial, 2 skipped; the FUN_ row stays skipped).

Layouts (decoder-relative offsets, as the listings write them):
- Cursor parameter block: DecoderCursorInterface now holds `params_` (TrackParams) at +0x04..+0x13, the
  block the listings read as channels +0x04, sample_rate +0x08 (renamed from unknown_08; SetPlayCursor and the
  native capacity use it), bits +0x0c and length +0x10. Every cursor class inherits it and its own duplicate
  copy is gone (DecoderRawCursor, DecoderNativeCursor, DecoderMSWavCursor, DecoderMPC8Cursor,
  DecoderStbVorbisCursor; wave 13 cluster B). `DecoderCursorInterface::GetTrackParams()` is the public read.
- VoxN header block: `NativeHeaderWords` covers decoder +0x04 (magic), +0x08 (body size), +0x0c..+0x17
  (body words 0..2, `name_words`), +0x18 (`base_offset`, body word 3), +0x1c (`afmt_id`, "Afmt"), +0x20
  (`afmt_size`), +0x24 (`format_word`), +0x28 (`field_0c`), +0x2c (`sample_word`; ParseFile sets the
  halfword at +0x2e to 16), and `fmt_tail` for the fmt bytes from +0x30 on (fmt body bytes past 12).
  The listings write the block at cursor +0x20 = decoder +0x04.
- Source slot names used by SetPlayCursor are the wave 9 names (Reset +0x14, SetByteOffset +0x20), and the
  decoder cursor's Seek is +0x28. The data object is EmitterObj::data_ (+0x118).

Decisions:
- DataObj::Update copies the track words from the decoder cursor in all paths (the listing does this
  in case 0, case 1 and case 2). The GetParam read is gone, so the wave 11 partial note no longer applies.
- EmitterObj::SetPlayCursor returns the Mutex::Unlock int, as the listing does. Its caller
  (VoxEngineInternal::SetPlayCursor) ignores it, so no caller changed.
- ApplyTransitionRule returns void. Its listing returns an int, but the only caller
  (UpdateSegmentsStates, 0x885740) does not read the return value.
- ParseFile keeps state_count = 0 when no Stat chunk precedes Trsn. The listing reads an uninitialised stack
  word there; that is the one item left in the ParseFile row.

Tests: `tests/decoder_native_header_w13_test.cpp` builds a VoxN file with an Afmt chunk of 24 bytes and checks
the header block (magic, body size, name words, base offset, Afmt id and size, format, field_0c, sample word
and the 12 fmt tail bytes). Host build passes 67 of 67. No MinGW or Wine run in this slice.


## Wave 13 (w13-d2): file close, stream name word, Set3D case

Ledger part: `ledger.parts/w13-d2.csv` (22 rows: 4 reconstructed, 14 partial, 4 skipped).

Decisions from the binary:
- FileInterface vtable (listing, `vtable for vox::FileInterface`, 36 bytes): +0x00 D1, +0x04 D0,
  +0x08 Read, +0x0c Seek, +0x10 Tell, +0x14 Write, +0x18 GetFilePtr. GetFilePtr is virtual in the
  port now. CloseFile (0x893ff0) calls it through slot +0x18 and passes a nonzero result to the
  close function (off_A33EC0, g_file_close). CloseFile returns int (-1 for null, else 0).
- StreamCFile string words: the path string is the STLport layout at owner+0x08. +0x18 is _M_finish
  and +0x1c is the data start (the C string). _M_assign (0x888b70) writes the characters at +0x1c and
  moves +0x18. StreamCFile::Init (0x888a60) and StreamCFileCursor::Init (0x888728) pass +0x1c to
  OpenFile with mode 6, on fs at +0x20 (asm checks). The port's path_.c_str() is that pointer. The
  "open question" about +0x1c is closed; the port's std::string stays at +0x08 in the comment.
- 0x890364 (FUN_008a0364) is not a standalone function. It is jump-table case 3 of
  DriverCallbackInterface::_Set3DParameter (IDA loc_890364). The port's switch case 3 (listener
  position) is the same copy.
- RandomGroup C1 (0x881b40) writes the vptr, +0x24..+0x2c, the sentinel (+0x30, +0x34), +0x3c,
  +0x40, +0x48 and +0x58 only. +0x38, +0x44, +0x50 and +0x54 keep no binary value.
- RandomGroup::SetState(RandomGroup&) (0x8834f0): an empty removed list makes the original read the
  sentinel's +0x08 word (this+0x38) as an element pointer. Still partial for that reason.

Still partial, one named item each: DecodeBlock (IMA tables at .rodata 0x911a24 and 0x911a14, not
labelled in the listing), UpdateCurrentSegmentState (element branch), DecodeSegment and
DecodeCurrentSegmentWithOffset (UpdateSegmentsStates 0x885740), LoadXML (group, bank and event uid
slots), the four FillBuffer mixers (ramp hand-off at a buffer boundary, not checked against asm),
GetCurThreadId and the VoxThread constructors (Windows value and Windows priority step).

Tests: `tests/w13_close_file_test.cpp` (null gives -1, handle goes to the close function, no handle
does not call it). Host build: 67 tests, all pass.

## Wave 13 (w13-a): base virtuals and facade setters that drop an int
Ledger part: `ledger.parts/w13-a.csv` (13 rows: 7 reconstructed, 6 partial).

Decisions:
- Driver source base slots. `DriverSourceInterface` +0x4c (FreeDisposableData, 0x88fcd8) is `BX LR` in the
  binary, with no result set. The port's base now returns int 0 so that the override
  `DriverCallbackSourceInterface::FreeDisposableData` keeps the Mutex::Unlock int. `DriverSourceInterface` +0x58
  (Init) has no base body in the binary; the base returns int 0 for the same reason. The derived Init
  (0x893108) and FreeDisposableData (0x89071c) return `mutex_.Unlock()`. `DriverAndroidSource`'s constructor
  calls Init and discards the result, as the constructor (0x88fbac) does.
- Facade setters. `VoxEngine::SetMasterGain`, `SetGroupGain`, `SetDSPEmitterParameter` and `UpdateEmittersThreaded`
  (instance) return the int of their vtable or engine call; without an engine they return 0. The listing's
  null-path value is an address or the this pointer (register leftovers) and has no int form.
  `VoxEngineInternal::SetDSPEmitterParameter` returns the ReleaseReadAccess int (the EmitterObj int is dropped
  by a plain BL in the listing, 0x8676d8).
- Release and update chain. `AccessController::ReleaseWriteAccess` (0x893480) tail-calls Mutex::Unlock and
  returns its int. `VoxEngineInternal::UpdateEmitters` (0x86db40) returns the release int of the last
  lock it took; `UpdateThreaded` (0x862cf0) returns the emitters update int.
- Thread entry points stay void: the static `VoxEngine::UpdateEmittersThreaded(void*, void*)` (the 0x862d0c
  thunk) drops the int; it is the `void(*)(void*,void*)` the thread takes.
- `RandomGroup::AddElement` (0x8836b0) copies the element into a group-owned block (the caller passes a stack
  record, asm 0x8838c4). The element count, the exclusion window (when the raw window is -1) and the total
  weight go up by the listing's rules. The random group test sets the exclusion window to 0 after its adds,
  because its scenario was written for that value.
- `_FillBuffer` (0x890548) stays void. Its float result is a register leftover that FillBuffer (0x8906a0)
  never reads.

Still partial in this slice (one named item each): Init (uninitialised template word), EmitterObj::SetDSPParameter
(null value path), UpdateSegmentsStates (loop-list length), InterpretTransitionRule (pointer-valued return),
SetState(int) (transition-table lookup), UpdateEmittersThreaded (stand-in clock), Initialize (start-time int).

Callers outside this slice that ignore the new int results: VoxSoundManager (gameplay), and the facade wrappers in
voxengine.cpp. Rows elsewhere whose notes say a result is dropped (ReleaseWriteAccess, UpdateEmitters,
VoxEngineInternal::SetDSPEmitterParameter, VoxEngine::SetDSPEmitterParameter) now return the int; their
ledger rows belong to other slices and were not re-ledgered here.

## Wave 13 (w13-cluster-b): the cursor parameter block, the DriverInterface slot order, KillEmitter

This batch closes the four rows that named "the decoder cursor parameter block" as their missing item
(0x86b144, 0x86b694, 0x86ca08 and, through the cursor, 0x86e160), plus 0x86764c.

Cursor parameter block, proved from the binary (this is the layout the four rows needed):
- Word order at the cursor: +0x04 channels, +0x08 sample rate, +0x0c bits per sample, +0x10 frames.
  VoxEngineInternal::LoadDataSource reads exactly that order after `decoder CreateNewCursor` (asm
  0x86b24c: `LDR R12,[R3,#0x10]; LDR R11,[R3,#4]; LDR R12,[R3,#0xC]; LDR R3,[R3,#8]`), stores it at
  DataObj +0x34 / +0x28 / +0x30 / +0x2c, and the field names follow those stores.
- DecoderMSWavCursor's constructor fills the same words (asm 0x870ac8, `STR R3,[R4,#4]` ..
  `STR R0,[R4,#0x10]`) by copying sub-decoder +0x10/+0x14/+0x18/+0x1c, so +0x08 is the WAV sample
  rate. VoxNativeSubDecoder::GetTrackParams (0x884438) returns {short +0x0a, int +0x0c, short +0x12, 0},
  which names the same four fields.
- The port now has one block, DecoderCursorInterface::params_, and every concrete cursor writes it:
  DecoderMSWavCursor (from the sub-decoder), DecoderMPC8Cursor (from the demuxer info), DecoderRawCursor
  (from GetParam), DecoderNativeCursor (from the sub-decoder) and DecoderStbVorbisCursor (from
  stb_vorbis). The duplicate members each of them declared at the same offsets were removed; a duplicate
  would shadow the inherited block, so the engine's read would have seen zeros.
- `TrackParams::unknown_08` is `sample_rate` now, and `length` counts frames.

DriverInterface vtable order (this is what the KillEmitter row was really blocked on):
- The binary's `_ZTVN3vox15DriverInterfaceE` (0x993b60, 84 bytes) and `_ZTVN3vox13DriverAndroidE`
  (0x993a98) give: +0x08 Init, +0x0c Shutdown, +0x10 Suspend, +0x14 Resume, +0x18 RampOut, +0x1c RampIn,
  +0x20 Update, +0x24 Set3DParameter, +0x28 SetDSPParameter, +0x2c SetStaticBusRouting,
  +0x30 SetDynamicBusRouting, +0x34 SetSFXPresetActive, +0x38 SetOutputMode, +0x3c GetOutputMode,
  +0x40 PrintDebug, +0x44 CreateDriverSource, +0x48 DestroyDriverSource, +0x4c FillBuffer. The base
  vtable leaves Init, Shutdown, Suspend, Resume, Set3DParameter, PrintDebug, CreateDriverSource,
  DestroyDriverSource, FillBuffer null.
- The port's header had a different order (PrintDebug at +0x24, CreateDriverSource +0x44 and
  DestroyDriverSource +0x48 by declaration order), so every virtual call from the engine landed one or
  more slots late: KillEmitter's slot +0x48 call reached DriverAndroid::DestroyDriverSource, and
  Update3D's slot +0x24 reached Set3DParameter only by accident of the old order. The header now declares
  the methods in the binary's order, and `tests/w13_driver_slots_test.cpp` walks a real vtable and checks
  that each engine call reaches its own override.
- KillEmitter 0x86e190-0x86e1b4: when the emitter's source word (+0x110, dsp_source_) and the engine's
  driver (+0x54c) are both non-null, the driver's slot +0x48 is called with the driver as its only
  argument. In the binary's vtable that slot is `DriverAndroid::PrintDebug` (0x88ee6c, empty), not
  DestroyDriverSource. The port makes that call now.
- DriverAndroid needs Suspend, Resume, Set3DParameter, FillBuffer and PrintDebug because the binary's
  DriverAndroid derives from DriverCallbackInterface (which defines +0x24, +0x40 and +0x4c and forwards
  +0x10/+0x14 to the mix) and the port's DriverAndroid still derives from DriverInterface alone. It holds
  a DriverCallbackInterface member and forwards the first four; Init also calls
  DriverCallbackInterface::Init and SetDefaultParameter around _InitAT (asm 0x88f9a0). Finishing that
  inheritance is what would remove the member and the forwarders.
- Signature deviation kept: the binary's slot is `CreateDriverSource(void*, void*, int)`
  (`_ZN3vox13DriverAndroid18CreateDriverSourceEPvS1_i`, 0x88fbe8, which passes the two pointers to
  DriverAndroidSource); the port keeps the named `(const std::int32_t*, void*, int)` form the emitters
  call. The slot is the same position, the parameter spelling differs.
- DriverSourceInterface has the same kind of mismatch (the binary's slots +0x10..+0x44 are pure in the
  base and its PrintDebug is +0x58; the port's base is concrete at +0x08..+0x40), and its source slot
  +0x54 is GetBufferCount, not the port's +0x54. Not fixed here: it is a separate row family.

Deviations named in the rows:
- LoadDataSource and ConvertToRawSource read the block through GetTrackParams and guard a null cursor
  where the binary calls the destroy slot through null (its own asm shows the path, 0x86b3d0/0x86b918);
  ConvertToRawSource also releases the read access on the paths where the binary's asm releases nothing.
- CreateEmitter's chunk arithmetic now matches the original bit for bit: the buffer-reference branch is
  `bits * length / 8` (asm 0x86cdb0), the other branch is
  `ceil(channels * bits / 8) * 150 * rate / 1000` (the ARM divide roundings at 0x86cb18-0x86cb50, where
  the add-then-shift is a ceiling), and the chunk is then rounded down by
  `chunk % ((channels * bits) / 8)` (0x86cc24). The emitter gets the rounded value.
- SetInteractiveMusicState: the binary builds a null decoder when the data object's state word (+0x50) is
  not 0 and calls its GetType slot on it (asm 0x867680-0x8676a4); the port skips the test on that path.

Test: `tests/w13_driver_slots_test.cpp` (every engine-call slot reaches its own override, and the base
defaults). Files touched: decoder.hpp, decoder_raw.hpp/.cpp, decoder_mswav_cursor.hpp,
decoder_stb_vorbis.hpp/.cpp, decoder_mpc8.hpp, decoder_mpc8_cursor_io.cpp, decoder_native_cursor.cpp,
native_sub_decoder.cpp, data_obj.cpp, driver.hpp/.cpp, driver_android.hpp/.cpp, voxengine_internal_loading.cpp,
voxengine_create_emitter.cpp, update_emitters_kill.cpp, voxengine_interactive_music.cpp and the tests that
name the renamed words.
