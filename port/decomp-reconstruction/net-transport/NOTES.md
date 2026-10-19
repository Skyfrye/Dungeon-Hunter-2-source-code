# net-transport notes

Low-level multiplayer networking. Queue: 794 functions (`queue.csv`). Ledger: 365 rows
(285 reconstructed, 52 partial, 28 skipped, after the Hex-Rays re-run); 429 queued
functions are still unledgered.
Wave 3 added 177 rows (139 reconstructed, 25 partial, 13 skipped).

## Classes completed

Earlier waves:

- `Buffer` (6 rows): block-chunked byte store, `include/net-transport/buffer.hpp`.
- `CMutex`, `CSemaphore`, `CReadWriteLock`, `CNetMutex`, `Thread` (sync shells):
  `include/net-transport/sync.hpp`.
- `NetBitStream` (28 rows): MSB-first bit stream, `include/net-transport/net_bit_stream.hpp`.
- `NetBitStreamArray` (7 rows).
- `NetStructUInt<1|5|8|32>`, `NetStructBool`, `NetStructRangedFloat<..>`,
  `NetStructNetworkId`: `include/net-transport/net_struct.hpp`.
- `CNetworkId` (7 rows): `include/net-transport/net_network_id.hpp`.
- `CNetworkEmulation` (23 rows) and `CNetLog` (4 rows).
- `CAndroidSocket` (36 rows): see its own section below.

Wave 3 (all rows of the class are in the ledger):

- `StreamBuffer` (21 rows), `BufferedStream` (1 row): `stream_buffer.hpp`, `buffered_stream.hpp`.
- `DataPacket` (8 rows): virtual base with no-op addBlob/getBlob.
- `CTransport` (6 rows): abstract base, `transport.hpp`.
- `CSocketAbstract` (3 rows), `CSocket` (24 rows): `socket_abstract.hpp`, `csocket.hpp`.
- `CTcp` (20 rows): `ctcp.hpp`.
- `CBluetoothSocketAbstract` (9 rows), `CBluetoothSocket` (21 rows): `bluetooth_socket.hpp`.
- `updateJob_thread` (13 rows): `update_job_thread.hpp`.
- `NetStructInterpolation<float>` destructors (2 of 3 queued rows), see Remaining.

Partly done in wave 3 (the rest is listed under Remaining):

- `CUdp` (15 of 16): everything except `CUdp::Receive`.
- `CBluetoothReliable` and `CBluetoothUnreliable` (15 of 30 each): the leaf virtuals
  and accessors are in `bluetooth_transport.hpp`. The constructors, destructors,
  Create, InitializeTransport, Open, Listen, Connect, AcceptConnections,
  GetPeerNetworkId and GetLocalNetworkId are not done.
- `NetStructInterpolatedRangedFloat<Bits,Min,Max>` (4 of 8): destructors done, see Remaining.

## Inferred layouts

NetBitStream (32-bit offsets): +0x04 buffer, +0x08 size (bytes), +0x0C read bit pos,
+0x10 write bit pos, +0x14/+0x18 saved read/write pos (SetRevertPoint),
+0x1C flags (bit0 read overflow, bit1 write overflow). Bits are MSB first.
`ReadByte` checks available data against the write position, so a receiver must
fill the stream with WriteStream/WriteByteArray before reading. SetBuffer alone
does not make data readable.

Buffer: +0x00 block size (default 0x800), +0x04..0x0C block vector (with a trailing
nullptr sentinel), +0x10 size, +0x14 "sized" flag. Accessors `block_size()` and
`FirstBlock()` were added for StreamBuffer.

CNetworkId: +0x00 address0 and +0x08 address1, each 8 bytes = {u16 lo, pad, u32 hi}
(a 48-bit address), +0x10 and +0x14 u32 fields, +0x18 presence flags
(bit0 = address1, bit1 = address0, bit2 = field2, bit3 = field3). Transport N
corresponds to presence bit N-1. Accessors SetAddress0/SetAddress1/GetAddress0/GetAddress1
were added for the transports.

Thread: vtable +0x08 Init, +0x0C Step (the loop body), +0x10 Cleanup;
+0x04 worker handle, +0x08 stop flag.

CNetworkEmulation: sets at +0x1C with stride 0x24, two sets, 9 fields each
(delay, jitter, loss rate, loss param, duplicate rate, reorder rate, two int
reorder params, one float reorder param). Peak timer at +0x08..+0x18.

