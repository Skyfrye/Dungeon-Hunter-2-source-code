# libStormGLOFT.so

Source: `lib/armeabi-v7a/libStormGLOFT.so` of Dungeon-Hunter-2-HD-v1-0-2.apk (907,744 bytes, ELF32 ARM soft-float, stripped of
`.symtab`, no DWARF, but 2,299 defined `.dynsym` entries: everything was linked with default visibility, so mangled names survive).
Compiler: NDK GCC 4.9 + clang 5.0.300080 (r16/r17 era), STLport. NEEDED: liblog, libz, libm, libdl, libEGL, libGLESv1_CM, libGLESv2, libandroid.

## What it is

Not DRM, analytics, video or input. It is Gameloft's GL compatibility shim ("Storm"). `DungeonHunter2.<clinit>` calls
`System.loadLibrary("StormGLOFT")` (and "DungeonHunter2"); libDungeonHunter2.so does not link it and the dex declares no natives
for it. Its `JNI_OnLoad` (0x3713c, returns 0x10006):

1. `hook_export_function(".../libStormGLOFT.so")` and `hook_inline_function(".../libDungeonHunter2.so", 0x530dd0, false)`:
   ARM/Thumb inline hooks. They route the game's `nativeSetPhone` and `GameRenderer.nativeResize` through `storm_nativeSetPhone`
   / `storm_nativeResize` (the game is told the design width/height, Storm remembers the real one; `storm_nativeGetWidth`).
2. `hook_import_function(libDungeonHunter2.so, "glShaderSource" | "glGetString", ...)`: GOT patching.
   * `my_glShaderSource`: concatenates the sources, repairs a `#endif]` typo, runs them through glsl-optimizer, submits the result.
   * `my_glGetString`: reports vendor ARM, renderer Mali-T604, ES 2.0, ETC1 + mali_program_binary extensions.
3. The other `my_gl*` functions (TexImage2D 16-bit conversion, CompressedTexImage2D CPU decode of PVRTC/S3TC/ATITC/ETC1, Viewport/
   Scissor origin forced to 0,0), `IsLowMemoryPlatform` (MemTotal < 1 GiB), `PatchOpcode` and `SafeMem*` (mprotect + memcpy).

With no network the library does nothing network related. The game runs without it (the current stub proves this): effects lost
are shader optimisation, the Mali identity (which also selects driver-specific paths in the game), CPU texture decode on GPUs
lacking the formats, and the viewport fix.

## Open-source content

| Code | Evidence | Share |
| --- | --- | --- |
| glsl-optimizer (Mesa GLSL front end, IR optimisers, linker, GLSL + Metal printers, glcpp, ralloc, hash_table, getopt) | `ir_print_metal_visitor`, `glslopt_*`, `_mesa_glsl_parse_state`, `GLSL 1.00 ES ... #version 100` | ~1,730 of 2,249 functions |
| ARM32 hooking: adbi (hook, hook_precall, find_libbase...), Android-Inline-Hook (InlineHook, fixPCOpcode*), HookZz (Zz*, zz_arm/thumb_writer) | names | 251 |
| Texture: PowerVR SDK (PVRTDecompressPVRTC/ETC, TextureDeTwiddle), DXT block decoders, ATITC, rg_etc1 | names | 41 + rg_etc1 methods |
| STLport, libgcc, unwinder, compiler-rt | `std::__node_alloc`, `__gnu_Unwind_*` | ~196 |
| Gameloft | below | 22 |

## Counts (queue.csv: the 2,249 functions of .text; ledger.csv)

| status | rows | meaning |
| --- | ---: | --- |
| reconstructed | 22 | JNI_OnLoad, hook_import_function, my_glShaderSource/GetString/TexImage2D/CompressedTexImage2D/Viewport/Scissor, DecompressPVRTC/S3TC/ATC/ETC wrappers, convert*, IsLowMemoryPlatform, ChangePageProperty, SafeMemRead/Write, PatchOpcode, storm_native{SetPhone,Resize,GetWidth} |
| partial | 1,772 | 1,727 glsl-optimizer (needs vendoring), 41 texture library, 4 decoders written from spec (DXT1/3/5 block images, DecompressETC1: functionally equivalent, not transcribed) |
| skipped | 455 | 251 ARM32 hook machinery (not applicable to arm64), 196 toolchain/STL runtime, 8 PLT stubs |

Classification is by name and address range; a few unnamed helpers may be filed under the wrong library.
The entry points `PVRTDecompressPVRTC` and `DecompressATITC` exist but log and return magenta (PVRTC and ATC textures are not decoded).

## arm64 build

`port/decomp-reconstruction/storm-gloft/` (include/, src/{storm_hook,storm_gl,storm_texture}.cpp), target `StormGLOFT` under
`if(ANDROID)` at the end of `port/decomp-reconstruction/CMakeLists.txt` (not in the category lists: host build and libdh2.so unaffected):
`cmake --build build/own-arm64 --target StormGLOFT` gives libStormGLOFT.so (arm64-v8a, android-26, 16 KB pages, --no-undefined) with the
JNI_OnLoad / `storm_native*` / `my_gl*` symbols named exactly as in the original. Differences from the armv7 binary:
`hook_import_function` patches the arm64 GOT through PT_DYNAMIC instead of bionic soinfo offsets; the ARM32 inline hooks
(`hook_export_function`, `hook_inline_function`) are omitted, so the `storm_native*` wrappers have nothing installing them
(they forward through an unset slot and are inert).

## Plan / how to run it

* To replace `tools/trackb/boot/storm_stub.c` in the APK, build_apk.py must take the CMake output; the stub's crash handler and stdout pump
  would then have to move into this library (they are first-boot debug aids, not part of the original). Not done: the shim would also make
  the game see a Mali-T604, so enable it only after testing on a device.
* Vendor glsl-optimizer (needs a download: not done), then `-DDH2_STORM_GLSLOPT=ON`; ledger rows move to `upstream`.
* Implement PVRTC and ATITC decoders if any game texture uses them (check the .pvr/.atc assets; the Android build of the game ships ETC1/DXT?).
