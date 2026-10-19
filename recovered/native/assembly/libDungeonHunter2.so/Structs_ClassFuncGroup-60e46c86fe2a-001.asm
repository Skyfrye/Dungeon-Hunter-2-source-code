; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56e8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncGroup
; alias: _ZN7Structs14ClassFuncGroupD2Ev
; demangled: Structs::ClassFuncGroup::~ClassFuncGroup()
; decoder-mode: arm
004c56e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56ec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncGroup
; alias: _ZN7Structs14ClassFuncGroupD1Ev
; demangled: Structs::ClassFuncGroup::~ClassFuncGroup()
; decoder-mode: arm
004c56ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56f0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncGroup
; alias: _ZN7Structs14ClassFuncGroup8finalizeEv
; demangled: Structs::ClassFuncGroup::finalize()
; decoder-mode: arm
004c56f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cea3c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncGroup
; alias: _ZN7Structs14ClassFuncGroupD0Ev
; demangled: Structs::ClassFuncGroup::~ClassFuncGroup()
; decoder-mode: arm
004cea3c  10 40 2d e9                                      push {r4, lr}
004cea40  00 40 a0 e1                                      mov r4, r0
004cea44  28 db ff eb                                      bl #0x4c56ec
004cea48  04 00 a0 e1                                      mov r0, r4
004cea4c  7b 06 f9 eb                                      bl #0x310440
004cea50  04 00 a0 e1                                      mov r0, r4
004cea54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f1068, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncGroup
; alias: _ZN7Structs14ClassFuncGroup4readEP11IStreamBase
; demangled: Structs::ClassFuncGroup::read(IStreamBase*)
; decoder-mode: arm
004f1068  30 40 2d e9                                      push {r4, r5, lr}
004f106c  00 40 a0 e1                                      mov r4, r0
004f1070  0c d0 4d e2                                      sub sp, sp, #0xc
004f1074  01 00 a0 e1                                      mov r0, r1
004f1078  01 50 a0 e1                                      mov r5, r1
004f107c  04 10 84 e2                                      add r1, r4, #4
004f1080  02 a0 fd eb                                      bl #0x459090
004f1084  01 30 a0 e3                                      mov r3, #1
004f1088  00 00 53 e3                                      cmp r3, #0
004f108c  04 30 8d e5                                      str r3, [sp, #4]
004f1090  0f 00 00 1a                                      bne #0x4f10d4
004f1094  05 30 84 e2                                      add r3, r4, #5
004f1098  06 20 84 e2                                      add r2, r4, #6
004f109c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f10a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f10a4  03 00 52 e1                                      cmp r2, r3
004f10a8  01 10 20 e0                                      eor r1, r0, r1
004f10ac  01 10 43 e5                                      strb r1, [r3, #-1]
004f10b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f10b4  00 10 21 e0                                      eor r1, r1, r0
004f10b8  01 10 c2 e5                                      strb r1, [r2, #1]
004f10bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f10c0  01 20 42 e2                                      sub r2, r2, #1
004f10c4  00 10 21 e0                                      eor r1, r1, r0
004f10c8  01 10 43 e5                                      strb r1, [r3, #-1]
004f10cc  01 30 83 e2                                      add r3, r3, #1
004f10d0  f1 ff ff 8a                                      bhi #0x4f109c
004f10d4  05 00 a0 e1                                      mov r0, r5
004f10d8  08 10 84 e2                                      add r1, r4, #8
004f10dc  eb 9f fd eb                                      bl #0x459090
004f10e0  01 30 a0 e3                                      mov r3, #1
004f10e4  00 00 53 e3                                      cmp r3, #0
004f10e8  04 30 8d e5                                      str r3, [sp, #4]
004f10ec  0f 00 00 1a                                      bne #0x4f1130
004f10f0  09 30 84 e2                                      add r3, r4, #9
004f10f4  0a 20 84 e2                                      add r2, r4, #0xa
004f10f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f10fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1100  03 00 52 e1                                      cmp r2, r3
004f1104  01 10 20 e0                                      eor r1, r0, r1
004f1108  01 10 43 e5                                      strb r1, [r3, #-1]
004f110c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1110  00 10 21 e0                                      eor r1, r1, r0
004f1114  01 10 c2 e5                                      strb r1, [r2, #1]
004f1118  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f111c  01 20 42 e2                                      sub r2, r2, #1
004f1120  00 10 21 e0                                      eor r1, r1, r0
004f1124  01 10 43 e5                                      strb r1, [r3, #-1]
004f1128  01 30 83 e2                                      add r3, r3, #1
004f112c  f1 ff ff 8a                                      bhi #0x4f10f8
004f1130  05 00 a0 e1                                      mov r0, r5
004f1134  0c 10 84 e2                                      add r1, r4, #0xc
004f1138  d4 9f fd eb                                      bl #0x459090
004f113c  01 30 a0 e3                                      mov r3, #1
004f1140  00 00 53 e3                                      cmp r3, #0
004f1144  04 30 8d e5                                      str r3, [sp, #4]
004f1148  0f 00 00 1a                                      bne #0x4f118c
004f114c  0d 30 84 e2                                      add r3, r4, #0xd
004f1150  0e 20 84 e2                                      add r2, r4, #0xe
004f1154  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1158  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f115c  03 00 52 e1                                      cmp r2, r3
004f1160  01 10 20 e0                                      eor r1, r0, r1
004f1164  01 10 43 e5                                      strb r1, [r3, #-1]
004f1168  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f116c  00 10 21 e0                                      eor r1, r1, r0
004f1170  01 10 c2 e5                                      strb r1, [r2, #1]
004f1174  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1178  01 20 42 e2                                      sub r2, r2, #1
004f117c  00 10 21 e0                                      eor r1, r1, r0
004f1180  01 10 43 e5                                      strb r1, [r3, #-1]
004f1184  01 30 83 e2                                      add r3, r3, #1
004f1188  f1 ff ff 8a                                      bhi #0x4f1154
004f118c  05 00 a0 e1                                      mov r0, r5
004f1190  10 10 84 e2                                      add r1, r4, #0x10
004f1194  bd 9f fd eb                                      bl #0x459090
004f1198  01 30 a0 e3                                      mov r3, #1
004f119c  00 00 53 e3                                      cmp r3, #0
004f11a0  04 30 8d e5                                      str r3, [sp, #4]
004f11a4  0f 00 00 1a                                      bne #0x4f11e8
004f11a8  11 30 84 e2                                      add r3, r4, #0x11
004f11ac  12 20 84 e2                                      add r2, r4, #0x12
004f11b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f11b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f11b8  03 00 52 e1                                      cmp r2, r3
004f11bc  01 10 20 e0                                      eor r1, r0, r1
004f11c0  01 10 43 e5                                      strb r1, [r3, #-1]
004f11c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f11c8  00 10 21 e0                                      eor r1, r1, r0
004f11cc  01 10 c2 e5                                      strb r1, [r2, #1]
004f11d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f11d4  01 20 42 e2                                      sub r2, r2, #1
004f11d8  00 10 21 e0                                      eor r1, r1, r0
004f11dc  01 10 43 e5                                      strb r1, [r3, #-1]
004f11e0  01 30 83 e2                                      add r3, r3, #1
004f11e4  f1 ff ff 8a                                      bhi #0x4f11b0
004f11e8  05 00 a0 e1                                      mov r0, r5
004f11ec  14 10 84 e2                                      add r1, r4, #0x14
004f11f0  a6 9f fd eb                                      bl #0x459090
004f11f4  01 30 a0 e3                                      mov r3, #1
004f11f8  00 00 53 e3                                      cmp r3, #0
004f11fc  04 30 8d e5                                      str r3, [sp, #4]
004f1200  0f 00 00 1a                                      bne #0x4f1244
004f1204  16 30 84 e2                                      add r3, r4, #0x16
004f1208  15 40 84 e2                                      add r4, r4, #0x15
004f120c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1210  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f1214  04 00 53 e1                                      cmp r3, r4
004f1218  02 20 21 e0                                      eor r2, r1, r2
004f121c  01 20 44 e5                                      strb r2, [r4, #-1]
004f1220  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f1224  01 20 22 e0                                      eor r2, r2, r1
004f1228  01 20 c3 e5                                      strb r2, [r3, #1]
004f122c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f1230  01 30 43 e2                                      sub r3, r3, #1
004f1234  01 20 22 e0                                      eor r2, r2, r1
004f1238  01 20 44 e5                                      strb r2, [r4, #-1]
004f123c  01 40 84 e2                                      add r4, r4, #1
004f1240  f1 ff ff 8a                                      bhi #0x4f120c
004f1244  0c d0 8d e2                                      add sp, sp, #0xc
004f1248  30 80 bd e8                                      pop {r4, r5, pc}
