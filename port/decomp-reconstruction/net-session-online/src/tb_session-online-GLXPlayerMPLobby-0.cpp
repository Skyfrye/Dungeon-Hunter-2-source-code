// Batch e1-net-session-online-GLXPlayerMPLobby-0 (owner GLXPlayerMPLobby).
//
// Both functions in this batch are skipped and have no body here:
//
// 0x838a34 GLXPlayerMPLobby::Update()
//   Every branch tests the transport Connection that the lobby holds at +0x74:
//   Connection::isConnected, Connection::connect, the Connection state word at +0x04,
//   the connect-retry flag at +0x2014, and virtual slot 3 (+0x0c) on the connection.
//   The port's ConnectionLobby stand-in (deps/connection_lobby.hpp) has only
//   requestTimeMs, and its Connection stand-in takes no arguments. Writing the
//   branches would guess at the transport interface, so the body is not rebuilt.
//
// 0x838c6c GLXPlayerMPLobby::mpProcessIncomingMessages()
//   About 23 KB of Hex-Rays output. It dispatches on the message type returned by
//   the incoming packet (virtual slot +0xa0) and calls about 30 packet vtable slots
//   that are not identified. It also needs Connection::getNextIncomingPacket,
//   ConnectionLobby::keepConnectionAlive, GLXPlayerPing and Thread::Start.
//   Not rebuilt (see NOTES.md, "ProcessIncomingMessages (0x838c6c, 4492 bytes, skip)").

#include "net-session-online/glx_player_mp_lobby.hpp"
