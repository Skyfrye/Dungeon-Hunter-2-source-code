; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00437a6c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<MenuFX*>
; alias: _ZN7gameswf5arrayIP6MenuFXE7reserveEi
; demangled: gameswf::array<MenuFX*>::reserve(int)
; decoder-mode: arm
00437a6c  10 40 2d e9                                      push {r4, lr}
00437a70  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00437a74  00 40 a0 e1                                      mov r4, r0
00437a78  00 00 53 e3                                      cmp r3, #0
00437a7c  0f 00 00 1a                                      bne #0x437ac0
00437a80  00 00 51 e3                                      cmp r1, #0
00437a84  08 20 90 e5                                      ldr r2, [r0, #8]
00437a88  08 10 80 e5                                      str r1, [r0, #8]
00437a8c  0c 00 00 1a                                      bne #0x437ac4
00437a90  00 00 90 e5                                      ldr r0, [r0]
00437a94  00 00 50 e3                                      cmp r0, #0
00437a98  01 00 00 0a                                      beq #0x437aa4
00437a9c  02 11 a0 e1                                      lsl r1, r2, #2
00437aa0  24 6c 0c eb                                      bl #0x752b38
00437aa4  00 30 a0 e3                                      mov r3, #0
00437aa8  00 30 84 e5                                      str r3, [r4]
00437aac  10 80 bd e8                                      pop {r4, pc}
00437ab0  01 01 a0 e1                                      lsl r0, r1, #2
00437ab4  0c 10 a0 e1                                      mov r1, ip
00437ab8  37 6c 0c eb                                      bl #0x752b9c
00437abc  00 00 84 e5                                      str r0, [r4]
00437ac0  10 80 bd e8                                      pop {r4, pc}
00437ac4  00 c0 90 e5                                      ldr ip, [r0]
00437ac8  00 00 5c e3                                      cmp ip, #0
00437acc  f7 ff ff 0a                                      beq #0x437ab0
00437ad0  0c 00 a0 e1                                      mov r0, ip
00437ad4  01 11 a0 e1                                      lsl r1, r1, #2
00437ad8  02 21 a0 e1                                      lsl r2, r2, #2
00437adc  32 6c 0c eb                                      bl #0x752bac
00437ae0  00 00 84 e5                                      str r0, [r4]
00437ae4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00437ae8, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<MenuFX*>
; alias: _ZN7gameswf5arrayIP6MenuFXE6removeEi
; demangled: gameswf::array<MenuFX*>::remove(int)
; decoder-mode: arm
00437ae8  10 40 2d e9                                      push {r4, lr}
00437aec  04 20 90 e5                                      ldr r2, [r0, #4]
00437af0  00 40 a0 e1                                      mov r4, r0
00437af4  01 30 a0 e1                                      mov r3, r1
00437af8  01 00 52 e3                                      cmp r2, #1
00437afc  0b 00 00 0a                                      beq #0x437b30
00437b00  00 00 90 e5                                      ldr r0, [r0]
00437b04  01 20 42 e2                                      sub r2, r2, #1
00437b08  02 20 61 e0                                      rsb r2, r1, r2
00437b0c  01 10 81 e2                                      add r1, r1, #1
00437b10  01 11 80 e0                                      add r1, r0, r1, lsl #2
00437b14  02 21 a0 e1                                      lsl r2, r2, #2
00437b18  03 01 80 e0                                      add r0, r0, r3, lsl #2
00437b1c  05 59 fb eb                                      bl #0x30df38
00437b20  04 30 94 e5                                      ldr r3, [r4, #4]
00437b24  01 30 43 e2                                      sub r3, r3, #1
00437b28  04 30 84 e5                                      str r3, [r4, #4]
00437b2c  10 80 bd e8                                      pop {r4, pc}
00437b30  00 30 a0 e3                                      mov r3, #0
00437b34  04 30 80 e5                                      str r3, [r0, #4]
00437b38  10 80 bd e8                                      pop {r4, pc}
