; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe874, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE12GetBufferPtrEv
; demangled: NetStructByteArray<64u>::GetBufferPtr()
; decoder-mode: arm
007fe874  20 00 90 e5                                      ldr r0, [r0, #0x20]
007fe878  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe87c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE13GetBufferSizeEv
; demangled: NetStructByteArray<64u>::GetBufferSize()
; decoder-mode: arm
007fe87c  24 00 90 e5                                      ldr r0, [r0, #0x24]
007fe880  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe884, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE16GetMaxBufferSizeEv
; demangled: NetStructByteArray<64u>::GetMaxBufferSize()
; decoder-mode: arm
007fe884  40 00 a0 e3                                      mov r0, #0x40
007fe888  1e ff 2f e1                                      bx lr

; FUNCTION 0x007feb04, declared_size=60, range_size=60, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE9GetBufferEPvi
; demangled: NetStructByteArray<64u>::GetBuffer(void*, int)
; decoder-mode: arm
007feb04  10 40 2d e9                                      push {r4, lr}
007feb08  20 30 90 e5                                      ldr r3, [r0, #0x20]
007feb0c  00 40 a0 e1                                      mov r4, r0
007feb10  00 00 53 e3                                      cmp r3, #0
007feb14  07 00 00 0a                                      beq #0x7feb38
007feb18  24 20 90 e5                                      ldr r2, [r0, #0x24]
007feb1c  00 00 52 e3                                      cmp r2, #0
007feb20  04 00 00 da                                      ble #0x7feb38
007feb24  01 00 a0 e1                                      mov r0, r1
007feb28  03 10 a0 e1                                      mov r1, r3
007feb2c  4d 3f ec eb                                      bl #0x30e868
007feb30  24 00 94 e5                                      ldr r0, [r4, #0x24]
007feb34  10 80 bd e8                                      pop {r4, pc}
007feb38  00 00 a0 e3                                      mov r0, #0
007feb3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007febfc, declared_size=48, range_size=48, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE5WriteER12NetBitStream
; demangled: NetStructByteArray<64u>::Write(NetBitStream&)
; decoder-mode: arm
007febfc  70 40 2d e9                                      push {r4, r5, r6, lr}
007fec00  01 50 a0 e1                                      mov r5, r1
007fec04  00 40 a0 e1                                      mov r4, r0
007fec08  24 10 90 e5                                      ldr r1, [r0, #0x24]
007fec0c  10 20 a0 e3                                      mov r2, #0x10
007fec10  05 00 a0 e1                                      mov r0, r5
007fec14  70 3e 00 eb                                      bl #0x80e5dc
007fec18  24 20 94 e5                                      ldr r2, [r4, #0x24]
007fec1c  20 10 94 e5                                      ldr r1, [r4, #0x20]
007fec20  05 00 a0 e1                                      mov r0, r5
007fec24  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fec28  5e 40 00 ea                                      b #0x80eda8

; FUNCTION 0x007fee00, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE4ReadER12NetBitStream
; demangled: NetStructByteArray<64u>::Read(NetBitStream&)
; decoder-mode: arm
007fee00  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007fee04  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
007fee08  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
007fee0c  01 60 a0 e1                                      mov r6, r1
007fee10  04 40 8f e0                                      add r4, pc, r4
007fee14  05 30 94 e7                                      ldr r3, [r4, r5]
007fee18  54 d0 4d e2                                      sub sp, sp, #0x54
007fee1c  00 70 a0 e1                                      mov r7, r0
007fee20  00 30 93 e5                                      ldr r3, [r3]
007fee24  10 10 a0 e3                                      mov r1, #0x10
007fee28  06 00 a0 e1                                      mov r0, r6
007fee2c  4c 30 8d e5                                      str r3, [sp, #0x4c]
007fee30  fe 3d 00 eb                                      bl #0x80e630
007fee34  0c 80 8d e2                                      add r8, sp, #0xc
007fee38  00 a0 a0 e1                                      mov sl, r0
007fee3c  08 10 a0 e1                                      mov r1, r8
007fee40  06 00 a0 e1                                      mov r0, r6
007fee44  0a 20 a0 e1                                      mov r2, sl
007fee48  76 3f 00 eb                                      bl #0x80ec28
007fee4c  00 c0 97 e5                                      ldr ip, [r7]
007fee50  04 60 8d e2                                      add r6, sp, #4
007fee54  00 30 a0 e3                                      mov r3, #0
007fee58  08 10 a0 e1                                      mov r1, r8
007fee5c  0a 20 a0 e1                                      mov r2, sl
007fee60  06 00 a0 e1                                      mov r0, r6
007fee64  1c 80 9c e5                                      ldr r8, [ip, #0x1c]
007fee68  08 30 8d e5                                      str r3, [sp, #8]
007fee6c  04 30 8d e5                                      str r3, [sp, #4]
007fee70  cd bb ed eb                                      bl #0x36ddac
007fee74  07 00 a0 e1                                      mov r0, r7
007fee78  06 10 a0 e1                                      mov r1, r6
007fee7c  38 ff 2f e1                                      blx r8
007fee80  04 00 9d e5                                      ldr r0, [sp, #4]
007fee84  00 00 50 e3                                      cmp r0, #0
007fee88  00 00 00 0a                                      beq #0x7fee90
007fee8c  6b 45 ec eb                                      bl #0x310440
007fee90  05 30 94 e7                                      ldr r3, [r4, r5]
007fee94  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007fee98  00 30 93 e5                                      ldr r3, [r3]
007fee9c  03 00 52 e1                                      cmp r2, r3
007feea0  01 00 00 1a                                      bne #0x7feeac
007feea4  54 d0 8d e2                                      add sp, sp, #0x54
007feea8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007feeac  17 3d ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007feeb0  80 5c 19 00 ac 40 00 00                          .byte 0x80, 0x5c, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007feeb8, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EEC1E9ByteArray
; demangled: NetStructByteArray<64u>::NetStructByteArray(ByteArray)
; decoder-mode: arm
007feeb8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007feebc  0c d0 4d e2                                      sub sp, sp, #0xc
007feec0  00 40 a0 e1                                      mov r4, r0
007feec4  00 50 a0 e3                                      mov r5, #0
007feec8  04 20 91 e5                                      ldr r2, [r1, #4]
007feecc  0d 00 a0 e1                                      mov r0, sp
007feed0  00 10 91 e5                                      ldr r1, [r1]
007feed4  88 60 9f e5                                      ldr r6, [pc, #0x88]
007feed8  00 50 8d e5                                      str r5, [sp]
007feedc  04 50 8d e5                                      str r5, [sp, #4]
007feee0  b1 bb ed eb                                      bl #0x36ddac
007feee4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
007feee8  06 60 8f e0                                      add r6, pc, r6
007feeec  02 1c a0 e3                                      mov r1, #0x200
007feef0  03 30 96 e7                                      ldr r3, [r6, r3]
007feef4  00 20 e0 e3                                      mvn r2, #0
007feef8  04 10 84 e5                                      str r1, [r4, #4]
007feefc  08 30 83 e2                                      add r3, r3, #8
007fef00  00 00 a0 e3                                      mov r0, #0
007fef04  00 10 a0 e3                                      mov r1, #0
007fef08  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
007fef0c  04 00 a0 e1                                      mov r0, r4
007fef10  14 20 84 e5                                      str r2, [r4, #0x14]
007fef14  00 30 84 e5                                      str r3, [r4]
007fef18  24 50 84 e5                                      str r5, [r4, #0x24]
007fef1c  10 20 84 e5                                      str r2, [r4, #0x10]
007fef20  18 50 84 e5                                      str r5, [r4, #0x18]
007fef24  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
007fef28  20 50 84 e5                                      str r5, [r4, #0x20]
007fef2c  0d 10 a0 e1                                      mov r1, sp
007fef30  cb c0 ed eb                                      bl #0x36f264
007fef34  00 00 9d e5                                      ldr r0, [sp]
007fef38  0d 70 a0 e1                                      mov r7, sp
007fef3c  05 00 50 e1                                      cmp r0, r5
007fef40  00 00 00 0a                                      beq #0x7fef48
007fef44  3d 45 ec eb                                      bl #0x310440
007fef48  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
007fef4c  04 00 a0 e1                                      mov r0, r4
007fef50  03 30 96 e7                                      ldr r3, [r6, r3]
007fef54  08 30 83 e2                                      add r3, r3, #8
007fef58  00 30 84 e5                                      str r3, [r4]
007fef5c  0c d0 8d e2                                      add sp, sp, #0xc
007fef60  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007fef64  a8 5b 19 00 ec 2a 00 00 3c 20 00 00              .byte 0xa8, 0x5b, 0x19, 0x00, 0xec, 0x2a, 0x00, 0x00, 0x3c, 0x20, 0x00, 0x00

; FUNCTION 0x007fef70, declared_size=72, range_size=72, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EED1Ev
; demangled: NetStructByteArray<64u>::~NetStructByteArray()
; decoder-mode: arm
007fef70  10 40 2d e9                                      push {r4, lr}
007fef74  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fef78  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fef7c  00 40 a0 e1                                      mov r4, r0
007fef80  03 30 8f e0                                      add r3, pc, r3
007fef84  20 00 90 e5                                      ldr r0, [r0, #0x20]
007fef88  02 20 93 e7                                      ldr r2, [r3, r2]
007fef8c  00 00 50 e3                                      cmp r0, #0
007fef90  08 20 82 e2                                      add r2, r2, #8
007fef94  00 20 84 e5                                      str r2, [r4]
007fef98  02 00 00 0a                                      beq #0x7fefa8
007fef9c  27 45 ec eb                                      bl #0x310440
007fefa0  00 30 a0 e3                                      mov r3, #0
007fefa4  20 30 84 e5                                      str r3, [r4, #0x20]
007fefa8  04 00 a0 e1                                      mov r0, r4
007fefac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fefb0  10 5b 19 00 ec 2a 00 00                          .byte 0x10, 0x5b, 0x19, 0x00, 0xec, 0x2a, 0x00, 0x00

; FUNCTION 0x007fefb8, declared_size=80, range_size=80, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EE9SetBufferEPKvi
; demangled: NetStructByteArray<64u>::SetBuffer(void const*, int)
; decoder-mode: arm
007fefb8  70 40 2d e9                                      push {r4, r5, r6, lr}
007fefbc  00 c0 90 e5                                      ldr ip, [r0]
007fefc0  08 d0 4d e2                                      sub sp, sp, #8
007fefc4  00 30 a0 e3                                      mov r3, #0
007fefc8  00 50 a0 e1                                      mov r5, r0
007fefcc  0d 00 a0 e1                                      mov r0, sp
007fefd0  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
007fefd4  04 30 8d e5                                      str r3, [sp, #4]
007fefd8  00 30 8d e5                                      str r3, [sp]
007fefdc  72 bb ed eb                                      bl #0x36ddac
007fefe0  05 00 a0 e1                                      mov r0, r5
007fefe4  0d 10 a0 e1                                      mov r1, sp
007fefe8  36 ff 2f e1                                      blx r6
007fefec  00 00 9d e5                                      ldr r0, [sp]
007feff0  0d 40 a0 e1                                      mov r4, sp
007feff4  00 00 50 e3                                      cmp r0, #0
007feff8  00 00 00 0a                                      beq #0x7ff000
007feffc  0f 45 ec eb                                      bl #0x310440
007ff000  08 d0 8d e2                                      add sp, sp, #8
007ff004  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ff0bc, declared_size=100, range_size=100, mode=arm
; class-group: NetStructByteArray<64u>
; alias: _ZN18NetStructByteArrayILj64EED0Ev
; demangled: NetStructByteArray<64u>::~NetStructByteArray()
; decoder-mode: arm
007ff0bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007ff0c0  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
007ff0c4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
007ff0c8  00 40 a0 e1                                      mov r4, r0
007ff0cc  05 50 8f e0                                      add r5, pc, r5
007ff0d0  20 00 90 e5                                      ldr r0, [r0, #0x20]
007ff0d4  03 30 95 e7                                      ldr r3, [r5, r3]
007ff0d8  00 00 50 e3                                      cmp r0, #0
007ff0dc  08 30 83 e2                                      add r3, r3, #8
007ff0e0  00 30 84 e5                                      str r3, [r4]
007ff0e4  02 00 00 0a                                      beq #0x7ff0f4
007ff0e8  d4 44 ec eb                                      bl #0x310440
007ff0ec  00 30 a0 e3                                      mov r3, #0
007ff0f0  20 30 84 e5                                      str r3, [r4, #0x20]
007ff0f4  20 30 9f e5                                      ldr r3, [pc, #0x20]
007ff0f8  04 00 a0 e1                                      mov r0, r4
007ff0fc  03 30 95 e7                                      ldr r3, [r5, r3]
007ff100  08 30 83 e2                                      add r3, r3, #8
007ff104  00 30 84 e5                                      str r3, [r4]
007ff108  cc 44 ec eb                                      bl #0x310440
007ff10c  04 00 a0 e1                                      mov r0, r4
007ff110  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ff114  c4 59 19 00 ec 2a 00 00 a8 10 00 00              .byte 0xc4, 0x59, 0x19, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
