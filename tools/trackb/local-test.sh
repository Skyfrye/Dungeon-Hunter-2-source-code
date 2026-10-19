#!/usr/bin/env bash
# One-shot: compile a Track B test and link it exactly as build/tb-int does (same archive order,
# same --allow-multiple-definition), then run it. Used because the shared ninja build is off limits.
#   tools/trackb/local-test.sh <category>/tests/<file>_test.cpp <exe-name>
set -uo pipefail
root="$HOME/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b"
dr="$root/port/decomp-reconstruction"
build="$root/build/tb-int"
src="$1"        # e.g. game-anim/tests/r2a-game-anim-AnimationSet-4fa4a6-0_test.cpp
exe="$2"        # e.g. dh2_game_anim_r2a-game-anim-AnimationSet-4fa4a6-0_test.exe
srcrel="${src#port/decomp-reconstruction/}"
cat="${srcrel%%/*}"
out="$build/CMakeFiles/local-test.dir/$(basename "$src").obj"
mkdir -p "$(dirname "$out")"

incs=("-I$dr/$cat/include" "-I$dr/game/include" "-I$dr/shared/include")
for c in core-platform pydata-accessors net-transport net-session-online vox-audio tinyxml-and-c-libs \
         glitch-core-io glitch-video glitch-scene-collada-gui vendor-lua vendor-box2d vendor-gameswf; do
  incs+=("-I$dr/$c/include")
done
for v in vendor-lua/upstream/lua-5.1.4/src vendor-box2d/upstream/box2d-2.0.1/Include \
         vendor-box2d/upstream/box2d-2.0.1/Source vendor-gameswf/upstream/gameswf-r1714 \
         tinyxml-and-c-libs/upstream/tinyxml-2.5.3; do
  incs+=("-isystem" "$dr/$v")
done

echo "== compiling $srcrel"
if ! g++ -O3 -DNDEBUG -std=gnu++17 -flifetime-dse=0 -Wall -Wno-unused-variable -Wno-unused-but-set-variable \
     -DNOMINMAX -DTIXML_USE_STL -DTU_CONFIG_LINK_TO_FREETYPE=0 -DTU_CONFIG_LINK_TO_JPEGLIB=0 \
     -DTU_CONFIG_LINK_TO_LIBPNG=0 -DTU_CONFIG_LINK_TO_THREAD=0 \
     "${incs[@]}" -c "$dr/$srcrel" -o "$out"; then
  echo "COMPILE FAILED"; exit 1
fi

echo "== linking $exe"
libs=(libdh2_core_platform.a libdh2_pydata_accessors.a libdh2_net_transport.a libdh2_net_session_online.a
      libdh2_vox_audio.a libdh2_tinyxml_and_c_libs.a libdh2_glitch_core_io.a libdh2_glitch_video.a
      libdh2_glitch_scene_collada_gui.a libdh2_vendor_lua_dh2.a libdh2_vendor_box2d_dh2.a libdh2_vendor_gameswf_dh2.a
      libdh2_game.a libdh2_vendor_lua.a libdh2_vendor_box2d.a libdh2_vendor_gameswf.a libdh2_vendor_tinyxml.a
      libdh2_vendor_freetype.a libdh2_vendor_jpeg.a libdh2_vendor_libtess.a libdh2_vendor_mpc.a
      libdh2_vendor_stb_vorbis.a libdh2_vendor_zlib.a libdh2_test_link_stubs.a)
prefix=()
for l in "${libs[@]}"; do prefix+=("$build/$l"); done
# Other workers rebuild these archives concurrently; a link that catches one mid-write is retried.
for attempt in 1 2 3 4 5; do
  if g++ -O3 -DNDEBUG -static-libgcc -static-libstdc++ -static -Wl,--allow-multiple-definition \
       -Wl,--start-group "$out" "${prefix[@]}" -Wl,--end-group \
       -lws2_32 -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32 \
       -o "$build/local-$exe"; then
    break
  fi
  if [[ $attempt == 5 ]]; then echo "LINK FAILED"; exit 1; fi
  echo "   (retry $attempt)"
  sleep 5
done

echo "== running $exe"
"$build/local-$exe"
echo "exit=$?"
