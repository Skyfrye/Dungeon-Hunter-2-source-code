; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006130d4, declared_size=448, range_size=448, mode=arm
; class-group: glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>
; alias: _ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E17getBlendedValueExEPvPfiS6_
; demangled: glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getBlendedValueEx(void*, float*, int, void*)
; decoder-mode: arm
006130d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006130d8  00 c0 a0 e3                                      mov ip, #0
006130dc  3c d0 4d e2                                      sub sp, sp, #0x3c
006130e0  00 60 52 e2                                      subs r6, r2, #0
006130e4  fe 25 a0 e3                                      mov r2, #0x3f800000
006130e8  00 80 a0 e1                                      mov r8, r0
006130ec  34 20 8d e5                                      str r2, [sp, #0x34]
006130f0  01 50 a0 e1                                      mov r5, r1
006130f4  03 90 a0 e1                                      mov sb, r3
006130f8  28 c0 8d e5                                      str ip, [sp, #0x28]
006130fc  2c c0 8d e5                                      str ip, [sp, #0x2c]
00613100  30 c0 8d e5                                      str ip, [sp, #0x30]
00613104  60 00 00 da                                      ble #0x61328c
00613108  0c 10 a0 e1                                      mov r1, ip
0061310c  00 00 95 e5                                      ldr r0, [r5]
00613110  9d eb f3 eb                                      bl #0x30df8c
00613114  00 00 50 e3                                      cmp r0, #0
00613118  00 30 a0 03                                      moveq r3, #0
0061311c  05 70 a0 01                                      moveq r7, r5
00613120  03 40 a0 01                                      moveq r4, r3
00613124  3e 00 00 0a                                      beq #0x613224
00613128  05 70 a0 e1                                      mov r7, r5
0061312c  00 40 a0 e3                                      mov r4, #0
00613130  03 00 00 ea                                      b #0x613144
00613134  04 00 b7 e5                                      ldr r0, [r7, #4]!
00613138  93 eb f3 eb                                      bl #0x30df8c
0061313c  00 00 50 e3                                      cmp r0, #0
00613140  36 00 00 0a                                      beq #0x613220
00613144  01 40 84 e2                                      add r4, r4, #1
00613148  06 00 54 e1                                      cmp r4, r6
0061314c  00 10 a0 e3                                      mov r1, #0
00613150  f7 ff ff 1a                                      bne #0x613134
00613154  01 40 86 e2                                      add r4, r6, #1
00613158  00 a0 a0 e3                                      mov sl, #0
0061315c  04 00 56 e1                                      cmp r6, r4
00613160  24 00 00 da                                      ble #0x6131f8
00613164  04 30 8d e2                                      add r3, sp, #4
00613168  04 51 85 e0                                      add r5, r5, r4, lsl #2
0061316c  04 82 88 e0                                      add r8, r8, r4, lsl #4
00613170  28 b0 8d e2                                      add fp, sp, #0x28
00613174  24 30 8d e5                                      str r3, [sp, #0x24]
00613178  03 00 00 ea                                      b #0x61318c
0061317c  06 00 54 e1                                      cmp r4, r6
00613180  04 50 85 e2                                      add r5, r5, #4
00613184  10 80 88 e2                                      add r8, r8, #0x10
00613188  1a 00 00 0a                                      beq #0x6131f8
0061318c  00 70 95 e5                                      ldr r7, [r5]
00613190  00 10 a0 e3                                      mov r1, #0
00613194  01 40 84 e2                                      add r4, r4, #1
00613198  07 00 a0 e1                                      mov r0, r7
0061319c  7a eb f3 eb                                      bl #0x30df8c
006131a0  00 00 50 e3                                      cmp r0, #0
006131a4  f4 ff ff 1a                                      bne #0x61317c
006131a8  0a 00 a0 e1                                      mov r0, sl
006131ac  07 10 a0 e1                                      mov r1, r7
006131b0  7b ee f3 eb                                      bl #0x30eba4
006131b4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006131b8  00 a0 a0 e1                                      mov sl, r0
006131bc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
006131c0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
006131c4  0a 10 a0 e1                                      mov r1, sl
006131c8  07 00 a0 e1                                      mov r0, r7
006131cc  b0 ee f3 eb                                      bl #0x30ec94
006131d0  0e 00 9b e8                                      ldm fp, {r1, r2, r3}
006131d4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006131d8  14 00 8d e5                                      str r0, [sp, #0x14]
006131dc  0b 00 a0 e1                                      mov r0, fp
006131e0  00 c0 8d e5                                      str ip, [sp]
006131e4  c5 fe ff eb                                      bl #0x612d00
006131e8  06 00 54 e1                                      cmp r4, r6
006131ec  04 50 85 e2                                      add r5, r5, #4
006131f0  10 80 88 e2                                      add r8, r8, #0x10
006131f4  e4 ff ff 1a                                      bne #0x61318c
006131f8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006131fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
00613200  34 20 9d e5                                      ldr r2, [sp, #0x34]
00613204  28 00 9d e5                                      ldr r0, [sp, #0x28]
00613208  04 10 89 e5                                      str r1, [sb, #4]
0061320c  0c 20 89 e5                                      str r2, [sb, #0xc]
00613210  00 00 89 e5                                      str r0, [sb]
00613214  08 30 89 e5                                      str r3, [sb, #8]
00613218  3c d0 8d e2                                      add sp, sp, #0x3c
0061321c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00613220  04 32 a0 e1                                      lsl r3, r4, #4
00613224  00 a0 97 e5                                      ldr sl, [r7]
00613228  03 20 88 e0                                      add r2, r8, r3
0061322c  03 70 98 e7                                      ldr r7, [r8, r3]
00613230  0c b0 92 e5                                      ldr fp, [r2, #0xc]
00613234  04 30 92 e5                                      ldr r3, [r2, #4]
00613238  08 20 92 e5                                      ldr r2, [r2, #8]
0061323c  0a 00 a0 e1                                      mov r0, sl
00613240  fe 15 a0 e3                                      mov r1, #0x3f800000
00613244  2c 30 8d e5                                      str r3, [sp, #0x2c]
00613248  30 20 8d e5                                      str r2, [sp, #0x30]
0061324c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00613250  20 30 8d e5                                      str r3, [sp, #0x20]
00613254  28 70 8d e5                                      str r7, [sp, #0x28]
00613258  34 b0 8d e5                                      str fp, [sp, #0x34]
0061325c  4a eb f3 eb                                      bl #0x30df8c
00613260  00 00 50 e3                                      cmp r0, #0
00613264  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00613268  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061326c  04 00 00 0a                                      beq #0x613284
00613270  0c b0 89 e5                                      str fp, [sb, #0xc]
00613274  00 70 89 e5                                      str r7, [sb]
00613278  04 30 89 e5                                      str r3, [sb, #4]
0061327c  08 20 89 e5                                      str r2, [sb, #8]
00613280  e4 ff ff ea                                      b #0x613218
00613284  01 40 84 e2                                      add r4, r4, #1
00613288  b3 ff ff ea                                      b #0x61315c
0061328c  01 40 a0 e3                                      mov r4, #1
00613290  b0 ff ff ea                                      b #0x613158

; FUNCTION 0x00613378, declared_size=528, range_size=528, mode=arm
; class-group: glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>
; alias: _ZN6glitch7collada15animation_track8CBlenderINS_4core10quaternionELi1ES4_E15getAddedValueExEPvPfiS6_
; demangled: glitch::collada::animation_track::CBlender<glitch::core::quaternion, 1, glitch::core::quaternion>::getAddedValueEx(void*, float*, int, void*)
; decoder-mode: arm
00613378  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061337c  fe c5 a0 e3                                      mov ip, #0x3f800000
00613380  9c d0 4d e2                                      sub sp, sp, #0x9c
00613384  00 80 a0 e3                                      mov r8, #0
00613388  00 b0 52 e2                                      subs fp, r2, #0
0061338c  01 a0 a0 e1                                      mov sl, r1
00613390  30 30 8d e5                                      str r3, [sp, #0x30]
00613394  88 80 8d e5                                      str r8, [sp, #0x88]
00613398  8c 80 8d e5                                      str r8, [sp, #0x8c]
0061339c  90 80 8d e5                                      str r8, [sp, #0x90]
006133a0  94 c0 8d e5                                      str ip, [sp, #0x94]
006133a4  78 80 8d e5                                      str r8, [sp, #0x78]
006133a8  7c 80 8d e5                                      str r8, [sp, #0x7c]
006133ac  80 80 8d e5                                      str r8, [sp, #0x80]
006133b0  84 c0 8d e5                                      str ip, [sp, #0x84]
006133b4  69 00 00 da                                      ble #0x613560
006133b8  00 60 a0 e3                                      mov r6, #0
006133bc  00 40 a0 e1                                      mov r4, r0
006133c0  04 10 8d e2                                      add r1, sp, #4
006133c4  48 00 8d e2                                      add r0, sp, #0x48
006133c8  88 20 8d e2                                      add r2, sp, #0x88
006133cc  38 30 8d e2                                      add r3, sp, #0x38
006133d0  78 c0 8d e2                                      add ip, sp, #0x78
006133d4  68 e0 8d e2                                      add lr, sp, #0x68
006133d8  06 70 a0 e1                                      mov r7, r6
006133dc  2c 00 8d e5                                      str r0, [sp, #0x2c]
006133e0  1c 10 8d e5                                      str r1, [sp, #0x1c]
006133e4  58 90 8d e2                                      add sb, sp, #0x58
006133e8  20 20 8d e5                                      str r2, [sp, #0x20]
006133ec  34 30 8d e5                                      str r3, [sp, #0x34]
006133f0  24 c0 8d e5                                      str ip, [sp, #0x24]
006133f4  28 e0 8d e5                                      str lr, [sp, #0x28]
006133f8  1f 00 00 ea                                      b #0x61347c
006133fc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00613400  fe 05 a0 e3                                      mov r0, #0x3f800000
00613404  58 80 8d e5                                      str r8, [sp, #0x58]
00613408  5c 80 8d e5                                      str r8, [sp, #0x5c]
0061340c  60 80 8d e5                                      str r8, [sp, #0x60]
00613410  64 00 8d e5                                      str r0, [sp, #0x64]
00613414  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00613418  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0061341c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00613420  94 c0 9d e5                                      ldr ip, [sp, #0x94]
00613424  09 00 a0 e1                                      mov r0, sb
00613428  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
0061342c  00 c0 8d e5                                      str ip, [sp]
00613430  14 50 8d e5                                      str r5, [sp, #0x14]
00613434  31 fe ff eb                                      bl #0x612d00
00613438  28 00 9d e5                                      ldr r0, [sp, #0x28]
0061343c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00613440  09 20 a0 e1                                      mov r2, sb
00613444  3a ea ff eb                                      bl #0x60dd34
00613448  68 30 9d e5                                      ldr r3, [sp, #0x68]
0061344c  78 30 8d e5                                      str r3, [sp, #0x78]
00613450  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00613454  7c 30 8d e5                                      str r3, [sp, #0x7c]
00613458  70 30 9d e5                                      ldr r3, [sp, #0x70]
0061345c  80 30 8d e5                                      str r3, [sp, #0x80]
00613460  74 30 9d e5                                      ldr r3, [sp, #0x74]
00613464  84 30 8d e5                                      str r3, [sp, #0x84]
00613468  01 70 87 e2                                      add r7, r7, #1
0061346c  0b 00 57 e1                                      cmp r7, fp
00613470  04 60 86 e2                                      add r6, r6, #4
00613474  10 40 84 e2                                      add r4, r4, #0x10
00613478  37 00 00 0a                                      beq #0x61355c
0061347c  06 50 9a e7                                      ldr r5, [sl, r6]
00613480  00 10 a0 e3                                      mov r1, #0
00613484  05 00 a0 e1                                      mov r0, r5
00613488  9a eb f3 eb                                      bl #0x30e2f8
0061348c  00 00 50 e3                                      cmp r0, #0
00613490  00 10 a0 e3                                      mov r1, #0
00613494  05 00 a0 e1                                      mov r0, r5
00613498  d7 ff ff 1a                                      bne #0x6133fc
0061349c  9a ec f3 eb                                      bl #0x30e70c
006134a0  00 00 50 e3                                      cmp r0, #0
006134a4  ef ff ff 0a                                      beq #0x613468
006134a8  04 20 94 e5                                      ldr r2, [r4, #4]
006134ac  08 10 94 e5                                      ldr r1, [r4, #8]
006134b0  00 30 94 e5                                      ldr r3, [r4]
006134b4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006134b8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006134bc  02 31 83 e2                                      add r3, r3, #0x80000000
006134c0  02 21 82 e2                                      add r2, r2, #0x80000000
006134c4  02 11 81 e2                                      add r1, r1, #0x80000000
006134c8  06 c0 9a e7                                      ldr ip, [sl, r6]
006134cc  64 00 8d e5                                      str r0, [sp, #0x64]
006134d0  60 10 8d e5                                      str r1, [sp, #0x60]
006134d4  5c 20 8d e5                                      str r2, [sp, #0x5c]
006134d8  58 30 8d e5                                      str r3, [sp, #0x58]
006134dc  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
006134e0  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
006134e4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006134e8  02 c1 8c e2                                      add ip, ip, #0x80000000
006134ec  48 80 8d e5                                      str r8, [sp, #0x48]
006134f0  0e 00 90 e8                                      ldm r0, {r1, r2, r3}
006134f4  14 c0 8d e5                                      str ip, [sp, #0x14]
006134f8  94 c0 9d e5                                      ldr ip, [sp, #0x94]
006134fc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00613500  4c 80 8d e5                                      str r8, [sp, #0x4c]
00613504  00 c0 8d e5                                      str ip, [sp]
00613508  fe c5 a0 e3                                      mov ip, #0x3f800000
0061350c  54 c0 8d e5                                      str ip, [sp, #0x54]
00613510  50 80 8d e5                                      str r8, [sp, #0x50]
00613514  f9 fd ff eb                                      bl #0x612d00
00613518  34 00 9d e5                                      ldr r0, [sp, #0x34]
0061351c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00613520  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00613524  02 ea ff eb                                      bl #0x60dd34
00613528  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061352c  01 70 87 e2                                      add r7, r7, #1
00613530  0b 00 57 e1                                      cmp r7, fp
00613534  78 30 8d e5                                      str r3, [sp, #0x78]
00613538  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0061353c  04 60 86 e2                                      add r6, r6, #4
00613540  10 40 84 e2                                      add r4, r4, #0x10
00613544  7c 30 8d e5                                      str r3, [sp, #0x7c]
00613548  40 30 9d e5                                      ldr r3, [sp, #0x40]
0061354c  80 30 8d e5                                      str r3, [sp, #0x80]
00613550  44 30 9d e5                                      ldr r3, [sp, #0x44]
00613554  84 30 8d e5                                      str r3, [sp, #0x84]
00613558  c7 ff ff 1a                                      bne #0x61347c
0061355c  78 80 9d e5                                      ldr r8, [sp, #0x78]
00613560  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
00613564  80 30 9d e5                                      ldr r3, [sp, #0x80]
00613568  84 20 9d e5                                      ldr r2, [sp, #0x84]
0061356c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00613570  00 80 80 e5                                      str r8, [r0]
00613574  04 10 80 e5                                      str r1, [r0, #4]
00613578  0c 20 80 e5                                      str r2, [r0, #0xc]
0061357c  08 30 80 e5                                      str r3, [r0, #8]
00613580  9c d0 8d e2                                      add sp, sp, #0x9c
00613584  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
