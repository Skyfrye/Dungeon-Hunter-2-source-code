# Multiplayer (owner MP1, 2026-10-17)

## Modes (from `OnlineGameState::Init(mode)`, `CMatching::SetMatchingProvider`)

| mode | provider | class | transport | state |
| --- | --- | --- | --- | --- |
| 1 | LAN / WiFi | `CMatchingLocal` | UDP broadcast discovery, then TCP + UDP per peer | **works** (two runner instances, below) |
| 2 | Bluetooth | `CMatchingBluetooth` (not a `CMatching` subclass in the port) | RFCOMM through `GLBluetooth*` Java | not testable on the host; see "Bluetooth" |
| 3 | Gameloft Live online | `CMatchingGLLive` + `GLXPlayer*` HTTP | HTTP to `gllive.gameloft.com`, then the same packet layer | servers gone; degrades without hang/crash |
| 4 | GL Live + Game Center (iOS) | `CMatchingGLLive` | as 3 | iOS only |

Layers (all reconstructed): `CTransportManager` (UDP/TCP/Bluetooth transports, 0x1A78 = port 6776 for broadcast, payload <= 0xFF8) ->
`CConnectionManager` (handshake, keep-alive, lag/timeout, packet type 5 = connection control, 6 = packet-manager frame) ->
`CPacketManager` (frames carrying up to four slots: 0 matching/room/member table, 1 `CMessaging`, 2 `CNetPlayerManager` player records, 3 `ObjectManager` object net data) ->
`CMessaging` (13 message types: StartGame, ControllerAction, AttackResult, RaisedEvent, MenuReady, ScriptCmd, InitialSetup, QuestsSync, DropLoot, IsHost, SpawnObject, GlobalDeath, AskResendAttributes; reliable, acked by member bit, served by the server's forwarding).

## LAN co-op: how to run two instances

```
cmake ... -DDH2_HOST_RUNNER=ON ; ninja dh2_win_headless          (own build dir, e.g. build/own-mp1)
robocopy <data> build/own-mp1/dataA ; robocopy <data> build/own-mp1/dataB      (each instance writes its savegames)
port/decomp-reconstruction/host-runner/run_mp.sh build/own-mp1 build/own-mp1/dataA build/own-mp1/dataB mp_host.txt mp_join.txt 4600 t1
```

`run_mp.sh` starts host and joiner with `DH2_PACE=1` (wall-clock frames so the two processes advance together), `DH2_NET_SHARE_PORT=1` (host-runner only: `SO_REUSEADDR` on the
broadcast port 6776, so both processes can listen on one machine; Winsock then delivers a broadcast to every socket on the port, loopback included) and
`DH2_NET_TRACE=<file>` (one packet trace per process: sends, receives, connect/accept, message types). The bot command `mp` (host_bot.cpp) drives what the Flash menu natives do:
`mp init 1|2|3`, `mp create`, `mp search`, `mp join <n>`, `mp start`, `mp leave`, `mp status` (prints the matching table, connections, every player record with class, loading flags, position, hp).
Scripts: `scripts/mp_host.txt` + `mp_join.txt` (play together), `mp_host_dc.txt` + `mp_join_dc.txt` (joiner leaves), `mp_host_hostquit.txt` + `mp_join_hostquit.txt` (host leaves),
`mp_gllive.txt`, `mp_bt.txt` (single instance, the other modes). There is no interface option: the original binds `INADDR_ANY` and broadcasts to `255.255.255.255:6776`, which is exactly what
runs on the loopback/LAN adapter; only the port sharing is a host addition.

Result (4600 frames, `001_swamp`): host creates a room, the joiner finds it by broadcast, joins (TCP+UDP handshake, member id 17 assigned), both load the level, the host sends the quest sync,
the initial setup (host position) and the object net data, both become ready to roll, loading ends (load step 38), and both play. Checked at frame 4500: both instances show the same
enemies alive/dead (32/6), the same loot left (15), the same gold; the remote hero stands within 1-2 units of where the other instance has it; hp and deaths replicate;
the joiner's attacks kill enemies on the host. Disconnect: when the joiner leaves, the host drops the connection, the member table and the player record and keeps playing;
when the host leaves, the joiner takes over as server (server backup list) and keeps playing (see "Left").

## Bugs found and fixed (binary wins; each checked against the asm/Hex-Rays)

1. `CMatchingLocal::JoinRoomInternal` / `ProcessServerMessage`: a separate `joinThreshold_` field (always 0) shadowed the base `memberCapacity_` (+0x08, the `Initialize(4)` argument), so every join answered "room full". Now the base field.
2. `connection_env.hpp` stand-ins (still in the production build): the handshake sent local id 0 (the host accepted every joiner as member 0), `AddEvent` dropped the connect/disconnect/lag events, `PacketTransportType` was always 0, `ReportDisconnect`/`PingReference` were no-ops. New `net-transport/src/connection_env.cpp` reaches the live `CMatching`, `CConnectionManager`, `COnline` (the old answers remain when none exists, for the unit tests).
3. `CMessage::Serialize` wrote `header_.type` (the serial, +0x04) as the type id byte; the binary writes the byte at +0x10 (`WireTypeId`). The receiver built the wrong message class (the first run crashed in `HandleQuestsSyncMessage`). `tests/c_message_test.cpp` helper updated (`header_.reserved`).
4. `CMatching::ConnectedMemberIds` default returned `{}` and `CMatchingLocal` did not forward the `ConnectionMemberIdList` / `IsConnectedMember` / `DisconnectMember` seams: the host never put a joined client into the member table, the room mask lacked it, `ObjectManager::ForceFullUpdate` queued nobody. Now `GetMemberIdList()` and the connection manager.
5. `ObjectManager::ForceFullUpdate`: the mode test gates only the key-1 injection (modes 3, 4), not the member loop (the listing's `BHI` skips the block, not the function). The old early return left a LAN client's `ObjectManager::unk_160` at 0 (never ready to roll).
6. `PlayerManager::_ManageCharacters`: the local record's loading flag was written to `m_inCutscene` (+0x505) instead of `m_doneLoading` (+0x525, Player+1317 in the Hex-Rays), and the ready-to-roll check tested the wrong pair. Online levels waited at load step 36 for ever.
7. `PlayerManager::_ManageCharacters` host handshake: `CMsgInitialSetup` carried the savegame level/class/date; the binary sends the host character position (Character +0x160..+0x168), which `HandleInitialMessage` hands to `PlayerManager::InitialSetup`. The joiner's hero was placed at garbage.
8. Net transport on Windows (previous run): `WSAStartup`, `CUdp::IsConnectedTo` (reads the transport's own create flags; the 6776 socket never counted as connected, so no broadcast left the machine).
9. Host-runner additions (not in the original, `DH2_HOST_RUNNER` only): packet trace, `DH2_NET_SHARE_PORT`, the `mp` bot command, `run_mp.sh`, `net_trace.hpp`.
10. Port deviation MP2 (2026-10-18, two real phones: the room was listed but joining failed): `CSocket::GetLocalAddress` (the address a room advertises and a joiner sends in its handshake) took the first up, non-loopback interface. On a current phone mobile data stays up next to Wi-Fi, and on the Galaxy S942B `rmnet1` (cellular, 10.25.x) is listed before `wlan0`, so the room advertised an address the other phone cannot reach; discovery still worked because the broadcast arrives over Wi-Fi. On POSIX the port now prefers a Wi-Fi / LAN interface (`wlan*`, `swlan*`, `ap*`, `eth*`, `en*`) and keeps the original rule when there is none; Android logs the choice once per change under logcat tag `DH2NET`. The two-instance runner test could not show this: on one machine both ends share every address.
11. `MultiplayerCallback::roomLobbyUpdate` (state 201) and `lobbyUpdate` (state 200): the binary goes on only when COnline +0x05 is set and room attribute 7 is zero; the port returned for attribute 0 (the value of a LAN room), so `RefreshServers` and `updatePlayerList` never reached the Flash pages. The join page reads the room list once on entry (`NativeGetMultiplayerGameRooms`, still empty then) and is only refreshed by `RefreshServers`, so on the phones a joiner kept a stale list and its join answered "the room no longer exists"; the host lobby did not list the joiner. The two-instance bot test missed it because `mp join` fills the room list itself. Checked through the real menus with two runner copies (`build/mp-ui`: wireless > host / join > Ready > Start): the room is listed, the join connects (member 17), the host lobby lists the joiner, and both load `022_swamp2`. Host-runner-only `[mp]` trace lines now cover the room list, the search reset, the join natives and every multiplayer state callback.

## Online (mode 3): degradation without servers

Flow: `OnlineGameState::Init(3)` -> `CMatchingGLLive` -> `CSignIn` (`GLXPlayerLogin`) -> `GLXPlayerSereverConfig::LoadConfig`.
With no reachable server the host-runner stays in `OnlineGameState` state 102 (searching) with the sign-in not completed; nothing hangs, nothing crashes, 2400 frames end with exit 0 (`mp_gllive.txt`).
The in-game menu path (sign-in screen, "connection failed" message, return to the main menu) is the original's own error path through `LoadingFinished`/`GoToMainMenu`; it was not driven through Flash here.

What a private server must provide (all HTTP, `GLXPlayerHttp::sendByGet`/`sendByPost`, form `f|<kind>|i|<GGI>|u|<uid>|...|` plus `&v=<version>`):
- `GET http://gllive.gameloft.com/ope/ServerConfig.php` (hard-coded in `glx_player_serever_config_io.cpp`, `kServiceUrl`): a key/value text answering `min`, `latest`, `ChatRoomDomain`, `ChatDomain`, `ChatServer`, `type`, `XPPHPVerNo`, `XPlayMPURL` (multiplayer lobby server, host/port split at the third `/`), `XplayDWURL`, `XplayerURL` (login/message/leaderboard PHP endpoint).
- Login (`glx_player_login_requests.cpp`): kinds 15 (login: user, password, optional `o|ordinal|d|device|n|1|l|lang|t|time`), 11 (register), 107 (`0x6b`, profile/UID), 108 (`0x6c`), 95, 83, 16, 17.
- Messages (kinds 74, 75, 77, 76..): inbox/send/delete; leaderboards (kinds 110 `0x6e`, 111 `0x6f`, 112 `0x70`: `p|`, `t|`, `x|`, `c|`, `l|first|`).
- Multiplayer lobby (`glx_player_mp_lobby.cpp`, ~1000 lines): a lobby protocol on `XPlayMPURL` host:port (transport and framing not analysed here) (create/join room, room list push, start game), then game traffic goes peer to peer through the same `CConnectionManager` as LAN with the host's address supplied by the lobby (`CMatchingGLLive::GenerateNewMemberId` = -1: the lobby assigns member ids).
The wire details of each kind are in the `glx_player_*_requests.cpp` and `glx_player_*` parsers; none of it has been exercised against a live server.

## Bluetooth (mode 2) on Android

Java side (`GLBluetooth`, `GLBluetoothService`) uses the classic RFCOMM API with UUID `b81345-2396-cf00-4533-b190df558100` (malformed first group, `UUID.fromString` accepts it), `startDiscovery`, a discoverable request. The manifest declares only
`BLUETOOTH` and `BLUETOOTH_ADMIN` (`targetSdk 28`, `minSdk 26`). On a modern device (Android 12+ / API 31+) a build with `targetSdk 28` runs in compatibility mode but discovery needs the runtime permissions
`BLUETOOTH_SCAN`, `BLUETOOTH_CONNECT`, `BLUETOOTH_ADVERTISE` (and, below 12, `ACCESS_FINE_LOCATION` for `startDiscovery`) which the app never requests, so discovery and `listenUsingRfcommWithServiceRecord` fail with `SecurityException`/empty results.
Testing therefore needs either two physical phones with a build that requests those permissions (add them to `AndroidManifest.xml` and a runtime request in `DungeonHunter2`), or an emulator pair: the Android emulator has no Bluetooth,
so the packet layer can only be exercised through the LAN path. The native side (`bluetooth_transport.cpp`, `bluetooth_socket.cpp`, `c_matching_bluetooth.cpp`) follows the same packet layer as LAN; with the JNI stub it creates a room and stays in its menus (`mp_bt.txt`, state 200, no crash).

## Left

- Host migration: after the host leaves, the joiner becomes server (server=17, host record 17) and keeps running, but its hero stands at (0,0,0) with 53 characters (one duplicate); `PlayerManager::OnHostChangedNotification` should be checked against the binary.
- Loot/containers were compared by count only (`lootLeft` equal); opening a chest on one side and seeing the drop on the other was not scripted.
- Window runner (ANGLE) with two windows: same code path, not run.
- The GL Live menu error path and Bluetooth on hardware are not tested (see above).
- Unit tests `c_message_test`, `c_matching_local_*` compile (`check_tu.sh`) but were not linked and run here (the test link needs the whole library group).
