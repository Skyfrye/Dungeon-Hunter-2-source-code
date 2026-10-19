; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00817e20, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE13GetBufferSizeEv
; demangled: NetStructByteArray<256u>::GetBufferSize()
; decoder-mode: arm
00817e20  24 00 90 e5                                      ldr r0, [r0, #0x24]
00817e24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817e3c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE12GetBufferPtrEv
; demangled: NetStructByteArray<256u>::GetBufferPtr()
; decoder-mode: arm
00817e3c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00817e40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817e44, declared_size=8, range_size=8, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE16GetMaxBufferSizeEv
; demangled: NetStructByteArray<256u>::GetMaxBufferSize()
; decoder-mode: arm
00817e44  01 0c a0 e3                                      mov r0, #0x100
00817e48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817f80, declared_size=60, range_size=60, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE9GetBufferEPvi
; demangled: NetStructByteArray<256u>::GetBuffer(void*, int)
; decoder-mode: arm
00817f80  10 40 2d e9                                      push {r4, lr}
00817f84  20 30 90 e5                                      ldr r3, [r0, #0x20]
00817f88  00 40 a0 e1                                      mov r4, r0
00817f8c  00 00 53 e3                                      cmp r3, #0
00817f90  07 00 00 0a                                      beq #0x817fb4
00817f94  24 20 90 e5                                      ldr r2, [r0, #0x24]
00817f98  00 00 52 e3                                      cmp r2, #0
00817f9c  04 00 00 da                                      ble #0x817fb4
00817fa0  01 00 a0 e1                                      mov r0, r1
00817fa4  03 10 a0 e1                                      mov r1, r3
00817fa8  2e da eb eb                                      bl #0x30e868
00817fac  24 00 94 e5                                      ldr r0, [r4, #0x24]
00817fb0  10 80 bd e8                                      pop {r4, pc}
00817fb4  00 00 a0 e3                                      mov r0, #0
00817fb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00817fbc, declared_size=48, range_size=48, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE5WriteER12NetBitStream
; demangled: NetStructByteArray<256u>::Write(NetBitStream&)
; decoder-mode: arm
00817fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00817fc0  01 50 a0 e1                                      mov r5, r1
00817fc4  00 40 a0 e1                                      mov r4, r0
00817fc8  24 10 90 e5                                      ldr r1, [r0, #0x24]
00817fcc  10 20 a0 e3                                      mov r2, #0x10
00817fd0  05 00 a0 e1                                      mov r0, r5
00817fd4  80 d9 ff eb                                      bl #0x80e5dc
00817fd8  24 20 94 e5                                      ldr r2, [r4, #0x24]
00817fdc  20 10 94 e5                                      ldr r1, [r4, #0x20]
00817fe0  05 00 a0 e1                                      mov r0, r5
00817fe4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00817fe8  6e db ff ea                                      b #0x80eda8

; FUNCTION 0x00818090, declared_size=100, range_size=100, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EED0Ev
; demangled: NetStructByteArray<256u>::~NetStructByteArray()
; decoder-mode: arm
00818090  70 40 2d e9                                      push {r4, r5, r6, lr}
00818094  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00818098  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0081809c  00 40 a0 e1                                      mov r4, r0
008180a0  05 50 8f e0                                      add r5, pc, r5
008180a4  20 00 90 e5                                      ldr r0, [r0, #0x20]
008180a8  03 30 95 e7                                      ldr r3, [r5, r3]
008180ac  00 00 50 e3                                      cmp r0, #0
008180b0  08 30 83 e2                                      add r3, r3, #8
008180b4  00 30 84 e5                                      str r3, [r4]
008180b8  02 00 00 0a                                      beq #0x8180c8
008180bc  df e0 eb eb                                      bl #0x310440
008180c0  00 30 a0 e3                                      mov r3, #0
008180c4  20 30 84 e5                                      str r3, [r4, #0x20]
008180c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
008180cc  04 00 a0 e1                                      mov r0, r4
008180d0  03 30 95 e7                                      ldr r3, [r5, r3]
008180d4  08 30 83 e2                                      add r3, r3, #8
008180d8  00 30 84 e5                                      str r3, [r4]
008180dc  d7 e0 eb eb                                      bl #0x310440
008180e0  04 00 a0 e1                                      mov r0, r4
008180e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008180e8  f0 c9 17 00 ec 2a 00 00 a8 10 00 00              .byte 0xf0, 0xc9, 0x17, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x008181d8, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EEC1E9ByteArray
; demangled: NetStructByteArray<256u>::NetStructByteArray(ByteArray)
; decoder-mode: arm
008181d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008181dc  0c d0 4d e2                                      sub sp, sp, #0xc
008181e0  00 40 a0 e1                                      mov r4, r0
008181e4  00 50 a0 e3                                      mov r5, #0
008181e8  04 20 91 e5                                      ldr r2, [r1, #4]
008181ec  0d 00 a0 e1                                      mov r0, sp
008181f0  00 10 91 e5                                      ldr r1, [r1]
008181f4  88 60 9f e5                                      ldr r6, [pc, #0x88]
008181f8  00 50 8d e5                                      str r5, [sp]
008181fc  04 50 8d e5                                      str r5, [sp, #4]
00818200  e9 56 ed eb                                      bl #0x36ddac
00818204  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00818208  06 60 8f e0                                      add r6, pc, r6
0081820c  02 1b a0 e3                                      mov r1, #0x800
00818210  03 30 96 e7                                      ldr r3, [r6, r3]
00818214  00 20 e0 e3                                      mvn r2, #0
00818218  04 10 84 e5                                      str r1, [r4, #4]
0081821c  08 30 83 e2                                      add r3, r3, #8
00818220  00 00 a0 e3                                      mov r0, #0
00818224  00 10 a0 e3                                      mov r1, #0
00818228  f8 00 c4 e1                                      strd r0, r1, [r4, #8]
0081822c  04 00 a0 e1                                      mov r0, r4
00818230  14 20 84 e5                                      str r2, [r4, #0x14]
00818234  00 30 84 e5                                      str r3, [r4]
00818238  24 50 84 e5                                      str r5, [r4, #0x24]
0081823c  10 20 84 e5                                      str r2, [r4, #0x10]
00818240  18 50 84 e5                                      str r5, [r4, #0x18]
00818244  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
00818248  20 50 84 e5                                      str r5, [r4, #0x20]
0081824c  0d 10 a0 e1                                      mov r1, sp
00818250  03 5c ed eb                                      bl #0x36f264
00818254  00 00 9d e5                                      ldr r0, [sp]
00818258  0d 70 a0 e1                                      mov r7, sp
0081825c  05 00 50 e1                                      cmp r0, r5
00818260  00 00 00 0a                                      beq #0x818268
00818264  75 e0 eb eb                                      bl #0x310440
00818268  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0081826c  04 00 a0 e1                                      mov r0, r4
00818270  03 30 96 e7                                      ldr r3, [r6, r3]
00818274  08 30 83 e2                                      add r3, r3, #8
00818278  00 30 84 e5                                      str r3, [r4]
0081827c  0c d0 8d e2                                      add sp, sp, #0xc
00818280  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00818284  88 c8 17 00 ec 2a 00 00 f4 2b 00 00              .byte 0x88, 0xc8, 0x17, 0x00, 0xec, 0x2a, 0x00, 0x00, 0xf4, 0x2b, 0x00, 0x00

; FUNCTION 0x00818290, declared_size=80, range_size=80, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE9SetBufferEPKvi
; demangled: NetStructByteArray<256u>::SetBuffer(void const*, int)
; decoder-mode: arm
00818290  70 40 2d e9                                      push {r4, r5, r6, lr}
00818294  00 c0 90 e5                                      ldr ip, [r0]
00818298  08 d0 4d e2                                      sub sp, sp, #8
0081829c  00 30 a0 e3                                      mov r3, #0
008182a0  00 50 a0 e1                                      mov r5, r0
008182a4  0d 00 a0 e1                                      mov r0, sp
008182a8  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
008182ac  04 30 8d e5                                      str r3, [sp, #4]
008182b0  00 30 8d e5                                      str r3, [sp]
008182b4  bc 56 ed eb                                      bl #0x36ddac
008182b8  05 00 a0 e1                                      mov r0, r5
008182bc  0d 10 a0 e1                                      mov r1, sp
008182c0  36 ff 2f e1                                      blx r6
008182c4  00 00 9d e5                                      ldr r0, [sp]
008182c8  0d 40 a0 e1                                      mov r4, sp
008182cc  00 00 50 e3                                      cmp r0, #0
008182d0  00 00 00 0a                                      beq #0x8182d8
008182d4  59 e0 eb eb                                      bl #0x310440
008182d8  08 d0 8d e2                                      add sp, sp, #8
008182dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008182e0, declared_size=184, range_size=184, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EE4ReadER12NetBitStream
; demangled: NetStructByteArray<256u>::Read(NetBitStream&)
; decoder-mode: arm
008182e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008182e4  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
008182e8  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
008182ec  01 60 a0 e1                                      mov r6, r1
008182f0  04 40 8f e0                                      add r4, pc, r4
008182f4  05 30 94 e7                                      ldr r3, [r4, r5]
008182f8  45 df 4d e2                                      sub sp, sp, #0x114
008182fc  00 70 a0 e1                                      mov r7, r0
00818300  00 30 93 e5                                      ldr r3, [r3]
00818304  10 10 a0 e3                                      mov r1, #0x10
00818308  06 00 a0 e1                                      mov r0, r6
0081830c  0c 31 8d e5                                      str r3, [sp, #0x10c]
00818310  c6 d8 ff eb                                      bl #0x80e630
00818314  0c 80 8d e2                                      add r8, sp, #0xc
00818318  00 a0 a0 e1                                      mov sl, r0
0081831c  08 10 a0 e1                                      mov r1, r8
00818320  06 00 a0 e1                                      mov r0, r6
00818324  0a 20 a0 e1                                      mov r2, sl
00818328  3e da ff eb                                      bl #0x80ec28
0081832c  00 c0 97 e5                                      ldr ip, [r7]
00818330  04 60 8d e2                                      add r6, sp, #4
00818334  00 30 a0 e3                                      mov r3, #0
00818338  08 10 a0 e1                                      mov r1, r8
0081833c  0a 20 a0 e1                                      mov r2, sl
00818340  06 00 a0 e1                                      mov r0, r6
00818344  1c 80 9c e5                                      ldr r8, [ip, #0x1c]
00818348  08 30 8d e5                                      str r3, [sp, #8]
0081834c  04 30 8d e5                                      str r3, [sp, #4]
00818350  95 56 ed eb                                      bl #0x36ddac
00818354  07 00 a0 e1                                      mov r0, r7
00818358  06 10 a0 e1                                      mov r1, r6
0081835c  38 ff 2f e1                                      blx r8
00818360  04 00 9d e5                                      ldr r0, [sp, #4]
00818364  00 00 50 e3                                      cmp r0, #0
00818368  00 00 00 0a                                      beq #0x818370
0081836c  33 e0 eb eb                                      bl #0x310440
00818370  05 30 94 e7                                      ldr r3, [r4, r5]
00818374  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
00818378  00 30 93 e5                                      ldr r3, [r3]
0081837c  03 00 52 e1                                      cmp r2, r3
00818380  01 00 00 1a                                      bne #0x81838c
00818384  45 df 8d e2                                      add sp, sp, #0x114
00818388  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081838c  df d7 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00818390  a0 c7 17 00 ac 40 00 00                          .byte 0xa0, 0xc7, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00818398, declared_size=72, range_size=72, mode=arm
; class-group: NetStructByteArray<256u>
; alias: _ZN18NetStructByteArrayILj256EED1Ev
; demangled: NetStructByteArray<256u>::~NetStructByteArray()
; decoder-mode: arm
00818398  10 40 2d e9                                      push {r4, lr}
0081839c  34 30 9f e5                                      ldr r3, [pc, #0x34]
008183a0  34 20 9f e5                                      ldr r2, [pc, #0x34]
008183a4  00 40 a0 e1                                      mov r4, r0
008183a8  03 30 8f e0                                      add r3, pc, r3
008183ac  20 00 90 e5                                      ldr r0, [r0, #0x20]
008183b0  02 20 93 e7                                      ldr r2, [r3, r2]
008183b4  00 00 50 e3                                      cmp r0, #0
008183b8  08 20 82 e2                                      add r2, r2, #8
008183bc  00 20 84 e5                                      str r2, [r4]
008183c0  02 00 00 0a                                      beq #0x8183d0
008183c4  1d e0 eb eb                                      bl #0x310440
008183c8  00 30 a0 e3                                      mov r3, #0
008183cc  20 30 84 e5                                      str r3, [r4, #0x20]
008183d0  04 00 a0 e1                                      mov r0, r4
008183d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008183d8  e8 c6 17 00 ec 2a 00 00                          .byte 0xe8, 0xc6, 0x17, 0x00, 0xec, 0x2a, 0x00, 0x00
