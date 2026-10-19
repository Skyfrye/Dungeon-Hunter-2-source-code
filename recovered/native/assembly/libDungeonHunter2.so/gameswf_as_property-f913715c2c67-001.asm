; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00796ae0, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::as_property
; alias: _ZNK7gameswf11as_property3getERKNS_8as_valueEPS1_
; demangled: gameswf::as_property::get(gameswf::as_value const&, gameswf::as_value*) const
; decoder-mode: arm
00796ae0  04 e0 2d e5                                      str lr, [sp, #-4]!
00796ae4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00796ae8  24 d0 4d e2                                      sub sp, sp, #0x24
00796aec  00 00 50 e3                                      cmp r0, #0
00796af0  10 00 00 0a                                      beq #0x796b38
00796af4  d1 c0 d1 e1                                      ldrsb ip, [r1, #1]
00796af8  40 e0 9f e5                                      ldr lr, [pc, #0x40]
00796afc  00 30 90 e5                                      ldr r3, [r0]
00796b00  05 00 5c e3                                      cmp ip, #5
00796b04  0e e0 8f e0                                      add lr, pc, lr
00796b08  00 c0 a0 e3                                      mov ip, #0
00796b0c  64 30 93 e5                                      ldr r3, [r3, #0x64]
00796b10  0c 10 8d e5                                      str r1, [sp, #0xc]
00796b14  04 20 8d e5                                      str r2, [sp, #4]
00796b18  1c e0 8d e5                                      str lr, [sp, #0x1c]
00796b1c  10 c0 8d e5                                      str ip, [sp, #0x10]
00796b20  14 c0 8d e5                                      str ip, [sp, #0x14]
00796b24  18 c0 8d e5                                      str ip, [sp, #0x18]
00796b28  04 c0 91 05                                      ldreq ip, [r1, #4]
00796b2c  04 10 8d e2                                      add r1, sp, #4
00796b30  08 c0 8d e5                                      str ip, [sp, #8]
00796b34  33 ff 2f e1                                      blx r3
00796b38  24 d0 8d e2                                      add sp, sp, #0x24
00796b3c  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00796b40  04 49 15 00                                      .byte 0x04, 0x49, 0x15, 0x00

; FUNCTION 0x00796c28, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_propertyD1Ev
; demangled: gameswf::as_property::~as_property()
; decoder-mode: arm
00796c28  10 40 2d e9                                      push {r4, lr}
00796c2c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00796c30  44 20 9f e5                                      ldr r2, [pc, #0x44]
00796c34  00 40 a0 e1                                      mov r4, r0
00796c38  03 30 8f e0                                      add r3, pc, r3
00796c3c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00796c40  02 20 93 e7                                      ldr r2, [r3, r2]
00796c44  00 00 50 e3                                      cmp r0, #0
00796c48  08 20 82 e2                                      add r2, r2, #8
00796c4c  00 20 84 e5                                      str r2, [r4]
00796c50  00 00 00 0a                                      beq #0x796c58
00796c54  79 0d ff eb                                      bl #0x75a240
00796c58  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00796c5c  00 00 50 e3                                      cmp r0, #0
00796c60  00 00 00 0a                                      beq #0x796c68
00796c64  75 0d ff eb                                      bl #0x75a240
00796c68  04 00 a0 e1                                      mov r0, r4
00796c6c  0c 1c ff eb                                      bl #0x75dca4
00796c70  04 00 a0 e1                                      mov r0, r4
00796c74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00796c78  58 de 1f 00 a8 0b 00 00                          .byte 0x58, 0xde, 0x1f, 0x00, 0xa8, 0x0b, 0x00, 0x00

; FUNCTION 0x00796c80, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_propertyD0Ev
; demangled: gameswf::as_property::~as_property()
; decoder-mode: arm
00796c80  10 40 2d e9                                      push {r4, lr}
00796c84  00 40 a0 e1                                      mov r4, r0
00796c88  e6 ff ff eb                                      bl #0x796c28
00796c8c  04 00 a0 e1                                      mov r0, r4
00796c90  86 dd ed eb                                      bl #0x30e2b0
00796c94  04 00 a0 e1                                      mov r0, r4
00796c98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00796c9c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_propertyD2Ev
; demangled: gameswf::as_property::~as_property()
; decoder-mode: arm
00796c9c  10 40 2d e9                                      push {r4, lr}
00796ca0  44 30 9f e5                                      ldr r3, [pc, #0x44]
00796ca4  44 20 9f e5                                      ldr r2, [pc, #0x44]
00796ca8  00 40 a0 e1                                      mov r4, r0
00796cac  03 30 8f e0                                      add r3, pc, r3
00796cb0  10 00 90 e5                                      ldr r0, [r0, #0x10]
00796cb4  02 20 93 e7                                      ldr r2, [r3, r2]
00796cb8  00 00 50 e3                                      cmp r0, #0
00796cbc  08 20 82 e2                                      add r2, r2, #8
00796cc0  00 20 84 e5                                      str r2, [r4]
00796cc4  00 00 00 0a                                      beq #0x796ccc
00796cc8  5c 0d ff eb                                      bl #0x75a240
00796ccc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00796cd0  00 00 50 e3                                      cmp r0, #0
00796cd4  00 00 00 0a                                      beq #0x796cdc
00796cd8  58 0d ff eb                                      bl #0x75a240
00796cdc  04 00 a0 e1                                      mov r0, r4
00796ce0  ef 1b ff eb                                      bl #0x75dca4
00796ce4  04 00 a0 e1                                      mov r0, r4
00796ce8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00796cec  e4 dd 1f 00 a8 0b 00 00                          .byte 0xe4, 0xdd, 0x1f, 0x00, 0xa8, 0x0b, 0x00, 0x00

; FUNCTION 0x00796cf4, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_propertyC1ERKNS_8as_valueES3_
; demangled: gameswf::as_property::as_property(gameswf::as_value const&, gameswf::as_value const&)
; decoder-mode: arm
00796cf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00796cf8  78 40 9f e5                                      ldr r4, [pc, #0x78]
00796cfc  02 60 a0 e1                                      mov r6, r2
00796d00  00 50 a0 e1                                      mov r5, r0
00796d04  01 70 a0 e1                                      mov r7, r1
00796d08  bd 0b ff eb                                      bl #0x759c04
00796d0c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00796d10  04 40 8f e0                                      add r4, pc, r4
00796d14  00 00 a0 e3                                      mov r0, #0
00796d18  03 30 94 e7                                      ldr r3, [r4, r3]
00796d1c  0c 00 85 e5                                      str r0, [r5, #0xc]
00796d20  10 00 85 e5                                      str r0, [r5, #0x10]
00796d24  08 30 83 e2                                      add r3, r3, #8
00796d28  00 30 85 e5                                      str r3, [r5]
00796d2c  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
00796d30  0c 40 85 e2                                      add r4, r5, #0xc
00796d34  05 00 53 e3                                      cmp r3, #5
00796d38  04 00 97 05                                      ldreq r0, [r7, #4]
00796d3c  82 ff ff eb                                      bl #0x796b4c
00796d40  00 10 a0 e1                                      mov r1, r0
00796d44  04 00 a0 e1                                      mov r0, r4
00796d48  33 9d ff eb                                      bl #0x77e21c
00796d4c  d1 30 d6 e1                                      ldrsb r3, [r6, #1]
00796d50  10 40 85 e2                                      add r4, r5, #0x10
00796d54  05 00 53 e3                                      cmp r3, #5
00796d58  00 00 a0 13                                      movne r0, #0
00796d5c  04 00 96 05                                      ldreq r0, [r6, #4]
00796d60  79 ff ff eb                                      bl #0x796b4c
00796d64  00 10 a0 e1                                      mov r1, r0
00796d68  04 00 a0 e1                                      mov r0, r4
00796d6c  2a 9d ff eb                                      bl #0x77e21c
00796d70  05 00 a0 e1                                      mov r0, r5
00796d74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00796d78  80 dd 1f 00 a8 0b 00 00                          .byte 0x80, 0xdd, 0x1f, 0x00, 0xa8, 0x0b, 0x00, 0x00

; FUNCTION 0x00796d80, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_propertyC2ERKNS_8as_valueES3_
; demangled: gameswf::as_property::as_property(gameswf::as_value const&, gameswf::as_value const&)
; decoder-mode: arm
00796d80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00796d84  78 40 9f e5                                      ldr r4, [pc, #0x78]
00796d88  02 60 a0 e1                                      mov r6, r2
00796d8c  00 50 a0 e1                                      mov r5, r0
00796d90  01 70 a0 e1                                      mov r7, r1
00796d94  9a 0b ff eb                                      bl #0x759c04
00796d98  68 30 9f e5                                      ldr r3, [pc, #0x68]
00796d9c  04 40 8f e0                                      add r4, pc, r4
00796da0  00 00 a0 e3                                      mov r0, #0
00796da4  03 30 94 e7                                      ldr r3, [r4, r3]
00796da8  0c 00 85 e5                                      str r0, [r5, #0xc]
00796dac  10 00 85 e5                                      str r0, [r5, #0x10]
00796db0  08 30 83 e2                                      add r3, r3, #8
00796db4  00 30 85 e5                                      str r3, [r5]
00796db8  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
00796dbc  0c 40 85 e2                                      add r4, r5, #0xc
00796dc0  05 00 53 e3                                      cmp r3, #5
00796dc4  04 00 97 05                                      ldreq r0, [r7, #4]
00796dc8  5f ff ff eb                                      bl #0x796b4c
00796dcc  00 10 a0 e1                                      mov r1, r0
00796dd0  04 00 a0 e1                                      mov r0, r4
00796dd4  10 9d ff eb                                      bl #0x77e21c
00796dd8  d1 30 d6 e1                                      ldrsb r3, [r6, #1]
00796ddc  10 40 85 e2                                      add r4, r5, #0x10
00796de0  05 00 53 e3                                      cmp r3, #5
00796de4  00 00 a0 13                                      movne r0, #0
00796de8  04 00 96 05                                      ldreq r0, [r6, #4]
00796dec  56 ff ff eb                                      bl #0x796b4c
00796df0  00 10 a0 e1                                      mov r1, r0
00796df4  04 00 a0 e1                                      mov r0, r4
00796df8  07 9d ff eb                                      bl #0x77e21c
00796dfc  05 00 a0 e1                                      mov r0, r5
00796e00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00796e04  f4 dc 1f 00 a8 0b 00 00                          .byte 0xf4, 0xdc, 0x1f, 0x00, 0xa8, 0x0b, 0x00, 0x00

; FUNCTION 0x00797540, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::as_property
; alias: _ZNK7gameswf11as_property3getEPNS_9as_objectEPNS_8as_valueE
; demangled: gameswf::as_property::get(gameswf::as_object*, gameswf::as_value*) const
; decoder-mode: arm
00797540  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00797544  01 40 a0 e1                                      mov r4, r1
00797548  30 10 91 e5                                      ldr r1, [r1, #0x30]
0079754c  98 d0 4d e2                                      sub sp, sp, #0x98
00797550  00 50 a0 e1                                      mov r5, r0
00797554  00 00 51 e3                                      cmp r1, #0
00797558  02 70 a0 e1                                      mov r7, r2
0079755c  03 00 00 0a                                      beq #0x797570
00797560  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00797564  04 30 d0 e5                                      ldrb r3, [r0, #4]
00797568  00 00 53 e3                                      cmp r3, #0
0079756c  29 00 00 0a                                      beq #0x797618
00797570  04 60 8d e2                                      add r6, sp, #4
00797574  06 00 a0 e1                                      mov r0, r6
00797578  73 1d ff eb                                      bl #0x75eb4c
0079757c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00797580  00 00 53 e3                                      cmp r3, #0
00797584  1f 00 00 0a                                      beq #0x797608
00797588  04 00 a0 e1                                      mov r0, r4
0079758c  b4 09 ff eb                                      bl #0x759c64
00797590  0c 90 95 e5                                      ldr sb, [r5, #0xc]
00797594  00 a0 a0 e3                                      mov sl, #0
00797598  04 00 a0 e1                                      mov r0, r4
0079759c  00 30 99 e5                                      ldr r3, [sb]
007975a0  8c 50 8d e2                                      add r5, sp, #0x8c
007975a4  64 80 93 e5                                      ldr r8, [r3, #0x64]
007975a8  05 30 a0 e3                                      mov r3, #5
007975ac  8d 30 cd e5                                      strb r3, [sp, #0x8d]
007975b0  8c a0 cd e5                                      strb sl, [sp, #0x8c]
007975b4  90 40 8d e5                                      str r4, [sp, #0x90]
007975b8  a9 09 ff eb                                      bl #0x759c64
007975bc  dd 28 dd e1                                      ldrsb r2, [sp, #0x8d]
007975c0  78 30 9f e5                                      ldr r3, [pc, #0x78]
007975c4  80 a0 8d e5                                      str sl, [sp, #0x80]
007975c8  05 00 52 e3                                      cmp r2, #5
007975cc  84 a0 8d e5                                      str sl, [sp, #0x84]
007975d0  90 a0 9d 05                                      ldreq sl, [sp, #0x90]
007975d4  03 30 8f e0                                      add r3, pc, r3
007975d8  88 30 8d e5                                      str r3, [sp, #0x88]
007975dc  09 00 a0 e1                                      mov r0, sb
007975e0  70 10 8d e2                                      add r1, sp, #0x70
007975e4  70 70 8d e5                                      str r7, [sp, #0x70]
007975e8  78 50 8d e5                                      str r5, [sp, #0x78]
007975ec  7c 60 8d e5                                      str r6, [sp, #0x7c]
007975f0  74 a0 8d e5                                      str sl, [sp, #0x74]
007975f4  38 ff 2f e1                                      blx r8
007975f8  05 00 a0 e1                                      mov r0, r5
007975fc  c8 fe ff eb                                      bl #0x797124
00797600  04 00 a0 e1                                      mov r0, r4
00797604  0d 0b ff eb                                      bl #0x75a240
00797608  06 00 a0 e1                                      mov r0, r6
0079760c  8a 1a ff eb                                      bl #0x75e03c
00797610  98 d0 8d e2                                      add sp, sp, #0x98
00797614  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00797618  00 10 90 e5                                      ldr r1, [r0]
0079761c  01 10 41 e2                                      sub r1, r1, #1
00797620  00 00 51 e3                                      cmp r1, #0
00797624  00 10 80 e5                                      str r1, [r0]
00797628  00 00 00 1a                                      bne #0x797630
0079762c  41 ed fe eb                                      bl #0x752b38
00797630  00 10 a0 e3                                      mov r1, #0
00797634  2c 10 84 e5                                      str r1, [r4, #0x2c]
00797638  30 10 84 e5                                      str r1, [r4, #0x30]
0079763c  cb ff ff ea                                      b #0x797570
; mapping-symbol data/literal pool
00797640  34 3e 15 00                                      .byte 0x34, 0x3e, 0x15, 0x00

; FUNCTION 0x00797834, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::as_property
; alias: _ZN7gameswf11as_property3setEPNS_9as_objectERKNS_8as_valueE
; demangled: gameswf::as_property::set(gameswf::as_object*, gameswf::as_value const&)
; decoder-mode: arm
00797834  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00797838  01 40 a0 e1                                      mov r4, r1
0079783c  30 10 91 e5                                      ldr r1, [r1, #0x30]
00797840  9c d0 4d e2                                      sub sp, sp, #0x9c
00797844  00 50 a0 e1                                      mov r5, r0
00797848  00 00 51 e3                                      cmp r1, #0
0079784c  02 70 a0 e1                                      mov r7, r2
00797850  03 00 00 0a                                      beq #0x797864
00797854  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00797858  04 30 d0 e5                                      ldrb r3, [r0, #4]
0079785c  00 00 53 e3                                      cmp r3, #0
00797860  2f 00 00 0a                                      beq #0x797924
00797864  04 60 8d e2                                      add r6, sp, #4
00797868  06 00 a0 e1                                      mov r0, r6
0079786c  b6 1c ff eb                                      bl #0x75eb4c
00797870  06 00 a0 e1                                      mov r0, r6
00797874  07 10 a0 e1                                      mov r1, r7
00797878  06 46 ff eb                                      bl #0x769098
0079787c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00797880  00 00 53 e3                                      cmp r3, #0
00797884  22 00 00 0a                                      beq #0x797914
00797888  04 00 a0 e1                                      mov r0, r4
0079788c  f4 08 ff eb                                      bl #0x759c64
00797890  10 a0 95 e5                                      ldr sl, [r5, #0x10]
00797894  00 80 a0 e3                                      mov r8, #0
00797898  04 00 a0 e1                                      mov r0, r4
0079789c  00 30 9a e5                                      ldr r3, [sl]
007978a0  8c 50 8d e2                                      add r5, sp, #0x8c
007978a4  64 70 93 e5                                      ldr r7, [r3, #0x64]
007978a8  05 30 a0 e3                                      mov r3, #5
007978ac  8d 30 cd e5                                      strb r3, [sp, #0x8d]
007978b0  8c 80 cd e5                                      strb r8, [sp, #0x8c]
007978b4  90 40 8d e5                                      str r4, [sp, #0x90]
007978b8  e9 08 ff eb                                      bl #0x759c64
007978bc  dd 18 dd e1                                      ldrsb r1, [sp, #0x8d]
007978c0  08 20 9d e5                                      ldr r2, [sp, #8]
007978c4  80 30 9f e5                                      ldr r3, [pc, #0x80]
007978c8  05 00 51 e3                                      cmp r1, #5
007978cc  70 80 8d e5                                      str r8, [sp, #0x70]
007978d0  90 80 9d 05                                      ldreq r8, [sp, #0x90]
007978d4  01 20 42 e2                                      sub r2, r2, #1
007978d8  03 30 8f e0                                      add r3, pc, r3
007978dc  01 10 a0 e3                                      mov r1, #1
007978e0  80 10 8d e5                                      str r1, [sp, #0x80]
007978e4  84 20 8d e5                                      str r2, [sp, #0x84]
007978e8  88 30 8d e5                                      str r3, [sp, #0x88]
007978ec  0a 00 a0 e1                                      mov r0, sl
007978f0  70 10 8d e2                                      add r1, sp, #0x70
007978f4  78 50 8d e5                                      str r5, [sp, #0x78]
007978f8  7c 60 8d e5                                      str r6, [sp, #0x7c]
007978fc  74 80 8d e5                                      str r8, [sp, #0x74]
00797900  37 ff 2f e1                                      blx r7
00797904  05 00 a0 e1                                      mov r0, r5
00797908  05 fe ff eb                                      bl #0x797124
0079790c  04 00 a0 e1                                      mov r0, r4
00797910  4a 0a ff eb                                      bl #0x75a240
00797914  06 00 a0 e1                                      mov r0, r6
00797918  c7 19 ff eb                                      bl #0x75e03c
0079791c  9c d0 8d e2                                      add sp, sp, #0x9c
00797920  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00797924  00 10 90 e5                                      ldr r1, [r0]
00797928  01 10 41 e2                                      sub r1, r1, #1
0079792c  00 00 51 e3                                      cmp r1, #0
00797930  00 10 80 e5                                      str r1, [r0]
00797934  00 00 00 1a                                      bne #0x79793c
00797938  7e ec fe eb                                      bl #0x752b38
0079793c  00 10 a0 e3                                      mov r1, #0
00797940  2c 10 84 e5                                      str r1, [r4, #0x2c]
00797944  30 10 84 e5                                      str r1, [r4, #0x30]
00797948  c5 ff ff ea                                      b #0x797864
; mapping-symbol data/literal pool
0079794c  78 ea 14 00                                      .byte 0x78, 0xea, 0x14, 0x00
