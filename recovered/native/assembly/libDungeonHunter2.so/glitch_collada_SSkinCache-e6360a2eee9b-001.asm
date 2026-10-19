; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663b54, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::SSkinCache
; alias: _ZN6glitch7collada10SSkinCacheD1Ev
; demangled: glitch::collada::SSkinCache::~SSkinCache()
; decoder-mode: arm
00663b54  10 40 2d e9                                      push {r4, lr}
00663b58  00 40 a0 e1                                      mov r4, r0
00663b5c  28 00 90 e5                                      ldr r0, [r0, #0x28]
00663b60  00 00 50 e3                                      cmp r0, #0
00663b64  00 00 00 0a                                      beq #0x663b6c
00663b68  85 e6 f2 eb                                      bl #0x31d584
00663b6c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00663b70  00 00 50 e3                                      cmp r0, #0
00663b74  00 00 00 0a                                      beq #0x663b7c
00663b78  34 b2 f2 eb                                      bl #0x310450
00663b7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00663b80  00 00 50 e3                                      cmp r0, #0
00663b84  00 00 00 0a                                      beq #0x663b8c
00663b88  30 b2 f2 eb                                      bl #0x310450
00663b8c  04 30 94 e5                                      ldr r3, [r4, #4]
00663b90  04 20 84 e2                                      add r2, r4, #4
00663b94  00 00 53 e3                                      cmp r3, #0
00663b98  0a 00 00 0a                                      beq #0x663bc8
00663b9c  08 20 92 e5                                      ldr r2, [r2, #8]
00663ba0  03 10 a0 e1                                      mov r1, r3
00663ba4  0c 00 84 e2                                      add r0, r4, #0xc
00663ba8  02 30 63 e0                                      rsb r3, r3, r2
00663bac  43 31 a0 e1                                      asr r3, r3, #2
00663bb0  03 22 a0 e1                                      lsl r2, r3, #4
00663bb4  02 20 63 e0                                      rsb r2, r3, r2
00663bb8  02 24 82 e0                                      add r2, r2, r2, lsl #8
00663bbc  02 28 82 e0                                      add r2, r2, r2, lsl #16
00663bc0  02 22 83 e0                                      add r2, r3, r2, lsl #4
00663bc4  da ff ff eb                                      bl #0x663b34
00663bc8  04 00 a0 e1                                      mov r0, r4
00663bcc  10 80 bd e8                                      pop {r4, pc}
