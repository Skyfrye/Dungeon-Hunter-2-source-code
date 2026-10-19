// The login-remember flag of the sign-in screen (ELF 0x9a5c08, one .bss byte). NativeGLXPlayerSignin (0x440d3c) stores it and NativeLoginInfos
// (0x444ae0) returns it. Definition: game-app/src/g1-game-app-global-f216b6-11.cpp.
#pragma once

extern bool save_remember;
