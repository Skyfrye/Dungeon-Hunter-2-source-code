; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ced94, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::font::zone_record>
; alias: _ZN7gameswf5arrayINS_4font11zone_recordEE7reserveEi
; demangled: gameswf::array<gameswf::font::zone_record>::reserve(int)
; decoder-mode: arm
007ced94  10 40 2d e9                                      push {r4, lr}
007ced98  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007ced9c  00 40 a0 e1                                      mov r4, r0
007ceda0  00 00 53 e3                                      cmp r3, #0
007ceda4  11 00 00 1a                                      bne #0x7cedf0
007ceda8  00 00 51 e3                                      cmp r1, #0
007cedac  08 20 90 e5                                      ldr r2, [r0, #8]
007cedb0  08 10 80 e5                                      str r1, [r0, #8]
007cedb4  0e 00 00 1a                                      bne #0x7cedf4
007cedb8  00 00 90 e5                                      ldr r0, [r0]
007cedbc  00 00 50 e3                                      cmp r0, #0
007cedc0  02 00 00 0a                                      beq #0x7cedd0
007cedc4  14 10 a0 e3                                      mov r1, #0x14
007cedc8  91 02 01 e0                                      mul r1, r1, r2
007cedcc  59 0f fe eb                                      bl #0x752b38
007cedd0  00 30 a0 e3                                      mov r3, #0
007cedd4  00 30 84 e5                                      str r3, [r4]
007cedd8  10 80 bd e8                                      pop {r4, pc}
007ceddc  14 00 a0 e3                                      mov r0, #0x14
007cede0  90 01 00 e0                                      mul r0, r0, r1
007cede4  0c 10 a0 e1                                      mov r1, ip
007cede8  6b 0f fe eb                                      bl #0x752b9c
007cedec  00 00 84 e5                                      str r0, [r4]
007cedf0  10 80 bd e8                                      pop {r4, pc}
007cedf4  00 c0 90 e5                                      ldr ip, [r0]
007cedf8  00 00 5c e3                                      cmp ip, #0
007cedfc  f6 ff ff 0a                                      beq #0x7ceddc
007cee00  14 e0 a0 e3                                      mov lr, #0x14
007cee04  9e 02 02 e0                                      mul r2, lr, r2
007cee08  0c 00 a0 e1                                      mov r0, ip
007cee0c  9e 01 01 e0                                      mul r1, lr, r1
007cee10  65 0f fe eb                                      bl #0x752bac
007cee14  00 00 84 e5                                      str r0, [r4]
007cee18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cef9c, declared_size=272, range_size=272, mode=arm
; class-group: gameswf::array<gameswf::font::zone_record>
; alias: _ZN7gameswf5arrayINS_4font11zone_recordEE6resizeEi
; demangled: gameswf::array<gameswf::font::zone_record>::resize(int)
; decoder-mode: arm
007cef9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007cefa0  04 90 90 e5                                      ldr sb, [r0, #4]
007cefa4  00 70 a0 e1                                      mov r7, r0
007cefa8  01 a0 a0 e1                                      mov sl, r1
007cefac  01 00 59 e1                                      cmp sb, r1
007cefb0  21 00 00 da                                      ble #0x7cf03c
007cefb4  14 60 a0 e3                                      mov r6, #0x14
007cefb8  96 01 06 e0                                      mul r6, r6, r1
007cefbc  00 40 a0 e3                                      mov r4, #0
007cefc0  01 50 a0 e1                                      mov r5, r1
007cefc4  00 80 a0 e3                                      mov r8, #0
007cefc8  06 00 00 ea                                      b #0x7cefe8
007cefcc  04 80 80 e5                                      str r8, [r0, #4]
007cefd0  01 50 85 e2                                      add r5, r5, #1
007cefd4  08 10 a0 e1                                      mov r1, r8
007cefd8  4e ff ff eb                                      bl #0x7ced18
007cefdc  09 00 55 e1                                      cmp r5, sb
007cefe0  14 60 86 e2                                      add r6, r6, #0x14
007cefe4  14 00 00 0a                                      beq #0x7cf03c
007cefe8  00 00 97 e5                                      ldr r0, [r7]
007cefec  06 00 80 e0                                      add r0, r0, r6
007ceff0  04 20 90 e5                                      ldr r2, [r0, #4]
007ceff4  00 00 52 e3                                      cmp r2, #0
007ceff8  f3 ff ff ca                                      bgt #0x7cefcc
007ceffc  f2 ff ff aa                                      bge #0x7cefcc
007cf000  82 31 a0 e1                                      lsl r3, r2, #3
007cf004  00 10 90 e5                                      ldr r1, [r0]
007cf008  01 20 92 e2                                      adds r2, r2, #1
007cf00c  03 c0 81 e0                                      add ip, r1, r3
007cf010  03 40 81 e7                                      str r4, [r1, r3]
007cf014  04 40 8c e5                                      str r4, [ip, #4]
007cf018  08 30 83 e2                                      add r3, r3, #8
007cf01c  f8 ff ff 1a                                      bne #0x7cf004
007cf020  04 80 80 e5                                      str r8, [r0, #4]
007cf024  01 50 85 e2                                      add r5, r5, #1
007cf028  08 10 a0 e1                                      mov r1, r8
007cf02c  39 ff ff eb                                      bl #0x7ced18
007cf030  09 00 55 e1                                      cmp r5, sb
007cf034  14 60 86 e2                                      add r6, r6, #0x14
007cf038  ea ff ff 1a                                      bne #0x7cefe8
007cf03c  00 00 5a e3                                      cmp sl, #0
007cf040  02 00 00 0a                                      beq #0x7cf050
007cf044  08 30 97 e5                                      ldr r3, [r7, #8]
007cf048  03 00 5a e1                                      cmp sl, r3
007cf04c  12 00 00 ca                                      bgt #0x7cf09c
007cf050  0a 00 59 e1                                      cmp sb, sl
007cf054  0e 00 00 aa                                      bge #0x7cf094
007cf058  14 10 a0 e3                                      mov r1, #0x14
007cf05c  91 09 01 e0                                      mul r1, r1, sb
007cf060  00 30 a0 e3                                      mov r3, #0
007cf064  00 00 97 e5                                      ldr r0, [r7]
007cf068  01 90 89 e2                                      add sb, sb, #1
007cf06c  0a 00 59 e1                                      cmp sb, sl
007cf070  01 20 80 e0                                      add r2, r0, r1
007cf074  01 30 80 e7                                      str r3, [r0, r1]
007cf078  11 30 c2 e5                                      strb r3, [r2, #0x11]
007cf07c  04 30 82 e5                                      str r3, [r2, #4]
007cf080  08 30 82 e5                                      str r3, [r2, #8]
007cf084  0c 30 c2 e5                                      strb r3, [r2, #0xc]
007cf088  10 30 c2 e5                                      strb r3, [r2, #0x10]
007cf08c  14 10 81 e2                                      add r1, r1, #0x14
007cf090  f3 ff ff 1a                                      bne #0x7cf064
007cf094  04 a0 87 e5                                      str sl, [r7, #4]
007cf098  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007cf09c  07 00 a0 e1                                      mov r0, r7
007cf0a0  ca 10 8a e0                                      add r1, sl, sl, asr #1
007cf0a4  3a ff ff eb                                      bl #0x7ced94
007cf0a8  e8 ff ff ea                                      b #0x7cf050
