#!/usr/bin/env bash
# Batch-local probe, NOT part of the build and not a supported tool: `check_tu.sh --test` cannot link
# core-platform/tests/perf_counters_test.cpp on its own (it needs PerfCounters, DebugSwitches, IDevice and
# CNullDriver), and the brief forbids running ninja/cmake/ctest, so this links that one test against the
# ALREADY-BUILT build/tb-int archives with a plain g++ command line to exercise the reconstructed
# PerfCounters::Draw() end to end. Written for the core-platform batch of the parallel-worker round; delete
# it whenever it stops being useful. It builds build/tb-int/perf_counters_probe.exe; run that and expect
# "perf_counters: ok". The absolute `root=` below is this worktree's path.
set -uo pipefail
root=<home>/Documents/Projects/Dungeon\ Hunter\ 2\ Recomp/DH_sc/.worktrees/track-b
dr=$root/port/decomp-reconstruction
build=$root/build/tb-int
cxx=${CXX:-g++}
flags=(-std=c++17 -Wall -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unknown-pragmas)
engine=(core-platform pydata-accessors net-transport net-session-online vox-audio tinyxml-and-c-libs glitch-core-io glitch-video glitch-scene-collada-gui)
inc=(-I"$dr/vox-audio/include" -I"$dr/game/include" -I"$dr/shared/include")
for c in "${engine[@]}" vendor-lua vendor-box2d vendor-gameswf; do inc+=(-I"$dr/$c/include"); done
inc+=(-DNOMINMAX -DTIXML_USE_STL -DTU_CONFIG_LINK_TO_JPEGLIB=0 -DTU_CONFIG_LINK_TO_LIBPNG=0 -DTU_CONFIG_LINK_TO_FREETYPE=0 -DTU_CONFIG_LINK_TO_THREAD=0)
for v in vendor-lua/upstream/lua-5.1.4/src vendor-box2d/upstream/box2d-2.0.1/Include \
         vendor-box2d/upstream/box2d-2.0.1/Source vendor-gameswf/upstream/gameswf-r1714 tinyxml-and-c-libs/upstream/tinyxml-2.5.3; do
  inc+=(-isystem "$(cygpath -m "$dr/$v")")
done

srcs=(
  port/decomp-reconstruction/core-platform/tests/perf_counters_test.cpp
  port/decomp-reconstruction/core-platform/src/perf_counters.cpp
  port/decomp-reconstruction/glitch-video/src/null_driver.cpp
  port/decomp-reconstruction/glitch-video/src/material_renderer_manager.cpp
  port/decomp-reconstruction/glitch-core-io/src/device.cpp
)
srcs=("${srcs[@]/#/$root/}")
"$cxx" "${flags[@]}" "${inc[@]}" -Wl,--allow-multiple-definition "${srcs[@]}" \
  -Wl,--start-group "$build"/libdh2_*.a -Wl,--end-group -lws2_32 -static \
  -o "$root/build/tb-int/perf_counters_probe.exe"
