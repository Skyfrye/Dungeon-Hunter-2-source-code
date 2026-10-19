; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007aa6ac, declared_size=228, range_size=228, mode=arm
; class-group: RenderFX::SearchIndex
; alias: _ZN8RenderFX11SearchIndex5ClearEv
; demangled: RenderFX::SearchIndex::Clear()
; decoder-mode: arm
007aa6ac  70 40 2d e9                                      push {r4, r5, r6, lr}
007aa6b0  00 20 90 e5                                      ldr r2, [r0]
007aa6b4  00 50 a0 e1                                      mov r5, r0
007aa6b8  00 00 52 e3                                      cmp r2, #0
007aa6bc  0a 00 00 0a                                      beq #0x7aa6ec
007aa6c0  04 10 92 e5                                      ldr r1, [r2, #4]
007aa6c4  00 00 51 e3                                      cmp r1, #0
007aa6c8  00 40 a0 b3                                      movlt r4, #0
007aa6cc  09 00 00 aa                                      bge #0x7aa6f8
007aa6d0  00 00 55 e3                                      cmp r5, #0
007aa6d4  04 00 00 0a                                      beq #0x7aa6ec
007aa6d8  00 00 52 e3                                      cmp r2, #0
007aa6dc  02 00 00 0a                                      beq #0x7aa6ec
007aa6e0  04 30 92 e5                                      ldr r3, [r2, #4]
007aa6e4  03 00 54 e1                                      cmp r4, r3
007aa6e8  10 00 00 da                                      ble #0x7aa730
007aa6ec  05 00 a0 e1                                      mov r0, r5
007aa6f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007aa6f4  c4 ff ff ea                                      b #0x7aa60c
007aa6f8  08 30 a0 e3                                      mov r3, #8
007aa6fc  00 40 a0 e3                                      mov r4, #0
007aa700  03 00 92 e7                                      ldr r0, [r2, r3]
007aa704  03 c0 82 e0                                      add ip, r2, r3
007aa708  20 30 83 e2                                      add r3, r3, #0x20
007aa70c  02 00 70 e3                                      cmn r0, #2
007aa710  02 00 00 0a                                      beq #0x7aa720
007aa714  04 00 9c e5                                      ldr r0, [ip, #4]
007aa718  01 00 70 e3                                      cmn r0, #1
007aa71c  eb ff ff 1a                                      bne #0x7aa6d0
007aa720  01 40 84 e2                                      add r4, r4, #1
007aa724  01 00 54 e1                                      cmp r4, r1
007aa728  f4 ff ff da                                      ble #0x7aa700
007aa72c  e7 ff ff ea                                      b #0x7aa6d0
007aa730  84 22 82 e0                                      add r2, r2, r4, lsl #5
007aa734  24 00 92 e5                                      ldr r0, [r2, #0x24]
007aa738  92 fc ff eb                                      bl #0x7a9988
007aa73c  00 20 95 e5                                      ldr r2, [r5]
007aa740  04 10 92 e5                                      ldr r1, [r2, #4]
007aa744  01 00 54 e1                                      cmp r4, r1
007aa748  e7 ff ff ca                                      bgt #0x7aa6ec
007aa74c  01 40 84 e2                                      add r4, r4, #1
007aa750  04 00 51 e1                                      cmp r1, r4
007aa754  df ff ff ba                                      blt #0x7aa6d8
007aa758  84 32 a0 e1                                      lsl r3, r4, #5
007aa75c  08 30 83 e2                                      add r3, r3, #8
007aa760  03 00 92 e7                                      ldr r0, [r2, r3]
007aa764  03 c0 82 e0                                      add ip, r2, r3
007aa768  20 30 83 e2                                      add r3, r3, #0x20
007aa76c  02 00 70 e3                                      cmn r0, #2
007aa770  02 00 00 0a                                      beq #0x7aa780
007aa774  04 00 9c e5                                      ldr r0, [ip, #4]
007aa778  01 00 70 e3                                      cmn r0, #1
007aa77c  d5 ff ff 1a                                      bne #0x7aa6d8
007aa780  01 40 84 e2                                      add r4, r4, #1
007aa784  04 00 51 e1                                      cmp r1, r4
007aa788  f4 ff ff aa                                      bge #0x7aa760
007aa78c  d1 ff ff ea                                      b #0x7aa6d8

; FUNCTION 0x007aadf8, declared_size=436, range_size=436, mode=arm
; class-group: RenderFX::SearchIndex
; alias: _ZN8RenderFX11SearchIndex4FindEPKc
; demangled: RenderFX::SearchIndex::Find(char const*)
; decoder-mode: arm
007aadf8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aadfc  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
007aae00  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
007aae04  b4 d0 4d e2                                      sub sp, sp, #0xb4
007aae08  04 40 8f e0                                      add r4, pc, r4
007aae0c  08 30 94 e7                                      ldr r3, [r4, r8]
007aae10  00 70 a0 e1                                      mov r7, r0
007aae14  01 00 a0 e1                                      mov r0, r1
007aae18  00 30 93 e5                                      ldr r3, [r3]
007aae1c  01 50 a0 e1                                      mov r5, r1
007aae20  98 60 8d e2                                      add r6, sp, #0x98
007aae24  ac 30 8d e5                                      str r3, [sp, #0xac]
007aae28  09 8c ed eb                                      bl #0x30de54
007aae2c  2e 10 a0 e3                                      mov r1, #0x2e
007aae30  00 a0 85 e0                                      add sl, r5, r0
007aae34  05 00 a0 e1                                      mov r0, r5
007aae38  79 8d ed eb                                      bl #0x30e424
007aae3c  00 00 50 e3                                      cmp r0, #0
007aae40  01 10 80 12                                      addne r1, r0, #1
007aae44  05 10 a0 01                                      moveq r1, r5
007aae48  0a 20 61 e0                                      rsb r2, r1, sl
007aae4c  06 00 a0 e1                                      mov r0, r6
007aae50  17 9c fe eb                                      bl #0x751eb4
007aae54  07 00 a0 e1                                      mov r0, r7
007aae58  06 10 a0 e1                                      mov r1, r6
007aae5c  2e f5 ff eb                                      bl #0x7a831c
007aae60  00 00 50 e3                                      cmp r0, #0
007aae64  3d 00 00 ba                                      blt #0x7aaf60
007aae68  00 30 97 e5                                      ldr r3, [r7]
007aae6c  80 02 83 e0                                      add r0, r3, r0, lsl #5
007aae70  24 90 90 e5                                      ldr sb, [r0, #0x24]
007aae74  04 30 99 e5                                      ldr r3, [sb, #4]
007aae78  00 00 53 e3                                      cmp r3, #0
007aae7c  37 00 00 da                                      ble #0x7aaf60
007aae80  00 b0 a0 e3                                      mov fp, #0
007aae84  18 20 8d e2                                      add r2, sp, #0x18
007aae88  04 08 8d e9                                      stmib sp, {r2, fp}
007aae8c  05 70 a0 e1                                      mov r7, r5
007aae90  00 30 99 e5                                      ldr r3, [sb]
007aae94  07 60 a0 e1                                      mov r6, r7
007aae98  10 b0 8d e5                                      str fp, [sp, #0x10]
007aae9c  0b 30 83 e0                                      add r3, r3, fp
007aaea0  0c 30 8d e5                                      str r3, [sp, #0xc]
007aaea4  04 30 83 e2                                      add r3, r3, #4
007aaea8  14 90 8d e5                                      str sb, [sp, #0x14]
007aaeac  07 b0 a0 e1                                      mov fp, r7
007aaeb0  04 90 a0 e1                                      mov sb, r4
007aaeb4  03 70 a0 e1                                      mov r7, r3
007aaeb8  04 50 9d e5                                      ldr r5, [sp, #4]
007aaebc  01 00 00 ea                                      b #0x7aaec8
007aaec0  01 40 84 e2                                      add r4, r4, #1
007aaec4  04 60 86 e0                                      add r6, r6, r4
007aaec8  2e 10 a0 e3                                      mov r1, #0x2e
007aaecc  06 00 a0 e1                                      mov r0, r6
007aaed0  54 8f ed eb                                      bl #0x30ec28
007aaed4  00 00 50 e3                                      cmp r0, #0
007aaed8  0a 00 a0 01                                      moveq r0, sl
007aaedc  00 40 66 e0                                      rsb r4, r6, r0
007aaee0  06 10 a0 e1                                      mov r1, r6
007aaee4  04 20 a0 e1                                      mov r2, r4
007aaee8  05 00 a0 e1                                      mov r0, r5
007aaeec  5d 8e ed eb                                      bl #0x30e868
007aaef0  b0 20 8d e2                                      add r2, sp, #0xb0
007aaef4  04 30 82 e0                                      add r3, r2, r4
007aaef8  00 20 a0 e3                                      mov r2, #0
007aaefc  07 00 a0 e1                                      mov r0, r7
007aaf00  05 10 a0 e1                                      mov r1, r5
007aaf04  98 20 43 e5                                      strb r2, [r3, #-0x98]
007aaf08  31 8f ed eb                                      bl #0x30ebd4
007aaf0c  00 00 50 e3                                      cmp r0, #0
007aaf10  07 00 00 0a                                      beq #0x7aaf34
007aaf14  d4 30 90 e1                                      ldrsb r3, [r0, r4]
007aaf18  04 70 80 e0                                      add r7, r0, r4
007aaf1c  00 00 53 e3                                      cmp r3, #0
007aaf20  e6 ff ff 1a                                      bne #0x7aaec0
007aaf24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007aaf28  09 40 a0 e1                                      mov r4, sb
007aaf2c  00 50 93 e5                                      ldr r5, [r3]
007aaf30  0b 00 00 ea                                      b #0x7aaf64
007aaf34  09 40 a0 e1                                      mov r4, sb
007aaf38  14 90 9d e5                                      ldr sb, [sp, #0x14]
007aaf3c  08 20 9d e5                                      ldr r2, [sp, #8]
007aaf40  0b 70 a0 e1                                      mov r7, fp
007aaf44  04 30 99 e5                                      ldr r3, [sb, #4]
007aaf48  10 b0 9d e5                                      ldr fp, [sp, #0x10]
007aaf4c  01 20 82 e2                                      add r2, r2, #1
007aaf50  03 00 52 e1                                      cmp r2, r3
007aaf54  08 20 8d e5                                      str r2, [sp, #8]
007aaf58  41 bf 8b e2                                      add fp, fp, #0x104
007aaf5c  cb ff ff ba                                      blt #0x7aae90
007aaf60  00 50 a0 e3                                      mov r5, #0
007aaf64  d8 39 dd e1                                      ldrsb r3, [sp, #0x98]
007aaf68  01 00 73 e3                                      cmn r3, #1
007aaf6c  07 00 00 0a                                      beq #0x7aaf90
007aaf70  08 30 94 e7                                      ldr r3, [r4, r8]
007aaf74  ac 20 9d e5                                      ldr r2, [sp, #0xac]
007aaf78  05 00 a0 e1                                      mov r0, r5
007aaf7c  00 30 93 e5                                      ldr r3, [r3]
007aaf80  03 00 52 e1                                      cmp r2, r3
007aaf84  05 00 00 1a                                      bne #0x7aafa0
007aaf88  b4 d0 8d e2                                      add sp, sp, #0xb4
007aaf8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007aaf90  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
007aaf94  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
007aaf98  e6 9e fe eb                                      bl #0x752b38
007aaf9c  f3 ff ff ea                                      b #0x7aaf70
007aafa0  da 8c ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007aafa4  88 9c 1e 00 ac 40 00 00                          .byte 0x88, 0x9c, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007adb14, declared_size=640, range_size=640, mode=arm
; class-group: RenderFX::SearchIndex
; alias: _ZN8RenderFX11SearchIndex4InitERS_
; demangled: RenderFX::SearchIndex::Init(RenderFX&)
; decoder-mode: arm
007adb14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007adb18  6c 22 9f e5                                      ldr r2, [pc, #0x26c]
007adb1c  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
007adb20  6b df 4d e2                                      sub sp, sp, #0x1ac
007adb24  02 20 8f e0                                      add r2, pc, r2
007adb28  10 30 8d e5                                      str r3, [sp, #0x10]
007adb2c  03 30 92 e7                                      ldr r3, [r2, r3]
007adb30  01 40 a0 e1                                      mov r4, r1
007adb34  0c 20 8d e5                                      str r2, [sp, #0xc]
007adb38  00 30 93 e5                                      ldr r3, [r3]
007adb3c  08 00 8d e5                                      str r0, [sp, #8]
007adb40  a4 31 8d e5                                      str r3, [sp, #0x1a4]
007adb44  d8 f2 ff eb                                      bl #0x7aa6ac
007adb48  40 10 94 e5                                      ldr r1, [r4, #0x40]
007adb4c  04 00 a0 e1                                      mov r0, r4
007adb50  00 20 a0 e3                                      mov r2, #0
007adb54  04 30 a0 e3                                      mov r3, #4
007adb58  2a ec ff eb                                      bl #0x7a8c08
007adb5c  04 00 8d e5                                      str r0, [sp, #4]
007adb60  04 10 90 e5                                      ldr r1, [r0, #4]
007adb64  00 00 51 e3                                      cmp r1, #0
007adb68  64 00 00 da                                      ble #0x7add00
007adb6c  00 90 a0 e3                                      mov sb, #0
007adb70  a0 80 8d e2                                      add r8, sp, #0xa0
007adb74  9c c0 8d e2                                      add ip, sp, #0x9c
007adb78  09 70 a0 e1                                      mov r7, sb
007adb7c  1c 60 8d e2                                      add r6, sp, #0x1c
007adb80  04 40 88 e2                                      add r4, r8, #4
007adb84  2e a0 a0 e3                                      mov sl, #0x2e
007adb88  14 c0 8d e5                                      str ip, [sp, #0x14]
007adb8c  04 20 9d e5                                      ldr r2, [sp, #4]
007adb90  00 30 92 e5                                      ldr r3, [r2]
007adb94  09 51 93 e7                                      ldr r5, [r3, sb, lsl #2]
007adb98  44 20 95 e5                                      ldr r2, [r5, #0x44]
007adb9c  d0 30 d2 e1                                      ldrsb r3, [r2]
007adba0  01 00 73 e3                                      cmn r3, #1
007adba4  04 30 92 05                                      ldreq r3, [r2, #4]
007adba8  01 30 43 e2                                      sub r3, r3, #1
007adbac  00 00 53 e3                                      cmp r3, #0
007adbb0  4f 00 00 da                                      ble #0x7adcf4
007adbb4  9c 70 8d e5                                      str r7, [sp, #0x9c]
007adbb8  08 00 9d e5                                      ldr r0, [sp, #8]
007adbbc  44 10 95 e5                                      ldr r1, [r5, #0x44]
007adbc0  d5 e9 ff eb                                      bl #0x7a831c
007adbc4  00 00 50 e3                                      cmp r0, #0
007adbc8  61 00 00 ba                                      blt #0x7add54
007adbcc  08 c0 9d e5                                      ldr ip, [sp, #8]
007adbd0  00 30 9c e5                                      ldr r3, [ip]
007adbd4  80 02 83 e0                                      add r0, r3, r0, lsl #5
007adbd8  24 30 90 e5                                      ldr r3, [r0, #0x24]
007adbdc  9c 30 8d e5                                      str r3, [sp, #0x9c]
007adbe0  00 10 a0 e3                                      mov r1, #0
007adbe4  41 2f a0 e3                                      mov r2, #0x104
007adbe8  08 00 a0 e1                                      mov r0, r8
007adbec  1b 82 ed eb                                      bl #0x30e460
007adbf0  a0 50 8d e5                                      str r5, [sp, #0xa0]
007adbf4  44 30 95 e5                                      ldr r3, [r5, #0x44]
007adbf8  00 b0 a0 e3                                      mov fp, #0
007adbfc  d0 20 d3 e1                                      ldrsb r2, [r3]
007adc00  01 00 72 e3                                      cmn r2, #1
007adc04  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007adc08  01 10 83 12                                      addne r1, r3, #1
007adc0c  d0 10 d1 e1                                      ldrsb r1, [r1]
007adc10  00 00 51 e3                                      cmp r1, #0
007adc14  06 00 00 0a                                      beq #0x7adc34
007adc18  01 00 72 e3                                      cmn r2, #1
007adc1c  0c 30 93 05                                      ldreq r3, [r3, #0xc]
007adc20  6a 1f 8d e2                                      add r1, sp, #0x1a8
007adc24  0b 21 81 e0                                      add r2, r1, fp, lsl #2
007adc28  01 30 83 12                                      addne r3, r3, #1
007adc2c  8c 31 02 e5                                      str r3, [r2, #-0x18c]
007adc30  01 b0 8b e2                                      add fp, fp, #1
007adc34  40 30 95 e5                                      ldr r3, [r5, #0x40]
007adc38  00 00 53 e3                                      cmp r3, #0
007adc3c  15 00 00 0a                                      beq #0x7adc98
007adc40  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
007adc44  04 20 d0 e5                                      ldrb r2, [r0, #4]
007adc48  00 00 52 e3                                      cmp r2, #0
007adc4c  09 00 00 0a                                      beq #0x7adc78
007adc50  03 50 a0 e1                                      mov r5, r3
007adc54  44 30 95 e5                                      ldr r3, [r5, #0x44]
007adc58  d0 20 d3 e1                                      ldrsb r2, [r3]
007adc5c  01 00 72 e3                                      cmn r2, #1
007adc60  0c 10 93 05                                      ldreq r1, [r3, #0xc]
007adc64  01 10 83 12                                      addne r1, r3, #1
007adc68  d0 10 d1 e1                                      ldrsb r1, [r1]
007adc6c  00 00 51 e3                                      cmp r1, #0
007adc70  ef ff ff 0a                                      beq #0x7adc34
007adc74  e7 ff ff ea                                      b #0x7adc18
007adc78  00 10 90 e5                                      ldr r1, [r0]
007adc7c  01 10 41 e2                                      sub r1, r1, #1
007adc80  00 00 51 e3                                      cmp r1, #0
007adc84  00 10 80 e5                                      str r1, [r0]
007adc88  00 00 00 1a                                      bne #0x7adc90
007adc8c  a9 93 fe eb                                      bl #0x752b38
007adc90  40 70 85 e5                                      str r7, [r5, #0x40]
007adc94  3c 70 85 e5                                      str r7, [r5, #0x3c]
007adc98  00 00 5b e3                                      cmp fp, #0
007adc9c  a4 70 cd e5                                      strb r7, [sp, #0xa4]
007adca0  05 00 00 0a                                      beq #0x7adcbc
007adca4  0b b1 86 e0                                      add fp, r6, fp, lsl #2
007adca8  04 10 3b e5                                      ldr r1, [fp, #-4]!
007adcac  04 00 a0 e1                                      mov r0, r4
007adcb0  36 84 ed eb                                      bl #0x30ed90
007adcb4  06 00 5b e1                                      cmp fp, r6
007adcb8  19 00 00 1a                                      bne #0x7add24
007adcbc  9c 50 9d e5                                      ldr r5, [sp, #0x9c]
007adcc0  04 30 95 e5                                      ldr r3, [r5, #4]
007adcc4  08 20 95 e5                                      ldr r2, [r5, #8]
007adcc8  01 b0 83 e2                                      add fp, r3, #1
007adccc  02 00 5b e1                                      cmp fp, r2
007adcd0  1a 00 00 ca                                      bgt #0x7add40
007adcd4  00 00 95 e5                                      ldr r0, [r5]
007adcd8  41 2f a0 e3                                      mov r2, #0x104
007adcdc  08 10 a0 e1                                      mov r1, r8
007adce0  92 03 20 e0                                      mla r0, r2, r3, r0
007adce4  df 82 ed eb                                      bl #0x30e868
007adce8  04 b0 85 e5                                      str fp, [r5, #4]
007adcec  04 20 9d e5                                      ldr r2, [sp, #4]
007adcf0  04 10 92 e5                                      ldr r1, [r2, #4]
007adcf4  01 90 89 e2                                      add sb, sb, #1
007adcf8  01 00 59 e1                                      cmp sb, r1
007adcfc  a2 ff ff ba                                      blt #0x7adb8c
007add00  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007add04  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007add08  a4 21 9d e5                                      ldr r2, [sp, #0x1a4]
007add0c  0c 30 91 e7                                      ldr r3, [r1, ip]
007add10  00 30 93 e5                                      ldr r3, [r3]
007add14  03 00 52 e1                                      cmp r2, r3
007add18  1a 00 00 1a                                      bne #0x7add88
007add1c  6b df 8d e2                                      add sp, sp, #0x1ac
007add20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007add24  04 00 a0 e1                                      mov r0, r4
007add28  49 80 ed eb                                      bl #0x30de54
007add2c  00 00 88 e0                                      add r0, r8, r0
007add30  04 30 80 e2                                      add r3, r0, #4
007add34  04 a0 c0 e5                                      strb sl, [r0, #4]
007add38  01 70 c3 e5                                      strb r7, [r3, #1]
007add3c  d9 ff ff ea                                      b #0x7adca8
007add40  05 00 a0 e1                                      mov r0, r5
007add44  cb 10 8b e0                                      add r1, fp, fp, asr #1
007add48  3b e9 ff eb                                      bl #0x7a823c
007add4c  04 30 95 e5                                      ldr r3, [r5, #4]
007add50  df ff ff ea                                      b #0x7adcd4
007add54  07 10 a0 e1                                      mov r1, r7
007add58  10 00 a0 e3                                      mov r0, #0x10
007add5c  91 93 fe eb                                      bl #0x752ba8
007add60  00 70 80 e5                                      str r7, [r0]
007add64  04 70 80 e5                                      str r7, [r0, #4]
007add68  08 70 80 e5                                      str r7, [r0, #8]
007add6c  0c 70 c0 e5                                      strb r7, [r0, #0xc]
007add70  9c 00 8d e5                                      str r0, [sp, #0x9c]
007add74  44 10 95 e5                                      ldr r1, [r5, #0x44]
007add78  08 00 9d e5                                      ldr r0, [sp, #8]
007add7c  14 20 9d e5                                      ldr r2, [sp, #0x14]
007add80  45 f3 ff eb                                      bl #0x7aaa9c
007add84  95 ff ff ea                                      b #0x7adbe0
007add88  60 81 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007add8c  6c 6f 1e 00 ac 40 00 00                          .byte 0x6c, 0x6f, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00
