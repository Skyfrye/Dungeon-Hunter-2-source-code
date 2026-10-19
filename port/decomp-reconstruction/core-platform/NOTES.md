# core-platform notes

## Status

431 ledger rows (213 reconstructed, 102 partial, 116 skipped). 248 queue rows remain:
Console (43) and `<global>` (205: the Java/JNI helpers, gameswf and Box2D code, FUN_*
stubs and scene-graph helpers, not yet read in detail).
Host and Windows (MinGW under Wine) builds pass with 24 of 24 tests.

Wave 3 added 207 rows (224 at the start of the wave). Finished in this wave: the slim
XML parser and writer, the lc_api, utf, touch (iPhone and PS3), vorbis, stream and
allocator groups, PerfCounters, the FileSystemBase and FileSystemWin32 remainder,
GCSingleton, Array2d, rss, and the ADevice and _JNIEnv rows (skipped as Android JNI).

## Layouts inferred

- `TimerUtil`: `unsigned remaining_` at +0x00, `bool paused_` at +0x04. The
  constructor sets paused, `Start` clears the flag and stores the duration,
  `Update` subtracts `Application::GetDt()` and clamps at zero.
- `FsFileHandle` (gameswf file callbacks): `size_` at +0x4, `pos_` at +0x8.
  Slot +0x0 is never read by these callbacks. Partial until a caller confirms it.
- `Device::Resolution`: width 960 at +0x0, height 640 at +0x4 (from
  `GetScreenResolution`).
- `ISerializable`: polymorphic base, Serialize/Deserialize are empty.

## Decisions

- Allocators keep malloc/free. Out-of-memory with assert level 2 calls
  `abort()` where the original writes to address 0. `CMutex` for the memory
  mutex is `std::mutex`.
- Tagged global `operator new/delete` overloads (glitch hint, swf MemHint, and
  MemoryHintState) are defined in `src/memory.cpp` and declared in `memory.hpp`.
  They are extra overloads, not replacements of the default operators.
- `sys::printNoFormat` passes the text as `"%s"`, not as a printf format string
  (the original's `printf(text)` misbehaves on '%'). Marked partial.
- Stand-in globals and functions (`ApplicationGetDt`, `DeviceFeatureFlags`,
  `SHARP_DEVICES`, `HTC_DEVICES`, `Is_In_Multiplayer_Mode`) are declared in
  `deps/application.hpp`; each test provides its own definition. Owned by the
  engine and game categories.

## Open questions

- `ConfigFile::XOR` and `ConfigFile::Decode`: the XOR body is a tail call the
  decompiler could not follow; Decode needs the key and obfuscation tables
  (`INTERNAL_KEY_INDEX`, `PARAMS`). Both skipped.
- `FileSystemBase::decodeObfuscatedData`: the decompiled signature shows three
  arguments, but the mangled name has four. Partial.
- `strrstr`: the original tail-calls an unrecovered routine for non-empty
  needles. Implemented as last-occurrence search, unverified. Partial.
- `StrToObj(vector<Point3D<float>>&)`: the original only logs a debug line;
  replaced with stdout. Partial.
- `Color255To01`, `DBG_GetLoadingStepName`, `GetPreferredLanguages`: not
  recovered (tail call to `__aeabi_fdiv`, a string table, a locale table).
- `tolower` is the Android libc function; not rebuilt.
- `threadfun2/3` wrap Savegame calls from another category; skipped.
- `IStreamBase`, `CFileSystem` and the Savegame lookups are not declared
  locally. The constructors/destructors that chain into the glitch base are
  skipped. The `FileSystemBase` existence, path and create checks are partial
  stdio stand-ins (see the wave 3 section).

## FileSystemWin32 (added in the second pass)

- Member layout: root `+0x2c`, copy of RES_PATH `+0x130`, resources `+0x234`,
  data `+0x338`, savefiles `+0x43c`. Each buffer is 0x104 bytes (the original's
  paths are `char[260]`). The earlier header assumed 0x208 and was corrected.
- Files are opened with stdio, not glitch::io::CFileSystem. Open modes are
  inferred: read-only is "rb", a write handle is "wb", and readwrite is "r+b".
- `_FileHandle` read/peek decode the first four bytes when the obfuscated flag
  (`+0x24` of the original file object) is set, using FileSystemBase's decoder.
- `RES_PATH` is a stand-in global (`"./"`) defined in filesystem_win32.cpp.
  The platform layer should own it at integration time.
- Not reconstructed: the wide-char `makeFullPath` overload, the uncompiled-data
  path in `openFile`, the trace-switch logging in delete/backup, and the Savegame
  flush in `openSavefile`. `getFiles` uses `<filesystem>` instead of the Win32
  finder.

## Wave 3 layouts and decisions

- Slim XML (`slim_xml.hpp`): `name_` at +0x10 (element name or comment body),
  `value_` at +0x28 (element text), `type_` at +0x30, attribute list at +0x34,
  `parent_` at +0x3c, child list at +0x40 (both lists are sentinel lists in the
  original). Attributes are 0x30 bytes; their member offsets are inferred.
  `XmlDocument` lives in `slim_xml.hpp`; `slim_text.hpp` keeps only the UTF-8 helpers.
  `loadFromStream` and `save` stay the original's unsupported stubs.
- Slim writer: one node per line, tab indent per depth, `/>` for an empty
  element, a comment as `<!--body-->`. The original's exact punctuation and line
  ends are not all recoverable, so this layout is partial. Comment search in the
  parser is bounded to the buffer.
- Slim parser: closing tags are not compared with the open element's name (the
  listing does not show a name check). The element text is taken from the text
  before a closing tag only when the element has no children.
