# Windows host runner for the reconstructed game (see reports/decomp-reconstruction/HOST-RUNNER.md).
#   dh2_win_headless : boots appInit -> GSInit -> menus -> level with a no-op GL table, a fake JNI layer, a fixed timestep and scripted input.
#   dh2_win_window   : the same boot with a Win32 window, a GLES2 context (ANGLE libEGL/libGLESv2 loaded at run time), mouse = touch.
# Both link the whole reconstruction (dh2_all). The runner's own definitions of the Android JNI-backed natives come first on the link line and win
# (--allow-multiple-definition, as in the tests).
add_library(dh2_host_runner_common OBJECT host_jni.cpp host_gl_null.cpp host_runner.cpp host_script.cpp host_state_log.cpp host_bot.cpp host_audio.cpp host_audio_selftest.cpp)
target_include_directories(dh2_host_runner_common PUBLIC ${CMAKE_CURRENT_SOURCE_DIR} ${DH2_ALL_INCLUDES})
target_include_directories(dh2_host_runner_common SYSTEM PUBLIC ${DH2_VENDOR_INCLUDES})
target_compile_options(dh2_host_runner_common PRIVATE -Wall -Wno-unused-variable)

function(dh2_host_exe name)
  add_executable(${name} ${ARGN} $<TARGET_OBJECTS:dh2_host_runner_common>)
  target_include_directories(${name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${DH2_ALL_INCLUDES})
  target_include_directories(${name} SYSTEM PRIVATE ${DH2_VENDOR_INCLUDES})
  # Whole archives, like libdh2.so: the game relies on static initialisers (IrrFactory::s_factory, the singletons) of objects nothing references.
  string(REPLACE ";" "," dh2_libs_csv "${DH2_LIBS}")
  target_link_libraries(${name} PRIVATE "$<LINK_LIBRARY:WHOLE_ARCHIVE,${dh2_libs_csv}>" ws2_32 winmm)
  target_link_options(${name} PRIVATE -Wl,--allow-multiple-definition)
endfunction()

dh2_host_exe(dh2_win_headless main_headless.cpp)
dh2_host_exe(dh2_win_window main_window.cpp host_window.cpp host_rtdump.cpp)
target_link_libraries(dh2_win_window PRIVATE gdi32 user32)

# Debug variant: the same headless runner on a guard-page heap (host_pageheap.cpp): overruns and use-after-free fault at the faulting instruction.
# MinGW GCC has no AddressSanitizer/UBSan runtime (libasan/libubsan are not part of the toolchain), so this is the memory-error check.
dh2_host_exe(dh2_win_headless_ph main_headless.cpp host_pageheap.cpp)
target_link_options(dh2_win_headless_ph PRIVATE -Wl,--wrap=malloc,--wrap=calloc,--wrap=realloc,--wrap=free)

# Texture decoder for the upscale pipeline (tools/trackb/textures.py): the game's own PVRTC decode to plain TGA.
dh2_host_exe(dh2_texconv tool_texconv.cpp)

# ETC2 / EAC encoder and decoder for the remaster's GPU textures (tools/trackb/textures.py pack --gpu etc2): standalone, no game code.
add_executable(dh2_etc2 tool_etc2.cpp)
target_compile_options(dh2_etc2 PRIVATE -O2 -Wall)
