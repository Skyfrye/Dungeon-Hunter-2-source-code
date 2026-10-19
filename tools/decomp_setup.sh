#!/usr/bin/env bash
# Install what tools/decomp_build.sh needs in a fresh Debian or Ubuntu container:
#   host build:    cmake, ninja, a C++17 compiler
#   windows build: MinGW-w64 cross compiler, plus Wine to run the Windows tests
#   extraction:    unar (nested RAR archives in the IDA export)
# Idempotent: packages already installed are left alone. Run once per container:
#   tools/decomp_setup.sh
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
SUDO=""
if [[ $(id -u) -ne 0 ]]; then SUDO="sudo"; fi
export DEBIAN_FRONTEND=noninteractive

pkgs=(
  cmake ninja-build g++
  g++-mingw-w64-x86-64-posix gcc-mingw-w64-x86-64-posix binutils-mingw-w64-x86-64
  mingw-w64-common mingw-w64-x86-64-dev libz-mingw-w64
  wine wine64 libwine fonts-wine
  unar
)

$SUDO apt-get update -qq
$SUDO apt-get install -y -qq "${pkgs[@]}"

# Check the tools the build calls. Fail here rather than halfway through a build.
for tool in cmake ninja g++ x86_64-w64-mingw32-g++ wine unar; do
  command -v "$tool" >/dev/null || { echo "missing after install: $tool" >&2; exit 1; }
done

# Create the Wine prefix that decomp_build.sh uses, so the first test run does not wait for it.
export WINEDEBUG=-all WINEPREFIX="$root/build/wineprefix"
timeout 300 wineboot -i >/dev/null 2>&1 || true

echo "decomp toolchain ready: $(cmake --version | head -1), $(x86_64-w64-mingw32-g++ --version | head -1), $(wine --version)"