- PerfCounters (`perf_counters.hpp`): `time_` at +0x0, history vector at +0x8,
  entry list at +0x14, node block pointer at +0x1c. `CounterEntry`: name at +0x10,
  `value_` at +0x18, `extra1_` at +0x1c, `extra2_` at +0x20, history vector at
  +0x24. Counters are created by code outside this unit; `AddEntry` is a test hook.
- `Array2d<T>` (`array2d.hpp`): `minX_` at +0x0, `minY_` at +0x4, `width_` at
  +0x8, rows in a deque of deques (outer index y, inner index x). The original is
  instantiated for `rnd::Tile*`; the template is generic here.
- `GCSingleton<T>` (`gc_singleton.hpp`): static `m_instance`. `GetInstance`
  allocates with `CustomAlloc`, then placement-constructs. The block is `sizeof(T)`
  (the original uses 0x7c for GameCenter).
- `rss` is a `std::vector<channel>`. `channel::read` belongs to another category;
  the stand-in in `rss.cpp` does nothing.
- `FileSystemBase`: `formatFilePath` copies the path (the separator rewrite is in
  `FileSystemWin32`). `doesFileExists`, `doesResourceExists` and
  `doesSavefileExists` are stdio existence checks. `createAndOpenFile` adds the
  RES_PATH prefix unless the name has `.config` or `.glsl` or starts with
  `/sdcard/`, then creates the file with stdio.
- `FileSystemWin32::closeFile` deletes the stream: vtable slot +0x4 of
  IFileStream is the deleting destructor (see `deps/io_stream.hpp`).
- Stand-ins in `deps/`: `debug_switches.hpp` (`DebugSwitches`, all switches off by
  default), `io_stream.hpp` (`IFileStream`), `game_center.hpp` (`GameCenter`).
- Skipped: the `_JNIEnv` function-table wrappers and the ADevice JNI calls
  (Android only; the Windows build reads device facts through `Device`), three
  `switchD_*` case labels (jump-table entries, not functions), and
  `TouchScreenBase::isRegionPressed` (the return value is a float product whose
  operands are not visible in the pseudocode).
