; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00413e14, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::character*>
; alias: _ZN7gameswf5arrayIPNS_9characterEE7reserveEi
; demangled: gameswf::array<gameswf::character*>::reserve(int)
; decoder-mode: arm
00413e14  10 40 2d e9                                      push {r4, lr}
00413e18  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00413e1c  00 40 a0 e1                                      mov r4, r0
00413e20  00 00 53 e3                                      cmp r3, #0
00413e24  0f 00 00 1a                                      bne #0x413e68
00413e28  00 00 51 e3                                      cmp r1, #0
00413e2c  08 20 90 e5                                      ldr r2, [r0, #8]
00413e30  08 10 80 e5                                      str r1, [r0, #8]
00413e34  0c 00 00 1a                                      bne #0x413e6c
00413e38  00 00 90 e5                                      ldr r0, [r0]
00413e3c  00 00 50 e3                                      cmp r0, #0
00413e40  01 00 00 0a                                      beq #0x413e4c
00413e44  02 11 a0 e1                                      lsl r1, r2, #2
00413e48  3a fb 0c eb                                      bl #0x752b38
00413e4c  00 30 a0 e3                                      mov r3, #0
00413e50  00 30 84 e5                                      str r3, [r4]
00413e54  10 80 bd e8                                      pop {r4, pc}
00413e58  01 01 a0 e1                                      lsl r0, r1, #2
00413e5c  0c 10 a0 e1                                      mov r1, ip
00413e60  4d fb 0c eb                                      bl #0x752b9c
00413e64  00 00 84 e5                                      str r0, [r4]
00413e68  10 80 bd e8                                      pop {r4, pc}
00413e6c  00 c0 90 e5                                      ldr ip, [r0]
00413e70  00 00 5c e3                                      cmp ip, #0
00413e74  f7 ff ff 0a                                      beq #0x413e58
00413e78  0c 00 a0 e1                                      mov r0, ip
00413e7c  01 11 a0 e1                                      lsl r1, r1, #2
00413e80  02 21 a0 e1                                      lsl r2, r2, #2
00413e84  48 fb 0c eb                                      bl #0x752bac
00413e88  00 00 84 e5                                      str r0, [r4]
00413e8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00753190, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::character*>
; alias: _ZN7gameswf5arrayIPNS_9characterEE6removeEi
; demangled: gameswf::array<gameswf::character*>::remove(int)
; decoder-mode: arm
00753190  10 40 2d e9                                      push {r4, lr}
00753194  04 20 90 e5                                      ldr r2, [r0, #4]
00753198  00 40 a0 e1                                      mov r4, r0
0075319c  01 30 a0 e1                                      mov r3, r1
007531a0  01 00 52 e3                                      cmp r2, #1
007531a4  0b 00 00 0a                                      beq #0x7531d8
007531a8  00 00 90 e5                                      ldr r0, [r0]
007531ac  01 20 42 e2                                      sub r2, r2, #1
007531b0  02 20 61 e0                                      rsb r2, r1, r2
007531b4  01 10 81 e2                                      add r1, r1, #1
007531b8  01 11 80 e0                                      add r1, r0, r1, lsl #2
007531bc  02 21 a0 e1                                      lsl r2, r2, #2
007531c0  03 01 80 e0                                      add r0, r0, r3, lsl #2
007531c4  5b eb ee eb                                      bl #0x30df38
007531c8  04 30 94 e5                                      ldr r3, [r4, #4]
007531cc  01 30 43 e2                                      sub r3, r3, #1
007531d0  04 30 84 e5                                      str r3, [r4, #4]
007531d4  10 80 bd e8                                      pop {r4, pc}
007531d8  00 30 a0 e3                                      mov r3, #0
007531dc  04 30 80 e5                                      str r3, [r0, #4]
007531e0  10 80 bd e8                                      pop {r4, pc}
