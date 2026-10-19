; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe728, declared_size=96, range_size=96, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE25ProcessAcknowledgedPacketEii
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
007fe728  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fe72c  04 30 90 e5                                      ldr r3, [r0, #4]
007fe730  00 60 a0 e1                                      mov r6, r0
007fe734  01 70 a0 e1                                      mov r7, r1
007fe738  00 00 53 e3                                      cmp r3, #0
007fe73c  02 80 a0 e1                                      mov r8, r2
007fe740  0f 00 00 da                                      ble #0x7fe784
007fe744  00 50 a0 e1                                      mov r5, r0
007fe748  00 40 a0 e3                                      mov r4, #0
007fe74c  36 a0 a0 e3                                      mov sl, #0x36
007fe750  9a 04 00 e0                                      mul r0, sl, r4
007fe754  08 30 95 e5                                      ldr r3, [r5, #8]
007fe758  01 00 80 e2                                      add r0, r0, #1
007fe75c  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fe760  07 10 a0 e1                                      mov r1, r7
007fe764  08 20 a0 e1                                      mov r2, r8
007fe768  0f e0 a0 e1                                      mov lr, pc
007fe76c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007fe770  04 30 96 e5                                      ldr r3, [r6, #4]
007fe774  01 40 84 e2                                      add r4, r4, #1
007fe778  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe77c  04 00 53 e1                                      cmp r3, r4
007fe780  f2 ff ff ca                                      bgt #0x7fe750
007fe784  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007fe788, declared_size=96, range_size=96, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE17ProcessLostPacketEii
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::ProcessLostPacket(int, int)
; decoder-mode: arm
007fe788  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fe78c  04 30 90 e5                                      ldr r3, [r0, #4]
007fe790  00 60 a0 e1                                      mov r6, r0
007fe794  01 70 a0 e1                                      mov r7, r1
007fe798  00 00 53 e3                                      cmp r3, #0
007fe79c  02 80 a0 e1                                      mov r8, r2
007fe7a0  0f 00 00 da                                      ble #0x7fe7e4
007fe7a4  00 50 a0 e1                                      mov r5, r0
007fe7a8  00 40 a0 e3                                      mov r4, #0
007fe7ac  36 a0 a0 e3                                      mov sl, #0x36
007fe7b0  9a 04 00 e0                                      mul r0, sl, r4
007fe7b4  08 30 95 e5                                      ldr r3, [r5, #8]
007fe7b8  01 00 80 e2                                      add r0, r0, #1
007fe7bc  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fe7c0  07 10 a0 e1                                      mov r1, r7
007fe7c4  08 20 a0 e1                                      mov r2, r8
007fe7c8  0f e0 a0 e1                                      mov lr, pc
007fe7cc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
007fe7d0  04 30 96 e5                                      ldr r3, [r6, #4]
007fe7d4  01 40 84 e2                                      add r4, r4, #1
007fe7d8  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe7dc  04 00 53 e1                                      cmp r3, r4
007fe7e0  f2 ff ff ca                                      bgt #0x7fe7b0
007fe7e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007fe7e8, declared_size=112, range_size=112, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE13HasDataToSendEi
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::HasDataToSend(int)
; decoder-mode: arm
007fe7e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fe7ec  04 30 90 e5                                      ldr r3, [r0, #4]
007fe7f0  00 60 a0 e1                                      mov r6, r0
007fe7f4  01 70 a0 e1                                      mov r7, r1
007fe7f8  00 00 53 e3                                      cmp r3, #0
007fe7fc  13 00 00 da                                      ble #0x7fe850
007fe800  00 50 a0 e1                                      mov r5, r0
007fe804  00 40 a0 e3                                      mov r4, #0
007fe808  36 80 a0 e3                                      mov r8, #0x36
007fe80c  03 00 00 ea                                      b #0x7fe820
007fe810  04 30 96 e5                                      ldr r3, [r6, #4]
007fe814  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe818  04 00 53 e1                                      cmp r3, r4
007fe81c  0b 00 00 da                                      ble #0x7fe850
007fe820  98 04 00 e0                                      mul r0, r8, r4
007fe824  08 30 95 e5                                      ldr r3, [r5, #8]
007fe828  01 00 80 e2                                      add r0, r0, #1
007fe82c  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fe830  07 10 a0 e1                                      mov r1, r7
007fe834  0f e0 a0 e1                                      mov lr, pc
007fe838  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007fe83c  00 00 50 e3                                      cmp r0, #0
007fe840  01 40 84 e2                                      add r4, r4, #1
007fe844  f1 ff ff 0a                                      beq #0x7fe810
007fe848  01 00 a0 e3                                      mov r0, #1
007fe84c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fe850  00 00 a0 e3                                      mov r0, #0
007fe854  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fe894, declared_size=208, range_size=208, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE9SerializeER12NetBitStreamii
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::Serialize(NetBitStream&, int, int)
; decoder-mode: arm
007fe894  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fe898  02 80 a0 e1                                      mov r8, r2
007fe89c  01 a0 a0 e1                                      mov sl, r1
007fe8a0  00 20 90 e5                                      ldr r2, [r0]
007fe8a4  08 10 a0 e1                                      mov r1, r8
007fe8a8  00 70 a0 e1                                      mov r7, r0
007fe8ac  03 90 a0 e1                                      mov sb, r3
007fe8b0  0f e0 a0 e1                                      mov lr, pc
007fe8b4  00 f0 92 e5                                      ldr pc, [r2]
007fe8b8  00 60 50 e2                                      subs r6, r0, #0
007fe8bc  23 00 00 0a                                      beq #0x7fe950
007fe8c0  0a 00 a0 e1                                      mov r0, sl
007fe8c4  01 10 a0 e3                                      mov r1, #1
007fe8c8  d7 3e 00 eb                                      bl #0x80e42c
007fe8cc  04 30 97 e5                                      ldr r3, [r7, #4]
007fe8d0  00 00 53 e3                                      cmp r3, #0
007fe8d4  00 60 a0 d3                                      movle r6, #0
007fe8d8  1a 00 00 da                                      ble #0x7fe948
007fe8dc  00 40 a0 e3                                      mov r4, #0
007fe8e0  07 50 a0 e1                                      mov r5, r7
007fe8e4  04 60 a0 e1                                      mov r6, r4
007fe8e8  36 b0 a0 e3                                      mov fp, #0x36
007fe8ec  03 00 00 ea                                      b #0x7fe900
007fe8f0  01 40 84 e2                                      add r4, r4, #1
007fe8f4  04 00 53 e1                                      cmp r3, r4
007fe8f8  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe8fc  11 00 00 da                                      ble #0x7fe948
007fe900  00 00 56 e3                                      cmp r6, #0
007fe904  f9 ff ff 1a                                      bne #0x7fe8f0
007fe908  9b 04 00 e0                                      mul r0, fp, r4
007fe90c  08 c0 95 e5                                      ldr ip, [r5, #8]
007fe910  01 00 80 e2                                      add r0, r0, #1
007fe914  09 30 a0 e1                                      mov r3, sb
007fe918  80 01 87 e0                                      add r0, r7, r0, lsl #3
007fe91c  0a 10 a0 e1                                      mov r1, sl
007fe920  08 20 a0 e1                                      mov r2, r8
007fe924  0f e0 a0 e1                                      mov lr, pc
007fe928  08 f0 9c e5                                      ldr pc, [ip, #8]
007fe92c  04 30 97 e5                                      ldr r3, [r7, #4]
007fe930  00 00 50 e3                                      cmp r0, #0
007fe934  01 40 84 e2                                      add r4, r4, #1
007fe938  01 60 a0 13                                      movne r6, #1
007fe93c  04 00 53 e1                                      cmp r3, r4
007fe940  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe944  ed ff ff ca                                      bgt #0x7fe900
007fe948  06 00 a0 e1                                      mov r0, r6
007fe94c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007fe950  0a 00 a0 e1                                      mov r0, sl
007fe954  06 10 a0 e1                                      mov r1, r6
007fe958  b3 3e 00 eb                                      bl #0x80e42c
007fe95c  06 00 a0 e1                                      mov r0, r6
007fe960  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007fe964, declared_size=176, range_size=176, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE4LoadER12NetBitStreamii
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::Load(NetBitStream&, int, int)
; decoder-mode: arm
007fe964  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fe968  00 70 a0 e1                                      mov r7, r0
007fe96c  01 00 a0 e1                                      mov r0, r1
007fe970  01 80 a0 e1                                      mov r8, r1
007fe974  02 90 a0 e1                                      mov sb, r2
007fe978  03 a0 a0 e1                                      mov sl, r3
007fe97c  c5 3e 00 eb                                      bl #0x80e498
007fe980  00 00 50 e3                                      cmp r0, #0
007fe984  1f 00 00 0a                                      beq #0x7fea08
007fe988  04 30 97 e5                                      ldr r3, [r7, #4]
007fe98c  00 00 53 e3                                      cmp r3, #0
007fe990  1c 00 00 da                                      ble #0x7fea08
007fe994  00 40 a0 e3                                      mov r4, #0
007fe998  07 50 a0 e1                                      mov r5, r7
007fe99c  04 60 a0 e1                                      mov r6, r4
007fe9a0  36 b0 a0 e3                                      mov fp, #0x36
007fe9a4  03 00 00 ea                                      b #0x7fe9b8
007fe9a8  01 40 84 e2                                      add r4, r4, #1
007fe9ac  04 00 53 e1                                      cmp r3, r4
007fe9b0  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe9b4  11 00 00 da                                      ble #0x7fea00
007fe9b8  00 00 56 e3                                      cmp r6, #0
007fe9bc  f9 ff ff 1a                                      bne #0x7fe9a8
007fe9c0  9b 04 00 e0                                      mul r0, fp, r4
007fe9c4  08 c0 95 e5                                      ldr ip, [r5, #8]
007fe9c8  01 00 80 e2                                      add r0, r0, #1
007fe9cc  0a 30 a0 e1                                      mov r3, sl
007fe9d0  80 01 87 e0                                      add r0, r7, r0, lsl #3
007fe9d4  08 10 a0 e1                                      mov r1, r8
007fe9d8  09 20 a0 e1                                      mov r2, sb
007fe9dc  0f e0 a0 e1                                      mov lr, pc
007fe9e0  14 f0 9c e5                                      ldr pc, [ip, #0x14]
007fe9e4  04 30 97 e5                                      ldr r3, [r7, #4]
007fe9e8  00 00 50 e3                                      cmp r0, #0
007fe9ec  01 40 84 e2                                      add r4, r4, #1
007fe9f0  01 60 a0 13                                      movne r6, #1
007fe9f4  04 00 53 e1                                      cmp r3, r4
007fe9f8  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fe9fc  ed ff ff ca                                      bgt #0x7fe9b8
007fea00  06 00 a0 e1                                      mov r0, r6
007fea04  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007fea08  00 60 a0 e3                                      mov r6, #0
007fea0c  06 00 a0 e1                                      mov r0, r6
007fea10  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007fea58, declared_size=108, range_size=108, mode=arm
; class-group: NetStructArray<CMatching::MemberInfoNetStruct, 32u>
; alias: _ZN14NetStructArrayIN9CMatching19MemberInfoNetStructELj32EE5EraseER12NetBitStream
; demangled: NetStructArray<CMatching::MemberInfoNetStruct, 32u>::Erase(NetBitStream&)
; decoder-mode: arm
007fea58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fea5c  00 60 a0 e1                                      mov r6, r0
007fea60  01 00 a0 e1                                      mov r0, r1
007fea64  01 70 a0 e1                                      mov r7, r1
007fea68  8a 3e 00 eb                                      bl #0x80e498
007fea6c  00 00 50 e3                                      cmp r0, #0
007fea70  11 00 00 0a                                      beq #0x7feabc
007fea74  04 30 96 e5                                      ldr r3, [r6, #4]
007fea78  00 00 53 e3                                      cmp r3, #0
007fea7c  0e 00 00 da                                      ble #0x7feabc
007fea80  06 50 a0 e1                                      mov r5, r6
007fea84  00 40 a0 e3                                      mov r4, #0
007fea88  36 80 a0 e3                                      mov r8, #0x36
007fea8c  98 04 00 e0                                      mul r0, r8, r4
007fea90  08 30 95 e5                                      ldr r3, [r5, #8]
007fea94  01 00 80 e2                                      add r0, r0, #1
007fea98  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fea9c  07 10 a0 e1                                      mov r1, r7
007feaa0  0f e0 a0 e1                                      mov lr, pc
007feaa4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007feaa8  04 30 96 e5                                      ldr r3, [r6, #4]
007feaac  01 40 84 e2                                      add r4, r4, #1
007feab0  1b 5e 85 e2                                      add r5, r5, #0x1b0
007feab4  04 00 53 e1                                      cmp r3, r4
007feab8  f3 ff ff ca                                      bgt #0x7fea8c
007feabc  00 00 a0 e3                                      mov r0, #0
007feac0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