- Stream operators (`stream_ops.cpp`) read and write values separated by one
  character, assumed to be ','. The separator literal is not recoverable.
- Allocators: `CustomFree` (0x310440) is a helper; `CustomRealloc` returns the new
  block; `CustomMemalign` and `internal_malloc_aligned` return `malloc` results.
- `lc_api.cpp`: the LC_* functions whose listing is a bare return are empty
  stubs. `LC_API_ITOA` is partial (least significant digit only).

## Still open (core-platform)

- Console (43): its `_setMenu*` builders call the menu and event system, which is
  not in this tree. `Toggle`, `_addToList`, `_getMaxNumberOfItem` and the small
  setters are the feasible next step.
- `<global>` (205): not read in detail in this wave.
- `isRegionPressed` (0x33aebc): skipped; needs the ARM listing.
- Partial bodies to revisit: the FileSystemBase checks (they need the derived
  class's virtuals), `Array2d` (the deque map), the PerfCounters node block, and
  the GCSingleton block size.

## TouchScreenBase layout (inferred from the decompiled handlers)

- Slot records are 0x30 bytes, at index i: `+0x00` mark (written as 0/1/2 by the
  handlers of slot i-1; the original writes one record past the touched slot),
  `+0x08` begin point, `+0x0c` current point, `+0x10` previous point, `+0x18`
  double time of the last sample, `+0x20` valid, `+0x24` swipe, `+0x28` touched,
  `+0x2c` id. Nine records are kept because the handlers write slot i+1.
- `+0x188` double `time_now_` (set by `update`), `+0x190` active count,
  `+0x194` the queue vector (16 entries of 12 bytes: type, x, y, id), `+0x1a0`
  head, `+0x1a4` tail, `+0x1a8` orientation (2 or 3 mirrors X), `+0x1ac`/`+0x1ae`
  width and height, `+0x1b0` float scale (1.0).
- Queue type values: 0 began, 1 moved, 2 ended (cancelled also uses 2).
- Vtable (from `decomp_vtable.py`): +0x8..+0x14 are the four bounds (pure in the
  base, supplied by TouchScreenWin32), +0x18/+0x1c the getDimension overloads,
  +0x20..+0x2c the touch handlers, +0x50 hasTouch.
- `Rct<short>` and `glitch::core::rect<float>` are stand-ins in deps/. The
  original `Rct` begins with a vtable pointer that the stand-in omits.

## TouchScreenWin32 notes

- Base class is now `TouchScreenBase`. The `+0x1b4` secondary interface vtable
  (an event receiver) is not recovered; it is a placeholder member.
- `onEvent` maps mouse event codes 0/3/6 to began/ended/moved. The original
  calls `touchBegan` with two arguments; the id is passed as 0 here.

## Touch decisions and open items

- `isRegionPressed` (0x33aebc) is not implemented. Its pseudocode mixes the rect
  argument with constants and returns a float from a tail call, so it needs the
  ARM listing before it can be rebuilt.
- `getTouchPoint` and `getFirstTouchPoint` return the current point and keep
  partial status. Their null-path check has not been checked against the listing.
- `touchEnded` (0x33aeb8) is a 4-byte ELF symbol but its decompiled body is
  complete and identical to `touchCancelled`. Marked partial.
- Tests live in `tests/touch_screen_test.cpp` (queue order, coalescing, swipe,
  displacement, region queries, timeout release, id list).

## Hex-Rays re-run (partial rows)

The 102 partial rows were re-read from the Hex-Rays export; the IDA listing
(`tools/decomp_asm.py`) was used where Hex-Rays was ambiguous. 47 rows became
`reconstructed`; 55 stay `partial` (ledger notes give the reason per address). No
rows were skipped. Host and Windows (MinGW under Wine) builds pass with 24 of 24 tests.

Corrections found on the way (the earlier bodies were wrong, not just partial):

- `AccelerometerBase`: `clear` seeds the min/max fields from z; `_calcAngles` and
  `moved` are the atan2 and min/max logic; the field offsets are in the header.
- `TouchScreenBase::getFirstTouchPoint` returns the begin point (+0x8).
- `TouchScreenIPhone` handlers map the trailing `long` touch id through `getID`
  and pass that slot on (the earlier code used the wrong argument).
- `CustomAlloc` (the 4-argument form) is a thunk to the one-argument form.
- `Color255To01` divides all three components and returns Z.
- `strrstr` is the backward scan (last occurrence).
- `FileSystemWin32::_createHandle` strips "./" from the directory, not the name.
- `FileSystemWin32` ctor zeroes the five 0x104-byte path buffers.
- `FileSystemBase::decodeObfuscatedData` is static with four parameters (the fourth
  is unused); the byte count is clamped as an unsigned compare.
- `LC_API_ITOA` returns `char*` and writes every digit, then reverses.
- `LC_API_GET_RANDOM` returns `int`; it reproduces POSIX srand48/lrand48 (checked
  against glibc) seeded by time, plus the signed-byte sum of the name.
- `ADevice::currentTime` returns the 32-bit millisecond count as `int`.
- `isFileNewerThan` is empty and returns nothing.
- `UTF8ToUnicode_Old` / `_OldLC` had no definition in the tree; they are now a
  transliteration of the listing (shared helper in `utf_text.cpp`).
- `vector<Point3D<float>>` output separates elements with ';' (the literal is at
  0x8be4a0 in the library image).

Still partial, by reason:

- Separators the listing passes in a clobbered register (`vector3d<float>`,
  `vector3d<int>`, `SColor`, and the element separators of `Point3D<float>`): the
  text is not recoverable.
- Glitch file I/O (CFile, CFileSystem, directory listing, savefile jobs) and the
  virtual-slot calls of the derived file system: `FileSystemBase` existence checks,
  `getAbsolutePath`, `createAndOpenFile`, `ApplyFilenameHacks`, the `_FileHandle`
  read/peek/ctors/dtors, `backupSavefile`, `deleteSavefile`, `formatFilePath`,
  `openSavefile` (no FlushJobs), `openFile` (no uncompiled-data branch),
  `getFiles`, `getFilesMatching`.
- Std-container internals: `Array2d` (three rows; deque map), `PerfCounters`
  (node block, `GetEntry` creates missing entries in the listing and the
  reconstruction returns nullptr, `SetCounterValue` is gated by the
  EnablePerfCounters switch in the listing), `GCSingleton` (CustomAlloc(0x7C)
  before the null check).
- Platform or other-category calls: `appDebugLog` (logcat), `sys::printNoFormat`
  and the `print` family (`%s` instead of the original format string), the
  `operator new[]/new` thunks to `gameswf::malloc_internal`, `Accelerometer::moved`
  (EventManager event not raised), `TouchScreenBase::ProcessEvents` (queue drain),
  the PS3 constructor (table address at +0x1b4), `TouchScreenWin32::onEvent`
  (the began call passes two arguments), `rss::read` (channel::read), `utf16toutf8`.
- Listing anomalies: `dct_iv_slow` ends with `VoxFree` on the stack copy, which is
  not reproduced; `FUN_008ac2cc` (0x89c2cc) has neither a Hex-Rays body nor an IDA
  block at that address; `IsProgrammablePipeline` calls a virtual slot of the
  feature object (`DeviceFeatureFlags()` stands in).
- Not covered by a test: the accelerometer (its state is private; a getter would be
  needed for a check), the `slim` attribute and writer paths.

## Thunk forwarders (wave 7)

Thunks forward to the target that the ARM listing branches to (`tools/decomp_asm.py --address`), and
are not reimplemented. Fixed in `src/memory.cpp` and `src/touch_screen_iphone.cpp`:

- `SwfFree`, `GlitchFree` call `CustomFree` (0x310440). `SwfAlloc` and `GlitchAlloc` (2-arg) call
  `CustomAlloc(size)`. `internal_malloc` calls `LC_API_MALLOC` (0x89d364).
- The four `operator delete`/`delete[]` tagged forms call `GlitchFree` (0x310450). The two 5-arg
  `operator new`/`new[]` forms call the 5-arg `GlitchAlloc`, not `CustomAlloc`.
- `TouchScreenIPhone::getTouchIDInRegion` calls `TouchScreenBase::getTouchIDInRegion` (0x33b0e8). The
  iPhone class uses the base's slot records, so the base body applies.

Still differing from the listing, and left as they are:

- `LC_API_STRCASECMP` (0x89cee0) tail-calls `LC_API_STRCASECMP_0`, which has no ledger row. The port keeps
  an ASCII loop. It should forward once `_0` is recovered.
- The `swf::MemHint` operator new/new[] forms (0x752ba4, 0x752ba8, 0x752b44, 0x752b48) tail-call
  `gameswf::malloc_internal`, which is not in this category. The port forwards them to `SwfAlloc`. The two
  4-arg rows (0x752b44, 0x752b48) stay `partial`.

## Wave 8: partial redo (Hex-Rays, Haiku workers)

Eight workers re-derived the 77 partial rows of the core-platform queue from Hex-Rays
(slices core_A, core_B, core_C). Ledger now: 297 reconstructed, 68 partial, 314 skipped.
- PerfCounters::GetEntry (0x312584): the pseudocode inserts a new entry when the name is
  missing (LABEL_4 path) and returns it. It no longer returns nullptr for a missing name;
  the test was updated to match.
- XmlNode::writeNode (0x845268): the listing's literals are CRLF ("\r\n" at asc_8C0008,
  "/>\r\n", ">\r\n", "-->\r\n"). The slim XML test expectation was updated to CRLF.
