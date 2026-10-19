cmake_minimum_required(VERSION 3.24)
project(dh2_decomp_reconstruction CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
enable_testing()

# The original was built with GCC 4.x, which keeps stores to an object's storage before its constructor and in its
# destructor. Newer GCC drops them (-flifetime-dse). The reconstruction and its tests read such state (a destructor that
# leaves a pointer null, bytes compared with a reference object over zeroed storage), so the stores stay.
if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  add_compile_options($<$<COMPILE_LANGUAGE:CXX>:-flifetime-dse=0>)
endif()

# MinGW: link the C++ runtime statically. Otherwise test executables pick up whichever
# libstdc++-6.dll is first on PATH (Git's msvcrt-based copy on this machine), which gave
# 0xc0000139 and heap errors that were not in the code.
# DH2_HOST_ASAN (llvm-mingw clang with -fsanitize=address, see HOST-RUNNER.md): the ASan runtime is a DLL, so no -static; libc++ and winpthreads are linked normally.
option(DH2_HOST_ASAN "Windows host runner built with clang -fsanitize=address (dynamic runtime)" OFF)
if(MINGW AND NOT DH2_HOST_ASAN)
  add_link_options(-static-libgcc -static-libstdc++ -static)
elseif(MINGW)
  add_link_options(-lpthread)
endif()

# Android (NDK toolchain, ANDROID_ABI=arm64-v8a): see ANDROID-BUILD.md. The NDK adds -Werror=format-security; the
# reconstruction forwards the original's printf(text) thunks on purpose (sys::printNoFormat), so it is not an error here.
# First-boot diagnostics (GL call trace, shader/texture/draw logs, GSInit step log); off by default.
option(DH2_BOOT_DEBUG "Android first-boot debug logging" OFF)
if(DH2_BOOT_DEBUG)
  add_compile_definitions(DH2_BOOT_DEBUG=1)
endif()
# Windows host runner (host-runner/): also lets appInit size the device from Width_Screen/Height_Screen as the Android build does.
option(DH2_HOST_RUNNER "Build the Windows host runner executables (host-runner/)" OFF)
if(DH2_HOST_RUNNER)
  add_compile_definitions(DH2_HOST_RUNNER=1)
  include_directories(AFTER ${CMAKE_CURRENT_SOURCE_DIR}/host-runner/compat)  # <android/log.h> shim for sources with Android-only debug logging
endif()
if(ANDROID)
  add_compile_options(-Wno-format-security)
  # The 2012 original was built without FORTIFY_SOURCE; the reconstruction still has string calls on buffers the checker can prove too small
  # (first boot: the abort after the title screen was vendored Lua's lgc.c strchr on a TString, a false positive now excluded for dh2_vendor_lua).
  # Off keeps the original behaviour; with DH2_BOOT_DEBUG on, app_entry.cpp logs any further strchr overread (DH2FORTIFY) instead of aborting.
  option(DH2_ANDROID_FORTIFY "Build the Android library with _FORTIFY_SOURCE" OFF)
  if(NOT DH2_ANDROID_FORTIFY)
    add_compile_options(-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0)
  endif()
  set(DH2_ANDROID_COMPAT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android-compat)
endif()

# Track B builds one program from many folders. Every folder sees every other folder's
# headers (addressed as "<category>/<file>.hpp", "dh2/<Class>.hpp", "glitch-shared/...",
# "lua.h", "Box2D.h", "gameswf/..."), so a class is defined once and used everywhere.
# Tests link every library in one rescanned group, so cross-category calls resolve
# whatever the layering. See TRACK-B.md.
set(DH2_DECOMP_CATEGORIES
  core-platform pydata-accessors net-transport net-session-online vox-audio
  tinyxml-and-c-libs glitch-core-io glitch-video glitch-scene-collada-gui)
set(DH2_GAME_CATEGORIES
  game-anim game-app game-character game-items-save game-ui game-world)
set(DH2_VENDOR_CATEGORIES vendor-lua vendor-box2d vendor-gameswf)

set(DH2_LUA_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor-lua/upstream/lua-5.1.4/src)
set(DH2_BOX2D_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor-box2d/upstream/box2d-2.0.1)
set(DH2_GAMESWF_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vendor-gameswf/upstream/gameswf-r1714)
# Upstream libraries vendored from tinyxml-and-c-libs/upstream and vox-audio/upstream (see each README.md).
set(DH2_TINYXML_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/tinyxml-2.5.3)
set(DH2_FREETYPE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/freetype-2.3.7)
set(DH2_JPEG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/libjpeg-6b)
set(DH2_PNG_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/libpng-1.2.32)
set(DH2_TESS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/libtess-glu-9.0.0)
set(DH2_MPC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vox-audio/upstream/libmpcdec-r475)
set(DH2_STB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/vox-audio/upstream/stb_vorbis-0.99996)

set(DH2_ALL_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/game/include ${CMAKE_CURRENT_SOURCE_DIR}/shared/include)
foreach(cat IN LISTS DH2_DECOMP_CATEGORIES DH2_VENDOR_CATEGORIES)
  list(APPEND DH2_ALL_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/${cat}/include)
endforeach()
set(DH2_VENDOR_INCLUDES ${DH2_LUA_DIR} ${DH2_BOX2D_DIR}/Include ${DH2_BOX2D_DIR}/Source ${DH2_GAMESWF_DIR} ${DH2_TINYXML_DIR})

# gameswf configuration as the DH2 build uses it; NOMINMAX keeps windows.h macros out of tu-testbed.
add_compile_definitions(NOMINMAX TU_CONFIG_LINK_TO_JPEGLIB=0 TU_CONFIG_LINK_TO_LIBPNG=0
  TU_CONFIG_LINK_TO_FREETYPE=0 TU_CONFIG_LINK_TO_THREAD=0)
# TinyXML 2.5.3 with std::string (the binary's TiXmlElement::SetAttribute takes std::string arguments).
add_compile_definitions(TIXML_USE_STL)

function(dh2_warnings target)
  if(MSVC)
    target_compile_options(${target} PRIVATE /W3)
  else()
    target_compile_options(${target} PRIVATE -Wall -Wno-unused-variable -Wno-unused-but-set-variable)
  endif()
endfunction()

function(dh2_includes target own)
  target_include_directories(${target} PUBLIC ${own} ${DH2_ALL_INCLUDES})
  target_include_directories(${target} SYSTEM PUBLIC ${DH2_VENDOR_INCLUDES})
endfunction()

# Vendored upstream libraries (vendor-*/upstream, see their README.md and NOTES.md).
# Lua 5.1.4 with the DH2 float lua_Number; linit.c is not built (the sfc wrapper opens libraries).
file(GLOB lua_srcs CONFIGURE_DEPENDS ${DH2_LUA_DIR}/*.c)
list(FILTER lua_srcs EXCLUDE REGEX "/(lua|luac|print|linit|liolib|loslib|loadlib)\\.c$")
add_library(dh2_vendor_lua STATIC ${lua_srcs})
set_target_properties(dh2_vendor_lua PROPERTIES C_STANDARD 99)
if(ANDROID)
  # Lua 5.1 reads TString data through a struct whose flexible tail the checker sees as 0 bytes (strchr(svalue(mode), ...) in lgc.c): a false positive, not an overread.
  target_compile_options(dh2_vendor_lua PRIVATE -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0)
endif()
target_include_directories(dh2_vendor_lua SYSTEM PUBLIC ${DH2_LUA_DIR})
# Box2D 2.0.1 with the DH2 b2Settings; b2Collision.cpp is not in the DH2 build.
file(GLOB_RECURSE box2d_srcs CONFIGURE_DEPENDS ${DH2_BOX2D_DIR}/Source/*.cpp)
list(FILTER box2d_srcs EXCLUDE REGEX "/b2Collision\\.cpp$")
add_library(dh2_vendor_box2d STATIC ${box2d_srcs})
target_include_directories(dh2_vendor_box2d SYSTEM PUBLIC ${DH2_BOX2D_DIR}/Include ${DH2_BOX2D_DIR}/Source)
if(NOT MSVC)
  target_compile_options(dh2_vendor_box2d PRIVATE -w -fno-fast-math -ffp-contract=off -include cstring)
endif()
# zlib 1.2.3: libDungeonHunter2.so carries it statically (zlibVersion "1.2.3", " inflate 1.2.3 Copyright 1995-2005"), vendored
# under tinyxml-and-c-libs/upstream (see its README.md). -DDH2_SYSTEM_ZLIB=ON links the toolchain's own libz instead.
option(DH2_SYSTEM_ZLIB "Link the system zlib (-lz) instead of building the vendored sources" OFF)
set(DH2_ZLIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tinyxml-and-c-libs/upstream/zlib-1.2.3)
if(DH2_SYSTEM_ZLIB)
  add_library(dh2_vendor_zlib INTERFACE)
  target_link_libraries(dh2_vendor_zlib INTERFACE z)
else()
  set(zlib_srcs adler32 compress crc32 deflate gzio infback inffast inflate inftrees trees uncompr zutil)
  list(TRANSFORM zlib_srcs PREPEND ${DH2_ZLIB_DIR}/)
  list(TRANSFORM zlib_srcs APPEND .c)
  add_library(dh2_vendor_zlib STATIC ${zlib_srcs})
  set_target_properties(dh2_vendor_zlib PROPERTIES C_STANDARD 99)
  if(ANDROID)
    target_compile_definitions(dh2_vendor_zlib PRIVATE Z_HAVE_UNISTD_H)   # gzio.c calls read/write/close
  endif()
  target_include_directories(dh2_vendor_zlib SYSTEM PUBLIC ${DH2_ZLIB_DIR})
  list(APPEND DH2_VENDOR_INCLUDES ${DH2_ZLIB_DIR})   # <zlib.h> for CZipReader::openFile (0x576f18, inflate)
  if(NOT MSVC)
    target_compile_options(dh2_vendor_zlib PRIVATE -w)
  endif()
endif()
# gameswf r1714: the 68 upstream units of the DH2 build, with the flags its README gives (C++17, -w,
# -fno-fast-math -ffp-contract=off, -fpermissive on GCC). TU_CONFIG_* are global above. Definitions the DH2 build
# replaced sit in "#if 0 /* DH2: ... */" blocks inside these files; Gameloft's own gameswf units
# (vendor-gameswf/src) build into dh2_vendor_gameswf_dh2 in the engine group below.
file(GLOB_RECURSE gameswf_srcs CONFIGURE_DEPENDS ${DH2_GAMESWF_DIR}/*.cpp)
add_library(dh2_vendor_gameswf STATIC ${gameswf_srcs})
dh2_includes(dh2_vendor_gameswf ${CMAKE_CURRENT_SOURCE_DIR}/vendor-gameswf/include)
target_link_libraries(dh2_vendor_gameswf PUBLIC dh2_vendor_zlib)
if(NOT MSVC)
  target_compile_options(dh2_vendor_gameswf PRIVATE -w -fno-fast-math -ffp-contract=off)
  if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_compile_options(dh2_vendor_gameswf PRIVATE -fpermissive)
  endif()
endif()

# Upstream libraries vendored from tinyxml-and-c-libs/upstream and vox-audio/upstream. Each is one static library built
# from the units the binary contains (its DWARF compile units). The versions, URLs and SHA-256 are in each README.md.
# DH2 changes are marked // DH2: in the sources, host-build fixes HOST-PORT:.

# TinyXML 2.5.3: tinyxml.cpp, tinyxmlerror.cpp and tinyxmlparser.cpp (tinystr.cpp has no body with TIXML_USE_STL).
add_library(dh2_vendor_tinyxml STATIC
  ${DH2_TINYXML_DIR}/tinyxml.cpp ${DH2_TINYXML_DIR}/tinyxmlerror.cpp ${DH2_TINYXML_DIR}/tinyxmlparser.cpp)
target_include_directories(dh2_vendor_tinyxml SYSTEM PUBLIC ${DH2_TINYXML_DIR})
if(NOT MSVC)
  target_compile_options(dh2_vendor_tinyxml PRIVATE -w)
endif()

# FreeType 2.3.7: the 24 units of the single-object build (each unit #includes the sources of its module). The DH2 build
# uses the system zlib for ftgzip (FT_CONFIG_OPTION_SYSTEM_ZLIB in config/ftoption.h, DH2).
set(DH2_FREETYPE_UNITS base/ftbase base/ftbitmap base/ftdebug gzip/ftgzip base/ftinit lzw/ftlzw base/ftsynth
  base/ftsystem autofit/autofit bdf/bdf cff/cff pcf/pcf pfr/pfr psaux/psaux pshinter/pshinter psnames/psmodule
  raster/raster sfnt/sfnt smooth/smooth truetype/truetype type1/type1 cid/type1cid type42/type42 winfonts/winfnt)
set(freetype_srcs)
foreach(u IN LISTS DH2_FREETYPE_UNITS)
  list(APPEND freetype_srcs ${DH2_FREETYPE_DIR}/src/${u}.c)
endforeach()
add_library(dh2_vendor_freetype STATIC ${freetype_srcs})
target_include_directories(dh2_vendor_freetype SYSTEM PUBLIC ${DH2_FREETYPE_DIR}/include)
target_compile_definitions(dh2_vendor_freetype PRIVATE FT2_BUILD_LIBRARY)
target_link_libraries(dh2_vendor_freetype PRIVATE dh2_vendor_zlib)
if(NOT MSVC)
  target_compile_options(dh2_vendor_freetype PRIVATE -w)
endif()

# libjpeg 6b: the 42 units of the binary's build. jdatasrc.c and jdatadst.c are not in it (its own source manager is).
# jmemnobs.c stands in for the Gameloft memory unit (jmemirr.c, not upstream); see libjpeg-6b/README.md.
set(DH2_JPEG_UNITS jcapimin jcapistd jccoefct jccolor jcdctmgr jchuff jcinit jcmainct jcmarker jcmaster jcomapi
  jcparam jcphuff jcprepct jcsample jdapimin jdapistd jdcoefct jdcolor jddctmgr jdhuff jdinput jdmainct jdmarker
  jdmaster jdmerge jdphuff jdpostct jdsample jerror jfdctflt jfdctfst jfdctint jidctflt jidctfst jidctint jidctred
  jmemmgr jquant1 jquant2 jutils jmemnobs)
set(jpeg_srcs)
foreach(u IN LISTS DH2_JPEG_UNITS)
  list(APPEND jpeg_srcs ${DH2_JPEG_DIR}/${u}.c)
endforeach()
add_library(dh2_vendor_jpeg STATIC ${jpeg_srcs})
target_include_directories(dh2_vendor_jpeg SYSTEM PUBLIC ${DH2_JPEG_DIR})
if(NOT MSVC)
  target_compile_options(dh2_vendor_jpeg PRIVATE -w)
endif()

# libpng 1.2.32 (pinned from the binary's version strings): the 15 portable units, no x86 assembler. ImageIO declares the
# png_* entry points itself, so the library only has to link; png.h is public for the loaders that include it.
set(png_srcs)
foreach(u IN ITEMS png pngerror pngget pngmem pngpread pngread pngrio pngrtran pngrutil pngset pngtrans pngwio pngwrite pngwtran pngwutil)
  list(APPEND png_srcs ${DH2_PNG_DIR}/${u}.c)
endforeach()
add_library(dh2_vendor_png STATIC ${png_srcs})
target_include_directories(dh2_vendor_png SYSTEM PUBLIC ${DH2_PNG_DIR})
target_compile_definitions(dh2_vendor_png PRIVATE PNG_NO_ASSEMBLER_CODE)
target_link_libraries(dh2_vendor_png PUBLIC dh2_vendor_zlib)
if(NOT MSVC)
  target_compile_options(dh2_vendor_png PRIVATE -w)
endif()

# SGI libtess (GLU tessellator, glu-9.0.0 src/libtess): the nine units of the binary, compiled as C++ because the binary's
# symbols are C++-mangled. memalloc.c is not in the binary (see libtess-glu-9.0.0/README.md).
set(tess_srcs)
foreach(u IN ITEMS dict geom mesh normal priorityq render sweep tess tessmono)
  list(APPEND tess_srcs ${DH2_TESS_DIR}/src/libtess/${u}.c)
endforeach()
set_source_files_properties(${tess_srcs} PROPERTIES LANGUAGE CXX)
add_library(dh2_vendor_libtess STATIC ${tess_srcs})
target_include_directories(dh2_vendor_libtess SYSTEM PUBLIC ${DH2_TESS_DIR}/include)
target_include_directories(dh2_vendor_libtess PRIVATE ${DH2_TESS_DIR}/src/include ${DH2_TESS_DIR}/src/libtess)
if(ANDROID)
  target_include_directories(dh2_vendor_libtess SYSTEM PRIVATE ${DH2_ANDROID_COMPAT_DIR})   # <GL/gl.h> for glu.h
endif()
if(NOT MSVC)
  target_compile_options(dh2_vendor_libtess PRIVATE -w)
endif()

# libmpcdec (Musepack r475, libmpcdec): the seven units of the binary's SV8 build. mpc_reader.c is not used: the vox
# reader (vox-audio/src/mpc_reader.cpp) is Gameloft's.
set(mpc_srcs)
foreach(u IN ITEMS mpc_bits_reader mpc_decoder mpc_demux huffman requant streaminfo synth_filter)
  list(APPEND mpc_srcs ${DH2_MPC_DIR}/libmpcdec/${u}.c)
endforeach()
add_library(dh2_vendor_mpc STATIC ${mpc_srcs})
target_include_directories(dh2_vendor_mpc PRIVATE ${DH2_MPC_DIR}/include ${DH2_MPC_DIR}/libmpcdec)
# streaminfo.c calls mpc_crc32; the binary's copy of that CRC is crc32mpc (tinyxml-and-c-libs/src/crc32mpc.cpp).
target_compile_definitions(dh2_vendor_mpc PRIVATE mpc_crc32=crc32mpc)
if(NOT MSVC)
  target_compile_options(dh2_vendor_mpc PRIVATE -w)
endif()

# stb_vorbis 0.99996 (2014 initial checkin): compiled as C++ like the binary (its symbols are C++-mangled).
add_library(dh2_vendor_stb_vorbis STATIC ${DH2_STB_DIR}/stb_vorbis.c)
set_source_files_properties(${DH2_STB_DIR}/stb_vorbis.c PROPERTIES LANGUAGE CXX)
# stb_vorbis.c includes vox-audio/vox/stream.hpp and memory.hpp (DH2 additions).
target_include_directories(dh2_vendor_stb_vorbis PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/vox-audio/include)
if(NOT MSVC)
  target_compile_options(dh2_vendor_stb_vorbis PRIVATE -w)
endif()

# Engine, library and vendor-addition categories: one static library each.
set(DH2_LIBS)
foreach(cat IN LISTS DH2_DECOMP_CATEGORIES DH2_VENDOR_CATEGORIES)
  set(dir ${CMAKE_CURRENT_SOURCE_DIR}/${cat})
  file(GLOB_RECURSE srcs CONFIGURE_DEPENDS ${dir}/src/*.cpp ${dir}/src/*.c)
  if(NOT srcs)
    continue()
  endif()
  string(REPLACE "-" "_" lib dh2_${cat})
  if(cat IN_LIST DH2_VENDOR_CATEGORIES)
    set(lib ${lib}_dh2)   # Gameloft's additions; dh2_vendor_<lib> is the upstream library itself
  endif()
  add_library(${lib} STATIC ${srcs})
  dh2_includes(${lib} ${dir}/include)
  dh2_warnings(${lib})
  list(APPEND DH2_LIBS ${lib})
endforeach()

# Gameplay categories build into one library, dh2_game. Every game class has exactly one
# header, game/include/dh2/<Class>.hpp; sources stay in their category's src/.
set(game_srcs)
foreach(cat IN LISTS DH2_GAME_CATEGORIES)
  file(GLOB_RECURSE s CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${cat}/src/*.cpp ${CMAKE_CURRENT_SOURCE_DIR}/${cat}/src/*.c)
  list(APPEND game_srcs ${s})
endforeach()
file(GLOB_RECURSE game_shared_srcs CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/game/src/*.cpp)
list(APPEND game_srcs ${game_shared_srcs})
if(game_srcs)
  add_library(dh2_game STATIC ${game_srcs})
  dh2_includes(dh2_game ${CMAKE_CURRENT_SOURCE_DIR}/game/include)
  dh2_warnings(dh2_game)
  list(APPEND DH2_LIBS dh2_game)
endif()
list(APPEND DH2_LIBS dh2_vendor_lua dh2_vendor_box2d dh2_vendor_gameswf dh2_vendor_tinyxml dh2_vendor_freetype
  dh2_vendor_jpeg dh2_vendor_png dh2_vendor_libtess dh2_vendor_mpc dh2_vendor_stb_vorbis)
if(NOT DH2_SYSTEM_ZLIB)
  list(APPEND DH2_LIBS dh2_vendor_zlib)
endif()

# Everything, linked as one rescanned group (libraries reference each other both ways).
add_library(dh2_all INTERFACE)
target_link_libraries(dh2_all INTERFACE "$<LINK_GROUP:RESCAN,${DH2_LIBS}>")
if(WIN32)
  target_link_libraries(dh2_all INTERFACE ws2_32)
endif()

# Windows host runner (host-runner/, see reports/decomp-reconstruction/HOST-RUNNER.md): dh2_win_headless boots the reconstructed game on the
# host with a fake JNI layer, fixed timestep and scripted input; dh2_win_window adds a real window and GLES2 (ANGLE). Off by default.
if(DH2_HOST_RUNNER AND WIN32)
  add_subdirectory(host-runner)
endif()

# Link stubs for the tests (link-1). Symbols that some library object references and no library defines yet (the rows of
# reports/decomp-reconstruction/link-missing.csv that tests reach) are defined here as aborting stubs, one object per
# symbol, in a static library that only the TESTS link, after dh2_all. A real definition in any library therefore wins
# without further changes (the linker takes the first archive that defines a symbol), and nothing here reaches a program
# that links dh2_all alone, which still shows the gaps as undefined symbols. link-stubs/link_stubs.csv lists them:
# symbol,kind(function|data),size,category,address,note. Each stub names itself on stderr and aborts when called.
set(DH2_STUB_DIR ${CMAKE_CURRENT_BINARY_DIR}/link-stubs)
file(MAKE_DIRECTORY ${DH2_STUB_DIR})
set(DH2_STUB_SOURCES)
set(DH2_STUB_CSV ${CMAKE_CURRENT_SOURCE_DIR}/link-stubs/link_stubs.csv)
set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${DH2_STUB_CSV})
if(EXISTS ${DH2_STUB_CSV})
  file(STRINGS ${DH2_STUB_CSV} stub_rows)
  list(POP_FRONT stub_rows)   # header
  set(stub_n 0)
  foreach(row IN LISTS stub_rows)
    string(REGEX MATCH "^([^,]*),([^,]*),([^,]*)" ignore "${row}")
    set(stub_sym ${CMAKE_MATCH_1})
    set(stub_kind ${CMAKE_MATCH_2})
    set(stub_size ${CMAKE_MATCH_3})
    if(stub_sym STREQUAL "")
      continue()
    endif()
    math(EXPR stub_n "${stub_n} + 1")
    set(stub_src ${DH2_STUB_DIR}/stub_${stub_n}.cpp)
    if(stub_kind STREQUAL "data")
      set(stub_text "// generated from link-stubs/link_stubs.csv
extern \"C\" { alignas(16) char dh2_stub_data_${stub_n}[${stub_size}] __asm__(\"${stub_sym}\"); }
")
    else()
      set(stub_text "// generated from link-stubs/link_stubs.csv
#include <cstdio>
#include <cstdlib>
extern \"C\" void dh2_stub_fn_${stub_n}() __asm__(\"${stub_sym}\");
extern \"C\" void dh2_stub_fn_${stub_n}() { std::fputs(\"DH2 link stub called (not reconstructed yet): ${stub_sym}\\n\", stderr); std::abort(); }
")
    endif()
    file(GENERATE OUTPUT ${stub_src} CONTENT "${stub_text}")
    list(APPEND DH2_STUB_SOURCES ${stub_src})
  endforeach()
endif()
if(DH2_STUB_SOURCES)
  add_library(dh2_test_link_stubs STATIC ${DH2_STUB_SOURCES})
  set_source_files_properties(${DH2_STUB_SOURCES} PROPERTIES GENERATED TRUE)
  # What the tests link: the same rescanned group as dh2_all, with the stubs as its last archive.
  add_library(dh2_all_tests INTERFACE)
  target_link_libraries(dh2_all_tests INTERFACE "$<LINK_GROUP:RESCAN,${DH2_LIBS},dh2_test_link_stubs>")
  if(WIN32)
    target_link_libraries(dh2_all_tests INTERFACE ws2_32)
  endif()
else()
  add_library(dh2_all_tests INTERFACE)
  target_link_libraries(dh2_all_tests INTERFACE dh2_all)
endif()

# Tests: one executable per file in <category>/tests, linked against everything.
# Many tests define stand-ins of their own for code outside the batch they check (recording stubs, aborting stubs, fake
# globals). Those definitions come first on the link line and must win over the library objects that are pulled in
# for other symbols, as they did when each test was linked with its batch sources only, so the tests link with
# --allow-multiple-definition (the first definition is kept). Duplicate definitions between the libraries themselves are
# checked separately by the link/library-duplicates test below.
foreach(cat IN LISTS DH2_DECOMP_CATEGORIES DH2_GAME_CATEGORIES DH2_VENDOR_CATEGORIES)
  set(dir ${CMAKE_CURRENT_SOURCE_DIR}/${cat})
  file(GLOB tests CONFIGURE_DEPENDS ${dir}/tests/*.cpp)
  string(REPLACE "-" "_" pfx dh2_${cat})
  foreach(t IN LISTS tests)
    get_filename_component(tname ${t} NAME_WE)
    set(exe ${pfx}_${tname})
    add_executable(${exe} ${t})
    target_include_directories(${exe} PRIVATE ${dir}/include ${DH2_ALL_INCLUDES})
    target_include_directories(${exe} SYSTEM PRIVATE ${DH2_VENDOR_INCLUDES})
    target_link_libraries(${exe} PRIVATE dh2_all_tests)
    if(NOT MSVC)
      target_link_options(${exe} PRIVATE -Wl,--allow-multiple-definition)
    endif()
    add_test(NAME ${cat}/${tname} COMMAND ${exe})
    # Two net-session-online tests use ./iglu.bin in the build directory as their RMS input, and one of them
    # DELETES it. Under `ctest -j` they raced: a_license_check_test failed roughly 1 run in 4 at -j 8 while
    # passing 2/2 at -j 1. Serialising just these two costs nothing and removes a phantom failure that was
    # being reported as a real one. (Fix the general case if a third test ever shares this file.)
    if(tname STREQUAL "a_license_check_test" OR tname STREQUAL "r1n-net-session-online-ALicenseCheck-6e7781-0_test")
      set_tests_properties(${cat}/${tname} PROPERTIES RESOURCE_LOCK iglu_rms_input)
    endif()
  endforeach()
endforeach()

# The libraries must not define a symbol twice between them. One link of every library, whole-archive and with
# unresolved symbols ignored, reports every multiple definition. (The tests above allow multiple definitions on purpose,
# so this is the check for the libraries.) The link as a whole cannot succeed: whole-archive pulls in every row that is not
# reconstructed yet and has no stub (reports/decomp-reconstruction/link-missing.csv), so ld ends with undefined
# references. The test passes when ld reports no multiple definition and no stub in the stub library is stale.
if(NOT MSVC)
  file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/dh2_duplicate_check_main.cpp "int main() { return 0; }
")
  # The stub library is part of the check: a stub for a symbol that a library now defines is a stale stub and fails here.
  set(dup_libs)
  foreach(lib IN LISTS DH2_LIBS)
    list(APPEND dup_libs $<TARGET_FILE:${lib}>)
  endforeach()
  if(TARGET dh2_test_link_stubs)  # absent once link_stubs.csv is empty
    list(APPEND dup_libs $<TARGET_FILE:dh2_test_link_stubs>)
  endif()
  file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/dh2_duplicate_check.cmake "
string(REPLACE \"|\" \";\" libs \"\${LIBS}\")
execute_process(COMMAND \"\${CXX}\" -static -static-libgcc -static-libstdc++ \"\${MAIN}\" -o \"\${OUT}\"
                        -Wl,--unresolved-symbols=ignore-all -Wl,--whole-archive \${libs} -Wl,--no-whole-archive \${EXTRA}
                ERROR_VARIABLE err OUTPUT_VARIABLE out RESULT_VARIABLE rc)
string(REGEX MATCHALL \"[^\n]*multiple definition[^\n]*\" dups \"\${err}\")
if(dups)
  string(REPLACE \";\" \"\n\" dups \"\${dups}\")
  message(FATAL_ERROR \"multiple definitions between the libraries:\n\${dups}\")
endif()
if(NOT err MATCHES \"undefined reference\" AND NOT rc EQUAL 0)
  message(FATAL_ERROR \"the library link failed for another reason:\n\${err}\")
endif()
message(STATUS \"no multiple definitions between the libraries\")
")
  add_test(NAME link/library-duplicates
           COMMAND ${CMAKE_COMMAND} -DCXX=${CMAKE_CXX_COMPILER}
                   -DMAIN=${CMAKE_CURRENT_BINARY_DIR}/dh2_duplicate_check_main.cpp
                   -DOUT=${CMAKE_CURRENT_BINARY_DIR}/dh2_duplicate_check.exe
                   "-DLIBS=$<JOIN:${dup_libs},|>" "-DEXTRA=$<$<BOOL:${WIN32}>:-lws2_32>"
                   -P ${CMAKE_CURRENT_BINARY_DIR}/dh2_duplicate_check.cmake)
endif()

# ---------------------------------------------------------------------------------------------------------------------
# Android: libdh2.so, every library linked whole-archive into one shared object (see ANDROID-BUILD.md).
#   cmake -S port/decomp-reconstruction -B build/own-arm64 -G Ninja -DCMAKE_TOOLCHAIN_FILE=<ndk>/build/cmake/android.toolchain.cmake #         -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-26 -DDH2_ANDROID_ABORT_STUBS=ON
#   cmake --build build/own-arm64 --target dh2
# With the default -DDH2_ANDROID_ABORT_STUBS=OFF the link uses -Wl,--no-undefined and fails listing exactly the symbols of
# reports/decomp-reconstruction/android-link-missing.csv. ON defines those (aborting function stubs, zeroed data) and the
# a loadable library comes out; calling a stubbed row aborts and names the symbol on stderr.
# ---------------------------------------------------------------------------------------------------------------------
if(ANDROID)
  option(DH2_ANDROID_ABORT_STUBS "Define the symbols no library defines yet as aborting stubs so libdh2.so links" OFF)
  file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/dh2_android_empty.cpp "// libdh2.so has no sources of its own; the libraries are linked whole-archive.
")
  add_library(dh2 SHARED ${CMAKE_CURRENT_BINARY_DIR}/dh2_android_empty.cpp)
  target_link_libraries(dh2 PRIVATE "$<LINK_LIBRARY:WHOLE_ARCHIVE,${DH2_LIBS}>" log android EGL GLESv2 OpenSLES dl m)
  target_link_options(dh2 PRIVATE -Wl,--error-limit=0)
  if(DH2_ANDROID_ABORT_STUBS)
    set(DH2_ANDROID_CSV ${CMAKE_SOURCE_DIR}/../../reports/decomp-reconstruction/android-link-missing.csv)
    set_property(DIRECTORY APPEND PROPERTY CMAKE_CONFIGURE_DEPENDS ${DH2_ANDROID_CSV})
    file(STRINGS ${DH2_ANDROID_CSV} android_rows)
    list(POP_FRONT android_rows)
    set(android_stub_text "// generated from reports/decomp-reconstruction/android-link-missing.csv
#include <cstdio>
#include <cstdlib>
")
    set(android_n 0)
    foreach(row IN LISTS android_rows)
      # Rows are "symbol,kind,..."; a ';' inside a note splits a row into list items, which are skipped here.
      if(NOT row MATCHES "^([A-Za-z_][A-Za-z0-9_]*),(function|data),")
        continue()
      endif()
      set(a_sym ${CMAKE_MATCH_1})
      set(a_kind ${CMAKE_MATCH_2})
      math(EXPR android_n "${android_n} + 1")
      if(a_kind STREQUAL "data")
        string(APPEND android_stub_text "extern \"C\" { alignas(16) char dh2_android_data_${android_n}[4096] __asm__(\"${a_sym}\"); }
")
      else()
        string(APPEND android_stub_text "extern \"C\" void dh2_android_fn_${android_n}() __asm__(\"${a_sym}\");
extern \"C\" void dh2_android_fn_${android_n}() { std::fputs(\"DH2 android link stub called (not reconstructed yet): ${a_sym}\\n\", stderr); std::abort(); }
")
      endif()
    endforeach()
    file(GENERATE OUTPUT ${DH2_STUB_DIR}/android_residual_stubs.cpp CONTENT "${android_stub_text}")
    set_source_files_properties(${DH2_STUB_DIR}/android_residual_stubs.cpp PROPERTIES GENERATED TRUE)
    add_library(dh2_android_residual_stubs STATIC ${DH2_STUB_DIR}/android_residual_stubs.cpp)
    target_link_libraries(dh2 PRIVATE dh2_android_residual_stubs)   # one object per symbol: only the ones still needed are pulled
  else()
    target_link_options(dh2 PRIVATE -Wl,--no-undefined)
  endif()
endif()

# Android: libStormGLOFT.so, the GL compatibility shim of the original APK (storm-gloft/, reports/decomp-reconstruction/STORMGLOFT.md).
# Not part of DH2_DECOMP_CATEGORIES: the host build and libdh2.so never see it. Build with `cmake --build <dir> --target StormGLOFT`.
if(ANDROID)
  add_library(StormGLOFT SHARED storm-gloft/src/storm_hook.cpp storm-gloft/src/storm_gl.cpp storm-gloft/src/storm_texture.cpp)
  target_include_directories(StormGLOFT PRIVATE storm-gloft/include)
  target_compile_options(StormGLOFT PRIVATE -Wall -Wno-unused-function)
  target_link_libraries(StormGLOFT PRIVATE log GLESv2 dl)
  target_link_options(StormGLOFT PRIVATE -Wl,-z,max-page-size=16384 -Wl,--no-undefined)
  # -DDH2_STORM_GLSLOPT=ON once glsl-optimizer is vendored (links its glslopt_* API and enables shader optimisation)
  option(DH2_STORM_GLSLOPT "Enable glsl-optimizer in StormGLOFT" OFF)
  if(DH2_STORM_GLSLOPT)
    target_compile_definitions(StormGLOFT PRIVATE STORM_HAVE_GLSLOPT=1)
  endif()
endif()
