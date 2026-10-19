#!/bin/bash
cd "$(dirname "$0")/../../.."
timeout ${1:-110} bash -c 'until [ -f build/own-r/g.done ]; do sleep 5; done'
if [ -f build/own-r/g.done ]; then grep -q "BUILD FAILED" build/own-r/it.log && grep -E "error:" build/own-r/ninja.log | head -3; tail -3 build/own-r/game.out | cut -c1-140; else echo "still running"; fi