- Remaining partials are blocked by stand-in types or missing functions in this tree
  (EventManager::Raise, gameswf::malloc_internal, the Application device object, the
  debug-draw owner, ISceneNode, ObjectHandle, VoxSoundManager, XP_DEBUG_OUT).
- Character-type gameplay rows in w7_global (0x41f834, 0x4218e4, 0x433d00) are skipped.

## Unification (Track B wave U2, 2026-10-13)

The one-definition rule now covers these types. The entries above that name the deps stand-ins are
superseded by this section.

- `deps/glitch_core.hpp` is a forwarding header. It includes the canonical `glitch-shared/glitch_core.hpp`
  (`vector3d`, `rect`, `dimension2d`, `SColor`), `glitch-core-io/os/event_receiver.hpp` (`SEvent`,
  `IEventReceiver`) and `glitch-core-io/core/memory_hint.hpp` (`E_MEMORY_HINT`). core-platform's own headers
  include the canonical headers directly. The forwarder stays for the game headers that still name it
  (`dh2/Billboard.hpp`, `dh2/SimpleTypeProperty.hpp`, `dh2/InputManagerEventReceiver.hpp`); delete it when they switch.
- `rect<T>`: `X1, Y1, X2, Y2` are now `UpperLeftCorner` and `LowerRightCorner` (`.X`, `.Y`). `Rct<short>` in
  `deps/game_types.hpp` is a different type and is unchanged.
