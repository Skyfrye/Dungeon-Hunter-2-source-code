; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00888720, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor10IsSeekableEv
; demangled: vox::StreamCFileCursor::IsSeekable()
; decoder-mode: arm
00888720  01 00 a0 e3                                      mov r0, #1
00888724  1e ff 2f e1                                      bx lr

; FUNCTION 0x00888728, declared_size=80, range_size=80, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4InitEv
; demangled: vox::StreamCFileCursor::Init()
; decoder-mode: arm
00888728  10 40 2d e9                                      push {r4, lr}
0088872c  04 30 90 e5                                      ldr r3, [r0, #4]
00888730  00 40 a0 e1                                      mov r4, r0
00888734  00 00 53 e3                                      cmp r3, #0
00888738  02 00 00 0a                                      beq #0x888748
0088873c  08 20 90 e5                                      ldr r2, [r0, #8]
00888740  00 00 52 e3                                      cmp r2, #0
00888744  00 00 00 0a                                      beq #0x88874c
00888748  10 80 bd e8                                      pop {r4, pc}
0088874c  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00888750  20 30 93 e5                                      ldr r3, [r3, #0x20]
00888754  00 00 51 e3                                      cmp r1, #0
00888758  fa ff ff 0a                                      beq #0x888748
0088875c  03 00 a0 e1                                      mov r0, r3
00888760  06 20 a0 e3                                      mov r2, #6
00888764  00 30 93 e5                                      ldr r3, [r3]
00888768  0f e0 a0 e1                                      mov lr, pc
0088876c  08 f0 93 e5                                      ldr pc, [r3, #8]
00888770  08 00 84 e5                                      str r0, [r4, #8]
00888774  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00888778, declared_size=68, range_size=68, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4TellEv
; demangled: vox::StreamCFileCursor::Tell()
; decoder-mode: arm
00888778  10 40 2d e9                                      push {r4, lr}
0088877c  08 30 90 e5                                      ldr r3, [r0, #8]
00888780  00 40 a0 e1                                      mov r4, r0
00888784  00 00 53 e3                                      cmp r3, #0
00888788  09 00 00 0a                                      beq #0x8887b4
0088878c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00888790  00 00 50 e3                                      cmp r0, #0
00888794  00 00 00 ba                                      blt #0x88879c
00888798  10 80 bd e8                                      pop {r4, pc}
0088879c  03 00 a0 e1                                      mov r0, r3
008887a0  00 30 93 e5                                      ldr r3, [r3]
008887a4  0f e0 a0 e1                                      mov lr, pc
008887a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008887ac  0c 00 84 e5                                      str r0, [r4, #0xc]
008887b0  10 80 bd e8                                      pop {r4, pc}
008887b4  00 00 e0 e3                                      mvn r0, #0
008887b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088885c, declared_size=356, range_size=356, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4ReadEPhi
; demangled: vox::StreamCFileCursor::Read(unsigned char*, int)
; decoder-mode: arm
0088885c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00888860  08 30 90 e5                                      ldr r3, [r0, #8]
00888864  0c d0 4d e2                                      sub sp, sp, #0xc
00888868  00 40 a0 e1                                      mov r4, r0
0088886c  00 00 53 e3                                      cmp r3, #0
00888870  00 00 52 13                                      cmpne r2, #0
00888874  02 50 a0 e1                                      mov r5, r2
00888878  01 90 a0 e1                                      mov sb, r1
0088887c  00 60 a0 d3                                      movle r6, #0
00888880  01 60 a0 c3                                      movgt r6, #1
00888884  44 00 00 da                                      ble #0x88899c
00888888  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0088888c  00 00 52 e3                                      cmp r2, #0
00888890  44 00 00 ba                                      blt #0x8889a8
00888894  10 a0 08 e3                                      movw sl, #0x8010
00888898  14 70 08 e3                                      movw r7, #0x8014
0088889c  07 30 94 e7                                      ldr r3, [r4, r7]
008888a0  0a 80 94 e7                                      ldr r8, [r4, sl]
008888a4  00 60 a0 e3                                      mov r6, #0
008888a8  18 b0 08 e3                                      movw fp, #0x8018
008888ac  08 80 63 e0                                      rsb r8, r3, r8
008888b0  10 30 84 e2                                      add r3, r4, #0x10
008888b4  04 30 8d e5                                      str r3, [sp, #4]
008888b8  0c 00 00 ea                                      b #0x8888f0
008888bc  05 20 a0 e1                                      mov r2, r5
008888c0  e8 17 ea eb                                      bl #0x30e868
008888c4  07 30 94 e7                                      ldr r3, [r4, r7]
008888c8  0a 80 94 e7                                      ldr r8, [r4, sl]
008888cc  05 60 86 e0                                      add r6, r6, r5
008888d0  03 50 85 e0                                      add r5, r5, r3
008888d4  08 80 65 e0                                      rsb r8, r5, r8
008888d8  07 50 84 e7                                      str r5, [r4, r7]
008888dc  00 50 a0 e3                                      mov r5, #0
008888e0  00 00 58 e3                                      cmp r8, #0
008888e4  17 00 00 0a                                      beq #0x888948
008888e8  00 00 55 e3                                      cmp r5, #0
008888ec  27 00 00 da                                      ble #0x888990
008888f0  00 00 55 e3                                      cmp r5, #0
008888f4  00 00 58 c3                                      cmpgt r8, #0
008888f8  07 30 94 c7                                      ldrgt r3, [r4, r7]
008888fc  f7 ff ff da                                      ble #0x8888e0
00888900  10 10 83 e2                                      add r1, r3, #0x10
00888904  08 00 55 e1                                      cmp r5, r8
00888908  01 10 84 e0                                      add r1, r4, r1
0088890c  06 00 89 e0                                      add r0, sb, r6
00888910  08 20 a0 e1                                      mov r2, r8
00888914  e8 ff ff da                                      ble #0x8888bc
00888918  d2 17 ea eb                                      bl #0x30e868
0088891c  07 30 94 e7                                      ldr r3, [r4, r7]
00888920  0a 20 94 e7                                      ldr r2, [r4, sl]
00888924  05 50 68 e0                                      rsb r5, r8, r5
00888928  03 30 88 e0                                      add r3, r8, r3
0088892c  08 60 86 e0                                      add r6, r6, r8
00888930  02 80 63 e0                                      rsb r8, r3, r2
00888934  00 00 58 e3                                      cmp r8, #0
00888938  00 00 55 c3                                      cmpgt r5, #0
0088893c  07 30 84 e7                                      str r3, [r4, r7]
00888940  ee ff ff ca                                      bgt #0x888900
00888944  e5 ff ff ea                                      b #0x8888e0
00888948  0a 00 94 e7                                      ldr r0, [r4, sl]
0088894c  0b 20 94 e7                                      ldr r2, [r4, fp]
00888950  08 30 94 e5                                      ldr r3, [r4, #8]
00888954  04 10 9d e5                                      ldr r1, [sp, #4]
00888958  02 20 80 e0                                      add r2, r0, r2
0088895c  0b 20 84 e7                                      str r2, [r4, fp]
00888960  03 00 a0 e1                                      mov r0, r3
00888964  00 c0 93 e5                                      ldr ip, [r3]
00888968  01 20 a0 e3                                      mov r2, #1
0088896c  02 39 a0 e3                                      mov r3, #0x8000
00888970  0f e0 a0 e1                                      mov lr, pc
00888974  08 f0 9c e5                                      ldr pc, [ip, #8]
00888978  00 30 a0 e3                                      mov r3, #0
0088897c  00 00 50 e3                                      cmp r0, #0
00888980  0a 00 84 e7                                      str r0, [r4, sl]
00888984  00 80 a0 e1                                      mov r8, r0
00888988  07 30 84 e7                                      str r3, [r4, r7]
0088898c  d5 ff ff 1a                                      bne #0x8888e8
00888990  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00888994  06 30 83 e0                                      add r3, r3, r6
00888998  0c 30 84 e5                                      str r3, [r4, #0xc]
0088899c  06 00 a0 e1                                      mov r0, r6
008889a0  0c d0 8d e2                                      add sp, sp, #0xc
008889a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008889a8  03 00 a0 e1                                      mov r0, r3
008889ac  00 30 93 e5                                      ldr r3, [r3]
008889b0  0f e0 a0 e1                                      mov lr, pc
008889b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008889b8  0c 00 84 e5                                      str r0, [r4, #0xc]
008889bc  b4 ff ff ea                                      b #0x888894

; FUNCTION 0x008889c0, declared_size=108, range_size=108, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor8ShutdownEv
; demangled: vox::StreamCFileCursor::Shutdown()
; decoder-mode: arm
008889c0  10 40 2d e9                                      push {r4, lr}
008889c4  04 30 90 e5                                      ldr r3, [r0, #4]
008889c8  00 40 a0 e1                                      mov r4, r0
008889cc  00 00 53 e3                                      cmp r3, #0
008889d0  0a 00 00 0a                                      beq #0x888a00
008889d4  08 10 90 e5                                      ldr r1, [r0, #8]
008889d8  00 00 51 e3                                      cmp r1, #0
008889dc  11 00 00 0a                                      beq #0x888a28
008889e0  20 30 93 e5                                      ldr r3, [r3, #0x20]
008889e4  00 00 53 e3                                      cmp r3, #0
008889e8  0e 00 00 0a                                      beq #0x888a28
008889ec  03 00 a0 e1                                      mov r0, r3
008889f0  00 30 93 e5                                      ldr r3, [r3]
008889f4  0f e0 a0 e1                                      mov lr, pc
008889f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008889fc  10 80 bd e8                                      pop {r4, pc}
00888a00  08 30 90 e5                                      ldr r3, [r0, #8]
00888a04  00 00 53 e3                                      cmp r3, #0
00888a08  06 00 00 0a                                      beq #0x888a28
00888a0c  e4 2e 00 eb                                      bl #0x8945a4
00888a10  00 30 50 e2                                      subs r3, r0, #0
00888a14  03 00 00 0a                                      beq #0x888a28
00888a18  00 30 93 e5                                      ldr r3, [r3]
00888a1c  08 10 94 e5                                      ldr r1, [r4, #8]
00888a20  0f e0 a0 e1                                      mov lr, pc
00888a24  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00888a28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00888a2c, declared_size=52, range_size=52, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursorD1Ev
; demangled: vox::StreamCFileCursor::~StreamCFileCursor()
; decoder-mode: arm
00888a2c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00888a30  24 20 9f e5                                      ldr r2, [pc, #0x24]
00888a34  10 40 2d e9                                      push {r4, lr}
00888a38  03 30 8f e0                                      add r3, pc, r3
00888a3c  02 20 93 e7                                      ldr r2, [r3, r2]
00888a40  00 40 a0 e1                                      mov r4, r0
00888a44  08 20 82 e2                                      add r2, r2, #8
00888a48  00 20 80 e5                                      str r2, [r0]
00888a4c  db ff ff eb                                      bl #0x8889c0
00888a50  04 00 a0 e1                                      mov r0, r4
00888a54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888a58  58 c0 10 00 00 12 00 00                          .byte 0x58, 0xc0, 0x10, 0x00, 0x00, 0x12, 0x00, 0x00

; FUNCTION 0x00888cb4, declared_size=60, range_size=60, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursorD0Ev
; demangled: vox::StreamCFileCursor::~StreamCFileCursor()
; decoder-mode: arm
00888cb4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00888cb8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00888cbc  10 40 2d e9                                      push {r4, lr}
00888cc0  03 30 8f e0                                      add r3, pc, r3
00888cc4  02 20 93 e7                                      ldr r2, [r3, r2]
00888cc8  00 40 a0 e1                                      mov r4, r0
00888ccc  08 20 82 e2                                      add r2, r2, #8
00888cd0  00 20 80 e5                                      str r2, [r0]
00888cd4  39 ff ff eb                                      bl #0x8889c0
00888cd8  04 00 a0 e1                                      mov r0, r4
00888cdc  73 15 ea eb                                      bl #0x30e2b0
00888ce0  04 00 a0 e1                                      mov r0, r4
00888ce4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888ce8  d0 bd 10 00 00 12 00 00                          .byte 0xd0, 0xbd, 0x10, 0x00, 0x00, 0x12, 0x00, 0x00

; FUNCTION 0x00888cf0, declared_size=116, range_size=116, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor11EndOfStreamEv
; demangled: vox::StreamCFileCursor::EndOfStream()
; decoder-mode: arm
00888cf0  70 40 2d e9                                      push {r4, r5, r6, lr}
00888cf4  08 30 90 e5                                      ldr r3, [r0, #8]
00888cf8  00 40 a0 e1                                      mov r4, r0
00888cfc  00 00 53 e3                                      cmp r3, #0
00888d00  15 00 00 0a                                      beq #0x888d5c
00888d04  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00888d08  00 00 55 e3                                      cmp r5, #0
00888d0c  0c 00 00 ba                                      blt #0x888d44
00888d10  04 30 94 e5                                      ldr r3, [r4, #4]
00888d14  00 00 53 e3                                      cmp r3, #0
00888d18  00 00 e0 03                                      mvneq r0, #0
00888d1c  04 00 00 0a                                      beq #0x888d34
00888d20  03 00 a0 e1                                      mov r0, r3
00888d24  00 30 93 e5                                      ldr r3, [r3]
00888d28  0f e0 a0 e1                                      mov lr, pc
00888d2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888d30  01 00 40 e2                                      sub r0, r0, #1
00888d34  00 00 55 e1                                      cmp r5, r0
00888d38  00 00 a0 b3                                      movlt r0, #0
00888d3c  01 00 a0 a3                                      movge r0, #1
00888d40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888d44  00 30 90 e5                                      ldr r3, [r0]
00888d48  0f e0 a0 e1                                      mov lr, pc
00888d4c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00888d50  00 50 a0 e1                                      mov r5, r0
00888d54  0c 00 84 e5                                      str r0, [r4, #0xc]
00888d58  ec ff ff ea                                      b #0x888d10
00888d5c  01 00 a0 e3                                      mov r0, #1
00888d60  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00888db8, declared_size=352, range_size=352, mode=arm
; class-group: vox::StreamCFileCursor
; alias: _ZN3vox17StreamCFileCursor4SeekEii
; demangled: vox::StreamCFileCursor::Seek(int, int)
; decoder-mode: arm
00888db8  70 40 2d e9                                      push {r4, r5, r6, lr}
00888dbc  08 30 90 e5                                      ldr r3, [r0, #8]
00888dc0  00 40 a0 e1                                      mov r4, r0
00888dc4  01 50 a0 e1                                      mov r5, r1
00888dc8  00 00 53 e3                                      cmp r3, #0
00888dcc  49 00 00 0a                                      beq #0x888ef8
00888dd0  01 00 52 e3                                      cmp r2, #1
00888dd4  41 00 00 0a                                      beq #0x888ee0
00888dd8  02 00 52 e3                                      cmp r2, #2
00888ddc  11 00 00 0a                                      beq #0x888e28
00888de0  00 00 52 e3                                      cmp r2, #0
00888de4  0c 50 90 15                                      ldrne r5, [r0, #0xc]
00888de8  18 00 00 0a                                      beq #0x888e50
00888dec  00 00 55 e3                                      cmp r5, #0
00888df0  09 00 00 ba                                      blt #0x888e1c
00888df4  04 30 94 e5                                      ldr r3, [r4, #4]
00888df8  00 00 53 e3                                      cmp r3, #0
00888dfc  03 00 a0 01                                      moveq r0, r3
00888e00  03 00 00 0a                                      beq #0x888e14
00888e04  03 00 a0 e1                                      mov r0, r3
00888e08  00 30 93 e5                                      ldr r3, [r3]
00888e0c  0f e0 a0 e1                                      mov lr, pc
00888e10  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888e14  00 00 55 e1                                      cmp r5, r0
00888e18  0e 00 00 da                                      ble #0x888e58
00888e1c  00 00 e0 e3                                      mvn r0, #0
00888e20  0c 00 84 e5                                      str r0, [r4, #0xc]
00888e24  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888e28  04 30 90 e5                                      ldr r3, [r0, #4]
00888e2c  00 00 53 e3                                      cmp r3, #0
00888e30  03 00 a0 01                                      moveq r0, r3
00888e34  03 00 00 0a                                      beq #0x888e48
00888e38  03 00 a0 e1                                      mov r0, r3
00888e3c  00 30 93 e5                                      ldr r3, [r3]
00888e40  0f e0 a0 e1                                      mov lr, pc
00888e44  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888e48  05 50 e0 e1                                      mvn r5, r5
00888e4c  00 50 85 e0                                      add r5, r5, r0
00888e50  0c 50 84 e5                                      str r5, [r4, #0xc]
00888e54  e4 ff ff ea                                      b #0x888dec
00888e58  18 30 08 e3                                      movw r3, #0x8018
00888e5c  03 30 94 e7                                      ldr r3, [r4, r3]
00888e60  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00888e64  03 00 51 e1                                      cmp r1, r3
00888e68  04 00 00 ba                                      blt #0x888e80
00888e6c  10 20 08 e3                                      movw r2, #0x8010
00888e70  02 20 94 e7                                      ldr r2, [r4, r2]
00888e74  02 20 83 e0                                      add r2, r3, r2
00888e78  02 00 51 e1                                      cmp r1, r2
00888e7c  12 00 00 ba                                      blt #0x888ecc
00888e80  08 30 94 e5                                      ldr r3, [r4, #8]
00888e84  00 20 a0 e3                                      mov r2, #0
00888e88  10 00 08 e3                                      movw r0, #0x8010
00888e8c  00 20 84 e7                                      str r2, [r4, r0]
00888e90  18 50 08 e3                                      movw r5, #0x8018
00888e94  14 00 08 e3                                      movw r0, #0x8014
00888e98  00 20 84 e7                                      str r2, [r4, r0]
00888e9c  05 20 84 e7                                      str r2, [r4, r5]
00888ea0  03 00 a0 e1                                      mov r0, r3
00888ea4  00 30 93 e5                                      ldr r3, [r3]
00888ea8  0f e0 a0 e1                                      mov lr, pc
00888eac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00888eb0  00 00 50 e3                                      cmp r0, #0
00888eb4  0c 30 94 05                                      ldreq r3, [r4, #0xc]
00888eb8  00 30 e0 13                                      mvnne r3, #0
00888ebc  05 30 84 17                                      strne r3, [r4, r5]
00888ec0  05 30 84 07                                      streq r3, [r4, r5]
00888ec4  0c 30 84 15                                      strne r3, [r4, #0xc]
00888ec8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888ecc  01 10 63 e0                                      rsb r1, r3, r1
00888ed0  14 20 08 e3                                      movw r2, #0x8014
00888ed4  02 10 84 e7                                      str r1, [r4, r2]
00888ed8  00 00 a0 e3                                      mov r0, #0
00888edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888ee0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00888ee4  00 00 50 e3                                      cmp r0, #0
00888ee8  04 00 00 ba                                      blt #0x888f00
00888eec  00 50 85 e0                                      add r5, r5, r0
00888ef0  0c 50 84 e5                                      str r5, [r4, #0xc]
00888ef4  bc ff ff ea                                      b #0x888dec
00888ef8  00 00 e0 e3                                      mvn r0, #0
00888efc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888f00  03 00 a0 e1                                      mov r0, r3
00888f04  00 30 93 e5                                      ldr r3, [r3]
00888f08  0f e0 a0 e1                                      mov lr, pc
00888f0c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888f10  0c 00 84 e5                                      str r0, [r4, #0xc]
00888f14  f4 ff ff ea                                      b #0x888eec
