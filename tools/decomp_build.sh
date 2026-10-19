#!/usr/bin/env bash
# Build and test port/decomp-reconstruction.
#   tools/decomp_build.sh host               # native compiler, fast iteration
#   tools/decomp_build.sh windows            # MinGW-w64 cross build, tests run under Wine
#   tools/decomp_build.sh windows core-platform   # one category only
# Windows: on a real Windows machine just run CMake with MinGW or MSVC.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
src=$root/port/decomp-reconstruction
mode=${1:-host}; shift || true
build=${DH2_DECOMP_BUILD:-$root/build/decomp-$mode${1:+-$1}}
args=(-G Ninja -S "$src" -B "$build" -DCMAKE_BUILD_TYPE=Release)
if [[ $mode == windows ]]; then
  args+=(-DCMAKE_TOOLCHAIN_FILE=$src/mingw-w64-x86_64.cmake)
  export WINEDEBUG=-all WINEPREFIX=${WINEPREFIX:-$root/build/wineprefix}
fi
cmake "${args[@]}" >/dev/null
targets=()
for cat in "$@"; do
  for t in $(ninja -C "$build" -t targets all | grep -o "^dh2_${cat//-/_}[A-Za-z0-9_]*\(\.exe\|\.a\)\?:" | tr -d :); do targets+=("$t"); done
done
ninja -C "$build" "${targets[@]}"
filter=()
if (($#)); then filter=(-R "^($(IFS='|'; echo "$*"))/"); fi
ctest --test-dir "$build" --output-on-failure "${filter[@]}"