- `SEvent`: `type` is `EventType`; `mouseX`, `mouseY`, `mouseEvent` are `MouseInput.X`, `.Y`, `.Event`.
- `SColor` is one 32-bit word. The old `R`, `G`, `B`, `A` are `component(0..3)` and `setComponent(i, v)`.
- `IEventReceiver` and `EventManager` come from `dh2/IEventReceiver.hpp` and `dh2/EventManager.hpp`. `Console` is
  abstract until `Console::onEvent` (0x335b14) and `onEventNotOpened` (0x33271c) are reconstructed; nothing in the
  tree constructs a `Console`.
- `CFileSystem_WorkingDirectory[512]` is gone. `changeWorkingDirectoryTo` writes `glitch::io::CFileSystem::WorkingDirectory`
  (`char[1024]`, the one buffer `CFileSystem` uses), with a bounded copy.
- `CustomFree` is defined only in `src/memory.cpp`. The test-local copy in `tests/r1-core-platform-global-f216b6-0_test.cpp`
  is removed.
- Still stand-ins in other categories: `CustomFree` and `NewArrayWithHint` in `net-session-online/.../deps/platform_stand_ins.hpp`,
  `CustomFree` in `net-transport/.../deps/byte_array.hpp`, and `CustomFree` and `MemoryHintState(size, hint)` in
  `pydata-accessors/.../deps/stream_reader.hpp`.