StreamBuffer (implements IStreamBase): +0x08 read position and +0x10 write position
(64-bit in the port: low word at +0x08 and +0x10, high word at +0x0c and +0x14), embedded
Buffer at +0x18 (block size +0x18, block vector +0x1c, size +0x28, sized flag +0x2c).
The 64-bit position model is a port decision; the 32-bit offsets stay as comments.

BufferedStream: +0x00 data (new[] of the source size), +0x04 size.

DataPacket: vtable +0x4c addBlob and +0x50 getBlob (no-op virtuals in the port);
GetMessageType and GetMMOMessageType return -1.

CTransport (abstract): vtable +0x08 Connect, +0x14 Disconnect, +0x30 StartBroadcast,
+0x34 StopBroadcast.

CSocketAbstract: +0x04 handle (int, -1 when closed), +0x08 valid flag (set by Assign),
+0x0a connected flag (copied from IsConnected() by Assign). Accessors Handle(), IsValid()
and IsConnectedFlag() are not in the original; the tests use them.

CSocket (on CSocketAbstract): +0x09 can-open flag (1 until a socket is opened; OpenUDP and
OpenTCP check it), +0x0b listening flag (set by Listen), +0x0c peer address (in_addr,
set by Accept), +0x10 peer port (host order, set by Accept).

CUdp: +0x00 vptr (CTransport base), +0x04 create flags (the argument of CreateByPort),
+0x08 CSocket (its valid byte is the +0x10 byte that CUdp tests). Static
`CUdp::s_initialized_` (`_ZN4CUdp13s_initializedE`).

CTcp: +0x00 vptr, +0x04 create flags, +0x08 CSocket (valid byte at +0x10, listening
byte at +0x13). Static `CTcp::s_initialized_`.

CBluetoothSocketAbstract: std::string device_name_ at +0x04; the virtuals return
constants, as the original stubs do.

CBluetoothSocket: all original stubs, reproduced as constant returns.

CBluetoothReliable (GetType 4) and CBluetoothUnreliable (GetType 3): +0x08 CBluetoothSocket,
+0x2c flags (bit0 = listening), +0x68 initialized flag (set by Initialize, cleared by
Disconnect), static `s_initialized_`. IsListening = initialized_ && socket_.IsServer() && (flags_ & 1).

updateJob_thread: +0x00 vptr, +0x04 std::thread (pthread_t in the original), +0x08 flag_
(set to true by the constructor), +0x0c argument_. Virtuals: Prepare +0x08,
Kernel +0x0c, Finish +0x10.

NetStructInterpolation<T> and NetStructInterpolatedRangedFloat<Bits,Min,Max>: header
templates with empty virtual destructors. The cpp holds the explicit instantiations.
The classes are abstract, so they cannot be constructed in tests. The interpolated
range-float constructor and PostLoad are not reconstructed yet.

## Socket layer (wave 3)

`include/net-transport/socket_platform.hpp` (namespace `net_platform`): NativeSocket,
kErrWouldBlock, kErrIsConnected, kErrInProgress, CloseSocket, LastError,
SetNonBlocking (fcntl on POSIX, ioctlsocket on Windows). The socket headers use
std::uint32_t where the original uses in_addr_t (not defined under Winsock), and htons/ntohs
for byte order.

Socket options (CSocket::SetSocketOptions, bit mask): bit1 (value 2) SO_REUSEADDR, bit0
(value 1) SO_BROADCAST, bit2 (value 4) TCP_NODELAY. SetSocketOptions returns the result of
the last setsockopt call made. OpenTCP and OpenUDP check it: a negative result closes the
socket and is returned (Hex-Rays re-run).

Accept sets O_NONBLOCK on the listening handle and records the peer address and port. The
accepted handle is returned and is not stored in the object, as in the original.

GetLocalAddress uses SIOCGIFCONF on POSIX. Winsock has no SIOCGIFCONF, so it uses
gethostbyname instead (partial). The probe socket is closed on every path.

## CAndroidSocket (36 rows, session 2)

Files: `include/net-transport/android_socket.hpp`, `src/android_socket.cpp`,
`tests/android_socket_test.cpp` (loopback UDP send/poll/recv). One source file serves
both platforms: POSIX headers, or winsock2 under `_WIN32` (Startup/Clearup call
WSAStartup/WSACleanup there).

