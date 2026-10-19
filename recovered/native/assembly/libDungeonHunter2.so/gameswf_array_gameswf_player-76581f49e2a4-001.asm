; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076ca08, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::player*>
; alias: _ZN7gameswf5arrayIPNS_6playerEE7reserveEi
; demangled: gameswf::array<gameswf::player*>::reserve(int)
; decoder-mode: arm
0076ca08  10 40 2d e9                                      push {r4, lr}
0076ca0c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0076ca10  00 40 a0 e1                                      mov r4, r0
0076ca14  00 00 53 e3                                      cmp r3, #0
0076ca18  0f 00 00 1a                                      bne #0x76ca5c
0076ca1c  00 00 51 e3                                      cmp r1, #0
0076ca20  08 20 90 e5                                      ldr r2, [r0, #8]
0076ca24  08 10 80 e5                                      str r1, [r0, #8]
0076ca28  0c 00 00 1a                                      bne #0x76ca60
0076ca2c  00 00 90 e5                                      ldr r0, [r0]
0076ca30  00 00 50 e3                                      cmp r0, #0
0076ca34  01 00 00 0a                                      beq #0x76ca40
0076ca38  02 11 a0 e1                                      lsl r1, r2, #2
0076ca3c  3d 98 ff eb                                      bl #0x752b38
0076ca40  00 30 a0 e3                                      mov r3, #0
0076ca44  00 30 84 e5                                      str r3, [r4]
0076ca48  10 80 bd e8                                      pop {r4, pc}
0076ca4c  01 01 a0 e1                                      lsl r0, r1, #2
0076ca50  0c 10 a0 e1                                      mov r1, ip
0076ca54  50 98 ff eb                                      bl #0x752b9c
0076ca58  00 00 84 e5                                      str r0, [r4]
0076ca5c  10 80 bd e8                                      pop {r4, pc}
0076ca60  00 c0 90 e5                                      ldr ip, [r0]
0076ca64  00 00 5c e3                                      cmp ip, #0
0076ca68  f7 ff ff 0a                                      beq #0x76ca4c
0076ca6c  0c 00 a0 e1                                      mov r0, ip
0076ca70  01 11 a0 e1                                      lsl r1, r1, #2
0076ca74  02 21 a0 e1                                      lsl r2, r2, #2
0076ca78  4b 98 ff eb                                      bl #0x752bac
0076ca7c  00 00 84 e5                                      str r0, [r4]
0076ca80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0076cdb4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::player*>
; alias: _ZN7gameswf5arrayIPNS_6playerEE6removeEi
; demangled: gameswf::array<gameswf::player*>::remove(int)
; decoder-mode: arm
0076cdb4  10 40 2d e9                                      push {r4, lr}
0076cdb8  04 20 90 e5                                      ldr r2, [r0, #4]
0076cdbc  00 40 a0 e1                                      mov r4, r0
0076cdc0  01 30 a0 e1                                      mov r3, r1
0076cdc4  01 00 52 e3                                      cmp r2, #1
0076cdc8  0b 00 00 0a                                      beq #0x76cdfc
0076cdcc  00 00 90 e5                                      ldr r0, [r0]
0076cdd0  01 20 42 e2                                      sub r2, r2, #1
0076cdd4  02 20 61 e0                                      rsb r2, r1, r2
0076cdd8  01 10 81 e2                                      add r1, r1, #1
0076cddc  01 11 80 e0                                      add r1, r0, r1, lsl #2
0076cde0  02 21 a0 e1                                      lsl r2, r2, #2
0076cde4  03 01 80 e0                                      add r0, r0, r3, lsl #2
0076cde8  52 84 ee eb                                      bl #0x30df38
0076cdec  04 30 94 e5                                      ldr r3, [r4, #4]
0076cdf0  01 30 43 e2                                      sub r3, r3, #1
0076cdf4  04 30 84 e5                                      str r3, [r4, #4]
0076cdf8  10 80 bd e8                                      pop {r4, pc}
0076cdfc  00 30 a0 e3                                      mov r3, #0
0076ce00  04 30 80 e5                                      str r3, [r0, #4]
0076ce04  10 80 bd e8                                      pop {r4, pc}
