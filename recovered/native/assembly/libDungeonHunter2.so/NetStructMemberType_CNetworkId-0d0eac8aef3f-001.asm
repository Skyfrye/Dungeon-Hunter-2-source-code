; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00801b80, declared_size=4, range_size=4, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdED1Ev
; demangled: NetStructMemberType<CNetworkId>::~NetStructMemberType()
; decoder-mode: arm
00801b80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b84, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdE8GetValueEv
; demangled: NetStructMemberType<CNetworkId>::GetValue()
; decoder-mode: arm
00801b84  20 00 80 e2                                      add r0, r0, #0x20
00801b88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b8c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdE9TestValueERKS0_
; demangled: NetStructMemberType<CNetworkId>::TestValue(CNetworkId const&)
; decoder-mode: arm
00801b8c  01 00 a0 e3                                      mov r0, #1
00801b90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b94, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdED0Ev
; demangled: NetStructMemberType<CNetworkId>::~NetStructMemberType()
; decoder-mode: arm
00801b94  24 30 9f e5                                      ldr r3, [pc, #0x24]
00801b98  24 20 9f e5                                      ldr r2, [pc, #0x24]
00801b9c  10 40 2d e9                                      push {r4, lr}
00801ba0  03 30 8f e0                                      add r3, pc, r3
00801ba4  02 20 93 e7                                      ldr r2, [r3, r2]
00801ba8  00 40 a0 e1                                      mov r4, r0
00801bac  08 20 82 e2                                      add r2, r2, #8
00801bb0  00 20 80 e5                                      str r2, [r0]
00801bb4  21 3a ec eb                                      bl #0x310440
00801bb8  04 00 a0 e1                                      mov r0, r4
00801bbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00801bc0  f0 2e 19 00 a8 10 00 00                          .byte 0xf0, 0x2e, 0x19, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00801bfc, declared_size=92, range_size=92, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdE5EraseER12NetBitStream
; demangled: NetStructMemberType<CNetworkId>::Erase(NetBitStream&)
; decoder-mode: arm
00801bfc  30 40 2d e9                                      push {r4, r5, lr}
00801c00  24 d0 4d e2                                      sub sp, sp, #0x24
00801c04  04 c0 8d e2                                      add ip, sp, #4
00801c08  20 e0 80 e2                                      add lr, r0, #0x20
00801c0c  00 40 a0 e1                                      mov r4, r0
00801c10  01 50 a0 e1                                      mov r5, r1
00801c14  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00801c18  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00801c1c  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00801c20  07 00 8c e8                                      stm ip, {r0, r1, r2}
00801c24  05 10 a0 e1                                      mov r1, r5
00801c28  04 00 a0 e1                                      mov r0, r4
00801c2c  36 4d 00 eb                                      bl #0x81510c
00801c30  20 c0 84 e2                                      add ip, r4, #0x20
00801c34  04 40 8d e2                                      add r4, sp, #4
00801c38  04 00 5c e1                                      cmp ip, r4
00801c3c  0f 00 b4 18                                      ldmne r4!, {r0, r1, r2, r3}
00801c40  0f 00 ac 18                                      stmne ip!, {r0, r1, r2, r3}
00801c44  0c 30 a0 11                                      movne r3, ip
00801c48  07 00 94 18                                      ldmne r4, {r0, r1, r2}
00801c4c  07 00 83 18                                      stmne r3, {r0, r1, r2}
00801c50  24 d0 8d e2                                      add sp, sp, #0x24
00801c54  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x008020b8, declared_size=528, range_size=528, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdE8SetValueERKS0_
; demangled: NetStructMemberType<CNetworkId>::SetValue(CNetworkId const&)
; decoder-mode: arm
008020b8  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
008020bc  18 30 91 e5                                      ldr r3, [r1, #0x18]
008020c0  01 60 a0 e3                                      mov r6, #1
008020c4  00 70 a0 e3                                      mov r7, #0
008020c8  03 40 a0 e1                                      mov r4, r3
008020cc  00 50 a0 e3                                      mov r5, #0
008020d0  06 20 04 e0                                      and r2, r4, r6
008020d4  07 30 05 e0                                      and r3, r5, r7
008020d8  00 c0 a0 e1                                      mov ip, r0
008020dc  03 00 92 e1                                      orrs r0, r2, r3
008020e0  00 80 a0 03                                      moveq r8, #0
008020e4  00 90 a0 03                                      moveq sb, #0
008020e8  05 00 00 0a                                      beq #0x802104
008020ec  0c 00 91 e5                                      ldr r0, [r1, #0xc]
008020f0  b8 60 d1 e1                                      ldrh r6, [r1, #8]
008020f4  00 28 a0 e1                                      lsl r2, r0, #0x10
008020f8  20 38 a0 e1                                      lsr r3, r0, #0x10
008020fc  06 80 92 e0                                      adds r8, r2, r6
00802100  00 90 a3 e2                                      adc sb, r3, #0
00802104  02 60 a0 e3                                      mov r6, #2
00802108  00 70 a0 e3                                      mov r7, #0
0080210c  06 20 04 e0                                      and r2, r4, r6
00802110  07 30 05 e0                                      and r3, r5, r7
00802114  03 00 92 e1                                      orrs r0, r2, r3
00802118  07 00 00 0a                                      beq #0x80213c
0080211c  04 00 91 e5                                      ldr r0, [r1, #4]
00802120  b0 a0 d1 e1                                      ldrh sl, [r1]
00802124  00 28 a0 e1                                      lsl r2, r0, #0x10
00802128  0a 60 92 e0                                      adds r6, r2, sl
0080212c  20 38 a0 e1                                      lsr r3, r0, #0x10
00802130  00 70 a3 e2                                      adc r7, r3, #0
00802134  06 80 98 e0                                      adds r8, r8, r6
00802138  07 90 a9 e0                                      adc sb, sb, r7
0080213c  04 60 a0 e3                                      mov r6, #4
00802140  00 70 a0 e3                                      mov r7, #0
00802144  06 20 04 e0                                      and r2, r4, r6
00802148  07 30 05 e0                                      and r3, r5, r7
0080214c  03 00 92 e1                                      orrs r0, r2, r3
00802150  02 00 00 0a                                      beq #0x802160
00802154  10 30 91 e5                                      ldr r3, [r1, #0x10]
00802158  03 80 98 e0                                      adds r8, r8, r3
0080215c  00 90 a9 e2                                      adc sb, sb, #0
00802160  08 60 a0 e3                                      mov r6, #8
00802164  00 70 a0 e3                                      mov r7, #0
00802168  06 20 04 e0                                      and r2, r4, r6
0080216c  07 30 05 e0                                      and r3, r5, r7
00802170  03 00 92 e1                                      orrs r0, r2, r3
00802174  02 00 00 0a                                      beq #0x802184
00802178  14 30 91 e5                                      ldr r3, [r1, #0x14]
0080217c  03 80 98 e0                                      adds r8, r8, r3
00802180  00 90 a9 e2                                      adc sb, sb, #0
00802184  38 20 9c e5                                      ldr r2, [ip, #0x38]
00802188  84 bb a0 e1                                      lsl fp, r4, #0x17
0080218c  ff 54 e0 e3                                      mvn r5, #0xff000000
00802190  00 40 e0 e3                                      mvn r4, #0
00802194  04 60 08 e0                                      and r6, r8, r4
00802198  05 70 09 e0                                      and r7, sb, r5
0080219c  00 30 a0 e3                                      mov r3, #0
008021a0  01 80 a0 e3                                      mov r8, #1
008021a4  00 90 a0 e3                                      mov sb, #0
008021a8  00 a0 a0 e3                                      mov sl, #0
008021ac  08 40 02 e0                                      and r4, r2, r8
008021b0  09 50 03 e0                                      and r5, r3, sb
008021b4  0a 60 96 e0                                      adds r6, r6, sl
008021b8  0b 70 a7 e0                                      adc r7, r7, fp
008021bc  05 00 94 e1                                      orrs r0, r4, r5
008021c0  00 40 a0 03                                      moveq r4, #0
008021c4  00 50 a0 03                                      moveq r5, #0
008021c8  05 00 00 0a                                      beq #0x8021e4
008021cc  2c 00 9c e5                                      ldr r0, [ip, #0x2c]
008021d0  b8 a2 dc e1                                      ldrh sl, [ip, #0x28]
008021d4  00 88 a0 e1                                      lsl r8, r0, #0x10
008021d8  20 98 a0 e1                                      lsr sb, r0, #0x10
008021dc  0a 40 98 e0                                      adds r4, r8, sl
008021e0  00 50 a9 e2                                      adc r5, sb, #0
008021e4  02 a0 a0 e3                                      mov sl, #2
008021e8  00 b0 a0 e3                                      mov fp, #0
008021ec  0a 80 02 e0                                      and r8, r2, sl
008021f0  0b 90 03 e0                                      and sb, r3, fp
008021f4  09 00 98 e1                                      orrs r0, r8, sb
008021f8  07 00 00 0a                                      beq #0x80221c
008021fc  24 a0 9c e5                                      ldr sl, [ip, #0x24]
00802200  b0 02 dc e1                                      ldrh r0, [ip, #0x20]
00802204  0a 88 a0 e1                                      lsl r8, sl, #0x10
00802208  2a 98 a0 e1                                      lsr sb, sl, #0x10
0080220c  00 a0 98 e0                                      adds sl, r8, r0
00802210  00 b0 a9 e2                                      adc fp, sb, #0
00802214  0a 40 94 e0                                      adds r4, r4, sl
00802218  0b 50 a5 e0                                      adc r5, r5, fp
0080221c  04 a0 a0 e3                                      mov sl, #4
00802220  00 b0 a0 e3                                      mov fp, #0
00802224  0a 80 02 e0                                      and r8, r2, sl
00802228  0b 90 03 e0                                      and sb, r3, fp
0080222c  09 00 98 e1                                      orrs r0, r8, sb
00802230  02 00 00 0a                                      beq #0x802240
00802234  30 00 9c e5                                      ldr r0, [ip, #0x30]
00802238  00 40 94 e0                                      adds r4, r4, r0
0080223c  00 50 a5 e2                                      adc r5, r5, #0
00802240  08 a0 a0 e3                                      mov sl, #8
00802244  00 b0 a0 e3                                      mov fp, #0
00802248  0a 80 02 e0                                      and r8, r2, sl
0080224c  0b 90 03 e0                                      and sb, r3, fp
00802250  09 00 98 e1                                      orrs r0, r8, sb
00802254  02 00 00 0a                                      beq #0x802264
00802258  34 00 9c e5                                      ldr r0, [ip, #0x34]
0080225c  00 40 94 e0                                      adds r4, r4, r0
00802260  00 50 a5 e2                                      adc r5, r5, #0
00802264  00 a0 e0 e3                                      mvn sl, #0
00802268  82 9b a0 e1                                      lsl sb, r2, #0x17
0080226c  ff b4 e0 e3                                      mvn fp, #0xff000000
00802270  0a 20 04 e0                                      and r2, r4, sl
00802274  00 80 a0 e3                                      mov r8, #0
00802278  08 20 92 e0                                      adds r2, r2, r8
0080227c  0b 30 05 e0                                      and r3, r5, fp
00802280  09 30 a3 e0                                      adc r3, r3, sb
00802284  02 00 56 e1                                      cmp r6, r2
00802288  0a 00 00 0a                                      beq #0x8022b8
0080228c  20 40 8c e2                                      add r4, ip, #0x20
00802290  04 00 51 e1                                      cmp r1, r4
00802294  04 00 00 0a                                      beq #0x8022ac
00802298  01 50 a0 e1                                      mov r5, r1
0080229c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
008022a0  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
008022a4  07 00 95 e8                                      ldm r5, {r0, r1, r2}
008022a8  07 00 84 e8                                      stm r4, {r0, r1, r2}
008022ac  0c 00 a0 e1                                      mov r0, ip
008022b0  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
008022b4  32 4b 00 ea                                      b #0x814f84
008022b8  03 00 57 e1                                      cmp r7, r3
008022bc  f2 ff ff 1a                                      bne #0x80228c
008022c0  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
008022c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008060d0, declared_size=112, range_size=112, mode=arm
; class-group: NetStructMemberType<CNetworkId>
; alias: _ZN19NetStructMemberTypeI10CNetworkIdEC2ES0_j.clone.2
; demangled: NetStructMemberType<CNetworkId>::NetStructMemberType(CNetworkId, unsigned int) [clone .clone.2]
; decoder-mode: arm
008060d0  60 30 9f e5                                      ldr r3, [pc, #0x60]
008060d4  60 20 9f e5                                      ldr r2, [pc, #0x60]
008060d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008060dc  03 30 8f e0                                      add r3, pc, r3
008060e0  02 20 93 e7                                      ldr r2, [r3, r2]
008060e4  00 40 a0 e1                                      mov r4, r0
008060e8  00 e0 e0 e3                                      mvn lr, #0
008060ec  00 c0 a0 e3                                      mov ip, #0
008060f0  08 20 82 e2                                      add r2, r2, #8
008060f4  03 50 a0 e3                                      mov r5, #3
008060f8  00 60 a0 e3                                      mov r6, #0
008060fc  00 70 a0 e3                                      mov r7, #0
00806100  04 50 84 e5                                      str r5, [r4, #4]
00806104  14 e0 84 e5                                      str lr, [r4, #0x14]
00806108  1c c0 c4 e5                                      strb ip, [r4, #0x1c]
0080610c  10 e0 84 e5                                      str lr, [r4, #0x10]
00806110  18 c0 84 e5                                      str ip, [r4, #0x18]
00806114  f8 60 c4 e1                                      strd r6, r7, [r4, #8]
00806118  20 20 80 e4                                      str r2, [r0], #0x20
0080611c  01 50 a0 e1                                      mov r5, r1
00806120  97 d8 ff eb                                      bl #0x7fc384
00806124  04 00 a0 e1                                      mov r0, r4
00806128  05 10 a0 e1                                      mov r1, r5
0080612c  e1 ef ff eb                                      bl #0x8020b8
00806130  04 00 a0 e1                                      mov r0, r4
00806134  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00806138  b4 e9 18 00 58 2c 00 00                          .byte 0xb4, 0xe9, 0x18, 0x00, 0x58, 0x2c, 0x00, 0x00