## STLport allocator machinery (2026-10-14, allocator batch)

Four categories carried rows whose note named `__node_alloc::_M_deallocate`, `_String_base::_M_allocate_block`
or `_String_base::_M_deallocate_block` as their blocker, and each left its row `partial` with "not recovered
tree-wide". That claim is now false: the bodies are in `include/core-platform/stlport_alloc.hpp` (the
`_String_base` block helpers and `glitch::core::SAllocator`) and `src/stlport_alloc.cpp`
(`std::__node_alloc_impl` / `std::__node_alloc`), with `tests/stlport_alloc_test.cpp` covering the two
thresholds. Nothing in `port/` defined any of them before this batch.

Facts the listings settle, for every category that has such a note:

- `_String_base::_M_allocate_block(n)` is a NO-OP when `n <= 0x10`, fails when `n == 0`, and allocates only
  for `n > 0x10`. A default-constructed glitch string calls it with exactly 16, so it allocates nothing and
  the string stays on its 16-element inline buffer. Above 0x10 the plain-allocator version branches again at
  0x80: `__node_alloc` at or below, `CustomAlloc` above.
- `_String_base::_M_deallocate_block()` frees only when the data pointer differs from the inline buffer and is
  non-null. The glitch `SAllocator` instantiation then calls `GlitchFree` with no size test; the
  `std::allocator` instantiation sends sizes above 0x80 to `CustomFree` and the rest to
  `__node_alloc::_M_deallocate`.
- `std::__node_alloc` handles blocks of 0x80 bytes or FEWER by rounding the size up to 8 and pooling it;
  above 0x80 the size is passed to `CustomAlloc`/`CustomFree` unchanged. The pool's bucket index is
  `(n - 1) / 8` over 16 buckets, so a pool request must never exceed 0x80 before rounding.
- `_String_base` is its own 0x14-byte header (`_M_end_of_storage` at +0x00, 16-element inline buffer at
  +0x04, `_M_start_of_storage._M_data` at +0x14) and is 0x24 bytes at 32-bit. The address a caller passes to a
  helper is that class address.

Layout request this batch could not apply, for whoever owns the string switch:

- `glitch::core::SAllocator<T, hint>` is now defined, in `core-platform/stlport_alloc.hpp`. Its canonical place
  is `glitch-core-io/core/memory_hint.hpp` next to `E_MEMORY_HINT` (glitch-core-io owns the glitch headers);
  it is in core-platform for now because it needs `GlitchAlloc`, which core-platform owns.
- A glitch string member must be spelled
  `std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, glitch::memory::EMH_UNRECOVERED> >`,
  not `std::string`, for the recovered `_String_base` instantiation to be what its destructor calls. Every
  game header in the tree currently spells these members `std::string`, which is why the GSFlashMenu,
  CTweakable, SIDedCollection and texture-manager rows stay `partial` even though the helper bodies exist.
  `_String_base::_M_swap` (0x433880 char, 0x8a4c58 wchar_t) is still missing: its listing copies the inline
  buffer and re-seats pointers when a side has not yet grown, which is more than a pointer exchange.