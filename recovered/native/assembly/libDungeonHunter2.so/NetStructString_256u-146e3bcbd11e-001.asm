; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe858, declared_size=28, range_size=28, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EE9TestValueERKSs
; demangled: NetStructString<256u>::TestValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
007fe858  14 30 91 e5                                      ldr r3, [r1, #0x14]
007fe85c  10 00 91 e5                                      ldr r0, [r1, #0x10]
007fe860  00 00 63 e0                                      rsb r0, r3, r0
007fe864  ff 00 50 e3                                      cmp r0, #0xff
007fe868  00 00 a0 83                                      movhi r0, #0
007fe86c  01 00 a0 93                                      movls r0, #1
007fe870  1e ff 2f e1                                      bx lr

; FUNCTION 0x00800980, declared_size=128, range_size=128, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EED0Ev
; demangled: NetStructString<256u>::~NetStructString()
; decoder-mode: arm
00800980  70 40 2d e9                                      push {r4, r5, r6, lr}
00800984  68 40 9f e5                                      ldr r4, [pc, #0x68]
00800988  68 30 9f e5                                      ldr r3, [pc, #0x68]
0080098c  00 20 a0 e1                                      mov r2, r0
00800990  04 40 8f e0                                      add r4, pc, r4
00800994  03 30 94 e7                                      ldr r3, [r4, r3]
00800998  00 50 a0 e1                                      mov r5, r0
0080099c  08 30 83 e2                                      add r3, r3, #8
008009a0  20 30 82 e4                                      str r3, [r2], #0x20
008009a4  14 00 92 e5                                      ldr r0, [r2, #0x14]
008009a8  02 00 50 e1                                      cmp r0, r2
008009ac  06 00 00 0a                                      beq #0x8009cc
008009b0  00 00 50 e3                                      cmp r0, #0
008009b4  04 00 00 0a                                      beq #0x8009cc
008009b8  20 10 95 e5                                      ldr r1, [r5, #0x20]
008009bc  01 10 60 e0                                      rsb r1, r0, r1
008009c0  80 00 51 e3                                      cmp r1, #0x80
008009c4  08 00 00 8a                                      bhi #0x8009ec
008009c8  5a f6 02 eb                                      bl #0x8be338
008009cc  28 30 9f e5                                      ldr r3, [pc, #0x28]
008009d0  05 00 a0 e1                                      mov r0, r5
008009d4  03 30 94 e7                                      ldr r3, [r4, r3]
008009d8  08 30 83 e2                                      add r3, r3, #8
008009dc  00 30 85 e5                                      str r3, [r5]
008009e0  96 3e ec eb                                      bl #0x310440
008009e4  05 00 a0 e1                                      mov r0, r5
008009e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008009ec  93 3e ec eb                                      bl #0x310440
008009f0  f5 ff ff ea                                      b #0x8009cc
; mapping-symbol data/literal pool
008009f4  00 41 19 00 30 3e 00 00 a8 10 00 00              .byte 0x00, 0x41, 0x19, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00800a00, declared_size=104, range_size=104, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EED1Ev
; demangled: NetStructString<256u>::~NetStructString()
; decoder-mode: arm
00800a00  58 30 9f e5                                      ldr r3, [pc, #0x58]
00800a04  58 20 9f e5                                      ldr r2, [pc, #0x58]
00800a08  10 40 2d e9                                      push {r4, lr}
00800a0c  03 30 8f e0                                      add r3, pc, r3
00800a10  02 20 93 e7                                      ldr r2, [r3, r2]
00800a14  00 10 a0 e1                                      mov r1, r0
00800a18  00 40 a0 e1                                      mov r4, r0
00800a1c  08 20 82 e2                                      add r2, r2, #8
00800a20  20 20 81 e4                                      str r2, [r1], #0x20
00800a24  14 00 91 e5                                      ldr r0, [r1, #0x14]
00800a28  01 00 50 e1                                      cmp r0, r1
00800a2c  06 00 00 0a                                      beq #0x800a4c
00800a30  00 00 50 e3                                      cmp r0, #0
00800a34  04 00 00 0a                                      beq #0x800a4c
00800a38  20 10 94 e5                                      ldr r1, [r4, #0x20]
00800a3c  01 10 60 e0                                      rsb r1, r0, r1
00800a40  80 00 51 e3                                      cmp r1, #0x80
00800a44  02 00 00 8a                                      bhi #0x800a54
00800a48  3a f6 02 eb                                      bl #0x8be338
00800a4c  04 00 a0 e1                                      mov r0, r4
00800a50  10 80 bd e8                                      pop {r4, pc}
00800a54  79 3e ec eb                                      bl #0x310440
00800a58  04 00 a0 e1                                      mov r0, r4
00800a5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00800a60  84 40 19 00 30 3e 00 00                          .byte 0x84, 0x40, 0x19, 0x00, 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x00800bb4, declared_size=172, range_size=172, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EE5WriteER12NetBitStream
; demangled: NetStructString<256u>::Write(NetBitStream&)
; decoder-mode: arm
00800bb4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00800bb8  98 40 9f e5                                      ldr r4, [pc, #0x98]
00800bbc  98 60 9f e5                                      ldr r6, [pc, #0x98]
00800bc0  24 d0 4d e2                                      sub sp, sp, #0x24
00800bc4  04 40 8f e0                                      add r4, pc, r4
00800bc8  06 20 94 e7                                      ldr r2, [r4, r6]
00800bcc  04 50 8d e2                                      add r5, sp, #4
00800bd0  00 30 a0 e1                                      mov r3, r0
00800bd4  00 c0 92 e5                                      ldr ip, [r2]
00800bd8  01 70 a0 e1                                      mov r7, r1
00800bdc  30 20 90 e5                                      ldr r2, [r0, #0x30]
00800be0  34 10 93 e5                                      ldr r1, [r3, #0x34]
00800be4  05 00 a0 e1                                      mov r0, r5
00800be8  1c c0 8d e5                                      str ip, [sp, #0x1c]
00800bec  14 50 8d e5                                      str r5, [sp, #0x14]
00800bf0  18 50 8d e5                                      str r5, [sp, #0x18]
00800bf4  bb 42 ec eb                                      bl #0x3116e8
00800bf8  07 00 a0 e1                                      mov r0, r7
00800bfc  05 10 a0 e1                                      mov r1, r5
00800c00  01 2c a0 e3                                      mov r2, #0x100
00800c04  69 38 00 eb                                      bl #0x80edb0
00800c08  18 00 9d e5                                      ldr r0, [sp, #0x18]
00800c0c  05 00 50 e1                                      cmp r0, r5
00800c10  06 00 00 0a                                      beq #0x800c30
00800c14  00 00 50 e3                                      cmp r0, #0
00800c18  04 00 00 0a                                      beq #0x800c30
00800c1c  04 10 9d e5                                      ldr r1, [sp, #4]
00800c20  01 10 60 e0                                      rsb r1, r0, r1
00800c24  80 00 51 e3                                      cmp r1, #0x80
00800c28  07 00 00 8a                                      bhi #0x800c4c
00800c2c  c1 f5 02 eb                                      bl #0x8be338
00800c30  06 30 94 e7                                      ldr r3, [r4, r6]
00800c34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00800c38  00 30 93 e5                                      ldr r3, [r3]
00800c3c  03 00 52 e1                                      cmp r2, r3
00800c40  03 00 00 1a                                      bne #0x800c54
00800c44  24 d0 8d e2                                      add sp, sp, #0x24
00800c48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00800c4c  fb 3d ec eb                                      bl #0x310440
00800c50  f6 ff ff ea                                      b #0x800c30
00800c54  ad 35 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00800c58  cc 3e 19 00 ac 40 00 00                          .byte 0xcc, 0x3e, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00800c60, declared_size=284, range_size=284, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EEC1ESs
; demangled: NetStructString<256u>::NetStructString(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00800c60  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
00800c64  00 51 9f e5                                      ldr r5, [pc, #0x100]
00800c68  00 71 9f e5                                      ldr r7, [pc, #0x100]
00800c6c  20 d0 4d e2                                      sub sp, sp, #0x20
00800c70  05 50 8f e0                                      add r5, pc, r5
00800c74  07 30 95 e7                                      ldr r3, [r5, r7]
00800c78  04 60 8d e2                                      add r6, sp, #4
00800c7c  00 40 a0 e1                                      mov r4, r0
00800c80  00 30 93 e5                                      ldr r3, [r3]
00800c84  10 20 91 e5                                      ldr r2, [r1, #0x10]
00800c88  06 00 a0 e1                                      mov r0, r6
00800c8c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00800c90  1c 30 8d e5                                      str r3, [sp, #0x1c]
00800c94  14 60 8d e5                                      str r6, [sp, #0x14]
00800c98  18 60 8d e5                                      str r6, [sp, #0x18]
00800c9c  91 42 ec eb                                      bl #0x3116e8
00800ca0  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00800ca4  04 30 a0 e1                                      mov r3, r4
00800ca8  00 80 a0 e3                                      mov r8, #0
00800cac  02 20 95 e7                                      ldr r2, [r5, r2]
00800cb0  00 10 e0 e3                                      mvn r1, #0
00800cb4  02 0b a0 e3                                      mov r0, #0x800
00800cb8  08 20 82 e2                                      add r2, r2, #8
00800cbc  00 a0 a0 e3                                      mov sl, #0
00800cc0  00 b0 a0 e3                                      mov fp, #0
00800cc4  04 00 84 e5                                      str r0, [r4, #4]
00800cc8  14 10 84 e5                                      str r1, [r4, #0x14]
00800ccc  10 10 84 e5                                      str r1, [r4, #0x10]
00800cd0  f8 a0 c4 e1                                      strd sl, fp, [r4, #8]
00800cd4  18 80 84 e5                                      str r8, [r4, #0x18]
00800cd8  1c 80 c4 e5                                      strb r8, [r4, #0x1c]
00800cdc  20 20 83 e4                                      str r2, [r3], #0x20
00800ce0  03 00 a0 e1                                      mov r0, r3
00800ce4  30 30 84 e5                                      str r3, [r4, #0x30]
00800ce8  34 30 84 e5                                      str r3, [r4, #0x34]
00800cec  10 10 a0 e3                                      mov r1, #0x10
00800cf0  61 42 ec eb                                      bl #0x31167c
00800cf4  30 30 94 e5                                      ldr r3, [r4, #0x30]
00800cf8  04 00 a0 e1                                      mov r0, r4
00800cfc  06 10 a0 e1                                      mov r1, r6
00800d00  00 80 c3 e5                                      strb r8, [r3]
00800d04  d0 bb ed eb                                      bl #0x36fc4c
00800d08  18 00 9d e5                                      ldr r0, [sp, #0x18]
00800d0c  06 00 50 e1                                      cmp r0, r6
00800d10  06 00 00 0a                                      beq #0x800d30
00800d14  08 00 50 e1                                      cmp r0, r8
00800d18  04 00 00 0a                                      beq #0x800d30
00800d1c  04 10 9d e5                                      ldr r1, [sp, #4]
00800d20  01 10 60 e0                                      rsb r1, r0, r1
00800d24  80 00 51 e3                                      cmp r1, #0x80
00800d28  0c 00 00 8a                                      bhi #0x800d60
00800d2c  81 f5 02 eb                                      bl #0x8be338
00800d30  40 30 9f e5                                      ldr r3, [pc, #0x40]
00800d34  07 10 95 e7                                      ldr r1, [r5, r7]
00800d38  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00800d3c  03 30 95 e7                                      ldr r3, [r5, r3]
00800d40  04 00 a0 e1                                      mov r0, r4
00800d44  08 30 83 e2                                      add r3, r3, #8
00800d48  00 30 84 e5                                      str r3, [r4]
00800d4c  00 30 91 e5                                      ldr r3, [r1]
00800d50  03 00 52 e1                                      cmp r2, r3
00800d54  03 00 00 1a                                      bne #0x800d68
00800d58  20 d0 8d e2                                      add sp, sp, #0x20
00800d5c  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
00800d60  b6 3d ec eb                                      bl #0x310440
00800d64  f1 ff ff ea                                      b #0x800d30
00800d68  68 35 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00800d6c  20 3e 19 00 ac 40 00 00 30 3e 00 00 a8 3e 00 00  .byte 0x20, 0x3e, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x3e, 0x00, 0x00

; FUNCTION 0x00801970, declared_size=156, range_size=156, mode=arm
; class-group: NetStructString<256u>
; alias: _ZN15NetStructStringILj256EE4ReadER12NetBitStream
; demangled: NetStructString<256u>::Read(NetBitStream&)
; decoder-mode: arm
00801970  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00801974  88 40 9f e5                                      ldr r4, [pc, #0x88]
00801978  88 60 9f e5                                      ldr r6, [pc, #0x88]
0080197c  24 d0 4d e2                                      sub sp, sp, #0x24
00801980  04 40 8f e0                                      add r4, pc, r4
00801984  06 30 94 e7                                      ldr r3, [r4, r6]
00801988  04 50 8d e2                                      add r5, sp, #4
0080198c  00 70 a0 e1                                      mov r7, r0
00801990  00 30 93 e5                                      ldr r3, [r3]
00801994  05 00 a0 e1                                      mov r0, r5
00801998  1c 30 8d e5                                      str r3, [sp, #0x1c]
0080199c  a3 34 00 eb                                      bl #0x80ec30
008019a0  07 00 a0 e1                                      mov r0, r7
008019a4  00 30 97 e5                                      ldr r3, [r7]
008019a8  05 10 a0 e1                                      mov r1, r5
008019ac  0f e0 a0 e1                                      mov lr, pc
008019b0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008019b4  18 00 9d e5                                      ldr r0, [sp, #0x18]
008019b8  05 00 50 e1                                      cmp r0, r5
008019bc  06 00 00 0a                                      beq #0x8019dc
008019c0  00 00 50 e3                                      cmp r0, #0
008019c4  04 00 00 0a                                      beq #0x8019dc
008019c8  04 10 9d e5                                      ldr r1, [sp, #4]
008019cc  01 10 60 e0                                      rsb r1, r0, r1
008019d0  80 00 51 e3                                      cmp r1, #0x80
008019d4  07 00 00 8a                                      bhi #0x8019f8
008019d8  56 f2 02 eb                                      bl #0x8be338
008019dc  06 30 94 e7                                      ldr r3, [r4, r6]
008019e0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008019e4  00 30 93 e5                                      ldr r3, [r3]
008019e8  03 00 52 e1                                      cmp r2, r3
008019ec  03 00 00 1a                                      bne #0x801a00
008019f0  24 d0 8d e2                                      add sp, sp, #0x24
008019f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008019f8  90 3a ec eb                                      bl #0x310440
008019fc  f6 ff ff ea                                      b #0x8019dc
00801a00  42 32 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00801a04  10 31 19 00 ac 40 00 00                          .byte 0x10, 0x31, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00
