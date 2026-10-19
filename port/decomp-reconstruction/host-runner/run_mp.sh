#!/bin/bash
# Two host-runner instances on one machine, LAN/WiFi multiplayer (mode 1) over the loopback/LAN interface.
#   host-runner/run_mp.sh <build dir> <data dir A> <data dir B> <host script> <join script> <frames> <tag>
# e.g. host-runner/run_mp.sh build/own-mp1 build/own-mp1/dataA build/own-mp1/dataB mp_host.txt mp_join.txt 4600 t1
# Two COPIES of the game data folder are needed (each instance writes its savegames). Scripts come from host-runner/scripts/.
# DH2_NET_SHARE_PORT=1: both instances bind the room-search broadcast port 6776 (SO_REUSEADDR, host-runner only; the original has a single
# game per device). DH2_PACE=1: wall-clock pacing so the two processes advance together. DH2_NET_TRACE=<file>: packet trace, one file per pid.
# Output: <build>/<tag>A.txt and <tag>B.txt (runner + [mp] status lines), <tag>A/game.log, <tag>_net.<pid>.
set -u
B=$1; DA=$2; DB=$3; HS=$4; JS=$5; N=$6; T=$7
here=$(cd "$(dirname "$0")" && pwd)
S=$here/scripts
E=$B/host-runner/dh2_win_headless.exe
export DH2_PACE=1 DH2_NET_SHARE_PORT=1 DH2_NET_TRACE=$B/${T}_net
$E --data "$DA" --size 2400x1080 --frames "$N" --out "$B/${T}A" --log-every 100 --script "$S/$HS" > "$B/${T}A.txt" 2>&1 &
sleep 1
$E --data "$DB" --size 2400x1080 --frames "$N" --out "$B/${T}B" --log-every 100 --script "$S/$JS" > "$B/${T}B.txt" 2>&1 &
wait
