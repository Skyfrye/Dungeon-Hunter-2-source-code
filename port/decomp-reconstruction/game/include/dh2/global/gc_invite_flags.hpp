// The two GameCenter invite flag bytes in .bss, read and cleared by NativeStartFromGCInvite (0x43de30), read by
// NativeHasPushNotification (0x440c84), MultiplayerCallback::HandleMenuBackButton (0x49b990) and OnlineGameState::processEvents
// (0x49db80). The binary has no symbols for them; the names are the IDA data names. Definitions: game-app/src/gc_invite_flags.cpp.
#pragma once

extern unsigned char byte_99F81A;  // 0x99f81a: a GameCenter invitation has arrived and is not yet accepted (cleared with byte_99F83A by NativeStartFromGCInvite)
extern unsigned char byte_99F83A;  // 0x99f83a: the invitation was accepted; NativeStartFromGCInvite then opens the verification screen
