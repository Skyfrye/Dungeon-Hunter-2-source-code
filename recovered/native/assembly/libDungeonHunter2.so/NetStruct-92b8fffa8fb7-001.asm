; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081324c, declared_size=24, range_size=24, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct13DeclareMemberEP15NetStructMember
; demangled: NetStruct::DeclareMember(NetStructMember*)
; decoder-mode: arm
0081324c  04 31 90 e5                                      ldr r3, [r0, #0x104]
00813250  01 20 83 e2                                      add r2, r3, #1
00813254  03 31 80 e0                                      add r3, r0, r3, lsl #2
00813258  04 10 83 e5                                      str r1, [r3, #4]
0081325c  04 21 80 e5                                      str r2, [r0, #0x104]
00813260  1e ff 2f e1                                      bx lr

; FUNCTION 0x00813264, declared_size=56, range_size=56, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct15ConditionalLoadEbR12NetBitStreamij
; demangled: NetStruct::ConditionalLoad(bool, NetBitStream&, int, unsigned int)
; decoder-mode: arm
00813264  00 00 51 e3                                      cmp r1, #0
00813268  10 40 2d e9                                      push {r4, lr}
0081326c  02 10 a0 e1                                      mov r1, r2
00813270  03 00 00 1a                                      bne #0x813284
00813274  00 30 90 e5                                      ldr r3, [r0]
00813278  0f e0 a0 e1                                      mov lr, pc
0081327c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00813280  10 80 bd e8                                      pop {r4, pc}
00813284  03 20 a0 e1                                      mov r2, r3
00813288  00 c0 90 e5                                      ldr ip, [r0]
0081328c  08 30 9d e5                                      ldr r3, [sp, #8]
00813290  0f e0 a0 e1                                      mov lr, pc
00813294  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00813298  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081329c, declared_size=84, range_size=84, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct11GetSizeBitsEv
; demangled: NetStruct::GetSizeBits()
; decoder-mode: arm
0081329c  70 40 2d e9                                      push {r4, r5, r6, lr}
008132a0  04 31 90 e5                                      ldr r3, [r0, #0x104]
008132a4  00 60 a0 e1                                      mov r6, r0
008132a8  00 00 53 e3                                      cmp r3, #0
008132ac  01 50 a0 d3                                      movle r5, #1
008132b0  0c 00 00 da                                      ble #0x8132e8
008132b4  00 40 a0 e3                                      mov r4, #0
008132b8  01 50 a0 e3                                      mov r5, #1
008132bc  04 31 86 e0                                      add r3, r6, r4, lsl #2
008132c0  04 30 93 e5                                      ldr r3, [r3, #4]
008132c4  01 40 84 e2                                      add r4, r4, #1
008132c8  03 00 a0 e1                                      mov r0, r3
008132cc  00 30 93 e5                                      ldr r3, [r3]
008132d0  0f e0 a0 e1                                      mov lr, pc
008132d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008132d8  04 31 96 e5                                      ldr r3, [r6, #0x104]
008132dc  00 50 85 e0                                      add r5, r5, r0
008132e0  04 00 53 e1                                      cmp r3, r4
008132e4  f4 ff ff ca                                      bgt #0x8132bc
008132e8  05 00 a0 e1                                      mov r0, r5
008132ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008132f0, declared_size=32, range_size=32, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct12GetSizeBytesEv
; demangled: NetStruct::GetSizeBytes()
; decoder-mode: arm
008132f0  10 40 2d e9                                      push {r4, lr}
008132f4  00 30 90 e5                                      ldr r3, [r0]
008132f8  0f e0 a0 e1                                      mov lr, pc
008132fc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00813300  07 30 10 e2                                      ands r3, r0, #7
00813304  01 30 a0 13                                      movne r3, #1
00813308  a0 01 83 e0                                      add r0, r3, r0, lsr #3
0081330c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081334c, declared_size=116, range_size=116, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct24AreChangesAcknowledgedByEi
; demangled: NetStruct::AreChangesAcknowledgedBy(int)
; decoder-mode: arm
0081334c  70 40 2d e9                                      push {r4, r5, r6, lr}
00813350  24 31 d0 e5                                      ldrb r3, [r0, #0x124]
00813354  00 50 a0 e1                                      mov r5, r0
00813358  01 40 a0 e1                                      mov r4, r1
0081335c  00 00 53 e3                                      cmp r3, #0
00813360  01 00 00 1a                                      bne #0x81336c
00813364  01 00 a0 e3                                      mov r0, #1
00813368  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081336c  06 b7 ff eb                                      bl #0x800f8c
00813370  04 10 a0 e1                                      mov r1, r4
00813374  00 30 90 e5                                      ldr r3, [r0]
00813378  0f e0 a0 e1                                      mov lr, pc
0081337c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00813380  04 31 95 e5                                      ldr r3, [r5, #0x104]
00813384  00 60 a0 e1                                      mov r6, r0
00813388  00 00 53 e3                                      cmp r3, #0
0081338c  f4 ff ff da                                      ble #0x813364
00813390  00 40 a0 e3                                      mov r4, #0
00813394  04 31 85 e0                                      add r3, r5, r4, lsl #2
00813398  04 00 93 e5                                      ldr r0, [r3, #4]
0081339c  06 10 a0 e1                                      mov r1, r6
008133a0  20 07 00 eb                                      bl #0x815028
008133a4  00 00 50 e3                                      cmp r0, #0
008133a8  01 40 84 e2                                      add r4, r4, #1
008133ac  ed ff ff 0a                                      beq #0x813368
008133b0  04 31 95 e5                                      ldr r3, [r5, #0x104]
008133b4  04 00 53 e1                                      cmp r3, r4
008133b8  f5 ff ff ca                                      bgt #0x813394
008133bc  e8 ff ff ea                                      b #0x813364

; FUNCTION 0x008133c0, declared_size=140, range_size=140, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct14ResendInternalEj
; demangled: NetStruct::ResendInternal(unsigned int)
; decoder-mode: arm
008133c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008133c4  78 80 9f e5                                      ldr r8, [pc, #0x78]
008133c8  78 a0 9f e5                                      ldr sl, [pc, #0x78]
008133cc  00 50 a0 e1                                      mov r5, r0
008133d0  08 80 8f e0                                      add r8, pc, r8
008133d4  0a 30 98 e7                                      ldr r3, [r8, sl]
008133d8  01 00 a0 e3                                      mov r0, #1
008133dc  01 90 a0 e1                                      mov sb, r1
008133e0  d0 60 c3 e1                                      ldrd r6, r7, [r3]
008133e4  00 10 a0 e3                                      mov r1, #0
008133e8  00 60 96 e0                                      adds r6, r6, r0
008133ec  01 70 a7 e0                                      adc r7, r7, r1
008133f0  f0 60 c3 e1                                      strd r6, r7, [r3]
008133f4  04 31 95 e5                                      ldr r3, [r5, #0x104]
008133f8  08 d0 4d e2                                      sub sp, sp, #8
008133fc  00 00 53 e3                                      cmp r3, #0
00813400  0d 00 00 da                                      ble #0x81343c
00813404  00 40 a0 e3                                      mov r4, #0
00813408  01 00 00 ea                                      b #0x813414
0081340c  0a 30 98 e7                                      ldr r3, [r8, sl]
00813410  d0 60 c3 e1                                      ldrd r6, r7, [r3]
00813414  04 31 85 e0                                      add r3, r5, r4, lsl #2
00813418  04 00 93 e5                                      ldr r0, [r3, #4]
0081341c  09 10 a0 e1                                      mov r1, sb
00813420  00 20 a0 e3                                      mov r2, #0
00813424  f0 60 cd e1                                      strd r6, r7, [sp]
00813428  03 07 00 eb                                      bl #0x81503c
0081342c  04 31 95 e5                                      ldr r3, [r5, #0x104]
00813430  01 40 84 e2                                      add r4, r4, #1
00813434  04 00 53 e1                                      cmp r3, r4
00813438  f3 ff ff ca                                      bgt #0x81340c
0081343c  08 d0 8d e2                                      add sp, sp, #8
00813440  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00813444  c0 16 18 00 7c 0e 00 00                          .byte 0xc0, 0x16, 0x18, 0x00, 0x7c, 0x0e, 0x00, 0x00

; FUNCTION 0x0081344c, declared_size=48, range_size=48, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct6ResendEi
; demangled: NetStruct::Resend(int)
; decoder-mode: arm
0081344c  70 40 2d e9                                      push {r4, r5, r6, lr}
00813450  00 40 a0 e1                                      mov r4, r0
00813454  01 50 a0 e1                                      mov r5, r1
00813458  cb b6 ff eb                                      bl #0x800f8c
0081345c  05 10 a0 e1                                      mov r1, r5
00813460  00 30 90 e5                                      ldr r3, [r0]
00813464  0f e0 a0 e1                                      mov lr, pc
00813468  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0081346c  00 10 a0 e1                                      mov r1, r0
00813470  04 00 a0 e1                                      mov r0, r4
00813474  70 40 bd e8                                      pop {r4, r5, r6, lr}
00813478  d0 ff ff ea                                      b #0x8133c0

; FUNCTION 0x0081347c, declared_size=32, range_size=32, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct6ResendEv
; demangled: NetStruct::Resend()
; decoder-mode: arm
0081347c  10 40 2d e9                                      push {r4, lr}
00813480  00 40 a0 e1                                      mov r4, r0
00813484  c0 b6 ff eb                                      bl #0x800f8c
00813488  13 b3 ff eb                                      bl #0x8000dc
0081348c  00 10 a0 e1                                      mov r1, r0
00813490  04 00 a0 e1                                      mov r0, r4
00813494  10 40 bd e8                                      pop {r4, lr}
00813498  c8 ff ff ea                                      b #0x8133c0

; FUNCTION 0x0081349c, declared_size=88, range_size=88, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct10SetAckedByEi
; demangled: NetStruct::SetAckedBy(int)
; decoder-mode: arm
0081349c  70 40 2d e9                                      push {r4, r5, r6, lr}
008134a0  00 50 a0 e1                                      mov r5, r0
008134a4  01 40 a0 e1                                      mov r4, r1
008134a8  b7 b6 ff eb                                      bl #0x800f8c
008134ac  04 10 a0 e1                                      mov r1, r4
008134b0  00 30 90 e5                                      ldr r3, [r0]
008134b4  0f e0 a0 e1                                      mov lr, pc
008134b8  84 f0 93 e5                                      ldr pc, [r3, #0x84]
008134bc  04 31 95 e5                                      ldr r3, [r5, #0x104]
008134c0  00 60 a0 e1                                      mov r6, r0
008134c4  00 00 53 e3                                      cmp r3, #0
008134c8  08 00 00 da                                      ble #0x8134f0
008134cc  00 40 a0 e3                                      mov r4, #0
008134d0  04 31 85 e0                                      add r3, r5, r4, lsl #2
008134d4  04 00 93 e5                                      ldr r0, [r3, #4]
008134d8  06 10 a0 e1                                      mov r1, r6
008134dc  c1 06 00 eb                                      bl #0x814fe8
008134e0  04 31 95 e5                                      ldr r3, [r5, #0x104]
008134e4  01 40 84 e2                                      add r4, r4, #1
008134e8  04 00 53 e1                                      cmp r3, r4
008134ec  f7 ff ff ca                                      bgt #0x8134d0
008134f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008134f4, declared_size=240, range_size=240, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct12LoadInternalEbR12NetBitStreami
; demangled: NetStruct::LoadInternal(bool, NetBitStream&, int)
; decoder-mode: arm
008134f4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
008134f8  00 40 a0 e1                                      mov r4, r0
008134fc  02 00 a0 e1                                      mov r0, r2
00813500  02 50 a0 e1                                      mov r5, r2
00813504  01 60 a0 e1                                      mov r6, r1
00813508  03 70 a0 e1                                      mov r7, r3
0081350c  e1 eb ff eb                                      bl #0x80e498
00813510  00 00 50 e3                                      cmp r0, #0
00813514  01 00 00 1a                                      bne #0x813520
00813518  00 00 a0 e3                                      mov r0, #0
0081351c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00813520  99 b6 ff eb                                      bl #0x800f8c
00813524  07 10 a0 e1                                      mov r1, r7
00813528  00 30 90 e5                                      ldr r3, [r0]
0081352c  0f e0 a0 e1                                      mov lr, pc
00813530  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00813534  04 31 94 e5                                      ldr r3, [r4, #0x104]
00813538  00 b0 a0 e1                                      mov fp, r0
0081353c  00 00 53 e3                                      cmp r3, #0
00813540  01 90 a0 d3                                      movle sb, #1
00813544  20 00 00 da                                      ble #0x8135cc
00813548  00 70 a0 e3                                      mov r7, #0
0081354c  01 90 a0 e3                                      mov sb, #1
00813550  07 80 a0 e1                                      mov r8, r7
00813554  0c 00 00 ea                                      b #0x81358c
00813558  04 00 93 e5                                      ldr r0, [r3, #4]
0081355c  ea 06 00 eb                                      bl #0x81510c
00813560  0b 10 a0 e1                                      mov r1, fp
00813564  09 90 00 e0                                      and sb, r0, sb
00813568  04 00 9a e5                                      ldr r0, [sl, #4]
0081356c  9d 06 00 eb                                      bl #0x814fe8
00813570  01 30 a0 e3                                      mov r3, #1
00813574  25 31 c4 e5                                      strb r3, [r4, #0x125]
00813578  04 31 94 e5                                      ldr r3, [r4, #0x104]
0081357c  01 80 88 e2                                      add r8, r8, #1
00813580  04 70 87 e2                                      add r7, r7, #4
00813584  08 00 53 e1                                      cmp r3, r8
00813588  0f 00 00 da                                      ble #0x8135cc
0081358c  07 30 84 e0                                      add r3, r4, r7
00813590  00 00 56 e3                                      cmp r6, #0
00813594  03 a0 a0 e1                                      mov sl, r3
00813598  05 10 a0 e1                                      mov r1, r5
0081359c  ed ff ff 1a                                      bne #0x813558
008135a0  04 30 93 e5                                      ldr r3, [r3, #4]
008135a4  05 10 a0 e1                                      mov r1, r5
008135a8  01 80 88 e2                                      add r8, r8, #1
008135ac  03 00 a0 e1                                      mov r0, r3
008135b0  00 30 93 e5                                      ldr r3, [r3]
008135b4  0f e0 a0 e1                                      mov lr, pc
008135b8  00 f0 93 e5                                      ldr pc, [r3]
008135bc  04 31 94 e5                                      ldr r3, [r4, #0x104]
008135c0  04 70 87 e2                                      add r7, r7, #4
008135c4  08 00 53 e1                                      cmp r3, r8
008135c8  ef ff ff ca                                      bgt #0x81358c
008135cc  00 00 56 e3                                      cmp r6, #0
008135d0  d0 ff ff 0a                                      beq #0x813518
008135d4  00 00 59 e3                                      cmp sb, #0
008135d8  02 00 a0 13                                      movne r0, #2
008135dc  01 00 a0 03                                      moveq r0, #1
008135e0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x008135e4, declared_size=16, range_size=16, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct5EraseER12NetBitStream
; demangled: NetStruct::Erase(NetBitStream&)
; decoder-mode: arm
008135e4  01 20 a0 e1                                      mov r2, r1
008135e8  00 30 e0 e3                                      mvn r3, #0
008135ec  00 10 a0 e3                                      mov r1, #0
008135f0  bf ff ff ea                                      b #0x8134f4

; FUNCTION 0x008135f4, declared_size=120, range_size=120, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct4LoadER12NetBitStreamij
; demangled: NetStruct::Load(NetBitStream&, int, unsigned int)
; decoder-mode: arm
008135f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008135f8  02 c0 a0 e1                                      mov ip, r2
008135fc  00 40 a0 e1                                      mov r4, r0
00813600  28 31 84 e5                                      str r3, [r4, #0x128]
00813604  01 20 a0 e1                                      mov r2, r1
00813608  03 50 a0 e1                                      mov r5, r3
0081360c  01 10 a0 e3                                      mov r1, #1
00813610  0c 30 a0 e1                                      mov r3, ip
00813614  b6 ff ff eb                                      bl #0x8134f4
00813618  25 31 d4 e5                                      ldrb r3, [r4, #0x125]
0081361c  00 70 a0 e1                                      mov r7, r0
00813620  00 00 53 e3                                      cmp r3, #0
00813624  0e 00 00 0a                                      beq #0x813664
00813628  04 31 94 e5                                      ldr r3, [r4, #0x104]
0081362c  00 00 53 e3                                      cmp r3, #0
00813630  0b 00 00 da                                      ble #0x813664
00813634  00 60 a0 e3                                      mov r6, #0
00813638  06 31 84 e0                                      add r3, r4, r6, lsl #2
0081363c  04 30 93 e5                                      ldr r3, [r3, #4]
00813640  05 10 a0 e1                                      mov r1, r5
00813644  01 60 86 e2                                      add r6, r6, #1
00813648  03 00 a0 e1                                      mov r0, r3
0081364c  00 30 93 e5                                      ldr r3, [r3]
00813650  0f e0 a0 e1                                      mov lr, pc
00813654  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00813658  04 31 94 e5                                      ldr r3, [r4, #0x104]
0081365c  06 00 53 e1                                      cmp r3, r6
00813660  f4 ff ff ca                                      bgt #0x813638
00813664  07 00 a0 e1                                      mov r0, r7
00813668  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081366c, declared_size=152, range_size=152, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct10SetEnabledEb
; demangled: NetStruct::SetEnabled(bool)
; decoder-mode: arm
0081366c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00813670  00 50 51 e2                                      subs r5, r1, #0
00813674  00 40 a0 e1                                      mov r4, r0
00813678  25 51 c0 05                                      strbeq r5, [r0, #0x125]
0081367c  02 00 00 0a                                      beq #0x81368c
00813680  24 61 d0 e5                                      ldrb r6, [r0, #0x124]
00813684  00 00 56 e3                                      cmp r6, #0
00813688  01 00 00 0a                                      beq #0x813694
0081368c  24 51 c4 e5                                      strb r5, [r4, #0x124]
00813690  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00813694  3c b6 ff eb                                      bl #0x800f8c
00813698  00 30 90 e5                                      ldr r3, [r0]
0081369c  00 80 a0 e1                                      mov r8, r0
008136a0  84 70 93 e5                                      ldr r7, [r3, #0x84]
008136a4  38 b6 ff eb                                      bl #0x800f8c
008136a8  00 30 90 e5                                      ldr r3, [r0]
008136ac  0f e0 a0 e1                                      mov lr, pc
008136b0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008136b4  00 10 a0 e1                                      mov r1, r0
008136b8  08 00 a0 e1                                      mov r0, r8
008136bc  37 ff 2f e1                                      blx r7
008136c0  04 31 94 e5                                      ldr r3, [r4, #0x104]
008136c4  00 80 a0 e1                                      mov r8, r0
008136c8  00 00 53 e3                                      cmp r3, #0
008136cc  ee ff ff da                                      ble #0x81368c
008136d0  06 70 a0 e1                                      mov r7, r6
008136d4  06 30 84 e0                                      add r3, r4, r6
008136d8  04 20 93 e5                                      ldr r2, [r3, #4]
008136dc  01 70 87 e2                                      add r7, r7, #1
008136e0  04 60 86 e2                                      add r6, r6, #4
008136e4  18 80 82 e5                                      str r8, [r2, #0x18]
008136e8  04 00 93 e5                                      ldr r0, [r3, #4]
008136ec  24 06 00 eb                                      bl #0x814f84
008136f0  04 31 94 e5                                      ldr r3, [r4, #0x104]
008136f4  07 00 53 e1                                      cmp r3, r7
008136f8  f5 ff ff ca                                      bgt #0x8136d4
008136fc  24 51 c4 e5                                      strb r5, [r4, #0x124]
00813700  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00813704, declared_size=88, range_size=88, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct22AreChangesAcknowledgedEv
; demangled: NetStruct::AreChangesAcknowledged()
; decoder-mode: arm
00813704  70 40 2d e9                                      push {r4, r5, r6, lr}
00813708  24 31 d0 e5                                      ldrb r3, [r0, #0x124]
0081370c  00 50 a0 e1                                      mov r5, r0
00813710  00 00 53 e3                                      cmp r3, #0
00813714  0e 00 00 0a                                      beq #0x813754
00813718  04 31 90 e5                                      ldr r3, [r0, #0x104]
0081371c  00 00 53 e3                                      cmp r3, #0
00813720  0b 00 00 da                                      ble #0x813754
00813724  00 40 a0 e3                                      mov r4, #0
00813728  02 00 00 ea                                      b #0x813738
0081372c  04 31 95 e5                                      ldr r3, [r5, #0x104]
00813730  04 00 53 e1                                      cmp r3, r4
00813734  06 00 00 da                                      ble #0x813754
00813738  04 31 85 e0                                      add r3, r5, r4, lsl #2
0081373c  04 00 93 e5                                      ldr r0, [r3, #4]
00813740  5a 06 00 eb                                      bl #0x8150b0
00813744  00 00 50 e3                                      cmp r0, #0
00813748  01 40 84 e2                                      add r4, r4, #1
0081374c  f6 ff ff 1a                                      bne #0x81372c
00813750  70 80 bd e8                                      pop {r4, r5, r6, pc}
00813754  01 00 a0 e3                                      mov r0, #1
00813758  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081375c, declared_size=144, range_size=144, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct13HasDataToSendEi
; demangled: NetStruct::HasDataToSend(int)
; decoder-mode: arm
0081375c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00813760  24 31 d0 e5                                      ldrb r3, [r0, #0x124]
00813764  00 50 a0 e1                                      mov r5, r0
00813768  01 80 a0 e1                                      mov r8, r1
0081376c  00 00 53 e3                                      cmp r3, #0
00813770  01 00 00 1a                                      bne #0x81377c
00813774  a8 0f a0 e1                                      lsr r0, r8, #0x1f
00813778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081377c  02 b6 ff eb                                      bl #0x800f8c
00813780  08 10 a0 e1                                      mov r1, r8
00813784  00 30 90 e5                                      ldr r3, [r0]
00813788  00 40 a0 e1                                      mov r4, r0
0081378c  0f e0 a0 e1                                      mov lr, pc
00813790  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00813794  00 70 a0 e1                                      mov r7, r0
00813798  04 00 a0 e1                                      mov r0, r4
0081379c  4e b2 ff eb                                      bl #0x8000dc
008137a0  04 31 95 e5                                      ldr r3, [r5, #0x104]
008137a4  00 60 a0 e1                                      mov r6, r0
008137a8  00 00 53 e3                                      cmp r3, #0
008137ac  f0 ff ff da                                      ble #0x813774
008137b0  00 40 a0 e3                                      mov r4, #0
008137b4  02 00 00 ea                                      b #0x8137c4
008137b8  04 31 95 e5                                      ldr r3, [r5, #0x104]
008137bc  04 00 53 e1                                      cmp r3, r4
008137c0  eb ff ff da                                      ble #0x813774
008137c4  04 31 85 e0                                      add r3, r5, r4, lsl #2
008137c8  04 00 93 e5                                      ldr r0, [r3, #4]
008137cc  06 10 a0 e1                                      mov r1, r6
008137d0  07 20 a0 e1                                      mov r2, r7
008137d4  27 06 00 eb                                      bl #0x815078
008137d8  00 00 50 e3                                      cmp r0, #0
008137dc  01 40 84 e2                                      add r4, r4, #1
008137e0  f4 ff ff 0a                                      beq #0x8137b8
008137e4  01 00 a0 e3                                      mov r0, #1
008137e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008137ec, declared_size=80, range_size=80, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct16GetChangedBitMapEv
; demangled: NetStruct::GetChangedBitMap()
; decoder-mode: arm
008137ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008137f0  04 31 90 e5                                      ldr r3, [r0, #0x104]
008137f4  00 50 a0 e1                                      mov r5, r0
008137f8  00 00 53 e3                                      cmp r3, #0
008137fc  00 60 a0 d3                                      movle r6, #0
00813800  0b 00 00 da                                      ble #0x813834
00813804  00 40 a0 e3                                      mov r4, #0
00813808  04 60 a0 e1                                      mov r6, r4
0081380c  01 70 a0 e3                                      mov r7, #1
00813810  04 31 85 e0                                      add r3, r5, r4, lsl #2
00813814  04 00 93 e5                                      ldr r0, [r3, #4]
00813818  d4 05 00 eb                                      bl #0x814f70
0081381c  04 31 95 e5                                      ldr r3, [r5, #0x104]
00813820  00 00 50 e3                                      cmp r0, #0
00813824  17 64 86 11                                      orrne r6, r6, r7, lsl r4
00813828  01 40 84 e2                                      add r4, r4, #1
0081382c  04 00 53 e1                                      cmp r3, r4
00813830  f6 ff ff ca                                      bgt #0x813810
00813834  06 00 a0 e1                                      mov r0, r6
00813838  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081383c, declared_size=80, range_size=80, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct9IsChangedEv
; demangled: NetStruct::IsChanged()
; decoder-mode: arm
0081383c  70 40 2d e9                                      push {r4, r5, r6, lr}
00813840  04 31 90 e5                                      ldr r3, [r0, #0x104]
00813844  00 50 a0 e1                                      mov r5, r0
00813848  00 00 53 e3                                      cmp r3, #0
0081384c  0c 00 00 da                                      ble #0x813884
00813850  00 40 a0 e3                                      mov r4, #0
00813854  02 00 00 ea                                      b #0x813864
00813858  04 31 95 e5                                      ldr r3, [r5, #0x104]
0081385c  04 00 53 e1                                      cmp r3, r4
00813860  07 00 00 da                                      ble #0x813884
00813864  04 31 85 e0                                      add r3, r5, r4, lsl #2
00813868  04 00 93 e5                                      ldr r0, [r3, #4]
0081386c  bf 05 00 eb                                      bl #0x814f70
00813870  00 00 50 e3                                      cmp r0, #0
00813874  01 40 84 e2                                      add r4, r4, #1
00813878  f6 ff ff 0a                                      beq #0x813858
0081387c  01 00 a0 e3                                      mov r0, #1
00813880  70 80 bd e8                                      pop {r4, r5, r6, pc}
00813884  00 00 a0 e3                                      mov r0, #0
00813888  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081388c, declared_size=104, range_size=104, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStructC1Ev
; demangled: NetStruct::NetStruct()
; decoder-mode: arm
0081388c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00813890  58 20 9f e5                                      ldr r2, [pc, #0x58]
00813894  10 40 2d e9                                      push {r4, lr}
00813898  03 30 8f e0                                      add r3, pc, r3
0081389c  02 20 93 e7                                      ldr r2, [r3, r2]
008138a0  00 40 a0 e1                                      mov r4, r0
008138a4  00 10 a0 e3                                      mov r1, #0
008138a8  08 20 82 e2                                      add r2, r2, #8
008138ac  00 20 84 e5                                      str r2, [r4]
008138b0  04 11 84 e5                                      str r1, [r4, #0x104]
008138b4  08 11 c4 e5                                      strb r1, [r4, #0x108]
008138b8  10 11 84 e5                                      str r1, [r4, #0x110]
008138bc  0c 11 e0 e5                                      strb r1, [r0, #0x10c]!
008138c0  18 01 84 e5                                      str r0, [r4, #0x118]
008138c4  14 01 84 e5                                      str r0, [r4, #0x114]
008138c8  1c 11 84 e5                                      str r1, [r4, #0x11c]
008138cc  24 11 c4 e5                                      strb r1, [r4, #0x124]
008138d0  25 11 c4 e5                                      strb r1, [r4, #0x125]
008138d4  28 11 84 e5                                      str r1, [r4, #0x128]
008138d8  04 00 84 e2                                      add r0, r4, #4
008138dc  01 2c a0 e3                                      mov r2, #0x100
008138e0  de ea eb eb                                      bl #0x30e460
008138e4  04 00 a0 e1                                      mov r0, r4
008138e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008138ec  f8 11 18 00 c4 43 00 00                          .byte 0xf8, 0x11, 0x18, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x008138f4, declared_size=104, range_size=104, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStructC2Ev
; demangled: NetStruct::NetStruct()
; decoder-mode: arm
008138f4  58 30 9f e5                                      ldr r3, [pc, #0x58]
008138f8  58 20 9f e5                                      ldr r2, [pc, #0x58]
008138fc  10 40 2d e9                                      push {r4, lr}
00813900  03 30 8f e0                                      add r3, pc, r3
00813904  02 20 93 e7                                      ldr r2, [r3, r2]
00813908  00 40 a0 e1                                      mov r4, r0
0081390c  00 10 a0 e3                                      mov r1, #0
00813910  08 20 82 e2                                      add r2, r2, #8
00813914  00 20 84 e5                                      str r2, [r4]
00813918  04 11 84 e5                                      str r1, [r4, #0x104]
0081391c  08 11 c4 e5                                      strb r1, [r4, #0x108]
00813920  10 11 84 e5                                      str r1, [r4, #0x110]
00813924  0c 11 e0 e5                                      strb r1, [r0, #0x10c]!
00813928  18 01 84 e5                                      str r0, [r4, #0x118]
0081392c  14 01 84 e5                                      str r0, [r4, #0x114]
00813930  1c 11 84 e5                                      str r1, [r4, #0x11c]
00813934  24 11 c4 e5                                      strb r1, [r4, #0x124]
00813938  25 11 c4 e5                                      strb r1, [r4, #0x125]
0081393c  28 11 84 e5                                      str r1, [r4, #0x128]
00813940  04 00 84 e2                                      add r0, r4, #4
00813944  01 2c a0 e3                                      mov r2, #0x100
00813948  c4 ea eb eb                                      bl #0x30e460
0081394c  04 00 a0 e1                                      mov r0, r4
00813950  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00813954  90 11 18 00 c4 43 00 00                          .byte 0x90, 0x11, 0x18, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x0081395c, declared_size=96, range_size=96, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStructD1Ev
; demangled: NetStruct::~NetStruct()
; decoder-mode: arm
0081395c  70 40 2d e9                                      push {r4, r5, r6, lr}
00813960  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00813964  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00813968  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
0081396c  03 30 8f e0                                      add r3, pc, r3
00813970  02 20 93 e7                                      ldr r2, [r3, r2]
00813974  00 00 51 e3                                      cmp r1, #0
00813978  00 40 a0 e1                                      mov r4, r0
0081397c  08 20 82 e2                                      add r2, r2, #8
00813980  00 20 80 e5                                      str r2, [r0]
00813984  08 00 00 0a                                      beq #0x8139ac
00813988  43 5f 80 e2                                      add r5, r0, #0x10c
0081398c  05 00 a0 e1                                      mov r0, r5
00813990  10 11 94 e5                                      ldr r1, [r4, #0x110]
00813994  8d 75 ed eb                                      bl #0x370fd0
00813998  00 30 a0 e3                                      mov r3, #0
0081399c  18 51 84 e5                                      str r5, [r4, #0x118]
008139a0  1c 31 84 e5                                      str r3, [r4, #0x11c]
008139a4  14 51 84 e5                                      str r5, [r4, #0x114]
008139a8  10 31 84 e5                                      str r3, [r4, #0x110]
008139ac  04 00 a0 e1                                      mov r0, r4
008139b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008139b4  24 11 18 00 c4 43 00 00                          .byte 0x24, 0x11, 0x18, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x008139bc, declared_size=104, range_size=104, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStructD0Ev
; demangled: NetStruct::~NetStruct()
; decoder-mode: arm
008139bc  70 40 2d e9                                      push {r4, r5, r6, lr}
008139c0  54 30 9f e5                                      ldr r3, [pc, #0x54]
008139c4  54 20 9f e5                                      ldr r2, [pc, #0x54]
008139c8  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
008139cc  03 30 8f e0                                      add r3, pc, r3
008139d0  02 20 93 e7                                      ldr r2, [r3, r2]
008139d4  00 00 51 e3                                      cmp r1, #0
008139d8  00 40 a0 e1                                      mov r4, r0
008139dc  08 20 82 e2                                      add r2, r2, #8
008139e0  00 20 80 e5                                      str r2, [r0]
008139e4  08 00 00 0a                                      beq #0x813a0c
008139e8  43 5f 80 e2                                      add r5, r0, #0x10c
008139ec  05 00 a0 e1                                      mov r0, r5
008139f0  10 11 94 e5                                      ldr r1, [r4, #0x110]
008139f4  75 75 ed eb                                      bl #0x370fd0
008139f8  00 30 a0 e3                                      mov r3, #0
008139fc  18 51 84 e5                                      str r5, [r4, #0x118]
00813a00  1c 31 84 e5                                      str r3, [r4, #0x11c]
00813a04  14 51 84 e5                                      str r5, [r4, #0x114]
00813a08  10 31 84 e5                                      str r3, [r4, #0x110]
00813a0c  04 00 a0 e1                                      mov r0, r4
00813a10  8a f2 eb eb                                      bl #0x310440
00813a14  04 00 a0 e1                                      mov r0, r4
00813a18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00813a1c  c4 10 18 00 c4 43 00 00                          .byte 0xc4, 0x10, 0x18, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00814774, declared_size=608, range_size=608, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct17ProcessLostPacketEii
; demangled: NetStruct::ProcessLostPacket(int, int)
; decoder-mode: arm
00814774  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00814778  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
0081477c  54 d0 4d e2                                      sub sp, sp, #0x54
00814780  00 90 a0 e1                                      mov sb, r0
00814784  00 00 53 e3                                      cmp r3, #0
00814788  24 10 8d e5                                      str r1, [sp, #0x24]
0081478c  02 60 a0 e1                                      mov r6, r2
00814790  01 00 00 1a                                      bne #0x81479c
00814794  54 d0 8d e2                                      add sp, sp, #0x54
00814798  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081479c  43 8f 80 e2                                      add r8, r0, #0x10c
008147a0  24 70 8d e2                                      add r7, sp, #0x24
008147a4  08 00 a0 e1                                      mov r0, r8
008147a8  07 10 a0 e1                                      mov r1, r7
008147ac  19 fe ff eb                                      bl #0x814018
008147b0  04 30 90 e5                                      ldr r3, [r0, #4]
008147b4  00 00 53 e3                                      cmp r3, #0
008147b8  83 00 00 0a                                      beq #0x8149cc
008147bc  00 10 a0 e1                                      mov r1, r0
008147c0  00 00 00 ea                                      b #0x8147c8
008147c4  02 30 a0 e1                                      mov r3, r2
008147c8  10 20 93 e5                                      ldr r2, [r3, #0x10]
008147cc  06 00 52 e1                                      cmp r2, r6
008147d0  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
008147d4  08 20 93 a5                                      ldrge r2, [r3, #8]
008147d8  01 30 a0 b1                                      movlt r3, r1
008147dc  03 10 a0 e1                                      mov r1, r3
008147e0  00 00 52 e3                                      cmp r2, #0
008147e4  f6 ff ff 1a                                      bne #0x8147c4
008147e8  03 00 50 e1                                      cmp r0, r3
008147ec  e8 ff ff 0a                                      beq #0x814794
008147f0  10 20 93 e5                                      ldr r2, [r3, #0x10]
008147f4  06 00 52 e1                                      cmp r2, r6
008147f8  73 00 00 ca                                      bgt #0x8149cc
008147fc  03 00 50 e1                                      cmp r0, r3
00814800  e3 ff ff 0a                                      beq #0x814794
00814804  e0 b1 ff eb                                      bl #0x800f8c
00814808  24 10 9d e5                                      ldr r1, [sp, #0x24]
0081480c  00 30 90 e5                                      ldr r3, [r0]
00814810  0f e0 a0 e1                                      mov lr, pc
00814814  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00814818  07 10 a0 e1                                      mov r1, r7
0081481c  14 00 8d e5                                      str r0, [sp, #0x14]
00814820  08 00 a0 e1                                      mov r0, r8
00814824  fb fd ff eb                                      bl #0x814018
00814828  04 c0 90 e5                                      ldr ip, [r0, #4]
0081482c  00 10 a0 e1                                      mov r1, r0
00814830  00 00 5c e3                                      cmp ip, #0
00814834  00 20 a0 11                                      movne r2, r0
00814838  4a 00 00 1a                                      bne #0x814968
0081483c  01 c0 a0 e1                                      mov ip, r1
00814840  0c 00 51 e1                                      cmp r1, ip
00814844  50 00 00 0a                                      beq #0x81498c
00814848  10 20 9c e5                                      ldr r2, [ip, #0x10]
0081484c  0c 30 a0 e1                                      mov r3, ip
00814850  06 00 52 e1                                      cmp r2, r6
00814854  4c 00 00 ca                                      bgt #0x81498c
00814858  d8 a1 c3 e1                                      ldrd sl, fp, [r3, #0x18]
0081485c  07 10 a0 e1                                      mov r1, r7
00814860  24 70 93 e5                                      ldr r7, [r3, #0x24]
00814864  f8 a1 cd e1                                      strd sl, fp, [sp, #0x18]
00814868  08 00 a0 e1                                      mov r0, r8
0081486c  20 a0 93 e5                                      ldr sl, [r3, #0x20]
00814870  e8 fd ff eb                                      bl #0x814018
00814874  04 30 90 e5                                      ldr r3, [r0, #4]
00814878  00 00 53 e3                                      cmp r3, #0
0081487c  0f 00 00 0a                                      beq #0x8148c0
00814880  00 10 a0 e1                                      mov r1, r0
00814884  00 00 00 ea                                      b #0x81488c
00814888  02 30 a0 e1                                      mov r3, r2
0081488c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00814890  06 00 52 e1                                      cmp r2, r6
00814894  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00814898  08 20 93 a5                                      ldrge r2, [r3, #8]
0081489c  01 30 a0 b1                                      movlt r3, r1
008148a0  03 10 a0 e1                                      mov r1, r3
008148a4  00 00 52 e3                                      cmp r2, #0
008148a8  f6 ff ff 1a                                      bne #0x814888
008148ac  03 00 50 e1                                      cmp r0, r3
008148b0  02 00 00 0a                                      beq #0x8148c0
008148b4  10 20 93 e5                                      ldr r2, [r3, #0x10]
008148b8  06 00 52 e1                                      cmp r2, r6
008148bc  3e 00 00 da                                      ble #0x8149bc
008148c0  04 11 99 e5                                      ldr r1, [sb, #0x104]
008148c4  00 00 51 e3                                      cmp r1, #0
008148c8  b1 ff ff da                                      ble #0x814794
008148cc  00 80 a0 e3                                      mov r8, #0
008148d0  08 60 a0 e1                                      mov r6, r8
008148d4  0a c0 a0 e1                                      mov ip, sl
008148d8  03 00 00 ea                                      b #0x8148ec
008148dc  01 60 86 e2                                      add r6, r6, #1
008148e0  06 00 51 e1                                      cmp r1, r6
008148e4  04 80 88 e2                                      add r8, r8, #4
008148e8  a9 ff ff da                                      ble #0x814794
008148ec  3c 46 a0 e1                                      lsr r4, ip, r6
008148f0  20 30 66 e2                                      rsb r3, r6, #0x20
008148f4  17 43 84 e1                                      orr r4, r4, r7, lsl r3
008148f8  20 30 56 e2                                      subs r3, r6, #0x20
008148fc  37 43 a0 51                                      lsrpl r4, r7, r3
00814900  37 56 a0 e1                                      lsr r5, r7, r6
00814904  00 b0 a0 e3                                      mov fp, #0
00814908  01 a0 a0 e3                                      mov sl, #1
0081490c  0a 20 04 e0                                      and r2, r4, sl
00814910  0b 30 05 e0                                      and r3, r5, fp
00814914  03 b0 92 e1                                      orrs fp, r2, r3
00814918  ef ff ff 0a                                      beq #0x8148dc
0081491c  08 b0 89 e0                                      add fp, sb, r8
00814920  14 10 9d e5                                      ldr r1, [sp, #0x14]
00814924  04 00 9b e5                                      ldr r0, [fp, #4]
00814928  0c c0 8d e5                                      str ip, [sp, #0xc]
0081492c  bd 01 00 eb                                      bl #0x815028
00814930  00 20 50 e2                                      subs r2, r0, #0
00814934  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00814938  04 11 99 15                                      ldrne r1, [sb, #0x104]
0081493c  e6 ff ff 1a                                      bne #0x8148dc
00814940  04 00 9b e5                                      ldr r0, [fp, #4]
00814944  14 10 9d e5                                      ldr r1, [sp, #0x14]
00814948  d8 a1 cd e1                                      ldrd sl, fp, [sp, #0x18]
0081494c  0c c0 8d e5                                      str ip, [sp, #0xc]
00814950  f0 a0 cd e1                                      strd sl, fp, [sp]
00814954  b8 01 00 eb                                      bl #0x81503c
00814958  04 11 99 e5                                      ldr r1, [sb, #0x104]
0081495c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00814960  dd ff ff ea                                      b #0x8148dc
00814964  03 c0 a0 e1                                      mov ip, r3
00814968  10 30 9c e5                                      ldr r3, [ip, #0x10]
0081496c  06 00 53 e1                                      cmp r3, r6
00814970  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00814974  08 30 9c a5                                      ldrge r3, [ip, #8]
00814978  02 c0 a0 b1                                      movlt ip, r2
0081497c  0c 20 a0 e1                                      mov r2, ip
00814980  00 00 53 e3                                      cmp r3, #0
00814984  f6 ff ff 1a                                      bne #0x814964
00814988  ac ff ff ea                                      b #0x814840
0081498c  00 a0 a0 e3                                      mov sl, #0
00814990  00 b0 a0 e3                                      mov fp, #0
00814994  28 30 8d e2                                      add r3, sp, #0x28
00814998  44 00 8d e2                                      add r0, sp, #0x44
0081499c  48 20 8d e2                                      add r2, sp, #0x48
008149a0  f0 a3 cd e1                                      strd sl, fp, [sp, #0x30]
008149a4  48 c0 8d e5                                      str ip, [sp, #0x48]
008149a8  28 60 8d e5                                      str r6, [sp, #0x28]
008149ac  f8 a3 cd e1                                      strd sl, fp, [sp, #0x38]
008149b0  92 fe ff eb                                      bl #0x814400
008149b4  44 30 9d e5                                      ldr r3, [sp, #0x44]
008149b8  a6 ff ff ea                                      b #0x814858
008149bc  50 10 8d e2                                      add r1, sp, #0x50
008149c0  04 30 21 e5                                      str r3, [r1, #-4]!
008149c4  51 fa ff eb                                      bl #0x813310
008149c8  bc ff ff ea                                      b #0x8148c0
008149cc  00 30 a0 e1                                      mov r3, r0
008149d0  89 ff ff ea                                      b #0x8147fc

; FUNCTION 0x008149d4, declared_size=312, range_size=312, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct16AddPacketHistoryEiiy
; demangled: NetStruct::AddPacketHistory(int, int, unsigned long long)
; decoder-mode: arm
008149d4  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
008149d8  2c d0 4d e2                                      sub sp, sp, #0x2c
008149dc  28 50 8d e2                                      add r5, sp, #0x28
008149e0  24 10 25 e5                                      str r1, [r5, #-0x24]!
008149e4  43 6f 80 e2                                      add r6, r0, #0x10c
008149e8  00 70 a0 e1                                      mov r7, r0
008149ec  05 10 a0 e1                                      mov r1, r5
008149f0  06 00 a0 e1                                      mov r0, r6
008149f4  02 40 a0 e1                                      mov r4, r2
008149f8  86 fd ff eb                                      bl #0x814018
008149fc  10 20 90 e5                                      ldr r2, [r0, #0x10]
00814a00  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
00814a04  40 00 52 e3                                      cmp r2, #0x40
00814a08  03 30 8f e0                                      add r3, pc, r3
00814a0c  0a 00 00 9a                                      bls #0x814a3c
00814a10  06 00 a0 e1                                      mov r0, r6
00814a14  05 10 a0 e1                                      mov r1, r5
00814a18  7e fd ff eb                                      bl #0x814018
00814a1c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00814a20  00 40 a0 e1                                      mov r4, r0
00814a24  00 00 53 e3                                      cmp r3, #0
00814a28  2e 00 00 1a                                      bne #0x814ae8
00814a2c  07 00 a0 e1                                      mov r0, r7
00814a30  91 fa ff eb                                      bl #0x81347c
00814a34  2c d0 8d e2                                      add sp, sp, #0x2c
00814a38  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
00814a3c  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00814a40  06 00 a0 e1                                      mov r0, r6
00814a44  05 10 a0 e1                                      mov r1, r5
00814a48  02 30 93 e7                                      ldr r3, [r3, r2]
00814a4c  d0 60 c3 e1                                      ldrd r6, r7, [r3]
00814a50  70 fd ff eb                                      bl #0x814018
00814a54  04 c0 90 e5                                      ldr ip, [r0, #4]
00814a58  00 00 5c e3                                      cmp ip, #0
00814a5c  00 c0 a0 01                                      moveq ip, r0
00814a60  0a 00 00 0a                                      beq #0x814a90
00814a64  00 20 a0 e1                                      mov r2, r0
00814a68  00 00 00 ea                                      b #0x814a70
00814a6c  03 c0 a0 e1                                      mov ip, r3
00814a70  10 30 9c e5                                      ldr r3, [ip, #0x10]
00814a74  04 00 53 e1                                      cmp r3, r4
00814a78  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00814a7c  08 30 9c a5                                      ldrge r3, [ip, #8]
00814a80  02 c0 a0 b1                                      movlt ip, r2
00814a84  0c 20 a0 e1                                      mov r2, ip
00814a88  00 00 53 e3                                      cmp r3, #0
00814a8c  f6 ff ff 1a                                      bne #0x814a6c
00814a90  0c 00 50 e1                                      cmp r0, ip
00814a94  03 00 00 0a                                      beq #0x814aa8
00814a98  10 20 9c e5                                      ldr r2, [ip, #0x10]
00814a9c  0c 30 a0 e1                                      mov r3, ip
00814aa0  04 00 52 e1                                      cmp r2, r4
00814aa4  0b 00 00 da                                      ble #0x814ad8
00814aa8  00 10 a0 e1                                      mov r1, r0
00814aac  00 80 a0 e3                                      mov r8, #0
00814ab0  00 90 a0 e3                                      mov sb, #0
00814ab4  08 30 8d e2                                      add r3, sp, #8
00814ab8  20 00 8d e2                                      add r0, sp, #0x20
00814abc  24 20 8d e2                                      add r2, sp, #0x24
00814ac0  08 40 8d e5                                      str r4, [sp, #8]
00814ac4  f0 81 cd e1                                      strd r8, sb, [sp, #0x10]
00814ac8  24 c0 8d e5                                      str ip, [sp, #0x24]
00814acc  f8 81 cd e1                                      strd r8, sb, [sp, #0x18]
00814ad0  4a fe ff eb                                      bl #0x814400
00814ad4  20 30 9d e5                                      ldr r3, [sp, #0x20]
00814ad8  f8 61 c3 e1                                      strd r6, r7, [r3, #0x18]
00814adc  d8 04 cd e1                                      ldrd r0, r1, [sp, #0x48]
00814ae0  f0 02 c3 e1                                      strd r0, r1, [r3, #0x20]
00814ae4  d2 ff ff ea                                      b #0x814a34
00814ae8  04 10 90 e5                                      ldr r1, [r0, #4]
00814aec  29 71 ed eb                                      bl #0x370f98
00814af0  00 30 a0 e3                                      mov r3, #0
00814af4  10 30 84 e5                                      str r3, [r4, #0x10]
00814af8  18 00 84 e9                                      stmib r4, {r3, r4}
00814afc  0c 40 84 e5                                      str r4, [r4, #0xc]
00814b00  c9 ff ff ea                                      b #0x814a2c
; mapping-symbol data/literal pool
00814b04  88 00 18 00 7c 0e 00 00                          .byte 0x88, 0x00, 0x18, 0x00, 0x7c, 0x0e, 0x00, 0x00

; FUNCTION 0x00814b0c, declared_size=456, range_size=456, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct17SerializeInternalEbR12NetBitStreamii
; demangled: NetStruct::SerializeInternal(bool, NetBitStream&, int, int)
; decoder-mode: arm
00814b0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00814b10  00 00 51 e3                                      cmp r1, #0
00814b14  14 d0 4d e2                                      sub sp, sp, #0x14
00814b18  02 60 a0 e1                                      mov r6, r2
00814b1c  03 b0 a0 e1                                      mov fp, r3
00814b20  00 80 a0 e1                                      mov r8, r0
00814b24  05 00 00 1a                                      bne #0x814b40
00814b28  06 00 a0 e1                                      mov r0, r6
00814b2c  00 10 a0 e3                                      mov r1, #0
00814b30  3d e6 ff eb                                      bl #0x80e42c
00814b34  00 00 a0 e3                                      mov r0, #0
00814b38  14 d0 8d e2                                      add sp, sp, #0x14
00814b3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00814b40  00 30 90 e5                                      ldr r3, [r0]
00814b44  0b 10 a0 e1                                      mov r1, fp
00814b48  0f e0 a0 e1                                      mov lr, pc
00814b4c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00814b50  00 00 50 e3                                      cmp r0, #0
00814b54  f3 ff ff 0a                                      beq #0x814b28
00814b58  01 10 a0 e3                                      mov r1, #1
00814b5c  06 00 a0 e1                                      mov r0, r6
00814b60  31 e6 ff eb                                      bl #0x80e42c
00814b64  08 b1 ff eb                                      bl #0x800f8c
00814b68  0b 10 a0 e1                                      mov r1, fp
00814b6c  00 30 90 e5                                      ldr r3, [r0]
00814b70  0f e0 a0 e1                                      mov lr, pc
00814b74  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00814b78  04 31 98 e5                                      ldr r3, [r8, #0x104]
00814b7c  00 90 a0 e1                                      mov sb, r0
00814b80  00 00 53 e3                                      cmp r3, #0
00814b84  35 00 00 da                                      ble #0x814c60
00814b88  1c 70 96 e5                                      ldr r7, [r6, #0x1c]
00814b8c  00 00 57 e3                                      cmp r7, #0
00814b90  4b 00 00 1a                                      bne #0x814cc4
00814b94  00 00 a0 e3                                      mov r0, #0
00814b98  00 10 a0 e3                                      mov r1, #0
00814b9c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00814ba0  01 a0 a0 e3                                      mov sl, #1
00814ba4  07 31 88 e0                                      add r3, r8, r7, lsl #2
00814ba8  04 00 93 e5                                      ldr r0, [r3, #4]
00814bac  06 10 a0 e1                                      mov r1, r6
00814bb0  09 20 a0 e1                                      mov r2, sb
00814bb4  6b 01 00 eb                                      bl #0x815168
00814bb8  00 50 a0 e3                                      mov r5, #0
00814bbc  05 00 50 e1                                      cmp r0, r5
00814bc0  20 30 67 e2                                      rsb r3, r7, #0x20
00814bc4  00 40 a0 03                                      moveq r4, #0
00814bc8  00 50 a0 03                                      moveq r5, #0
00814bcc  03 00 00 0a                                      beq #0x814be0
00814bd0  3a 53 a0 e1                                      lsr r5, sl, r3
00814bd4  20 30 57 e2                                      subs r3, r7, #0x20
00814bd8  1a 53 a0 51                                      lslpl r5, sl, r3
00814bdc  1a 47 a0 e1                                      lsl r4, sl, r7
00814be0  04 31 98 e5                                      ldr r3, [r8, #0x104]
00814be4  01 70 87 e2                                      add r7, r7, #1
00814be8  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
00814bec  07 00 53 e1                                      cmp r3, r7
00814bf0  04 00 80 e1                                      orr r0, r0, r4
00814bf4  05 10 81 e1                                      orr r1, r1, r5
00814bf8  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00814bfc  1a 00 00 da                                      ble #0x814c6c
00814c00  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00814c04  00 00 53 e3                                      cmp r3, #0
00814c08  e5 ff ff 0a                                      beq #0x814ba4
00814c0c  0b 10 a0 e1                                      mov r1, fp
00814c10  38 20 9d e5                                      ldr r2, [sp, #0x38]
00814c14  08 00 a0 e1                                      mov r0, r8
00814c18  d8 40 cd e1                                      ldrd r4, r5, [sp, #8]
00814c1c  f0 40 cd e1                                      strd r4, r5, [sp]
00814c20  6b ff ff eb                                      bl #0x8149d4
00814c24  04 11 98 e5                                      ldr r1, [r8, #0x104]
00814c28  01 00 a0 e3                                      mov r0, #1
00814c2c  20 c0 61 e2                                      rsb ip, r1, #0x20
00814c30  30 3c a0 e1                                      lsr r3, r0, ip
00814c34  10 21 a0 e1                                      lsl r2, r0, r1
00814c38  20 c0 51 e2                                      subs ip, r1, #0x20
00814c3c  10 3c a0 51                                      lslpl r3, r0, ip
00814c40  00 00 e0 e3                                      mvn r0, #0
00814c44  02 00 90 e0                                      adds r0, r0, r2
00814c48  00 10 e0 e3                                      mvn r1, #0
00814c4c  03 10 a1 e0                                      adc r1, r1, r3
00814c50  04 00 50 e1                                      cmp r0, r4
00814c54  16 00 00 0a                                      beq #0x814cb4
00814c58  01 00 a0 e3                                      mov r0, #1
00814c5c  b5 ff ff ea                                      b #0x814b38
00814c60  00 40 a0 e3                                      mov r4, #0
00814c64  00 50 a0 e3                                      mov r5, #0
00814c68  f8 40 cd e1                                      strd r4, r5, [sp, #8]
00814c6c  1c 40 96 e5                                      ldr r4, [r6, #0x1c]
00814c70  00 00 54 e3                                      cmp r4, #0
00814c74  e4 ff ff 1a                                      bne #0x814c0c
00814c78  00 00 53 e3                                      cmp r3, #0
00814c7c  e2 ff ff da                                      ble #0x814c0c
00814c80  00 60 e0 e3                                      mvn r6, #0
00814c84  00 70 e0 e3                                      mvn r7, #0
00814c88  04 31 88 e0                                      add r3, r8, r4, lsl #2
00814c8c  04 00 93 e5                                      ldr r0, [r3, #4]
00814c90  09 10 a0 e1                                      mov r1, sb
00814c94  01 20 a0 e3                                      mov r2, #1
00814c98  f0 60 cd e1                                      strd r6, r7, [sp]
00814c9c  e6 00 00 eb                                      bl #0x81503c
00814ca0  04 31 98 e5                                      ldr r3, [r8, #0x104]
00814ca4  01 40 84 e2                                      add r4, r4, #1
00814ca8  04 00 53 e1                                      cmp r3, r4
00814cac  f5 ff ff ca                                      bgt #0x814c88
00814cb0  d5 ff ff ea                                      b #0x814c0c
00814cb4  05 00 51 e1                                      cmp r1, r5
00814cb8  02 00 a0 03                                      moveq r0, #2
00814cbc  01 00 a0 13                                      movne r0, #1
00814cc0  9c ff ff ea                                      b #0x814b38
00814cc4  00 00 a0 e3                                      mov r0, #0
00814cc8  00 10 a0 e3                                      mov r1, #0
00814ccc  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00814cd0  cd ff ff ea                                      b #0x814c0c

; FUNCTION 0x00814cd4, declared_size=4, range_size=4, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct20ConditionalSerializeEbR12NetBitStreamii
; demangled: NetStruct::ConditionalSerialize(bool, NetBitStream&, int, int)
; decoder-mode: arm
00814cd4  8c ff ff ea                                      b #0x814b0c

; FUNCTION 0x00814cd8, declared_size=40, range_size=40, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct17SerializeDisabledER12NetBitStream
; demangled: NetStruct::SerializeDisabled(NetBitStream&)
; decoder-mode: arm
00814cd8  04 e0 2d e5                                      str lr, [sp, #-4]!
00814cdc  00 c0 e0 e3                                      mvn ip, #0
00814ce0  0c d0 4d e2                                      sub sp, sp, #0xc
00814ce4  01 20 a0 e1                                      mov r2, r1
00814ce8  0c 30 a0 e1                                      mov r3, ip
00814cec  00 10 a0 e3                                      mov r1, #0
00814cf0  00 c0 8d e5                                      str ip, [sp]
00814cf4  84 ff ff eb                                      bl #0x814b0c
00814cf8  0c d0 8d e2                                      add sp, sp, #0xc
00814cfc  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00814d00, declared_size=40, range_size=40, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct9SerializeER12NetBitStreamii
; demangled: NetStruct::Serialize(NetBitStream&, int, int)
; decoder-mode: arm
00814d00  04 e0 2d e5                                      str lr, [sp, #-4]!
00814d04  02 c0 a0 e1                                      mov ip, r2
00814d08  0c d0 4d e2                                      sub sp, sp, #0xc
00814d0c  00 30 8d e5                                      str r3, [sp]
00814d10  01 20 a0 e1                                      mov r2, r1
00814d14  0c 30 a0 e1                                      mov r3, ip
00814d18  01 10 a0 e3                                      mov r1, #1
00814d1c  7a ff ff eb                                      bl #0x814b0c
00814d20  0c d0 8d e2                                      add sp, sp, #0xc
00814d24  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00814d28, declared_size=584, range_size=584, mode=arm
; class-group: NetStruct
; alias: _ZN9NetStruct25ProcessAcknowledgedPacketEii
; demangled: NetStruct::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
00814d28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00814d2c  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00814d30  4c d0 4d e2                                      sub sp, sp, #0x4c
00814d34  00 a0 a0 e1                                      mov sl, r0
00814d38  00 00 53 e3                                      cmp r3, #0
00814d3c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00814d40  02 40 a0 e1                                      mov r4, r2
00814d44  01 00 00 1a                                      bne #0x814d50
00814d48  4c d0 8d e2                                      add sp, sp, #0x4c
00814d4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00814d50  43 8f 80 e2                                      add r8, r0, #0x10c
00814d54  1c 50 8d e2                                      add r5, sp, #0x1c
00814d58  08 00 a0 e1                                      mov r0, r8
00814d5c  05 10 a0 e1                                      mov r1, r5
00814d60  ac fc ff eb                                      bl #0x814018
00814d64  04 30 90 e5                                      ldr r3, [r0, #4]
00814d68  00 00 53 e3                                      cmp r3, #0
00814d6c  7b 00 00 0a                                      beq #0x814f60
00814d70  00 10 a0 e1                                      mov r1, r0
00814d74  d8 60 cd e1                                      ldrd r6, r7, [sp, #8]
00814d78  00 00 00 ea                                      b #0x814d80
00814d7c  02 30 a0 e1                                      mov r3, r2
00814d80  10 20 93 e5                                      ldr r2, [r3, #0x10]
00814d84  04 00 52 e1                                      cmp r2, r4
00814d88  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00814d8c  08 20 93 a5                                      ldrge r2, [r3, #8]
00814d90  01 30 a0 b1                                      movlt r3, r1
00814d94  03 10 a0 e1                                      mov r1, r3
00814d98  00 00 52 e3                                      cmp r2, #0
00814d9c  f6 ff ff 1a                                      bne #0x814d7c
00814da0  03 00 50 e1                                      cmp r0, r3
00814da4  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00814da8  e6 ff ff 0a                                      beq #0x814d48
00814dac  10 20 93 e5                                      ldr r2, [r3, #0x10]
00814db0  04 00 52 e1                                      cmp r2, r4
00814db4  69 00 00 ca                                      bgt #0x814f60
00814db8  03 00 50 e1                                      cmp r0, r3
00814dbc  e1 ff ff 0a                                      beq #0x814d48
00814dc0  71 b0 ff eb                                      bl #0x800f8c
00814dc4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00814dc8  00 30 90 e5                                      ldr r3, [r0]
00814dcc  0f e0 a0 e1                                      mov lr, pc
00814dd0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00814dd4  05 10 a0 e1                                      mov r1, r5
00814dd8  00 90 a0 e1                                      mov sb, r0
00814ddc  08 00 a0 e1                                      mov r0, r8
00814de0  8c fc ff eb                                      bl #0x814018
00814de4  04 c0 90 e5                                      ldr ip, [r0, #4]
00814de8  00 10 a0 e1                                      mov r1, r0
00814dec  00 00 5c e3                                      cmp ip, #0
00814df0  5c 00 00 0a                                      beq #0x814f68
00814df4  01 20 a0 e1                                      mov r2, r1
00814df8  d8 60 cd e1                                      ldrd r6, r7, [sp, #8]
00814dfc  00 00 00 ea                                      b #0x814e04
00814e00  03 c0 a0 e1                                      mov ip, r3
00814e04  10 30 9c e5                                      ldr r3, [ip, #0x10]
00814e08  04 00 53 e1                                      cmp r3, r4
00814e0c  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00814e10  08 30 9c a5                                      ldrge r3, [ip, #8]
00814e14  02 c0 a0 b1                                      movlt ip, r2
00814e18  0c 20 a0 e1                                      mov r2, ip
00814e1c  00 00 53 e3                                      cmp r3, #0
00814e20  f6 ff ff 1a                                      bne #0x814e00
00814e24  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00814e28  0c 00 51 e1                                      cmp r1, ip
00814e2c  03 00 00 0a                                      beq #0x814e40
00814e30  10 20 9c e5                                      ldr r2, [ip, #0x10]
00814e34  0c 30 a0 e1                                      mov r3, ip
00814e38  04 00 52 e1                                      cmp r2, r4
00814e3c  0a 00 00 da                                      ble #0x814e6c
00814e40  20 30 8d e2                                      add r3, sp, #0x20
00814e44  00 60 a0 e3                                      mov r6, #0
00814e48  00 70 a0 e3                                      mov r7, #0
00814e4c  3c 00 8d e2                                      add r0, sp, #0x3c
00814e50  40 20 8d e2                                      add r2, sp, #0x40
00814e54  f8 62 cd e1                                      strd r6, r7, [sp, #0x28]
00814e58  40 c0 8d e5                                      str ip, [sp, #0x40]
00814e5c  20 40 8d e5                                      str r4, [sp, #0x20]
00814e60  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
00814e64  65 fd ff eb                                      bl #0x814400
00814e68  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00814e6c  d8 61 c3 e1                                      ldrd r6, r7, [r3, #0x18]
00814e70  05 10 a0 e1                                      mov r1, r5
00814e74  24 50 93 e5                                      ldr r5, [r3, #0x24]
00814e78  f0 61 cd e1                                      strd r6, r7, [sp, #0x10]
00814e7c  08 00 a0 e1                                      mov r0, r8
00814e80  20 80 93 e5                                      ldr r8, [r3, #0x20]
00814e84  63 fc ff eb                                      bl #0x814018
00814e88  04 30 90 e5                                      ldr r3, [r0, #4]
00814e8c  00 00 53 e3                                      cmp r3, #0
00814e90  14 00 00 0a                                      beq #0x814ee8
00814e94  00 10 a0 e1                                      mov r1, r0
00814e98  d8 60 cd e1                                      ldrd r6, r7, [sp, #8]
00814e9c  00 00 00 ea                                      b #0x814ea4
00814ea0  02 30 a0 e1                                      mov r3, r2
00814ea4  10 20 93 e5                                      ldr r2, [r3, #0x10]
00814ea8  04 00 52 e1                                      cmp r2, r4
00814eac  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00814eb0  08 20 93 a5                                      ldrge r2, [r3, #8]
00814eb4  01 30 a0 b1                                      movlt r3, r1
00814eb8  03 10 a0 e1                                      mov r1, r3
00814ebc  00 00 52 e3                                      cmp r2, #0
00814ec0  f6 ff ff 1a                                      bne #0x814ea0
00814ec4  03 00 50 e1                                      cmp r0, r3
00814ec8  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00814ecc  05 00 00 0a                                      beq #0x814ee8
00814ed0  10 20 93 e5                                      ldr r2, [r3, #0x10]
00814ed4  04 00 52 e1                                      cmp r2, r4
00814ed8  02 00 00 ca                                      bgt #0x814ee8
00814edc  48 10 8d e2                                      add r1, sp, #0x48
00814ee0  04 30 21 e5                                      str r3, [r1, #-4]!
00814ee4  09 f9 ff eb                                      bl #0x813310
00814ee8  04 11 9a e5                                      ldr r1, [sl, #0x104]
00814eec  00 00 51 e3                                      cmp r1, #0
00814ef0  94 ff ff da                                      ble #0x814d48
00814ef4  00 40 a0 e3                                      mov r4, #0
00814ef8  0a c0 a0 e1                                      mov ip, sl
00814efc  02 00 00 ea                                      b #0x814f0c
00814f00  01 40 84 e2                                      add r4, r4, #1
00814f04  04 00 51 e1                                      cmp r1, r4
00814f08  8e ff ff da                                      ble #0x814d48
00814f0c  38 64 a0 e1                                      lsr r6, r8, r4
00814f10  20 30 64 e2                                      rsb r3, r4, #0x20
00814f14  15 63 86 e1                                      orr r6, r6, r5, lsl r3
00814f18  20 30 54 e2                                      subs r3, r4, #0x20
00814f1c  35 63 a0 51                                      lsrpl r6, r5, r3
00814f20  35 74 a0 e1                                      lsr r7, r5, r4
00814f24  00 b0 a0 e3                                      mov fp, #0
00814f28  01 a0 a0 e3                                      mov sl, #1
00814f2c  0a 20 06 e0                                      and r2, r6, sl
00814f30  0b 30 07 e0                                      and r3, r7, fp
00814f34  03 b0 92 e1                                      orrs fp, r2, r3
00814f38  f0 ff ff 0a                                      beq #0x814f00
00814f3c  04 31 8c e0                                      add r3, ip, r4, lsl #2
00814f40  04 00 93 e5                                      ldr r0, [r3, #4]
00814f44  09 10 a0 e1                                      mov r1, sb
00814f48  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
00814f4c  04 c0 8d e5                                      str ip, [sp, #4]
00814f50  2b 00 00 eb                                      bl #0x815004
00814f54  04 c0 9d e5                                      ldr ip, [sp, #4]
00814f58  04 11 9c e5                                      ldr r1, [ip, #0x104]
00814f5c  e7 ff ff ea                                      b #0x814f00
00814f60  00 30 a0 e1                                      mov r3, r0
00814f64  93 ff ff ea                                      b #0x814db8
00814f68  01 c0 a0 e1                                      mov ip, r1
00814f6c  ad ff ff ea                                      b #0x814e28
