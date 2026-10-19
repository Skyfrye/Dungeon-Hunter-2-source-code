; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00816150, declared_size=104, range_size=104, mode=arm
; class-group: CDataStats<int>
; alias: _ZN10CDataStatsIiED1Ev
; demangled: CDataStats<int>::~CDataStats()
; decoder-mode: arm
00816150  70 40 2d e9                                      push {r4, r5, r6, lr}
00816154  54 30 9f e5                                      ldr r3, [pc, #0x54]
00816158  54 20 9f e5                                      ldr r2, [pc, #0x54]
0081615c  18 10 90 e5                                      ldr r1, [r0, #0x18]
00816160  03 30 8f e0                                      add r3, pc, r3
00816164  02 20 93 e7                                      ldr r2, [r3, r2]
00816168  00 00 51 e3                                      cmp r1, #0
0081616c  00 40 a0 e1                                      mov r4, r0
00816170  08 20 82 e2                                      add r2, r2, #8
00816174  00 20 80 e5                                      str r2, [r0]
00816178  08 00 00 0a                                      beq #0x8161a0
0081617c  08 50 80 e2                                      add r5, r0, #8
00816180  05 00 a0 e1                                      mov r0, r5
00816184  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00816188  e2 ff ff eb                                      bl #0x816118
0081618c  00 30 a0 e3                                      mov r3, #0
00816190  14 50 84 e5                                      str r5, [r4, #0x14]
00816194  18 30 84 e5                                      str r3, [r4, #0x18]
00816198  10 50 84 e5                                      str r5, [r4, #0x10]
0081619c  0c 30 84 e5                                      str r3, [r4, #0xc]
008161a0  04 00 84 e2                                      add r0, r4, #4
008161a4  63 e0 ff eb                                      bl #0x80e338
008161a8  04 00 a0 e1                                      mov r0, r4
008161ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008161b0  30 e9 17 00 b4 24 00 00                          .byte 0x30, 0xe9, 0x17, 0x00, 0xb4, 0x24, 0x00, 0x00

; FUNCTION 0x008161b8, declared_size=28, range_size=28, mode=arm
; class-group: CDataStats<int>
; alias: _ZN10CDataStatsIiED0Ev
; demangled: CDataStats<int>::~CDataStats()
; decoder-mode: arm
008161b8  10 40 2d e9                                      push {r4, lr}
008161bc  00 40 a0 e1                                      mov r4, r0
008161c0  e2 ff ff eb                                      bl #0x816150
008161c4  04 00 a0 e1                                      mov r0, r4
008161c8  9c e8 eb eb                                      bl #0x310440
008161cc  04 00 a0 e1                                      mov r0, r4
008161d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00825388, declared_size=512, range_size=512, mode=arm
; class-group: CDataStats<int>
; alias: _ZN10CDataStatsIiE10GetAverageEf
; demangled: CDataStats<int>::GetAverage(float)
; decoder-mode: arm
00825388  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082538c  04 50 80 e2                                      add r5, r0, #4
00825390  01 60 a0 e1                                      mov r6, r1
00825394  00 40 a0 e1                                      mov r4, r0
00825398  05 00 a0 e1                                      mov r0, r5
0082539c  e8 a3 ff eb                                      bl #0x80e344
008253a0  06 00 a0 e1                                      mov r0, r6
008253a4  48 a4 eb eb                                      bl #0x30e4cc
008253a8  3d 69 a0 e3                                      mov r6, #0xf4000
008253ac  09 6d 86 e2                                      add r6, r6, #0x240
008253b0  96 00 06 e0                                      mul r6, r6, r0
008253b4  dd a4 eb eb                                      bl #0x30e730
008253b8  18 30 94 e5                                      ldr r3, [r4, #0x18]
008253bc  00 00 53 e3                                      cmp r3, #0
008253c0  25 00 00 0a                                      beq #0x82545c
008253c4  00 10 a0 e3                                      mov r1, #0
008253c8  10 c0 94 e5                                      ldr ip, [r4, #0x10]
008253cc  01 e0 a0 e1                                      mov lr, r1
008253d0  08 40 84 e2                                      add r4, r4, #8
008253d4  0c 00 54 e1                                      cmp r4, ip
008253d8  16 00 00 0a                                      beq #0x825438
008253dc  00 00 56 e3                                      cmp r6, #0
008253e0  00 70 d4 05                                      ldrbeq r7, [r4]
008253e4  21 00 00 0a                                      beq #0x825470
008253e8  00 70 d4 e5                                      ldrb r7, [r4]
008253ec  00 00 57 e3                                      cmp r7, #0
008253f0  04 00 00 1a                                      bne #0x825408
008253f4  04 30 94 e5                                      ldr r3, [r4, #4]
008253f8  04 30 93 e5                                      ldr r3, [r3, #4]
008253fc  03 00 54 e1                                      cmp r4, r3
00825400  0c 20 94 05                                      ldreq r2, [r4, #0xc]
00825404  07 00 00 0a                                      beq #0x825428
00825408  08 20 94 e5                                      ldr r2, [r4, #8]
0082540c  00 00 52 e3                                      cmp r2, #0
00825410  01 00 00 1a                                      bne #0x82541c
00825414  4f 00 00 ea                                      b #0x825558
00825418  03 20 a0 e1                                      mov r2, r3
0082541c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00825420  00 00 53 e3                                      cmp r3, #0
00825424  fb ff ff 1a                                      bne #0x825418
00825428  10 30 92 e5                                      ldr r3, [r2, #0x10]
0082542c  00 30 63 e0                                      rsb r3, r3, r0
00825430  03 00 56 e1                                      cmp r6, r3
00825434  0d 00 00 aa                                      bge #0x825470
00825438  00 00 51 e3                                      cmp r1, #0
0082543c  06 00 00 0a                                      beq #0x82545c
00825440  0e 00 a0 e1                                      mov r0, lr
00825444  96 a3 eb eb                                      bl #0x30e2a4
00825448  00 40 a0 e1                                      mov r4, r0
0082544c  05 00 a0 e1                                      mov r0, r5
00825450  bc a3 ff eb                                      bl #0x80e348
00825454  04 00 a0 e1                                      mov r0, r4
00825458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082545c  05 00 a0 e1                                      mov r0, r5
00825460  00 40 a0 e3                                      mov r4, #0
00825464  b7 a3 ff eb                                      bl #0x80e348
00825468  04 00 a0 e1                                      mov r0, r4
0082546c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00825470  00 00 57 e3                                      cmp r7, #0
00825474  04 00 00 1a                                      bne #0x82548c
00825478  04 30 94 e5                                      ldr r3, [r4, #4]
0082547c  04 30 93 e5                                      ldr r3, [r3, #4]
00825480  03 00 54 e1                                      cmp r4, r3
00825484  0c 20 94 05                                      ldreq r2, [r4, #0xc]
00825488  07 00 00 0a                                      beq #0x8254ac
0082548c  08 20 94 e5                                      ldr r2, [r4, #8]
00825490  00 00 52 e3                                      cmp r2, #0
00825494  01 00 00 1a                                      bne #0x8254a0
00825498  17 00 00 ea                                      b #0x8254fc
0082549c  03 20 a0 e1                                      mov r2, r3
008254a0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
008254a4  00 00 53 e3                                      cmp r3, #0
008254a8  fb ff ff 1a                                      bne #0x82549c
008254ac  14 30 92 e5                                      ldr r3, [r2, #0x14]
008254b0  00 00 57 e3                                      cmp r7, #0
008254b4  01 10 81 e2                                      add r1, r1, #1
008254b8  03 e0 8e e0                                      add lr, lr, r3
008254bc  04 00 00 1a                                      bne #0x8254d4
008254c0  04 30 94 e5                                      ldr r3, [r4, #4]
008254c4  04 30 93 e5                                      ldr r3, [r3, #4]
008254c8  03 00 54 e1                                      cmp r4, r3
008254cc  0c 30 94 05                                      ldreq r3, [r4, #0xc]
008254d0  07 00 00 0a                                      beq #0x8254f4
008254d4  08 30 94 e5                                      ldr r3, [r4, #8]
008254d8  00 00 53 e3                                      cmp r3, #0
008254dc  01 00 00 1a                                      bne #0x8254e8
008254e0  11 00 00 ea                                      b #0x82552c
008254e4  02 30 a0 e1                                      mov r3, r2
008254e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008254ec  00 00 52 e3                                      cmp r2, #0
008254f0  fb ff ff 1a                                      bne #0x8254e4
008254f4  03 40 a0 e1                                      mov r4, r3
008254f8  b5 ff ff ea                                      b #0x8253d4
008254fc  04 20 94 e5                                      ldr r2, [r4, #4]
00825500  08 30 92 e5                                      ldr r3, [r2, #8]
00825504  03 00 54 e1                                      cmp r4, r3
00825508  01 00 00 0a                                      beq #0x825514
0082550c  e6 ff ff ea                                      b #0x8254ac
00825510  03 20 a0 e1                                      mov r2, r3
00825514  04 30 92 e5                                      ldr r3, [r2, #4]
00825518  08 80 93 e5                                      ldr r8, [r3, #8]
0082551c  02 00 58 e1                                      cmp r8, r2
00825520  fa ff ff 0a                                      beq #0x825510
00825524  03 20 a0 e1                                      mov r2, r3
00825528  df ff ff ea                                      b #0x8254ac
0082552c  04 30 94 e5                                      ldr r3, [r4, #4]
00825530  08 20 93 e5                                      ldr r2, [r3, #8]
00825534  02 00 54 e1                                      cmp r4, r2
00825538  ed ff ff 1a                                      bne #0x8254f4
0082553c  03 20 a0 e1                                      mov r2, r3
00825540  04 30 93 e5                                      ldr r3, [r3, #4]
00825544  08 40 93 e5                                      ldr r4, [r3, #8]
00825548  02 00 54 e1                                      cmp r4, r2
0082554c  fa ff ff 0a                                      beq #0x82553c
00825550  03 40 a0 e1                                      mov r4, r3
00825554  9e ff ff ea                                      b #0x8253d4
00825558  04 20 94 e5                                      ldr r2, [r4, #4]
0082555c  08 30 92 e5                                      ldr r3, [r2, #8]
00825560  03 00 54 e1                                      cmp r4, r3
00825564  01 00 00 0a                                      beq #0x825570
00825568  ae ff ff ea                                      b #0x825428
0082556c  03 20 a0 e1                                      mov r2, r3
00825570  04 30 92 e5                                      ldr r3, [r2, #4]
00825574  08 80 93 e5                                      ldr r8, [r3, #8]
00825578  02 00 58 e1                                      cmp r8, r2
0082557c  fa ff ff 0a                                      beq #0x82556c
00825580  03 20 a0 e1                                      mov r2, r3
00825584  a7 ff ff ea                                      b #0x825428

; FUNCTION 0x00825be8, declared_size=436, range_size=436, mode=arm
; class-group: CDataStats<int>
; alias: _ZN10CDataStatsIiE6GetSumEf.clone.2
; demangled: CDataStats<int>::GetSum(float) [clone .clone.2]
; decoder-mode: arm
00825be8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00825bec  04 60 80 e2                                      add r6, r0, #4
00825bf0  00 50 a0 e1                                      mov r5, r0
00825bf4  06 00 a0 e1                                      mov r0, r6
00825bf8  d1 a1 ff eb                                      bl #0x80e344
00825bfc  cb a2 eb eb                                      bl #0x30e730
00825c00  18 40 95 e5                                      ldr r4, [r5, #0x18]
00825c04  00 00 54 e3                                      cmp r4, #0
00825c08  1a 00 00 0a                                      beq #0x825c78
00825c0c  3d c9 a0 e3                                      mov ip, #0xf4000
00825c10  10 10 95 e5                                      ldr r1, [r5, #0x10]
00825c14  09 cd 8c e2                                      add ip, ip, #0x240
00825c18  08 50 85 e2                                      add r5, r5, #8
00825c1c  00 40 a0 e3                                      mov r4, #0
00825c20  05 00 51 e1                                      cmp r1, r5
00825c24  13 00 00 0a                                      beq #0x825c78
00825c28  00 e0 d5 e5                                      ldrb lr, [r5]
00825c2c  00 00 5e e3                                      cmp lr, #0
00825c30  04 00 00 1a                                      bne #0x825c48
00825c34  04 30 95 e5                                      ldr r3, [r5, #4]
00825c38  04 30 93 e5                                      ldr r3, [r3, #4]
00825c3c  03 00 55 e1                                      cmp r5, r3
00825c40  0c 20 95 05                                      ldreq r2, [r5, #0xc]
00825c44  07 00 00 0a                                      beq #0x825c68
00825c48  08 20 95 e5                                      ldr r2, [r5, #8]
00825c4c  00 00 52 e3                                      cmp r2, #0
00825c50  45 00 00 0a                                      beq #0x825d6c
00825c54  00 00 00 ea                                      b #0x825c5c
00825c58  03 20 a0 e1                                      mov r2, r3
00825c5c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00825c60  00 00 53 e3                                      cmp r3, #0
00825c64  fb ff ff 1a                                      bne #0x825c58
00825c68  10 30 92 e5                                      ldr r3, [r2, #0x10]
00825c6c  00 30 63 e0                                      rsb r3, r3, r0
00825c70  0c 00 53 e1                                      cmp r3, ip
00825c74  03 00 00 da                                      ble #0x825c88
00825c78  06 00 a0 e1                                      mov r0, r6
00825c7c  b1 a1 ff eb                                      bl #0x80e348
00825c80  04 00 a0 e1                                      mov r0, r4
00825c84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00825c88  00 00 5e e3                                      cmp lr, #0
00825c8c  04 00 00 1a                                      bne #0x825ca4
00825c90  04 30 95 e5                                      ldr r3, [r5, #4]
00825c94  04 30 93 e5                                      ldr r3, [r3, #4]
00825c98  03 00 55 e1                                      cmp r5, r3
00825c9c  0c 20 95 05                                      ldreq r2, [r5, #0xc]
00825ca0  07 00 00 0a                                      beq #0x825cc4
00825ca4  08 20 95 e5                                      ldr r2, [r5, #8]
00825ca8  00 00 52 e3                                      cmp r2, #0
00825cac  17 00 00 0a                                      beq #0x825d10
00825cb0  00 00 00 ea                                      b #0x825cb8
00825cb4  03 20 a0 e1                                      mov r2, r3
00825cb8  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00825cbc  00 00 53 e3                                      cmp r3, #0
00825cc0  fb ff ff 1a                                      bne #0x825cb4
00825cc4  14 30 92 e5                                      ldr r3, [r2, #0x14]
00825cc8  00 00 5e e3                                      cmp lr, #0
00825ccc  03 40 84 e0                                      add r4, r4, r3
00825cd0  04 00 00 1a                                      bne #0x825ce8
00825cd4  04 30 95 e5                                      ldr r3, [r5, #4]
00825cd8  04 30 93 e5                                      ldr r3, [r3, #4]
00825cdc  03 00 55 e1                                      cmp r5, r3
00825ce0  0c 30 95 05                                      ldreq r3, [r5, #0xc]
00825ce4  07 00 00 0a                                      beq #0x825d08
00825ce8  08 30 95 e5                                      ldr r3, [r5, #8]
00825cec  00 00 53 e3                                      cmp r3, #0
00825cf0  12 00 00 0a                                      beq #0x825d40
00825cf4  00 00 00 ea                                      b #0x825cfc
00825cf8  02 30 a0 e1                                      mov r3, r2
00825cfc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00825d00  00 00 52 e3                                      cmp r2, #0
00825d04  fb ff ff 1a                                      bne #0x825cf8
00825d08  03 50 a0 e1                                      mov r5, r3
00825d0c  c3 ff ff ea                                      b #0x825c20
00825d10  04 20 95 e5                                      ldr r2, [r5, #4]
00825d14  08 30 92 e5                                      ldr r3, [r2, #8]
00825d18  03 00 55 e1                                      cmp r5, r3
00825d1c  e8 ff ff 1a                                      bne #0x825cc4
00825d20  00 00 00 ea                                      b #0x825d28
00825d24  03 20 a0 e1                                      mov r2, r3
00825d28  04 30 92 e5                                      ldr r3, [r2, #4]
00825d2c  08 70 93 e5                                      ldr r7, [r3, #8]
00825d30  02 00 57 e1                                      cmp r7, r2
00825d34  fa ff ff 0a                                      beq #0x825d24
00825d38  03 20 a0 e1                                      mov r2, r3
00825d3c  e0 ff ff ea                                      b #0x825cc4
00825d40  04 30 95 e5                                      ldr r3, [r5, #4]
00825d44  08 20 93 e5                                      ldr r2, [r3, #8]
00825d48  02 00 55 e1                                      cmp r5, r2
00825d4c  ed ff ff 1a                                      bne #0x825d08
00825d50  03 20 a0 e1                                      mov r2, r3
00825d54  04 30 93 e5                                      ldr r3, [r3, #4]
00825d58  08 e0 93 e5                                      ldr lr, [r3, #8]
00825d5c  02 00 5e e1                                      cmp lr, r2
00825d60  fa ff ff 0a                                      beq #0x825d50
00825d64  03 50 a0 e1                                      mov r5, r3
00825d68  ac ff ff ea                                      b #0x825c20
00825d6c  04 20 95 e5                                      ldr r2, [r5, #4]
00825d70  08 30 92 e5                                      ldr r3, [r2, #8]
00825d74  03 00 55 e1                                      cmp r5, r3
00825d78  ba ff ff 1a                                      bne #0x825c68
00825d7c  00 00 00 ea                                      b #0x825d84
00825d80  03 20 a0 e1                                      mov r2, r3
00825d84  04 30 92 e5                                      ldr r3, [r2, #4]
00825d88  08 70 93 e5                                      ldr r7, [r3, #8]
00825d8c  02 00 57 e1                                      cmp r7, r2
00825d90  fa ff ff 0a                                      beq #0x825d80
00825d94  03 20 a0 e1                                      mov r2, r3
00825d98  b2 ff ff ea                                      b #0x825c68

; FUNCTION 0x00825d9c, declared_size=364, range_size=364, mode=arm
; class-group: CDataStats<int>
; alias: _ZN10CDataStatsIiE7AddDataEi
; demangled: CDataStats<int>::AddData(int)
; decoder-mode: arm
00825d9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00825da0  04 60 80 e2                                      add r6, r0, #4
00825da4  00 40 a0 e1                                      mov r4, r0
00825da8  08 d0 4d e2                                      sub sp, sp, #8
00825dac  06 00 a0 e1                                      mov r0, r6
00825db0  01 90 a0 e1                                      mov sb, r1
00825db4  60 a1 ff eb                                      bl #0x80e33c
00825db8  5c a2 eb eb                                      bl #0x30e730
00825dbc  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00825dc0  08 50 84 e2                                      add r5, r4, #8
00825dc4  00 a0 a0 e1                                      mov sl, r0
00825dc8  00 00 57 e3                                      cmp r7, #0
00825dcc  05 70 a0 01                                      moveq r7, r5
00825dd0  01 00 00 1a                                      bne #0x825ddc
00825dd4  3f 00 00 ea                                      b #0x825ed8
00825dd8  08 70 a0 e1                                      mov r7, r8
00825ddc  10 30 97 e5                                      ldr r3, [r7, #0x10]
00825de0  03 00 5a e1                                      cmp sl, r3
00825de4  08 80 97 b5                                      ldrlt r8, [r7, #8]
00825de8  0c 80 97 a5                                      ldrge r8, [r7, #0xc]
00825dec  00 00 58 e3                                      cmp r8, #0
00825df0  f8 ff ff 1a                                      bne #0x825dd8
00825df4  07 00 55 e1                                      cmp r5, r7
00825df8  36 00 00 0a                                      beq #0x825ed8
00825dfc  03 00 5a e1                                      cmp sl, r3
00825e00  28 00 00 ba                                      blt #0x825ea8
00825e04  05 00 a0 e1                                      mov r0, r5
00825e08  6e ff ff eb                                      bl #0x825bc8
00825e0c  00 30 a0 e1                                      mov r3, r0
00825e10  10 a0 83 e5                                      str sl, [r3, #0x10]
00825e14  14 90 83 e5                                      str sb, [r3, #0x14]
00825e18  0c 80 80 e5                                      str r8, [r0, #0xc]
00825e1c  08 80 80 e5                                      str r8, [r0, #8]
00825e20  0c 00 87 e5                                      str r0, [r7, #0xc]
00825e24  14 30 94 e5                                      ldr r3, [r4, #0x14]
00825e28  03 00 57 e1                                      cmp r7, r3
00825e2c  14 00 84 05                                      streq r0, [r4, #0x14]
00825e30  04 70 80 e5                                      str r7, [r0, #4]
00825e34  0c 10 84 e2                                      add r1, r4, #0xc
00825e38  48 b6 eb eb                                      bl #0x313760
00825e3c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00825e40  20 20 94 e5                                      ldr r2, [r4, #0x20]
00825e44  01 30 83 e2                                      add r3, r3, #1
00825e48  00 00 52 e3                                      cmp r2, #0
00825e4c  18 30 84 e5                                      str r3, [r4, #0x18]
00825e50  04 00 00 0a                                      beq #0x825e68
00825e54  00 00 53 e3                                      cmp r3, #0
00825e58  02 00 00 0a                                      beq #0x825e68
00825e5c  03 00 52 e1                                      cmp r2, r3
00825e60  04 70 8d 32                                      addlo r7, sp, #4
00825e64  03 00 00 3a                                      blo #0x825e78
00825e68  06 00 a0 e1                                      mov r0, r6
00825e6c  33 a1 ff eb                                      bl #0x80e340
00825e70  08 d0 8d e2                                      add sp, sp, #8
00825e74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00825e78  10 30 94 e5                                      ldr r3, [r4, #0x10]
00825e7c  05 00 a0 e1                                      mov r0, r5
00825e80  07 10 a0 e1                                      mov r1, r7
00825e84  04 30 8d e5                                      str r3, [sp, #4]
00825e88  be fd ff eb                                      bl #0x825588
00825e8c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00825e90  00 00 53 e3                                      cmp r3, #0
00825e94  f3 ff ff 0a                                      beq #0x825e68
00825e98  20 20 94 e5                                      ldr r2, [r4, #0x20]
00825e9c  03 00 52 e1                                      cmp r2, r3
00825ea0  f0 ff ff 2a                                      bhs #0x825e68
00825ea4  f3 ff ff ea                                      b #0x825e78
00825ea8  05 00 a0 e1                                      mov r0, r5
00825eac  45 ff ff eb                                      bl #0x825bc8
00825eb0  00 30 a0 e1                                      mov r3, r0
00825eb4  10 a0 83 e5                                      str sl, [r3, #0x10]
00825eb8  14 90 83 e5                                      str sb, [r3, #0x14]
00825ebc  0c 80 80 e5                                      str r8, [r0, #0xc]
00825ec0  08 80 80 e5                                      str r8, [r0, #8]
00825ec4  08 00 87 e5                                      str r0, [r7, #8]
00825ec8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00825ecc  03 00 57 e1                                      cmp r7, r3
00825ed0  10 00 84 05                                      streq r0, [r4, #0x10]
00825ed4  d5 ff ff ea                                      b #0x825e30
00825ed8  05 00 a0 e1                                      mov r0, r5
00825edc  39 ff ff eb                                      bl #0x825bc8
00825ee0  00 20 a0 e3                                      mov r2, #0
00825ee4  00 30 a0 e1                                      mov r3, r0
00825ee8  10 a0 83 e5                                      str sl, [r3, #0x10]
00825eec  14 90 83 e5                                      str sb, [r3, #0x14]
00825ef0  0c 20 80 e5                                      str r2, [r0, #0xc]
00825ef4  08 20 80 e5                                      str r2, [r0, #8]
00825ef8  10 00 84 e5                                      str r0, [r4, #0x10]
00825efc  0c 00 84 e5                                      str r0, [r4, #0xc]
00825f00  14 00 84 e5                                      str r0, [r4, #0x14]
00825f04  c9 ff ff ea                                      b #0x825e30
