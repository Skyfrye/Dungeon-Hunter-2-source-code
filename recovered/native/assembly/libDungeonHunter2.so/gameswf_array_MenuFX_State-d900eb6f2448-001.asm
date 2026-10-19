; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00437c1c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<MenuFX::State*>
; alias: _ZN7gameswf5arrayIPN6MenuFX5StateEE7reserveEi
; demangled: gameswf::array<MenuFX::State*>::reserve(int)
; decoder-mode: arm
00437c1c  10 40 2d e9                                      push {r4, lr}
00437c20  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00437c24  00 40 a0 e1                                      mov r4, r0
00437c28  00 00 53 e3                                      cmp r3, #0
00437c2c  0f 00 00 1a                                      bne #0x437c70
00437c30  00 00 51 e3                                      cmp r1, #0
00437c34  08 20 90 e5                                      ldr r2, [r0, #8]
00437c38  08 10 80 e5                                      str r1, [r0, #8]
00437c3c  0c 00 00 1a                                      bne #0x437c74
00437c40  00 00 90 e5                                      ldr r0, [r0]
00437c44  00 00 50 e3                                      cmp r0, #0
00437c48  01 00 00 0a                                      beq #0x437c54
00437c4c  02 11 a0 e1                                      lsl r1, r2, #2
00437c50  b8 6b 0c eb                                      bl #0x752b38
00437c54  00 30 a0 e3                                      mov r3, #0
00437c58  00 30 84 e5                                      str r3, [r4]
00437c5c  10 80 bd e8                                      pop {r4, pc}
00437c60  01 01 a0 e1                                      lsl r0, r1, #2
00437c64  0c 10 a0 e1                                      mov r1, ip
00437c68  cb 6b 0c eb                                      bl #0x752b9c
00437c6c  00 00 84 e5                                      str r0, [r4]
00437c70  10 80 bd e8                                      pop {r4, pc}
00437c74  00 c0 90 e5                                      ldr ip, [r0]
00437c78  00 00 5c e3                                      cmp ip, #0
00437c7c  f7 ff ff 0a                                      beq #0x437c60
00437c80  0c 00 a0 e1                                      mov r0, ip
00437c84  01 11 a0 e1                                      lsl r1, r1, #2
00437c88  02 21 a0 e1                                      lsl r2, r2, #2
00437c8c  c6 6b 0c eb                                      bl #0x752bac
00437c90  00 00 84 e5                                      str r0, [r4]
00437c94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00437c98, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<MenuFX::State*>
; alias: _ZN7gameswf5arrayIPN6MenuFX5StateEE6removeEi
; demangled: gameswf::array<MenuFX::State*>::remove(int)
; decoder-mode: arm
00437c98  10 40 2d e9                                      push {r4, lr}
00437c9c  04 20 90 e5                                      ldr r2, [r0, #4]
00437ca0  00 40 a0 e1                                      mov r4, r0
00437ca4  01 30 a0 e1                                      mov r3, r1
00437ca8  01 00 52 e3                                      cmp r2, #1
00437cac  0b 00 00 0a                                      beq #0x437ce0
00437cb0  00 00 90 e5                                      ldr r0, [r0]
00437cb4  01 20 42 e2                                      sub r2, r2, #1
00437cb8  02 20 61 e0                                      rsb r2, r1, r2
00437cbc  01 10 81 e2                                      add r1, r1, #1
00437cc0  01 11 80 e0                                      add r1, r0, r1, lsl #2
00437cc4  02 21 a0 e1                                      lsl r2, r2, #2
00437cc8  03 01 80 e0                                      add r0, r0, r3, lsl #2
00437ccc  99 58 fb eb                                      bl #0x30df38
00437cd0  04 30 94 e5                                      ldr r3, [r4, #4]
00437cd4  01 30 43 e2                                      sub r3, r3, #1
00437cd8  04 30 84 e5                                      str r3, [r4, #4]
00437cdc  10 80 bd e8                                      pop {r4, pc}
00437ce0  00 30 a0 e3                                      mov r3, #0
00437ce4  04 30 80 e5                                      str r3, [r0, #4]
00437ce8  10 80 bd e8                                      pop {r4, pc}