Layout (32-bit offsets from the original): +0x04 status_ (7 = error), +0x08 fd_ (-1 when
closed), +0x0c host_ (hostent*, set by ConnectByName), +0x10 port_ (host byte order),
+0x820 socket_kind_ (1 TCP, 2 UDP/ICMP), +0x85c conn_state_ (0 idle, 1 in progress,
2 done, 3 failed), +0x860 worker_state_ (1 = lookup busy, disables the host cache),
+0x864 connect_start_ms_, +0x868 lookup_start_ms_, +0x86c ready_bits_[32] (the fd_set).
Clock is steady_clock truncated to int ms, like XP_API_GET_TIME. Timeouts: connect 30001 ms,
lookup 9999 ms.

Host cache: static array of 4 entries (l_host/l_count). Entries are deep copies made
from the system hostent. The ARM listing (`CAndroidSocket-fbded90aa208-001.asm`, at
0x841ca8) confirms the cache-hit path and the "return last entry when full" behaviour.

Not done here: the GLXPlayerSocket base (owned by net-session-online), its virtual
slots (the original calls them through the vtable; here they are direct calls), the
worker thread join in the destructor, and the object construction inside Accept().
Winsock SOCKET values are stored in an int, which assumes small handle values.

Bugs reproduced and flagged: Bind discards inet_addr() so it always binds INADDR_ANY;
Bind's port-retry loop has no exit if no port works; ConnectByName ignores its port
argument and uses port_.

## Decisions and original quirks (reproduced, flagged for review)

- Debug ASSERT and XP_DEBUG_OUT logging is dropped (gAssertLevel, debug prints).
  Functions that lose that output are marked `partial`. Examples: the sized-flag ASSERT in
  the StreamBuffer(IStreamBase) constructors, and XP_DEBUG_OUT in CAndroidSocket.
  A call whose result is discarded and that prints nothing is dropped without marking the
  function partial: strerror_r and inet_ntoa in CSocket, and GetLocalAddress and
  GetLocalPort in CUdp/CTcp::OpenSocket. The static `printed` counter in CSocket::Receive is
  incremented and never read in the export, so it is not kept.
- CSemaphore Wait/Release and CReadWriteLock methods are empty in the original. They
  are kept as no-ops (`partial`), so they are not real synchronisation. Real
  primitives need a decision before the game runs multi-threaded.
- NetBitStream copy constructor and operator= copy size and both bit positions
  (Hex-Rays re-run; the earlier "do not store size" note was a misreading). Both use
  nothrow allocation, and the original memsets a null buffer after a failed allocation
  (a crash) that the port skips, so both stay `partial`.
- NetBitStream::operator== returns memcmp == 0 (Hex-Rays re-run; the earlier "inverted"
  note was a misreading).
- WriteByte keeps the original `avail > 8` condition, so the last 8 bits of a
  stream cannot be written with WriteByte.
- Decompile dropped call arguments in ShiftMemCopy and WriteString. Those are inferred
  and marked `partial`. WriteU32's per-byte width and SetNetConditionPreset's default
  zeros are explicit in the Hex-Rays re-run.
- CNetworkId::IsEqual compares sums of present fields in two passes (as the
  original). Two ids compare equal when they share a present field and their sums
  match.
- CNetworkEmulation's time source (GetOnline() vtable slot 0) is replaced by
  steady_clock, and lrand48 is emulated in-file.
- std::thread replaces pthread_create/join; the destructor of Thread joins a running
  worker, which the original does not do. updateJob_thread does the same: its
  destructor joins a running worker. Start/Start2 return -1 while a worker runs; the
  original has no such guard (Hex-Rays re-run). Their worker is an empty Run() stand-in,
  because threadfun2 and threadfun3 are outside this category.
