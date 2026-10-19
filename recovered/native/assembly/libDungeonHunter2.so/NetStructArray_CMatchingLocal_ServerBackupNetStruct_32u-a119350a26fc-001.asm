; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008056c0, declared_size=112, range_size=112, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE13HasDataToSendEi
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::HasDataToSend(int)
; decoder-mode: arm
008056c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008056c4  04 30 90 e5                                      ldr r3, [r0, #4]
008056c8  00 60 a0 e1                                      mov r6, r0
008056cc  01 70 a0 e1                                      mov r7, r1
008056d0  00 00 53 e3                                      cmp r3, #0
008056d4  13 00 00 da                                      ble #0x805728
008056d8  00 50 a0 e1                                      mov r5, r0
008056dc  00 40 a0 e3                                      mov r4, #0
008056e0  2b 80 a0 e3                                      mov r8, #0x2b
008056e4  03 00 00 ea                                      b #0x8056f8
008056e8  04 30 96 e5                                      ldr r3, [r6, #4]
008056ec  56 5f 85 e2                                      add r5, r5, #0x158
008056f0  04 00 53 e1                                      cmp r3, r4
008056f4  0b 00 00 da                                      ble #0x805728
008056f8  98 04 00 e0                                      mul r0, r8, r4
008056fc  08 30 95 e5                                      ldr r3, [r5, #8]
00805700  01 00 80 e2                                      add r0, r0, #1
00805704  80 01 86 e0                                      add r0, r6, r0, lsl #3
00805708  07 10 a0 e1                                      mov r1, r7
0080570c  0f e0 a0 e1                                      mov lr, pc
00805710  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00805714  00 00 50 e3                                      cmp r0, #0
00805718  01 40 84 e2                                      add r4, r4, #1
0080571c  f1 ff ff 0a                                      beq #0x8056e8
00805720  01 00 a0 e3                                      mov r0, #1
00805724  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00805728  00 00 a0 e3                                      mov r0, #0
0080572c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00805730, declared_size=96, range_size=96, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE25ProcessAcknowledgedPacketEii
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
00805730  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00805734  04 30 90 e5                                      ldr r3, [r0, #4]
00805738  00 60 a0 e1                                      mov r6, r0
0080573c  01 70 a0 e1                                      mov r7, r1
00805740  00 00 53 e3                                      cmp r3, #0
00805744  02 80 a0 e1                                      mov r8, r2
00805748  0f 00 00 da                                      ble #0x80578c
0080574c  00 50 a0 e1                                      mov r5, r0
00805750  00 40 a0 e3                                      mov r4, #0
00805754  2b a0 a0 e3                                      mov sl, #0x2b
00805758  9a 04 00 e0                                      mul r0, sl, r4
0080575c  08 30 95 e5                                      ldr r3, [r5, #8]
00805760  01 00 80 e2                                      add r0, r0, #1
00805764  80 01 86 e0                                      add r0, r6, r0, lsl #3
00805768  07 10 a0 e1                                      mov r1, r7
0080576c  08 20 a0 e1                                      mov r2, r8
00805770  0f e0 a0 e1                                      mov lr, pc
00805774  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00805778  04 30 96 e5                                      ldr r3, [r6, #4]
0080577c  01 40 84 e2                                      add r4, r4, #1
00805780  56 5f 85 e2                                      add r5, r5, #0x158
00805784  04 00 53 e1                                      cmp r3, r4
00805788  f2 ff ff ca                                      bgt #0x805758
0080578c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00805790, declared_size=96, range_size=96, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE17ProcessLostPacketEii
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::ProcessLostPacket(int, int)
; decoder-mode: arm
00805790  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00805794  04 30 90 e5                                      ldr r3, [r0, #4]
00805798  00 60 a0 e1                                      mov r6, r0
0080579c  01 70 a0 e1                                      mov r7, r1
008057a0  00 00 53 e3                                      cmp r3, #0
008057a4  02 80 a0 e1                                      mov r8, r2
008057a8  0f 00 00 da                                      ble #0x8057ec
008057ac  00 50 a0 e1                                      mov r5, r0
008057b0  00 40 a0 e3                                      mov r4, #0
008057b4  2b a0 a0 e3                                      mov sl, #0x2b
008057b8  9a 04 00 e0                                      mul r0, sl, r4
008057bc  08 30 95 e5                                      ldr r3, [r5, #8]
008057c0  01 00 80 e2                                      add r0, r0, #1
008057c4  80 01 86 e0                                      add r0, r6, r0, lsl #3
008057c8  07 10 a0 e1                                      mov r1, r7
008057cc  08 20 a0 e1                                      mov r2, r8
008057d0  0f e0 a0 e1                                      mov lr, pc
008057d4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
008057d8  04 30 96 e5                                      ldr r3, [r6, #4]
008057dc  01 40 84 e2                                      add r4, r4, #1
008057e0  56 5f 85 e2                                      add r5, r5, #0x158
008057e4  04 00 53 e1                                      cmp r3, r4
008057e8  f2 ff ff ca                                      bgt #0x8057b8
008057ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x008058c8, declared_size=208, range_size=208, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE9SerializeER12NetBitStreamii
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::Serialize(NetBitStream&, int, int)
; decoder-mode: arm
008058c8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
008058cc  02 80 a0 e1                                      mov r8, r2
008058d0  01 a0 a0 e1                                      mov sl, r1
008058d4  00 20 90 e5                                      ldr r2, [r0]
008058d8  08 10 a0 e1                                      mov r1, r8
008058dc  00 70 a0 e1                                      mov r7, r0
008058e0  03 90 a0 e1                                      mov sb, r3
008058e4  0f e0 a0 e1                                      mov lr, pc
008058e8  00 f0 92 e5                                      ldr pc, [r2]
008058ec  00 60 50 e2                                      subs r6, r0, #0
008058f0  23 00 00 0a                                      beq #0x805984
008058f4  0a 00 a0 e1                                      mov r0, sl
008058f8  01 10 a0 e3                                      mov r1, #1
008058fc  ca 22 00 eb                                      bl #0x80e42c
00805900  04 30 97 e5                                      ldr r3, [r7, #4]
00805904  00 00 53 e3                                      cmp r3, #0
00805908  00 60 a0 d3                                      movle r6, #0
0080590c  1a 00 00 da                                      ble #0x80597c
00805910  00 40 a0 e3                                      mov r4, #0
00805914  07 50 a0 e1                                      mov r5, r7
00805918  04 60 a0 e1                                      mov r6, r4
0080591c  2b b0 a0 e3                                      mov fp, #0x2b
00805920  03 00 00 ea                                      b #0x805934
00805924  01 40 84 e2                                      add r4, r4, #1
00805928  04 00 53 e1                                      cmp r3, r4
0080592c  56 5f 85 e2                                      add r5, r5, #0x158
00805930  11 00 00 da                                      ble #0x80597c
00805934  00 00 56 e3                                      cmp r6, #0
00805938  f9 ff ff 1a                                      bne #0x805924
0080593c  9b 04 00 e0                                      mul r0, fp, r4
00805940  08 c0 95 e5                                      ldr ip, [r5, #8]
00805944  01 00 80 e2                                      add r0, r0, #1
00805948  09 30 a0 e1                                      mov r3, sb
0080594c  80 01 87 e0                                      add r0, r7, r0, lsl #3
00805950  0a 10 a0 e1                                      mov r1, sl
00805954  08 20 a0 e1                                      mov r2, r8
00805958  0f e0 a0 e1                                      mov lr, pc
0080595c  08 f0 9c e5                                      ldr pc, [ip, #8]
00805960  04 30 97 e5                                      ldr r3, [r7, #4]
00805964  00 00 50 e3                                      cmp r0, #0
00805968  01 40 84 e2                                      add r4, r4, #1
0080596c  01 60 a0 13                                      movne r6, #1
00805970  04 00 53 e1                                      cmp r3, r4
00805974  56 5f 85 e2                                      add r5, r5, #0x158
00805978  ed ff ff ca                                      bgt #0x805934
0080597c  06 00 a0 e1                                      mov r0, r6
00805980  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00805984  0a 00 a0 e1                                      mov r0, sl
00805988  06 10 a0 e1                                      mov r1, r6
0080598c  a6 22 00 eb                                      bl #0x80e42c
00805990  06 00 a0 e1                                      mov r0, r6
00805994  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x008059f8, declared_size=108, range_size=108, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE5EraseER12NetBitStream
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::Erase(NetBitStream&)
; decoder-mode: arm
008059f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008059fc  00 60 a0 e1                                      mov r6, r0
00805a00  01 00 a0 e1                                      mov r0, r1
00805a04  01 70 a0 e1                                      mov r7, r1
00805a08  a2 22 00 eb                                      bl #0x80e498
00805a0c  00 00 50 e3                                      cmp r0, #0
00805a10  11 00 00 0a                                      beq #0x805a5c
00805a14  04 30 96 e5                                      ldr r3, [r6, #4]
00805a18  00 00 53 e3                                      cmp r3, #0
00805a1c  0e 00 00 da                                      ble #0x805a5c
00805a20  06 50 a0 e1                                      mov r5, r6
00805a24  00 40 a0 e3                                      mov r4, #0
00805a28  2b 80 a0 e3                                      mov r8, #0x2b
00805a2c  98 04 00 e0                                      mul r0, r8, r4
00805a30  08 30 95 e5                                      ldr r3, [r5, #8]
00805a34  01 00 80 e2                                      add r0, r0, #1
00805a38  80 01 86 e0                                      add r0, r6, r0, lsl #3
00805a3c  07 10 a0 e1                                      mov r1, r7
00805a40  0f e0 a0 e1                                      mov lr, pc
00805a44  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00805a48  04 30 96 e5                                      ldr r3, [r6, #4]
00805a4c  01 40 84 e2                                      add r4, r4, #1
00805a50  56 5f 85 e2                                      add r5, r5, #0x158
00805a54  04 00 53 e1                                      cmp r3, r4
00805a58  f3 ff ff ca                                      bgt #0x805a2c
00805a5c  00 00 a0 e3                                      mov r0, #0
00805a60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00805a64, declared_size=176, range_size=176, mode=arm
; class-group: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>
; alias: _ZN14NetStructArrayIN14CMatchingLocal21ServerBackupNetStructELj32EE4LoadER12NetBitStreamii
; demangled: NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32u>::Load(NetBitStream&, int, int)
; decoder-mode: arm
00805a64  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00805a68  00 70 a0 e1                                      mov r7, r0
00805a6c  01 00 a0 e1                                      mov r0, r1
00805a70  01 80 a0 e1                                      mov r8, r1
00805a74  02 90 a0 e1                                      mov sb, r2
00805a78  03 a0 a0 e1                                      mov sl, r3
00805a7c  85 22 00 eb                                      bl #0x80e498
00805a80  00 00 50 e3                                      cmp r0, #0
00805a84  1f 00 00 0a                                      beq #0x805b08
00805a88  04 30 97 e5                                      ldr r3, [r7, #4]
00805a8c  00 00 53 e3                                      cmp r3, #0
00805a90  1c 00 00 da                                      ble #0x805b08
00805a94  00 40 a0 e3                                      mov r4, #0
00805a98  07 50 a0 e1                                      mov r5, r7
00805a9c  04 60 a0 e1                                      mov r6, r4
00805aa0  2b b0 a0 e3                                      mov fp, #0x2b
00805aa4  03 00 00 ea                                      b #0x805ab8
00805aa8  01 40 84 e2                                      add r4, r4, #1
00805aac  04 00 53 e1                                      cmp r3, r4
00805ab0  56 5f 85 e2                                      add r5, r5, #0x158
00805ab4  11 00 00 da                                      ble #0x805b00
00805ab8  00 00 56 e3                                      cmp r6, #0
00805abc  f9 ff ff 1a                                      bne #0x805aa8
00805ac0  9b 04 00 e0                                      mul r0, fp, r4
00805ac4  08 c0 95 e5                                      ldr ip, [r5, #8]
00805ac8  01 00 80 e2                                      add r0, r0, #1
00805acc  0a 30 a0 e1                                      mov r3, sl
00805ad0  80 01 87 e0                                      add r0, r7, r0, lsl #3
00805ad4  08 10 a0 e1                                      mov r1, r8
00805ad8  09 20 a0 e1                                      mov r2, sb
00805adc  0f e0 a0 e1                                      mov lr, pc
00805ae0  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00805ae4  04 30 97 e5                                      ldr r3, [r7, #4]
00805ae8  00 00 50 e3                                      cmp r0, #0
00805aec  01 40 84 e2                                      add r4, r4, #1
00805af0  01 60 a0 13                                      movne r6, #1
00805af4  04 00 53 e1                                      cmp r3, r4
00805af8  56 5f 85 e2                                      add r5, r5, #0x158
00805afc  ed ff ff ca                                      bgt #0x805ab8
00805b00  06 00 a0 e1                                      mov r0, r6
00805b04  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00805b08  00 60 a0 e3                                      mov r6, #0
00805b0c  06 00 a0 e1                                      mov r0, r6
00805b10  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
