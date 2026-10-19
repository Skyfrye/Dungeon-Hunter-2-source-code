# Building the reconstruction for Android ARM64

The reconstructed tree builds for `arm64-v8a` (android-26 and later) with the NDK's own CMake toolchain file. This is
the 64-bit modern-Android build; `android-armv7a.cmake` next to this file is the 32-bit soft-float build that the
armdiff differential tester uses and is a different thing.

## How to build

NDK r29 (29.0.14206865) was used. From the worktree root:

```
NDK=<sdk>/ndk/29.0.14206865
cmake -S port/decomp-reconstruction -B build/own-arm64 -G Ninja \
      -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake \
      -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-26 -DCMAKE_BUILD_TYPE=Release
cd build/own-arm64
ninja -k 0 $(ninja -t targets all | grep -oE '^libdh2_[a-z0-9_]*\.a' | grep -v test_link_stubs)   # every library, tests not built
```

Notes:

- Do not build `all`: the per-category test executables are host programs (they link `dh2_all_tests`, run on the
  machine) and are only configured, never built or run, for Android. CMake prints a path-length warning for a few test
  object files on Windows; it is harmless because they are not built.
- `-DDH2_SYSTEM_ZLIB=OFF` (default) builds the vendored zlib; Android has `libz`, so `-DDH2_SYSTEM_ZLIB=ON` also works.
- `-Wno-format-security` is added for `ANDROID` (the NDK passes `-Werror=format-security`; `sys::printNoFormat` forwards
  the original's `printf(text)` thunk on purpose).
- Result on 2026-10-15: all 24 library targets compile (about 3.5 minutes cold, 16 vendored plus 9 engine libraries
  plus `dh2_game`). The compile is clean of errors; the warnings are clang-only
  (`-Winconsistent-missing-override`, `-Woverloaded-virtual`, `-Wmismatched-tags`), none about pointer width.

## What had to change for ARM64/Android (the host build is unchanged)

Most of the tree was already portable: every `_WIN32` / MinGW block (`filesystem_win32.cpp`, `filesystem_base.cpp`,
`misc_util.cpp`, `w7_global_04.cpp`, `file_system.cpp`, `xp_api.cpp`, `socket_platform.hpp`, `csocket.cpp`,
`transport_manager_impl.cpp`, `vox_thread.cpp`, `glx_player_ping.cpp`, ...) has a POSIX `#else` branch that Bionic
accepts, `core-platform` already carries the Android JNI / `ADevice` / `FileSystem` code (`__ANDROID__` blocks in
`debug_out.cpp`, the `p1-tinyxml-and-c-libs-global-*` unit and `android_jni_platform.hpp`), and the `-static` link
flags are guarded by `if(MINGW)`. The fixes that were needed were clang-vs-GCC and NDK-sysroot differences:

| Where | Problem | Fix |
| --- | --- | --- |
| `CMakeLists.txt` (zlib, `if(ANDROID)`) | `gzread.c`, `gzwrite.c`, `gzlib.c` call `read/write/close/lseek` without `<unistd.h>` (clang 21 makes the implicit declaration an error) | `Z_HAVE_UNISTD_H` for `dh2_vendor_zlib` on Android |
| `CMakeLists.txt` + `android-compat/GL/gl.h` | libtess's `glu.h` includes `<GL/gl.h>`, absent from the NDK | shim header that includes `<GLES2/gl2.h>` and declares `GLdouble`/`GLclampd`, on the include path of `dh2_vendor_libtess` only, Android only |
| `CMakeLists.txt` | `-Werror=format-security` on `sys::printNoFormat` | `-Wno-format-security` (Android) |
| `glitch-core-io/src/xml_reader.cpp` | destructor defined through the alias `WideReader` (clang `-Wdtor-typedef` error) | spelled `CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::~CXMLReaderImpl()` |
| `glitch-scene-collada-gui/src/tb_scene-collada-gui-glitch_scene-0.cpp` | explicit instantiations of the anonymous-namespace template `createTriangles` were outside that namespace | instantiations wrapped in `namespace { }` |
| `vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp`, `...-pack6-a8bd9d-0.cpp` | `template<> void ::hash<...>::set_raw_capacity` written inside `namespace gameswf` (specialisation of the global `::hash`) | defined after closing `namespace gameswf` |

All five touched sources still pass `bash tools/trackb/check_tu.sh` (GCC, host). No ledger row changed.

### 64-bit layout caveat (not a build error)

The original is 32-bit ARM. On arm64 `sizeof(void*)` is 8, so every reconstructed class with pointer or `long` members
is larger than the original and the member offsets in the header comments (`// +0x04`) do not hold. Nothing in the
build trips on this (no pointer-to-int cast warnings, no failing `static_assert`), but code that reads original data
files through the class layout (savegames, `.bin`/`.res` records parsed by overlaying a struct) or that jumps on
`vtable +0x..` offsets must use explicit fixed-width fields. The host MinGW build is already 64-bit, so the same
issues apply there and the tests cover the data-file paths that matter; the Android build adds no new layout case.

## Producing libdh2.so (libDungeonHunter2.so)

The `dh2` target (added to `CMakeLists.txt`, `if(ANDROID)` only) links all libraries whole-archive into one shared
object, with `-llog -landroid -lEGL -lGLESv2 -lOpenSLES -ldl -lm` and the NDK's default static libc++:

```
ninja dh2                                    # -Wl,--no-undefined: fails, listing the undefined symbols
cmake -DDH2_ANDROID_ABORT_STUBS=ON . && ninja dh2    # aborting stubs for those symbols: libdh2.so links
```

The first form is the honest one: with `--no-undefined` the link stops with the undefined symbols of the CSV (160 at 2026-10-15 22:56, 92 after owner F, 1 after owner E2), listed with the
library object that references each one in `reports/decomp-reconstruction/android-link-missing.csv`. The second form
defines them (functions that print `DH2 android link stub called (not reconstructed yet): <symbol>` and abort, zeroed
4 KiB for data) from that same CSV, and produces a 105 MB (unstripped,
`-g`) `libdh2.so` that is a valid AArch64 ELF exporting `JNI_OnLoad` and the 35 `Java_com_gameloft_android_GAND_GloftD2SS_*`
natives. It is a link proof, not a runnable game: calling any stubbed row aborts.

### What is still missing (1 symbol, see the CSV)

Result on 2026-10-16 (HEAD 1b5e588b plus owner E2): all libraries compile for arm64-v8a (one arm64-only fix: `<cstddef>` in
`glitch-scene-collada-gui/.../res/onDemand.hpp`, which used `std::size_t` and only worked on the host through transitive
includes) and the `--no-undefined` link is down from 92 (and 160 at first) to **1**:

| Symbol | Why |
| --- | --- |
| `glitch::createDevice(E_DRIVER_TYPE, dimension2d<int> const&, unsigned, bool, bool, bool, IEventReceiver*)` (0x5340ac) | `core-platform/src/app_entry.cpp:92` references it through an asm label; the body (a wrapper that builds `SCreationParameters` and calls `createDeviceEx`, 0x6a0748, already in `CAndroidOSDevice.cpp`) belongs to owner B3 (glitch-scene .bdae loader / createDevice) |

Closed in this pass: `Console::_setMenuDebugModules` (0x334764), `IVideoDriver::removeBatchBaker` (0x5d8624),
`CVertexStreams::setStream(SVertexStream*, const SVertexStream&, int, bool)` (clones 0x5abb58 / 0x647ee0) and the
`Java_..._GLUtils_Device_nativeInit` export (0x52f0d8, a `B ADevice::Init`). Everything else of the earlier lists
(Console, VoxSoundManager, CResFileManager, CTextureManager, the `app*` glue, ...) was reconstructed by the owners in
between. With `createDevice` provided (or a one-line stub defining that mangled name) the shared object links with no
other undefined symbol: `llvm-nm -D --undefined-only` shows only Bionic libc/libm (`@LIBC`) and liblog symbols
(`__android_log_*`); libc++ is linked statically, and no GLES, EGL or OpenSL symbol is undefined (the original resolves
them at run time too).

`cmake -DDH2_ANDROID_ABORT_STUBS=ON` still exists to link a runnable-shaped `.so` while symbols are missing; leave it OFF
to get the honest list. `py -3 tools/trackb/android_link_report.py build/own-arm64` regenerates the CSV.

### JNI export comparison

The original (IDA database of `libDungeonHunter2.so`, package `GloftD2SS`) exports `JNI_OnLoad` and 32
`Java_com_gameloft_android_GAND_GloftD2SS_*` natives (GameRenderer, GLMediaPlayer, GLResLoader, DungeonHunter2,
GameGLSurfaceView, Musicplayer, GLUtils_Device). The rebuilt `.so` exports all 32 and `JNI_OnLoad`, with the same names.
It also exports the four `Java_com_samsung_zirconia_NativeInterface_*` functions, which in the original live in the
separate `libnativeinterface.so`, and the reference-binaries copy (`...-1.0.4-armeabi-v7a-dwarf.so`) is the different
`GloftD2HP` package build, so it is not the comparison target.

### Entry points

- `JNI_OnLoad` is defined (core-platform, `p1-core-platform-global-f216b6-2.cpp`) and exported. There is no
  `JNI_OnUnload` in the original.
- All 35 `Java_com_gameloft_android_GAND_GloftD2SS_*` natives are defined and exported (`DungeonHunter2_native*`,
  `GameRenderer_native*`, `GLMediaPlayer_native*`, `GLResLoader_nativeInit`, `GameGLSurfaceView_nativeOnTouch`).
  Nine of them forward to the missing `app*` glue above, which is what actually drives the game loop.
- `Application` start-up, the renderer (`glitch::video::createOpenGLES2Driver`) and the resource/texture managers
  (`CResFileManager`, `CTextureManager`) are the blockers between this library and a game that starts: they are the
  rows above, not a build-system problem.
- The Java side (`com.gameloft.android.GAND.GloftD2SS.*` classes and the GLSurfaceView that calls `nativeOnDrawFrame`) is
  not part of this tree and must be supplied by the APK.