- CSocket::SendTo returns the sendto result (Hex-Rays re-run; the earlier "no return
  value" note was a misreading). CTcp::IsConnectedTo is GetPeerNetworkId().IsEqual(peer),
  CTcp::Send gates on IsConnectedTo(peer) through vtable slot +0x28, and
  CTcp::CanDisconnectFrom passes the IsConnectedTo result through (all reconstructed).
- CTcp::ReceivePackets reads up to 21 packets of 4096 bytes. CUdp::InitializeTransport
  calls AddTransport and CTcp calls AcceptCallback and AddTransport on the CTransportManager
  stand-in (deps/transport_manager.hpp). Those calls are no-ops for now.
- BufferedStream::FillBuffer stops on a zero-byte read instead of spinning (partial).
- No Bluetooth on Windows: CBluetooth* OS calls are constant-return stubs, as the
  original stubs are. The port keeps the logic and the constant results.
- Deleting destructors (D0) are compiler-generated and are marked `skipped`.

## Hex-Rays re-run

The 78 `partial` rows were re-done from the IDA Hex-Rays export (primary source), in place.
Result: 26 rows are now `reconstructed`, 52 stay `partial`, none skipped.

Now reconstructed:
- CSocket: GetPeerAddress, Receive, SendTo, SetSocketOptions (now `int`), Accept (returns
  the fd, 0 when no data, or the accept error), Connect, OpenTCP, OpenUDP.
- CUdp::OpenSocket; CTcp::OpenSocket, Send, IsConnectedTo, CanDisconnectFrom.
- CAndroidSocket::Bind (SO_REUSEADDR, then port+1, port+2, ... with no exit when none
  binds, as the original) and GetSocketPort (network-order port from sa_data).
- NetBitStream: WriteU32 and operator==.
- NetStructRangedFloat Read and Write for <18,-200000,200000>, <16,-50000,50000> and
  <16,-1,1> (6 rows). Divisors are 262140 for 18 bits and 65535 for 16 bits, as in the
  pseudocode. Writes saturate to u32 (ARM VCVT semantics).
- CNetworkEmulation::SetNetConditionPreset and GetReorderDelay (now `int`).
  CalcPercentage stays reconstructed with corrected notes.
- CNetLog::Update (empty body).

Corrections to earlier notes (Hex-Rays shows the original does this):
- NetBitStream copy constructor and operator= do store size and positions.
- NetBitStream::operator== is not inverted.
- CSocket::SendTo and CSocket::Accept return values (sendto result, accepted fd).
- OpenTCP and OpenUDP check the SetSocketOptions result.
- CalcPercentage uses its param and prev arguments; the rate argument is unused.
- CTcp::Send gates on IsConnectedTo(peer) (vtable slot +0x28).
- SetNetConditionPreset's default zeros and WriteU32's per-byte width are explicit.

Still partial (52), by main reason:
- Debug output only (18): 317014 setSize (debug ASSERT), 3171b8 and 3172d8 StreamBuffer
  ctors (debug ASSERT), 8455c0 Thread::Run, 317f58 and 317f74 updateJob Stop/Finish, and
  CAndroidSocket SendBroadcast, SetBroadcast, RecvFromUnkownIP, RecvFrom, SendTo,
  CreateSocket, Send, CloseSocket, ConnectTo, ConnectByName, SetNonBlocking (XP_DEBUG_OUT).
  CAndroidSocket Listen (840a04) is also debug-only, but its failure-path return value is
  not recovered either, so it is listed with the debug rows.
- Empty originals kept as no-ops per the decision above (6): CSemaphore Wait and Release,
  CReadWriteLock LockWrite, UnlockWrite, LockRead, UnlockRead. Hex-Rays confirms the bodies
  are empty. Real primitives need a decision.
- Stand-ins for CTransportManager (4): CUdp::InitializeTransport 8278fc, CTcp::ReceivePackets
  82a0d8, CTcp::InitializeTransport 82a464, CTcp::AcceptConnections 82a540.
- Platform substitutions (5): GetLocalAddress 827da0 and GetLocalIP 841fbc (no SIOCGIFCONF
  on Winsock), Clearup 84210c and Startup 842208 (Winsock init, signal() for sigaction),
  IsCurrectThreadRunning 84559c (joinable() instead of the pthread_kill probe).
- Null guards where the original would crash (5): Buffer::read 316568, Connect 84152c,
  operator= 80ee5c, copy ctors 80eef4 and 80ef8c.
- Inferred or truncated pseudocode (5): ShiftMemCopy 80eac8 (arguments lost), WriteString
  80edb0 (string layout), GetHostIP 841e4c (tail truncated), GetHostByName 841ca8 (STRNEW
  copy not reproduced), GetCurrentConditionSet 826fec (steady_clock).
- Object construction not reconstructed (5): the GLXPlayerSocket base is not reconstructed,
  so CAndroidSocket destructors 842260 and 8422d4 and constructors 84232c and 842430 are
  partial. Accept 842360 does not build the new socket object.
- Thread destructor 317e10 joins a running worker (std::thread), which the pseudocode
  does not show.
- updateJob_thread Start 317ef8 and Start2 317e98: the worker is threadfun2 or threadfun3,
  which are outside this category (Savegame::UpdateJobs, SavegameManager::saveSettings).
- BufferedStream::FillBuffer 42b1e4: the original spins on a zero-byte read; this port stops.

Tests added or extended: buffer_test (block-spanning read and write), net_struct_test
(18-bit RangedFloat round trip), net_bit_stream_test (copy and assign keep size and
positions; operator==). transport_test's FakeSocket now overrides `int SetSocketOptions`.

## Test coverage

tests/ (14 executables, all run by ctest): stream_buffer_test, transport_test,
csocket_test, udp_tcp_test, bluetooth_job_test, bluetooth_transport_test, buffer_test,
sync_test, net_bit_stream_test, net_bit_stream_array_test, net_struct_test, net_log_test,
net_network_emulation_test, android_socket_test. An interpolation test was tried and
removed, because the templates are abstract.

## Known Ghidra artifacts (left for ARM listing review)

- Noreturn CNetMutex::Lock tails truncate some pseudocode bodies.
- Some symbol ranges are misaligned: CConnectionManager (KeepAliveConnections,
  sReceiverCallback, Update, TerminateInternal). Not reconstructed from the pseudocode
  until checked against the ARM listing.

## Remaining (429 functions unledgered)

- Connection and transport managers: CConnectionManager (56), CConnection (26),
  Connection (35), ConnectionLobby (48), DataPacketLobby (50), DefaultDataPacket (42),
  CPacketManager (33), CTransportManager (35), CTransportManagerImpl (9),
  CTransportFactory (3). CConnectionManager and CConnection need CMatching and
  CEventQueueBase stand-ins in deps/. CTransportManager is a no-op stand-in for now.
- LCAndroidSocket (36): same socket layer as CAndroidSocket. Not started.
- NetStructArray<CMatching::MemberInfoNetStruct, 32> (6) and
  NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32> (6): vtable-driven
  (member size 0x36 words and 0x2B words).
- NetStructInterpolatedRangedFloat (4): <18,-200000,200000> and <16,-50000,50000>
  constructors (240 bytes each) and PostLoad (16 bytes each).
- NetStructInterpolation<float>::AddValue (1).
- CUdp::Receive (1, 340 bytes).
- CBluetoothReliable and CBluetoothUnreliable (15 each): constructors, destructors,
  Create, InitializeTransport, Open, Listen, Connect, AcceptConnections, GetPeerNetworkId,
  GetLocalNetworkId.
- CBluetoothNetRoomInfo (3): constructor and destructors.
- CDataStats<int> (5): GetAverage, GetSum, AddData, destructors.
- CTransportManagerImpl (9): GetHostname, GetLocalhostname, receiver thread start/stop.

## Wave 4 decisions (feature/decomp-net, 2026-10-12)

- Ledgers merged from the 8 net-transport slices (one row per address). Duplicate claims keep the stronger status.
- (Superseded) The stand-in was first renamed `CConnectionStandIn` to avoid the clash below.
  The real `CConnection` (connection.hpp / connection.cpp) has a different layout, so both cannot share one
  name in one binary: the test linked the stand-in methods against the real class's vtable and corrupted the heap.
  Resolved: the real class now has the accessors (State, MemberId, NetworkId, Key, SetTimeout, SetState,
  SetMemberId). The Hex-Rays evidence shows +0x1c is the member id (Connect stores its argument there, IsToServer
  compares it with CMatching slot 116), not a matching key. The ctor sets it to -14531089. The stand-in is deleted and
  the manager uses connection.hpp.
- Host and MinGW/Wine: net-transport 30/30 tests pass.

## Track B integrator decisions 2 to 5 (decisions-1)

- NetStruct is real: the vtable slots are declared in the original order (`tools/decomp_vtable.py NetStruct`), including
  HasDataToSend (+0x28), ConditionalLoad (+0x18), IsChanged, GetChangedBitMap, AreChangesAcknowledged(By), SetAckedBy,
  GetSizeBytes. Load, LoadInternal, Erase, SetEnabled, Resend (both forms), SetAckedBy, HasDataToSend, SerializeInternal,
  ProcessLostPacket and ProcessAcknowledgedPacket are written against the CMatching stand-in
  (`deps/connection_deps.hpp`: MemberBit = vtable +0x84, GetRoomMask 0x8000dc, LocalMemberId +0x6c; all test doubles).
  The Resend family, SetAckedBy, SetEnabled and AddPacketHistory return void: the pseudocode's int is the last callee's
  leftover R0 and nothing reads it.
- NetStructMember has the first slots of the original vtable: `Erase` (+0x00, pure), Write, Read, `PostLoad` (+0x0c),
  GetSizeBits, destructor. `NetStructMemberType<T>::Erase` is void for every T (the int/unsigned/bool/float/CNetworkId
  forms returned Load's leftover R0; the slot is only called as void and IDA shows no direct caller). The ByteArray and
  std::string forms restore without SetChanged, as the binary does.
- `NetStructMemberType<bool>` is a full class specialization: `value_` follows the NetStructMember base, which puts it at
  +0x1d as in the binary (a test checks it sits right after `changed_`). `NetStructBool` derives from it and
  `NetStructNetworkId` from `NetStructMemberType<CNetworkId>`, as the vtables say. `NetStructInterpolation<float>` is no longer
  a NetStructMember (it is a standalone polymorphic base at +0x24 of the interpolated float, as in 0x3a681c).
- NetStructInt, NetStructUInt, NetStructBool, NetStructString and the interpolated float set their NetStructMember base
  fields (`NetStructMember(int size_bits)`: bit size, -1 masks) in their constructors, as the inline constructors in
  CNetPlayerInfo (0x80fc28) and Door::NetStructDoor (0x3e80d4) do.
- ByteArray (the stand-in in `deps/byte_array.hpp`) owns its block: destructor, deep copy, move. Its allocation is
  `CustomAlloc` (malloc; `ByteArrayAllocate` before u2-net-transport) so it always pairs with `CustomFree` (free). The old `new[]` / `free` pair corrupted the heap
  whenever the test executable resolved `libstdc++-6.dll` from `C:\Program Files\Git\mingw64\bin` (msvcrt) ahead of the WinLibs
  UCRT one. The same DLL mix explains the 0xc0000139 (entry point not found) failures of the three core-platform tests on this
  machine: run the tests with the WinLibs `mingw64/bin` first on PATH.
- CNetPlayerInfo derives from NetStruct (0x130 bytes) and declares its blocks: +0x130 NetStructInt<17>, +0x158 <8> (member_id_),
  +0x180 <17> (conn_index_), +0x1a8 <16> (unk_1c8), +0x1d0 NetStructUInt<8> (state_), +0x1f8 <8>, +0x220 <8> (SetState), the
  NetStructString<32> at +0x248, applied_state_ at +0x280. The member id defaults to 0 (Reset does not write it). Copy
  construction and assignment are deleted (the original copies the member pointer array with memcpy).
- CNetPlayerManager::net_struct_ is the nested `NetStructPlayerManager` (NetStruct plus a NetStructInt<6> host member id at
  +0x130; manager +0x170). `net_player_manager_deps.hpp` keeps only the COnline stand-in. Still open: the two CEventQueueBase
  subobjects of the manager (+0x04, +0x180) that CNetPlayerInfo::Update posts to, AddPlayer, GetPlayerName, the constructor,
  Update(int) and ProcessEvents; CBluetoothNetRoomInfo can now use the real NetStruct base (not done here).

## Track B game/engine type unification (u2-gametypes)

- `StreamBuffer` and `IStreamBase` are defined once, in `game/include/dh2/StreamBuffer.hpp` and
  `game/include/dh2/IStreamBase.hpp`. `include/net-transport/stream_buffer.hpp` and `deps/i_stream_base.hpp` only
  include them. The member functions stay in `src/stream_buffer.cpp`.
- The stand-in declared `size(int)` as a pure slot of `IStreamBase`. The vtables show it is a slot `StreamBuffer`
  adds at +0x34 (`_ZTV11IStreamBase` is 60 bytes, `_ZTV12StreamBuffer` 64). The members are public (Track B decision 9).

## Track B engine unification (u2-net-transport)

- `CustomFree` and the allocator call of `deps/byte_array.hpp` are the canonical ones in `core-platform/memory.hpp`
  (`CustomFree` 0x310440 is `free`, `CustomAlloc` 0x310454 is `malloc` with the out-of-memory report). The header
  includes that file. `ByteArrayAllocate` is gone; `SetBuffer` allocates with `CustomAlloc`, the call the original's
  `operator new[](n, 2)` forwards to.
- The `#define CustomFree CustomFree_net_transport` / `MemoryHintState_net_transport` renames in the game and test
  sources existed only to keep the net-transport copy apart from the pydata one. They are removed (Character.hpp,
  Door and PlayerManager users, TriggerPlate, the game-app and game-world tests), since both now use the one
  canonical declaration.
- `ByteArray` itself stays in `deps/byte_array.hpp`. It is the game-app type (`game/include/dh2/ByteArray.hpp`), which
  differs in member names and the `SetBuffer` signature. Retiring this stand-in is the game-app wave's job; a
  translation unit must not include both until then.

## Net structure pass (2026-10-13, ledger part `ledger.d/net-structure.csv`)

The 106 layout requests of `reports/decomp-reconstruction/trackb-batches/r1n-result.json` were checked against the binary
(`decomp_extract`, `decomp_asm`, `decomp_vtable`, read-only IDA) and applied, the binary winning wherever the request text
differed. This section supersedes the earlier statements in these notes about the `deps/transport_slots.hpp`,
`deps/connection_deps.hpp` and `deps/data_packet_payload.hpp` stand-ins (all three are deleted), the function-local
`GetTransportMgr()`, and the open list at the end of "Track B integrator decisions 2 to 5".

Decisions applied:

- **Sockets.** `CAndroidSocket` derives from `GLXPlayerSocket` (net-session-online), whose platform slots are now the pure
  virtuals of the binary vtable (34 slots, `tools/decomp_vtable.py GLXPlayerSocket`: GetHostByName +0x20 ... SendBroadcast +0x84).
  The shared fields are the base's (state +0x04, socket +0x08, port +0x10, socket type +0x820, connect state +0x85c, lookup
  state +0x860); the members are public (decision 9). `CAndroidSocket` adds only `ready_bits_` (+0x86c), the lookup worker
  `worker_thread_` (+0x8ec) and `host_request_` (+0x8f0). The destructor joins the worker when the lookup state is nonzero and the
  thread is joinable (a `std::thread` must not be destroyed joinable: the one deviation, shared with `LCAndroidSocket`).
  **Deviation from the request text:** `LCAndroidSocket` derives from `LCXPlayerSocket`, not from `GLXPlayerSocket`. The ARM
  constructor calls `LCXPlayerSocket::LCXPlayerSocket` (0x8a03bc), and `LCXPlayerSocket` has its own vtable (27 slots, its own
  names and signatures: `bool Connect()`, `bool ConnectByName(const char*)`, `void Listen(int)` ...). The two socket families are
  separate classes in the binary.
- **CNetworkId.** `SetField2` and `SetField3` set the value and the presence bits 0x4 and 0x8. The Bluetooth id getters, both
  `InitializeTransport` bodies and `CTransportManager::GetListenNetworkId` / `IsTransportAvailable` / the broadcast `Send` use them.
- **CTransport.** The slots are declared at their offsets: Send +0x0c, Receive +0x10, GetLocalNetworkId +0x18, GetPeerNetworkId +0x1c,
  GetType +0x20, IsConnected +0x24, IsConnectedTo +0x28, CanDisconnectFrom +0x2c (pure), plus `create_flags_` at +0x04 (bit 0 listening).
  `Send` takes `(const CNetworkId& peer, const void*, int length)`: the pseudocode passes the length twice, the second word is a leftover
  register. CTcp, CUdp, CBluetoothReliable and CBluetoothUnreliable override them; the `transport_slots` shims are gone.
- **GetTransportMgr() and the Impl.** `GetTransportMgr()` returns the singleton `CTransportManager*` (the `.` call sites are `->`).
  `CTransportManager` is abstract as in the binary: `StartReceiverThread` (+0x08), `StopReceiverThread` (+0x0c), `GetHostname(CNetworkId&)`
  (+0x1c) and `GetLocalhostname()` (+0x20) are pure, `InitializeInternal`/`TerminateInternal` virtual, and `CTransportManagerImpl`
  (receiver thread at +0x108, 0x110 bytes) is what `CTransportManager::Initialize` creates. The Impl is reached through the
  virtual slots only, so callers never name it. `Update()` is the tail-call thunk to `SetThreadTimestamp` at 0x81aca4.
  `game/include/dh2/global/net_singletons.hpp` already declared the pointer form: no edit was needed.
- **DataPacket.** The full 45-slot vtable is declared in order. `getMessageLen()` (+0x60) and `getMessageBody()` (+0x64) are pure;
  `getMessageBody` returns `char*`; `setMessageBody` (+0x68), `setIP`, `getShortLenString(char*&, int16_t&)` (+0x40), the byte,
  short and int reads are virtual on the base. DataPacketLobby's getters are non-const (the symbols have no K) and its
  `packMessage`, `InitMessage`, `InitMMOMessage` return void. `PayloadLength`/`PayloadBody` are gone.
- **Event queues.** `CConnection` holds a `CEventQueueBase event_queue_{100}` at +0x04 (constructor, `Disconnect`, destructor
  `Clear`); `CNetPlayerManager` holds `events_` (+0x04, then 8 bytes of pad before the NetStruct at +0x20) and `internal_events_`
  (+0x180), both `CEventQueueBase` with capacity 100. `CConnectionManager::event_queue_` is public.
- **CConnection ping tree.** The request asked for a separate tree at +0x17c..+0x190. The binary shows it is the internal storage of
  `stats_[8]` (a `CDataStats<int>` at +0x178: its `CReadWriteLock`, tree and node count). `GetServerPing` is
  `stats_[8].GetAverage(30.0f)`; no new member.
- **NetStruct::SetEnabled** returns `unsigned char*` (this, the last `SetChanged` result, or the member bit mask) and
  `NetStructMember::SetChanged` returns `NetStructMember*`; `CNetPlayerManager::ReassignPlayer` returns the same value.
- **CNetPlayerManager.** `Update(int)` is the virtual at +0x08. Newly defined: the constructor (slot count, `ResetPlayers`, packet
  slot 2, caches, initialized flag), the destructor, `Initialize(int)`, `ProcessEvents`, `Update(int)`,
  `GetPlayerName(std::string, int)` and `AddPlayer(NetBitStream&, int, int)`. The two static factory hooks start as
  `CNetPlayerInfo::Create` / `Delete` (the data-section initial values at 0x99e238 and 0x99e23c), not null. A default constructor
  remains for tests that fill a manager by hand; it is not in the binary.
- **CNetPlayerInfo.** `conn_index_` is renamed `matching_member_id_` (value +0x1a0): `IsLocal` compares it with
  `CMatching::LocalMemberId`, the player lookups with a member id, `ReassignPlayer` stores the member there; every use is updated.
  `unk_1c8` is `gamepad_id_` (+0x1c8).
- **NetStructMember::GetFrameTime** is `GetOnline()->+0x1c` (COnline's elapsed word; `COnline::GetElapsedTime()`), static here;
  `NetStructInterpolation<float>::AddValue` calls it.

Test support (not part of the reconstruction): `include/net-transport/deps/transport_test_support.hpp` has `RecordingTransport`
and `TestTransportManager`, a thread-less `CTransportManager` (the four pure slots filled in; host names from
`HostnamesForTest()`, local name `LocalHostnameForTest()`). Tests call `transport_test_support::Install()` before a
`CConnection`/`CConnectionManager` is used (the real singleton starts a receiver thread that polls the transports).
`tests/connection_manager_for_tests.hpp` (net-session-online) wires that up and records sends in `SentPacketLog()`.

Build and test: `cmake -S port/decomp-reconstruction -B build/tb-net -G Ninja` then
`ninja -C build/tb-net -k 0 dh2_net_transport dh2_net_session_online` is clean. `dh2_game` does not build as a whole (7 translation
units unrelated to the net layer: game-anim AnimatorBlender x3, game-app global-2 and rnd x2, game-character CharAIScript), so the
tests were linked by hand against the net libraries and the game objects that did compile (the `nettest.py` flow of the pass:
compile the test objects with ninja, `ar` the `dh2_game` objects, link each test with `--start-group`, run with a 60 s limit).
Result: 151 of 155 tests pass. Not passing: four link failures that do not come from this pass (`game_center_test`,
`game_center_start_test`: vendor-gameswf `shape_character_def` members that no object defines yet; `c_sign_in_gl_live_login_test`
and `r1n-net-session-online-CMatchingGLLiveLobbyObserver-9d847a-1_test`: static members defined both by the test and by the library
object), and one test that is flaky when run beside others for a reason that predates the pass (a message observer writing through the
wrong matching class; guarded now). Tests that reach `MultiplayerCallback` or `OnlineGameState::Init` cannot link until the game objects
build, so the multiplayer message handlers have no test of their own.
