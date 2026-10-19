#!/bin/bash
# usage: symbolize.sh 0xa0d150 [...]   (pc offsets from a tombstone, against the unstripped libdh2.so)
NDK=<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/ndk/29.0.14206865/toolchains/llvm/prebuilt/windows-x86_64/bin
"$NDK/llvm-addr2line.exe" -f -C -i -e build/own-arm64/libdh2.so "$@"
