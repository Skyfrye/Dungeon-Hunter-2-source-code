; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00800ed8, declared_size=180, range_size=180, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetoothC1Ev
; demangled: CMatchingBluetooth::CMatchingBluetooth()
; decoder-mode: arm
00800ed8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00800edc  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
00800ee0  00 40 a0 e1                                      mov r4, r0
00800ee4  d6 1b 00 eb                                      bl #0x807e44
00800ee8  98 30 9f e5                                      ldr r3, [pc, #0x98]
00800eec  05 50 8f e0                                      add r5, pc, r5
00800ef0  a9 0c 84 e2                                      add r0, r4, #0xa900
00800ef4  03 30 95 e7                                      ldr r3, [r5, r3]
00800ef8  e8 00 80 e2                                      add r0, r0, #0xe8
00800efc  00 50 a0 e3                                      mov r5, #0
00800f00  08 30 83 e2                                      add r3, r3, #8
00800f04  00 30 84 e5                                      str r3, [r4]
00800f08  9b ff ff eb                                      bl #0x800d7c
00800f0c  78 2b 0a e3                                      movw r2, #0xab78
00800f10  02 50 84 e7                                      str r5, [r4, r2]
00800f14  7c 2b 0a e3                                      movw r2, #0xab7c
00800f18  02 50 c4 e7                                      strb r5, [r4, r2]
00800f1c  ab 6c 84 e2                                      add r6, r4, #0xab00
00800f20  84 2b 0a e3                                      movw r2, #0xab84
00800f24  88 30 86 e2                                      add r3, r6, #0x88
00800f28  02 50 c4 e7                                      strb r5, [r4, r2]
00800f2c  98 7b 0a e3                                      movw r7, #0xab98
00800f30  9c 2b 0a e3                                      movw r2, #0xab9c
00800f34  02 30 84 e7                                      str r3, [r4, r2]
00800f38  03 00 a0 e1                                      mov r0, r3
00800f3c  07 30 84 e7                                      str r3, [r4, r7]
00800f40  10 10 a0 e3                                      mov r1, #0x10
00800f44  cc 41 ec eb                                      bl #0x31167c
00800f48  07 30 94 e7                                      ldr r3, [r4, r7]
00800f4c  a0 60 86 e2                                      add r6, r6, #0xa0
00800f50  04 00 a0 e1                                      mov r0, r4
00800f54  00 50 c3 e5                                      strb r5, [r3]
00800f58  ac 3b 0a e3                                      movw r3, #0xabac
00800f5c  03 60 84 e7                                      str r6, [r4, r3]
00800f60  b0 3b 0a e3                                      movw r3, #0xabb0
00800f64  03 50 84 e7                                      str r5, [r4, r3]
00800f68  a4 3b 0a e3                                      movw r3, #0xaba4
00800f6c  03 50 84 e7                                      str r5, [r4, r3]
00800f70  a0 3b 0a e3                                      movw r3, #0xaba0
00800f74  03 50 c4 e7                                      strb r5, [r4, r3]
00800f78  a8 3b 0a e3                                      movw r3, #0xaba8
00800f7c  03 60 84 e7                                      str r6, [r4, r3]
00800f80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00800f84  a4 3b 19 00 78 13 00 00                          .byte 0xa4, 0x3b, 0x19, 0x00, 0x78, 0x13, 0x00, 0x00

; FUNCTION 0x00801b60, declared_size=32, range_size=32, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth16GetTransportTypeE14tPROTOCOL_TYPE
; demangled: CMatchingBluetooth::GetTransportType(tPROTOCOL_TYPE)
; decoder-mode: arm
00801b60  02 00 51 e3                                      cmp r1, #2
00801b64  00 00 a0 83                                      movhi r0, #0
00801b68  1e ff 2f 81                                      bxhi lr
00801b6c  08 30 9f e5                                      ldr r3, [pc, #8]
00801b70  03 30 8f e0                                      add r3, pc, r3
00801b74  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00801b78  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00801b7c  20 a6 10 00                                      .byte 0x20, 0xa6, 0x10, 0x00

; FUNCTION 0x00801c58, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth18SetServerBroadcastEv
; demangled: CMatchingBluetooth::SetServerBroadcast()
; decoder-mode: arm
00801c58  30 40 2d e9                                      push {r4, r5, lr}
00801c5c  24 d0 4d e2                                      sub sp, sp, #0x24
00801c60  66 63 00 eb                                      bl #0x81aa00
00801c64  00 50 a0 e1                                      mov r5, r0
00801c68  64 63 00 eb                                      bl #0x81aa00
00801c6c  04 40 8d e2                                      add r4, sp, #4
00801c70  00 10 a0 e1                                      mov r1, r0
00801c74  00 20 a0 e3                                      mov r2, #0
00801c78  04 00 a0 e1                                      mov r0, r4
00801c7c  2b 64 00 eb                                      bl #0x81ad30
00801c80  05 00 a0 e1                                      mov r0, r5
00801c84  04 10 a0 e1                                      mov r1, r4
00801c88  7f 63 00 eb                                      bl #0x81aa8c
00801c8c  24 d0 8d e2                                      add sp, sp, #0x24
00801c90  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00801c94, declared_size=92, range_size=92, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth9LeaveRoomEv
; demangled: CMatchingBluetooth::LeaveRoom()
; decoder-mode: arm
00801c94  10 40 2d e9                                      push {r4, lr}
00801c98  38 36 03 e3                                      movw r3, #0x3638
00801c9c  03 30 90 e7                                      ldr r3, [r0, r3]
00801ca0  00 40 a0 e1                                      mov r4, r0
00801ca4  00 00 53 e3                                      cmp r3, #0
00801ca8  03 00 00 ba                                      blt #0x801cbc
00801cac  3c 26 03 e3                                      movw r2, #0x363c
00801cb0  02 20 90 e7                                      ldr r2, [r0, r2]
00801cb4  02 00 53 e1                                      cmp r3, r2
00801cb8  09 00 00 0a                                      beq #0x801ce4
00801cbc  2c e8 ff eb                                      bl #0x7fbd74
00801cc0  63 e8 ff eb                                      bl #0x7fbe54
00801cc4  ee 8b 00 eb                                      bl #0x824c84
00801cc8  04 00 a0 e1                                      mov r0, r4
00801ccc  f4 15 00 eb                                      bl #0x8074a4
00801cd0  01 20 a0 e3                                      mov r2, #1
00801cd4  84 3b 0a e3                                      movw r3, #0xab84
00801cd8  03 20 c4 e7                                      strb r2, [r4, r3]
00801cdc  00 00 a0 e3                                      mov r0, #0
00801ce0  10 80 bd e8                                      pop {r4, pc}
00801ce4  01 10 a0 e3                                      mov r1, #1
00801ce8  3c 10 00 eb                                      bl #0x805de0
00801cec  f2 ff ff ea                                      b #0x801cbc

; FUNCTION 0x00802020, declared_size=152, range_size=152, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth10InitializeEi
; demangled: CMatchingBluetooth::Initialize(int)
; decoder-mode: arm
00802020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00802024  00 60 a0 e1                                      mov r6, r0
00802028  0b f6 ff eb                                      bl #0x7ff85c
0080202c  0c 50 d6 e5                                      ldrb r5, [r6, #0xc]
00802030  70 40 9f e5                                      ldr r4, [pc, #0x70]
00802034  00 00 55 e3                                      cmp r5, #0
00802038  04 40 8f e0                                      add r4, pc, r4
0080203c  17 00 00 1a                                      bne #0x8020a0
00802040  64 30 9f e5                                      ldr r3, [pc, #0x64]
00802044  02 00 a0 e3                                      mov r0, #2
00802048  00 10 a0 e1                                      mov r1, r0
0080204c  03 70 94 e7                                      ldr r7, [r4, r3]
00802050  07 20 a0 e1                                      mov r2, r7
00802054  cf e7 ff eb                                      bl #0x7fbf98
00802058  07 20 a0 e1                                      mov r2, r7
0080205c  01 10 a0 e3                                      mov r1, #1
00802060  03 00 a0 e3                                      mov r0, #3
00802064  cb e7 ff eb                                      bl #0x7fbf98
00802068  40 30 9f e5                                      ldr r3, [pc, #0x40]
0080206c  01 10 a0 e3                                      mov r1, #1
00802070  04 00 a0 e3                                      mov r0, #4
00802074  03 20 94 e7                                      ldr r2, [r4, r3]
00802078  b7 e7 ff eb                                      bl #0x7fbf5c
0080207c  06 00 a0 e1                                      mov r0, r6
00802080  07 15 00 eb                                      bl #0x8074a4
00802084  28 30 9f e5                                      ldr r3, [pc, #0x28]
00802088  02 15 a0 e3                                      mov r1, #0x800000
0080208c  05 20 a0 e1                                      mov r2, r5
00802090  03 00 94 e7                                      ldr r0, [r4, r3]
00802094  01 10 81 e2                                      add r1, r1, #1
00802098  05 30 a0 e1                                      mov r3, r5
0080209c  58 f0 ff eb                                      bl #0x7fe204
008020a0  00 00 a0 e3                                      mov r0, #0
008020a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008020a8  58 2a 19 00 64 07 00 00 50 32 00 00 3c 34 00 00  .byte 0x58, 0x2a, 0x19, 0x00, 0x64, 0x07, 0x00, 0x00, 0x50, 0x32, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0080236c, declared_size=144, range_size=144, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth9TerminateEv
; demangled: CMatchingBluetooth::Terminate()
; decoder-mode: arm
0080236c  70 40 2d e9                                      push {r4, r5, r6, lr}
00802370  74 40 9f e5                                      ldr r4, [pc, #0x74]
00802374  74 30 9f e5                                      ldr r3, [pc, #0x74]
00802378  00 50 a0 e1                                      mov r5, r0
0080237c  04 40 8f e0                                      add r4, pc, r4
00802380  03 00 94 e7                                      ldr r0, [r4, r3]
00802384  2b f0 ff eb                                      bl #0x7fe438
00802388  64 30 9f e5                                      ldr r3, [pc, #0x64]
0080238c  03 00 94 e7                                      ldr r0, [r4, r3]
00802390  28 f0 ff eb                                      bl #0x7fe438
00802394  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00802398  03 40 94 e7                                      ldr r4, [r4, r3]
0080239c  10 30 94 e5                                      ldr r3, [r4, #0x10]
008023a0  00 00 53 e3                                      cmp r3, #0
008023a4  06 00 00 0a                                      beq #0x8023c4
008023a8  04 00 a0 e1                                      mov r0, r4
008023ac  04 10 94 e5                                      ldr r1, [r4, #4]
008023b0  d2 ff ff eb                                      bl #0x802300
008023b4  00 30 a0 e3                                      mov r3, #0
008023b8  10 30 84 e5                                      str r3, [r4, #0x10]
008023bc  18 00 84 e9                                      stmib r4, {r3, r4}
008023c0  0c 40 84 e5                                      str r4, [r4, #0xc]
008023c4  02 00 a0 e3                                      mov r0, #2
008023c8  db e7 ff eb                                      bl #0x7fc33c
008023cc  03 00 a0 e3                                      mov r0, #3
008023d0  d9 e7 ff eb                                      bl #0x7fc33c
008023d4  04 00 a0 e3                                      mov r0, #4
008023d8  d7 e7 ff eb                                      bl #0x7fc33c
008023dc  05 00 a0 e1                                      mov r0, r5
008023e0  1d 0f 00 eb                                      bl #0x80605c
008023e4  00 00 a0 e3                                      mov r0, #0
008023e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008023ec  14 27 19 00 88 15 00 00 3c 34 00 00 fc 30 00 00  .byte 0x14, 0x27, 0x19, 0x00, 0x88, 0x15, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00, 0xfc, 0x30, 0x00, 0x00

; FUNCTION 0x0080246c, declared_size=148, range_size=148, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetoothD1Ev
; demangled: CMatchingBluetooth::~CMatchingBluetooth()
; decoder-mode: arm
0080246c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00802470  80 30 9f e5                                      ldr r3, [pc, #0x80]
00802474  80 20 9f e5                                      ldr r2, [pc, #0x80]
00802478  b0 5b 0a e3                                      movw r5, #0xabb0
0080247c  03 30 8f e0                                      add r3, pc, r3
00802480  05 10 90 e7                                      ldr r1, [r0, r5]
00802484  02 20 93 e7                                      ldr r2, [r3, r2]
00802488  00 40 a0 e1                                      mov r4, r0
0080248c  00 00 51 e3                                      cmp r1, #0
00802490  08 20 82 e2                                      add r2, r2, #8
00802494  00 20 80 e5                                      str r2, [r0]
00802498  ab 6c 80 02                                      addeq r6, r0, #0xab00
0080249c  0c 00 00 0a                                      beq #0x8024d4
008024a0  ab 6c 80 e2                                      add r6, r0, #0xab00
008024a4  a0 70 86 e2                                      add r7, r6, #0xa0
008024a8  a4 8b 0a e3                                      movw r8, #0xaba4
008024ac  07 00 a0 e1                                      mov r0, r7
008024b0  08 10 94 e7                                      ldr r1, [r4, r8]
008024b4  83 ff ff eb                                      bl #0x8022c8
008024b8  ac 2b 0a e3                                      movw r2, #0xabac
008024bc  02 70 84 e7                                      str r7, [r4, r2]
008024c0  00 30 a0 e3                                      mov r3, #0
008024c4  a8 2b 0a e3                                      movw r2, #0xaba8
008024c8  05 30 84 e7                                      str r3, [r4, r5]
008024cc  02 70 84 e7                                      str r7, [r4, r2]
008024d0  08 30 84 e7                                      str r3, [r4, r8]
008024d4  88 00 86 e2                                      add r0, r6, #0x88
008024d8  5d 57 ec eb                                      bl #0x318254
008024dc  a9 0c 84 e2                                      add r0, r4, #0xa900
008024e0  e8 00 80 e2                                      add r0, r0, #0xe8
008024e4  48 fd ff eb                                      bl #0x801a0c
008024e8  04 00 a0 e1                                      mov r0, r4
008024ec  ef 16 00 eb                                      bl #0x8080b0
008024f0  04 00 a0 e1                                      mov r0, r4
008024f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008024f8  14 26 19 00 78 13 00 00                          .byte 0x14, 0x26, 0x19, 0x00, 0x78, 0x13, 0x00, 0x00

; FUNCTION 0x00802500, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetoothD0Ev
; demangled: CMatchingBluetooth::~CMatchingBluetooth()
; decoder-mode: arm
00802500  10 40 2d e9                                      push {r4, lr}
00802504  00 40 a0 e1                                      mov r4, r0
00802508  d7 ff ff eb                                      bl #0x80246c
0080250c  04 00 a0 e1                                      mov r0, r4
00802510  ca 37 ec eb                                      bl #0x310440
00802514  04 00 a0 e1                                      mov r0, r4
00802518  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00803274, declared_size=468, range_size=468, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth16JoinRoomInternalEy
; demangled: CMatchingBluetooth::JoinRoomInternal(unsigned long long)
; decoder-mode: arm
00803274  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00803278  46 7c 80 e2                                      add r7, r0, #0x4600
0080327c  30 d0 4d e2                                      sub sp, sp, #0x30
00803280  3c 50 87 e2                                      add r5, r7, #0x3c
00803284  00 40 a0 e1                                      mov r4, r0
00803288  24 60 8d e2                                      add r6, sp, #0x24
0080328c  05 00 a0 e1                                      mov r0, r5
00803290  f0 20 cd e1                                      strd r2, r3, [sp]
00803294  34 2c 00 eb                                      bl #0x80e36c
00803298  00 30 94 e5                                      ldr r3, [r4]
0080329c  06 00 a0 e1                                      mov r0, r6
008032a0  04 10 a0 e1                                      mov r1, r4
008032a4  0f e0 a0 e1                                      mov lr, pc
008032a8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
008032ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
008032b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
008032b4  84 31 9f e5                                      ldr r3, [pc, #0x184]
008032b8  00 00 52 e1                                      cmp r2, r0
008032bc  03 30 8f e0                                      add r3, pc, r3
008032c0  56 00 00 0a                                      beq #0x803420
008032c4  00 e0 9d e5                                      ldr lr, [sp]
008032c8  00 10 92 e5                                      ldr r1, [r2]
008032cc  04 c0 9d e5                                      ldr ip, [sp, #4]
008032d0  0e 00 51 e1                                      cmp r1, lr
008032d4  05 00 00 0a                                      beq #0x8032f0
008032d8  f2 2f 82 e2                                      add r2, r2, #0x3c8
008032dc  00 00 52 e1                                      cmp r2, r0
008032e0  4e 00 00 0a                                      beq #0x803420
008032e4  00 10 92 e5                                      ldr r1, [r2]
008032e8  0e 00 51 e1                                      cmp r1, lr
008032ec  f9 ff ff 1a                                      bne #0x8032d8
008032f0  04 10 92 e5                                      ldr r1, [r2, #4]
008032f4  0c 00 51 e1                                      cmp r1, ip
008032f8  f6 ff ff 1a                                      bne #0x8032d8
008032fc  00 00 52 e3                                      cmp r2, #0
00803300  46 00 00 0a                                      beq #0x803420
00803304  48 26 04 e3                                      movw r2, #0x4648
00803308  02 20 94 e7                                      ldr r2, [r4, r2]
0080330c  44 70 87 e2                                      add r7, r7, #0x44
00803310  00 00 52 e3                                      cmp r2, #0
00803314  3f 00 00 0a                                      beq #0x803418
00803318  07 00 a0 e1                                      mov r0, r7
0080331c  14 10 92 e5                                      ldr r1, [r2, #0x14]
00803320  0c 00 51 e1                                      cmp r1, ip
00803324  09 00 00 3a                                      blo #0x803350
00803328  05 00 00 0a                                      beq #0x803344
0080332c  08 10 92 e5                                      ldr r1, [r2, #8]
00803330  02 00 a0 e1                                      mov r0, r2
00803334  00 00 51 e3                                      cmp r1, #0
00803338  09 00 00 0a                                      beq #0x803364
0080333c  01 20 a0 e1                                      mov r2, r1
00803340  f5 ff ff ea                                      b #0x80331c
00803344  10 10 92 e5                                      ldr r1, [r2, #0x10]
00803348  0e 00 51 e1                                      cmp r1, lr
0080334c  f6 ff ff 2a                                      bhs #0x80332c
00803350  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00803354  00 20 a0 e1                                      mov r2, r0
00803358  02 00 a0 e1                                      mov r0, r2
0080335c  00 00 51 e3                                      cmp r1, #0
00803360  f5 ff ff 1a                                      bne #0x80333c
00803364  02 00 57 e1                                      cmp r7, r2
00803368  2c 00 00 0a                                      beq #0x803420
0080336c  14 10 92 e5                                      ldr r1, [r2, #0x14]
00803370  0c 00 51 e1                                      cmp r1, ip
00803374  27 00 00 8a                                      bhi #0x803418
00803378  23 00 00 0a                                      beq #0x80340c
0080337c  02 00 57 e1                                      cmp r7, r2
00803380  26 00 00 0a                                      beq #0x803420
00803384  0d 10 a0 e1                                      mov r1, sp
00803388  07 00 a0 e1                                      mov r0, r7
0080338c  5d ff ff eb                                      bl #0x803108
00803390  00 20 90 e5                                      ldr r2, [r0]
00803394  3c 36 03 e3                                      movw r3, #0x363c
00803398  08 a0 8d e2                                      add sl, sp, #8
0080339c  03 20 84 e7                                      str r2, [r4, r3]
008033a0  0a 00 a0 e1                                      mov r0, sl
008033a4  00 80 9d e5                                      ldr r8, [sp]
008033a8  f5 e3 ff eb                                      bl #0x7fc384
008033ac  20 30 9d e5                                      ldr r3, [sp, #0x20]
008033b0  18 80 8d e5                                      str r8, [sp, #0x18]
008033b4  0d 90 a0 e1                                      mov sb, sp
008033b8  04 30 83 e3                                      orr r3, r3, #4
008033bc  20 30 8d e5                                      str r3, [sp, #0x20]
008033c0  6b e2 ff eb                                      bl #0x7fbd74
008033c4  0d 10 a0 e1                                      mov r1, sp
008033c8  00 80 a0 e1                                      mov r8, r0
008033cc  07 00 a0 e1                                      mov r0, r7
008033d0  4c ff ff eb                                      bl #0x803108
008033d4  0a 20 a0 e1                                      mov r2, sl
008033d8  00 10 90 e5                                      ldr r1, [r0]
008033dc  08 00 a0 e1                                      mov r0, r8
008033e0  52 e5 ff eb                                      bl #0x7fc930
008033e4  00 20 a0 e3                                      mov r2, #0
008033e8  30 36 03 e3                                      movw r3, #0x3630
008033ec  03 20 c4 e7                                      strb r2, [r4, r3]
008033f0  06 00 a0 e1                                      mov r0, r6
008033f4  56 f1 f0 eb                                      bl #0x43f954
008033f8  05 00 a0 e1                                      mov r0, r5
008033fc  d9 2b 00 eb                                      bl #0x80e368
00803400  00 00 a0 e3                                      mov r0, #0
00803404  30 d0 8d e2                                      add sp, sp, #0x30
00803408  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0080340c  10 10 92 e5                                      ldr r1, [r2, #0x10]
00803410  0e 00 51 e1                                      cmp r1, lr
00803414  d8 ff ff 9a                                      bls #0x80337c
00803418  07 20 a0 e1                                      mov r2, r7
0080341c  d6 ff ff ea                                      b #0x80337c
00803420  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
00803424  00 20 a0 e3                                      mov r2, #0
00803428  02 15 a0 e3                                      mov r1, #0x800000
0080342c  00 00 93 e7                                      ldr r0, [r3, r0]
00803430  0c 10 81 e2                                      add r1, r1, #0xc
00803434  02 30 a0 e1                                      mov r3, r2
00803438  71 eb ff eb                                      bl #0x7fe204
0080343c  eb ff ff ea                                      b #0x8033f0
; mapping-symbol data/literal pool
00803440  d4 17 19 00 3c 34 00 00                          .byte 0xd4, 0x17, 0x19, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00803448, declared_size=720, range_size=720, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth18AddBluetoothServerEii13tMatchingPeer
; demangled: CMatchingBluetooth::AddBluetoothServer(int, int, tMatchingPeer)
; decoder-mode: arm
00803448  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0080344c  b4 52 9f e5                                      ldr r5, [pc, #0x2b4]
00803450  b4 a2 9f e5                                      ldr sl, [pc, #0x2b4]
00803454  46 4c 80 e2                                      add r4, r0, #0x4600
00803458  05 50 8f e0                                      add r5, pc, r5
0080345c  0a 10 95 e7                                      ldr r1, [r5, sl]
00803460  3c 80 84 e2                                      add r8, r4, #0x3c
00803464  84 d0 4d e2                                      sub sp, sp, #0x84
00803468  00 10 91 e5                                      ldr r1, [r1]
0080346c  00 60 a0 e1                                      mov r6, r0
00803470  08 00 a0 e1                                      mov r0, r8
00803474  03 70 a0 e1                                      mov r7, r3
00803478  14 20 8d e5                                      str r2, [sp, #0x14]
0080347c  7c 10 8d e5                                      str r1, [sp, #0x7c]
00803480  b9 2b 00 eb                                      bl #0x80e36c
00803484  4c 36 04 e3                                      movw r3, #0x464c
00803488  03 90 96 e7                                      ldr sb, [r6, r3]
0080348c  44 40 84 e2                                      add r4, r4, #0x44
00803490  04 b0 87 e2                                      add fp, r7, #4
00803494  09 00 54 e1                                      cmp r4, sb
00803498  0f 00 00 0a                                      beq #0x8034dc
0080349c  1c 00 89 e2                                      add r0, sb, #0x1c
008034a0  0b 10 a0 e1                                      mov r1, fp
008034a4  24 e1 ff eb                                      bl #0x7fb93c
008034a8  00 00 50 e3                                      cmp r0, #0
008034ac  31 00 00 1a                                      bne #0x803578
008034b0  0c 20 99 e5                                      ldr r2, [sb, #0xc]
008034b4  00 00 52 e3                                      cmp r2, #0
008034b8  01 00 00 1a                                      bne #0x8034c4
008034bc  20 00 00 ea                                      b #0x803544
008034c0  03 20 a0 e1                                      mov r2, r3
008034c4  08 30 92 e5                                      ldr r3, [r2, #8]
008034c8  00 00 53 e3                                      cmp r3, #0
008034cc  fb ff ff 1a                                      bne #0x8034c0
008034d0  02 90 a0 e1                                      mov sb, r2
008034d4  09 00 54 e1                                      cmp r4, sb
008034d8  ef ff ff 1a                                      bne #0x80349c
008034dc  18 90 8d e2                                      add sb, sp, #0x18
008034e0  49 1c 86 e2                                      add r1, r6, #0x4900
008034e4  f8 10 81 e2                                      add r1, r1, #0xf8
008034e8  09 00 a0 e1                                      mov r0, sb
008034ec  cd 5b 00 eb                                      bl #0x81a428
008034f0  48 20 87 e2                                      add r2, r7, #0x48
008034f4  09 00 a0 e1                                      mov r0, sb
008034f8  00 10 a0 e3                                      mov r1, #0
008034fc  08 20 8d e5                                      str r2, [sp, #8]
00803500  72 57 00 eb                                      bl #0x8192d0
00803504  09 00 a0 e1                                      mov r0, sb
00803508  08 10 9d e5                                      ldr r1, [sp, #8]
0080350c  0d 58 00 eb                                      bl #0x819548
00803510  00 00 50 e3                                      cmp r0, #0
00803514  1f 00 00 1a                                      bne #0x803598
00803518  09 00 a0 e1                                      mov r0, sb
0080351c  d0 59 00 eb                                      bl #0x819c64
00803520  08 00 a0 e1                                      mov r0, r8
00803524  8f 2b 00 eb                                      bl #0x80e368
00803528  0a 30 95 e7                                      ldr r3, [r5, sl]
0080352c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00803530  00 30 93 e5                                      ldr r3, [r3]
00803534  03 00 52 e1                                      cmp r2, r3
00803538  71 00 00 1a                                      bne #0x803704
0080353c  84 d0 8d e2                                      add sp, sp, #0x84
00803540  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00803544  04 30 99 e5                                      ldr r3, [sb, #4]
00803548  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0080354c  01 00 59 e1                                      cmp sb, r1
00803550  05 00 00 1a                                      bne #0x80356c
00803554  03 90 a0 e1                                      mov sb, r3
00803558  04 30 93 e5                                      ldr r3, [r3, #4]
0080355c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00803560  09 00 52 e1                                      cmp r2, sb
00803564  fa ff ff 0a                                      beq #0x803554
00803568  0c 20 99 e5                                      ldr r2, [sb, #0xc]
0080356c  03 00 52 e1                                      cmp r2, r3
00803570  03 90 a0 11                                      movne sb, r3
00803574  c6 ff ff ea                                      b #0x803494
00803578  85 e8 ff eb                                      bl #0x7fd794
0080357c  00 30 90 e5                                      ldr r3, [r0]
00803580  0f e0 a0 e1                                      mov lr, pc
00803584  00 f0 93 e5                                      ldr pc, [r3]
00803588  38 00 89 e5                                      str r0, [sb, #0x38]
0080358c  08 00 a0 e1                                      mov r0, r8
00803590  74 2b 00 eb                                      bl #0x80e368
00803594  e3 ff ff ea                                      b #0x803528
00803598  7d e8 ff eb                                      bl #0x7fd794
0080359c  00 30 90 e5                                      ldr r3, [r0]
008035a0  0f e0 a0 e1                                      mov lr, pc
008035a4  00 f0 93 e5                                      ldr pc, [r3]
008035a8  14 30 8d e2                                      add r3, sp, #0x14
008035ac  10 30 8d e5                                      str r3, [sp, #0x10]
008035b0  20 00 87 e5                                      str r0, [r7, #0x20]
008035b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
008035b8  04 00 a0 e1                                      mov r0, r4
008035bc  75 fe ff eb                                      bl #0x802f98
008035c0  00 30 97 e5                                      ldr r3, [r7]
008035c4  00 e0 a0 e1                                      mov lr, r0
008035c8  00 c0 a0 e1                                      mov ip, r0
008035cc  04 30 8e e4                                      str r3, [lr], #4
008035d0  0e 00 5b e1                                      cmp fp, lr
008035d4  0f 00 bb 18                                      ldmne fp!, {r0, r1, r2, r3}
008035d8  0f 00 ae 18                                      stmne lr!, {r0, r1, r2, r3}
008035dc  0e 30 a0 11                                      movne r3, lr
008035e0  07 00 9b 18                                      ldmne fp, {r0, r1, r2}
008035e4  07 00 83 18                                      stmne r3, {r0, r1, r2}
008035e8  20 30 97 e5                                      ldr r3, [r7, #0x20]
008035ec  24 00 8c e2                                      add r0, ip, #0x24
008035f0  24 20 87 e2                                      add r2, r7, #0x24
008035f4  02 00 50 e1                                      cmp r0, r2
008035f8  20 30 8c e5                                      str r3, [ip, #0x20]
008035fc  04 00 00 0a                                      beq #0x803614
00803600  38 10 97 e5                                      ldr r1, [r7, #0x38]
00803604  34 20 97 e5                                      ldr r2, [r7, #0x34]
00803608  04 c0 8d e5                                      str ip, [sp, #4]
0080360c  f3 34 ec eb                                      bl #0x3109e0
00803610  04 c0 9d e5                                      ldr ip, [sp, #4]
00803614  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
00803618  5c 20 8d e2                                      add r2, sp, #0x5c
0080361c  0c 20 8d e5                                      str r2, [sp, #0xc]
00803620  3c 30 8c e5                                      str r3, [ip, #0x3c]
00803624  40 30 97 e5                                      ldr r3, [r7, #0x40]
00803628  48 00 8c e2                                      add r0, ip, #0x48
0080362c  08 10 9d e5                                      ldr r1, [sp, #8]
00803630  40 30 8c e5                                      str r3, [ip, #0x40]
00803634  bc 54 00 eb                                      bl #0x81892c
00803638  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0080363c  3c b0 8d e2                                      add fp, sp, #0x3c
00803640  00 70 a0 e3                                      mov r7, #0
00803644  08 20 83 e2                                      add r2, r3, #8
00803648  08 30 8b e2                                      add r3, fp, #8
0080364c  04 70 82 e4                                      str r7, [r2], #4
00803650  04 70 83 e4                                      str r7, [r3], #4
00803654  04 70 82 e4                                      str r7, [r2], #4
00803658  04 70 83 e4                                      str r7, [r3], #4
0080365c  04 70 82 e4                                      str r7, [r2], #4
00803660  04 70 83 e4                                      str r7, [r3], #4
00803664  04 70 82 e4                                      str r7, [r2], #4
00803668  04 70 83 e4                                      str r7, [r3], #4
0080366c  04 70 82 e4                                      str r7, [r2], #4
00803670  04 70 83 e4                                      str r7, [r3], #4
00803674  10 10 9d e5                                      ldr r1, [sp, #0x10]
00803678  00 70 82 e5                                      str r7, [r2]
0080367c  00 70 83 e5                                      str r7, [r3]
00803680  04 00 a0 e1                                      mov r0, r4
00803684  5c 70 8d e5                                      str r7, [sp, #0x5c]
00803688  60 70 8d e5                                      str r7, [sp, #0x60]
0080368c  3c 70 8d e5                                      str r7, [sp, #0x3c]
00803690  40 70 8d e5                                      str r7, [sp, #0x40]
00803694  3f fe ff eb                                      bl #0x802f98
00803698  20 30 a0 e3                                      mov r3, #0x20
0080369c  07 10 a0 e1                                      mov r1, r7
008036a0  0b 20 a0 e1                                      mov r2, fp
008036a4  48 00 80 e2                                      add r0, r0, #0x48
008036a8  c3 51 00 eb                                      bl #0x817dbc
008036ac  20 30 a0 e3                                      mov r3, #0x20
008036b0  07 10 a0 e1                                      mov r1, r7
008036b4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
008036b8  08 00 9d e5                                      ldr r0, [sp, #8]
008036bc  be 51 00 eb                                      bl #0x817dbc
008036c0  48 00 9f e5                                      ldr r0, [pc, #0x48]
008036c4  0b 10 a0 e1                                      mov r1, fp
008036c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
008036cc  00 00 8f e0                                      add r0, pc, r0
008036d0  eb 29 ec eb                                      bl #0x30de84
008036d4  30 36 03 e3                                      movw r3, #0x3630
008036d8  03 30 d6 e7                                      ldrb r3, [r6, r3]
008036dc  07 00 53 e1                                      cmp r3, r7
008036e0  8c ff ff 0a                                      beq #0x803518
008036e4  28 30 9f e5                                      ldr r3, [pc, #0x28]
008036e8  02 15 a0 e3                                      mov r1, #0x800000
008036ec  07 20 a0 e1                                      mov r2, r7
008036f0  03 00 95 e7                                      ldr r0, [r5, r3]
008036f4  0e 10 81 e2                                      add r1, r1, #0xe
008036f8  07 30 a0 e1                                      mov r3, r7
008036fc  c0 ea ff eb                                      bl #0x7fe204
00803700  84 ff ff ea                                      b #0x803518
00803704  01 2b ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00803708  38 16 19 00 ac 40 00 00 d4 8a 10 00 3c 34 00 00  .byte 0x38, 0x16, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x8a, 0x10, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00803718, declared_size=156, range_size=156, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth10InitializeEiSs
; demangled: CMatchingBluetooth::Initialize(int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00803718  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080371c  88 40 9f e5                                      ldr r4, [pc, #0x88]
00803720  88 70 9f e5                                      ldr r7, [pc, #0x88]
00803724  20 d0 4d e2                                      sub sp, sp, #0x20
00803728  04 40 8f e0                                      add r4, pc, r4
0080372c  07 30 94 e7                                      ldr r3, [r4, r7]
00803730  04 60 8d e2                                      add r6, sp, #4
00803734  00 50 a0 e1                                      mov r5, r0
00803738  00 30 93 e5                                      ldr r3, [r3]
0080373c  01 80 a0 e1                                      mov r8, r1
00803740  06 00 a0 e1                                      mov r0, r6
00803744  02 10 a0 e1                                      mov r1, r2
00803748  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080374c  71 a0 ec eb                                      bl #0x32b918
00803750  ab 0c 85 e2                                      add r0, r5, #0xab00
00803754  88 00 80 e2                                      add r0, r0, #0x88
00803758  06 00 50 e1                                      cmp r0, r6
0080375c  02 00 00 0a                                      beq #0x80376c
00803760  18 10 9d e5                                      ldr r1, [sp, #0x18]
00803764  14 20 9d e5                                      ldr r2, [sp, #0x14]
00803768  9c 34 ec eb                                      bl #0x3109e0
0080376c  06 00 a0 e1                                      mov r0, r6
00803770  b7 52 ec eb                                      bl #0x318254
00803774  00 30 95 e5                                      ldr r3, [r5]
00803778  05 00 a0 e1                                      mov r0, r5
0080377c  08 10 a0 e1                                      mov r1, r8
00803780  0f e0 a0 e1                                      mov lr, pc
00803784  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00803788  07 30 94 e7                                      ldr r3, [r4, r7]
0080378c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00803790  00 00 a0 e3                                      mov r0, #0
00803794  00 30 93 e5                                      ldr r3, [r3]
00803798  03 00 52 e1                                      cmp r2, r3
0080379c  01 00 00 1a                                      bne #0x8037a8
008037a0  20 d0 8d e2                                      add sp, sp, #0x20
008037a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008037a8  d8 2a ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008037ac  68 13 19 00 ac 40 00 00                          .byte 0x68, 0x13, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008037b4, declared_size=364, range_size=364, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth18SearchRoomInternalER17CRoomSearchFilterbh
; demangled: CMatchingBluetooth::SearchRoomInternal(CRoomSearchFilter&, bool, unsigned char)
; decoder-mode: arm
008037b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008037b8  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
008037bc  4c 51 9f e5                                      ldr r5, [pc, #0x14c]
008037c0  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
008037c4  04 40 8f e0                                      add r4, pc, r4
008037c8  05 c0 94 e7                                      ldr ip, [r4, r5]
008037cc  01 70 a0 e1                                      mov r7, r1
008037d0  78 d0 4d e2                                      sub sp, sp, #0x78
008037d4  00 10 9c e5                                      ldr r1, [ip]
008037d8  00 00 53 e3                                      cmp r3, #0
008037dc  00 60 a0 e1                                      mov r6, r0
008037e0  02 80 a0 e1                                      mov r8, r2
008037e4  74 10 8d e5                                      str r1, [sp, #0x74]
008037e8  00 00 e0 03                                      mvneq r0, #0
008037ec  06 00 00 1a                                      bne #0x80380c
008037f0  05 30 94 e7                                      ldr r3, [r4, r5]
008037f4  74 20 9d e5                                      ldr r2, [sp, #0x74]
008037f8  00 30 93 e5                                      ldr r3, [r3]
008037fc  03 00 52 e1                                      cmp r2, r3
00803800  40 00 00 1a                                      bne #0x803908
00803804  78 d0 8d e2                                      add sp, sp, #0x78
00803808  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0080380c  24 0f 00 eb                                      bl #0x8074a4
00803810  49 0c 86 e2                                      add r0, r6, #0x4900
00803814  f8 00 80 e2                                      add r0, r0, #0xf8
00803818  07 10 a0 e1                                      mov r1, r7
0080381c  fa 5a 00 eb                                      bl #0x81a40c
00803820  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00803824  01 20 a0 e3                                      mov r2, #1
00803828  03 a0 94 e7                                      ldr sl, [r4, r3]
0080382c  30 36 03 e3                                      movw r3, #0x3630
00803830  03 20 c6 e7                                      strb r2, [r6, r3]
00803834  10 30 9a e5                                      ldr r3, [sl, #0x10]
00803838  00 00 53 e3                                      cmp r3, #0
0080383c  29 00 00 1a                                      bne #0x8038e8
00803840  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00803844  5c a0 8d e2                                      add sl, sp, #0x5c
00803848  0a 00 a0 e1                                      mov r0, sl
0080384c  01 10 8f e0                                      add r1, pc, r1
00803850  58 20 8d e2                                      add r2, sp, #0x58
00803854  24 42 ec eb                                      bl #0x3140ec
00803858  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0080385c  03 00 94 e7                                      ldr r0, [r4, r3]
00803860  00 00 5a e1                                      cmp sl, r0
00803864  02 00 00 0a                                      beq #0x803874
00803868  70 10 9d e5                                      ldr r1, [sp, #0x70]
0080386c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00803870  5a 34 ec eb                                      bl #0x3109e0
00803874  0a 00 a0 e1                                      mov r0, sl
00803878  75 52 ec eb                                      bl #0x318254
0080387c  5f 5c 00 eb                                      bl #0x81aa00
00803880  00 20 a0 e3                                      mov r2, #0
00803884  00 10 a0 e1                                      mov r1, r0
00803888  3c 00 8d e2                                      add r0, sp, #0x3c
0080388c  27 5d 00 eb                                      bl #0x81ad30
00803890  5a 5c 00 eb                                      bl #0x81aa00
00803894  00 20 a0 e3                                      mov r2, #0
00803898  00 10 a0 e1                                      mov r1, r0
0080389c  20 00 8d e2                                      add r0, sp, #0x20
008038a0  22 5d 00 eb                                      bl #0x81ad30
008038a4  55 5c 00 eb                                      bl #0x81aa00
008038a8  00 90 a0 e1                                      mov sb, r0
008038ac  53 5c 00 eb                                      bl #0x81aa00
008038b0  04 a0 8d e2                                      add sl, sp, #4
008038b4  00 10 a0 e1                                      mov r1, r0
008038b8  00 20 a0 e3                                      mov r2, #0
008038bc  0a 00 a0 e1                                      mov r0, sl
008038c0  1a 5d 00 eb                                      bl #0x81ad30
008038c4  09 00 a0 e1                                      mov r0, sb
008038c8  0a 10 a0 e1                                      mov r1, sl
008038cc  6e 5c 00 eb                                      bl #0x81aa8c
008038d0  06 00 a0 e1                                      mov r0, r6
008038d4  07 10 a0 e1                                      mov r1, r7
008038d8  08 20 a0 e1                                      mov r2, r8
008038dc  00 30 a0 e3                                      mov r3, #0
008038e0  c1 10 00 eb                                      bl #0x807bec
008038e4  c1 ff ff ea                                      b #0x8037f0
008038e8  0a 00 a0 e1                                      mov r0, sl
008038ec  04 10 9a e5                                      ldr r1, [sl, #4]
008038f0  82 fa ff eb                                      bl #0x802300
008038f4  00 30 a0 e3                                      mov r3, #0
008038f8  10 30 8a e5                                      str r3, [sl, #0x10]
008038fc  08 04 8a e9                                      stmib sl, {r3, sl}
00803900  0c a0 8a e5                                      str sl, [sl, #0xc]
00803904  cd ff ff ea                                      b #0x803840
00803908  80 2a ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0080390c  cc 12 19 00 ac 40 00 00 fc 30 00 00 74 89 10 00  .byte 0xcc, 0x12, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x30, 0x00, 0x00, 0x74, 0x89, 0x10, 0x00
0080391c  38 31 00 00                                      .byte 0x38, 0x31, 0x00, 0x00

; FUNCTION 0x00803920, declared_size=924, range_size=924, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth24ParseBluetoothDeviceNameESs
; demangled: CMatchingBluetooth::ParseBluetoothDeviceName(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00803920  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00803924  7c 93 9f e5                                      ldr sb, [pc, #0x37c]
00803928  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
0080392c  5b df 4d e2                                      sub sp, sp, #0x16c
00803930  09 90 8f e0                                      add sb, pc, sb
00803934  01 30 99 e7                                      ldr r3, [sb, r1]
00803938  0c 10 8d e5                                      str r1, [sp, #0xc]
0080393c  00 70 a0 e1                                      mov r7, r0
00803940  00 30 93 e5                                      ldr r3, [r3]
00803944  55 4f 8d e2                                      add r4, sp, #0x154
00803948  00 60 a0 e3                                      mov r6, #0
0080394c  64 31 8d e5                                      str r3, [sp, #0x164]
00803950  14 00 92 e5                                      ldr r0, [r2, #0x14]
00803954  50 29 ec eb                                      bl #0x30de9c
00803958  00 50 a0 e1                                      mov r5, r0
0080395c  07 00 a0 e1                                      mov r0, r7
00803960  17 fb ff eb                                      bl #0x8025c4
00803964  00 30 e0 e3                                      mvn r3, #0
00803968  00 30 87 e5                                      str r3, [r7]
0080396c  01 30 a0 e3                                      mov r3, #1
00803970  3c 30 87 e5                                      str r3, [r7, #0x3c]
00803974  7c 10 a0 e3                                      mov r1, #0x7c
00803978  05 00 a0 e1                                      mov r0, r5
0080397c  a9 2c ec eb                                      bl #0x30ec28
00803980  08 30 84 e2                                      add r3, r4, #8
00803984  04 60 83 e4                                      str r6, [r3], #4
00803988  34 b0 8d e2                                      add fp, sp, #0x34
0080398c  00 a0 a0 e1                                      mov sl, r0
00803990  00 80 65 e0                                      rsb r8, r5, r0
00803994  06 10 a0 e1                                      mov r1, r6
00803998  0b 00 a0 e1                                      mov r0, fp
0080399c  01 2c a0 e3                                      mov r2, #0x100
008039a0  00 60 83 e5                                      str r6, [r3]
008039a4  54 61 8d e5                                      str r6, [sp, #0x154]
008039a8  58 61 8d e5                                      str r6, [sp, #0x158]
008039ac  ab 2a ec eb                                      bl #0x30e460
008039b0  06 00 5a e1                                      cmp sl, r6
008039b4  06 00 58 11                                      cmpne r8, r6
008039b8  01 00 00 da                                      ble #0x8039c4
008039bc  ff 00 58 e3                                      cmp r8, #0xff
008039c0  a8 00 00 da                                      ble #0x803c68
008039c4  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
008039c8  05 00 a0 e1                                      mov r0, r5
008039cc  01 10 8f e0                                      add r1, pc, r1
008039d0  7f 2c ec eb                                      bl #0x30ebd4
008039d4  00 60 50 e2                                      subs r6, r0, #0
008039d8  70 00 00 0a                                      beq #0x803ba0
008039dc  7c 10 a0 e3                                      mov r1, #0x7c
008039e0  01 00 86 e2                                      add r0, r6, #1
008039e4  8f 2c ec eb                                      bl #0x30ec28
008039e8  03 10 86 e2                                      add r1, r6, #3
008039ec  01 00 50 e1                                      cmp r0, r1
008039f0  8a 00 00 8a                                      bhi #0x803c20
008039f4  4d af 8d e2                                      add sl, sp, #0x134
008039f8  04 30 8a e2                                      add r3, sl, #4
008039fc  04 c0 83 e2                                      add ip, r3, #4
00803a00  04 10 8c e2                                      add r1, ip, #4
00803a04  04 20 81 e2                                      add r2, r1, #4
00803a08  10 30 8d e5                                      str r3, [sp, #0x10]
00803a0c  a0 82 9f e5                                      ldr r8, [pc, #0x2a0]
00803a10  04 30 82 e2                                      add r3, r2, #4
00803a14  14 c0 8d e5                                      str ip, [sp, #0x14]
00803a18  04 c0 83 e2                                      add ip, r3, #4
00803a1c  18 10 8d e5                                      str r1, [sp, #0x18]
00803a20  1c 20 8d e5                                      str r2, [sp, #0x1c]
00803a24  48 10 87 e2                                      add r1, r7, #0x48
00803a28  04 20 8c e2                                      add r2, ip, #4
00803a2c  20 30 8d e5                                      str r3, [sp, #0x20]
00803a30  24 c0 8d e5                                      str ip, [sp, #0x24]
00803a34  08 80 8f e0                                      add r8, pc, r8
00803a38  28 10 8d e5                                      str r1, [sp, #0x28]
00803a3c  01 60 a0 e3                                      mov r6, #1
00803a40  2c 20 8d e5                                      str r2, [sp, #0x2c]
00803a44  02 00 00 ea                                      b #0x803a54
00803a48  01 60 86 e2                                      add r6, r6, #1
00803a4c  08 00 56 e3                                      cmp r6, #8
00803a50  34 00 00 0a                                      beq #0x803b28
00803a54  06 20 a0 e1                                      mov r2, r6
00803a58  08 10 a0 e1                                      mov r1, r8
00803a5c  04 00 a0 e1                                      mov r0, r4
00803a60  1f 2c ec eb                                      bl #0x30eae4
00803a64  04 00 a0 e1                                      mov r0, r4
00803a68  f9 28 ec eb                                      bl #0x30de54
00803a6c  04 10 a0 e1                                      mov r1, r4
00803a70  00 b0 a0 e1                                      mov fp, r0
00803a74  05 00 a0 e1                                      mov r0, r5
00803a78  55 2c ec eb                                      bl #0x30ebd4
00803a7c  00 30 50 e2                                      subs r3, r0, #0
00803a80  08 30 8d e5                                      str r3, [sp, #8]
00803a84  ef ff ff 0a                                      beq #0x803a48
00803a88  f1 28 ec eb                                      bl #0x30de54
00803a8c  00 00 5b e1                                      cmp fp, r0
00803a90  ec ff ff 2a                                      bhs #0x803a48
00803a94  08 c0 9d e5                                      ldr ip, [sp, #8]
00803a98  7c 10 a0 e3                                      mov r1, #0x7c
00803a9c  0b b0 8c e0                                      add fp, ip, fp
00803aa0  0b 00 a0 e1                                      mov r0, fp
00803aa4  5f 2c ec eb                                      bl #0x30ec28
00803aa8  00 00 5b e3                                      cmp fp, #0
00803aac  00 00 5b 11                                      cmpne fp, r0
00803ab0  e4 ff ff 2a                                      bhs #0x803a48
00803ab4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00803ab8  00 30 a0 e3                                      mov r3, #0
00803abc  00 20 6b e0                                      rsb r2, fp, r0
00803ac0  00 30 8c e5                                      str r3, [ip]
00803ac4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00803ac8  0b 10 a0 e1                                      mov r1, fp
00803acc  00 30 8a e5                                      str r3, [sl]
00803ad0  00 30 8c e5                                      str r3, [ip]
00803ad4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00803ad8  0a 00 a0 e1                                      mov r0, sl
00803adc  00 30 8c e5                                      str r3, [ip]
00803ae0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00803ae4  00 30 8c e5                                      str r3, [ip]
00803ae8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00803aec  00 30 8c e5                                      str r3, [ip]
00803af0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00803af4  00 30 8c e5                                      str r3, [ip]
00803af8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00803afc  00 30 8c e5                                      str r3, [ip]
00803b00  c7 28 ec eb                                      bl #0x30de24
00803b04  0a 00 a0 e1                                      mov r0, sl
00803b08  61 29 ec eb                                      bl #0x30e094
00803b0c  06 10 a0 e1                                      mov r1, r6
00803b10  00 20 a0 e1                                      mov r2, r0
00803b14  01 60 86 e2                                      add r6, r6, #1
00803b18  28 00 9d e5                                      ldr r0, [sp, #0x28]
00803b1c  88 52 00 eb                                      bl #0x818544
00803b20  08 00 56 e3                                      cmp r6, #8
00803b24  ca ff ff 1a                                      bne #0x803a54
00803b28  88 a1 9f e5                                      ldr sl, [pc, #0x188]
00803b2c  03 60 a0 e3                                      mov r6, #3
00803b30  07 80 a0 e1                                      mov r8, r7
00803b34  0a a0 8f e0                                      add sl, pc, sl
00803b38  06 20 a0 e1                                      mov r2, r6
00803b3c  0a 10 a0 e1                                      mov r1, sl
00803b40  04 00 a0 e1                                      mov r0, r4
00803b44  e6 2b ec eb                                      bl #0x30eae4
00803b48  04 00 a0 e1                                      mov r0, r4
00803b4c  c0 28 ec eb                                      bl #0x30de54
00803b50  04 10 a0 e1                                      mov r1, r4
00803b54  00 70 a0 e1                                      mov r7, r0
00803b58  05 00 a0 e1                                      mov r0, r5
00803b5c  1c 2c ec eb                                      bl #0x30ebd4
00803b60  00 b0 50 e2                                      subs fp, r0, #0
00803b64  09 00 00 0a                                      beq #0x803b90
00803b68  b9 28 ec eb                                      bl #0x30de54
00803b6c  00 00 57 e1                                      cmp r7, r0
00803b70  06 00 00 2a                                      bhs #0x803b90
00803b74  07 70 8b e0                                      add r7, fp, r7
00803b78  07 00 a0 e1                                      mov r0, r7
00803b7c  7c 10 a0 e3                                      mov r1, #0x7c
00803b80  28 2c ec eb                                      bl #0x30ec28
00803b84  00 00 57 e3                                      cmp r7, #0
00803b88  00 00 57 11                                      cmpne r7, r0
00803b8c  0c 00 00 3a                                      blo #0x803bc4
00803b90  01 60 86 e2                                      add r6, r6, #1
00803b94  05 00 56 e3                                      cmp r6, #5
00803b98  e6 ff ff 1a                                      bne #0x803b38
00803b9c  08 70 a0 e1                                      mov r7, r8
00803ba0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00803ba4  64 21 9d e5                                      ldr r2, [sp, #0x164]
00803ba8  07 00 a0 e1                                      mov r0, r7
00803bac  01 30 99 e7                                      ldr r3, [sb, r1]
00803bb0  00 30 93 e5                                      ldr r3, [r3]
00803bb4  03 00 52 e1                                      cmp r2, r3
00803bb8  39 00 00 1a                                      bne #0x803ca4
00803bbc  5b df 8d e2                                      add sp, sp, #0x16c
00803bc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00803bc4  00 30 67 e0                                      rsb r3, r7, r0
00803bc8  01 20 83 e2                                      add r2, r3, #1
00803bcc  02 00 a0 e1                                      mov r0, r2
00803bd0  00 30 8d e5                                      str r3, [sp]
00803bd4  04 20 8d e5                                      str r2, [sp, #4]
00803bd8  c5 2a ec eb                                      bl #0x30e6f4
00803bdc  04 20 9d e5                                      ldr r2, [sp, #4]
00803be0  00 10 a0 e3                                      mov r1, #0
00803be4  00 b0 a0 e1                                      mov fp, r0
00803be8  1c 2a ec eb                                      bl #0x30e460
00803bec  00 30 9d e5                                      ldr r3, [sp]
00803bf0  07 10 a0 e1                                      mov r1, r7
00803bf4  0b 00 a0 e1                                      mov r0, fp
00803bf8  03 20 a0 e1                                      mov r2, r3
00803bfc  88 28 ec eb                                      bl #0x30de24
00803c00  0b 00 a0 e1                                      mov r0, fp
00803c04  92 28 ec eb                                      bl #0x30de54
00803c08  0b 20 a0 e1                                      mov r2, fp
00803c0c  01 30 80 e2                                      add r3, r0, #1
00803c10  06 10 a0 e1                                      mov r1, r6
00803c14  28 00 9d e5                                      ldr r0, [sp, #0x28]
00803c18  24 54 00 eb                                      bl #0x818cb0
00803c1c  db ff ff ea                                      b #0x803b90
00803c20  4d 6f 8d e2                                      add r6, sp, #0x134
00803c24  00 c0 a0 e3                                      mov ip, #0
00803c28  08 30 86 e2                                      add r3, r6, #8
00803c2c  04 c0 83 e4                                      str ip, [r3], #4
00803c30  04 c0 83 e4                                      str ip, [r3], #4
00803c34  04 c0 83 e4                                      str ip, [r3], #4
00803c38  04 c0 83 e4                                      str ip, [r3], #4
00803c3c  04 c0 83 e4                                      str ip, [r3], #4
00803c40  00 20 61 e0                                      rsb r2, r1, r0
00803c44  00 c0 83 e5                                      str ip, [r3]
00803c48  06 00 a0 e1                                      mov r0, r6
00803c4c  34 c1 8d e5                                      str ip, [sp, #0x134]
00803c50  38 c1 8d e5                                      str ip, [sp, #0x138]
00803c54  03 2b ec eb                                      bl #0x30e868
00803c58  06 00 a0 e1                                      mov r0, r6
00803c5c  0c 29 ec eb                                      bl #0x30e094
00803c60  00 00 87 e5                                      str r0, [r7]
00803c64  62 ff ff ea                                      b #0x8039f4
00803c68  05 10 a0 e1                                      mov r1, r5
00803c6c  08 20 a0 e1                                      mov r2, r8
00803c70  0b 00 a0 e1                                      mov r0, fp
00803c74  6a 28 ec eb                                      bl #0x30de24
00803c78  5a 2f 8d e2                                      add r2, sp, #0x168
00803c7c  08 80 82 e0                                      add r8, r2, r8
00803c80  b3 34 a0 e3                                      mov r3, #0xb3000000
00803c84  0b 00 a0 e1                                      mov r0, fp
00803c88  43 6b c8 e7                                      strb r6, [r8, r3, asr #22]
00803c8c  70 28 ec eb                                      bl #0x30de54
00803c90  0b 10 a0 e1                                      mov r1, fp
00803c94  00 20 8b e0                                      add r2, fp, r0
00803c98  24 00 87 e2                                      add r0, r7, #0x24
00803c9c  4f 33 ec eb                                      bl #0x3109e0
00803ca0  47 ff ff ea                                      b #0x8039c4
00803ca4  99 29 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00803ca8  60 11 19 00 ac 40 00 00 04 88 10 00 a4 87 10 00  .byte 0x60, 0x11, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x88, 0x10, 0x00, 0xa4, 0x87, 0x10, 0x00
00803cb8  ac 86 10 00                                      .byte 0xac, 0x86, 0x10, 0x00

; FUNCTION 0x00803cbc, declared_size=532, range_size=532, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth27GenerateBluetoothDeviceNameE13tMatchingPeer
; demangled: CMatchingBluetooth::GenerateBluetoothDeviceName(tMatchingPeer)
; decoder-mode: arm
00803cbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00803cc0  f0 81 9f e5                                      ldr r8, [pc, #0x1f0]
00803cc4  f0 91 9f e5                                      ldr sb, [pc, #0x1f0]
00803cc8  00 60 a0 e1                                      mov r6, r0
00803ccc  08 80 8f e0                                      add r8, pc, r8
00803cd0  09 30 98 e7                                      ldr r3, [r8, sb]
00803cd4  01 db 4d e2                                      sub sp, sp, #0x400
00803cd8  04 d0 4d e2                                      sub sp, sp, #4
00803cdc  00 30 93 e5                                      ldr r3, [r3]
00803ce0  10 10 a0 e3                                      mov r1, #0x10
00803ce4  10 00 86 e5                                      str r0, [r6, #0x10]
00803ce8  14 00 86 e5                                      str r0, [r6, #0x14]
00803cec  02 70 a0 e1                                      mov r7, r2
00803cf0  fc 33 8d e5                                      str r3, [sp, #0x3fc]
00803cf4  60 36 ec eb                                      bl #0x31167c
00803cf8  10 30 96 e5                                      ldr r3, [r6, #0x10]
00803cfc  00 20 a0 e3                                      mov r2, #0
00803d00  48 10 87 e2                                      add r1, r7, #0x48
00803d04  00 20 c3 e5                                      strb r2, [r3]
00803d08  0d 00 a0 e1                                      mov r0, sp
00803d0c  cf 54 00 eb                                      bl #0x819050
00803d10  38 10 97 e5                                      ldr r1, [r7, #0x38]
00803d14  34 20 97 e5                                      ldr r2, [r7, #0x34]
00803d18  06 00 a0 e1                                      mov r0, r6
00803d1c  b8 32 ec eb                                      bl #0x310804
00803d20  98 11 9f e5                                      ldr r1, [pc, #0x198]
00803d24  f7 4f 8d e2                                      add r4, sp, #0x3dc
00803d28  00 20 97 e5                                      ldr r2, [r7]
00803d2c  01 10 8f e0                                      add r1, pc, r1
00803d30  04 00 a0 e1                                      mov r0, r4
00803d34  6a 2b ec eb                                      bl #0x30eae4
00803d38  04 00 a0 e1                                      mov r0, r4
00803d3c  44 28 ec eb                                      bl #0x30de54
00803d40  7c a1 9f e5                                      ldr sl, [pc, #0x17c]
00803d44  00 20 84 e0                                      add r2, r4, r0
00803d48  04 10 a0 e1                                      mov r1, r4
00803d4c  06 00 a0 e1                                      mov r0, r6
00803d50  0d 50 a0 e1                                      mov r5, sp
00803d54  aa 32 ec eb                                      bl #0x310804
00803d58  01 40 a0 e3                                      mov r4, #1
00803d5c  e7 7f 8d e2                                      add r7, sp, #0x39c
00803d60  0a a0 8f e0                                      add sl, pc, sl
00803d64  02 00 00 ea                                      b #0x803d74
00803d68  01 40 84 e2                                      add r4, r4, #1
00803d6c  08 00 54 e3                                      cmp r4, #8
00803d70  15 00 00 0a                                      beq #0x803dcc
00803d74  0d 00 a0 e1                                      mov r0, sp
00803d78  04 10 a0 e1                                      mov r1, r4
00803d7c  fe 4f 00 eb                                      bl #0x817d7c
00803d80  00 00 50 e3                                      cmp r0, #0
00803d84  f7 ff ff 0a                                      beq #0x803d68
00803d88  04 10 a0 e1                                      mov r1, r4
00803d8c  0d 00 a0 e1                                      mov r0, sp
00803d90  05 50 00 eb                                      bl #0x817dac
00803d94  04 20 a0 e1                                      mov r2, r4
00803d98  00 30 a0 e1                                      mov r3, r0
00803d9c  0a 10 a0 e1                                      mov r1, sl
00803da0  07 00 a0 e1                                      mov r0, r7
00803da4  4e 2b ec eb                                      bl #0x30eae4
00803da8  07 00 a0 e1                                      mov r0, r7
00803dac  28 28 ec eb                                      bl #0x30de54
00803db0  01 40 84 e2                                      add r4, r4, #1
00803db4  00 20 87 e0                                      add r2, r7, r0
00803db8  07 10 a0 e1                                      mov r1, r7
00803dbc  06 00 a0 e1                                      mov r0, r6
00803dc0  8f 32 ec eb                                      bl #0x310804
00803dc4  08 00 54 e3                                      cmp r4, #8
00803dc8  e9 ff ff 1a                                      bne #0x803d74
00803dcc  f4 b0 9f e5                                      ldr fp, [pc, #0xf4]
00803dd0  03 40 a0 e3                                      mov r4, #3
00803dd4  00 a0 a0 e3                                      mov sl, #0
00803dd8  0b b0 8f e0                                      add fp, pc, fp
00803ddc  0d 00 a0 e1                                      mov r0, sp
00803de0  04 10 a0 e1                                      mov r1, r4
00803de4  ea 4f 00 eb                                      bl #0x817d94
00803de8  00 00 50 e3                                      cmp r0, #0
00803dec  12 00 00 1a                                      bne #0x803e3c
00803df0  01 40 84 e2                                      add r4, r4, #1
00803df4  05 00 54 e3                                      cmp r4, #5
00803df8  f7 ff ff 1a                                      bne #0x803ddc
00803dfc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00803e00  06 00 a0 e1                                      mov r0, r6
00803e04  01 10 8f e0                                      add r1, pc, r1
00803e08  01 20 81 e2                                      add r2, r1, #1
00803e0c  7c 32 ec eb                                      bl #0x310804
00803e10  0d 00 a0 e1                                      mov r0, sp
00803e14  7e 53 00 eb                                      bl #0x818c14
00803e18  09 30 98 e7                                      ldr r3, [r8, sb]
00803e1c  fc 23 9d e5                                      ldr r2, [sp, #0x3fc]
00803e20  06 00 a0 e1                                      mov r0, r6
00803e24  00 30 93 e5                                      ldr r3, [r3]
00803e28  03 00 52 e1                                      cmp r2, r3
00803e2c  20 00 00 1a                                      bne #0x803eb4
00803e30  04 d0 8d e2                                      add sp, sp, #4
00803e34  01 db 8d e2                                      add sp, sp, #0x400
00803e38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00803e3c  04 10 a0 e1                                      mov r1, r4
00803e40  0d 00 a0 e1                                      mov r0, sp
00803e44  ed 4f 00 eb                                      bl #0x817e00
00803e48  05 00 80 e2                                      add r0, r0, #5
00803e4c  28 2a ec eb                                      bl #0x30e6f4
00803e50  00 30 a0 e1                                      mov r3, r0
00803e54  01 a0 c3 e4                                      strb sl, [r3], #1
00803e58  01 30 83 e2                                      add r3, r3, #1
00803e5c  01 a0 c0 e5                                      strb sl, [r0, #1]
00803e60  01 a0 c3 e4                                      strb sl, [r3], #1
00803e64  04 20 a0 e1                                      mov r2, r4
00803e68  00 a0 c3 e5                                      strb sl, [r3]
00803e6c  0b 10 a0 e1                                      mov r1, fp
00803e70  00 70 a0 e1                                      mov r7, r0
00803e74  1a 2b ec eb                                      bl #0x30eae4
00803e78  04 10 a0 e1                                      mov r1, r4
00803e7c  0d 00 a0 e1                                      mov r0, sp
00803e80  de 4f 00 eb                                      bl #0x817e00
00803e84  04 10 a0 e1                                      mov r1, r4
00803e88  00 30 a0 e1                                      mov r3, r0
00803e8c  05 20 87 e2                                      add r2, r7, #5
00803e90  0d 00 a0 e1                                      mov r0, sp
00803e94  c8 4f 00 eb                                      bl #0x817dbc
00803e98  07 00 a0 e1                                      mov r0, r7
00803e9c  ec 27 ec eb                                      bl #0x30de54
00803ea0  07 10 a0 e1                                      mov r1, r7
00803ea4  00 20 87 e0                                      add r2, r7, r0
00803ea8  06 00 a0 e1                                      mov r0, r6
00803eac  54 32 ec eb                                      bl #0x310804
00803eb0  ce ff ff ea                                      b #0x803df0
00803eb4  15 29 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00803eb8  c4 0d 19 00 ac 40 00 00 bc 84 10 00 90 84 10 00  .byte 0xc4, 0x0d, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0xbc, 0x84, 0x10, 0x00, 0x90, 0x84, 0x10, 0x00
00803ec8  08 84 10 00 e4 86 10 00                          .byte 0x08, 0x84, 0x10, 0x00, 0xe4, 0x86, 0x10, 0x00

; FUNCTION 0x00803ed0, declared_size=868, range_size=868, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth22CreateJoinRoomInternalEbR15CRoomAttributes
; demangled: CMatchingBluetooth::CreateJoinRoomInternal(bool, CRoomAttributes&)
; decoder-mode: arm
00803ed0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00803ed4  38 43 9f e5                                      ldr r4, [pc, #0x338]
00803ed8  38 63 9f e5                                      ldr r6, [pc, #0x338]
00803edc  8b de 4d e2                                      sub sp, sp, #0x8b0
00803ee0  04 40 8f e0                                      add r4, pc, r4
00803ee4  06 c0 94 e7                                      ldr ip, [r4, r6]
00803ee8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00803eec  0c d0 4d e2                                      sub sp, sp, #0xc
00803ef0  0c 10 8d e5                                      str r1, [sp, #0xc]
00803ef4  00 10 9c e5                                      ldr r1, [ip]
00803ef8  00 00 53 e3                                      cmp r3, #0
00803efc  00 50 a0 e1                                      mov r5, r0
00803f00  08 20 8d e5                                      str r2, [sp, #8]
00803f04  b4 18 8d e5                                      str r1, [sp, #0x8b4]
00803f08  00 00 e0 03                                      mvneq r0, #0
00803f0c  07 00 00 1a                                      bne #0x803f30
00803f10  06 30 94 e7                                      ldr r3, [r4, r6]
00803f14  b4 28 9d e5                                      ldr r2, [sp, #0x8b4]
00803f18  00 30 93 e5                                      ldr r3, [r3]
00803f1c  03 00 52 e1                                      cmp r2, r3
00803f20  ba 00 00 1a                                      bne #0x804210
00803f24  bc d0 8d e2                                      add sp, sp, #0xbc
00803f28  02 db 8d e2                                      add sp, sp, #0x800
00803f2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00803f30  5b 0d 00 eb                                      bl #0x8074a4
00803f34  01 20 a0 e3                                      mov r2, #1
00803f38  30 36 03 e3                                      movw r3, #0x3630
00803f3c  03 20 c5 e7                                      strb r2, [r5, r3]
00803f40  00 30 95 e5                                      ldr r3, [r5]
00803f44  05 00 a0 e1                                      mov r0, r5
00803f48  0f e0 a0 e1                                      mov lr, pc
00803f4c  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00803f50  3c 36 03 e3                                      movw r3, #0x363c
00803f54  00 70 a0 e3                                      mov r7, #0
00803f58  03 00 85 e7                                      str r0, [r5, r3]
00803f5c  38 a0 8d e2                                      add sl, sp, #0x38
00803f60  38 36 03 e3                                      movw r3, #0x3638
00803f64  03 00 85 e7                                      str r0, [r5, r3]
00803f68  0d 70 c5 e5                                      strb r7, [r5, #0xd]
00803f6c  0a 00 a0 e1                                      mov r0, sl
00803f70  54 70 8d e5                                      str r7, [sp, #0x54]
00803f74  02 e1 ff eb                                      bl #0x7fc384
00803f78  50 20 9d e5                                      ldr r2, [sp, #0x50]
00803f7c  87 3e e0 e3                                      mvn r3, #0x870
00803f80  8b 1e 8d e2                                      add r1, sp, #0x8b0
00803f84  07 30 43 e2                                      sub r3, r3, #7
00803f88  08 10 81 e2                                      add r1, r1, #8
00803f8c  b3 70 81 e1                                      strh r7, [r1, r3]
00803f90  01 20 82 e3                                      orr r2, r2, #1
00803f94  50 20 8d e5                                      str r2, [sp, #0x50]
00803f98  44 70 8d e5                                      str r7, [sp, #0x44]
00803f9c  97 5a 00 eb                                      bl #0x81aa00
00803fa0  89 8e 8d e2                                      add r8, sp, #0x890
00803fa4  0a 20 a0 e1                                      mov r2, sl
00803fa8  0c 80 88 e2                                      add r8, r8, #0xc
00803fac  00 30 a0 e1                                      mov r3, r0
00803fb0  81 ae 8d e2                                      add sl, sp, #0x810
00803fb4  00 10 a0 e1                                      mov r1, r0
00803fb8  00 30 93 e5                                      ldr r3, [r3]
00803fbc  08 00 a0 e1                                      mov r0, r8
00803fc0  08 a0 8a e2                                      add sl, sl, #8
00803fc4  0f e0 a0 e1                                      mov lr, pc
00803fc8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00803fcc  08 10 a0 e1                                      mov r1, r8
00803fd0  0a 00 a0 e1                                      mov r0, sl
00803fd4  21 f3 ff eb                                      bl #0x800c60
00803fd8  20 a0 8a e2                                      add sl, sl, #0x20
00803fdc  ab 9c 85 e2                                      add sb, r5, #0xab00
00803fe0  18 3b 0a e3                                      movw r3, #0xab18
00803fe4  0a 10 a0 e1                                      mov r1, sl
00803fe8  03 30 95 e7                                      ldr r3, [r5, r3]
00803fec  18 00 89 e2                                      add r0, sb, #0x18
00803ff0  0f e0 a0 e1                                      mov lr, pc
00803ff4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00803ff8  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
00803ffc  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
00804000  0a 00 a0 e1                                      mov r0, sl
00804004  03 30 94 e7                                      ldr r3, [r4, r3]
00804008  04 20 8d e5                                      str r2, [sp, #4]
0080400c  00 b0 a0 e3                                      mov fp, #0
00804010  08 30 83 e2                                      add r3, r3, #8
00804014  18 38 8d e5                                      str r3, [sp, #0x818]
00804018  8d 50 ec eb                                      bl #0x318254
0080401c  04 a0 9d e5                                      ldr sl, [sp, #4]
00804020  08 00 a0 e1                                      mov r0, r8
00804024  0a 30 94 e7                                      ldr r3, [r4, sl]
00804028  00 a0 a0 e3                                      mov sl, #0
0080402c  08 30 83 e2                                      add r3, r3, #8
00804030  18 38 8d e5                                      str r3, [sp, #0x818]
00804034  86 50 ec eb                                      bl #0x318254
00804038  00 30 95 e5                                      ldr r3, [r5]
0080403c  05 00 a0 e1                                      mov r0, r5
00804040  0f e0 a0 e1                                      mov lr, pc
00804044  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00804048  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0080404c  00 30 a0 e1                                      mov r3, r0
00804050  30 00 9d e5                                      ldr r0, [sp, #0x30]
00804054  01 10 94 e7                                      ldr r1, [r4, r1]
00804058  bb 24 a0 e3                                      mov r2, #0xbb000000
0080405c  8b ce 8d e2                                      add ip, sp, #0x8b0
00804060  c2 29 a0 e1                                      asr r2, r2, #0x13
00804064  08 c0 8c e2                                      add ip, ip, #8
00804068  00 00 53 e1                                      cmp r3, r0
0080406c  08 10 81 e2                                      add r1, r1, #8
00804070  00 00 e0 e3                                      mvn r0, #0
00804074  f2 a0 8c e1                                      strd sl, fp, [ip, r2]
00804078  20 20 a0 e3                                      mov r2, #0x20
0080407c  2c 70 cd e5                                      strb r7, [sp, #0x2c]
00804080  28 70 8d e5                                      str r7, [sp, #0x28]
00804084  14 20 8d e5                                      str r2, [sp, #0x14]
00804088  24 00 8d e5                                      str r0, [sp, #0x24]
0080408c  10 10 8d e5                                      str r1, [sp, #0x10]
00804090  20 00 8d e5                                      str r0, [sp, #0x20]
00804094  18 70 8d 02                                      addeq r7, sp, #0x18
00804098  03 00 00 0a                                      beq #0x8040ac
0080409c  18 70 8d e2                                      add r7, sp, #0x18
008040a0  08 00 47 e2                                      sub r0, r7, #8
008040a4  30 30 8d e5                                      str r3, [sp, #0x30]
008040a8  b5 43 00 eb                                      bl #0x814f84
008040ac  74 21 9f e5                                      ldr r2, [pc, #0x174]
008040b0  50 3b 0a e3                                      movw r3, #0xab50
008040b4  18 10 87 e2                                      add r1, r7, #0x18
008040b8  02 20 94 e7                                      ldr r2, [r4, r2]
008040bc  03 30 95 e7                                      ldr r3, [r5, r3]
008040c0  50 00 89 e2                                      add r0, sb, #0x50
008040c4  08 20 82 e2                                      add r2, r2, #8
008040c8  10 20 8d e5                                      str r2, [sp, #0x10]
008040cc  0f e0 a0 e1                                      mov lr, pc
008040d0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008040d4  04 10 9d e5                                      ldr r1, [sp, #4]
008040d8  43 7e 8d e2                                      add r7, sp, #0x430
008040dc  08 70 87 e2                                      add r7, r7, #8
008040e0  01 30 94 e7                                      ldr r3, [r4, r1]
008040e4  07 00 a0 e1                                      mov r0, r7
008040e8  22 8d 8d e2                                      add r8, sp, #0x880
008040ec  08 30 83 e2                                      add r3, r3, #8
008040f0  10 30 8d e5                                      str r3, [sp, #0x10]
008040f4  32 f9 ff eb                                      bl #0x8025c4
008040f8  38 36 03 e3                                      movw r3, #0x3638
008040fc  03 30 95 e7                                      ldr r3, [r5, r3]
00804100  04 80 88 e2                                      add r8, r8, #4
00804104  38 10 89 e2                                      add r1, sb, #0x38
00804108  08 00 a0 e1                                      mov r0, r8
0080410c  38 34 8d e5                                      str r3, [sp, #0x438]
00804110  00 9e ec eb                                      bl #0x32b918
00804114  94 28 9d e5                                      ldr r2, [sp, #0x894]
00804118  98 18 9d e5                                      ldr r1, [sp, #0x898]
0080411c  24 00 87 e2                                      add r0, r7, #0x24
00804120  2e 32 ec eb                                      bl #0x3109e0
00804124  08 00 a0 e1                                      mov r0, r8
00804128  49 50 ec eb                                      bl #0x318254
0080412c  58 a0 8d e2                                      add sl, sp, #0x58
00804130  08 10 9d e5                                      ldr r1, [sp, #8]
00804134  48 00 87 e2                                      add r0, r7, #0x48
00804138  86 8e 8d e2                                      add r8, sp, #0x860
0080413c  fa 51 00 eb                                      bl #0x81892c
00804140  0c 80 88 e2                                      add r8, r8, #0xc
00804144  07 10 a0 e1                                      mov r1, r7
00804148  0a 00 a0 e1                                      mov r0, sl
0080414c  03 f9 ff eb                                      bl #0x802560
00804150  0a 20 a0 e1                                      mov r2, sl
00804154  05 10 a0 e1                                      mov r1, r5
00804158  08 00 a0 e1                                      mov r0, r8
0080415c  d6 fe ff eb                                      bl #0x803cbc
00804160  48 00 8a e2                                      add r0, sl, #0x48
00804164  aa 52 00 eb                                      bl #0x818c14
00804168  24 00 8a e2                                      add r0, sl, #0x24
0080416c  85 ae 8d e2                                      add sl, sp, #0x850
00804170  04 a0 8a e2                                      add sl, sl, #4
00804174  36 50 ec eb                                      bl #0x318254
00804178  0a 00 a0 e1                                      mov r0, sl
0080417c  08 10 a0 e1                                      mov r1, r8
00804180  e4 9d ec eb                                      bl #0x32b918
00804184  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00804188  03 00 94 e7                                      ldr r0, [r4, r3]
0080418c  00 00 5a e1                                      cmp sl, r0
00804190  02 00 00 0a                                      beq #0x8041a0
00804194  68 18 9d e5                                      ldr r1, [sp, #0x868]
00804198  64 28 9d e5                                      ldr r2, [sp, #0x864]
0080419c  0f 32 ec eb                                      bl #0x3109e0
008041a0  0a 00 a0 e1                                      mov r0, sl
008041a4  2a 50 ec eb                                      bl #0x318254
008041a8  05 00 a0 e1                                      mov r0, r5
008041ac  a9 f6 ff eb                                      bl #0x801c58
008041b0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008041b4  00 30 95 e5                                      ldr r3, [r5]
008041b8  05 00 a0 e1                                      mov r0, r5
008041bc  0f e0 a0 e1                                      mov lr, pc
008041c0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
008041c4  64 30 9f e5                                      ldr r3, [pc, #0x64]
008041c8  00 20 a0 e3                                      mov r2, #0
008041cc  02 15 a0 e3                                      mov r1, #0x800000
008041d0  03 00 94 e7                                      ldr r0, [r4, r3]
008041d4  03 10 81 e2                                      add r1, r1, #3
008041d8  02 30 a0 e1                                      mov r3, r2
008041dc  08 e8 ff eb                                      bl #0x7fe204
008041e0  46 0c 85 e2                                      add r0, r5, #0x4600
008041e4  08 10 9d e5                                      ldr r1, [sp, #8]
008041e8  60 00 80 e2                                      add r0, r0, #0x60
008041ec  ce 51 00 eb                                      bl #0x81892c
008041f0  08 00 a0 e1                                      mov r0, r8
008041f4  16 50 ec eb                                      bl #0x318254
008041f8  48 00 87 e2                                      add r0, r7, #0x48
008041fc  84 52 00 eb                                      bl #0x818c14
00804200  24 00 87 e2                                      add r0, r7, #0x24
00804204  12 50 ec eb                                      bl #0x318254
00804208  00 00 a0 e3                                      mov r0, #0
0080420c  3f ff ff ea                                      b #0x803f10
00804210  3e 28 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00804214  b0 0b 19 00 ac 40 00 00 30 3e 00 00 a8 10 00 00  .byte 0xb0, 0x0b, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00804224  84 29 00 00 c8 10 00 00 38 31 00 00 3c 34 00 00  .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0x38, 0x31, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00804234, declared_size=2756, range_size=2756, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth13ProcessEventsEv
; demangled: CMatchingBluetooth::ProcessEvents()
; decoder-mode: arm
00804234  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00804238  a0 4a 9f e5                                      ldr r4, [pc, #0xaa0]
0080423c  a0 8a 9f e5                                      ldr r8, [pc, #0xaa0]
00804240  84 6b 0a e3                                      movw r6, #0xab84
00804244  04 40 8f e0                                      add r4, pc, r4
00804248  08 30 94 e7                                      ldr r3, [r4, r8]
0080424c  06 20 d0 e7                                      ldrb r2, [r0, r6]
00804250  99 de 4d e2                                      sub sp, sp, #0x990
00804254  00 30 93 e5                                      ldr r3, [r3]
00804258  0c d0 4d e2                                      sub sp, sp, #0xc
0080425c  00 00 52 e3                                      cmp r2, #0
00804260  00 50 a0 e1                                      mov r5, r0
00804264  94 39 8d e5                                      str r3, [sp, #0x994]
00804268  57 01 00 1a                                      bne #0x8047cc
0080426c  30 36 03 e3                                      movw r3, #0x3630
00804270  03 30 d5 e7                                      ldrb r3, [r5, r3]
00804274  00 00 53 e3                                      cmp r3, #0
00804278  79 00 00 0a                                      beq #0x804464
0080427c  38 36 03 e3                                      movw r3, #0x3638
00804280  03 30 95 e7                                      ldr r3, [r5, r3]
00804284  00 00 53 e3                                      cmp r3, #0
00804288  03 00 00 ba                                      blt #0x80429c
0080428c  3c 26 03 e3                                      movw r2, #0x363c
00804290  02 20 95 e7                                      ldr r2, [r5, r2]
00804294  02 00 53 e1                                      cmp r3, r2
00804298  71 00 00 0a                                      beq #0x804464
0080429c  44 6a 9f e5                                      ldr r6, [pc, #0xa44]
008042a0  01 14 a0 e3                                      mov r1, #0x1000000
008042a4  01 10 81 e2                                      add r1, r1, #1
008042a8  06 70 94 e7                                      ldr r7, [r4, r6]
008042ac  00 20 a0 e3                                      mov r2, #0
008042b0  07 00 a0 e1                                      mov r0, r7
008042b4  4f e8 ff eb                                      bl #0x7fe3f8
008042b8  00 00 50 e3                                      cmp r0, #0
008042bc  6c 01 00 1a                                      bne #0x804874
008042c0  06 70 94 e7                                      ldr r7, [r4, r6]
008042c4  01 14 a0 e3                                      mov r1, #0x1000000
008042c8  02 10 81 e2                                      add r1, r1, #2
008042cc  07 00 a0 e1                                      mov r0, r7
008042d0  00 20 a0 e3                                      mov r2, #0
008042d4  47 e8 ff eb                                      bl #0x7fe3f8
008042d8  00 00 50 e3                                      cmp r0, #0
008042dc  61 00 00 0a                                      beq #0x804468
008042e0  01 14 a0 e3                                      mov r1, #0x1000000
008042e4  78 20 8d e2                                      add r2, sp, #0x78
008042e8  04 30 a0 e3                                      mov r3, #4
008042ec  02 10 81 e2                                      add r1, r1, #2
008042f0  07 00 a0 e1                                      mov r0, r7
008042f4  1a e7 ff eb                                      bl #0x7fdf64
008042f8  28 90 8d e2                                      add sb, sp, #0x28
008042fc  01 14 a0 e3                                      mov r1, #0x1000000
00804300  07 00 a0 e1                                      mov r0, r7
00804304  02 10 81 e2                                      add r1, r1, #2
00804308  04 90 49 e2                                      sub sb, sb, #4
0080430c  37 e8 ff eb                                      bl #0x7fe3f0
00804310  09 00 a0 e1                                      mov r0, sb
00804314  78 a0 9d e5                                      ldr sl, [sp, #0x78]
00804318  19 e0 ff eb                                      bl #0x7fc384
0080431c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00804320  78 20 9d e5                                      ldr r2, [sp, #0x78]
00804324  c0 79 9f e5                                      ldr r7, [pc, #0x9c0]
00804328  0c 30 83 e3                                      orr r3, r3, #0xc
0080432c  09 10 a0 e1                                      mov r1, sb
00804330  05 00 a0 e1                                      mov r0, r5
00804334  3c 30 8d e5                                      str r3, [sp, #0x3c]
00804338  34 a0 8d e5                                      str sl, [sp, #0x34]
0080433c  38 20 8d e5                                      str r2, [sp, #0x38]
00804340  e4 0b 00 eb                                      bl #0x8072d8
00804344  07 10 94 e7                                      ldr r1, [r4, r7]
00804348  04 00 91 e5                                      ldr r0, [r1, #4]
0080434c  00 00 50 e3                                      cmp r0, #0
00804350  01 30 a0 01                                      moveq r3, r1
00804354  11 00 00 0a                                      beq #0x8043a0
00804358  78 c0 9d e5                                      ldr ip, [sp, #0x78]
0080435c  00 30 a0 e1                                      mov r3, r0
00804360  01 00 00 ea                                      b #0x80436c
00804364  03 10 a0 e1                                      mov r1, r3
00804368  02 30 a0 e1                                      mov r3, r2
0080436c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00804370  0c 00 52 e1                                      cmp r2, ip
00804374  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
00804378  08 20 93 25                                      ldrhs r2, [r3, #8]
0080437c  01 30 a0 31                                      movlo r3, r1
00804380  00 00 52 e3                                      cmp r2, #0
00804384  f6 ff ff 1a                                      bne #0x804364
00804388  07 20 94 e7                                      ldr r2, [r4, r7]
0080438c  02 00 53 e1                                      cmp r3, r2
00804390  02 00 00 0a                                      beq #0x8043a0
00804394  10 10 93 e5                                      ldr r1, [r3, #0x10]
00804398  0c 00 51 e1                                      cmp r1, ip
0080439c  02 30 a0 81                                      movhi r3, r2
008043a0  07 20 94 e7                                      ldr r2, [r4, r7]
008043a4  02 00 53 e1                                      cmp r3, r2
008043a8  10 20 93 05                                      ldreq r2, [r3, #0x10]
008043ac  23 00 00 0a                                      beq #0x804440
008043b0  00 00 50 e3                                      cmp r0, #0
008043b4  78 10 9d 15                                      ldrne r1, [sp, #0x78]
008043b8  02 00 00 1a                                      bne #0x8043c8
008043bc  2a 01 00 ea                                      b #0x80486c
008043c0  00 20 a0 e1                                      mov r2, r0
008043c4  03 00 a0 e1                                      mov r0, r3
008043c8  10 30 90 e5                                      ldr r3, [r0, #0x10]
008043cc  01 00 53 e1                                      cmp r3, r1
008043d0  0c 30 90 35                                      ldrlo r3, [r0, #0xc]
008043d4  08 30 90 25                                      ldrhs r3, [r0, #8]
008043d8  02 00 a0 31                                      movlo r0, r2
008043dc  00 00 53 e3                                      cmp r3, #0
008043e0  f6 ff ff 1a                                      bne #0x8043c0
008043e4  07 20 94 e7                                      ldr r2, [r4, r7]
008043e8  02 00 50 e1                                      cmp r0, r2
008043ec  10 20 90 05                                      ldreq r2, [r0, #0x10]
008043f0  12 00 00 0a                                      beq #0x804440
008043f4  10 30 90 e5                                      ldr r3, [r0, #0x10]
008043f8  01 00 53 e1                                      cmp r3, r1
008043fc  1a 01 00 8a                                      bhi #0x80486c
00804400  0c 30 82 e2                                      add r3, r2, #0xc
00804404  04 10 82 e2                                      add r1, r2, #4
00804408  08 20 82 e2                                      add r2, r2, #8
0080440c  fc c6 ec eb                                      bl #0x336004
00804410  00 a0 a0 e1                                      mov sl, r0
00804414  14 00 80 e2                                      add r0, r0, #0x14
00804418  8d 4f ec eb                                      bl #0x318254
0080441c  00 00 5a e3                                      cmp sl, #0
00804420  02 00 00 0a                                      beq #0x804430
00804424  0a 00 a0 e1                                      mov r0, sl
00804428  2c 10 a0 e3                                      mov r1, #0x2c
0080442c  c1 e7 02 eb                                      bl #0x8be338
00804430  07 30 94 e7                                      ldr r3, [r4, r7]
00804434  10 20 93 e5                                      ldr r2, [r3, #0x10]
00804438  01 20 42 e2                                      sub r2, r2, #1
0080443c  10 20 83 e5                                      str r2, [r3, #0x10]
00804440  00 00 52 e3                                      cmp r2, #0
00804444  07 00 00 1a                                      bne #0x804468
00804448  a0 38 9f e5                                      ldr r3, [pc, #0x8a0]
0080444c  02 15 a0 e3                                      mov r1, #0x800000
00804450  0f 10 81 e2                                      add r1, r1, #0xf
00804454  03 00 94 e7                                      ldr r0, [r4, r3]
00804458  02 30 a0 e1                                      mov r3, r2
0080445c  68 e7 ff eb                                      bl #0x7fe204
00804460  00 00 00 ea                                      b #0x804468
00804464  7c 68 9f e5                                      ldr r6, [pc, #0x87c]
00804468  06 70 94 e7                                      ldr r7, [r4, r6]
0080446c  01 14 a0 e3                                      mov r1, #0x1000000
00804470  06 10 81 e2                                      add r1, r1, #6
00804474  07 00 a0 e1                                      mov r0, r7
00804478  00 20 a0 e3                                      mov r2, #0
0080447c  dd e7 ff eb                                      bl #0x7fe3f8
00804480  00 00 50 e3                                      cmp r0, #0
00804484  9b 00 00 1a                                      bne #0x8046f8
00804488  06 70 94 e7                                      ldr r7, [r4, r6]
0080448c  01 14 a0 e3                                      mov r1, #0x1000000
00804490  04 10 81 e2                                      add r1, r1, #4
00804494  07 00 a0 e1                                      mov r0, r7
00804498  00 20 a0 e3                                      mov r2, #0
0080449c  d5 e7 ff eb                                      bl #0x7fe3f8
008044a0  00 00 50 e3                                      cmp r0, #0
008044a4  ac 00 00 1a                                      bne #0x80475c
008044a8  06 60 94 e7                                      ldr r6, [r4, r6]
008044ac  01 14 a0 e3                                      mov r1, #0x1000000
008044b0  03 10 81 e2                                      add r1, r1, #3
008044b4  06 00 a0 e1                                      mov r0, r6
008044b8  00 20 a0 e3                                      mov r2, #0
008044bc  cd e7 ff eb                                      bl #0x7fe3f8
008044c0  00 00 50 e3                                      cmp r0, #0
008044c4  08 00 00 1a                                      bne #0x8044ec
008044c8  08 30 94 e7                                      ldr r3, [r4, r8]
008044cc  94 29 9d e5                                      ldr r2, [sp, #0x994]
008044d0  00 00 a0 e3                                      mov r0, #0
008044d4  00 30 93 e5                                      ldr r3, [r3]
008044d8  03 00 52 e1                                      cmp r2, r3
008044dc  f5 01 00 1a                                      bne #0x804cb8
008044e0  67 df 8d e2                                      add sp, sp, #0x19c
008044e4  02 db 8d e2                                      add sp, sp, #0x800
008044e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008044ec  99 7e 8d e2                                      add r7, sp, #0x990
008044f0  08 70 87 e2                                      add r7, r7, #8
008044f4  00 30 a0 e3                                      mov r3, #0
008044f8  20 39 27 e5                                      str r3, [r7, #-0x920]!
008044fc  01 14 a0 e3                                      mov r1, #0x1000000
00804500  07 20 a0 e1                                      mov r2, r7
00804504  03 10 81 e2                                      add r1, r1, #3
00804508  04 30 a0 e3                                      mov r3, #4
0080450c  06 00 a0 e1                                      mov r0, r6
00804510  93 e6 ff eb                                      bl #0x7fdf64
00804514  01 14 a0 e3                                      mov r1, #0x1000000
00804518  06 00 a0 e1                                      mov r0, r6
0080451c  03 10 81 e2                                      add r1, r1, #3
00804520  b2 e7 ff eb                                      bl #0x7fe3f0
00804524  c8 07 9f e5                                      ldr r0, [pc, #0x7c8]
00804528  00 10 94 e7                                      ldr r1, [r4, r0]
0080452c  04 60 91 e5                                      ldr r6, [r1, #4]
00804530  00 00 56 e3                                      cmp r6, #0
00804534  78 20 9d 15                                      ldrne r2, [sp, #0x78]
00804538  02 00 00 1a                                      bne #0x804548
0080453c  5d 01 00 ea                                      b #0x804ab8
00804540  06 10 a0 e1                                      mov r1, r6
00804544  03 60 a0 e1                                      mov r6, r3
00804548  10 30 96 e5                                      ldr r3, [r6, #0x10]
0080454c  02 00 53 e1                                      cmp r3, r2
00804550  0c 30 96 35                                      ldrlo r3, [r6, #0xc]
00804554  08 30 96 25                                      ldrhs r3, [r6, #8]
00804558  01 60 a0 31                                      movlo r6, r1
0080455c  00 00 53 e3                                      cmp r3, #0
00804560  f6 ff ff 1a                                      bne #0x804540
00804564  00 30 94 e7                                      ldr r3, [r4, r0]
00804568  03 00 56 e1                                      cmp r6, r3
0080456c  03 00 00 0a                                      beq #0x804580
00804570  10 30 96 e5                                      ldr r3, [r6, #0x10]
00804574  06 c0 a0 e1                                      mov ip, r6
00804578  02 00 53 e1                                      cmp r3, r2
0080457c  40 00 00 9a                                      bls #0x804684
00804580  00 30 94 e7                                      ldr r3, [r4, r0]
00804584  00 a0 a0 e3                                      mov sl, #0
00804588  60 20 8d e5                                      str r2, [sp, #0x60]
0080458c  08 c0 93 e5                                      ldr ip, [r3, #8]
00804590  64 a0 8d e5                                      str sl, [sp, #0x64]
00804594  06 00 5c e1                                      cmp ip, r6
00804598  49 01 00 0a                                      beq #0x804ac4
0080459c  03 00 56 e1                                      cmp r6, r3
008045a0  68 01 00 0a                                      beq #0x804b48
008045a4  00 30 d6 e5                                      ldrb r3, [r6]
008045a8  00 00 53 e3                                      cmp r3, #0
008045ac  04 00 00 1a                                      bne #0x8045c4
008045b0  04 30 96 e5                                      ldr r3, [r6, #4]
008045b4  04 30 93 e5                                      ldr r3, [r3, #4]
008045b8  06 00 53 e1                                      cmp r3, r6
008045bc  0c c0 96 05                                      ldreq ip, [r6, #0xc]
008045c0  07 00 00 0a                                      beq #0x8045e4
008045c4  08 c0 96 e5                                      ldr ip, [r6, #8]
008045c8  00 00 5c e3                                      cmp ip, #0
008045cc  01 00 00 1a                                      bne #0x8045d8
008045d0  68 01 00 ea                                      b #0x804b78
008045d4  03 c0 a0 e1                                      mov ip, r3
008045d8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
008045dc  00 00 53 e3                                      cmp r3, #0
008045e0  fb ff ff 1a                                      bne #0x8045d4
008045e4  10 90 96 e5                                      ldr sb, [r6, #0x10]
008045e8  09 00 52 e1                                      cmp r2, sb
008045ec  00 a0 a0 23                                      movhs sl, #0
008045f0  01 a0 a0 33                                      movlo sl, #1
008045f4  00 00 5a e3                                      cmp sl, #0
008045f8  02 00 00 0a                                      beq #0x804608
008045fc  10 30 9c e5                                      ldr r3, [ip, #0x10]
00804600  03 00 52 e1                                      cmp r2, r3
00804604  83 00 00 8a                                      bhi #0x804818
00804608  0c b0 96 e5                                      ldr fp, [r6, #0xc]
0080460c  00 00 5b e3                                      cmp fp, #0
00804610  6e 01 00 0a                                      beq #0x804bd0
00804614  0b 10 a0 e1                                      mov r1, fp
00804618  00 00 00 ea                                      b #0x804620
0080461c  03 10 a0 e1                                      mov r1, r3
00804620  08 30 91 e5                                      ldr r3, [r1, #8]
00804624  00 00 53 e3                                      cmp r3, #0
00804628  fb ff ff 1a                                      bne #0x80461c
0080462c  00 00 5a e3                                      cmp sl, #0
00804630  85 00 00 1a                                      bne #0x80484c
00804634  09 00 52 e1                                      cmp r2, sb
00804638  74 60 8d 95                                      strls r6, [sp, #0x74]
0080463c  06 c0 a0 91                                      movls ip, r6
00804640  0f 00 00 9a                                      bls #0x804684
00804644  00 30 94 e7                                      ldr r3, [r4, r0]
00804648  03 00 51 e1                                      cmp r1, r3
0080464c  02 00 00 0a                                      beq #0x80465c
00804650  10 30 91 e5                                      ldr r3, [r1, #0x10]
00804654  03 00 52 e1                                      cmp r2, r3
00804658  7b 00 00 2a                                      bhs #0x80484c
0080465c  00 00 5b e3                                      cmp fp, #0
00804660  70 00 00 1a                                      bne #0x804828
00804664  68 20 8d e2                                      add r2, sp, #0x68
00804668  06 10 a0 e1                                      mov r1, r6
0080466c  08 20 42 e2                                      sub r2, r2, #8
00804670  0b 30 a0 e1                                      mov r3, fp
00804674  04 00 47 e2                                      sub r0, r7, #4
00804678  00 60 8d e5                                      str r6, [sp]
0080467c  e9 f7 ff eb                                      bl #0x802628
00804680  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804684  00 30 a0 e3                                      mov r3, #0
00804688  14 30 8c e5                                      str r3, [ip, #0x14]
0080468c  a4 3b 0a e3                                      movw r3, #0xaba4
00804690  03 30 95 e7                                      ldr r3, [r5, r3]
00804694  00 00 53 e3                                      cmp r3, #0
00804698  8a ff ff 0a                                      beq #0x8044c8
0080469c  ab 0c 85 e2                                      add r0, r5, #0xab00
008046a0  a0 00 80 e2                                      add r0, r0, #0xa0
008046a4  78 c0 9d e5                                      ldr ip, [sp, #0x78]
008046a8  00 10 a0 e1                                      mov r1, r0
008046ac  01 00 00 ea                                      b #0x8046b8
008046b0  03 10 a0 e1                                      mov r1, r3
008046b4  02 30 a0 e1                                      mov r3, r2
008046b8  10 20 93 e5                                      ldr r2, [r3, #0x10]
008046bc  0c 00 52 e1                                      cmp r2, ip
008046c0  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
008046c4  08 20 93 25                                      ldrhs r2, [r3, #8]
008046c8  01 30 a0 31                                      movlo r3, r1
008046cc  00 00 52 e3                                      cmp r2, #0
008046d0  f6 ff ff 1a                                      bne #0x8046b0
008046d4  03 00 50 e1                                      cmp r0, r3
008046d8  7a ff ff 0a                                      beq #0x8044c8
008046dc  10 20 93 e5                                      ldr r2, [r3, #0x10]
008046e0  0c 00 52 e1                                      cmp r2, ip
008046e4  77 ff ff 8a                                      bhi #0x8044c8
008046e8  08 10 47 e2                                      sub r1, r7, #8
008046ec  70 30 8d e5                                      str r3, [sp, #0x70]
008046f0  41 f7 ff eb                                      bl #0x8023fc
008046f4  73 ff ff ea                                      b #0x8044c8
008046f8  99 2e 8d e2                                      add r2, sp, #0x990
008046fc  08 20 82 e2                                      add r2, r2, #8
00804700  00 30 a0 e3                                      mov r3, #0
00804704  01 14 a0 e3                                      mov r1, #0x1000000
00804708  20 39 22 e5                                      str r3, [r2, #-0x920]!
0080470c  06 10 81 e2                                      add r1, r1, #6
00804710  04 30 a0 e3                                      mov r3, #4
00804714  07 00 a0 e1                                      mov r0, r7
00804718  11 e6 ff eb                                      bl #0x7fdf64
0080471c  01 14 a0 e3                                      mov r1, #0x1000000
00804720  07 00 a0 e1                                      mov r0, r7
00804724  06 10 81 e2                                      add r1, r1, #6
00804728  30 e7 ff eb                                      bl #0x7fe3f0
0080472c  18 e4 ff eb                                      bl #0x7fd794
00804730  07 10 a0 e3                                      mov r1, #7
00804734  01 20 a0 e3                                      mov r2, #1
00804738  77 e3 ff eb                                      bl #0x7fd51c
0080473c  06 70 94 e7                                      ldr r7, [r4, r6]
00804740  01 14 a0 e3                                      mov r1, #0x1000000
00804744  04 10 81 e2                                      add r1, r1, #4
00804748  07 00 a0 e1                                      mov r0, r7
0080474c  00 20 a0 e3                                      mov r2, #0
00804750  28 e7 ff eb                                      bl #0x7fe3f8
00804754  00 00 50 e3                                      cmp r0, #0
00804758  52 ff ff 0a                                      beq #0x8044a8
0080475c  21 2d 8d e2                                      add r2, sp, #0x840
00804760  01 14 a0 e3                                      mov r1, #0x1000000
00804764  04 20 82 e2                                      add r2, r2, #4
00804768  41 3f a0 e3                                      mov r3, #0x104
0080476c  04 10 81 e2                                      add r1, r1, #4
00804770  07 00 a0 e1                                      mov r0, r7
00804774  fa e5 ff eb                                      bl #0x7fdf64
00804778  07 00 a0 e1                                      mov r0, r7
0080477c  01 14 a0 e3                                      mov r1, #0x1000000
00804780  28 70 8d e2                                      add r7, sp, #0x28
00804784  04 10 81 e2                                      add r1, r1, #4
00804788  04 70 47 e2                                      sub r7, r7, #4
0080478c  17 e7 ff eb                                      bl #0x7fe3f0
00804790  07 00 a0 e1                                      mov r0, r7
00804794  44 a9 9d e5                                      ldr sl, [sp, #0x944]
00804798  f9 de ff eb                                      bl #0x7fc384
0080479c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
008047a0  38 a0 8d e5                                      str sl, [sp, #0x38]
008047a4  34 a0 8d e5                                      str sl, [sp, #0x34]
008047a8  0c 30 83 e3                                      orr r3, r3, #0xc
008047ac  3c 30 8d e5                                      str r3, [sp, #0x3c]
008047b0  92 58 00 eb                                      bl #0x81aa00
008047b4  07 10 a0 e1                                      mov r1, r7
008047b8  20 5b 00 eb                                      bl #0x81b440
008047bc  05 00 a0 e1                                      mov r0, r5
008047c0  07 10 a0 e1                                      mov r1, r7
008047c4  c3 0a 00 eb                                      bl #0x8072d8
008047c8  36 ff ff ea                                      b #0x8044a8
008047cc  00 30 90 e5                                      ldr r3, [r0]
008047d0  0f e0 a0 e1                                      mov lr, pc
008047d4  60 f0 93 e5                                      ldr pc, [r3, #0x60]
008047d8  00 30 95 e5                                      ldr r3, [r5]
008047dc  05 00 a0 e1                                      mov r0, r5
008047e0  0f e0 a0 e1                                      mov lr, pc
008047e4  60 f0 93 e5                                      ldr pc, [r3, #0x60]
008047e8  01 00 50 e3                                      cmp r0, #1
008047ec  9e fe ff 1a                                      bne #0x80426c
008047f0  f8 34 9f e5                                      ldr r3, [pc, #0x4f8]
008047f4  00 20 a0 e3                                      mov r2, #0
008047f8  02 15 a0 e3                                      mov r1, #0x800000
008047fc  03 00 94 e7                                      ldr r0, [r4, r3]
00804800  04 10 81 e2                                      add r1, r1, #4
00804804  02 30 a0 e1                                      mov r3, r2
00804808  7d e6 ff eb                                      bl #0x7fe204
0080480c  00 30 a0 e3                                      mov r3, #0
00804810  06 30 c5 e7                                      strb r3, [r5, r6]
00804814  94 fe ff ea                                      b #0x80426c
00804818  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0080481c  00 00 53 e3                                      cmp r3, #0
00804820  06 10 a0 11                                      movne r1, r6
00804824  e6 00 00 0a                                      beq #0x804bc4
00804828  68 20 8d e2                                      add r2, sp, #0x68
0080482c  00 c0 a0 e3                                      mov ip, #0
00804830  08 20 42 e2                                      sub r2, r2, #8
00804834  04 00 47 e2                                      sub r0, r7, #4
00804838  01 30 a0 e1                                      mov r3, r1
0080483c  00 c0 8d e5                                      str ip, [sp]
00804840  78 f7 ff eb                                      bl #0x802628
00804844  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804848  8d ff ff ea                                      b #0x804684
0080484c  48 00 8d e2                                      add r0, sp, #0x48
00804850  68 10 8d e2                                      add r1, sp, #0x68
00804854  08 00 40 e2                                      sub r0, r0, #8
00804858  08 10 41 e2                                      sub r1, r1, #8
0080485c  bf f7 ff eb                                      bl #0x802760
00804860  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00804864  74 c0 8d e5                                      str ip, [sp, #0x74]
00804868  85 ff ff ea                                      b #0x804684
0080486c  10 20 92 e5                                      ldr r2, [r2, #0x10]
00804870  f2 fe ff ea                                      b #0x804440
00804874  21 ad 8d e2                                      add sl, sp, #0x840
00804878  04 a0 8a e2                                      add sl, sl, #4
0080487c  01 14 a0 e3                                      mov r1, #0x1000000
00804880  46 9e 8d e2                                      add sb, sp, #0x460
00804884  41 3f a0 e3                                      mov r3, #0x104
00804888  01 10 81 e2                                      add r1, r1, #1
0080488c  07 00 a0 e1                                      mov r0, r7
00804890  0a 20 a0 e1                                      mov r2, sl
00804894  97 7e 8d e2                                      add r7, sp, #0x970
00804898  08 90 89 e2                                      add sb, sb, #8
0080489c  b0 e5 ff eb                                      bl #0x7fdf64
008048a0  0c 70 87 e2                                      add r7, r7, #0xc
008048a4  08 20 49 e2                                      sub r2, sb, #8
008048a8  88 b0 8d e2                                      add fp, sp, #0x88
008048ac  14 20 8d e5                                      str r2, [sp, #0x14]
008048b0  0a 10 a0 e1                                      mov r1, sl
008048b4  0c 20 4b e2                                      sub r2, fp, #0xc
008048b8  07 00 a0 e1                                      mov r0, r7
008048bc  0a 3e ec eb                                      bl #0x3140ec
008048c0  05 10 a0 e1                                      mov r1, r5
008048c4  07 20 a0 e1                                      mov r2, r7
008048c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
008048cc  13 fc ff eb                                      bl #0x803920
008048d0  07 00 a0 e1                                      mov r0, r7
008048d4  5e 4e ec eb                                      bl #0x318254
008048d8  60 34 9d e5                                      ldr r3, [sp, #0x460]
008048dc  00 00 53 e3                                      cmp r3, #0
008048e0  6b 00 00 da                                      ble #0x804a94
008048e4  00 74 9f e5                                      ldr r7, [pc, #0x400]
008048e8  07 10 94 e7                                      ldr r1, [r4, r7]
008048ec  04 c0 91 e5                                      ldr ip, [r1, #4]
008048f0  00 00 5c e3                                      cmp ip, #0
008048f4  01 c0 a0 01                                      moveq ip, r1
008048f8  11 00 00 0a                                      beq #0x804944
008048fc  44 29 9d e5                                      ldr r2, [sp, #0x944]
00804900  01 00 00 ea                                      b #0x80490c
00804904  0c 10 a0 e1                                      mov r1, ip
00804908  03 c0 a0 e1                                      mov ip, r3
0080490c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00804910  02 00 53 e1                                      cmp r3, r2
00804914  0c 30 9c 35                                      ldrlo r3, [ip, #0xc]
00804918  08 30 9c 25                                      ldrhs r3, [ip, #8]
0080491c  01 c0 a0 31                                      movlo ip, r1
00804920  00 00 53 e3                                      cmp r3, #0
00804924  f6 ff ff 1a                                      bne #0x804904
00804928  07 30 94 e7                                      ldr r3, [r4, r7]
0080492c  03 00 5c e1                                      cmp ip, r3
00804930  03 00 00 0a                                      beq #0x804944
00804934  10 10 9c e5                                      ldr r1, [ip, #0x10]
00804938  0c 30 a0 e1                                      mov r3, ip
0080493c  02 00 51 e1                                      cmp r1, r2
00804940  23 00 00 9a                                      bls #0x8049d4
00804944  96 3e 8d e2                                      add r3, sp, #0x960
00804948  04 30 83 e2                                      add r3, r3, #4
0080494c  03 00 a0 e1                                      mov r0, r3
00804950  10 10 a0 e3                                      mov r1, #0x10
00804954  10 c0 8d e5                                      str ip, [sp, #0x10]
00804958  18 30 8d e5                                      str r3, [sp, #0x18]
0080495c  74 39 8d e5                                      str r3, [sp, #0x974]
00804960  78 39 8d e5                                      str r3, [sp, #0x978]
00804964  44 33 ec eb                                      bl #0x31167c
00804968  74 29 9d e5                                      ldr r2, [sp, #0x974]
0080496c  00 10 a0 e3                                      mov r1, #0
00804970  99 3e 8d e2                                      add r3, sp, #0x990
00804974  00 10 c2 e5                                      strb r1, [r2]
00804978  44 29 9d e5                                      ldr r2, [sp, #0x944]
0080497c  08 30 83 e2                                      add r3, r3, #8
00804980  18 10 9d e5                                      ldr r1, [sp, #0x18]
00804984  50 20 23 e5                                      str r2, [r3, #-0x50]!
00804988  04 20 83 e2                                      add r2, r3, #4
0080498c  02 00 a0 e1                                      mov r0, r2
00804990  1c 20 8d e5                                      str r2, [sp, #0x1c]
00804994  0c 30 8d e5                                      str r3, [sp, #0xc]
00804998  de 9b ec eb                                      bl #0x32b918
0080499c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
008049a0  78 00 8d e2                                      add r0, sp, #0x78
008049a4  07 10 94 e7                                      ldr r1, [r4, r7]
008049a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008049ac  68 20 8d e2                                      add r2, sp, #0x68
008049b0  0c 00 40 e2                                      sub r0, r0, #0xc
008049b4  68 c0 8d e5                                      str ip, [sp, #0x68]
008049b8  87 e1 ed eb                                      bl #0x37cfdc
008049bc  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
008049c0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
008049c4  22 4e ec eb                                      bl #0x318254
008049c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
008049cc  20 4e ec eb                                      bl #0x318254
008049d0  07 30 a0 e1                                      mov r3, r7
008049d4  0a 00 a0 e1                                      mov r0, sl
008049d8  0c 30 8d e5                                      str r3, [sp, #0xc]
008049dc  1c 25 ec eb                                      bl #0x30de54
008049e0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008049e4  28 70 8d e2                                      add r7, sp, #0x28
008049e8  00 20 8a e0                                      add r2, sl, r0
008049ec  0a 10 a0 e1                                      mov r1, sl
008049f0  14 00 83 e2                                      add r0, r3, #0x14
008049f4  04 70 47 e2                                      sub r7, r7, #4
008049f8  f8 2f ec eb                                      bl #0x3109e0
008049fc  07 00 a0 e1                                      mov r0, r7
00804a00  44 a9 9d e5                                      ldr sl, [sp, #0x944]
00804a04  5e de ff eb                                      bl #0x7fc384
00804a08  07 e0 a0 e1                                      mov lr, r7
00804a0c  04 c0 49 e2                                      sub ip, sb, #4
00804a10  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00804a14  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00804a18  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00804a1c  44 79 9d e5                                      ldr r7, [sp, #0x944]
00804a20  34 a0 8d e5                                      str sl, [sp, #0x34]
00804a24  0c 30 83 e3                                      orr r3, r3, #0xc
00804a28  3c 30 8d e5                                      str r3, [sp, #0x3c]
00804a2c  60 34 9d e5                                      ldr r3, [sp, #0x460]
00804a30  38 70 8d e5                                      str r7, [sp, #0x38]
00804a34  08 a0 4b e2                                      sub sl, fp, #8
00804a38  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00804a3c  07 00 8c e8                                      stm ip, {r0, r1, r2}
00804a40  14 10 9d e5                                      ldr r1, [sp, #0x14]
00804a44  0a 00 a0 e1                                      mov r0, sl
00804a48  0c 30 8d e5                                      str r3, [sp, #0xc]
00804a4c  c3 f6 ff eb                                      bl #0x802560
00804a50  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00804a54  07 20 a0 e1                                      mov r2, r7
00804a58  05 00 a0 e1                                      mov r0, r5
00804a5c  03 10 a0 e1                                      mov r1, r3
00804a60  0a 30 a0 e1                                      mov r3, sl
00804a64  77 fa ff eb                                      bl #0x803448
00804a68  40 00 8b e2                                      add r0, fp, #0x40
00804a6c  68 50 00 eb                                      bl #0x818c14
00804a70  1c 00 8b e2                                      add r0, fp, #0x1c
00804a74  f6 4d ec eb                                      bl #0x318254
00804a78  70 32 9f e5                                      ldr r3, [pc, #0x270]
00804a7c  02 15 a0 e3                                      mov r1, #0x800000
00804a80  00 20 a0 e3                                      mov r2, #0
00804a84  03 00 94 e7                                      ldr r0, [r4, r3]
00804a88  0e 10 81 e2                                      add r1, r1, #0xe
00804a8c  02 30 a0 e1                                      mov r3, r2
00804a90  db e5 ff eb                                      bl #0x7fe204
00804a94  01 14 a0 e3                                      mov r1, #0x1000000
00804a98  01 10 81 e2                                      add r1, r1, #1
00804a9c  06 00 94 e7                                      ldr r0, [r4, r6]
00804aa0  52 e6 ff eb                                      bl #0x7fe3f0
00804aa4  40 00 89 e2                                      add r0, sb, #0x40
00804aa8  59 50 00 eb                                      bl #0x818c14
00804aac  1c 00 89 e2                                      add r0, sb, #0x1c
00804ab0  e7 4d ec eb                                      bl #0x318254
00804ab4  01 fe ff ea                                      b #0x8042c0
00804ab8  01 60 a0 e1                                      mov r6, r1
00804abc  78 20 9d e5                                      ldr r2, [sp, #0x78]
00804ac0  ae fe ff ea                                      b #0x804580
00804ac4  10 30 93 e5                                      ldr r3, [r3, #0x10]
00804ac8  0a 00 53 e1                                      cmp r3, sl
00804acc  50 00 00 0a                                      beq #0x804c14
00804ad0  10 30 96 e5                                      ldr r3, [r6, #0x10]
00804ad4  02 00 53 e1                                      cmp r3, r2
00804ad8  54 00 00 8a                                      bhi #0x804c30
00804adc  74 60 8d 25                                      strhs r6, [sp, #0x74]
00804ae0  e7 fe ff 2a                                      bhs #0x804684
00804ae4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00804ae8  00 00 53 e3                                      cmp r3, #0
00804aec  60 00 00 0a                                      beq #0x804c74
00804af0  03 10 a0 e1                                      mov r1, r3
00804af4  00 00 00 ea                                      b #0x804afc
00804af8  0e 10 a0 e1                                      mov r1, lr
00804afc  08 e0 91 e5                                      ldr lr, [r1, #8]
00804b00  00 00 5e e3                                      cmp lr, #0
00804b04  fb ff ff 1a                                      bne #0x804af8
00804b08  00 00 94 e7                                      ldr r0, [r4, r0]
00804b0c  00 00 51 e1                                      cmp r1, r0
00804b10  69 00 00 0a                                      beq #0x804cbc
00804b14  10 00 91 e5                                      ldr r0, [r1, #0x10]
00804b18  02 00 50 e1                                      cmp r0, r2
00804b1c  4c 00 00 9a                                      bls #0x804c54
00804b20  00 00 53 e3                                      cmp r3, #0
00804b24  68 20 8d 02                                      addeq r2, sp, #0x68
00804b28  0c 10 a0 01                                      moveq r1, ip
00804b2c  3d ff ff 1a                                      bne #0x804828
00804b30  08 20 42 e2                                      sub r2, r2, #8
00804b34  04 00 47 e2                                      sub r0, r7, #4
00804b38  00 c0 8d e5                                      str ip, [sp]
00804b3c  b9 f6 ff eb                                      bl #0x802628
00804b40  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804b44  ce fe ff ea                                      b #0x804684
00804b48  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00804b4c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00804b50  02 00 53 e1                                      cmp r3, r2
00804b54  13 00 00 2a                                      bhs #0x804ba8
00804b58  68 20 8d e2                                      add r2, sp, #0x68
00804b5c  08 20 42 e2                                      sub r2, r2, #8
00804b60  0a 30 a0 e1                                      mov r3, sl
00804b64  04 00 47 e2                                      sub r0, r7, #4
00804b68  00 60 8d e5                                      str r6, [sp]
00804b6c  ad f6 ff eb                                      bl #0x802628
00804b70  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804b74  c2 fe ff ea                                      b #0x804684
00804b78  04 c0 96 e5                                      ldr ip, [r6, #4]
00804b7c  08 30 9c e5                                      ldr r3, [ip, #8]
00804b80  03 00 56 e1                                      cmp r6, r3
00804b84  01 00 00 0a                                      beq #0x804b90
00804b88  95 fe ff ea                                      b #0x8045e4
00804b8c  03 c0 a0 e1                                      mov ip, r3
00804b90  04 30 9c e5                                      ldr r3, [ip, #4]
00804b94  08 10 93 e5                                      ldr r1, [r3, #8]
00804b98  0c 00 51 e1                                      cmp r1, ip
00804b9c  fa ff ff 0a                                      beq #0x804b8c
00804ba0  03 c0 a0 e1                                      mov ip, r3
00804ba4  8e fe ff ea                                      b #0x8045e4
00804ba8  68 10 8d e2                                      add r1, sp, #0x68
00804bac  08 10 41 e2                                      sub r1, r1, #8
00804bb0  48 00 8d e2                                      add r0, sp, #0x48
00804bb4  e9 f6 ff eb                                      bl #0x802760
00804bb8  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00804bbc  74 c0 8d e5                                      str ip, [sp, #0x74]
00804bc0  af fe ff ea                                      b #0x804684
00804bc4  0c 10 a0 e1                                      mov r1, ip
00804bc8  68 20 8d e2                                      add r2, sp, #0x68
00804bcc  d7 ff ff ea                                      b #0x804b30
00804bd0  04 30 96 e5                                      ldr r3, [r6, #4]
00804bd4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00804bd8  01 00 56 e1                                      cmp r6, r1
00804bdc  06 10 a0 11                                      movne r1, r6
00804be0  01 00 00 0a                                      beq #0x804bec
00804be4  06 00 00 ea                                      b #0x804c04
00804be8  0c 30 a0 e1                                      mov r3, ip
00804bec  04 c0 93 e5                                      ldr ip, [r3, #4]
00804bf0  0c 10 9c e5                                      ldr r1, [ip, #0xc]
00804bf4  03 00 51 e1                                      cmp r1, r3
00804bf8  fa ff ff 0a                                      beq #0x804be8
00804bfc  03 10 a0 e1                                      mov r1, r3
00804c00  0c 30 a0 e1                                      mov r3, ip
00804c04  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00804c08  0c 00 53 e1                                      cmp r3, ip
00804c0c  03 10 a0 11                                      movne r1, r3
00804c10  85 fe ff ea                                      b #0x80462c
00804c14  68 10 8d e2                                      add r1, sp, #0x68
00804c18  08 10 41 e2                                      sub r1, r1, #8
00804c1c  58 00 8d e2                                      add r0, sp, #0x58
00804c20  ce f6 ff eb                                      bl #0x802760
00804c24  58 c0 9d e5                                      ldr ip, [sp, #0x58]
00804c28  74 c0 8d e5                                      str ip, [sp, #0x74]
00804c2c  94 fe ff ea                                      b #0x804684
00804c30  68 20 8d e2                                      add r2, sp, #0x68
00804c34  06 10 a0 e1                                      mov r1, r6
00804c38  08 20 42 e2                                      sub r2, r2, #8
00804c3c  04 00 47 e2                                      sub r0, r7, #4
00804c40  06 30 a0 e1                                      mov r3, r6
00804c44  00 a0 8d e5                                      str sl, [sp]
00804c48  76 f6 ff eb                                      bl #0x802628
00804c4c  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804c50  8b fe ff ea                                      b #0x804684
00804c54  58 00 8d e2                                      add r0, sp, #0x58
00804c58  68 10 8d e2                                      add r1, sp, #0x68
00804c5c  08 00 40 e2                                      sub r0, r0, #8
00804c60  08 10 41 e2                                      sub r1, r1, #8
00804c64  bd f6 ff eb                                      bl #0x802760
00804c68  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00804c6c  74 c0 8d e5                                      str ip, [sp, #0x74]
00804c70  83 fe ff ea                                      b #0x804684
00804c74  04 e0 96 e5                                      ldr lr, [r6, #4]
00804c78  0c 10 9e e5                                      ldr r1, [lr, #0xc]
00804c7c  06 00 51 e1                                      cmp r1, r6
00804c80  06 10 a0 11                                      movne r1, r6
00804c84  01 00 00 0a                                      beq #0x804c90
00804c88  06 00 00 ea                                      b #0x804ca8
00804c8c  06 e0 a0 e1                                      mov lr, r6
00804c90  04 60 9e e5                                      ldr r6, [lr, #4]
00804c94  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00804c98  0e 00 51 e1                                      cmp r1, lr
00804c9c  fa ff ff 0a                                      beq #0x804c8c
00804ca0  0e 10 a0 e1                                      mov r1, lr
00804ca4  06 e0 a0 e1                                      mov lr, r6
00804ca8  0c 60 91 e5                                      ldr r6, [r1, #0xc]
00804cac  06 00 5e e1                                      cmp lr, r6
00804cb0  0e 10 a0 11                                      movne r1, lr
00804cb4  93 ff ff ea                                      b #0x804b08
00804cb8  94 25 ec eb                                      bl #0x30e310
00804cbc  68 20 8d e2                                      add r2, sp, #0x68
00804cc0  0c 10 a0 e1                                      mov r1, ip
00804cc4  08 20 42 e2                                      sub r2, r2, #8
00804cc8  04 00 47 e2                                      sub r0, r7, #4
00804ccc  00 30 a0 e3                                      mov r3, #0
00804cd0  00 c0 8d e5                                      str ip, [sp]
00804cd4  53 f6 ff eb                                      bl #0x802628
00804cd8  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00804cdc  68 fe ff ea                                      b #0x804684
; mapping-symbol data/literal pool
00804ce0  4c 08 19 00 ac 40 00 00 f8 39 00 00 8c 2b 00 00  .byte 0x4c, 0x08, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0x39, 0x00, 0x00, 0x8c, 0x2b, 0x00, 0x00
00804cf0  3c 34 00 00 fc 30 00 00                          .byte 0x3c, 0x34, 0x00, 0x00, 0xfc, 0x30, 0x00, 0x00

; FUNCTION 0x00804cf8, declared_size=2412, range_size=2412, mode=arm
; class-group: CMatchingBluetooth
; alias: _ZN18CMatchingBluetooth6UpdateEv
; demangled: CMatchingBluetooth::Update()
; decoder-mode: arm
00804cf8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00804cfc  30 59 9f e5                                      ldr r5, [pc, #0x930]
00804d00  30 99 9f e5                                      ldr sb, [pc, #0x930]
00804d04  25 dd 4d e2                                      sub sp, sp, #0x940
00804d08  05 50 8f e0                                      add r5, pc, r5
00804d0c  09 30 95 e7                                      ldr r3, [r5, sb]
00804d10  04 d0 4d e2                                      sub sp, sp, #4
00804d14  00 40 a0 e1                                      mov r4, r0
00804d18  00 30 93 e5                                      ldr r3, [r3]
00804d1c  3c 39 8d e5                                      str r3, [sp, #0x93c]
00804d20  f5 f2 ff eb                                      bl #0x8018fc
00804d24  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
00804d28  00 00 53 e3                                      cmp r3, #0
00804d2c  00 00 e0 03                                      mvneq r0, #0
00804d30  69 00 00 0a                                      beq #0x804edc
00804d34  84 6b 0a e3                                      movw r6, #0xab84
00804d38  06 30 d4 e7                                      ldrb r3, [r4, r6]
00804d3c  00 00 53 e3                                      cmp r3, #0
00804d40  6d 00 00 1a                                      bne #0x804efc
00804d44  f0 18 9f e5                                      ldr r1, [pc, #0x8f0]
00804d48  0c 10 8d e5                                      str r1, [sp, #0xc]
00804d4c  38 66 03 e3                                      movw r6, #0x3638
00804d50  06 30 94 e7                                      ldr r3, [r4, r6]
00804d54  00 00 53 e3                                      cmp r3, #0
00804d58  09 00 00 ba                                      blt #0x804d84
00804d5c  3c 76 03 e3                                      movw r7, #0x363c
00804d60  07 20 94 e7                                      ldr r2, [r4, r7]
00804d64  02 00 53 e1                                      cmp r3, r2
00804d68  1a 01 00 0a                                      beq #0x8051d8
00804d6c  00 00 53 e3                                      cmp r3, #0
00804d70  03 00 00 da                                      ble #0x804d84
00804d74  b0 2b 04 e3                                      movw r2, #0x4bb0
00804d78  02 20 94 e7                                      ldr r2, [r4, r2]
00804d7c  02 00 53 e1                                      cmp r3, r2
00804d80  6e 01 00 0a                                      beq #0x805340
00804d84  fa db ff eb                                      bl #0x7fbd74
00804d88  06 16 a0 e3                                      mov r1, #0x600000
00804d8c  08 00 80 e2                                      add r0, r0, #8
00804d90  01 10 81 e2                                      add r1, r1, #1
00804d94  00 20 a0 e3                                      mov r2, #0
00804d98  96 e5 ff eb                                      bl #0x7fe3f8
00804d9c  00 00 50 e3                                      cmp r0, #0
00804da0  80 00 00 1a                                      bne #0x804fa8
00804da4  94 38 9f e5                                      ldr r3, [pc, #0x894]
00804da8  01 15 a0 e3                                      mov r1, #0x400000
00804dac  0e 10 81 e2                                      add r1, r1, #0xe
00804db0  03 60 95 e7                                      ldr r6, [r5, r3]
00804db4  00 20 a0 e3                                      mov r2, #0
00804db8  06 00 a0 e1                                      mov r0, r6
00804dbc  8d e5 ff eb                                      bl #0x7fe3f8
00804dc0  00 00 50 e3                                      cmp r0, #0
00804dc4  63 00 00 1a                                      bne #0x804f58
00804dc8  00 30 94 e5                                      ldr r3, [r4]
00804dcc  04 00 a0 e1                                      mov r0, r4
00804dd0  0f e0 a0 e1                                      mov lr, pc
00804dd4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00804dd8  00 00 50 e3                                      cmp r0, #0
00804ddc  2b 00 00 0a                                      beq #0x804e90
00804de0  38 36 03 e3                                      movw r3, #0x3638
00804de4  03 30 94 e7                                      ldr r3, [r4, r3]
00804de8  00 00 53 e3                                      cmp r3, #0
00804dec  03 00 00 ba                                      blt #0x804e00
00804df0  3c 26 03 e3                                      movw r2, #0x363c
00804df4  02 20 94 e7                                      ldr r2, [r4, r2]
00804df8  02 00 53 e1                                      cmp r3, r2
00804dfc  23 00 00 0a                                      beq #0x804e90
00804e00  4b 6c 84 e2                                      add r6, r4, #0x4b00
00804e04  e0 60 86 e2                                      add r6, r6, #0xe0
00804e08  00 70 a0 e3                                      mov r7, #0
00804e0c  66 8f a0 e3                                      mov r8, #0x198
00804e10  38 a6 03 e3                                      movw sl, #0x3638
00804e14  50 31 96 e5                                      ldr r3, [r6, #0x150]
00804e18  00 00 53 e3                                      cmp r3, #0
00804e1c  17 00 00 da                                      ble #0x804e80
00804e20  98 07 0b e0                                      mul fp, r8, r7
00804e24  00 30 96 e5                                      ldr r3, [r6]
00804e28  4b 0c 8b e2                                      add r0, fp, #0x4b00
00804e2c  e0 00 80 e2                                      add r0, r0, #0xe0
00804e30  00 00 84 e0                                      add r0, r4, r0
00804e34  0f e0 a0 e1                                      mov lr, pc
00804e38  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00804e3c  00 00 50 e3                                      cmp r0, #0
00804e40  0e 00 00 0a                                      beq #0x804e80
00804e44  50 21 96 e5                                      ldr r2, [r6, #0x150]
00804e48  0a 30 94 e7                                      ldr r3, [r4, sl]
00804e4c  03 00 52 e1                                      cmp r2, r3
00804e50  0a 00 00 0a                                      beq #0x804e80
00804e54  c6 db ff eb                                      bl #0x7fbd74
00804e58  50 11 96 e5                                      ldr r1, [r6, #0x150]
00804e5c  24 de ff eb                                      bl #0x7fc6f4
00804e60  00 00 50 e3                                      cmp r0, #0
00804e64  05 00 00 1a                                      bne #0x804e80
00804e68  c1 db ff eb                                      bl #0x7fbd74
00804e6c  4d 2c 8b e2                                      add r2, fp, #0x4d00
00804e70  58 20 82 e2                                      add r2, r2, #0x58
00804e74  02 20 84 e0                                      add r2, r4, r2
00804e78  50 11 96 e5                                      ldr r1, [r6, #0x150]
00804e7c  ab de ff eb                                      bl #0x7fc930
00804e80  01 70 87 e2                                      add r7, r7, #1
00804e84  20 00 57 e3                                      cmp r7, #0x20
00804e88  66 6f 86 e2                                      add r6, r6, #0x198
00804e8c  e0 ff ff 1a                                      bne #0x804e14
00804e90  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00804e94  02 15 a0 e3                                      mov r1, #0x800000
00804e98  0a 10 81 e2                                      add r1, r1, #0xa
00804e9c  0b 00 95 e7                                      ldr r0, [r5, fp]
00804ea0  01 20 a0 e3                                      mov r2, #1
00804ea4  53 e5 ff eb                                      bl #0x7fe3f8
00804ea8  00 00 50 e3                                      cmp r0, #0
00804eac  07 00 00 0a                                      beq #0x804ed0
00804eb0  38 36 03 e3                                      movw r3, #0x3638
00804eb4  03 30 94 e7                                      ldr r3, [r4, r3]
00804eb8  00 00 53 e3                                      cmp r3, #0
00804ebc  03 00 00 ba                                      blt #0x804ed0
00804ec0  3c 26 03 e3                                      movw r2, #0x363c
00804ec4  02 20 94 e7                                      ldr r2, [r4, r2]
00804ec8  02 00 53 e1                                      cmp r3, r2
00804ecc  13 00 00 0a                                      beq #0x804f20
00804ed0  04 00 a0 e1                                      mov r0, r4
00804ed4  d6 fc ff eb                                      bl #0x804234
00804ed8  00 00 a0 e3                                      mov r0, #0
00804edc  09 30 95 e7                                      ldr r3, [r5, sb]
00804ee0  3c 29 9d e5                                      ldr r2, [sp, #0x93c]
00804ee4  00 30 93 e5                                      ldr r3, [r3]
00804ee8  03 00 52 e1                                      cmp r2, r3
00804eec  cf 01 00 1a                                      bne #0x805630
00804ef0  51 df 8d e2                                      add sp, sp, #0x144
00804ef4  02 db 8d e2                                      add sp, sp, #0x800
00804ef8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00804efc  00 30 94 e5                                      ldr r3, [r4]
00804f00  04 00 a0 e1                                      mov r0, r4
00804f04  0f e0 a0 e1                                      mov lr, pc
00804f08  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00804f0c  01 00 50 e3                                      cmp r0, #1
00804f10  f3 00 00 0a                                      beq #0x8052e4
00804f14  20 27 9f e5                                      ldr r2, [pc, #0x720]
00804f18  0c 20 8d e5                                      str r2, [sp, #0xc]
00804f1c  8a ff ff ea                                      b #0x804d4c
00804f20  00 30 94 e5                                      ldr r3, [r4]
00804f24  04 00 a0 e1                                      mov r0, r4
00804f28  0f e0 a0 e1                                      mov lr, pc
00804f2c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00804f30  00 00 50 e3                                      cmp r0, #0
00804f34  f7 00 00 1a                                      bne #0x805318
00804f38  00 30 94 e5                                      ldr r3, [r4]
00804f3c  04 00 a0 e1                                      mov r0, r4
00804f40  0f e0 a0 e1                                      mov lr, pc
00804f44  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00804f48  00 10 a0 e1                                      mov r1, r0
00804f4c  04 00 a0 e1                                      mov r0, r4
00804f50  a2 03 00 eb                                      bl #0x805de0
00804f54  dd ff ff ea                                      b #0x804ed0
00804f58  01 15 a0 e3                                      mov r1, #0x400000
00804f5c  0e 10 81 e2                                      add r1, r1, #0xe
00804f60  12 2e 8d e2                                      add r2, sp, #0x120
00804f64  08 30 a0 e3                                      mov r3, #8
00804f68  06 00 a0 e1                                      mov r0, r6
00804f6c  fc e3 ff eb                                      bl #0x7fdf64
00804f70  00 30 94 e5                                      ldr r3, [r4]
00804f74  04 00 a0 e1                                      mov r0, r4
00804f78  20 71 9d e5                                      ldr r7, [sp, #0x120]
00804f7c  0f e0 a0 e1                                      mov lr, pc
00804f80  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00804f84  00 00 57 e1                                      cmp r7, r0
00804f88  8e ff ff 1a                                      bne #0x804dc8
00804f8c  00 20 a0 e3                                      mov r2, #0
00804f90  01 15 a0 e3                                      mov r1, #0x400000
00804f94  06 00 a0 e1                                      mov r0, r6
00804f98  0a 10 81 e2                                      add r1, r1, #0xa
00804f9c  02 30 a0 e1                                      mov r3, r2
00804fa0  97 e4 ff eb                                      bl #0x7fe204
00804fa4  87 ff ff ea                                      b #0x804dc8
00804fa8  00 30 a0 e3                                      mov r3, #0
00804fac  2c 31 8d e5                                      str r3, [sp, #0x12c]
00804fb0  6f db ff eb                                      bl #0x7fbd74
00804fb4  06 16 a0 e3                                      mov r1, #0x600000
00804fb8  13 2e 8d e2                                      add r2, sp, #0x130
00804fbc  01 10 81 e2                                      add r1, r1, #1
00804fc0  04 30 a0 e3                                      mov r3, #4
00804fc4  08 00 80 e2                                      add r0, r0, #8
00804fc8  04 20 42 e2                                      sub r2, r2, #4
00804fcc  e4 e3 ff eb                                      bl #0x7fdf64
00804fd0  38 36 03 e3                                      movw r3, #0x3638
00804fd4  03 10 94 e7                                      ldr r1, [r4, r3]
00804fd8  00 00 51 e3                                      cmp r1, #0
00804fdc  d4 00 00 ba                                      blt #0x805334
00804fe0  3c 36 03 e3                                      movw r3, #0x363c
00804fe4  03 30 94 e7                                      ldr r3, [r4, r3]
00804fe8  03 00 51 e1                                      cmp r1, r3
00804fec  80 01 00 0a                                      beq #0x8055f4
00804ff0  04 00 a0 e1                                      mov r0, r4
00804ff4  68 e5 ff eb                                      bl #0x7fe59c
00804ff8  44 16 9f e5                                      ldr r1, [pc, #0x644]
00804ffc  38 36 03 e3                                      movw r3, #0x3638
00805000  03 30 94 e7                                      ldr r3, [r4, r3]
00805004  00 70 a0 e1                                      mov r7, r0
00805008  01 10 95 e7                                      ldr r1, [r5, r1]
0080500c  78 00 9d e5                                      ldr r0, [sp, #0x78]
00805010  b9 24 a0 e3                                      mov r2, #0xb9000000
00805014  c2 29 a0 e1                                      asr r2, r2, #0x13
00805018  00 a0 a0 e3                                      mov sl, #0
0080501c  00 b0 a0 e3                                      mov fp, #0
00805020  25 ed 8d e2                                      add lr, sp, #0x940
00805024  00 00 53 e1                                      cmp r3, r0
00805028  00 c0 e0 e3                                      mvn ip, #0
0080502c  00 00 a0 e3                                      mov r0, #0
00805030  08 10 81 e2                                      add r1, r1, #8
00805034  f2 a0 8e e1                                      strd sl, fp, [lr, r2]
00805038  20 20 a0 e3                                      mov r2, #0x20
0080503c  5c 20 8d e5                                      str r2, [sp, #0x5c]
00805040  6c c0 8d e5                                      str ip, [sp, #0x6c]
00805044  74 00 cd e5                                      strb r0, [sp, #0x74]
00805048  58 10 8d e5                                      str r1, [sp, #0x58]
0080504c  68 c0 8d e5                                      str ip, [sp, #0x68]
00805050  70 00 8d e5                                      str r0, [sp, #0x70]
00805054  60 60 8d 02                                      addeq r6, sp, #0x60
00805058  03 00 00 0a                                      beq #0x80506c
0080505c  60 60 8d e2                                      add r6, sp, #0x60
00805060  08 00 46 e2                                      sub r0, r6, #8
00805064  78 30 8d e5                                      str r3, [sp, #0x78]
00805068  c5 3f 00 eb                                      bl #0x814f84
0080506c  d4 35 9f e5                                      ldr r3, [pc, #0x5d4]
00805070  66 2f a0 e3                                      mov r2, #0x198
00805074  92 07 07 e0                                      mul r7, r2, r7
00805078  03 30 95 e7                                      ldr r3, [r5, r3]
0080507c  4d 1c 87 e2                                      add r1, r7, #0x4d00
00805080  07 70 84 e0                                      add r7, r4, r7
00805084  08 30 83 e2                                      add r3, r3, #8
00805088  04 10 8d e5                                      str r1, [sp, #4]
0080508c  10 70 8d e5                                      str r7, [sp, #0x10]
00805090  58 30 8d e5                                      str r3, [sp, #0x58]
00805094  10 00 81 e2                                      add r0, r1, #0x10
00805098  10 3d 04 e3                                      movw r3, #0x4d10
0080509c  18 10 86 e2                                      add r1, r6, #0x18
008050a0  03 30 97 e7                                      ldr r3, [r7, r3]
008050a4  00 00 84 e0                                      add r0, r4, r0
008050a8  0f e0 a0 e1                                      mov lr, pc
008050ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008050b0  94 35 9f e5                                      ldr r3, [pc, #0x594]
008050b4  11 7e 8d e2                                      add r7, sp, #0x110
008050b8  00 60 a0 e3                                      mov r6, #0
008050bc  03 30 95 e7                                      ldr r3, [r5, r3]
008050c0  0c 70 47 e2                                      sub r7, r7, #0xc
008050c4  f0 80 8d e2                                      add r8, sp, #0xf0
008050c8  08 30 83 e2                                      add r3, r3, #8
008050cc  14 30 8d e5                                      str r3, [sp, #0x14]
008050d0  58 30 8d e5                                      str r3, [sp, #0x58]
008050d4  49 56 00 eb                                      bl #0x81aa00
008050d8  06 20 a0 e1                                      mov r2, r6
008050dc  00 10 a0 e1                                      mov r1, r0
008050e0  07 00 a0 e1                                      mov r0, r7
008050e4  11 57 00 eb                                      bl #0x81ad30
008050e8  0f 00 b7 e8                                      ldm r7!, {r0, r1, r2, r3}
008050ec  08 c0 48 e2                                      sub ip, r8, #8
008050f0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008050f4  07 00 97 e8                                      ldm r7, {r0, r1, r2}
008050f8  50 e5 9f e5                                      ldr lr, [pc, #0x550]
008050fc  20 70 8d e2                                      add r7, sp, #0x20
00805100  18 30 87 e2                                      add r3, r7, #0x18
00805104  00 30 8d e5                                      str r3, [sp]
00805108  07 00 8c e8                                      stm ip, {r0, r1, r2}
0080510c  0e e0 95 e7                                      ldr lr, [r5, lr]
00805110  b7 34 a0 e3                                      mov r3, #0xb7000000
00805114  25 cd 8d e2                                      add ip, sp, #0x940
00805118  c3 39 a0 e1                                      asr r3, r3, #0x13
0080511c  00 a0 a0 e3                                      mov sl, #0
00805120  00 b0 a0 e3                                      mov fp, #0
00805124  00 20 e0 e3                                      mvn r2, #0
00805128  08 e0 8e e2                                      add lr, lr, #8
0080512c  00 00 9d e5                                      ldr r0, [sp]
00805130  08 80 48 e2                                      sub r8, r8, #8
00805134  f3 a0 8c e1                                      strd sl, fp, [ip, r3]
00805138  08 70 47 e2                                      sub r7, r7, #8
0080513c  03 30 a0 e3                                      mov r3, #3
00805140  1c 30 8d e5                                      str r3, [sp, #0x1c]
00805144  2c 20 8d e5                                      str r2, [sp, #0x2c]
00805148  18 e0 8d e5                                      str lr, [sp, #0x18]
0080514c  28 20 8d e5                                      str r2, [sp, #0x28]
00805150  30 60 8d e5                                      str r6, [sp, #0x30]
00805154  34 60 cd e5                                      strb r6, [sp, #0x34]
00805158  89 dc ff eb                                      bl #0x7fc384
0080515c  07 00 a0 e1                                      mov r0, r7
00805160  08 10 a0 e1                                      mov r1, r8
00805164  d3 f3 ff eb                                      bl #0x8020b8
00805168  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
0080516c  04 e0 9d e5                                      ldr lr, [sp, #4]
00805170  10 20 9d e5                                      ldr r2, [sp, #0x10]
00805174  03 30 95 e7                                      ldr r3, [r5, r3]
00805178  38 00 8e e2                                      add r0, lr, #0x38
0080517c  00 00 84 e0                                      add r0, r4, r0
00805180  08 30 83 e2                                      add r3, r3, #8
00805184  18 30 8d e5                                      str r3, [sp, #0x18]
00805188  38 3d 04 e3                                      movw r3, #0x4d38
0080518c  03 30 92 e7                                      ldr r3, [r2, r3]
00805190  00 10 9d e5                                      ldr r1, [sp]
00805194  0f e0 a0 e1                                      mov lr, pc
00805198  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080519c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008051a0  14 a0 9d e5                                      ldr sl, [sp, #0x14]
008051a4  02 15 a0 e3                                      mov r1, #0x800000
008051a8  03 00 95 e7                                      ldr r0, [r5, r3]
008051ac  06 20 a0 e1                                      mov r2, r6
008051b0  03 10 81 e2                                      add r1, r1, #3
008051b4  06 30 a0 e1                                      mov r3, r6
008051b8  18 a0 8d e5                                      str sl, [sp, #0x18]
008051bc  10 e4 ff eb                                      bl #0x7fe204
008051c0  eb da ff eb                                      bl #0x7fbd74
008051c4  06 16 a0 e3                                      mov r1, #0x600000
008051c8  08 00 80 e2                                      add r0, r0, #8
008051cc  01 10 81 e2                                      add r1, r1, #1
008051d0  86 e4 ff eb                                      bl #0x7fe3f0
008051d4  f2 fe ff ea                                      b #0x804da4
008051d8  e5 da ff eb                                      bl #0x7fbd74
008051dc  00 10 a0 e3                                      mov r1, #0
008051e0  2b db ff eb                                      bl #0x7fbe94
008051e4  00 00 50 e3                                      cmp r0, #0
008051e8  e5 fe ff da                                      ble #0x804d84
008051ec  e0 da ff eb                                      bl #0x7fbd74
008051f0  01 20 a0 e3                                      mov r2, #1
008051f4  00 10 a0 e1                                      mov r1, r0
008051f8  12 0e 8d e2                                      add r0, sp, #0x120
008051fc  20 e0 ff eb                                      bl #0x7fd284
00805200  20 01 9d e5                                      ldr r0, [sp, #0x120]
00805204  b0 3b 04 e3                                      movw r3, #0x4bb0
00805208  03 20 94 e7                                      ldr r2, [r4, r3]
0080520c  00 30 90 e5                                      ldr r3, [r0]
00805210  02 00 53 e1                                      cmp r3, r2
00805214  29 00 00 0a                                      beq #0x8052c0
00805218  24 14 9f e5                                      ldr r1, [pc, #0x424]
0080521c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00805220  8b 2e e0 e3                                      mvn r2, #0x8b0
00805224  01 10 95 e7                                      ldr r1, [r5, r1]
00805228  07 20 42 e2                                      sub r2, r2, #7
0080522c  00 60 a0 e3                                      mov r6, #0
00805230  00 70 a0 e3                                      mov r7, #0
00805234  25 ad 8d e2                                      add sl, sp, #0x940
00805238  00 00 53 e1                                      cmp r3, r0
0080523c  00 c0 e0 e3                                      mvn ip, #0
00805240  00 00 a0 e3                                      mov r0, #0
00805244  f2 60 8a e1                                      strd r6, r7, [sl, r2]
00805248  08 10 81 e2                                      add r1, r1, #8
0080524c  20 20 a0 e3                                      mov r2, #0x20
00805250  84 20 8d e5                                      str r2, [sp, #0x84]
00805254  94 c0 8d e5                                      str ip, [sp, #0x94]
00805258  9c 00 cd e5                                      strb r0, [sp, #0x9c]
0080525c  80 10 8d e5                                      str r1, [sp, #0x80]
00805260  90 c0 8d e5                                      str ip, [sp, #0x90]
00805264  98 00 8d e5                                      str r0, [sp, #0x98]
00805268  80 60 8d 02                                      addeq r6, sp, #0x80
0080526c  03 00 00 0a                                      beq #0x805280
00805270  80 60 8d e2                                      add r6, sp, #0x80
00805274  06 00 a0 e1                                      mov r0, r6
00805278  a0 30 8d e5                                      str r3, [sp, #0xa0]
0080527c  40 3f 00 eb                                      bl #0x814f84
00805280  c0 23 9f e5                                      ldr r2, [pc, #0x3c0]
00805284  4b 0c 84 e2                                      add r0, r4, #0x4b00
00805288  90 3b 04 e3                                      movw r3, #0x4b90
0080528c  02 20 95 e7                                      ldr r2, [r5, r2]
00805290  03 30 94 e7                                      ldr r3, [r4, r3]
00805294  90 00 80 e2                                      add r0, r0, #0x90
00805298  08 20 82 e2                                      add r2, r2, #8
0080529c  80 20 8d e5                                      str r2, [sp, #0x80]
008052a0  20 10 86 e2                                      add r1, r6, #0x20
008052a4  0f e0 a0 e1                                      mov lr, pc
008052a8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008052ac  98 33 9f e5                                      ldr r3, [pc, #0x398]
008052b0  20 01 9d e5                                      ldr r0, [sp, #0x120]
008052b4  03 30 95 e7                                      ldr r3, [r5, r3]
008052b8  08 30 83 e2                                      add r3, r3, #8
008052bc  80 30 8d e5                                      str r3, [sp, #0x80]
008052c0  00 00 50 e3                                      cmp r0, #0
008052c4  ae fe ff 0a                                      beq #0x804d84
008052c8  28 11 9d e5                                      ldr r1, [sp, #0x128]
008052cc  01 10 60 e0                                      rsb r1, r0, r1
008052d0  03 10 c1 e3                                      bic r1, r1, #3
008052d4  80 00 51 e3                                      cmp r1, #0x80
008052d8  0c 00 00 8a                                      bhi #0x805310
008052dc  15 e4 02 eb                                      bl #0x8be338
008052e0  a7 fe ff ea                                      b #0x804d84
008052e4  50 33 9f e5                                      ldr r3, [pc, #0x350]
008052e8  00 20 a0 e3                                      mov r2, #0
008052ec  02 15 a0 e3                                      mov r1, #0x800000
008052f0  0c 30 8d e5                                      str r3, [sp, #0xc]
008052f4  03 00 95 e7                                      ldr r0, [r5, r3]
008052f8  04 10 81 e2                                      add r1, r1, #4
008052fc  02 30 a0 e1                                      mov r3, r2
00805300  bf e3 ff eb                                      bl #0x7fe204
00805304  00 30 a0 e3                                      mov r3, #0
00805308  06 30 c4 e7                                      strb r3, [r4, r6]
0080530c  8e fe ff ea                                      b #0x804d4c
00805310  4a 2c ec eb                                      bl #0x310440
00805314  9a fe ff ea                                      b #0x804d84
00805318  00 30 94 e5                                      ldr r3, [r4]
0080531c  04 00 a0 e1                                      mov r0, r4
00805320  0f e0 a0 e1                                      mov lr, pc
00805324  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00805328  00 00 50 e3                                      cmp r0, #0
0080532c  e7 fe ff 0a                                      beq #0x804ed0
00805330  00 ff ff ea                                      b #0x804f38
00805334  01 00 71 e3                                      cmn r1, #1
00805338  a0 ff ff 0a                                      beq #0x8051c0
0080533c  2b ff ff ea                                      b #0x804ff0
00805340  8b da ff eb                                      bl #0x7fbd74
00805344  07 10 94 e7                                      ldr r1, [r4, r7]
00805348  e9 dc ff eb                                      bl #0x7fc6f4
0080534c  00 80 50 e2                                      subs r8, r0, #0
00805350  8b fe ff 1a                                      bne #0x804d84
00805354  54 a6 04 e3                                      movw sl, #0x4654
00805358  0a 20 94 e7                                      ldr r2, [r4, sl]
0080535c  06 30 94 e7                                      ldr r3, [r4, r6]
00805360  00 00 52 e3                                      cmp r2, #0
00805364  07 30 84 e7                                      str r3, [r4, r7]
00805368  46 bc 84 02                                      addeq fp, r4, #0x4600
0080536c  30 36 03 e3                                      movw r3, #0x3630
00805370  03 80 c4 e7                                      strb r8, [r4, r3]
00805374  10 b0 8d 05                                      streq fp, [sp, #0x10]
00805378  0c 00 00 0a                                      beq #0x8053b0
0080537c  46 cc 84 e2                                      add ip, r4, #0x4600
00805380  44 60 8c e2                                      add r6, ip, #0x44
00805384  10 c0 8d e5                                      str ip, [sp, #0x10]
00805388  48 76 04 e3                                      movw r7, #0x4648
0080538c  06 00 a0 e1                                      mov r0, r6
00805390  07 10 94 e7                                      ldr r1, [r4, r7]
00805394  60 f4 ff eb                                      bl #0x80251c
00805398  50 36 04 e3                                      movw r3, #0x4650
0080539c  03 60 84 e7                                      str r6, [r4, r3]
008053a0  4c 36 04 e3                                      movw r3, #0x464c
008053a4  0a 80 84 e7                                      str r8, [r4, sl]
008053a8  03 60 84 e7                                      str r6, [r4, r3]
008053ac  07 80 84 e7                                      str r8, [r4, r7]
008053b0  a0 a2 9f e5                                      ldr sl, [pc, #0x2a0]
008053b4  e5 30 dd e5                                      ldrb r3, [sp, #0xe5]
008053b8  00 20 a0 e3                                      mov r2, #0
008053bc  0a 00 95 e7                                      ldr r0, [r5, sl]
008053c0  02 00 53 e1                                      cmp r3, r2
008053c4  00 60 a0 e3                                      mov r6, #0
008053c8  87 2e 42 e2                                      sub r2, r2, #0x870
008053cc  00 70 a0 e3                                      mov r7, #0
008053d0  25 ed 8d e2                                      add lr, sp, #0x940
008053d4  00 30 a0 e3                                      mov r3, #0
008053d8  00 10 e0 e3                                      mvn r1, #0
008053dc  08 00 80 e2                                      add r0, r0, #8
008053e0  f2 60 8e e1                                      strd r6, r7, [lr, r2]
008053e4  01 20 a0 e3                                      mov r2, #1
008053e8  cc 20 8d e5                                      str r2, [sp, #0xcc]
008053ec  dc 10 8d e5                                      str r1, [sp, #0xdc]
008053f0  c8 00 8d e5                                      str r0, [sp, #0xc8]
008053f4  d8 10 8d e5                                      str r1, [sp, #0xd8]
008053f8  e0 30 8d e5                                      str r3, [sp, #0xe0]
008053fc  e4 30 cd e5                                      strb r3, [sp, #0xe4]
00805400  d0 b0 8d 02                                      addeq fp, sp, #0xd0
00805404  03 00 00 0a                                      beq #0x805418
00805408  d0 b0 8d e2                                      add fp, sp, #0xd0
0080540c  08 00 4b e2                                      sub r0, fp, #8
00805410  e5 30 cd e5                                      strb r3, [sp, #0xe5]
00805414  da 3e 00 eb                                      bl #0x814f84
00805418  3c 82 9f e5                                      ldr r8, [pc, #0x23c]
0080541c  28 62 9f e5                                      ldr r6, [pc, #0x228]
00805420  4b 7c 84 e2                                      add r7, r4, #0x4b00
00805424  08 20 95 e7                                      ldr r2, [r5, r8]
00805428  50 3b 04 e3                                      movw r3, #0x4b50
0080542c  03 30 94 e7                                      ldr r3, [r4, r3]
00805430  08 20 82 e2                                      add r2, r2, #8
00805434  15 10 8b e2                                      add r1, fp, #0x15
00805438  c8 20 8d e5                                      str r2, [sp, #0xc8]
0080543c  50 00 87 e2                                      add r0, r7, #0x50
00805440  0f e0 a0 e1                                      mov lr, pc
00805444  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00805448  c5 30 dd e5                                      ldrb r3, [sp, #0xc5]
0080544c  0a 00 95 e7                                      ldr r0, [r5, sl]
00805450  06 c0 95 e7                                      ldr ip, [r5, r6]
00805454  00 20 a0 e3                                      mov r2, #0
00805458  02 00 53 e1                                      cmp r3, r2
0080545c  00 a0 a0 e3                                      mov sl, #0
00805460  89 2e 42 e2                                      sub r2, r2, #0x890
00805464  00 b0 a0 e3                                      mov fp, #0
00805468  25 ed 8d e2                                      add lr, sp, #0x940
0080546c  00 30 a0 e3                                      mov r3, #0
00805470  00 10 e0 e3                                      mvn r1, #0
00805474  f2 a0 8e e1                                      strd sl, fp, [lr, r2]
00805478  08 c0 8c e2                                      add ip, ip, #8
0080547c  08 00 80 e2                                      add r0, r0, #8
00805480  01 20 a0 e3                                      mov r2, #1
00805484  c8 c0 8d e5                                      str ip, [sp, #0xc8]
00805488  ac 20 8d e5                                      str r2, [sp, #0xac]
0080548c  bc 10 8d e5                                      str r1, [sp, #0xbc]
00805490  a8 00 8d e5                                      str r0, [sp, #0xa8]
00805494  b8 10 8d e5                                      str r1, [sp, #0xb8]
00805498  c0 30 8d e5                                      str r3, [sp, #0xc0]
0080549c  c4 30 cd e5                                      strb r3, [sp, #0xc4]
008054a0  b0 a0 8d 02                                      addeq sl, sp, #0xb0
008054a4  03 00 00 0a                                      beq #0x8054b8
008054a8  b0 a0 8d e2                                      add sl, sp, #0xb0
008054ac  08 00 4a e2                                      sub r0, sl, #8
008054b0  c5 30 cd e5                                      strb r3, [sp, #0xc5]
008054b4  b2 3e 00 eb                                      bl #0x814f84
008054b8  08 30 95 e7                                      ldr r3, [r5, r8]
008054bc  15 10 8a e2                                      add r1, sl, #0x15
008054c0  70 00 87 e2                                      add r0, r7, #0x70
008054c4  08 30 83 e2                                      add r3, r3, #8
008054c8  a8 30 8d e5                                      str r3, [sp, #0xa8]
008054cc  70 3b 04 e3                                      movw r3, #0x4b70
008054d0  03 30 94 e7                                      ldr r3, [r4, r3]
008054d4  0f e0 a0 e1                                      mov lr, pc
008054d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008054dc  06 30 95 e7                                      ldr r3, [r5, r6]
008054e0  51 6e 8d e2                                      add r6, sp, #0x510
008054e4  06 00 a0 e1                                      mov r0, r6
008054e8  08 30 83 e2                                      add r3, r3, #8
008054ec  a8 30 8d e5                                      str r3, [sp, #0xa8]
008054f0  33 f4 ff eb                                      bl #0x8025c4
008054f4  38 36 03 e3                                      movw r3, #0x3638
008054f8  03 30 94 e7                                      ldr r3, [r4, r3]
008054fc  92 7e 8d e2                                      add r7, sp, #0x920
00805500  04 70 87 e2                                      add r7, r7, #4
00805504  ab 1c 84 e2                                      add r1, r4, #0xab00
00805508  38 10 81 e2                                      add r1, r1, #0x38
0080550c  07 00 a0 e1                                      mov r0, r7
00805510  10 35 8d e5                                      str r3, [sp, #0x510]
00805514  ff 98 ec eb                                      bl #0x32b918
00805518  34 29 9d e5                                      ldr r2, [sp, #0x934]
0080551c  38 19 9d e5                                      ldr r1, [sp, #0x938]
00805520  24 00 86 e2                                      add r0, r6, #0x24
00805524  2d 2d ec eb                                      bl #0x3109e0
00805528  07 00 a0 e1                                      mov r0, r7
0080552c  48 4b ec eb                                      bl #0x318254
00805530  10 20 9d e5                                      ldr r2, [sp, #0x10]
00805534  13 7e 8d e2                                      add r7, sp, #0x130
00805538  48 00 86 e2                                      add r0, r6, #0x48
0080553c  60 10 82 e2                                      add r1, r2, #0x60
00805540  09 8c 8d e2                                      add r8, sp, #0x900
00805544  f8 4c 00 eb                                      bl #0x81892c
00805548  0c 80 88 e2                                      add r8, r8, #0xc
0080554c  06 10 a0 e1                                      mov r1, r6
00805550  07 00 a0 e1                                      mov r0, r7
00805554  01 f4 ff eb                                      bl #0x802560
00805558  07 20 a0 e1                                      mov r2, r7
0080555c  04 10 a0 e1                                      mov r1, r4
00805560  08 00 a0 e1                                      mov r0, r8
00805564  d4 f9 ff eb                                      bl #0x803cbc
00805568  48 00 87 e2                                      add r0, r7, #0x48
0080556c  a8 4d 00 eb                                      bl #0x818c14
00805570  24 00 87 e2                                      add r0, r7, #0x24
00805574  8f 7e 8d e2                                      add r7, sp, #0x8f0
00805578  04 70 87 e2                                      add r7, r7, #4
0080557c  34 4b ec eb                                      bl #0x318254
00805580  07 00 a0 e1                                      mov r0, r7
00805584  08 10 a0 e1                                      mov r1, r8
00805588  e2 98 ec eb                                      bl #0x32b918
0080558c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00805590  03 00 95 e7                                      ldr r0, [r5, r3]
00805594  00 00 57 e1                                      cmp r7, r0
00805598  02 00 00 0a                                      beq #0x8055a8
0080559c  08 19 9d e5                                      ldr r1, [sp, #0x908]
008055a0  04 29 9d e5                                      ldr r2, [sp, #0x904]
008055a4  0d 2d ec eb                                      bl #0x3109e0
008055a8  07 00 a0 e1                                      mov r0, r7
008055ac  28 4b ec eb                                      bl #0x318254
008055b0  04 00 a0 e1                                      mov r0, r4
008055b4  a7 f1 ff eb                                      bl #0x801c58
008055b8  0c a0 9d e5                                      ldr sl, [sp, #0xc]
008055bc  36 2c 84 e2                                      add r2, r4, #0x3600
008055c0  02 15 a0 e3                                      mov r1, #0x800000
008055c4  0b 10 81 e2                                      add r1, r1, #0xb
008055c8  3c 20 82 e2                                      add r2, r2, #0x3c
008055cc  04 30 a0 e3                                      mov r3, #4
008055d0  0a 00 95 e7                                      ldr r0, [r5, sl]
008055d4  0a e3 ff eb                                      bl #0x7fe204
008055d8  08 00 a0 e1                                      mov r0, r8
008055dc  1c 4b ec eb                                      bl #0x318254
008055e0  48 00 86 e2                                      add r0, r6, #0x48
008055e4  8a 4d 00 eb                                      bl #0x818c14
008055e8  24 00 86 e2                                      add r0, r6, #0x24
008055ec  18 4b ec eb                                      bl #0x318254
008055f0  e3 fd ff ea                                      b #0x804d84
008055f4  00 30 94 e5                                      ldr r3, [r4]
008055f8  04 00 a0 e1                                      mov r0, r4
008055fc  0f e0 a0 e1                                      mov lr, pc
00805600  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00805604  00 00 50 e3                                      cmp r0, #0
00805608  ec fe ff 1a                                      bne #0x8051c0
0080560c  00 30 94 e5                                      ldr r3, [r4]
00805610  04 00 a0 e1                                      mov r0, r4
00805614  0f e0 a0 e1                                      mov lr, pc
00805618  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0080561c  00 10 50 e2                                      subs r1, r0, #0
00805620  e6 fe ff 1a                                      bne #0x8051c0
00805624  04 00 a0 e1                                      mov r0, r4
00805628  ec 01 00 eb                                      bl #0x805de0
0080562c  e3 fe ff ea                                      b #0x8051c0
00805630  36 23 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00805634  88 fd 18 00 ac 40 00 00 3c 34 00 00 88 15 00 00  .byte 0x88, 0xfd, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00
00805644  84 29 00 00 c8 10 00 00 a8 10 00 00 58 2c 00 00  .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x58, 0x2c, 0x00, 0x00
00805654  f0 28 00 00 18 30 00 00 c8 0a 00 00 38 31 00 00  .byte 0xf0, 0x28, 0x00, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0x38, 0x31, 0x00, 0x00
