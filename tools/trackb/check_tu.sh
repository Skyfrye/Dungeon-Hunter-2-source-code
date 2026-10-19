#!/usr/bin/env bash
# Compile-check single files the way the Track B build compiles them, without a full build.
#   tools/trackb/check_tu.sh port/decomp-reconstruction/game-world/src/Door.cpp
#   tools/trackb/check_tu.sh port/decomp-reconstruction/game/include/dh2/Door.hpp   # header on its own
#   tools/trackb/check_tu.sh --test port/decomp-reconstruction/game-world/tests/door_test.cpp src1.cpp ...
# A .hpp is checked by compiling a translation unit that includes only it (headers must be
# self-contained). --test links the test with the listed sources and runs it.
# Exit status 0 means every file compiled (and the test passed).
set -uo pipefail
root=$(cd "$(dirname "$0")/../.." && pwd)
dr=$root/port/decomp-reconstruction
cxx=${CXX:-g++}
flags=(-std=c++17 -Wall -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unknown-pragmas)
engine=(core-platform pydata-accessors net-transport net-session-online vox-audio tinyxml-and-c-libs glitch-core-io glitch-video glitch-scene-collada-gui)

includes_for() {  # one include set for every folder: own include dir first, then everything (TRACK-B.md)
  local rel=${1#"$dr"/}; rel=${rel#port/decomp-reconstruction/}
  local cat=${rel%%/*}
  local d
  for d in "$dr/$cat/include" "$dr/game/include" "$dr/shared/include"; do
    [[ -d $d ]] && echo "-I$d"
  done
  for c in "${engine[@]}" vendor-lua vendor-box2d vendor-gameswf; do
    [[ -d $dr/$c/include ]] && echo "-I$dr/$c/include"
  done
  for d in -DNOMINMAX -DTIXML_USE_STL -DTU_CONFIG_LINK_TO_JPEGLIB=0 -DTU_CONFIG_LINK_TO_LIBPNG=0 -DTU_CONFIG_LINK_TO_FREETYPE=0 -DTU_CONFIG_LINK_TO_THREAD=0; do
    echo "$d"
  done
  for v in vendor-lua/upstream/lua-5.1.4/src vendor-box2d/upstream/box2d-2.0.1/Include \
           vendor-box2d/upstream/box2d-2.0.1/Source vendor-gameswf/upstream/gameswf-r1714 tinyxml-and-c-libs/upstream/tinyxml-2.5.3            ../irrlicht-prototype/upstream/irrlicht-1.8.5/source/Irrlicht/zlib; do
    echo "-isystem"
    cygpath -m "$dr/$v" 2>/dev/null || echo "$dr/$v"
  done
}

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
test_mode=0
if [[ ${1:-} == --test ]]; then test_mode=1; shift; fi
status=0
if ((test_mode)); then
  t=$1; shift
  mapfile -t inc < <(includes_for "$(cd "$(dirname "$t")" && pwd)/$(basename "$t")")
  if "$cxx" "${flags[@]}" "${inc[@]}" "$t" "$@" -o "$tmp/t.exe" -lws2_32 -static 2>&1; then
    "$tmp/t.exe"; status=$?
    echo "test exit $status"
  else
    status=1
  fi
  exit $status
fi
for f in "$@"; do
  abs=$(cd "$(dirname "$f")" && pwd)/$(basename "$f")
  mapfile -t inc < <(includes_for "$abs")
  case $f in
    *.hpp|*.h) printf '#include "%s"\n' "$(cygpath -m "$abs" 2>/dev/null || echo "$abs")" > "$tmp/h.cpp"; src=$tmp/h.cpp ;;
    *) src=$abs ;;
  esac
  if "$cxx" "${flags[@]}" "${inc[@]}" -c "$src" -o "$tmp/o.o" 2>&1; then
    echo "OK   $f"
  else
    echo "FAIL $f"; status=1
  fi
done
exit $status
