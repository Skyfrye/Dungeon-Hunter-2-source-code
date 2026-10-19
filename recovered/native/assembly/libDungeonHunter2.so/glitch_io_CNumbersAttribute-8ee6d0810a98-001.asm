; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031da4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute6getIntEv
; demangled: glitch::io::CNumbersAttribute::getInt()
; decoder-mode: arm
0031da4c  10 40 2d e9                                      push {r4, lr}
0031da50  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0031da54  00 00 53 e3                                      cmp r3, #0
0031da58  09 00 00 0a                                      beq #0x31da84
0031da5c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0031da60  00 00 53 e3                                      cmp r3, #0
0031da64  02 00 00 1a                                      bne #0x31da74
0031da68  24 30 90 e5                                      ldr r3, [r0, #0x24]
0031da6c  00 00 93 e5                                      ldr r0, [r3]
0031da70  10 80 bd e8                                      pop {r4, pc}
0031da74  30 30 90 e5                                      ldr r3, [r0, #0x30]
0031da78  00 00 93 e5                                      ldr r0, [r3]
0031da7c  92 c2 ff eb                                      bl #0x30e4cc
0031da80  10 80 bd e8                                      pop {r4, pc}
0031da84  03 00 a0 e1                                      mov r0, r3
0031da88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031da8c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8getFloatEv
; demangled: glitch::io::CNumbersAttribute::getFloat()
; decoder-mode: arm
0031da8c  10 40 2d e9                                      push {r4, lr}
0031da90  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0031da94  00 00 53 e3                                      cmp r3, #0
0031da98  09 00 00 0a                                      beq #0x31dac4
0031da9c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0031daa0  00 00 53 e3                                      cmp r3, #0
0031daa4  03 00 00 1a                                      bne #0x31dab8
0031daa8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0031daac  00 00 93 e5                                      ldr r0, [r3]
0031dab0  ab c3 ff eb                                      bl #0x30e964
0031dab4  10 80 bd e8                                      pop {r4, pc}
0031dab8  30 30 90 e5                                      ldr r3, [r0, #0x30]
0031dabc  00 00 93 e5                                      ldr r0, [r3]
0031dac0  10 80 bd e8                                      pop {r4, pc}
0031dac4  00 00 a0 e3                                      mov r0, #0
0031dac8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031dacc, declared_size=144, range_size=144, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7getBoolEv
; demangled: glitch::io::CNumbersAttribute::getBool()
; decoder-mode: arm
0031dacc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031dad0  3c 80 90 e5                                      ldr r8, [r0, #0x3c]
0031dad4  00 60 a0 e1                                      mov r6, r0
0031dad8  00 00 58 e3                                      cmp r8, #0
0031dadc  1c 00 00 0a                                      beq #0x31db54
0031dae0  00 40 a0 e3                                      mov r4, #0
0031dae4  40 a0 d0 e5                                      ldrb sl, [r0, #0x40]
0031dae8  04 50 a0 e1                                      mov r5, r4
0031daec  0c 00 00 ea                                      b #0x31db24
0031daf0  30 30 96 e5                                      ldr r3, [r6, #0x30]
0031daf4  00 70 a0 e3                                      mov r7, #0
0031daf8  01 50 85 e2                                      add r5, r5, #1
0031dafc  04 00 93 e7                                      ldr r0, [r3, r4]
0031db00  21 c1 ff eb                                      bl #0x30df8c
0031db04  00 00 50 e3                                      cmp r0, #0
0031db08  01 70 a0 03                                      moveq r7, #1
0031db0c  77 70 ef e6                                      uxtb r7, r7
0031db10  00 00 57 e3                                      cmp r7, #0
0031db14  0c 00 00 1a                                      bne #0x31db4c
0031db18  08 00 55 e1                                      cmp r5, r8
0031db1c  04 40 84 e2                                      add r4, r4, #4
0031db20  0b 00 00 0a                                      beq #0x31db54
0031db24  00 00 5a e3                                      cmp sl, #0
0031db28  00 10 a0 e3                                      mov r1, #0
0031db2c  ef ff ff 1a                                      bne #0x31daf0
0031db30  24 30 96 e5                                      ldr r3, [r6, #0x24]
0031db34  01 50 85 e2                                      add r5, r5, #1
0031db38  04 70 93 e7                                      ldr r7, [r3, r4]
0031db3c  00 70 57 e2                                      subs r7, r7, #0
0031db40  01 70 a0 13                                      movne r7, #1
0031db44  00 00 57 e3                                      cmp r7, #0
0031db48  f2 ff ff 0a                                      beq #0x31db18
0031db4c  01 00 a0 e3                                      mov r0, #1
0031db50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0031db54  00 00 a0 e3                                      mov r0, #0
0031db58  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0031db5c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getPositionEv
; demangled: glitch::io::CNumbersAttribute::getPosition()
; decoder-mode: arm
0031db5c  00 30 a0 e3                                      mov r3, #0
0031db60  70 40 2d e9                                      push {r4, r5, r6, lr}
0031db64  04 30 80 e5                                      str r3, [r0, #4]
0031db68  00 30 80 e5                                      str r3, [r0]
0031db6c  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
0031db70  00 40 a0 e1                                      mov r4, r0
0031db74  01 50 a0 e1                                      mov r5, r1
0031db78  00 00 53 e3                                      cmp r3, #0
0031db7c  10 00 00 0a                                      beq #0x31dbc4
0031db80  3c 00 91 e5                                      ldr r0, [r1, #0x3c]
0031db84  00 00 50 e3                                      cmp r0, #0
0031db88  02 00 00 0a                                      beq #0x31db98
0031db8c  30 30 91 e5                                      ldr r3, [r1, #0x30]
0031db90  00 00 93 e5                                      ldr r0, [r3]
0031db94  4c c2 ff eb                                      bl #0x30e4cc
0031db98  00 00 84 e5                                      str r0, [r4]
0031db9c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dba0  01 00 53 e3                                      cmp r3, #1
0031dba4  00 00 a0 93                                      movls r0, #0
0031dba8  02 00 00 9a                                      bls #0x31dbb8
0031dbac  30 30 95 e5                                      ldr r3, [r5, #0x30]
0031dbb0  04 00 93 e5                                      ldr r0, [r3, #4]
0031dbb4  44 c2 ff eb                                      bl #0x30e4cc
0031dbb8  04 00 84 e5                                      str r0, [r4, #4]
0031dbbc  04 00 a0 e1                                      mov r0, r4
0031dbc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dbc4  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031dbc8  00 00 53 e3                                      cmp r3, #0
0031dbcc  24 30 91 15                                      ldrne r3, [r1, #0x24]
0031dbd0  00 30 93 15                                      ldrne r3, [r3]
0031dbd4  00 30 80 e5                                      str r3, [r0]
0031dbd8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031dbdc  01 00 53 e3                                      cmp r3, #1
0031dbe0  24 30 91 85                                      ldrhi r3, [r1, #0x24]
0031dbe4  00 30 a0 93                                      movls r3, #0
0031dbe8  04 30 93 85                                      ldrhi r3, [r3, #4]
0031dbec  04 30 80 e5                                      str r3, [r0, #4]
0031dbf0  04 00 a0 e1                                      mov r0, r4
0031dbf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031dbf8, declared_size=184, range_size=184, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getVector2dEv
; demangled: glitch::io::CNumbersAttribute::getVector2d()
; decoder-mode: arm
0031dbf8  00 30 a0 e3                                      mov r3, #0
0031dbfc  70 40 2d e9                                      push {r4, r5, r6, lr}
0031dc00  00 30 80 e5                                      str r3, [r0]
0031dc04  04 30 80 e5                                      str r3, [r0, #4]
0031dc08  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031dc0c  00 40 a0 e1                                      mov r4, r0
0031dc10  01 50 a0 e1                                      mov r5, r1
0031dc14  00 00 52 e3                                      cmp r2, #0
0031dc18  0c 00 00 0a                                      beq #0x31dc50
0031dc1c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031dc20  00 00 52 e3                                      cmp r2, #0
0031dc24  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031dc28  00 30 93 15                                      ldrne r3, [r3]
0031dc2c  00 30 80 e5                                      str r3, [r0]
0031dc30  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031dc34  01 00 53 e3                                      cmp r3, #1
0031dc38  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031dc3c  00 30 a0 93                                      movls r3, #0
0031dc40  04 30 93 85                                      ldrhi r3, [r3, #4]
0031dc44  04 30 80 e5                                      str r3, [r0, #4]
0031dc48  04 00 a0 e1                                      mov r0, r4
0031dc4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dc50  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031dc54  00 00 52 e3                                      cmp r2, #0
0031dc58  03 00 a0 01                                      moveq r0, r3
0031dc5c  0a 00 00 1a                                      bne #0x31dc8c
0031dc60  00 00 84 e5                                      str r0, [r4]
0031dc64  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dc68  01 00 53 e3                                      cmp r3, #1
0031dc6c  00 00 a0 93                                      movls r0, #0
0031dc70  02 00 00 9a                                      bls #0x31dc80
0031dc74  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dc78  04 00 93 e5                                      ldr r0, [r3, #4]
0031dc7c  38 c3 ff eb                                      bl #0x30e964
0031dc80  04 00 84 e5                                      str r0, [r4, #4]
0031dc84  04 00 a0 e1                                      mov r0, r4
0031dc88  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dc8c  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031dc90  00 00 93 e5                                      ldr r0, [r3]
0031dc94  32 c3 ff eb                                      bl #0x30e964
0031dc98  00 00 84 e5                                      str r0, [r4]
0031dc9c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dca0  01 00 53 e3                                      cmp r3, #1
0031dca4  00 00 a0 93                                      movls r0, #0
0031dca8  f1 ff ff 8a                                      bhi #0x31dc74
0031dcac  f3 ff ff ea                                      b #0x31dc80

; FUNCTION 0x0031dcb0, declared_size=252, range_size=252, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getVector3dEv
; demangled: glitch::io::CNumbersAttribute::getVector3d()
; decoder-mode: arm
0031dcb0  00 30 a0 e3                                      mov r3, #0
0031dcb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0031dcb8  00 30 80 e5                                      str r3, [r0]
0031dcbc  04 30 80 e5                                      str r3, [r0, #4]
0031dcc0  08 30 80 e5                                      str r3, [r0, #8]
0031dcc4  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031dcc8  00 40 a0 e1                                      mov r4, r0
0031dccc  01 50 a0 e1                                      mov r5, r1
0031dcd0  00 00 52 e3                                      cmp r2, #0
0031dcd4  12 00 00 0a                                      beq #0x31dd24
0031dcd8  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031dcdc  00 00 52 e3                                      cmp r2, #0
0031dce0  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031dce4  00 30 93 15                                      ldrne r3, [r3]
0031dce8  00 30 80 e5                                      str r3, [r0]
0031dcec  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031dcf0  01 00 53 e3                                      cmp r3, #1
0031dcf4  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031dcf8  00 30 a0 93                                      movls r3, #0
0031dcfc  04 30 93 85                                      ldrhi r3, [r3, #4]
0031dd00  04 30 80 e5                                      str r3, [r0, #4]
0031dd04  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031dd08  02 00 53 e3                                      cmp r3, #2
0031dd0c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031dd10  00 30 a0 93                                      movls r3, #0
0031dd14  08 30 93 85                                      ldrhi r3, [r3, #8]
0031dd18  08 30 80 e5                                      str r3, [r0, #8]
0031dd1c  04 00 a0 e1                                      mov r0, r4
0031dd20  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dd24  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031dd28  00 00 52 e3                                      cmp r2, #0
0031dd2c  03 00 a0 01                                      moveq r0, r3
0031dd30  0f 00 00 1a                                      bne #0x31dd74
0031dd34  00 00 84 e5                                      str r0, [r4]
0031dd38  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dd3c  01 00 53 e3                                      cmp r3, #1
0031dd40  00 00 a0 93                                      movls r0, #0
0031dd44  02 00 00 9a                                      bls #0x31dd54
0031dd48  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dd4c  04 00 93 e5                                      ldr r0, [r3, #4]
0031dd50  03 c3 ff eb                                      bl #0x30e964
0031dd54  04 00 84 e5                                      str r0, [r4, #4]
0031dd58  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dd5c  02 00 53 e3                                      cmp r3, #2
0031dd60  00 00 a0 93                                      movls r0, #0
0031dd64  0b 00 00 8a                                      bhi #0x31dd98
0031dd68  08 00 84 e5                                      str r0, [r4, #8]
0031dd6c  04 00 a0 e1                                      mov r0, r4
0031dd70  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dd74  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031dd78  00 00 93 e5                                      ldr r0, [r3]
0031dd7c  f8 c2 ff eb                                      bl #0x30e964
0031dd80  00 00 84 e5                                      str r0, [r4]
0031dd84  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dd88  01 00 53 e3                                      cmp r3, #1
0031dd8c  00 00 a0 93                                      movls r0, #0
0031dd90  ec ff ff 8a                                      bhi #0x31dd48
0031dd94  ee ff ff ea                                      b #0x31dd54
0031dd98  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dd9c  08 00 93 e5                                      ldr r0, [r3, #8]
0031dda0  ef c2 ff eb                                      bl #0x30e964
0031dda4  08 00 84 e5                                      str r0, [r4, #8]
0031dda8  ef ff ff ea                                      b #0x31dd6c

; FUNCTION 0x0031ddac, declared_size=336, range_size=336, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getVector4dEv
; demangled: glitch::io::CNumbersAttribute::getVector4d()
; decoder-mode: arm
0031ddac  00 30 a0 e3                                      mov r3, #0
0031ddb0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031ddb4  00 30 80 e5                                      str r3, [r0]
0031ddb8  04 30 80 e5                                      str r3, [r0, #4]
0031ddbc  08 30 80 e5                                      str r3, [r0, #8]
0031ddc0  0c 30 80 e5                                      str r3, [r0, #0xc]
0031ddc4  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031ddc8  00 40 a0 e1                                      mov r4, r0
0031ddcc  01 50 a0 e1                                      mov r5, r1
0031ddd0  00 00 52 e3                                      cmp r2, #0
0031ddd4  18 00 00 0a                                      beq #0x31de3c
0031ddd8  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031dddc  00 00 52 e3                                      cmp r2, #0
0031dde0  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031dde4  00 30 93 15                                      ldrne r3, [r3]
0031dde8  00 30 80 e5                                      str r3, [r0]
0031ddec  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ddf0  01 00 53 e3                                      cmp r3, #1
0031ddf4  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ddf8  00 30 a0 93                                      movls r3, #0
0031ddfc  04 30 93 85                                      ldrhi r3, [r3, #4]
0031de00  04 30 80 e5                                      str r3, [r0, #4]
0031de04  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031de08  02 00 53 e3                                      cmp r3, #2
0031de0c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031de10  00 30 a0 93                                      movls r3, #0
0031de14  08 30 93 85                                      ldrhi r3, [r3, #8]
0031de18  08 30 80 e5                                      str r3, [r0, #8]
0031de1c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031de20  03 00 53 e3                                      cmp r3, #3
0031de24  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031de28  00 30 a0 93                                      movls r3, #0
0031de2c  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031de30  0c 30 80 e5                                      str r3, [r0, #0xc]
0031de34  04 00 a0 e1                                      mov r0, r4
0031de38  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031de3c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031de40  00 00 52 e3                                      cmp r2, #0
0031de44  03 00 a0 01                                      moveq r0, r3
0031de48  14 00 00 1a                                      bne #0x31dea0
0031de4c  00 00 84 e5                                      str r0, [r4]
0031de50  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031de54  01 00 53 e3                                      cmp r3, #1
0031de58  00 00 a0 93                                      movls r0, #0
0031de5c  02 00 00 9a                                      bls #0x31de6c
0031de60  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031de64  04 00 93 e5                                      ldr r0, [r3, #4]
0031de68  bd c2 ff eb                                      bl #0x30e964
0031de6c  04 00 84 e5                                      str r0, [r4, #4]
0031de70  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031de74  02 00 53 e3                                      cmp r3, #2
0031de78  00 00 a0 93                                      movls r0, #0
0031de7c  15 00 00 8a                                      bhi #0x31ded8
0031de80  08 00 84 e5                                      str r0, [r4, #8]
0031de84  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031de88  03 00 53 e3                                      cmp r3, #3
0031de8c  00 00 a0 93                                      movls r0, #0
0031de90  0b 00 00 8a                                      bhi #0x31dec4
0031de94  0c 00 84 e5                                      str r0, [r4, #0xc]
0031de98  04 00 a0 e1                                      mov r0, r4
0031de9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031dea0  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031dea4  00 00 93 e5                                      ldr r0, [r3]
0031dea8  ad c2 ff eb                                      bl #0x30e964
0031deac  00 00 84 e5                                      str r0, [r4]
0031deb0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031deb4  01 00 53 e3                                      cmp r3, #1
0031deb8  00 00 a0 93                                      movls r0, #0
0031debc  e7 ff ff 8a                                      bhi #0x31de60
0031dec0  e9 ff ff ea                                      b #0x31de6c
0031dec4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dec8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031decc  a4 c2 ff eb                                      bl #0x30e964
0031ded0  0c 00 84 e5                                      str r0, [r4, #0xc]
0031ded4  ef ff ff ea                                      b #0x31de98
0031ded8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dedc  08 00 93 e5                                      ldr r0, [r3, #8]
0031dee0  9f c2 ff eb                                      bl #0x30e964
0031dee4  08 00 84 e5                                      str r0, [r4, #8]
0031dee8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031deec  03 00 53 e3                                      cmp r3, #3
0031def0  00 00 a0 93                                      movls r0, #0
0031def4  e6 ff ff 9a                                      bls #0x31de94
0031def8  f1 ff ff ea                                      b #0x31dec4

; FUNCTION 0x0031defc, declared_size=388, range_size=388, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9getColorfEv
; demangled: glitch::io::CNumbersAttribute::getColorf()
; decoder-mode: arm
0031defc  70 40 2d e9                                      push {r4, r5, r6, lr}
0031df00  00 30 a0 e3                                      mov r3, #0
0031df04  fe 25 a0 e3                                      mov r2, #0x3f800000
0031df08  0c 20 80 e5                                      str r2, [r0, #0xc]
0031df0c  00 30 80 e5                                      str r3, [r0]
0031df10  04 30 80 e5                                      str r3, [r0, #4]
0031df14  08 30 80 e5                                      str r3, [r0, #8]
0031df18  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031df1c  00 40 a0 e1                                      mov r4, r0
0031df20  01 50 a0 e1                                      mov r5, r1
0031df24  00 00 52 e3                                      cmp r2, #0
0031df28  18 00 00 0a                                      beq #0x31df90
0031df2c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031df30  00 00 52 e3                                      cmp r2, #0
0031df34  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031df38  00 30 93 15                                      ldrne r3, [r3]
0031df3c  00 30 80 e5                                      str r3, [r0]
0031df40  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031df44  01 00 53 e3                                      cmp r3, #1
0031df48  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031df4c  00 30 a0 93                                      movls r3, #0
0031df50  04 30 93 85                                      ldrhi r3, [r3, #4]
0031df54  04 30 80 e5                                      str r3, [r0, #4]
0031df58  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031df5c  02 00 53 e3                                      cmp r3, #2
0031df60  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031df64  00 30 a0 93                                      movls r3, #0
0031df68  08 30 93 85                                      ldrhi r3, [r3, #8]
0031df6c  08 30 80 e5                                      str r3, [r0, #8]
0031df70  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031df74  03 00 53 e3                                      cmp r3, #3
0031df78  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031df7c  00 30 a0 93                                      movls r3, #0
0031df80  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031df84  0c 30 80 e5                                      str r3, [r0, #0xc]
0031df88  04 00 a0 e1                                      mov r0, r4
0031df8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031df90  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031df94  00 00 52 e3                                      cmp r2, #0
0031df98  03 00 a0 01                                      moveq r0, r3
0031df9c  17 00 00 1a                                      bne #0x31e000
0031dfa0  00 00 84 e5                                      str r0, [r4]
0031dfa4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dfa8  01 00 53 e3                                      cmp r3, #1
0031dfac  00 00 a0 93                                      movls r0, #0
0031dfb0  05 00 00 9a                                      bls #0x31dfcc
0031dfb4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031dfb8  04 00 93 e5                                      ldr r0, [r3, #4]
0031dfbc  68 c2 ff eb                                      bl #0x30e964
0031dfc0  43 14 a0 e3                                      mov r1, #0x43000000
0031dfc4  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031dfc8  31 c3 ff eb                                      bl #0x30ec94
0031dfcc  04 00 84 e5                                      str r0, [r4, #4]
0031dfd0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dfd4  02 00 53 e3                                      cmp r3, #2
0031dfd8  00 00 a0 93                                      movls r0, #0
0031dfdc  1b 00 00 8a                                      bhi #0x31e050
0031dfe0  08 00 84 e5                                      str r0, [r4, #8]
0031dfe4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031dfe8  03 00 53 e3                                      cmp r3, #3
0031dfec  00 00 a0 93                                      movls r0, #0
0031dff0  0e 00 00 8a                                      bhi #0x31e030
0031dff4  0c 00 84 e5                                      str r0, [r4, #0xc]
0031dff8  04 00 a0 e1                                      mov r0, r4
0031dffc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e000  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031e004  00 00 93 e5                                      ldr r0, [r3]
0031e008  55 c2 ff eb                                      bl #0x30e964
0031e00c  43 14 a0 e3                                      mov r1, #0x43000000
0031e010  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e014  1e c3 ff eb                                      bl #0x30ec94
0031e018  00 00 84 e5                                      str r0, [r4]
0031e01c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e020  01 00 53 e3                                      cmp r3, #1
0031e024  00 00 a0 93                                      movls r0, #0
0031e028  e1 ff ff 8a                                      bhi #0x31dfb4
0031e02c  e6 ff ff ea                                      b #0x31dfcc
0031e030  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e034  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e038  49 c2 ff eb                                      bl #0x30e964
0031e03c  43 14 a0 e3                                      mov r1, #0x43000000
0031e040  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e044  12 c3 ff eb                                      bl #0x30ec94
0031e048  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e04c  e9 ff ff ea                                      b #0x31dff8
0031e050  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e054  08 00 93 e5                                      ldr r0, [r3, #8]
0031e058  41 c2 ff eb                                      bl #0x30e964
0031e05c  43 14 a0 e3                                      mov r1, #0x43000000
0031e060  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e064  0a c3 ff eb                                      bl #0x30ec94
0031e068  08 00 84 e5                                      str r0, [r4, #8]
0031e06c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e070  03 00 53 e3                                      cmp r3, #3
0031e074  00 00 a0 93                                      movls r0, #0
0031e078  dd ff ff 9a                                      bls #0x31dff4
0031e07c  eb ff ff ea                                      b #0x31e030

; FUNCTION 0x0031e080, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8getColorEv
; demangled: glitch::io::CNumbersAttribute::getColor()
; decoder-mode: arm
0031e080  70 40 2d e9                                      push {r4, r5, r6, lr}
0031e084  00 30 a0 e1                                      mov r3, r0
0031e088  18 d0 4d e2                                      sub sp, sp, #0x18
0031e08c  00 30 93 e5                                      ldr r3, [r3]
0031e090  00 10 a0 e1                                      mov r1, r0
0031e094  04 00 8d e2                                      add r0, sp, #4
0031e098  0f e0 a0 e1                                      mov lr, pc
0031e09c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0031e0a0  43 14 a0 e3                                      mov r1, #0x43000000
0031e0a4  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e0a8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0031e0ac  2e c3 ff eb                                      bl #0x30ed6c
0031e0b0  7a 80 16 eb                                      bl #0x8be2a0
0031e0b4  43 14 a0 e3                                      mov r1, #0x43000000
0031e0b8  70 40 ef e6                                      uxtb r4, r0
0031e0bc  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e0c0  04 00 9d e5                                      ldr r0, [sp, #4]
0031e0c4  28 c3 ff eb                                      bl #0x30ed6c
0031e0c8  74 80 16 eb                                      bl #0x8be2a0
0031e0cc  43 14 a0 e3                                      mov r1, #0x43000000
0031e0d0  70 60 ef e6                                      uxtb r6, r0
0031e0d4  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e0d8  08 00 9d e5                                      ldr r0, [sp, #8]
0031e0dc  22 c3 ff eb                                      bl #0x30ed6c
0031e0e0  6e 80 16 eb                                      bl #0x8be2a0
0031e0e4  43 14 a0 e3                                      mov r1, #0x43000000
0031e0e8  70 50 ef e6                                      uxtb r5, r0
0031e0ec  7f 18 81 e2                                      add r1, r1, #0x7f0000
0031e0f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0031e0f4  1c c3 ff eb                                      bl #0x30ed6c
0031e0f8  68 80 16 eb                                      bl #0x8be2a0
0031e0fc  00 30 a0 e3                                      mov r3, #0
0031e100  16 30 c7 e7                                      bfi r3, r6, #0, #8
0031e104  15 34 cf e7                                      bfi r3, r5, #8, #8
0031e108  70 00 ef e6                                      uxtb r0, r0
0031e10c  10 38 d7 e7                                      bfi r3, r0, #0x10, #8
0031e110  14 3c df e7                                      bfi r3, r4, #0x18, #8
0031e114  03 00 a0 e1                                      mov r0, r3
0031e118  18 d0 8d e2                                      add sp, sp, #0x18
0031e11c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031e120, declared_size=316, range_size=316, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7getRectEv
; demangled: glitch::io::CNumbersAttribute::getRect()
; decoder-mode: arm
0031e120  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031e124  00 30 a0 e3                                      mov r3, #0
0031e128  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e12c  00 30 80 e5                                      str r3, [r0]
0031e130  04 30 80 e5                                      str r3, [r0, #4]
0031e134  08 30 80 e5                                      str r3, [r0, #8]
0031e138  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
0031e13c  00 40 a0 e1                                      mov r4, r0
0031e140  01 50 a0 e1                                      mov r5, r1
0031e144  00 00 53 e3                                      cmp r3, #0
0031e148  20 00 00 0a                                      beq #0x31e1d0
0031e14c  3c 70 91 e5                                      ldr r7, [r1, #0x3c]
0031e150  00 00 57 e3                                      cmp r7, #0
0031e154  03 00 00 0a                                      beq #0x31e168
0031e158  30 30 91 e5                                      ldr r3, [r1, #0x30]
0031e15c  00 00 93 e5                                      ldr r0, [r3]
0031e160  d9 c0 ff eb                                      bl #0x30e4cc
0031e164  00 70 a0 e1                                      mov r7, r0
0031e168  00 70 84 e5                                      str r7, [r4]
0031e16c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e170  01 00 53 e3                                      cmp r3, #1
0031e174  00 60 a0 93                                      movls r6, #0
0031e178  03 00 00 9a                                      bls #0x31e18c
0031e17c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0031e180  04 00 93 e5                                      ldr r0, [r3, #4]
0031e184  d0 c0 ff eb                                      bl #0x30e4cc
0031e188  00 60 a0 e1                                      mov r6, r0
0031e18c  04 60 84 e5                                      str r6, [r4, #4]
0031e190  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e194  02 00 53 e3                                      cmp r3, #2
0031e198  23 00 00 8a                                      bhi #0x31e22c
0031e19c  07 00 a0 e1                                      mov r0, r7
0031e1a0  ef c1 ff eb                                      bl #0x30e964
0031e1a4  c8 c0 ff eb                                      bl #0x30e4cc
0031e1a8  08 00 84 e5                                      str r0, [r4, #8]
0031e1ac  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e1b0  03 00 53 e3                                      cmp r3, #3
0031e1b4  23 00 00 9a                                      bls #0x31e248
0031e1b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
0031e1bc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e1c0  c1 c0 ff eb                                      bl #0x30e4cc
0031e1c4  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e1c8  04 00 a0 e1                                      mov r0, r4
0031e1cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031e1d0  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e1d4  00 00 52 e3                                      cmp r2, #0
0031e1d8  24 30 91 15                                      ldrne r3, [r1, #0x24]
0031e1dc  00 20 93 15                                      ldrne r2, [r3]
0031e1e0  00 20 80 e5                                      str r2, [r0]
0031e1e4  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e1e8  01 00 53 e3                                      cmp r3, #1
0031e1ec  24 30 91 85                                      ldrhi r3, [r1, #0x24]
0031e1f0  00 30 a0 93                                      movls r3, #0
0031e1f4  04 30 93 85                                      ldrhi r3, [r3, #4]
0031e1f8  04 30 80 e5                                      str r3, [r0, #4]
0031e1fc  3c 10 91 e5                                      ldr r1, [r1, #0x3c]
0031e200  02 00 51 e3                                      cmp r1, #2
0031e204  24 20 95 85                                      ldrhi r2, [r5, #0x24]
0031e208  08 20 92 85                                      ldrhi r2, [r2, #8]
0031e20c  08 20 80 e5                                      str r2, [r0, #8]
0031e210  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
0031e214  03 00 52 e3                                      cmp r2, #3
0031e218  24 30 95 85                                      ldrhi r3, [r5, #0x24]
0031e21c  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031e220  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e224  04 00 a0 e1                                      mov r0, r4
0031e228  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031e22c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0031e230  08 00 93 e5                                      ldr r0, [r3, #8]
0031e234  a4 c0 ff eb                                      bl #0x30e4cc
0031e238  08 00 84 e5                                      str r0, [r4, #8]
0031e23c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e240  03 00 53 e3                                      cmp r3, #3
0031e244  db ff ff 8a                                      bhi #0x31e1b8
0031e248  06 00 a0 e1                                      mov r0, r6
0031e24c  c4 c1 ff eb                                      bl #0x30e964
0031e250  9d c0 ff eb                                      bl #0x30e4cc
0031e254  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e258  da ff ff ea                                      b #0x31e1c8

; FUNCTION 0x0031e25c, declared_size=340, range_size=340, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute13getQuaternionEv
; demangled: glitch::io::CNumbersAttribute::getQuaternion()
; decoder-mode: arm
0031e25c  00 30 a0 e3                                      mov r3, #0
0031e260  fe 25 a0 e3                                      mov r2, #0x3f800000
0031e264  70 40 2d e9                                      push {r4, r5, r6, lr}
0031e268  0c 20 80 e5                                      str r2, [r0, #0xc]
0031e26c  00 30 80 e5                                      str r3, [r0]
0031e270  04 30 80 e5                                      str r3, [r0, #4]
0031e274  08 30 80 e5                                      str r3, [r0, #8]
0031e278  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031e27c  00 40 a0 e1                                      mov r4, r0
0031e280  01 50 a0 e1                                      mov r5, r1
0031e284  00 00 52 e3                                      cmp r2, #0
0031e288  18 00 00 0a                                      beq #0x31e2f0
0031e28c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e290  00 00 52 e3                                      cmp r2, #0
0031e294  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031e298  00 30 93 15                                      ldrne r3, [r3]
0031e29c  00 30 80 e5                                      str r3, [r0]
0031e2a0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e2a4  01 00 53 e3                                      cmp r3, #1
0031e2a8  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e2ac  00 30 a0 93                                      movls r3, #0
0031e2b0  04 30 93 85                                      ldrhi r3, [r3, #4]
0031e2b4  04 30 80 e5                                      str r3, [r0, #4]
0031e2b8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e2bc  02 00 53 e3                                      cmp r3, #2
0031e2c0  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e2c4  00 30 a0 93                                      movls r3, #0
0031e2c8  08 30 93 85                                      ldrhi r3, [r3, #8]
0031e2cc  08 30 80 e5                                      str r3, [r0, #8]
0031e2d0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e2d4  03 00 53 e3                                      cmp r3, #3
0031e2d8  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e2dc  00 30 a0 93                                      movls r3, #0
0031e2e0  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031e2e4  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e2e8  04 00 a0 e1                                      mov r0, r4
0031e2ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e2f0  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e2f4  00 00 52 e3                                      cmp r2, #0
0031e2f8  03 00 a0 01                                      moveq r0, r3
0031e2fc  14 00 00 1a                                      bne #0x31e354
0031e300  00 00 84 e5                                      str r0, [r4]
0031e304  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e308  01 00 53 e3                                      cmp r3, #1
0031e30c  00 00 a0 93                                      movls r0, #0
0031e310  02 00 00 9a                                      bls #0x31e320
0031e314  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e318  04 00 93 e5                                      ldr r0, [r3, #4]
0031e31c  90 c1 ff eb                                      bl #0x30e964
0031e320  04 00 84 e5                                      str r0, [r4, #4]
0031e324  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e328  02 00 53 e3                                      cmp r3, #2
0031e32c  00 00 a0 93                                      movls r0, #0
0031e330  15 00 00 8a                                      bhi #0x31e38c
0031e334  08 00 84 e5                                      str r0, [r4, #8]
0031e338  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e33c  03 00 53 e3                                      cmp r3, #3
0031e340  00 00 a0 93                                      movls r0, #0
0031e344  0b 00 00 8a                                      bhi #0x31e378
0031e348  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e34c  04 00 a0 e1                                      mov r0, r4
0031e350  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e354  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031e358  00 00 93 e5                                      ldr r0, [r3]
0031e35c  80 c1 ff eb                                      bl #0x30e964
0031e360  00 00 84 e5                                      str r0, [r4]
0031e364  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e368  01 00 53 e3                                      cmp r3, #1
0031e36c  00 00 a0 93                                      movls r0, #0
0031e370  e7 ff ff 8a                                      bhi #0x31e314
0031e374  e9 ff ff ea                                      b #0x31e320
0031e378  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e37c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e380  77 c1 ff eb                                      bl #0x30e964
0031e384  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e388  ef ff ff ea                                      b #0x31e34c
0031e38c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e390  08 00 93 e5                                      ldr r0, [r3, #8]
0031e394  72 c1 ff eb                                      bl #0x30e964
0031e398  08 00 84 e5                                      str r0, [r4, #8]
0031e39c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e3a0  03 00 53 e3                                      cmp r3, #3
0031e3a4  00 00 a0 93                                      movls r0, #0
0031e3a8  e6 ff ff 9a                                      bls #0x31e348
0031e3ac  f1 ff ff ea                                      b #0x31e378

; FUNCTION 0x0031e3b0, declared_size=756, range_size=756, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getTriangleEv
; demangled: glitch::io::CNumbersAttribute::getTriangle()
; decoder-mode: arm
0031e3b0  00 30 a0 e3                                      mov r3, #0
0031e3b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0031e3b8  00 30 80 e5                                      str r3, [r0]
0031e3bc  04 30 80 e5                                      str r3, [r0, #4]
0031e3c0  08 30 80 e5                                      str r3, [r0, #8]
0031e3c4  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e3c8  10 30 80 e5                                      str r3, [r0, #0x10]
0031e3cc  14 30 80 e5                                      str r3, [r0, #0x14]
0031e3d0  18 30 80 e5                                      str r3, [r0, #0x18]
0031e3d4  1c 30 80 e5                                      str r3, [r0, #0x1c]
0031e3d8  20 30 80 e5                                      str r3, [r0, #0x20]
0031e3dc  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031e3e0  00 40 a0 e1                                      mov r4, r0
0031e3e4  01 50 a0 e1                                      mov r5, r1
0031e3e8  00 00 52 e3                                      cmp r2, #0
0031e3ec  36 00 00 0a                                      beq #0x31e4cc
0031e3f0  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e3f4  00 00 52 e3                                      cmp r2, #0
0031e3f8  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031e3fc  00 30 93 15                                      ldrne r3, [r3]
0031e400  00 30 80 e5                                      str r3, [r0]
0031e404  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e408  01 00 53 e3                                      cmp r3, #1
0031e40c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e410  00 30 a0 93                                      movls r3, #0
0031e414  04 30 93 85                                      ldrhi r3, [r3, #4]
0031e418  04 30 80 e5                                      str r3, [r0, #4]
0031e41c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e420  02 00 53 e3                                      cmp r3, #2
0031e424  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e428  00 30 a0 93                                      movls r3, #0
0031e42c  08 30 93 85                                      ldrhi r3, [r3, #8]
0031e430  08 30 80 e5                                      str r3, [r0, #8]
0031e434  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e438  03 00 53 e3                                      cmp r3, #3
0031e43c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e440  00 30 a0 93                                      movls r3, #0
0031e444  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031e448  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e44c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e450  04 00 53 e3                                      cmp r3, #4
0031e454  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e458  00 30 a0 93                                      movls r3, #0
0031e45c  10 30 93 85                                      ldrhi r3, [r3, #0x10]
0031e460  10 30 80 e5                                      str r3, [r0, #0x10]
0031e464  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e468  05 00 53 e3                                      cmp r3, #5
0031e46c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e470  00 30 a0 93                                      movls r3, #0
0031e474  14 30 93 85                                      ldrhi r3, [r3, #0x14]
0031e478  14 30 80 e5                                      str r3, [r0, #0x14]
0031e47c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e480  06 00 53 e3                                      cmp r3, #6
0031e484  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e488  00 30 a0 93                                      movls r3, #0
0031e48c  18 30 93 85                                      ldrhi r3, [r3, #0x18]
0031e490  18 30 80 e5                                      str r3, [r0, #0x18]
0031e494  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e498  07 00 53 e3                                      cmp r3, #7
0031e49c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e4a0  00 30 a0 93                                      movls r3, #0
0031e4a4  1c 30 93 85                                      ldrhi r3, [r3, #0x1c]
0031e4a8  1c 30 80 e5                                      str r3, [r0, #0x1c]
0031e4ac  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e4b0  08 00 53 e3                                      cmp r3, #8
0031e4b4  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e4b8  00 30 a0 93                                      movls r3, #0
0031e4bc  20 30 93 85                                      ldrhi r3, [r3, #0x20]
0031e4c0  20 30 80 e5                                      str r3, [r0, #0x20]
0031e4c4  04 00 a0 e1                                      mov r0, r4
0031e4c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e4cc  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e4d0  00 00 52 e3                                      cmp r2, #0
0031e4d4  03 00 a0 01                                      moveq r0, r3
0031e4d8  2d 00 00 1a                                      bne #0x31e594
0031e4dc  00 00 84 e5                                      str r0, [r4]
0031e4e0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e4e4  01 00 53 e3                                      cmp r3, #1
0031e4e8  00 00 a0 93                                      movls r0, #0
0031e4ec  02 00 00 9a                                      bls #0x31e4fc
0031e4f0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e4f4  04 00 93 e5                                      ldr r0, [r3, #4]
0031e4f8  19 c1 ff eb                                      bl #0x30e964
0031e4fc  04 00 84 e5                                      str r0, [r4, #4]
0031e500  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e504  02 00 53 e3                                      cmp r3, #2
0031e508  00 00 a0 93                                      movls r0, #0
0031e50c  5b 00 00 8a                                      bhi #0x31e680
0031e510  08 00 84 e5                                      str r0, [r4, #8]
0031e514  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e518  03 00 53 e3                                      cmp r3, #3
0031e51c  00 00 a0 93                                      movls r0, #0
0031e520  4d 00 00 8a                                      bhi #0x31e65c
0031e524  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e528  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e52c  04 00 53 e3                                      cmp r3, #4
0031e530  00 00 a0 93                                      movls r0, #0
0031e534  3f 00 00 8a                                      bhi #0x31e638
0031e538  10 00 84 e5                                      str r0, [r4, #0x10]
0031e53c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e540  05 00 53 e3                                      cmp r3, #5
0031e544  00 00 a0 93                                      movls r0, #0
0031e548  31 00 00 8a                                      bhi #0x31e614
0031e54c  14 00 84 e5                                      str r0, [r4, #0x14]
0031e550  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e554  06 00 53 e3                                      cmp r3, #6
0031e558  00 00 a0 93                                      movls r0, #0
0031e55c  23 00 00 8a                                      bhi #0x31e5f0
0031e560  18 00 84 e5                                      str r0, [r4, #0x18]
0031e564  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e568  07 00 53 e3                                      cmp r3, #7
0031e56c  00 00 a0 93                                      movls r0, #0
0031e570  15 00 00 8a                                      bhi #0x31e5cc
0031e574  1c 00 84 e5                                      str r0, [r4, #0x1c]
0031e578  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e57c  08 00 53 e3                                      cmp r3, #8
0031e580  00 00 a0 93                                      movls r0, #0
0031e584  0b 00 00 8a                                      bhi #0x31e5b8
0031e588  20 00 84 e5                                      str r0, [r4, #0x20]
0031e58c  04 00 a0 e1                                      mov r0, r4
0031e590  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e594  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031e598  00 00 93 e5                                      ldr r0, [r3]
0031e59c  f0 c0 ff eb                                      bl #0x30e964
0031e5a0  00 00 84 e5                                      str r0, [r4]
0031e5a4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e5a8  01 00 53 e3                                      cmp r3, #1
0031e5ac  00 00 a0 93                                      movls r0, #0
0031e5b0  ce ff ff 8a                                      bhi #0x31e4f0
0031e5b4  d0 ff ff ea                                      b #0x31e4fc
0031e5b8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e5bc  20 00 93 e5                                      ldr r0, [r3, #0x20]
0031e5c0  e7 c0 ff eb                                      bl #0x30e964
0031e5c4  20 00 84 e5                                      str r0, [r4, #0x20]
0031e5c8  ef ff ff ea                                      b #0x31e58c
0031e5cc  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e5d0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0031e5d4  e2 c0 ff eb                                      bl #0x30e964
0031e5d8  1c 00 84 e5                                      str r0, [r4, #0x1c]
0031e5dc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e5e0  08 00 53 e3                                      cmp r3, #8
0031e5e4  00 00 a0 93                                      movls r0, #0
0031e5e8  e6 ff ff 9a                                      bls #0x31e588
0031e5ec  f1 ff ff ea                                      b #0x31e5b8
0031e5f0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e5f4  18 00 93 e5                                      ldr r0, [r3, #0x18]
0031e5f8  d9 c0 ff eb                                      bl #0x30e964
0031e5fc  18 00 84 e5                                      str r0, [r4, #0x18]
0031e600  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e604  07 00 53 e3                                      cmp r3, #7
0031e608  00 00 a0 93                                      movls r0, #0
0031e60c  d8 ff ff 9a                                      bls #0x31e574
0031e610  ed ff ff ea                                      b #0x31e5cc
0031e614  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e618  14 00 93 e5                                      ldr r0, [r3, #0x14]
0031e61c  d0 c0 ff eb                                      bl #0x30e964
0031e620  14 00 84 e5                                      str r0, [r4, #0x14]
0031e624  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e628  06 00 53 e3                                      cmp r3, #6
0031e62c  00 00 a0 93                                      movls r0, #0
0031e630  ca ff ff 9a                                      bls #0x31e560
0031e634  ed ff ff ea                                      b #0x31e5f0
0031e638  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e63c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0031e640  c7 c0 ff eb                                      bl #0x30e964
0031e644  10 00 84 e5                                      str r0, [r4, #0x10]
0031e648  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e64c  05 00 53 e3                                      cmp r3, #5
0031e650  00 00 a0 93                                      movls r0, #0
0031e654  bc ff ff 9a                                      bls #0x31e54c
0031e658  ed ff ff ea                                      b #0x31e614
0031e65c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e660  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e664  be c0 ff eb                                      bl #0x30e964
0031e668  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e66c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e670  04 00 53 e3                                      cmp r3, #4
0031e674  00 00 a0 93                                      movls r0, #0
0031e678  ae ff ff 9a                                      bls #0x31e538
0031e67c  ed ff ff ea                                      b #0x31e638
0031e680  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e684  08 00 93 e5                                      ldr r0, [r3, #8]
0031e688  b5 c0 ff eb                                      bl #0x30e964
0031e68c  08 00 84 e5                                      str r0, [r4, #8]
0031e690  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e694  03 00 53 e3                                      cmp r3, #3
0031e698  00 00 a0 93                                      movls r0, #0
0031e69c  a0 ff ff 9a                                      bls #0x31e524
0031e6a0  ed ff ff ea                                      b #0x31e65c

; FUNCTION 0x0031e6a4, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8getPlaneEv
; demangled: glitch::io::CNumbersAttribute::getPlane()
; decoder-mode: arm
0031e6a4  fe 25 a0 e3                                      mov r2, #0x3f800000
0031e6a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031e6ac  00 30 a0 e3                                      mov r3, #0
0031e6b0  04 20 80 e5                                      str r2, [r0, #4]
0031e6b4  02 21 a0 e3                                      mov r2, #0x80000000
0031e6b8  0c 20 80 e5                                      str r2, [r0, #0xc]
0031e6bc  00 30 80 e5                                      str r3, [r0]
0031e6c0  08 30 80 e5                                      str r3, [r0, #8]
0031e6c4  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031e6c8  00 40 a0 e1                                      mov r4, r0
0031e6cc  01 50 a0 e1                                      mov r5, r1
0031e6d0  00 00 52 e3                                      cmp r2, #0
0031e6d4  18 00 00 0a                                      beq #0x31e73c
0031e6d8  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e6dc  00 00 52 e3                                      cmp r2, #0
0031e6e0  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031e6e4  00 30 93 15                                      ldrne r3, [r3]
0031e6e8  00 30 80 e5                                      str r3, [r0]
0031e6ec  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e6f0  01 00 53 e3                                      cmp r3, #1
0031e6f4  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e6f8  00 30 a0 93                                      movls r3, #0
0031e6fc  04 30 93 85                                      ldrhi r3, [r3, #4]
0031e700  04 30 80 e5                                      str r3, [r0, #4]
0031e704  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e708  02 00 53 e3                                      cmp r3, #2
0031e70c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e710  00 30 a0 93                                      movls r3, #0
0031e714  08 30 93 85                                      ldrhi r3, [r3, #8]
0031e718  08 30 80 e5                                      str r3, [r0, #8]
0031e71c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e720  03 00 53 e3                                      cmp r3, #3
0031e724  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e728  00 30 a0 93                                      movls r3, #0
0031e72c  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031e730  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e734  04 00 a0 e1                                      mov r0, r4
0031e738  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e73c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031e740  00 00 52 e3                                      cmp r2, #0
0031e744  03 00 a0 01                                      moveq r0, r3
0031e748  14 00 00 1a                                      bne #0x31e7a0
0031e74c  00 00 84 e5                                      str r0, [r4]
0031e750  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e754  01 00 53 e3                                      cmp r3, #1
0031e758  00 00 a0 93                                      movls r0, #0
0031e75c  02 00 00 9a                                      bls #0x31e76c
0031e760  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e764  04 00 93 e5                                      ldr r0, [r3, #4]
0031e768  7d c0 ff eb                                      bl #0x30e964
0031e76c  04 00 84 e5                                      str r0, [r4, #4]
0031e770  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e774  02 00 53 e3                                      cmp r3, #2
0031e778  00 00 a0 93                                      movls r0, #0
0031e77c  15 00 00 8a                                      bhi #0x31e7d8
0031e780  08 00 84 e5                                      str r0, [r4, #8]
0031e784  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e788  03 00 53 e3                                      cmp r3, #3
0031e78c  00 00 a0 93                                      movls r0, #0
0031e790  0b 00 00 8a                                      bhi #0x31e7c4
0031e794  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e798  04 00 a0 e1                                      mov r0, r4
0031e79c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e7a0  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031e7a4  00 00 93 e5                                      ldr r0, [r3]
0031e7a8  6d c0 ff eb                                      bl #0x30e964
0031e7ac  00 00 84 e5                                      str r0, [r4]
0031e7b0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e7b4  01 00 53 e3                                      cmp r3, #1
0031e7b8  00 00 a0 93                                      movls r0, #0
0031e7bc  e7 ff ff 8a                                      bhi #0x31e760
0031e7c0  e9 ff ff ea                                      b #0x31e76c
0031e7c4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e7c8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e7cc  64 c0 ff eb                                      bl #0x30e964
0031e7d0  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e7d4  ef ff ff ea                                      b #0x31e798
0031e7d8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e7dc  08 00 93 e5                                      ldr r0, [r3, #8]
0031e7e0  5f c0 ff eb                                      bl #0x30e964
0031e7e4  08 00 84 e5                                      str r0, [r4, #8]
0031e7e8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e7ec  03 00 53 e3                                      cmp r3, #3
0031e7f0  00 00 a0 93                                      movls r0, #0
0031e7f4  e6 ff ff 9a                                      bls #0x31e794
0031e7f8  f1 ff ff ea                                      b #0x31e7c4

; FUNCTION 0x0031e7fc, declared_size=516, range_size=516, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7getBBoxEv
; demangled: glitch::io::CNumbersAttribute::getBBox()
; decoder-mode: arm
0031e7fc  bf 24 a0 e3                                      mov r2, #0xbf000000
0031e800  fe 35 a0 e3                                      mov r3, #0x3f800000
0031e804  02 25 82 e2                                      add r2, r2, #0x800000
0031e808  70 40 2d e9                                      push {r4, r5, r6, lr}
0031e80c  08 20 80 e5                                      str r2, [r0, #8]
0031e810  14 30 80 e5                                      str r3, [r0, #0x14]
0031e814  00 20 80 e5                                      str r2, [r0]
0031e818  04 20 80 e5                                      str r2, [r0, #4]
0031e81c  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e820  10 30 80 e5                                      str r3, [r0, #0x10]
0031e824  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
0031e828  00 40 a0 e1                                      mov r4, r0
0031e82c  01 50 a0 e1                                      mov r5, r1
0031e830  00 00 53 e3                                      cmp r3, #0
0031e834  25 00 00 0a                                      beq #0x31e8d0
0031e838  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e83c  00 00 53 e3                                      cmp r3, #0
0031e840  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031e844  00 30 a0 03                                      moveq r3, #0
0031e848  00 30 93 15                                      ldrne r3, [r3]
0031e84c  00 30 80 e5                                      str r3, [r0]
0031e850  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e854  01 00 53 e3                                      cmp r3, #1
0031e858  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e85c  00 30 a0 93                                      movls r3, #0
0031e860  04 30 93 85                                      ldrhi r3, [r3, #4]
0031e864  04 30 80 e5                                      str r3, [r0, #4]
0031e868  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e86c  02 00 53 e3                                      cmp r3, #2
0031e870  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e874  00 30 a0 93                                      movls r3, #0
0031e878  08 30 93 85                                      ldrhi r3, [r3, #8]
0031e87c  08 30 80 e5                                      str r3, [r0, #8]
0031e880  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e884  03 00 53 e3                                      cmp r3, #3
0031e888  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e88c  00 30 a0 93                                      movls r3, #0
0031e890  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031e894  0c 30 80 e5                                      str r3, [r0, #0xc]
0031e898  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e89c  04 00 53 e3                                      cmp r3, #4
0031e8a0  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e8a4  00 30 a0 93                                      movls r3, #0
0031e8a8  10 30 93 85                                      ldrhi r3, [r3, #0x10]
0031e8ac  10 30 80 e5                                      str r3, [r0, #0x10]
0031e8b0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e8b4  05 00 53 e3                                      cmp r3, #5
0031e8b8  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031e8bc  00 30 a0 93                                      movls r3, #0
0031e8c0  14 30 93 85                                      ldrhi r3, [r3, #0x14]
0031e8c4  14 30 80 e5                                      str r3, [r0, #0x14]
0031e8c8  04 00 a0 e1                                      mov r0, r4
0031e8cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e8d0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031e8d4  00 00 53 e3                                      cmp r3, #0
0031e8d8  00 00 a0 03                                      moveq r0, #0
0031e8dc  1e 00 00 1a                                      bne #0x31e95c
0031e8e0  00 00 84 e5                                      str r0, [r4]
0031e8e4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e8e8  01 00 53 e3                                      cmp r3, #1
0031e8ec  00 00 a0 93                                      movls r0, #0
0031e8f0  02 00 00 9a                                      bls #0x31e900
0031e8f4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e8f8  04 00 93 e5                                      ldr r0, [r3, #4]
0031e8fc  18 c0 ff eb                                      bl #0x30e964
0031e900  04 00 84 e5                                      str r0, [r4, #4]
0031e904  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e908  02 00 53 e3                                      cmp r3, #2
0031e90c  00 00 a0 93                                      movls r0, #0
0031e910  31 00 00 8a                                      bhi #0x31e9dc
0031e914  08 00 84 e5                                      str r0, [r4, #8]
0031e918  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e91c  03 00 53 e3                                      cmp r3, #3
0031e920  00 00 a0 93                                      movls r0, #0
0031e924  23 00 00 8a                                      bhi #0x31e9b8
0031e928  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e92c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e930  04 00 53 e3                                      cmp r3, #4
0031e934  00 00 a0 93                                      movls r0, #0
0031e938  15 00 00 8a                                      bhi #0x31e994
0031e93c  10 00 84 e5                                      str r0, [r4, #0x10]
0031e940  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e944  05 00 53 e3                                      cmp r3, #5
0031e948  00 00 a0 93                                      movls r0, #0
0031e94c  0b 00 00 8a                                      bhi #0x31e980
0031e950  14 00 84 e5                                      str r0, [r4, #0x14]
0031e954  04 00 a0 e1                                      mov r0, r4
0031e958  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031e95c  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031e960  00 00 93 e5                                      ldr r0, [r3]
0031e964  fe bf ff eb                                      bl #0x30e964
0031e968  00 00 84 e5                                      str r0, [r4]
0031e96c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e970  01 00 53 e3                                      cmp r3, #1
0031e974  00 00 a0 93                                      movls r0, #0
0031e978  dd ff ff 8a                                      bhi #0x31e8f4
0031e97c  df ff ff ea                                      b #0x31e900
0031e980  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e984  14 00 93 e5                                      ldr r0, [r3, #0x14]
0031e988  f5 bf ff eb                                      bl #0x30e964
0031e98c  14 00 84 e5                                      str r0, [r4, #0x14]
0031e990  ef ff ff ea                                      b #0x31e954
0031e994  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e998  10 00 93 e5                                      ldr r0, [r3, #0x10]
0031e99c  f0 bf ff eb                                      bl #0x30e964
0031e9a0  10 00 84 e5                                      str r0, [r4, #0x10]
0031e9a4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e9a8  05 00 53 e3                                      cmp r3, #5
0031e9ac  00 00 a0 93                                      movls r0, #0
0031e9b0  e6 ff ff 9a                                      bls #0x31e950
0031e9b4  f1 ff ff ea                                      b #0x31e980
0031e9b8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e9bc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031e9c0  e7 bf ff eb                                      bl #0x30e964
0031e9c4  0c 00 84 e5                                      str r0, [r4, #0xc]
0031e9c8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e9cc  04 00 53 e3                                      cmp r3, #4
0031e9d0  00 00 a0 93                                      movls r0, #0
0031e9d4  d8 ff ff 9a                                      bls #0x31e93c
0031e9d8  ed ff ff ea                                      b #0x31e994
0031e9dc  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031e9e0  08 00 93 e5                                      ldr r0, [r3, #8]
0031e9e4  de bf ff eb                                      bl #0x30e964
0031e9e8  08 00 84 e5                                      str r0, [r4, #8]
0031e9ec  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031e9f0  03 00 53 e3                                      cmp r3, #3
0031e9f4  00 00 a0 93                                      movls r0, #0
0031e9f8  ca ff ff 9a                                      bls #0x31e928
0031e9fc  ed ff ff ea                                      b #0x31e9b8

; FUNCTION 0x0031ea00, declared_size=340, range_size=340, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9getLine2dEv
; demangled: glitch::io::CNumbersAttribute::getLine2d()
; decoder-mode: arm
0031ea00  fe 25 a0 e3                                      mov r2, #0x3f800000
0031ea04  00 30 a0 e3                                      mov r3, #0
0031ea08  70 40 2d e9                                      push {r4, r5, r6, lr}
0031ea0c  0c 20 80 e5                                      str r2, [r0, #0xc]
0031ea10  00 30 80 e5                                      str r3, [r0]
0031ea14  04 30 80 e5                                      str r3, [r0, #4]
0031ea18  08 20 80 e5                                      str r2, [r0, #8]
0031ea1c  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031ea20  00 40 a0 e1                                      mov r4, r0
0031ea24  01 50 a0 e1                                      mov r5, r1
0031ea28  00 00 52 e3                                      cmp r2, #0
0031ea2c  18 00 00 0a                                      beq #0x31ea94
0031ea30  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031ea34  00 00 52 e3                                      cmp r2, #0
0031ea38  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031ea3c  00 30 93 15                                      ldrne r3, [r3]
0031ea40  00 30 80 e5                                      str r3, [r0]
0031ea44  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ea48  01 00 53 e3                                      cmp r3, #1
0031ea4c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ea50  00 30 a0 93                                      movls r3, #0
0031ea54  04 30 93 85                                      ldrhi r3, [r3, #4]
0031ea58  04 30 80 e5                                      str r3, [r0, #4]
0031ea5c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ea60  02 00 53 e3                                      cmp r3, #2
0031ea64  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ea68  00 30 a0 93                                      movls r3, #0
0031ea6c  08 30 93 85                                      ldrhi r3, [r3, #8]
0031ea70  08 30 80 e5                                      str r3, [r0, #8]
0031ea74  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ea78  03 00 53 e3                                      cmp r3, #3
0031ea7c  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ea80  00 30 a0 93                                      movls r3, #0
0031ea84  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031ea88  0c 30 80 e5                                      str r3, [r0, #0xc]
0031ea8c  04 00 a0 e1                                      mov r0, r4
0031ea90  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ea94  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031ea98  00 00 52 e3                                      cmp r2, #0
0031ea9c  03 00 a0 01                                      moveq r0, r3
0031eaa0  14 00 00 1a                                      bne #0x31eaf8
0031eaa4  00 00 84 e5                                      str r0, [r4]
0031eaa8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031eaac  01 00 53 e3                                      cmp r3, #1
0031eab0  00 00 a0 93                                      movls r0, #0
0031eab4  02 00 00 9a                                      bls #0x31eac4
0031eab8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031eabc  04 00 93 e5                                      ldr r0, [r3, #4]
0031eac0  a7 bf ff eb                                      bl #0x30e964
0031eac4  04 00 84 e5                                      str r0, [r4, #4]
0031eac8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031eacc  02 00 53 e3                                      cmp r3, #2
0031ead0  00 00 a0 93                                      movls r0, #0
0031ead4  15 00 00 8a                                      bhi #0x31eb30
0031ead8  08 00 84 e5                                      str r0, [r4, #8]
0031eadc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031eae0  03 00 53 e3                                      cmp r3, #3
0031eae4  00 00 a0 93                                      movls r0, #0
0031eae8  0b 00 00 8a                                      bhi #0x31eb1c
0031eaec  0c 00 84 e5                                      str r0, [r4, #0xc]
0031eaf0  04 00 a0 e1                                      mov r0, r4
0031eaf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031eaf8  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031eafc  00 00 93 e5                                      ldr r0, [r3]
0031eb00  97 bf ff eb                                      bl #0x30e964
0031eb04  00 00 84 e5                                      str r0, [r4]
0031eb08  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031eb0c  01 00 53 e3                                      cmp r3, #1
0031eb10  00 00 a0 93                                      movls r0, #0
0031eb14  e7 ff ff 8a                                      bhi #0x31eab8
0031eb18  e9 ff ff ea                                      b #0x31eac4
0031eb1c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031eb20  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031eb24  8e bf ff eb                                      bl #0x30e964
0031eb28  0c 00 84 e5                                      str r0, [r4, #0xc]
0031eb2c  ef ff ff ea                                      b #0x31eaf0
0031eb30  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031eb34  08 00 93 e5                                      ldr r0, [r3, #8]
0031eb38  89 bf ff eb                                      bl #0x30e964
0031eb3c  08 00 84 e5                                      str r0, [r4, #8]
0031eb40  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031eb44  03 00 53 e3                                      cmp r3, #3
0031eb48  00 00 a0 93                                      movls r0, #0
0031eb4c  e6 ff ff 9a                                      bls #0x31eaec
0031eb50  f1 ff ff ea                                      b #0x31eb1c

; FUNCTION 0x0031eb54, declared_size=508, range_size=508, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9getLine3dEv
; demangled: glitch::io::CNumbersAttribute::getLine3d()
; decoder-mode: arm
0031eb54  fe 25 a0 e3                                      mov r2, #0x3f800000
0031eb58  00 30 a0 e3                                      mov r3, #0
0031eb5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0031eb60  14 20 80 e5                                      str r2, [r0, #0x14]
0031eb64  00 30 80 e5                                      str r3, [r0]
0031eb68  04 30 80 e5                                      str r3, [r0, #4]
0031eb6c  08 30 80 e5                                      str r3, [r0, #8]
0031eb70  0c 20 80 e5                                      str r2, [r0, #0xc]
0031eb74  10 20 80 e5                                      str r2, [r0, #0x10]
0031eb78  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
0031eb7c  00 40 a0 e1                                      mov r4, r0
0031eb80  01 50 a0 e1                                      mov r5, r1
0031eb84  00 00 52 e3                                      cmp r2, #0
0031eb88  24 00 00 0a                                      beq #0x31ec20
0031eb8c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031eb90  00 00 52 e3                                      cmp r2, #0
0031eb94  30 30 91 15                                      ldrne r3, [r1, #0x30]
0031eb98  00 30 93 15                                      ldrne r3, [r3]
0031eb9c  00 30 80 e5                                      str r3, [r0]
0031eba0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031eba4  01 00 53 e3                                      cmp r3, #1
0031eba8  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ebac  00 30 a0 93                                      movls r3, #0
0031ebb0  04 30 93 85                                      ldrhi r3, [r3, #4]
0031ebb4  04 30 80 e5                                      str r3, [r0, #4]
0031ebb8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ebbc  02 00 53 e3                                      cmp r3, #2
0031ebc0  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ebc4  00 30 a0 93                                      movls r3, #0
0031ebc8  08 30 93 85                                      ldrhi r3, [r3, #8]
0031ebcc  08 30 80 e5                                      str r3, [r0, #8]
0031ebd0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ebd4  03 00 53 e3                                      cmp r3, #3
0031ebd8  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ebdc  00 30 a0 93                                      movls r3, #0
0031ebe0  0c 30 93 85                                      ldrhi r3, [r3, #0xc]
0031ebe4  0c 30 80 e5                                      str r3, [r0, #0xc]
0031ebe8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ebec  04 00 53 e3                                      cmp r3, #4
0031ebf0  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ebf4  00 30 a0 93                                      movls r3, #0
0031ebf8  10 30 93 85                                      ldrhi r3, [r3, #0x10]
0031ebfc  10 30 80 e5                                      str r3, [r0, #0x10]
0031ec00  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0031ec04  05 00 53 e3                                      cmp r3, #5
0031ec08  30 30 91 85                                      ldrhi r3, [r1, #0x30]
0031ec0c  00 30 a0 93                                      movls r3, #0
0031ec10  14 30 93 85                                      ldrhi r3, [r3, #0x14]
0031ec14  14 30 80 e5                                      str r3, [r0, #0x14]
0031ec18  04 00 a0 e1                                      mov r0, r4
0031ec1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ec20  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
0031ec24  00 00 52 e3                                      cmp r2, #0
0031ec28  03 00 a0 01                                      moveq r0, r3
0031ec2c  1e 00 00 1a                                      bne #0x31ecac
0031ec30  00 00 84 e5                                      str r0, [r4]
0031ec34  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ec38  01 00 53 e3                                      cmp r3, #1
0031ec3c  00 00 a0 93                                      movls r0, #0
0031ec40  02 00 00 9a                                      bls #0x31ec50
0031ec44  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031ec48  04 00 93 e5                                      ldr r0, [r3, #4]
0031ec4c  44 bf ff eb                                      bl #0x30e964
0031ec50  04 00 84 e5                                      str r0, [r4, #4]
0031ec54  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ec58  02 00 53 e3                                      cmp r3, #2
0031ec5c  00 00 a0 93                                      movls r0, #0
0031ec60  31 00 00 8a                                      bhi #0x31ed2c
0031ec64  08 00 84 e5                                      str r0, [r4, #8]
0031ec68  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ec6c  03 00 53 e3                                      cmp r3, #3
0031ec70  00 00 a0 93                                      movls r0, #0
0031ec74  23 00 00 8a                                      bhi #0x31ed08
0031ec78  0c 00 84 e5                                      str r0, [r4, #0xc]
0031ec7c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ec80  04 00 53 e3                                      cmp r3, #4
0031ec84  00 00 a0 93                                      movls r0, #0
0031ec88  15 00 00 8a                                      bhi #0x31ece4
0031ec8c  10 00 84 e5                                      str r0, [r4, #0x10]
0031ec90  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ec94  05 00 53 e3                                      cmp r3, #5
0031ec98  00 00 a0 93                                      movls r0, #0
0031ec9c  0b 00 00 8a                                      bhi #0x31ecd0
0031eca0  14 00 84 e5                                      str r0, [r4, #0x14]
0031eca4  04 00 a0 e1                                      mov r0, r4
0031eca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031ecac  24 30 91 e5                                      ldr r3, [r1, #0x24]
0031ecb0  00 00 93 e5                                      ldr r0, [r3]
0031ecb4  2a bf ff eb                                      bl #0x30e964
0031ecb8  00 00 84 e5                                      str r0, [r4]
0031ecbc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ecc0  01 00 53 e3                                      cmp r3, #1
0031ecc4  00 00 a0 93                                      movls r0, #0
0031ecc8  dd ff ff 8a                                      bhi #0x31ec44
0031eccc  df ff ff ea                                      b #0x31ec50
0031ecd0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031ecd4  14 00 93 e5                                      ldr r0, [r3, #0x14]
0031ecd8  21 bf ff eb                                      bl #0x30e964
0031ecdc  14 00 84 e5                                      str r0, [r4, #0x14]
0031ece0  ef ff ff ea                                      b #0x31eca4
0031ece4  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031ece8  10 00 93 e5                                      ldr r0, [r3, #0x10]
0031ecec  1c bf ff eb                                      bl #0x30e964
0031ecf0  10 00 84 e5                                      str r0, [r4, #0x10]
0031ecf4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ecf8  05 00 53 e3                                      cmp r3, #5
0031ecfc  00 00 a0 93                                      movls r0, #0
0031ed00  e6 ff ff 9a                                      bls #0x31eca0
0031ed04  f1 ff ff ea                                      b #0x31ecd0
0031ed08  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031ed0c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0031ed10  13 bf ff eb                                      bl #0x30e964
0031ed14  0c 00 84 e5                                      str r0, [r4, #0xc]
0031ed18  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ed1c  04 00 53 e3                                      cmp r3, #4
0031ed20  00 00 a0 93                                      movls r0, #0
0031ed24  d8 ff ff 9a                                      bls #0x31ec8c
0031ed28  ed ff ff ea                                      b #0x31ece4
0031ed2c  24 30 95 e5                                      ldr r3, [r5, #0x24]
0031ed30  08 00 93 e5                                      ldr r0, [r3, #8]
0031ed34  0a bf ff eb                                      bl #0x30e964
0031ed38  08 00 84 e5                                      str r0, [r4, #8]
0031ed3c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0031ed40  03 00 53 e3                                      cmp r3, #3
0031ed44  00 00 a0 93                                      movls r0, #0
0031ed48  ca ff ff 9a                                      bls #0x31ec78
0031ed4c  ed ff ff ea                                      b #0x31ed08

; FUNCTION 0x0031ed50, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute6setIntEi
; demangled: glitch::io::CNumbersAttribute::setInt(int)
; decoder-mode: arm
0031ed50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031ed54  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0031ed58  00 40 a0 e1                                      mov r4, r0
0031ed5c  01 70 a0 e1                                      mov r7, r1
0031ed60  00 00 53 e3                                      cmp r3, #0
0031ed64  15 00 00 0a                                      beq #0x31edc0
0031ed68  00 50 a0 e3                                      mov r5, #0
0031ed6c  05 60 a0 e1                                      mov r6, r5
0031ed70  07 00 00 ea                                      b #0x31ed94
0031ed74  fa be ff eb                                      bl #0x30e964
0031ed78  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031ed7c  01 60 86 e2                                      add r6, r6, #1
0031ed80  05 00 83 e7                                      str r0, [r3, r5]
0031ed84  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0031ed88  04 50 85 e2                                      add r5, r5, #4
0031ed8c  06 00 53 e1                                      cmp r3, r6
0031ed90  0a 00 00 9a                                      bls #0x31edc0
0031ed94  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0031ed98  07 00 a0 e1                                      mov r0, r7
0031ed9c  00 00 53 e3                                      cmp r3, #0
0031eda0  f3 ff ff 1a                                      bne #0x31ed74
0031eda4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0031eda8  01 60 86 e2                                      add r6, r6, #1
0031edac  05 70 83 e7                                      str r7, [r3, r5]
0031edb0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0031edb4  04 50 85 e2                                      add r5, r5, #4
0031edb8  06 00 53 e1                                      cmp r3, r6
0031edbc  f4 ff ff 8a                                      bhi #0x31ed94
0031edc0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0031edc4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8setFloatEf
; demangled: glitch::io::CNumbersAttribute::setFloat(float)
; decoder-mode: arm
0031edc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031edc8  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0031edcc  00 40 a0 e1                                      mov r4, r0
0031edd0  01 70 a0 e1                                      mov r7, r1
0031edd4  00 00 53 e3                                      cmp r3, #0
0031edd8  15 00 00 0a                                      beq #0x31ee34
0031eddc  00 50 a0 e3                                      mov r5, #0
0031ede0  05 60 a0 e1                                      mov r6, r5
0031ede4  06 00 00 ea                                      b #0x31ee04
0031ede8  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031edec  01 60 86 e2                                      add r6, r6, #1
0031edf0  05 70 83 e7                                      str r7, [r3, r5]
0031edf4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0031edf8  04 50 85 e2                                      add r5, r5, #4
0031edfc  06 00 53 e1                                      cmp r3, r6
0031ee00  0b 00 00 9a                                      bls #0x31ee34
0031ee04  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0031ee08  07 00 a0 e1                                      mov r0, r7
0031ee0c  00 00 53 e3                                      cmp r3, #0
0031ee10  f4 ff ff 1a                                      bne #0x31ede8
0031ee14  ac bd ff eb                                      bl #0x30e4cc
0031ee18  24 30 94 e5                                      ldr r3, [r4, #0x24]
0031ee1c  01 60 86 e2                                      add r6, r6, #1
0031ee20  05 00 83 e7                                      str r0, [r3, r5]
0031ee24  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0031ee28  04 50 85 e2                                      add r5, r5, #4
0031ee2c  06 00 53 e1                                      cmp r3, r6
0031ee30  f3 ff ff 8a                                      bhi #0x31ee04
0031ee34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0031ee38, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7setBoolEb
; demangled: glitch::io::CNumbersAttribute::setBool(bool)
; decoder-mode: arm
0031ee38  10 40 2d e9                                      push {r4, lr}
0031ee3c  00 30 90 e5                                      ldr r3, [r0]
0031ee40  0f e0 a0 e1                                      mov lr, pc
0031ee44  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0031ee48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031ee4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute12isNumberListEv
; demangled: glitch::io::CNumbersAttribute::isNumberList()
; decoder-mode: arm
0031ee4c  01 00 a0 e3                                      mov r0, #1
0031ee50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ee54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7isFloatEv
; demangled: glitch::io::CNumbersAttribute::isFloat()
; decoder-mode: arm
0031ee54  40 00 d0 e5                                      ldrb r0, [r0, #0x40]
0031ee58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ee5c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZNK6glitch2io17CNumbersAttribute7getTypeEv
; demangled: glitch::io::CNumbersAttribute::getType() const
; decoder-mode: arm
0031ee5c  40 00 d0 e5                                      ldrb r0, [r0, #0x40]
0031ee60  00 00 50 e3                                      cmp r0, #0
0031ee64  17 00 a0 13                                      movne r0, #0x17
0031ee68  18 00 a0 03                                      moveq r0, #0x18
0031ee6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031ee70, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZNK6glitch2io17CNumbersAttribute13getTypeStringEv
; demangled: glitch::io::CNumbersAttribute::getTypeString() const
; decoder-mode: arm
0031ee70  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0031ee74  00 00 53 e3                                      cmp r3, #0
0031ee78  02 00 00 1a                                      bne #0x31ee88
0031ee7c  10 00 9f e5                                      ldr r0, [pc, #0x10]
0031ee80  00 00 8f e0                                      add r0, pc, r0
0031ee84  1e ff 2f e1                                      bx lr
0031ee88  08 00 9f e5                                      ldr r0, [pc, #8]
0031ee8c  00 00 8f e0                                      add r0, pc, r0
0031ee90  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031ee94  a0 fb 59 00 b4 fb 59 00                          .byte 0xa0, 0xfb, 0x59, 0x00, 0xb4, 0xfb, 0x59, 0x00

; FUNCTION 0x0031ee9c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute13setFloatArrayERSt6vectorIfNS_4core10SAllocatorIfLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CNumbersAttribute::setFloatArray(std::vector<float, glitch::core::SAllocator<float, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
0031ee9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031eea0  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0031eea4  00 40 a0 e1                                      mov r4, r0
0031eea8  01 70 a0 e1                                      mov r7, r1
0031eeac  00 00 53 e3                                      cmp r3, #0
0031eeb0  2b 00 00 1a                                      bne #0x31ef64
0031eeb4  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0031eeb8  00 00 52 e3                                      cmp r2, #0
0031eebc  03 10 a0 11                                      movne r1, r3
0031eec0  05 00 00 0a                                      beq #0x31eedc
0031eec4  24 20 94 e5                                      ldr r2, [r4, #0x24]
0031eec8  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0031eecc  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0031eed0  01 30 83 e2                                      add r3, r3, #1
0031eed4  02 00 53 e1                                      cmp r3, r2
0031eed8  f9 ff ff 3a                                      blo #0x31eec4
0031eedc  00 30 97 e5                                      ldr r3, [r7]
0031eee0  04 10 97 e5                                      ldr r1, [r7, #4]
0031eee4  01 10 63 e0                                      rsb r1, r3, r1
0031eee8  21 11 b0 e1                                      lsrs r1, r1, #2
0031eeec  10 00 00 0a                                      beq #0x31ef34
0031eef0  00 00 52 e3                                      cmp r2, #0
0031eef4  00 50 a0 13                                      movne r5, #0
0031eef8  05 60 a0 11                                      movne r6, r5
0031eefc  0c 00 00 0a                                      beq #0x31ef34
0031ef00  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
0031ef04  00 00 52 e3                                      cmp r2, #0
0031ef08  10 00 00 0a                                      beq #0x31ef50
0031ef0c  05 20 93 e7                                      ldr r2, [r3, r5]
0031ef10  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031ef14  05 20 83 e7                                      str r2, [r3, r5]
0031ef18  00 30 97 e5                                      ldr r3, [r7]
0031ef1c  04 20 97 e5                                      ldr r2, [r7, #4]
0031ef20  01 60 86 e2                                      add r6, r6, #1
0031ef24  04 50 85 e2                                      add r5, r5, #4
0031ef28  02 20 63 e0                                      rsb r2, r3, r2
0031ef2c  42 01 56 e1                                      cmp r6, r2, asr #2
0031ef30  00 00 00 3a                                      blo #0x31ef38
0031ef34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031ef38  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0031ef3c  06 00 52 e1                                      cmp r2, r6
0031ef40  fb ff ff 9a                                      bls #0x31ef34
0031ef44  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
0031ef48  00 00 52 e3                                      cmp r2, #0
0031ef4c  ee ff ff 1a                                      bne #0x31ef0c
0031ef50  05 00 93 e7                                      ldr r0, [r3, r5]
0031ef54  5c bd ff eb                                      bl #0x30e4cc
0031ef58  24 30 94 e5                                      ldr r3, [r4, #0x24]
0031ef5c  05 00 83 e7                                      str r0, [r3, r5]
0031ef60  ec ff ff ea                                      b #0x31ef18
0031ef64  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0031ef68  00 00 52 e3                                      cmp r2, #0
0031ef6c  da ff ff 0a                                      beq #0x31eedc
0031ef70  00 10 a0 e3                                      mov r1, #0
0031ef74  00 30 a0 e3                                      mov r3, #0
0031ef78  30 20 94 e5                                      ldr r2, [r4, #0x30]
0031ef7c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0031ef80  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0031ef84  01 30 83 e2                                      add r3, r3, #1
0031ef88  02 00 53 e1                                      cmp r3, r2
0031ef8c  f9 ff ff 3a                                      blo #0x31ef78
0031ef90  d1 ff ff ea                                      b #0x31eedc

; FUNCTION 0x00324564, declared_size=248, range_size=248, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setIntArrayERSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CNumbersAttribute::setIntArray(std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00324564  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00324568  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0032456c  00 40 a0 e1                                      mov r4, r0
00324570  01 70 a0 e1                                      mov r7, r1
00324574  00 00 53 e3                                      cmp r3, #0
00324578  2b 00 00 1a                                      bne #0x32462c
0032457c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324580  00 00 52 e3                                      cmp r2, #0
00324584  03 10 a0 11                                      movne r1, r3
00324588  05 00 00 0a                                      beq #0x3245a4
0032458c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324590  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324594  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324598  01 30 83 e2                                      add r3, r3, #1
0032459c  02 00 53 e1                                      cmp r3, r2
003245a0  f9 ff ff 3a                                      blo #0x32458c
003245a4  00 30 97 e5                                      ldr r3, [r7]
003245a8  04 10 97 e5                                      ldr r1, [r7, #4]
003245ac  01 10 63 e0                                      rsb r1, r3, r1
003245b0  21 11 b0 e1                                      lsrs r1, r1, #2
003245b4  11 00 00 0a                                      beq #0x324600
003245b8  00 00 52 e3                                      cmp r2, #0
003245bc  00 50 a0 13                                      movne r5, #0
003245c0  05 60 a0 11                                      movne r6, r5
003245c4  0d 00 00 0a                                      beq #0x324600
003245c8  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
003245cc  00 00 52 e3                                      cmp r2, #0
003245d0  11 00 00 0a                                      beq #0x32461c
003245d4  05 00 93 e7                                      ldr r0, [r3, r5]
003245d8  e1 a8 ff eb                                      bl #0x30e964
003245dc  30 30 94 e5                                      ldr r3, [r4, #0x30]
003245e0  05 00 83 e7                                      str r0, [r3, r5]
003245e4  00 30 97 e5                                      ldr r3, [r7]
003245e8  04 20 97 e5                                      ldr r2, [r7, #4]
003245ec  01 60 86 e2                                      add r6, r6, #1
003245f0  04 50 85 e2                                      add r5, r5, #4
003245f4  02 20 63 e0                                      rsb r2, r3, r2
003245f8  42 01 56 e1                                      cmp r6, r2, asr #2
003245fc  00 00 00 3a                                      blo #0x324604
00324600  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00324604  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324608  06 00 52 e1                                      cmp r2, r6
0032460c  fb ff ff 9a                                      bls #0x324600
00324610  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324614  00 00 52 e3                                      cmp r2, #0
00324618  ed ff ff 1a                                      bne #0x3245d4
0032461c  05 20 93 e7                                      ldr r2, [r3, r5]
00324620  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324624  05 20 83 e7                                      str r2, [r3, r5]
00324628  ed ff ff ea                                      b #0x3245e4
0032462c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324630  00 00 52 e3                                      cmp r2, #0
00324634  da ff ff 0a                                      beq #0x3245a4
00324638  00 10 a0 e3                                      mov r1, #0
0032463c  00 30 a0 e3                                      mov r3, #0
00324640  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324644  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324648  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0032464c  01 30 83 e2                                      add r3, r3, #1
00324650  02 00 53 e1                                      cmp r3, r2
00324654  f9 ff ff 3a                                      blo #0x324640
00324658  d1 ff ff ea                                      b #0x3245a4

; FUNCTION 0x0032465c, declared_size=348, range_size=348, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute13setQuaternionENS_4core10quaternionE
; demangled: glitch::io::CNumbersAttribute::setQuaternion(glitch::core::quaternion)
; decoder-mode: arm
0032465c  10 d0 4d e2                                      sub sp, sp, #0x10
00324660  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00324664  00 40 a0 e1                                      mov r4, r0
00324668  1c 00 8d e2                                      add r0, sp, #0x1c
0032466c  0e 00 80 e8                                      stm r0, {r1, r2, r3}
00324670  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324674  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00324678  20 50 9d e5                                      ldr r5, [sp, #0x20]
0032467c  00 00 52 e3                                      cmp r2, #0
00324680  24 70 9d e5                                      ldr r7, [sp, #0x24]
00324684  28 60 9d e5                                      ldr r6, [sp, #0x28]
00324688  29 00 00 1a                                      bne #0x324734
0032468c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324690  00 00 53 e3                                      cmp r3, #0
00324694  02 10 a0 11                                      movne r1, r2
00324698  22 00 00 0a                                      beq #0x324728
0032469c  24 30 94 e5                                      ldr r3, [r4, #0x24]
003246a0  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
003246a4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003246a8  01 20 82 e2                                      add r2, r2, #1
003246ac  03 00 52 e1                                      cmp r2, r3
003246b0  f9 ff ff 3a                                      blo #0x32469c
003246b4  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
003246b8  00 00 52 e3                                      cmp r2, #0
003246bc  2a 00 00 1a                                      bne #0x32476c
003246c0  00 00 53 e3                                      cmp r3, #0
003246c4  17 00 00 0a                                      beq #0x324728
003246c8  7f a7 ff eb                                      bl #0x30e4cc
003246cc  24 30 94 e5                                      ldr r3, [r4, #0x24]
003246d0  00 00 83 e5                                      str r0, [r3]
003246d4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003246d8  01 00 53 e3                                      cmp r3, #1
003246dc  11 00 00 9a                                      bls #0x324728
003246e0  05 00 a0 e1                                      mov r0, r5
003246e4  78 a7 ff eb                                      bl #0x30e4cc
003246e8  24 30 94 e5                                      ldr r3, [r4, #0x24]
003246ec  04 00 83 e5                                      str r0, [r3, #4]
003246f0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003246f4  02 00 53 e3                                      cmp r3, #2
003246f8  0a 00 00 9a                                      bls #0x324728
003246fc  07 00 a0 e1                                      mov r0, r7
00324700  71 a7 ff eb                                      bl #0x30e4cc
00324704  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324708  08 00 83 e5                                      str r0, [r3, #8]
0032470c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324710  03 00 53 e3                                      cmp r3, #3
00324714  03 00 00 9a                                      bls #0x324728
00324718  06 00 a0 e1                                      mov r0, r6
0032471c  6a a7 ff eb                                      bl #0x30e4cc
00324720  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324724  0c 00 83 e5                                      str r0, [r3, #0xc]
00324728  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0032472c  10 d0 8d e2                                      add sp, sp, #0x10
00324730  1e ff 2f e1                                      bx lr
00324734  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324738  00 00 53 e3                                      cmp r3, #0
0032473c  f9 ff ff 0a                                      beq #0x324728
00324740  00 10 a0 e3                                      mov r1, #0
00324744  00 20 a0 e3                                      mov r2, #0
00324748  30 30 94 e5                                      ldr r3, [r4, #0x30]
0032474c  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00324750  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324754  01 20 82 e2                                      add r2, r2, #1
00324758  03 00 52 e1                                      cmp r2, r3
0032475c  f9 ff ff 3a                                      blo #0x324748
00324760  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324764  00 00 52 e3                                      cmp r2, #0
00324768  d4 ff ff 0a                                      beq #0x3246c0
0032476c  00 00 53 e3                                      cmp r3, #0
00324770  ec ff ff 0a                                      beq #0x324728
00324774  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324778  00 00 83 e5                                      str r0, [r3]
0032477c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324780  01 00 53 e3                                      cmp r3, #1
00324784  e7 ff ff 9a                                      bls #0x324728
00324788  30 30 94 e5                                      ldr r3, [r4, #0x30]
0032478c  04 50 83 e5                                      str r5, [r3, #4]
00324790  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324794  02 00 53 e3                                      cmp r3, #2
00324798  e2 ff ff 9a                                      bls #0x324728
0032479c  30 30 94 e5                                      ldr r3, [r4, #0x30]
003247a0  08 70 83 e5                                      str r7, [r3, #8]
003247a4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003247a8  03 00 53 e3                                      cmp r3, #3
003247ac  30 30 94 85                                      ldrhi r3, [r4, #0x30]
003247b0  0c 60 83 85                                      strhi r6, [r3, #0xc]
003247b4  db ff ff ea                                      b #0x324728

; FUNCTION 0x003247b8, declared_size=340, range_size=340, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute7setRectENS_4core4rectIiEE
; demangled: glitch::io::CNumbersAttribute::setRect(glitch::core::rect<int>)
; decoder-mode: arm
003247b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003247bc  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
003247c0  00 40 a0 e1                                      mov r4, r0
003247c4  01 50 a0 e1                                      mov r5, r1
003247c8  00 00 53 e3                                      cmp r3, #0
003247cc  23 00 00 1a                                      bne #0x324860
003247d0  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
003247d4  00 00 52 e3                                      cmp r2, #0
003247d8  03 10 a0 11                                      movne r1, r3
003247dc  49 00 00 0a                                      beq #0x324908
003247e0  24 20 94 e5                                      ldr r2, [r4, #0x24]
003247e4  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
003247e8  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003247ec  01 30 83 e2                                      add r3, r3, #1
003247f0  02 00 53 e1                                      cmp r3, r2
003247f4  f9 ff ff 3a                                      blo #0x3247e0
003247f8  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
003247fc  00 00 53 e3                                      cmp r3, #0
00324800  24 00 00 1a                                      bne #0x324898
00324804  00 00 52 e3                                      cmp r2, #0
00324808  13 00 00 0a                                      beq #0x32485c
0032480c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324810  00 20 95 e5                                      ldr r2, [r5]
00324814  00 20 83 e5                                      str r2, [r3]
00324818  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032481c  01 00 53 e3                                      cmp r3, #1
00324820  0d 00 00 9a                                      bls #0x32485c
00324824  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324828  04 20 95 e5                                      ldr r2, [r5, #4]
0032482c  04 20 83 e5                                      str r2, [r3, #4]
00324830  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324834  02 00 53 e3                                      cmp r3, #2
00324838  07 00 00 9a                                      bls #0x32485c
0032483c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324840  08 20 95 e5                                      ldr r2, [r5, #8]
00324844  08 20 83 e5                                      str r2, [r3, #8]
00324848  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032484c  03 00 53 e3                                      cmp r3, #3
00324850  24 30 94 85                                      ldrhi r3, [r4, #0x24]
00324854  0c 20 95 85                                      ldrhi r2, [r5, #0xc]
00324858  0c 20 83 85                                      strhi r2, [r3, #0xc]
0032485c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324860  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00324864  00 00 53 e3                                      cmp r3, #0
00324868  fb ff ff 0a                                      beq #0x32485c
0032486c  00 10 a0 e3                                      mov r1, #0
00324870  00 30 a0 e3                                      mov r3, #0
00324874  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324878  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0032487c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324880  01 30 83 e2                                      add r3, r3, #1
00324884  02 00 53 e1                                      cmp r3, r2
00324888  f9 ff ff 3a                                      blo #0x324874
0032488c  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324890  00 00 53 e3                                      cmp r3, #0
00324894  da ff ff 0a                                      beq #0x324804
00324898  00 00 52 e3                                      cmp r2, #0
0032489c  ee ff ff 0a                                      beq #0x32485c
003248a0  00 00 95 e5                                      ldr r0, [r5]
003248a4  2e a8 ff eb                                      bl #0x30e964
003248a8  30 30 94 e5                                      ldr r3, [r4, #0x30]
003248ac  00 00 83 e5                                      str r0, [r3]
003248b0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003248b4  01 00 53 e3                                      cmp r3, #1
003248b8  e7 ff ff 9a                                      bls #0x32485c
003248bc  04 00 95 e5                                      ldr r0, [r5, #4]
003248c0  27 a8 ff eb                                      bl #0x30e964
003248c4  30 30 94 e5                                      ldr r3, [r4, #0x30]
003248c8  04 00 83 e5                                      str r0, [r3, #4]
003248cc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003248d0  02 00 53 e3                                      cmp r3, #2
003248d4  e0 ff ff 9a                                      bls #0x32485c
003248d8  08 00 95 e5                                      ldr r0, [r5, #8]
003248dc  20 a8 ff eb                                      bl #0x30e964
003248e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
003248e4  08 00 83 e5                                      str r0, [r3, #8]
003248e8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003248ec  03 00 53 e3                                      cmp r3, #3
003248f0  d9 ff ff 9a                                      bls #0x32485c
003248f4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
003248f8  19 a8 ff eb                                      bl #0x30e964
003248fc  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324900  0c 00 83 e5                                      str r0, [r3, #0xc]
00324904  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324908  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0032490c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setPositionENS_4core10position2dIiEE
; demangled: glitch::io::CNumbersAttribute::setPosition(glitch::core::position2d<int>)
; decoder-mode: arm
0032490c  70 40 2d e9                                      push {r4, r5, r6, lr}
00324910  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00324914  00 40 a0 e1                                      mov r4, r0
00324918  01 50 a0 e1                                      mov r5, r1
0032491c  00 00 53 e3                                      cmp r3, #0
00324920  17 00 00 1a                                      bne #0x324984
00324924  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324928  00 00 52 e3                                      cmp r2, #0
0032492c  03 10 a0 11                                      movne r1, r3
00324930  2f 00 00 0a                                      beq #0x3249f4
00324934  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324938  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
0032493c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324940  01 30 83 e2                                      add r3, r3, #1
00324944  02 00 53 e1                                      cmp r3, r2
00324948  f9 ff ff 3a                                      blo #0x324934
0032494c  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324950  00 00 53 e3                                      cmp r3, #0
00324954  18 00 00 1a                                      bne #0x3249bc
00324958  00 00 52 e3                                      cmp r2, #0
0032495c  07 00 00 0a                                      beq #0x324980
00324960  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324964  00 20 95 e5                                      ldr r2, [r5]
00324968  00 20 83 e5                                      str r2, [r3]
0032496c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324970  01 00 53 e3                                      cmp r3, #1
00324974  24 30 94 85                                      ldrhi r3, [r4, #0x24]
00324978  04 20 95 85                                      ldrhi r2, [r5, #4]
0032497c  04 20 83 85                                      strhi r2, [r3, #4]
00324980  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324984  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00324988  00 00 53 e3                                      cmp r3, #0
0032498c  fb ff ff 0a                                      beq #0x324980
00324990  00 10 a0 e3                                      mov r1, #0
00324994  00 30 a0 e3                                      mov r3, #0
00324998  30 20 94 e5                                      ldr r2, [r4, #0x30]
0032499c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
003249a0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003249a4  01 30 83 e2                                      add r3, r3, #1
003249a8  02 00 53 e1                                      cmp r3, r2
003249ac  f9 ff ff 3a                                      blo #0x324998
003249b0  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
003249b4  00 00 53 e3                                      cmp r3, #0
003249b8  e6 ff ff 0a                                      beq #0x324958
003249bc  00 00 52 e3                                      cmp r2, #0
003249c0  ee ff ff 0a                                      beq #0x324980
003249c4  00 00 95 e5                                      ldr r0, [r5]
003249c8  e5 a7 ff eb                                      bl #0x30e964
003249cc  30 30 94 e5                                      ldr r3, [r4, #0x30]
003249d0  00 00 83 e5                                      str r0, [r3]
003249d4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003249d8  01 00 53 e3                                      cmp r3, #1
003249dc  e7 ff ff 9a                                      bls #0x324980
003249e0  04 00 95 e5                                      ldr r0, [r5, #4]
003249e4  de a7 ff eb                                      bl #0x30e964
003249e8  30 30 94 e5                                      ldr r3, [r4, #0x30]
003249ec  04 00 83 e5                                      str r0, [r3, #4]
003249f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003249f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003249f8, declared_size=384, range_size=384, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8setColorENS_5video6SColorE
; demangled: glitch::io::CNumbersAttribute::setColor(glitch::video::SColor)
; decoder-mode: arm
003249f8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003249fc  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00324a00  00 40 a0 e1                                      mov r4, r0
00324a04  0c d0 4d e2                                      sub sp, sp, #0xc
00324a08  00 00 53 e3                                      cmp r3, #0
00324a0c  21 6c a0 e1                                      lsr r6, r1, #0x18
00324a10  71 00 ef e6                                      uxtb r0, r1
00324a14  51 54 e7 e7                                      ubfx r5, r1, #8, #8
00324a18  51 78 e7 e7                                      ubfx r7, r1, #0x10, #8
00324a1c  20 00 00 1a                                      bne #0x324aa4
00324a20  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324a24  00 00 52 e3                                      cmp r2, #0
00324a28  03 10 a0 11                                      movne r1, r3
00324a2c  1a 00 00 0a                                      beq #0x324a9c
00324a30  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324a34  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324a38  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324a3c  01 30 83 e2                                      add r3, r3, #1
00324a40  02 00 53 e1                                      cmp r3, r2
00324a44  f9 ff ff 3a                                      blo #0x324a30
00324a48  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324a4c  00 00 53 e3                                      cmp r3, #0
00324a50  21 00 00 1a                                      bne #0x324adc
00324a54  00 00 52 e3                                      cmp r2, #0
00324a58  0f 00 00 0a                                      beq #0x324a9c
00324a5c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324a60  00 00 83 e5                                      str r0, [r3]
00324a64  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324a68  01 00 53 e3                                      cmp r3, #1
00324a6c  0a 00 00 9a                                      bls #0x324a9c
00324a70  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324a74  04 50 83 e5                                      str r5, [r3, #4]
00324a78  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324a7c  02 00 53 e3                                      cmp r3, #2
00324a80  05 00 00 9a                                      bls #0x324a9c
00324a84  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324a88  08 70 83 e5                                      str r7, [r3, #8]
00324a8c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324a90  03 00 53 e3                                      cmp r3, #3
00324a94  24 30 94 85                                      ldrhi r3, [r4, #0x24]
00324a98  0c 60 83 85                                      strhi r6, [r3, #0xc]
00324a9c  0c d0 8d e2                                      add sp, sp, #0xc
00324aa0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00324aa4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324aa8  00 00 53 e3                                      cmp r3, #0
00324aac  fa ff ff 0a                                      beq #0x324a9c
00324ab0  00 10 a0 e3                                      mov r1, #0
00324ab4  00 30 a0 e3                                      mov r3, #0
00324ab8  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324abc  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324ac0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324ac4  01 30 83 e2                                      add r3, r3, #1
00324ac8  02 00 53 e1                                      cmp r3, r2
00324acc  f9 ff ff 3a                                      blo #0x324ab8
00324ad0  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324ad4  00 00 53 e3                                      cmp r3, #0
00324ad8  dd ff ff 0a                                      beq #0x324a54
00324adc  00 00 52 e3                                      cmp r2, #0
00324ae0  ed ff ff 0a                                      beq #0x324a9c
00324ae4  fd a5 ff eb                                      bl #0x30e2e0
00324ae8  43 14 a0 e3                                      mov r1, #0x43000000
00324aec  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324af0  67 a8 ff eb                                      bl #0x30ec94
00324af4  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324af8  00 00 83 e5                                      str r0, [r3]
00324afc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324b00  01 00 53 e3                                      cmp r3, #1
00324b04  e4 ff ff 9a                                      bls #0x324a9c
00324b08  05 00 a0 e1                                      mov r0, r5
00324b0c  f3 a5 ff eb                                      bl #0x30e2e0
00324b10  43 14 a0 e3                                      mov r1, #0x43000000
00324b14  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324b18  5d a8 ff eb                                      bl #0x30ec94
00324b1c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324b20  04 00 83 e5                                      str r0, [r3, #4]
00324b24  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324b28  02 00 53 e3                                      cmp r3, #2
00324b2c  da ff ff 9a                                      bls #0x324a9c
00324b30  07 00 a0 e1                                      mov r0, r7
00324b34  e9 a5 ff eb                                      bl #0x30e2e0
00324b38  43 14 a0 e3                                      mov r1, #0x43000000
00324b3c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324b40  53 a8 ff eb                                      bl #0x30ec94
00324b44  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324b48  08 00 83 e5                                      str r0, [r3, #8]
00324b4c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324b50  03 00 53 e3                                      cmp r3, #3
00324b54  d0 ff ff 9a                                      bls #0x324a9c
00324b58  06 00 a0 e1                                      mov r0, r6
00324b5c  df a5 ff eb                                      bl #0x30e2e0
00324b60  43 14 a0 e3                                      mov r1, #0x43000000
00324b64  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324b68  49 a8 ff eb                                      bl #0x30ec94
00324b6c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324b70  0c 00 83 e5                                      str r0, [r3, #0xc]
00324b74  c8 ff ff ea                                      b #0x324a9c

; FUNCTION 0x00324b78, declared_size=396, range_size=396, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8setColorENS_5video7SColorfE
; demangled: glitch::io::CNumbersAttribute::setColor(glitch::video::SColorf)
; decoder-mode: arm
00324b78  10 d0 4d e2                                      sub sp, sp, #0x10
00324b7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00324b80  00 40 a0 e1                                      mov r4, r0
00324b84  1c 00 8d e2                                      add r0, sp, #0x1c
00324b88  0e 00 80 e8                                      stm r0, {r1, r2, r3}
00324b8c  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324b90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00324b94  20 50 9d e5                                      ldr r5, [sp, #0x20]
00324b98  00 00 52 e3                                      cmp r2, #0
00324b9c  24 70 9d e5                                      ldr r7, [sp, #0x24]
00324ba0  28 60 9d e5                                      ldr r6, [sp, #0x28]
00324ba4  35 00 00 1a                                      bne #0x324c80
00324ba8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324bac  00 00 53 e3                                      cmp r3, #0
00324bb0  02 10 a0 11                                      movne r1, r2
00324bb4  2e 00 00 0a                                      beq #0x324c74
00324bb8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324bbc  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00324bc0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324bc4  01 20 82 e2                                      add r2, r2, #1
00324bc8  03 00 52 e1                                      cmp r2, r3
00324bcc  f9 ff ff 3a                                      blo #0x324bb8
00324bd0  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324bd4  00 00 52 e3                                      cmp r2, #0
00324bd8  36 00 00 1a                                      bne #0x324cb8
00324bdc  00 00 53 e3                                      cmp r3, #0
00324be0  23 00 00 0a                                      beq #0x324c74
00324be4  43 14 a0 e3                                      mov r1, #0x43000000
00324be8  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324bec  5e a8 ff eb                                      bl #0x30ed6c
00324bf0  35 a6 ff eb                                      bl #0x30e4cc
00324bf4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324bf8  00 00 83 e5                                      str r0, [r3]
00324bfc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324c00  01 00 53 e3                                      cmp r3, #1
00324c04  1a 00 00 9a                                      bls #0x324c74
00324c08  43 14 a0 e3                                      mov r1, #0x43000000
00324c0c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324c10  05 00 a0 e1                                      mov r0, r5
00324c14  54 a8 ff eb                                      bl #0x30ed6c
00324c18  2b a6 ff eb                                      bl #0x30e4cc
00324c1c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324c20  04 00 83 e5                                      str r0, [r3, #4]
00324c24  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324c28  02 00 53 e3                                      cmp r3, #2
00324c2c  10 00 00 9a                                      bls #0x324c74
00324c30  43 14 a0 e3                                      mov r1, #0x43000000
00324c34  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324c38  07 00 a0 e1                                      mov r0, r7
00324c3c  4a a8 ff eb                                      bl #0x30ed6c
00324c40  21 a6 ff eb                                      bl #0x30e4cc
00324c44  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324c48  08 00 83 e5                                      str r0, [r3, #8]
00324c4c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324c50  03 00 53 e3                                      cmp r3, #3
00324c54  06 00 00 9a                                      bls #0x324c74
00324c58  43 14 a0 e3                                      mov r1, #0x43000000
00324c5c  7f 18 81 e2                                      add r1, r1, #0x7f0000
00324c60  06 00 a0 e1                                      mov r0, r6
00324c64  40 a8 ff eb                                      bl #0x30ed6c
00324c68  17 a6 ff eb                                      bl #0x30e4cc
00324c6c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324c70  0c 00 83 e5                                      str r0, [r3, #0xc]
00324c74  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00324c78  10 d0 8d e2                                      add sp, sp, #0x10
00324c7c  1e ff 2f e1                                      bx lr
00324c80  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324c84  00 00 53 e3                                      cmp r3, #0
00324c88  f9 ff ff 0a                                      beq #0x324c74
00324c8c  00 10 a0 e3                                      mov r1, #0
00324c90  00 20 a0 e3                                      mov r2, #0
00324c94  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324c98  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00324c9c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324ca0  01 20 82 e2                                      add r2, r2, #1
00324ca4  03 00 52 e1                                      cmp r2, r3
00324ca8  f9 ff ff 3a                                      blo #0x324c94
00324cac  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00324cb0  00 00 52 e3                                      cmp r2, #0
00324cb4  c8 ff ff 0a                                      beq #0x324bdc
00324cb8  00 00 53 e3                                      cmp r3, #0
00324cbc  ec ff ff 0a                                      beq #0x324c74
00324cc0  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324cc4  00 00 83 e5                                      str r0, [r3]
00324cc8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324ccc  01 00 53 e3                                      cmp r3, #1
00324cd0  e7 ff ff 9a                                      bls #0x324c74
00324cd4  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324cd8  04 50 83 e5                                      str r5, [r3, #4]
00324cdc  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324ce0  02 00 53 e3                                      cmp r3, #2
00324ce4  e2 ff ff 9a                                      bls #0x324c74
00324ce8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324cec  08 70 83 e5                                      str r7, [r3, #8]
00324cf0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324cf4  03 00 53 e3                                      cmp r3, #3
00324cf8  30 30 94 85                                      ldrhi r3, [r4, #0x30]
00324cfc  0c 60 83 85                                      strhi r6, [r3, #0xc]
00324d00  db ff ff ea                                      b #0x324c74

; FUNCTION 0x00324d04, declared_size=240, range_size=240, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setVector2dENS_4core8vector2dIfEE
; demangled: glitch::io::CNumbersAttribute::setVector2d(glitch::core::vector2d<float>)
; decoder-mode: arm
00324d04  70 40 2d e9                                      push {r4, r5, r6, lr}
00324d08  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00324d0c  00 40 a0 e1                                      mov r4, r0
00324d10  01 50 a0 e1                                      mov r5, r1
00324d14  00 00 53 e3                                      cmp r3, #0
00324d18  1a 00 00 1a                                      bne #0x324d88
00324d1c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324d20  00 00 52 e3                                      cmp r2, #0
00324d24  03 10 a0 11                                      movne r1, r3
00324d28  30 00 00 0a                                      beq #0x324df0
00324d2c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324d30  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324d34  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324d38  01 30 83 e2                                      add r3, r3, #1
00324d3c  02 00 53 e1                                      cmp r3, r2
00324d40  f9 ff ff 3a                                      blo #0x324d2c
00324d44  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324d48  00 00 53 e3                                      cmp r3, #0
00324d4c  1b 00 00 1a                                      bne #0x324dc0
00324d50  00 00 52 e3                                      cmp r2, #0
00324d54  0a 00 00 0a                                      beq #0x324d84
00324d58  00 00 95 e5                                      ldr r0, [r5]
00324d5c  da a5 ff eb                                      bl #0x30e4cc
00324d60  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324d64  00 00 83 e5                                      str r0, [r3]
00324d68  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324d6c  01 00 53 e3                                      cmp r3, #1
00324d70  03 00 00 9a                                      bls #0x324d84
00324d74  04 00 95 e5                                      ldr r0, [r5, #4]
00324d78  d3 a5 ff eb                                      bl #0x30e4cc
00324d7c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324d80  04 00 83 e5                                      str r0, [r3, #4]
00324d84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324d88  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00324d8c  00 00 53 e3                                      cmp r3, #0
00324d90  fb ff ff 0a                                      beq #0x324d84
00324d94  00 10 a0 e3                                      mov r1, #0
00324d98  00 30 a0 e3                                      mov r3, #0
00324d9c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324da0  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324da4  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324da8  01 30 83 e2                                      add r3, r3, #1
00324dac  02 00 53 e1                                      cmp r3, r2
00324db0  f9 ff ff 3a                                      blo #0x324d9c
00324db4  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324db8  00 00 53 e3                                      cmp r3, #0
00324dbc  e3 ff ff 0a                                      beq #0x324d50
00324dc0  00 00 52 e3                                      cmp r2, #0
00324dc4  ee ff ff 0a                                      beq #0x324d84
00324dc8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324dcc  00 20 95 e5                                      ldr r2, [r5]
00324dd0  00 20 83 e5                                      str r2, [r3]
00324dd4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324dd8  01 00 53 e3                                      cmp r3, #1
00324ddc  e8 ff ff 9a                                      bls #0x324d84
00324de0  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324de4  04 20 95 e5                                      ldr r2, [r5, #4]
00324de8  04 20 83 e5                                      str r2, [r3, #4]
00324dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324df0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00324df4, declared_size=292, range_size=292, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setVector3dERKNS_4core8vector3dIfEE
; demangled: glitch::io::CNumbersAttribute::setVector3d(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00324df4  70 40 2d e9                                      push {r4, r5, r6, lr}
00324df8  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00324dfc  00 40 a0 e1                                      mov r4, r0
00324e00  01 50 a0 e1                                      mov r5, r1
00324e04  00 00 53 e3                                      cmp r3, #0
00324e08  21 00 00 1a                                      bne #0x324e94
00324e0c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324e10  00 00 52 e3                                      cmp r2, #0
00324e14  03 10 a0 11                                      movne r1, r3
00324e18  3d 00 00 0a                                      beq #0x324f14
00324e1c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324e20  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324e24  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324e28  01 30 83 e2                                      add r3, r3, #1
00324e2c  02 00 53 e1                                      cmp r3, r2
00324e30  f9 ff ff 3a                                      blo #0x324e1c
00324e34  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324e38  00 00 53 e3                                      cmp r3, #0
00324e3c  22 00 00 1a                                      bne #0x324ecc
00324e40  00 00 52 e3                                      cmp r2, #0
00324e44  11 00 00 0a                                      beq #0x324e90
00324e48  00 00 95 e5                                      ldr r0, [r5]
00324e4c  9e a5 ff eb                                      bl #0x30e4cc
00324e50  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324e54  00 00 83 e5                                      str r0, [r3]
00324e58  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324e5c  01 00 53 e3                                      cmp r3, #1
00324e60  0a 00 00 9a                                      bls #0x324e90
00324e64  04 00 95 e5                                      ldr r0, [r5, #4]
00324e68  97 a5 ff eb                                      bl #0x30e4cc
00324e6c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324e70  04 00 83 e5                                      str r0, [r3, #4]
00324e74  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324e78  02 00 53 e3                                      cmp r3, #2
00324e7c  03 00 00 9a                                      bls #0x324e90
00324e80  08 00 95 e5                                      ldr r0, [r5, #8]
00324e84  90 a5 ff eb                                      bl #0x30e4cc
00324e88  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324e8c  08 00 83 e5                                      str r0, [r3, #8]
00324e90  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324e94  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00324e98  00 00 53 e3                                      cmp r3, #0
00324e9c  fb ff ff 0a                                      beq #0x324e90
00324ea0  00 10 a0 e3                                      mov r1, #0
00324ea4  00 30 a0 e3                                      mov r3, #0
00324ea8  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324eac  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324eb0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324eb4  01 30 83 e2                                      add r3, r3, #1
00324eb8  02 00 53 e1                                      cmp r3, r2
00324ebc  f9 ff ff 3a                                      blo #0x324ea8
00324ec0  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324ec4  00 00 53 e3                                      cmp r3, #0
00324ec8  dc ff ff 0a                                      beq #0x324e40
00324ecc  00 00 52 e3                                      cmp r2, #0
00324ed0  ee ff ff 0a                                      beq #0x324e90
00324ed4  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324ed8  00 20 95 e5                                      ldr r2, [r5]
00324edc  00 20 83 e5                                      str r2, [r3]
00324ee0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324ee4  01 00 53 e3                                      cmp r3, #1
00324ee8  e8 ff ff 9a                                      bls #0x324e90
00324eec  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324ef0  04 20 95 e5                                      ldr r2, [r5, #4]
00324ef4  04 20 83 e5                                      str r2, [r3, #4]
00324ef8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324efc  02 00 53 e3                                      cmp r3, #2
00324f00  e2 ff ff 9a                                      bls #0x324e90
00324f04  30 30 94 e5                                      ldr r3, [r4, #0x30]
00324f08  08 20 95 e5                                      ldr r2, [r5, #8]
00324f0c  08 20 83 e5                                      str r2, [r3, #8]
00324f10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324f14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00324f18, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setVector4dERKNS_4core8vector4dIfEE
; demangled: glitch::io::CNumbersAttribute::setVector4d(glitch::core::vector4d<float> const&)
; decoder-mode: arm
00324f18  70 40 2d e9                                      push {r4, r5, r6, lr}
00324f1c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00324f20  00 40 a0 e1                                      mov r4, r0
00324f24  01 50 a0 e1                                      mov r5, r1
00324f28  00 00 53 e3                                      cmp r3, #0
00324f2c  28 00 00 1a                                      bne #0x324fd4
00324f30  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00324f34  00 00 52 e3                                      cmp r2, #0
00324f38  03 10 a0 11                                      movne r1, r3
00324f3c  4a 00 00 0a                                      beq #0x32506c
00324f40  24 20 94 e5                                      ldr r2, [r4, #0x24]
00324f44  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324f48  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324f4c  01 30 83 e2                                      add r3, r3, #1
00324f50  02 00 53 e1                                      cmp r3, r2
00324f54  f9 ff ff 3a                                      blo #0x324f40
00324f58  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00324f5c  00 00 53 e3                                      cmp r3, #0
00324f60  29 00 00 1a                                      bne #0x32500c
00324f64  00 00 52 e3                                      cmp r2, #0
00324f68  18 00 00 0a                                      beq #0x324fd0
00324f6c  00 00 95 e5                                      ldr r0, [r5]
00324f70  55 a5 ff eb                                      bl #0x30e4cc
00324f74  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324f78  00 00 83 e5                                      str r0, [r3]
00324f7c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324f80  01 00 53 e3                                      cmp r3, #1
00324f84  11 00 00 9a                                      bls #0x324fd0
00324f88  04 00 95 e5                                      ldr r0, [r5, #4]
00324f8c  4e a5 ff eb                                      bl #0x30e4cc
00324f90  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324f94  04 00 83 e5                                      str r0, [r3, #4]
00324f98  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324f9c  02 00 53 e3                                      cmp r3, #2
00324fa0  0a 00 00 9a                                      bls #0x324fd0
00324fa4  08 00 95 e5                                      ldr r0, [r5, #8]
00324fa8  47 a5 ff eb                                      bl #0x30e4cc
00324fac  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324fb0  08 00 83 e5                                      str r0, [r3, #8]
00324fb4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00324fb8  03 00 53 e3                                      cmp r3, #3
00324fbc  03 00 00 9a                                      bls #0x324fd0
00324fc0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00324fc4  40 a5 ff eb                                      bl #0x30e4cc
00324fc8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00324fcc  0c 00 83 e5                                      str r0, [r3, #0xc]
00324fd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00324fd4  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00324fd8  00 00 53 e3                                      cmp r3, #0
00324fdc  fb ff ff 0a                                      beq #0x324fd0
00324fe0  00 10 a0 e3                                      mov r1, #0
00324fe4  00 30 a0 e3                                      mov r3, #0
00324fe8  30 20 94 e5                                      ldr r2, [r4, #0x30]
00324fec  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00324ff0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00324ff4  01 30 83 e2                                      add r3, r3, #1
00324ff8  02 00 53 e1                                      cmp r3, r2
00324ffc  f9 ff ff 3a                                      blo #0x324fe8
00325000  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325004  00 00 53 e3                                      cmp r3, #0
00325008  d5 ff ff 0a                                      beq #0x324f64
0032500c  00 00 52 e3                                      cmp r2, #0
00325010  ee ff ff 0a                                      beq #0x324fd0
00325014  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325018  00 20 95 e5                                      ldr r2, [r5]
0032501c  00 20 83 e5                                      str r2, [r3]
00325020  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325024  01 00 53 e3                                      cmp r3, #1
00325028  e8 ff ff 9a                                      bls #0x324fd0
0032502c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325030  04 20 95 e5                                      ldr r2, [r5, #4]
00325034  04 20 83 e5                                      str r2, [r3, #4]
00325038  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032503c  02 00 53 e3                                      cmp r3, #2
00325040  e2 ff ff 9a                                      bls #0x324fd0
00325044  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325048  08 20 95 e5                                      ldr r2, [r5, #8]
0032504c  08 20 83 e5                                      str r2, [r3, #8]
00325050  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325054  03 00 53 e3                                      cmp r3, #3
00325058  dc ff ff 9a                                      bls #0x324fd0
0032505c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325060  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00325064  0c 20 83 e5                                      str r2, [r3, #0xc]
00325068  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032506c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00325070, declared_size=352, range_size=352, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9setStringEPKc
; demangled: glitch::io::CNumbersAttribute::setString(char const*)
; decoder-mode: arm
00325070  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00325074  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325078  0c d0 4d e2                                      sub sp, sp, #0xc
0032507c  00 40 a0 e1                                      mov r4, r0
00325080  00 00 53 e3                                      cmp r3, #0
00325084  21 00 00 1a                                      bne #0x325110
00325088  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0032508c  00 00 52 e3                                      cmp r2, #0
00325090  03 c0 a0 11                                      movne ip, r3
00325094  1b 00 00 0a                                      beq #0x325108
00325098  24 20 94 e5                                      ldr r2, [r4, #0x24]
0032509c  03 c1 82 e7                                      str ip, [r2, r3, lsl #2]
003250a0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
003250a4  01 30 83 e2                                      add r3, r3, #1
003250a8  00 00 53 e1                                      cmp r3, r0
003250ac  f9 ff ff 3a                                      blo #0x325098
003250b0  00 00 50 e3                                      cmp r0, #0
003250b4  13 00 00 0a                                      beq #0x325108
003250b8  00 30 d1 e5                                      ldrb r3, [r1]
003250bc  00 00 53 e3                                      cmp r3, #0
003250c0  10 00 00 0a                                      beq #0x325108
003250c4  00 60 a0 e3                                      mov r6, #0
003250c8  01 a0 a0 e1                                      mov sl, r1
003250cc  06 50 a0 e1                                      mov r5, r6
003250d0  00 80 a0 e3                                      mov r8, #0
003250d4  04 70 8d e2                                      add r7, sp, #4
003250d8  00 00 53 e3                                      cmp r3, #0
003250dc  2d 00 53 13                                      cmpne r3, #0x2d
003250e0  16 00 00 1a                                      bne #0x325140
003250e4  00 00 53 e3                                      cmp r3, #0
003250e8  20 00 00 1a                                      bne #0x325170
003250ec  01 50 85 e2                                      add r5, r5, #1
003250f0  05 00 50 e1                                      cmp r0, r5
003250f4  03 00 00 9a                                      bls #0x325108
003250f8  00 30 da e5                                      ldrb r3, [sl]
003250fc  04 60 86 e2                                      add r6, r6, #4
00325100  00 00 53 e3                                      cmp r3, #0
00325104  f3 ff ff 1a                                      bne #0x3250d8
00325108  0c d0 8d e2                                      add sp, sp, #0xc
0032510c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00325110  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00325114  00 00 53 e3                                      cmp r3, #0
00325118  fa ff ff 0a                                      beq #0x325108
0032511c  00 c0 a0 e3                                      mov ip, #0
00325120  00 30 a0 e3                                      mov r3, #0
00325124  30 20 94 e5                                      ldr r2, [r4, #0x30]
00325128  03 c1 82 e7                                      str ip, [r2, r3, lsl #2]
0032512c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00325130  01 30 83 e2                                      add r3, r3, #1
00325134  00 00 53 e1                                      cmp r3, r0
00325138  f9 ff ff 3a                                      blo #0x325124
0032513c  db ff ff ea                                      b #0x3250b0
00325140  30 30 43 e2                                      sub r3, r3, #0x30
00325144  73 30 ef e6                                      uxtb r3, r3
00325148  09 00 53 e3                                      cmp r3, #9
0032514c  07 00 00 9a                                      bls #0x325170
00325150  01 30 fa e5                                      ldrb r3, [sl, #1]!
00325154  30 20 43 e2                                      sub r2, r3, #0x30
00325158  2d 00 53 e3                                      cmp r3, #0x2d
0032515c  00 00 53 13                                      cmpne r3, #0
00325160  72 20 ef e6                                      uxtb r2, r2
00325164  de ff ff 0a                                      beq #0x3250e4
00325168  09 00 52 e3                                      cmp r2, #9
0032516c  f7 ff ff 8a                                      bhi #0x325150
00325170  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325174  00 00 53 e3                                      cmp r3, #0
00325178  09 00 00 0a                                      beq #0x3251a4
0032517c  0a 00 a0 e1                                      mov r0, sl
00325180  07 10 a0 e1                                      mov r1, r7
00325184  04 80 8d e5                                      str r8, [sp, #4]
00325188  8e f6 ff eb                                      bl #0x322bc8
0032518c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325190  04 20 9d e5                                      ldr r2, [sp, #4]
00325194  00 a0 a0 e1                                      mov sl, r0
00325198  06 20 83 e7                                      str r2, [r3, r6]
0032519c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
003251a0  d1 ff ff ea                                      b #0x3250ec
003251a4  0a 00 a0 e1                                      mov r0, sl
003251a8  07 10 a0 e1                                      mov r1, r7
003251ac  04 80 8d e5                                      str r8, [sp, #4]
003251b0  84 f6 ff eb                                      bl #0x322bc8
003251b4  00 a0 a0 e1                                      mov sl, r0
003251b8  04 00 9d e5                                      ldr r0, [sp, #4]
003251bc  c2 a4 ff eb                                      bl #0x30e4cc
003251c0  24 30 94 e5                                      ldr r3, [r4, #0x24]
003251c4  06 00 83 e7                                      str r0, [r3, r6]
003251c8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
003251cc  c6 ff ff ea                                      b #0x3250ec

; FUNCTION 0x003251d0, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11setVector2dENS_4core8vector2dIiEE
; demangled: glitch::io::CNumbersAttribute::setVector2d(glitch::core::vector2d<int>)
; decoder-mode: arm
003251d0  70 40 2d e9                                      push {r4, r5, r6, lr}
003251d4  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
003251d8  00 40 a0 e1                                      mov r4, r0
003251dc  01 50 a0 e1                                      mov r5, r1
003251e0  00 00 53 e3                                      cmp r3, #0
003251e4  17 00 00 1a                                      bne #0x325248
003251e8  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
003251ec  00 00 52 e3                                      cmp r2, #0
003251f0  03 10 a0 11                                      movne r1, r3
003251f4  2f 00 00 0a                                      beq #0x3252b8
003251f8  24 20 94 e5                                      ldr r2, [r4, #0x24]
003251fc  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325200  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325204  01 30 83 e2                                      add r3, r3, #1
00325208  02 00 53 e1                                      cmp r3, r2
0032520c  f9 ff ff 3a                                      blo #0x3251f8
00325210  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325214  00 00 53 e3                                      cmp r3, #0
00325218  18 00 00 1a                                      bne #0x325280
0032521c  00 00 52 e3                                      cmp r2, #0
00325220  07 00 00 0a                                      beq #0x325244
00325224  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325228  00 20 95 e5                                      ldr r2, [r5]
0032522c  00 20 83 e5                                      str r2, [r3]
00325230  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325234  01 00 53 e3                                      cmp r3, #1
00325238  24 30 94 85                                      ldrhi r3, [r4, #0x24]
0032523c  04 20 95 85                                      ldrhi r2, [r5, #4]
00325240  04 20 83 85                                      strhi r2, [r3, #4]
00325244  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325248  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0032524c  00 00 53 e3                                      cmp r3, #0
00325250  fb ff ff 0a                                      beq #0x325244
00325254  00 10 a0 e3                                      mov r1, #0
00325258  00 30 a0 e3                                      mov r3, #0
0032525c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00325260  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325264  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325268  01 30 83 e2                                      add r3, r3, #1
0032526c  02 00 53 e1                                      cmp r3, r2
00325270  f9 ff ff 3a                                      blo #0x32525c
00325274  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325278  00 00 53 e3                                      cmp r3, #0
0032527c  e6 ff ff 0a                                      beq #0x32521c
00325280  00 00 52 e3                                      cmp r2, #0
00325284  ee ff ff 0a                                      beq #0x325244
00325288  00 00 95 e5                                      ldr r0, [r5]
0032528c  b4 a5 ff eb                                      bl #0x30e964
00325290  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325294  00 00 83 e5                                      str r0, [r3]
00325298  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032529c  01 00 53 e3                                      cmp r3, #1
003252a0  e7 ff ff 9a                                      bls #0x325244
003252a4  04 00 95 e5                                      ldr r0, [r5, #4]
003252a8  ad a5 ff eb                                      bl #0x30e964
003252ac  30 30 94 e5                                      ldr r3, [r4, #0x30]
003252b0  04 00 83 e5                                      str r0, [r3, #4]
003252b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003252b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003252bc, declared_size=604, range_size=604, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute13setTriangle3dENS_4core10triangle3dIfEE
; demangled: glitch::io::CNumbersAttribute::setTriangle3d(glitch::core::triangle3d<float>)
; decoder-mode: arm
003252bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003252c0  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
003252c4  00 40 a0 e1                                      mov r4, r0
003252c8  01 50 a0 e1                                      mov r5, r1
003252cc  00 00 53 e3                                      cmp r3, #0
003252d0  4b 00 00 1a                                      bne #0x325404
003252d4  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
003252d8  00 00 52 e3                                      cmp r2, #0
003252dc  03 10 a0 11                                      movne r1, r3
003252e0  8b 00 00 0a                                      beq #0x325514
003252e4  24 20 94 e5                                      ldr r2, [r4, #0x24]
003252e8  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
003252ec  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003252f0  01 30 83 e2                                      add r3, r3, #1
003252f4  02 00 53 e1                                      cmp r3, r2
003252f8  f9 ff ff 3a                                      blo #0x3252e4
003252fc  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325300  00 00 53 e3                                      cmp r3, #0
00325304  4c 00 00 1a                                      bne #0x32543c
00325308  00 00 52 e3                                      cmp r2, #0
0032530c  3b 00 00 0a                                      beq #0x325400
00325310  00 00 95 e5                                      ldr r0, [r5]
00325314  6c a4 ff eb                                      bl #0x30e4cc
00325318  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032531c  00 00 83 e5                                      str r0, [r3]
00325320  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325324  01 00 53 e3                                      cmp r3, #1
00325328  34 00 00 9a                                      bls #0x325400
0032532c  04 00 95 e5                                      ldr r0, [r5, #4]
00325330  65 a4 ff eb                                      bl #0x30e4cc
00325334  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325338  04 00 83 e5                                      str r0, [r3, #4]
0032533c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325340  02 00 53 e3                                      cmp r3, #2
00325344  2d 00 00 9a                                      bls #0x325400
00325348  08 00 95 e5                                      ldr r0, [r5, #8]
0032534c  5e a4 ff eb                                      bl #0x30e4cc
00325350  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325354  08 00 83 e5                                      str r0, [r3, #8]
00325358  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032535c  03 00 53 e3                                      cmp r3, #3
00325360  26 00 00 9a                                      bls #0x325400
00325364  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00325368  57 a4 ff eb                                      bl #0x30e4cc
0032536c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325370  0c 00 83 e5                                      str r0, [r3, #0xc]
00325374  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325378  04 00 53 e3                                      cmp r3, #4
0032537c  1f 00 00 9a                                      bls #0x325400
00325380  10 00 95 e5                                      ldr r0, [r5, #0x10]
00325384  50 a4 ff eb                                      bl #0x30e4cc
00325388  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032538c  10 00 83 e5                                      str r0, [r3, #0x10]
00325390  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325394  05 00 53 e3                                      cmp r3, #5
00325398  18 00 00 9a                                      bls #0x325400
0032539c  14 00 95 e5                                      ldr r0, [r5, #0x14]
003253a0  49 a4 ff eb                                      bl #0x30e4cc
003253a4  24 30 94 e5                                      ldr r3, [r4, #0x24]
003253a8  14 00 83 e5                                      str r0, [r3, #0x14]
003253ac  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003253b0  06 00 53 e3                                      cmp r3, #6
003253b4  11 00 00 9a                                      bls #0x325400
003253b8  18 00 95 e5                                      ldr r0, [r5, #0x18]
003253bc  42 a4 ff eb                                      bl #0x30e4cc
003253c0  24 30 94 e5                                      ldr r3, [r4, #0x24]
003253c4  18 00 83 e5                                      str r0, [r3, #0x18]
003253c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003253cc  07 00 53 e3                                      cmp r3, #7
003253d0  0a 00 00 9a                                      bls #0x325400
003253d4  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
003253d8  3b a4 ff eb                                      bl #0x30e4cc
003253dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
003253e0  1c 00 83 e5                                      str r0, [r3, #0x1c]
003253e4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003253e8  08 00 53 e3                                      cmp r3, #8
003253ec  03 00 00 9a                                      bls #0x325400
003253f0  20 00 95 e5                                      ldr r0, [r5, #0x20]
003253f4  34 a4 ff eb                                      bl #0x30e4cc
003253f8  24 30 94 e5                                      ldr r3, [r4, #0x24]
003253fc  20 00 83 e5                                      str r0, [r3, #0x20]
00325400  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325404  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00325408  00 00 53 e3                                      cmp r3, #0
0032540c  fb ff ff 0a                                      beq #0x325400
00325410  00 10 a0 e3                                      mov r1, #0
00325414  00 30 a0 e3                                      mov r3, #0
00325418  30 20 94 e5                                      ldr r2, [r4, #0x30]
0032541c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325420  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325424  01 30 83 e2                                      add r3, r3, #1
00325428  02 00 53 e1                                      cmp r3, r2
0032542c  f9 ff ff 3a                                      blo #0x325418
00325430  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325434  00 00 53 e3                                      cmp r3, #0
00325438  b2 ff ff 0a                                      beq #0x325308
0032543c  00 00 52 e3                                      cmp r2, #0
00325440  ee ff ff 0a                                      beq #0x325400
00325444  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325448  00 20 95 e5                                      ldr r2, [r5]
0032544c  00 20 83 e5                                      str r2, [r3]
00325450  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325454  01 00 53 e3                                      cmp r3, #1
00325458  e8 ff ff 9a                                      bls #0x325400
0032545c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325460  04 20 95 e5                                      ldr r2, [r5, #4]
00325464  04 20 83 e5                                      str r2, [r3, #4]
00325468  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032546c  02 00 53 e3                                      cmp r3, #2
00325470  e2 ff ff 9a                                      bls #0x325400
00325474  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325478  08 20 95 e5                                      ldr r2, [r5, #8]
0032547c  08 20 83 e5                                      str r2, [r3, #8]
00325480  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325484  03 00 53 e3                                      cmp r3, #3
00325488  dc ff ff 9a                                      bls #0x325400
0032548c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325490  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00325494  0c 20 83 e5                                      str r2, [r3, #0xc]
00325498  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032549c  04 00 53 e3                                      cmp r3, #4
003254a0  d6 ff ff 9a                                      bls #0x325400
003254a4  30 30 94 e5                                      ldr r3, [r4, #0x30]
003254a8  10 20 95 e5                                      ldr r2, [r5, #0x10]
003254ac  10 20 83 e5                                      str r2, [r3, #0x10]
003254b0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003254b4  05 00 53 e3                                      cmp r3, #5
003254b8  d0 ff ff 9a                                      bls #0x325400
003254bc  30 30 94 e5                                      ldr r3, [r4, #0x30]
003254c0  14 20 95 e5                                      ldr r2, [r5, #0x14]
003254c4  14 20 83 e5                                      str r2, [r3, #0x14]
003254c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003254cc  06 00 53 e3                                      cmp r3, #6
003254d0  ca ff ff 9a                                      bls #0x325400
003254d4  30 30 94 e5                                      ldr r3, [r4, #0x30]
003254d8  18 20 95 e5                                      ldr r2, [r5, #0x18]
003254dc  18 20 83 e5                                      str r2, [r3, #0x18]
003254e0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003254e4  07 00 53 e3                                      cmp r3, #7
003254e8  c4 ff ff 9a                                      bls #0x325400
003254ec  30 30 94 e5                                      ldr r3, [r4, #0x30]
003254f0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
003254f4  1c 20 83 e5                                      str r2, [r3, #0x1c]
003254f8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003254fc  08 00 53 e3                                      cmp r3, #8
00325500  be ff ff 9a                                      bls #0x325400
00325504  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325508  20 20 95 e5                                      ldr r2, [r5, #0x20]
0032550c  20 20 83 e5                                      str r2, [r3, #0x20]
00325510  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325514  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00325518, declared_size=448, range_size=448, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute14setBoundingBoxENS_4core8aabbox3dIfEE
; demangled: glitch::io::CNumbersAttribute::setBoundingBox(glitch::core::aabbox3d<float>)
; decoder-mode: arm
00325518  70 40 2d e9                                      push {r4, r5, r6, lr}
0032551c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325520  00 40 a0 e1                                      mov r4, r0
00325524  01 50 a0 e1                                      mov r5, r1
00325528  00 00 53 e3                                      cmp r3, #0
0032552c  36 00 00 1a                                      bne #0x32560c
00325530  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325534  00 00 52 e3                                      cmp r2, #0
00325538  03 10 a0 11                                      movne r1, r3
0032553c  64 00 00 0a                                      beq #0x3256d4
00325540  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325544  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325548  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0032554c  01 30 83 e2                                      add r3, r3, #1
00325550  02 00 53 e1                                      cmp r3, r2
00325554  f9 ff ff 3a                                      blo #0x325540
00325558  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0032555c  00 00 53 e3                                      cmp r3, #0
00325560  37 00 00 1a                                      bne #0x325644
00325564  00 00 52 e3                                      cmp r2, #0
00325568  26 00 00 0a                                      beq #0x325608
0032556c  00 00 95 e5                                      ldr r0, [r5]
00325570  d5 a3 ff eb                                      bl #0x30e4cc
00325574  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325578  00 00 83 e5                                      str r0, [r3]
0032557c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325580  01 00 53 e3                                      cmp r3, #1
00325584  1f 00 00 9a                                      bls #0x325608
00325588  04 00 95 e5                                      ldr r0, [r5, #4]
0032558c  ce a3 ff eb                                      bl #0x30e4cc
00325590  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325594  04 00 83 e5                                      str r0, [r3, #4]
00325598  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032559c  02 00 53 e3                                      cmp r3, #2
003255a0  18 00 00 9a                                      bls #0x325608
003255a4  08 00 95 e5                                      ldr r0, [r5, #8]
003255a8  c7 a3 ff eb                                      bl #0x30e4cc
003255ac  24 30 94 e5                                      ldr r3, [r4, #0x24]
003255b0  08 00 83 e5                                      str r0, [r3, #8]
003255b4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003255b8  03 00 53 e3                                      cmp r3, #3
003255bc  11 00 00 9a                                      bls #0x325608
003255c0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
003255c4  c0 a3 ff eb                                      bl #0x30e4cc
003255c8  24 30 94 e5                                      ldr r3, [r4, #0x24]
003255cc  0c 00 83 e5                                      str r0, [r3, #0xc]
003255d0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003255d4  04 00 53 e3                                      cmp r3, #4
003255d8  0a 00 00 9a                                      bls #0x325608
003255dc  10 00 95 e5                                      ldr r0, [r5, #0x10]
003255e0  b9 a3 ff eb                                      bl #0x30e4cc
003255e4  24 30 94 e5                                      ldr r3, [r4, #0x24]
003255e8  10 00 83 e5                                      str r0, [r3, #0x10]
003255ec  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003255f0  05 00 53 e3                                      cmp r3, #5
003255f4  03 00 00 9a                                      bls #0x325608
003255f8  14 00 95 e5                                      ldr r0, [r5, #0x14]
003255fc  b2 a3 ff eb                                      bl #0x30e4cc
00325600  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325604  14 00 83 e5                                      str r0, [r3, #0x14]
00325608  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032560c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00325610  00 00 53 e3                                      cmp r3, #0
00325614  fb ff ff 0a                                      beq #0x325608
00325618  00 10 a0 e3                                      mov r1, #0
0032561c  00 30 a0 e3                                      mov r3, #0
00325620  30 20 94 e5                                      ldr r2, [r4, #0x30]
00325624  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325628  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0032562c  01 30 83 e2                                      add r3, r3, #1
00325630  02 00 53 e1                                      cmp r3, r2
00325634  f9 ff ff 3a                                      blo #0x325620
00325638  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0032563c  00 00 53 e3                                      cmp r3, #0
00325640  c7 ff ff 0a                                      beq #0x325564
00325644  00 00 52 e3                                      cmp r2, #0
00325648  ee ff ff 0a                                      beq #0x325608
0032564c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325650  00 20 95 e5                                      ldr r2, [r5]
00325654  00 20 83 e5                                      str r2, [r3]
00325658  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032565c  01 00 53 e3                                      cmp r3, #1
00325660  e8 ff ff 9a                                      bls #0x325608
00325664  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325668  04 20 95 e5                                      ldr r2, [r5, #4]
0032566c  04 20 83 e5                                      str r2, [r3, #4]
00325670  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325674  02 00 53 e3                                      cmp r3, #2
00325678  e2 ff ff 9a                                      bls #0x325608
0032567c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325680  08 20 95 e5                                      ldr r2, [r5, #8]
00325684  08 20 83 e5                                      str r2, [r3, #8]
00325688  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032568c  03 00 53 e3                                      cmp r3, #3
00325690  dc ff ff 9a                                      bls #0x325608
00325694  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325698  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0032569c  0c 20 83 e5                                      str r2, [r3, #0xc]
003256a0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003256a4  04 00 53 e3                                      cmp r3, #4
003256a8  d6 ff ff 9a                                      bls #0x325608
003256ac  30 30 94 e5                                      ldr r3, [r4, #0x30]
003256b0  10 20 95 e5                                      ldr r2, [r5, #0x10]
003256b4  10 20 83 e5                                      str r2, [r3, #0x10]
003256b8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003256bc  05 00 53 e3                                      cmp r3, #5
003256c0  d0 ff ff 9a                                      bls #0x325608
003256c4  30 30 94 e5                                      ldr r3, [r4, #0x30]
003256c8  14 20 95 e5                                      ldr r2, [r5, #0x14]
003256cc  14 20 83 e5                                      str r2, [r3, #0x14]
003256d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003256d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003256d8, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute8setPlaneENS_4core7plane3dIfEE
; demangled: glitch::io::CNumbersAttribute::setPlane(glitch::core::plane3d<float>)
; decoder-mode: arm
003256d8  70 40 2d e9                                      push {r4, r5, r6, lr}
003256dc  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
003256e0  00 40 a0 e1                                      mov r4, r0
003256e4  01 50 a0 e1                                      mov r5, r1
003256e8  00 00 53 e3                                      cmp r3, #0
003256ec  28 00 00 1a                                      bne #0x325794
003256f0  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
003256f4  00 00 52 e3                                      cmp r2, #0
003256f8  03 10 a0 11                                      movne r1, r3
003256fc  4a 00 00 0a                                      beq #0x32582c
00325700  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325704  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325708  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0032570c  01 30 83 e2                                      add r3, r3, #1
00325710  02 00 53 e1                                      cmp r3, r2
00325714  f9 ff ff 3a                                      blo #0x325700
00325718  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0032571c  00 00 53 e3                                      cmp r3, #0
00325720  29 00 00 1a                                      bne #0x3257cc
00325724  00 00 52 e3                                      cmp r2, #0
00325728  18 00 00 0a                                      beq #0x325790
0032572c  00 00 95 e5                                      ldr r0, [r5]
00325730  65 a3 ff eb                                      bl #0x30e4cc
00325734  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325738  00 00 83 e5                                      str r0, [r3]
0032573c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325740  01 00 53 e3                                      cmp r3, #1
00325744  11 00 00 9a                                      bls #0x325790
00325748  04 00 95 e5                                      ldr r0, [r5, #4]
0032574c  5e a3 ff eb                                      bl #0x30e4cc
00325750  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325754  04 00 83 e5                                      str r0, [r3, #4]
00325758  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032575c  02 00 53 e3                                      cmp r3, #2
00325760  0a 00 00 9a                                      bls #0x325790
00325764  08 00 95 e5                                      ldr r0, [r5, #8]
00325768  57 a3 ff eb                                      bl #0x30e4cc
0032576c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325770  08 00 83 e5                                      str r0, [r3, #8]
00325774  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325778  03 00 53 e3                                      cmp r3, #3
0032577c  03 00 00 9a                                      bls #0x325790
00325780  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00325784  50 a3 ff eb                                      bl #0x30e4cc
00325788  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032578c  0c 00 83 e5                                      str r0, [r3, #0xc]
00325790  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325794  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00325798  00 00 53 e3                                      cmp r3, #0
0032579c  fb ff ff 0a                                      beq #0x325790
003257a0  00 10 a0 e3                                      mov r1, #0
003257a4  00 30 a0 e3                                      mov r3, #0
003257a8  30 20 94 e5                                      ldr r2, [r4, #0x30]
003257ac  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
003257b0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003257b4  01 30 83 e2                                      add r3, r3, #1
003257b8  02 00 53 e1                                      cmp r3, r2
003257bc  f9 ff ff 3a                                      blo #0x3257a8
003257c0  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
003257c4  00 00 53 e3                                      cmp r3, #0
003257c8  d5 ff ff 0a                                      beq #0x325724
003257cc  00 00 52 e3                                      cmp r2, #0
003257d0  ee ff ff 0a                                      beq #0x325790
003257d4  30 30 94 e5                                      ldr r3, [r4, #0x30]
003257d8  00 20 95 e5                                      ldr r2, [r5]
003257dc  00 20 83 e5                                      str r2, [r3]
003257e0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003257e4  01 00 53 e3                                      cmp r3, #1
003257e8  e8 ff ff 9a                                      bls #0x325790
003257ec  30 30 94 e5                                      ldr r3, [r4, #0x30]
003257f0  04 20 95 e5                                      ldr r2, [r5, #4]
003257f4  04 20 83 e5                                      str r2, [r3, #4]
003257f8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003257fc  02 00 53 e3                                      cmp r3, #2
00325800  e2 ff ff 9a                                      bls #0x325790
00325804  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325808  08 20 95 e5                                      ldr r2, [r5, #8]
0032580c  08 20 83 e5                                      str r2, [r3, #8]
00325810  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325814  03 00 53 e3                                      cmp r3, #3
00325818  dc ff ff 9a                                      bls #0x325790
0032581c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325820  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00325824  0c 20 83 e5                                      str r2, [r3, #0xc]
00325828  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032582c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00325830, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute14setDimension2dENS_4core11dimension2dIiEE
; demangled: glitch::io::CNumbersAttribute::setDimension2d(glitch::core::dimension2d<int>)
; decoder-mode: arm
00325830  30 40 2d e9                                      push {r4, r5, lr}
00325834  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325838  0c d0 4d e2                                      sub sp, sp, #0xc
0032583c  00 40 a0 e1                                      mov r4, r0
00325840  00 00 53 e3                                      cmp r3, #0
00325844  02 50 a0 e1                                      mov r5, r2
00325848  16 00 00 1a                                      bne #0x3258a8
0032584c  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325850  00 00 52 e3                                      cmp r2, #0
00325854  03 00 a0 11                                      movne r0, r3
00325858  10 00 00 0a                                      beq #0x3258a0
0032585c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325860  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
00325864  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325868  01 30 83 e2                                      add r3, r3, #1
0032586c  02 00 53 e1                                      cmp r3, r2
00325870  f9 ff ff 3a                                      blo #0x32585c
00325874  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325878  00 00 53 e3                                      cmp r3, #0
0032587c  17 00 00 1a                                      bne #0x3258e0
00325880  00 00 52 e3                                      cmp r2, #0
00325884  05 00 00 0a                                      beq #0x3258a0
00325888  24 30 94 e5                                      ldr r3, [r4, #0x24]
0032588c  00 10 83 e5                                      str r1, [r3]
00325890  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325894  01 00 53 e3                                      cmp r3, #1
00325898  24 30 94 85                                      ldrhi r3, [r4, #0x24]
0032589c  04 50 83 85                                      strhi r5, [r3, #4]
003258a0  0c d0 8d e2                                      add sp, sp, #0xc
003258a4  30 80 bd e8                                      pop {r4, r5, pc}
003258a8  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003258ac  00 00 53 e3                                      cmp r3, #0
003258b0  fa ff ff 0a                                      beq #0x3258a0
003258b4  00 00 a0 e3                                      mov r0, #0
003258b8  00 30 a0 e3                                      mov r3, #0
003258bc  30 20 94 e5                                      ldr r2, [r4, #0x30]
003258c0  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
003258c4  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003258c8  01 30 83 e2                                      add r3, r3, #1
003258cc  02 00 53 e1                                      cmp r3, r2
003258d0  f9 ff ff 3a                                      blo #0x3258bc
003258d4  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
003258d8  00 00 53 e3                                      cmp r3, #0
003258dc  e7 ff ff 0a                                      beq #0x325880
003258e0  00 00 52 e3                                      cmp r2, #0
003258e4  ed ff ff 0a                                      beq #0x3258a0
003258e8  01 00 a0 e1                                      mov r0, r1
003258ec  1c a4 ff eb                                      bl #0x30e964
003258f0  30 30 94 e5                                      ldr r3, [r4, #0x30]
003258f4  00 00 83 e5                                      str r0, [r3]
003258f8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003258fc  01 00 53 e3                                      cmp r3, #1
00325900  e6 ff ff 9a                                      bls #0x3258a0
00325904  05 00 a0 e1                                      mov r0, r5
00325908  15 a4 ff eb                                      bl #0x30e964
0032590c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325910  04 00 83 e5                                      str r0, [r3, #4]
00325914  e1 ff ff ea                                      b #0x3258a0

; FUNCTION 0x00325918, declared_size=340, range_size=340, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9setLine2dENS_4core6line2dIiEE
; demangled: glitch::io::CNumbersAttribute::setLine2d(glitch::core::line2d<int>)
; decoder-mode: arm
00325918  70 40 2d e9                                      push {r4, r5, r6, lr}
0032591c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325920  00 40 a0 e1                                      mov r4, r0
00325924  01 50 a0 e1                                      mov r5, r1
00325928  00 00 53 e3                                      cmp r3, #0
0032592c  23 00 00 1a                                      bne #0x3259c0
00325930  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325934  00 00 52 e3                                      cmp r2, #0
00325938  03 10 a0 11                                      movne r1, r3
0032593c  49 00 00 0a                                      beq #0x325a68
00325940  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325944  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325948  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0032594c  01 30 83 e2                                      add r3, r3, #1
00325950  02 00 53 e1                                      cmp r3, r2
00325954  f9 ff ff 3a                                      blo #0x325940
00325958  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
0032595c  00 00 53 e3                                      cmp r3, #0
00325960  24 00 00 1a                                      bne #0x3259f8
00325964  00 00 52 e3                                      cmp r2, #0
00325968  13 00 00 0a                                      beq #0x3259bc
0032596c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325970  00 20 95 e5                                      ldr r2, [r5]
00325974  00 20 83 e5                                      str r2, [r3]
00325978  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032597c  01 00 53 e3                                      cmp r3, #1
00325980  0d 00 00 9a                                      bls #0x3259bc
00325984  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325988  04 20 95 e5                                      ldr r2, [r5, #4]
0032598c  04 20 83 e5                                      str r2, [r3, #4]
00325990  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325994  02 00 53 e3                                      cmp r3, #2
00325998  07 00 00 9a                                      bls #0x3259bc
0032599c  24 30 94 e5                                      ldr r3, [r4, #0x24]
003259a0  08 20 95 e5                                      ldr r2, [r5, #8]
003259a4  08 20 83 e5                                      str r2, [r3, #8]
003259a8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
003259ac  03 00 53 e3                                      cmp r3, #3
003259b0  24 30 94 85                                      ldrhi r3, [r4, #0x24]
003259b4  0c 20 95 85                                      ldrhi r2, [r5, #0xc]
003259b8  0c 20 83 85                                      strhi r2, [r3, #0xc]
003259bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003259c0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
003259c4  00 00 53 e3                                      cmp r3, #0
003259c8  fb ff ff 0a                                      beq #0x3259bc
003259cc  00 10 a0 e3                                      mov r1, #0
003259d0  00 30 a0 e3                                      mov r3, #0
003259d4  30 20 94 e5                                      ldr r2, [r4, #0x30]
003259d8  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
003259dc  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
003259e0  01 30 83 e2                                      add r3, r3, #1
003259e4  02 00 53 e1                                      cmp r3, r2
003259e8  f9 ff ff 3a                                      blo #0x3259d4
003259ec  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
003259f0  00 00 53 e3                                      cmp r3, #0
003259f4  da ff ff 0a                                      beq #0x325964
003259f8  00 00 52 e3                                      cmp r2, #0
003259fc  ee ff ff 0a                                      beq #0x3259bc
00325a00  00 00 95 e5                                      ldr r0, [r5]
00325a04  d6 a3 ff eb                                      bl #0x30e964
00325a08  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325a0c  00 00 83 e5                                      str r0, [r3]
00325a10  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325a14  01 00 53 e3                                      cmp r3, #1
00325a18  e7 ff ff 9a                                      bls #0x3259bc
00325a1c  04 00 95 e5                                      ldr r0, [r5, #4]
00325a20  cf a3 ff eb                                      bl #0x30e964
00325a24  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325a28  04 00 83 e5                                      str r0, [r3, #4]
00325a2c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325a30  02 00 53 e3                                      cmp r3, #2
00325a34  e0 ff ff 9a                                      bls #0x3259bc
00325a38  08 00 95 e5                                      ldr r0, [r5, #8]
00325a3c  c8 a3 ff eb                                      bl #0x30e964
00325a40  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325a44  08 00 83 e5                                      str r0, [r3, #8]
00325a48  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325a4c  03 00 53 e3                                      cmp r3, #3
00325a50  d9 ff ff 9a                                      bls #0x3259bc
00325a54  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00325a58  c1 a3 ff eb                                      bl #0x30e964
00325a5c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325a60  0c 00 83 e5                                      str r0, [r3, #0xc]
00325a64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325a68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00325a6c, declared_size=344, range_size=344, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9setLine2dENS_4core6line2dIfEE
; demangled: glitch::io::CNumbersAttribute::setLine2d(glitch::core::line2d<float>)
; decoder-mode: arm
00325a6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00325a70  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325a74  00 40 a0 e1                                      mov r4, r0
00325a78  01 50 a0 e1                                      mov r5, r1
00325a7c  00 00 53 e3                                      cmp r3, #0
00325a80  28 00 00 1a                                      bne #0x325b28
00325a84  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325a88  00 00 52 e3                                      cmp r2, #0
00325a8c  03 10 a0 11                                      movne r1, r3
00325a90  4a 00 00 0a                                      beq #0x325bc0
00325a94  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325a98  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325a9c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325aa0  01 30 83 e2                                      add r3, r3, #1
00325aa4  02 00 53 e1                                      cmp r3, r2
00325aa8  f9 ff ff 3a                                      blo #0x325a94
00325aac  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325ab0  00 00 53 e3                                      cmp r3, #0
00325ab4  29 00 00 1a                                      bne #0x325b60
00325ab8  00 00 52 e3                                      cmp r2, #0
00325abc  18 00 00 0a                                      beq #0x325b24
00325ac0  00 00 95 e5                                      ldr r0, [r5]
00325ac4  80 a2 ff eb                                      bl #0x30e4cc
00325ac8  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325acc  00 00 83 e5                                      str r0, [r3]
00325ad0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325ad4  01 00 53 e3                                      cmp r3, #1
00325ad8  11 00 00 9a                                      bls #0x325b24
00325adc  04 00 95 e5                                      ldr r0, [r5, #4]
00325ae0  79 a2 ff eb                                      bl #0x30e4cc
00325ae4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325ae8  04 00 83 e5                                      str r0, [r3, #4]
00325aec  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325af0  02 00 53 e3                                      cmp r3, #2
00325af4  0a 00 00 9a                                      bls #0x325b24
00325af8  08 00 95 e5                                      ldr r0, [r5, #8]
00325afc  72 a2 ff eb                                      bl #0x30e4cc
00325b00  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325b04  08 00 83 e5                                      str r0, [r3, #8]
00325b08  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325b0c  03 00 53 e3                                      cmp r3, #3
00325b10  03 00 00 9a                                      bls #0x325b24
00325b14  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00325b18  6b a2 ff eb                                      bl #0x30e4cc
00325b1c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00325b20  0c 00 83 e5                                      str r0, [r3, #0xc]
00325b24  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325b28  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00325b2c  00 00 53 e3                                      cmp r3, #0
00325b30  fb ff ff 0a                                      beq #0x325b24
00325b34  00 10 a0 e3                                      mov r1, #0
00325b38  00 30 a0 e3                                      mov r3, #0
00325b3c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00325b40  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325b44  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325b48  01 30 83 e2                                      add r3, r3, #1
00325b4c  02 00 53 e1                                      cmp r3, r2
00325b50  f9 ff ff 3a                                      blo #0x325b3c
00325b54  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325b58  00 00 53 e3                                      cmp r3, #0
00325b5c  d5 ff ff 0a                                      beq #0x325ab8
00325b60  00 00 52 e3                                      cmp r2, #0
00325b64  ee ff ff 0a                                      beq #0x325b24
00325b68  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325b6c  00 20 95 e5                                      ldr r2, [r5]
00325b70  00 20 83 e5                                      str r2, [r3]
00325b74  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325b78  01 00 53 e3                                      cmp r3, #1
00325b7c  e8 ff ff 9a                                      bls #0x325b24
00325b80  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325b84  04 20 95 e5                                      ldr r2, [r5, #4]
00325b88  04 20 83 e5                                      str r2, [r3, #4]
00325b8c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325b90  02 00 53 e3                                      cmp r3, #2
00325b94  e2 ff ff 9a                                      bls #0x325b24
00325b98  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325b9c  08 20 95 e5                                      ldr r2, [r5, #8]
00325ba0  08 20 83 e5                                      str r2, [r3, #8]
00325ba4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00325ba8  03 00 53 e3                                      cmp r3, #3
00325bac  dc ff ff 9a                                      bls #0x325b24
00325bb0  30 30 94 e5                                      ldr r3, [r4, #0x30]
00325bb4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00325bb8  0c 20 83 e5                                      str r2, [r3, #0xc]
00325bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00325bc0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00325bc4, declared_size=356, range_size=356, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9setMatrixENS_4core8CMatrix4IfEE
; demangled: glitch::io::CNumbersAttribute::setMatrix(glitch::core::CMatrix4<float>)
; decoder-mode: arm
00325bc4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00325bc8  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00325bcc  00 40 a0 e1                                      mov r4, r0
00325bd0  01 80 a0 e1                                      mov r8, r1
00325bd4  00 00 53 e3                                      cmp r3, #0
00325bd8  2c 00 00 1a                                      bne #0x325c90
00325bdc  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325be0  00 00 52 e3                                      cmp r2, #0
00325be4  03 10 a0 11                                      movne r1, r3
00325be8  08 00 00 0a                                      beq #0x325c10
00325bec  24 20 94 e5                                      ldr r2, [r4, #0x24]
00325bf0  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325bf4  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325bf8  01 30 83 e2                                      add r3, r3, #1
00325bfc  02 00 53 e1                                      cmp r3, r2
00325c00  f9 ff ff 3a                                      blo #0x325bec
00325c04  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325c08  00 00 53 e3                                      cmp r3, #0
00325c0c  22 00 00 1a                                      bne #0x325c9c
00325c10  00 70 a0 e3                                      mov r7, #0
00325c14  07 a0 a0 e1                                      mov sl, r7
00325c18  00 50 a0 e3                                      mov r5, #0
00325c1c  05 30 87 e0                                      add r3, r7, r5
00325c20  02 00 53 e1                                      cmp r3, r2
00325c24  0a 60 a0 e1                                      mov r6, sl
00325c28  0a b0 88 e0                                      add fp, r8, sl
00325c2c  05 00 00 2a                                      bhs #0x325c48
00325c30  00 30 a0 e3                                      mov r3, #0
00325c34  24 90 94 e5                                      ldr sb, [r4, #0x24]
00325c38  40 30 c8 e5                                      strb r3, [r8, #0x40]
00325c3c  05 01 9b e7                                      ldr r0, [fp, r5, lsl #2]
00325c40  21 a2 ff eb                                      bl #0x30e4cc
00325c44  06 00 89 e7                                      str r0, [sb, r6]
00325c48  01 50 85 e2                                      add r5, r5, #1
00325c4c  04 00 55 e3                                      cmp r5, #4
00325c50  04 60 86 e2                                      add r6, r6, #4
00325c54  07 00 00 0a                                      beq #0x325c78
00325c58  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325c5c  05 30 87 e0                                      add r3, r7, r5
00325c60  02 00 53 e1                                      cmp r3, r2
00325c64  f1 ff ff 3a                                      blo #0x325c30
00325c68  01 50 85 e2                                      add r5, r5, #1
00325c6c  04 00 55 e3                                      cmp r5, #4
00325c70  04 60 86 e2                                      add r6, r6, #4
00325c74  f7 ff ff 1a                                      bne #0x325c58
00325c78  10 a0 8a e2                                      add sl, sl, #0x10
00325c7c  40 00 5a e3                                      cmp sl, #0x40
00325c80  04 70 87 e2                                      add r7, r7, #4
00325c84  1a 00 00 0a                                      beq #0x325cf4
00325c88  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325c8c  e1 ff ff ea                                      b #0x325c18
00325c90  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00325c94  00 00 52 e3                                      cmp r2, #0
00325c98  16 00 00 1a                                      bne #0x325cf8
00325c9c  00 c0 a0 e3                                      mov ip, #0
00325ca0  0c 50 a0 e1                                      mov r5, ip
00325ca4  0c 70 a0 e1                                      mov r7, ip
00325ca8  05 10 a0 e1                                      mov r1, r5
00325cac  00 30 a0 e3                                      mov r3, #0
00325cb0  05 60 88 e0                                      add r6, r8, r5
00325cb4  03 00 8c e0                                      add r0, ip, r3
00325cb8  02 00 50 e1                                      cmp r0, r2
00325cbc  30 20 94 35                                      ldrlo r2, [r4, #0x30]
00325cc0  40 70 c8 35                                      strblo r7, [r8, #0x40]
00325cc4  03 01 96 37                                      ldrlo r0, [r6, r3, lsl #2]
00325cc8  01 30 83 e2                                      add r3, r3, #1
00325ccc  01 00 82 37                                      strlo r0, [r2, r1]
00325cd0  04 00 53 e3                                      cmp r3, #4
00325cd4  04 10 81 e2                                      add r1, r1, #4
00325cd8  3c 20 94 15                                      ldrne r2, [r4, #0x3c]
00325cdc  f4 ff ff 1a                                      bne #0x325cb4
00325ce0  10 50 85 e2                                      add r5, r5, #0x10
00325ce4  40 00 55 e3                                      cmp r5, #0x40
00325ce8  04 c0 8c e2                                      add ip, ip, #4
00325cec  3c 20 94 15                                      ldrne r2, [r4, #0x3c]
00325cf0  ec ff ff 1a                                      bne #0x325ca8
00325cf4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00325cf8  00 10 a0 e3                                      mov r1, #0
00325cfc  00 30 a0 e3                                      mov r3, #0
00325d00  30 20 94 e5                                      ldr r2, [r4, #0x30]
00325d04  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00325d08  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00325d0c  01 30 83 e2                                      add r3, r3, #1
00325d10  02 00 53 e1                                      cmp r3, r2
00325d14  f9 ff ff 3a                                      blo #0x325d00
00325d18  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00325d1c  00 00 53 e3                                      cmp r3, #0
00325d20  ba ff ff 0a                                      beq #0x325c10
00325d24  dc ff ff ea                                      b #0x325c9c

; FUNCTION 0x003264c4, declared_size=196, range_size=196, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute13getFloatArrayEv
; demangled: glitch::io::CNumbersAttribute::getFloatArray()
; decoder-mode: arm
003264c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003264c8  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
003264cc  08 d0 4d e2                                      sub sp, sp, #8
003264d0  01 40 a0 e1                                      mov r4, r1
003264d4  00 00 53 e3                                      cmp r3, #0
003264d8  00 60 a0 e1                                      mov r6, r0
003264dc  27 00 00 1a                                      bne #0x326580
003264e0  30 30 91 e5                                      ldr r3, [r1, #0x30]
003264e4  34 20 91 e5                                      ldr r2, [r1, #0x34]
003264e8  02 00 53 e1                                      cmp r3, r2
003264ec  34 30 81 15                                      strne r3, [r1, #0x34]
003264f0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
003264f4  00 00 53 e3                                      cmp r3, #0
003264f8  20 00 00 0a                                      beq #0x326580
003264fc  30 70 81 e2                                      add r7, r1, #0x30
00326500  00 50 a0 e3                                      mov r5, #0
00326504  04 80 8d e2                                      add r8, sp, #4
00326508  07 00 00 ea                                      b #0x32652c
0032650c  00 00 81 e5                                      str r0, [r1]
00326510  34 30 94 e5                                      ldr r3, [r4, #0x34]
00326514  01 50 85 e2                                      add r5, r5, #1
00326518  04 30 83 e2                                      add r3, r3, #4
0032651c  34 30 84 e5                                      str r3, [r4, #0x34]
00326520  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00326524  05 00 53 e1                                      cmp r3, r5
00326528  0e 00 00 9a                                      bls #0x326568
0032652c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00326530  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00326534  0a a1 ff eb                                      bl #0x30e964
00326538  34 10 94 e5                                      ldr r1, [r4, #0x34]
0032653c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00326540  04 00 8d e5                                      str r0, [sp, #4]
00326544  03 00 51 e1                                      cmp r1, r3
00326548  ef ff ff 1a                                      bne #0x32650c
0032654c  07 00 a0 e1                                      mov r0, r7
00326550  08 20 a0 e1                                      mov r2, r8
00326554  10 fe ff eb                                      bl #0x325d9c
00326558  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0032655c  01 50 85 e2                                      add r5, r5, #1
00326560  05 00 53 e1                                      cmp r3, r5
00326564  f0 ff ff 8a                                      bhi #0x32652c
00326568  07 10 a0 e1                                      mov r1, r7
0032656c  06 00 a0 e1                                      mov r0, r6
00326570  06 ff ff eb                                      bl #0x326190
00326574  06 00 a0 e1                                      mov r0, r6
00326578  08 d0 8d e2                                      add sp, sp, #8
0032657c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00326580  30 70 84 e2                                      add r7, r4, #0x30
00326584  f7 ff ff ea                                      b #0x326568

; FUNCTION 0x0032675c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeD1Ev
; demangled: glitch::io::CNumbersAttribute::~CNumbersAttribute()
; decoder-mode: arm
0032675c  70 40 2d e9                                      push {r4, r5, r6, lr}
00326760  68 50 9f e5                                      ldr r5, [pc, #0x68]
00326764  68 30 9f e5                                      ldr r3, [pc, #0x68]
00326768  00 40 a0 e1                                      mov r4, r0
0032676c  05 50 8f e0                                      add r5, pc, r5
00326770  30 00 90 e5                                      ldr r0, [r0, #0x30]
00326774  03 30 95 e7                                      ldr r3, [r5, r3]
00326778  00 00 50 e3                                      cmp r0, #0
0032677c  08 30 83 e2                                      add r3, r3, #8
00326780  00 30 84 e5                                      str r3, [r4]
00326784  00 00 00 0a                                      beq #0x32678c
00326788  30 a7 ff eb                                      bl #0x310450
0032678c  24 00 94 e5                                      ldr r0, [r4, #0x24]
00326790  00 00 50 e3                                      cmp r0, #0
00326794  00 00 00 0a                                      beq #0x32679c
00326798  2c a7 ff eb                                      bl #0x310450
0032679c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003267a0  04 30 a0 e1                                      mov r3, r4
003267a4  02 20 95 e7                                      ldr r2, [r5, r2]
003267a8  08 20 82 e2                                      add r2, r2, #8
003267ac  08 20 83 e4                                      str r2, [r3], #8
003267b0  14 00 93 e5                                      ldr r0, [r3, #0x14]
003267b4  03 00 50 e1                                      cmp r0, r3
003267b8  02 00 00 0a                                      beq #0x3267c8
003267bc  00 00 50 e3                                      cmp r0, #0
003267c0  00 00 00 0a                                      beq #0x3267c8
003267c4  21 a7 ff eb                                      bl #0x310450
003267c8  04 00 a0 e1                                      mov r0, r4
003267cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003267d0  24 e3 66 00 18 21 00 00 44 2c 00 00              .byte 0x24, 0xe3, 0x66, 0x00, 0x18, 0x21, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x003267dc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeD0Ev
; demangled: glitch::io::CNumbersAttribute::~CNumbersAttribute()
; decoder-mode: arm
003267dc  10 40 2d e9                                      push {r4, lr}
003267e0  00 40 a0 e1                                      mov r4, r0
003267e4  dc ff ff eb                                      bl #0x32675c
003267e8  04 00 a0 e1                                      mov r0, r4
003267ec  13 a7 ff eb                                      bl #0x310440
003267f0  04 00 a0 e1                                      mov r0, r4
003267f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003267f8, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeD2Ev
; demangled: glitch::io::CNumbersAttribute::~CNumbersAttribute()
; decoder-mode: arm
003267f8  70 40 2d e9                                      push {r4, r5, r6, lr}
003267fc  68 50 9f e5                                      ldr r5, [pc, #0x68]
00326800  68 30 9f e5                                      ldr r3, [pc, #0x68]
00326804  00 40 a0 e1                                      mov r4, r0
00326808  05 50 8f e0                                      add r5, pc, r5
0032680c  30 00 90 e5                                      ldr r0, [r0, #0x30]
00326810  03 30 95 e7                                      ldr r3, [r5, r3]
00326814  00 00 50 e3                                      cmp r0, #0
00326818  08 30 83 e2                                      add r3, r3, #8
0032681c  00 30 84 e5                                      str r3, [r4]
00326820  00 00 00 0a                                      beq #0x326828
00326824  09 a7 ff eb                                      bl #0x310450
00326828  24 00 94 e5                                      ldr r0, [r4, #0x24]
0032682c  00 00 50 e3                                      cmp r0, #0
00326830  00 00 00 0a                                      beq #0x326838
00326834  05 a7 ff eb                                      bl #0x310450
00326838  34 20 9f e5                                      ldr r2, [pc, #0x34]
0032683c  04 30 a0 e1                                      mov r3, r4
00326840  02 20 95 e7                                      ldr r2, [r5, r2]
00326844  08 20 82 e2                                      add r2, r2, #8
00326848  08 20 83 e4                                      str r2, [r3], #8
0032684c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00326850  03 00 50 e1                                      cmp r0, r3
00326854  02 00 00 0a                                      beq #0x326864
00326858  00 00 50 e3                                      cmp r0, #0
0032685c  00 00 00 0a                                      beq #0x326864
00326860  fa a6 ff eb                                      bl #0x310450
00326864  04 00 a0 e1                                      mov r0, r4
00326868  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0032686c  88 e2 66 00 18 21 00 00 44 2c 00 00              .byte 0x88, 0xe2, 0x66, 0x00, 0x18, 0x21, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00326af4, declared_size=252, range_size=252, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9getMatrixEv
; demangled: glitch::io::CNumbersAttribute::getMatrix()
; decoder-mode: arm
00326af4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00326af8  00 60 a0 e3                                      mov r6, #0
00326afc  01 40 a0 e1                                      mov r4, r1
00326b00  40 20 a0 e3                                      mov r2, #0x40
00326b04  40 60 c0 e5                                      strb r6, [r0, #0x40]
00326b08  06 10 a0 e1                                      mov r1, r6
00326b0c  00 50 a0 e1                                      mov r5, r0
00326b10  52 9e ff eb                                      bl #0x30e460
00326b14  fe 35 a0 e3                                      mov r3, #0x3f800000
00326b18  01 20 a0 e3                                      mov r2, #1
00326b1c  40 20 c5 e5                                      strb r2, [r5, #0x40]
00326b20  3c 30 85 e5                                      str r3, [r5, #0x3c]
00326b24  00 30 85 e5                                      str r3, [r5]
00326b28  14 30 85 e5                                      str r3, [r5, #0x14]
00326b2c  28 30 85 e5                                      str r3, [r5, #0x28]
00326b30  40 80 d4 e5                                      ldrb r8, [r4, #0x40]
00326b34  06 00 58 e1                                      cmp r8, r6
00326b38  08 a0 a0 01                                      moveq sl, r8
00326b3c  08 b0 a0 01                                      moveq fp, r8
00326b40  06 c0 a0 11                                      movne ip, r6
00326b44  06 80 a0 11                                      movne r8, r6
00326b48  17 00 00 0a                                      beq #0x326bac
00326b4c  0c 20 a0 e1                                      mov r2, ip
00326b50  00 30 a0 e3                                      mov r3, #0
00326b54  0c 70 85 e0                                      add r7, r5, ip
00326b58  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00326b5c  03 10 86 e0                                      add r1, r6, r3
00326b60  01 00 50 e1                                      cmp r0, r1
00326b64  40 80 c5 85                                      strbhi r8, [r5, #0x40]
00326b68  30 10 94 85                                      ldrhi r1, [r4, #0x30]
00326b6c  02 10 91 87                                      ldrhi r1, [r1, r2]
00326b70  04 20 82 e2                                      add r2, r2, #4
00326b74  03 11 87 87                                      strhi r1, [r7, r3, lsl #2]
00326b78  01 30 83 e2                                      add r3, r3, #1
00326b7c  04 00 53 e3                                      cmp r3, #4
00326b80  f4 ff ff 1a                                      bne #0x326b58
00326b84  10 c0 8c e2                                      add ip, ip, #0x10
00326b88  40 00 5c e3                                      cmp ip, #0x40
00326b8c  04 60 86 e2                                      add r6, r6, #4
00326b90  ed ff ff 1a                                      bne #0x326b4c
00326b94  05 00 a0 e1                                      mov r0, r5
00326b98  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00326b9c  10 a0 8a e2                                      add sl, sl, #0x10
00326ba0  40 00 5a e3                                      cmp sl, #0x40
00326ba4  04 80 88 e2                                      add r8, r8, #4
00326ba8  f9 ff ff 0a                                      beq #0x326b94
00326bac  0a 70 a0 e1                                      mov r7, sl
00326bb0  00 60 a0 e3                                      mov r6, #0
00326bb4  0a 90 85 e0                                      add sb, r5, sl
00326bb8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00326bbc  06 20 88 e0                                      add r2, r8, r6
00326bc0  03 00 52 e1                                      cmp r2, r3
00326bc4  04 00 00 2a                                      bhs #0x326bdc
00326bc8  40 b0 c5 e5                                      strb fp, [r5, #0x40]
00326bcc  24 30 94 e5                                      ldr r3, [r4, #0x24]
00326bd0  07 00 93 e7                                      ldr r0, [r3, r7]
00326bd4  62 9f ff eb                                      bl #0x30e964
00326bd8  06 01 89 e7                                      str r0, [sb, r6, lsl #2]
00326bdc  01 60 86 e2                                      add r6, r6, #1
00326be0  04 00 56 e3                                      cmp r6, #4
00326be4  04 70 87 e2                                      add r7, r7, #4
00326be8  f2 ff ff 1a                                      bne #0x326bb8
00326bec  ea ff ff ea                                      b #0x326b9c

; FUNCTION 0x003270d8, declared_size=268, range_size=268, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute11getIntArrayEv
; demangled: glitch::io::CNumbersAttribute::getIntArray()
; decoder-mode: arm
003270d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003270dc  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
003270e0  01 40 a0 e1                                      mov r4, r1
003270e4  00 70 a0 e1                                      mov r7, r0
003270e8  00 00 53 e3                                      cmp r3, #0
003270ec  17 00 00 0a                                      beq #0x327150
003270f0  24 30 91 e5                                      ldr r3, [r1, #0x24]
003270f4  28 20 91 e5                                      ldr r2, [r1, #0x28]
003270f8  02 00 53 e1                                      cmp r3, r2
003270fc  28 30 81 15                                      strne r3, [r1, #0x28]
00327100  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
00327104  00 00 53 e3                                      cmp r3, #0
00327108  10 00 00 0a                                      beq #0x327150
0032710c  00 50 a0 e3                                      mov r5, #0
00327110  30 30 94 e5                                      ldr r3, [r4, #0x30]
00327114  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00327118  eb 9c ff eb                                      bl #0x30e4cc
0032711c  28 a0 94 e5                                      ldr sl, [r4, #0x28]
00327120  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00327124  00 60 a0 e1                                      mov r6, r0
00327128  03 00 5a e1                                      cmp sl, r3
0032712c  0c 00 00 0a                                      beq #0x327164
00327130  00 00 8a e5                                      str r0, [sl]
00327134  28 30 94 e5                                      ldr r3, [r4, #0x28]
00327138  04 30 83 e2                                      add r3, r3, #4
0032713c  28 30 84 e5                                      str r3, [r4, #0x28]
00327140  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00327144  01 50 85 e2                                      add r5, r5, #1
00327148  05 00 53 e1                                      cmp r3, r5
0032714c  ef ff ff 8a                                      bhi #0x327110
00327150  24 10 84 e2                                      add r1, r4, #0x24
00327154  07 00 a0 e1                                      mov r0, r7
00327158  f1 fb ff eb                                      bl #0x326124
0032715c  07 00 a0 e1                                      mov r0, r7
00327160  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00327164  24 30 94 e5                                      ldr r3, [r4, #0x24]
00327168  0a 30 63 e0                                      rsb r3, r3, sl
0032716c  43 31 a0 e1                                      asr r3, r3, #2
00327170  01 00 53 e3                                      cmp r3, #1
00327174  03 90 83 20                                      addhs sb, r3, r3
00327178  01 90 83 32                                      addlo sb, r3, #1
0032717c  07 01 79 e3                                      cmn sb, #0xc0000001
00327180  15 00 00 8a                                      bhi #0x3271dc
00327184  09 00 53 e1                                      cmp r3, sb
00327188  09 91 a0 91                                      lslls sb, sb, #2
0032718c  12 00 00 8a                                      bhi #0x3271dc
00327190  00 10 a0 e3                                      mov r1, #0
00327194  09 00 a0 e1                                      mov r0, sb
00327198  f2 a4 ff eb                                      bl #0x310568
0032719c  24 10 94 e5                                      ldr r1, [r4, #0x24]
003271a0  00 80 a0 e1                                      mov r8, r0
003271a4  01 a0 5a e0                                      subs sl, sl, r1
003271a8  00 a0 a0 01                                      moveq sl, r0
003271ac  02 00 00 0a                                      beq #0x3271bc
003271b0  0a 20 a0 e1                                      mov r2, sl
003271b4  5f 9b ff eb                                      bl #0x30df38
003271b8  0a a0 80 e0                                      add sl, r0, sl
003271bc  04 60 8a e4                                      str r6, [sl], #4
003271c0  24 00 94 e5                                      ldr r0, [r4, #0x24]
003271c4  09 90 88 e0                                      add sb, r8, sb
003271c8  a0 a4 ff eb                                      bl #0x310450
003271cc  28 a0 84 e5                                      str sl, [r4, #0x28]
003271d0  2c 90 84 e5                                      str sb, [r4, #0x2c]
003271d4  24 80 84 e5                                      str r8, [r4, #0x24]
003271d8  d8 ff ff ea                                      b #0x327140
003271dc  03 90 e0 e3                                      mvn sb, #3
003271e0  ea ff ff ea                                      b #0x327190

; FUNCTION 0x00327554, declared_size=420, range_size=420, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_5video7SColorfEb.clone.16
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::video::SColorf const&, bool) [clone .clone.16]
; decoder-mode: arm
00327554  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00327558  88 71 9f e5                                      ldr r7, [pc, #0x188]
0032755c  88 31 9f e5                                      ldr r3, [pc, #0x188]
00327560  00 60 a0 e1                                      mov r6, r0
00327564  07 70 8f e0                                      add r7, pc, r7
00327568  03 30 97 e7                                      ldr r3, [r7, r3]
0032756c  01 80 a0 e3                                      mov r8, #1
00327570  04 80 80 e5                                      str r8, [r0, #4]
00327574  08 30 83 e2                                      add r3, r3, #8
00327578  08 30 86 e4                                      str r3, [r6], #8
0032757c  00 40 a0 e1                                      mov r4, r0
00327580  18 60 80 e5                                      str r6, [r0, #0x18]
00327584  1c 60 80 e5                                      str r6, [r0, #0x1c]
00327588  01 50 a0 e1                                      mov r5, r1
0032758c  06 00 a0 e1                                      mov r0, r6
00327590  10 10 a0 e3                                      mov r1, #0x10
00327594  03 e5 ff eb                                      bl #0x3209a8
00327598  50 31 9f e5                                      ldr r3, [pc, #0x150]
0032759c  18 00 94 e5                                      ldr r0, [r4, #0x18]
003275a0  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
003275a4  03 30 97 e7                                      ldr r3, [r7, r3]
003275a8  01 10 8f e0                                      add r1, pc, r1
003275ac  08 20 83 e2                                      add r2, r3, #8
003275b0  00 30 a0 e3                                      mov r3, #0
003275b4  00 30 c0 e5                                      strb r3, [r0]
003275b8  00 20 84 e5                                      str r2, [r4]
003275bc  04 20 a0 e3                                      mov r2, #4
003275c0  38 30 84 e5                                      str r3, [r4, #0x38]
003275c4  3c 20 84 e5                                      str r2, [r4, #0x3c]
003275c8  20 30 c4 e5                                      strb r3, [r4, #0x20]
003275cc  24 30 84 e5                                      str r3, [r4, #0x24]
003275d0  28 30 84 e5                                      str r3, [r4, #0x28]
003275d4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003275d8  30 30 84 e5                                      str r3, [r4, #0x30]
003275dc  34 30 84 e5                                      str r3, [r4, #0x34]
003275e0  06 00 a0 e1                                      mov r0, r6
003275e4  01 20 a0 e1                                      mov r2, r1
003275e8  40 80 c4 e5                                      strb r8, [r4, #0x40]
003275ec  65 e5 ff eb                                      bl #0x320b88
003275f0  34 10 94 e5                                      ldr r1, [r4, #0x34]
003275f4  38 30 94 e5                                      ldr r3, [r4, #0x38]
003275f8  30 60 84 e2                                      add r6, r4, #0x30
003275fc  03 00 51 e1                                      cmp r1, r3
00327600  1e 00 00 0a                                      beq #0x327680
00327604  00 30 95 e5                                      ldr r3, [r5]
00327608  00 30 81 e5                                      str r3, [r1]
0032760c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00327610  38 30 94 e5                                      ldr r3, [r4, #0x38]
00327614  04 10 81 e2                                      add r1, r1, #4
00327618  01 00 53 e1                                      cmp r3, r1
0032761c  34 10 84 e5                                      str r1, [r4, #0x34]
00327620  1d 00 00 0a                                      beq #0x32769c
00327624  04 30 95 e5                                      ldr r3, [r5, #4]
00327628  00 30 81 e5                                      str r3, [r1]
0032762c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00327630  38 30 94 e5                                      ldr r3, [r4, #0x38]
00327634  04 10 81 e2                                      add r1, r1, #4
00327638  01 00 53 e1                                      cmp r3, r1
0032763c  34 10 84 e5                                      str r1, [r4, #0x34]
00327640  1c 00 00 0a                                      beq #0x3276b8
00327644  08 30 95 e5                                      ldr r3, [r5, #8]
00327648  00 30 81 e5                                      str r3, [r1]
0032764c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00327650  38 30 94 e5                                      ldr r3, [r4, #0x38]
00327654  04 10 81 e2                                      add r1, r1, #4
00327658  01 00 53 e1                                      cmp r3, r1
0032765c  34 10 84 e5                                      str r1, [r4, #0x34]
00327660  1b 00 00 0a                                      beq #0x3276d4
00327664  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00327668  04 00 a0 e1                                      mov r0, r4
0032766c  00 30 81 e5                                      str r3, [r1]
00327670  34 30 94 e5                                      ldr r3, [r4, #0x34]
00327674  04 30 83 e2                                      add r3, r3, #4
00327678  34 30 84 e5                                      str r3, [r4, #0x34]
0032767c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00327680  06 00 a0 e1                                      mov r0, r6
00327684  05 20 a0 e1                                      mov r2, r5
00327688  c3 f9 ff eb                                      bl #0x325d9c
0032768c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00327690  38 30 94 e5                                      ldr r3, [r4, #0x38]
00327694  01 00 53 e1                                      cmp r3, r1
00327698  e1 ff ff 1a                                      bne #0x327624
0032769c  06 00 a0 e1                                      mov r0, r6
003276a0  04 20 85 e2                                      add r2, r5, #4
003276a4  bc f9 ff eb                                      bl #0x325d9c
003276a8  34 10 94 e5                                      ldr r1, [r4, #0x34]
003276ac  38 30 94 e5                                      ldr r3, [r4, #0x38]
003276b0  01 00 53 e1                                      cmp r3, r1
003276b4  e2 ff ff 1a                                      bne #0x327644
003276b8  06 00 a0 e1                                      mov r0, r6
003276bc  08 20 85 e2                                      add r2, r5, #8
003276c0  b5 f9 ff eb                                      bl #0x325d9c
003276c4  34 10 94 e5                                      ldr r1, [r4, #0x34]
003276c8  38 30 94 e5                                      ldr r3, [r4, #0x38]
003276cc  01 00 53 e1                                      cmp r3, r1
003276d0  e3 ff ff 1a                                      bne #0x327664
003276d4  06 00 a0 e1                                      mov r0, r6
003276d8  0c 20 85 e2                                      add r2, r5, #0xc
003276dc  ae f9 ff eb                                      bl #0x325d9c
003276e0  04 00 a0 e1                                      mov r0, r4
003276e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003276e8  2c d5 66 00 44 2c 00 00 18 21 00 00 60 42 5a 00  .byte 0x2c, 0xd5, 0x66, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00, 0x60, 0x42, 0x5a, 0x00

; FUNCTION 0x0032d220, declared_size=436, range_size=436, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute9getStringEv
; demangled: glitch::io::CNumbersAttribute::getString()
; decoder-mode: arm
0032d220  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032d224  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
0032d228  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
0032d22c  e4 d0 4d e2                                      sub sp, sp, #0xe4
0032d230  02 20 8f e0                                      add r2, pc, r2
0032d234  14 30 8d e5                                      str r3, [sp, #0x14]
0032d238  03 30 92 e7                                      ldr r3, [r2, r3]
0032d23c  00 70 a0 e1                                      mov r7, r0
0032d240  08 20 8d e5                                      str r2, [sp, #8]
0032d244  00 30 93 e5                                      ldr r3, [r3]
0032d248  01 50 a0 e1                                      mov r5, r1
0032d24c  10 00 87 e5                                      str r0, [r7, #0x10]
0032d250  14 00 87 e5                                      str r0, [r7, #0x14]
0032d254  10 10 a0 e3                                      mov r1, #0x10
0032d258  dc 30 8d e5                                      str r3, [sp, #0xdc]
0032d25c  d1 cd ff eb                                      bl #0x3209a8
0032d260  10 30 97 e5                                      ldr r3, [r7, #0x10]
0032d264  00 60 a0 e3                                      mov r6, #0
0032d268  00 60 c3 e5                                      strb r6, [r3]
0032d26c  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d270  06 00 53 e1                                      cmp r3, r6
0032d274  48 00 00 0a                                      beq #0x32d39c
0032d278  50 31 9f e5                                      ldr r3, [pc, #0x150]
0032d27c  1c 80 8d e2                                      add r8, sp, #0x1c
0032d280  06 40 a0 e1                                      mov r4, r6
0032d284  03 30 8f e0                                      add r3, pc, r3
0032d288  02 c0 83 e2                                      add ip, r3, #2
0032d28c  0c 30 8d e5                                      str r3, [sp, #0xc]
0032d290  ac a0 8d e2                                      add sl, sp, #0xac
0032d294  c4 90 8d e2                                      add sb, sp, #0xc4
0032d298  28 b0 88 e2                                      add fp, r8, #0x28
0032d29c  10 c0 8d e5                                      str ip, [sp, #0x10]
0032d2a0  1f 00 00 ea                                      b #0x32d324
0032d2a4  08 00 a0 e1                                      mov r0, r8
0032d2a8  b0 ff ff eb                                      bl #0x32d170
0032d2ac  30 30 95 e5                                      ldr r3, [r5, #0x30]
0032d2b0  06 00 93 e7                                      ldr r0, [r3, r6]
0032d2b4  7a 85 ff eb                                      bl #0x30e8a4
0032d2b8  01 30 a0 e1                                      mov r3, r1
0032d2bc  00 20 a0 e1                                      mov r2, r0
0032d2c0  08 00 a0 e1                                      mov r0, r8
0032d2c4  c3 88 ff eb                                      bl #0x30f5d8
0032d2c8  0b 10 a0 e1                                      mov r1, fp
0032d2cc  09 00 a0 e1                                      mov r0, sb
0032d2d0  90 f9 ff eb                                      bl #0x32b918
0032d2d4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
0032d2d8  01 00 a0 e1                                      mov r0, r1
0032d2dc  04 10 8d e5                                      str r1, [sp, #4]
0032d2e0  db 82 ff eb                                      bl #0x30de54
0032d2e4  04 10 9d e5                                      ldr r1, [sp, #4]
0032d2e8  00 20 81 e0                                      add r2, r1, r0
0032d2ec  07 00 a0 e1                                      mov r0, r7
0032d2f0  d5 cd ff eb                                      bl #0x320a4c
0032d2f4  09 00 a0 e1                                      mov r0, sb
0032d2f8  ab 99 ff eb                                      bl #0x3139ac
0032d2fc  08 00 a0 e1                                      mov r0, r8
0032d300  f7 d6 ff eb                                      bl #0x322ee4
0032d304  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d308  01 20 43 e2                                      sub r2, r3, #1
0032d30c  04 00 52 e1                                      cmp r2, r4
0032d310  18 00 00 8a                                      bhi #0x32d378
0032d314  01 40 84 e2                                      add r4, r4, #1
0032d318  03 00 54 e1                                      cmp r4, r3
0032d31c  04 60 86 e2                                      add r6, r6, #4
0032d320  1d 00 00 2a                                      bhs #0x32d39c
0032d324  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
0032d328  00 00 53 e3                                      cmp r3, #0
0032d32c  dc ff ff 1a                                      bne #0x32d2a4
0032d330  24 30 95 e5                                      ldr r3, [r5, #0x24]
0032d334  0a 00 a0 e1                                      mov r0, sl
0032d338  06 10 93 e7                                      ldr r1, [r3, r6]
0032d33c  4b e3 ff eb                                      bl #0x326070
0032d340  07 00 a0 e1                                      mov r0, r7
0032d344  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0032d348  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0032d34c  be cd ff eb                                      bl #0x320a4c
0032d350  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
0032d354  0a 00 50 e1                                      cmp r0, sl
0032d358  e9 ff ff 0a                                      beq #0x32d304
0032d35c  00 00 50 e3                                      cmp r0, #0
0032d360  e7 ff ff 0a                                      beq #0x32d304
0032d364  39 8c ff eb                                      bl #0x310450
0032d368  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d36c  01 20 43 e2                                      sub r2, r3, #1
0032d370  04 00 52 e1                                      cmp r2, r4
0032d374  e6 ff ff 9a                                      bls #0x32d314
0032d378  07 00 a0 e1                                      mov r0, r7
0032d37c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0032d380  10 20 9d e5                                      ldr r2, [sp, #0x10]
0032d384  b0 cd ff eb                                      bl #0x320a4c
0032d388  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d38c  01 40 84 e2                                      add r4, r4, #1
0032d390  04 60 86 e2                                      add r6, r6, #4
0032d394  03 00 54 e1                                      cmp r4, r3
0032d398  e1 ff ff 3a                                      blo #0x32d324
0032d39c  08 20 9d e5                                      ldr r2, [sp, #8]
0032d3a0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0032d3a4  07 00 a0 e1                                      mov r0, r7
0032d3a8  01 30 92 e7                                      ldr r3, [r2, r1]
0032d3ac  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0032d3b0  00 30 93 e5                                      ldr r3, [r3]
0032d3b4  03 00 52 e1                                      cmp r2, r3
0032d3b8  01 00 00 1a                                      bne #0x32d3c4
0032d3bc  e4 d0 8d e2                                      add sp, sp, #0xe4
0032d3c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032d3c4  d1 83 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032d3c8  60 78 66 00 ac 40 00 00 84 20 59 00              .byte 0x60, 0x78, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x20, 0x59, 0x00

; FUNCTION 0x0032d52c, declared_size=464, range_size=464, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttribute10getStringWEv
; demangled: glitch::io::CNumbersAttribute::getStringW()
; decoder-mode: arm
0032d52c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032d530  b8 21 9f e5                                      ldr r2, [pc, #0x1b8]
0032d534  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
0032d538  55 df 4d e2                                      sub sp, sp, #0x154
0032d53c  02 20 8f e0                                      add r2, pc, r2
0032d540  0c 30 8d e5                                      str r3, [sp, #0xc]
0032d544  03 30 92 e7                                      ldr r3, [r2, r3]
0032d548  00 70 a0 e1                                      mov r7, r0
0032d54c  04 20 8d e5                                      str r2, [sp, #4]
0032d550  00 30 93 e5                                      ldr r3, [r3]
0032d554  01 50 a0 e1                                      mov r5, r1
0032d558  40 00 87 e5                                      str r0, [r7, #0x40]
0032d55c  44 00 87 e5                                      str r0, [r7, #0x44]
0032d560  10 10 a0 e3                                      mov r1, #0x10
0032d564  4c 31 8d e5                                      str r3, [sp, #0x14c]
0032d568  ec cc ff eb                                      bl #0x320920
0032d56c  40 30 97 e5                                      ldr r3, [r7, #0x40]
0032d570  00 60 a0 e3                                      mov r6, #0
0032d574  00 60 83 e5                                      str r6, [r3]
0032d578  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d57c  06 00 53 e1                                      cmp r3, r6
0032d580  4f 00 00 0a                                      beq #0x32d6c4
0032d584  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0032d588  a4 80 8d e2                                      add r8, sp, #0xa4
0032d58c  28 c0 88 e2                                      add ip, r8, #0x28
0032d590  03 30 8f e0                                      add r3, pc, r3
0032d594  00 30 8d e5                                      str r3, [sp]
0032d598  06 40 a0 e1                                      mov r4, r6
0032d59c  14 a0 8d e2                                      add sl, sp, #0x14
0032d5a0  4d 9f 8d e2                                      add sb, sp, #0x134
0032d5a4  08 c0 8d e5                                      str ip, [sp, #8]
0032d5a8  5c b0 8d e2                                      add fp, sp, #0x5c
0032d5ac  24 00 00 ea                                      b #0x32d644
0032d5b0  08 00 a0 e1                                      mov r0, r8
0032d5b4  ed fe ff eb                                      bl #0x32d170
0032d5b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
0032d5bc  06 00 93 e7                                      ldr r0, [r3, r6]
0032d5c0  b7 84 ff eb                                      bl #0x30e8a4
0032d5c4  00 20 a0 e1                                      mov r2, r0
0032d5c8  01 30 a0 e1                                      mov r3, r1
0032d5cc  08 00 a0 e1                                      mov r0, r8
0032d5d0  00 88 ff eb                                      bl #0x30f5d8
0032d5d4  08 10 9d e5                                      ldr r1, [sp, #8]
0032d5d8  09 00 a0 e1                                      mov r0, sb
0032d5dc  cd f8 ff eb                                      bl #0x32b918
0032d5e0  0b 00 a0 e1                                      mov r0, fp
0032d5e4  48 11 9d e5                                      ldr r1, [sp, #0x148]
0032d5e8  36 e3 ff eb                                      bl #0x3262c8
0032d5ec  07 00 a0 e1                                      mov r0, r7
0032d5f0  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0032d5f4  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0032d5f8  92 cd ff eb                                      bl #0x320c48
0032d5fc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
0032d600  0b 00 50 e1                                      cmp r0, fp
0032d604  02 00 00 0a                                      beq #0x32d614
0032d608  00 00 50 e3                                      cmp r0, #0
0032d60c  00 00 00 0a                                      beq #0x32d614
0032d610  8e 8b ff eb                                      bl #0x310450
0032d614  09 00 a0 e1                                      mov r0, sb
0032d618  e3 98 ff eb                                      bl #0x3139ac
0032d61c  08 00 a0 e1                                      mov r0, r8
0032d620  2f d6 ff eb                                      bl #0x322ee4
0032d624  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d628  01 20 43 e2                                      sub r2, r3, #1
0032d62c  04 00 52 e1                                      cmp r2, r4
0032d630  18 00 00 8a                                      bhi #0x32d698
0032d634  01 40 84 e2                                      add r4, r4, #1
0032d638  03 00 54 e1                                      cmp r4, r3
0032d63c  04 60 86 e2                                      add r6, r6, #4
0032d640  1f 00 00 2a                                      bhs #0x32d6c4
0032d644  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
0032d648  00 00 53 e3                                      cmp r3, #0
0032d64c  d7 ff ff 1a                                      bne #0x32d5b0
0032d650  24 30 95 e5                                      ldr r3, [r5, #0x24]
0032d654  0a 00 a0 e1                                      mov r0, sl
0032d658  06 10 93 e7                                      ldr r1, [r3, r6]
0032d65c  46 e2 ff eb                                      bl #0x325f7c
0032d660  07 00 a0 e1                                      mov r0, r7
0032d664  58 10 9d e5                                      ldr r1, [sp, #0x58]
0032d668  54 20 9d e5                                      ldr r2, [sp, #0x54]
0032d66c  75 cd ff eb                                      bl #0x320c48
0032d670  58 00 9d e5                                      ldr r0, [sp, #0x58]
0032d674  0a 00 50 e1                                      cmp r0, sl
0032d678  e9 ff ff 0a                                      beq #0x32d624
0032d67c  00 00 50 e3                                      cmp r0, #0
0032d680  e7 ff ff 0a                                      beq #0x32d624
0032d684  71 8b ff eb                                      bl #0x310450
0032d688  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d68c  01 20 43 e2                                      sub r2, r3, #1
0032d690  04 00 52 e1                                      cmp r2, r4
0032d694  e6 ff ff 9a                                      bls #0x32d634
0032d698  00 00 9d e5                                      ldr r0, [sp]
0032d69c  79 85 ff eb                                      bl #0x30ec88
0032d6a0  00 10 9d e5                                      ldr r1, [sp]
0032d6a4  01 40 84 e2                                      add r4, r4, #1
0032d6a8  04 60 86 e2                                      add r6, r6, #4
0032d6ac  00 21 81 e0                                      add r2, r1, r0, lsl #2
0032d6b0  07 00 a0 e1                                      mov r0, r7
0032d6b4  63 cd ff eb                                      bl #0x320c48
0032d6b8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0032d6bc  03 00 54 e1                                      cmp r4, r3
0032d6c0  df ff ff 3a                                      blo #0x32d644
0032d6c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0032d6c8  04 c0 9d e5                                      ldr ip, [sp, #4]
0032d6cc  07 00 a0 e1                                      mov r0, r7
0032d6d0  02 30 9c e7                                      ldr r3, [ip, r2]
0032d6d4  4c 21 9d e5                                      ldr r2, [sp, #0x14c]
0032d6d8  00 30 93 e5                                      ldr r3, [r3]
0032d6dc  03 00 52 e1                                      cmp r2, r3
0032d6e0  01 00 00 1a                                      bne #0x32d6ec
0032d6e4  55 df 8d e2                                      add sp, sp, #0x154
0032d6e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032d6ec  07 83 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032d6f0  54 75 66 00 ac 40 00 00 78 16 59 00              .byte 0x54, 0x75, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0x16, 0x59, 0x00

; FUNCTION 0x00404bbc, declared_size=420, range_size=420, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_5video7SColorfEb.clone.2
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::video::SColorf const&, bool) [clone .clone.2]
; decoder-mode: arm
00404bbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00404bc0  88 71 9f e5                                      ldr r7, [pc, #0x188]
00404bc4  88 31 9f e5                                      ldr r3, [pc, #0x188]
00404bc8  00 60 a0 e1                                      mov r6, r0
00404bcc  07 70 8f e0                                      add r7, pc, r7
00404bd0  03 30 97 e7                                      ldr r3, [r7, r3]
00404bd4  01 80 a0 e3                                      mov r8, #1
00404bd8  04 80 80 e5                                      str r8, [r0, #4]
00404bdc  08 30 83 e2                                      add r3, r3, #8
00404be0  08 30 86 e4                                      str r3, [r6], #8
00404be4  00 40 a0 e1                                      mov r4, r0
00404be8  18 60 80 e5                                      str r6, [r0, #0x18]
00404bec  1c 60 80 e5                                      str r6, [r0, #0x1c]
00404bf0  01 50 a0 e1                                      mov r5, r1
00404bf4  06 00 a0 e1                                      mov r0, r6
00404bf8  10 10 a0 e3                                      mov r1, #0x10
00404bfc  69 6f fc eb                                      bl #0x3209a8
00404c00  50 31 9f e5                                      ldr r3, [pc, #0x150]
00404c04  18 00 94 e5                                      ldr r0, [r4, #0x18]
00404c08  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
00404c0c  03 30 97 e7                                      ldr r3, [r7, r3]
00404c10  01 10 8f e0                                      add r1, pc, r1
00404c14  08 20 83 e2                                      add r2, r3, #8
00404c18  00 30 a0 e3                                      mov r3, #0
00404c1c  00 30 c0 e5                                      strb r3, [r0]
00404c20  00 20 84 e5                                      str r2, [r4]
00404c24  04 20 a0 e3                                      mov r2, #4
00404c28  38 30 84 e5                                      str r3, [r4, #0x38]
00404c2c  3c 20 84 e5                                      str r2, [r4, #0x3c]
00404c30  20 30 c4 e5                                      strb r3, [r4, #0x20]
00404c34  24 30 84 e5                                      str r3, [r4, #0x24]
00404c38  28 30 84 e5                                      str r3, [r4, #0x28]
00404c3c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00404c40  30 30 84 e5                                      str r3, [r4, #0x30]
00404c44  34 30 84 e5                                      str r3, [r4, #0x34]
00404c48  06 00 a0 e1                                      mov r0, r6
00404c4c  01 20 a0 e1                                      mov r2, r1
00404c50  40 80 c4 e5                                      strb r8, [r4, #0x40]
00404c54  cb 6f fc eb                                      bl #0x320b88
00404c58  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404c5c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404c60  30 60 84 e2                                      add r6, r4, #0x30
00404c64  03 00 51 e1                                      cmp r1, r3
00404c68  1e 00 00 0a                                      beq #0x404ce8
00404c6c  00 30 95 e5                                      ldr r3, [r5]
00404c70  00 30 81 e5                                      str r3, [r1]
00404c74  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404c78  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404c7c  04 10 81 e2                                      add r1, r1, #4
00404c80  01 00 53 e1                                      cmp r3, r1
00404c84  34 10 84 e5                                      str r1, [r4, #0x34]
00404c88  1d 00 00 0a                                      beq #0x404d04
00404c8c  04 30 95 e5                                      ldr r3, [r5, #4]
00404c90  00 30 81 e5                                      str r3, [r1]
00404c94  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404c98  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404c9c  04 10 81 e2                                      add r1, r1, #4
00404ca0  01 00 53 e1                                      cmp r3, r1
00404ca4  34 10 84 e5                                      str r1, [r4, #0x34]
00404ca8  1c 00 00 0a                                      beq #0x404d20
00404cac  08 30 95 e5                                      ldr r3, [r5, #8]
00404cb0  00 30 81 e5                                      str r3, [r1]
00404cb4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404cb8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404cbc  04 10 81 e2                                      add r1, r1, #4
00404cc0  01 00 53 e1                                      cmp r3, r1
00404cc4  34 10 84 e5                                      str r1, [r4, #0x34]
00404cc8  1b 00 00 0a                                      beq #0x404d3c
00404ccc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00404cd0  04 00 a0 e1                                      mov r0, r4
00404cd4  00 30 81 e5                                      str r3, [r1]
00404cd8  34 30 94 e5                                      ldr r3, [r4, #0x34]
00404cdc  04 30 83 e2                                      add r3, r3, #4
00404ce0  34 30 84 e5                                      str r3, [r4, #0x34]
00404ce4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00404ce8  06 00 a0 e1                                      mov r0, r6
00404cec  05 20 a0 e1                                      mov r2, r5
00404cf0  4a ff ff eb                                      bl #0x404a20
00404cf4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404cf8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404cfc  01 00 53 e1                                      cmp r3, r1
00404d00  e1 ff ff 1a                                      bne #0x404c8c
00404d04  06 00 a0 e1                                      mov r0, r6
00404d08  04 20 85 e2                                      add r2, r5, #4
00404d0c  43 ff ff eb                                      bl #0x404a20
00404d10  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404d14  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404d18  01 00 53 e1                                      cmp r3, r1
00404d1c  e2 ff ff 1a                                      bne #0x404cac
00404d20  06 00 a0 e1                                      mov r0, r6
00404d24  08 20 85 e2                                      add r2, r5, #8
00404d28  3c ff ff eb                                      bl #0x404a20
00404d2c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00404d30  38 30 94 e5                                      ldr r3, [r4, #0x38]
00404d34  01 00 53 e1                                      cmp r3, r1
00404d38  e3 ff ff 1a                                      bne #0x404ccc
00404d3c  06 00 a0 e1                                      mov r0, r6
00404d40  0c 20 85 e2                                      add r2, r5, #0xc
00404d44  35 ff ff eb                                      bl #0x404a20
00404d48  04 00 a0 e1                                      mov r0, r4
00404d4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00404d50  c4 fe 58 00 44 2c 00 00 18 21 00 00 f8 6b 4c 00  .byte 0xc4, 0xfe, 0x58, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00, 0xf8, 0x6b, 0x4c, 0x00

; FUNCTION 0x0040e574, declared_size=420, range_size=420, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_5video7SColorfEb.clone.2
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::video::SColorf const&, bool) [clone .clone.2]
; decoder-mode: arm
0040e574  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040e578  88 71 9f e5                                      ldr r7, [pc, #0x188]
0040e57c  88 31 9f e5                                      ldr r3, [pc, #0x188]
0040e580  00 60 a0 e1                                      mov r6, r0
0040e584  07 70 8f e0                                      add r7, pc, r7
0040e588  03 30 97 e7                                      ldr r3, [r7, r3]
0040e58c  01 80 a0 e3                                      mov r8, #1
0040e590  04 80 80 e5                                      str r8, [r0, #4]
0040e594  08 30 83 e2                                      add r3, r3, #8
0040e598  08 30 86 e4                                      str r3, [r6], #8
0040e59c  00 40 a0 e1                                      mov r4, r0
0040e5a0  18 60 80 e5                                      str r6, [r0, #0x18]
0040e5a4  1c 60 80 e5                                      str r6, [r0, #0x1c]
0040e5a8  01 50 a0 e1                                      mov r5, r1
0040e5ac  06 00 a0 e1                                      mov r0, r6
0040e5b0  10 10 a0 e3                                      mov r1, #0x10
0040e5b4  fb 48 fc eb                                      bl #0x3209a8
0040e5b8  50 31 9f e5                                      ldr r3, [pc, #0x150]
0040e5bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
0040e5c0  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0040e5c4  03 30 97 e7                                      ldr r3, [r7, r3]
0040e5c8  01 10 8f e0                                      add r1, pc, r1
0040e5cc  08 20 83 e2                                      add r2, r3, #8
0040e5d0  00 30 a0 e3                                      mov r3, #0
0040e5d4  00 30 c0 e5                                      strb r3, [r0]
0040e5d8  00 20 84 e5                                      str r2, [r4]
0040e5dc  04 20 a0 e3                                      mov r2, #4
0040e5e0  38 30 84 e5                                      str r3, [r4, #0x38]
0040e5e4  3c 20 84 e5                                      str r2, [r4, #0x3c]
0040e5e8  20 30 c4 e5                                      strb r3, [r4, #0x20]
0040e5ec  24 30 84 e5                                      str r3, [r4, #0x24]
0040e5f0  28 30 84 e5                                      str r3, [r4, #0x28]
0040e5f4  2c 30 84 e5                                      str r3, [r4, #0x2c]
0040e5f8  30 30 84 e5                                      str r3, [r4, #0x30]
0040e5fc  34 30 84 e5                                      str r3, [r4, #0x34]
0040e600  06 00 a0 e1                                      mov r0, r6
0040e604  01 20 a0 e1                                      mov r2, r1
0040e608  40 80 c4 e5                                      strb r8, [r4, #0x40]
0040e60c  5d 49 fc eb                                      bl #0x320b88
0040e610  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e614  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e618  30 60 84 e2                                      add r6, r4, #0x30
0040e61c  03 00 51 e1                                      cmp r1, r3
0040e620  1e 00 00 0a                                      beq #0x40e6a0
0040e624  00 30 95 e5                                      ldr r3, [r5]
0040e628  00 30 81 e5                                      str r3, [r1]
0040e62c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e630  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e634  04 10 81 e2                                      add r1, r1, #4
0040e638  01 00 53 e1                                      cmp r3, r1
0040e63c  34 10 84 e5                                      str r1, [r4, #0x34]
0040e640  1d 00 00 0a                                      beq #0x40e6bc
0040e644  04 30 95 e5                                      ldr r3, [r5, #4]
0040e648  00 30 81 e5                                      str r3, [r1]
0040e64c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e650  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e654  04 10 81 e2                                      add r1, r1, #4
0040e658  01 00 53 e1                                      cmp r3, r1
0040e65c  34 10 84 e5                                      str r1, [r4, #0x34]
0040e660  1c 00 00 0a                                      beq #0x40e6d8
0040e664  08 30 95 e5                                      ldr r3, [r5, #8]
0040e668  00 30 81 e5                                      str r3, [r1]
0040e66c  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e670  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e674  04 10 81 e2                                      add r1, r1, #4
0040e678  01 00 53 e1                                      cmp r3, r1
0040e67c  34 10 84 e5                                      str r1, [r4, #0x34]
0040e680  1b 00 00 0a                                      beq #0x40e6f4
0040e684  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0040e688  04 00 a0 e1                                      mov r0, r4
0040e68c  00 30 81 e5                                      str r3, [r1]
0040e690  34 30 94 e5                                      ldr r3, [r4, #0x34]
0040e694  04 30 83 e2                                      add r3, r3, #4
0040e698  34 30 84 e5                                      str r3, [r4, #0x34]
0040e69c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0040e6a0  06 00 a0 e1                                      mov r0, r6
0040e6a4  05 20 a0 e1                                      mov r2, r5
0040e6a8  61 ff ff eb                                      bl #0x40e434
0040e6ac  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e6b0  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e6b4  01 00 53 e1                                      cmp r3, r1
0040e6b8  e1 ff ff 1a                                      bne #0x40e644
0040e6bc  06 00 a0 e1                                      mov r0, r6
0040e6c0  04 20 85 e2                                      add r2, r5, #4
0040e6c4  5a ff ff eb                                      bl #0x40e434
0040e6c8  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e6cc  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e6d0  01 00 53 e1                                      cmp r3, r1
0040e6d4  e2 ff ff 1a                                      bne #0x40e664
0040e6d8  06 00 a0 e1                                      mov r0, r6
0040e6dc  08 20 85 e2                                      add r2, r5, #8
0040e6e0  53 ff ff eb                                      bl #0x40e434
0040e6e4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0040e6e8  38 30 94 e5                                      ldr r3, [r4, #0x38]
0040e6ec  01 00 53 e1                                      cmp r3, r1
0040e6f0  e3 ff ff 1a                                      bne #0x40e684
0040e6f4  06 00 a0 e1                                      mov r0, r6
0040e6f8  0c 20 85 e2                                      add r2, r5, #0xc
0040e6fc  4c ff ff eb                                      bl #0x40e434
0040e700  04 00 a0 e1                                      mov r0, r4
0040e704  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0040e708  0c 65 58 00 44 2c 00 00 18 21 00 00 40 d2 4b 00  .byte 0x0c, 0x65, 0x58, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00, 0x40, 0xd2, 0x4b, 0x00

; FUNCTION 0x00565880, declared_size=308, range_size=308, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector2dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector2d<float> const&, bool)
; decoder-mode: arm
00565880  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00565884  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
00565888  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
0056588c  00 50 a0 e1                                      mov r5, r0
00565890  06 60 8f e0                                      add r6, pc, r6
00565894  0c c0 96 e7                                      ldr ip, [r6, ip]
00565898  01 80 a0 e3                                      mov r8, #1
0056589c  04 80 80 e5                                      str r8, [r0, #4]
005658a0  08 c0 8c e2                                      add ip, ip, #8
005658a4  08 c0 85 e4                                      str ip, [r5], #8
005658a8  00 40 a0 e1                                      mov r4, r0
005658ac  01 70 a0 e1                                      mov r7, r1
005658b0  18 50 80 e5                                      str r5, [r0, #0x18]
005658b4  1c 50 80 e5                                      str r5, [r0, #0x1c]
005658b8  10 10 a0 e3                                      mov r1, #0x10
005658bc  05 00 a0 e1                                      mov r0, r5
005658c0  03 90 a0 e1                                      mov sb, r3
005658c4  02 a0 a0 e1                                      mov sl, r2
005658c8  36 ec f6 eb                                      bl #0x3209a8
005658cc  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005658d0  18 10 94 e5                                      ldr r1, [r4, #0x18]
005658d4  00 30 a0 e3                                      mov r3, #0
005658d8  02 20 96 e7                                      ldr r2, [r6, r2]
005658dc  00 30 c1 e5                                      strb r3, [r1]
005658e0  07 00 a0 e1                                      mov r0, r7
005658e4  08 20 82 e2                                      add r2, r2, #8
005658e8  00 20 84 e5                                      str r2, [r4]
005658ec  02 20 a0 e3                                      mov r2, #2
005658f0  38 30 84 e5                                      str r3, [r4, #0x38]
005658f4  24 30 84 e5                                      str r3, [r4, #0x24]
005658f8  28 30 84 e5                                      str r3, [r4, #0x28]
005658fc  2c 30 84 e5                                      str r3, [r4, #0x2c]
00565900  30 30 84 e5                                      str r3, [r4, #0x30]
00565904  34 30 84 e5                                      str r3, [r4, #0x34]
00565908  3c 20 84 e5                                      str r2, [r4, #0x3c]
0056590c  20 90 c4 e5                                      strb sb, [r4, #0x20]
00565910  40 80 c4 e5                                      strb r8, [r4, #0x40]
00565914  4e a1 f6 eb                                      bl #0x30de54
00565918  07 10 a0 e1                                      mov r1, r7
0056591c  00 20 87 e0                                      add r2, r7, r0
00565920  05 00 a0 e1                                      mov r0, r5
00565924  97 ec f6 eb                                      bl #0x320b88
00565928  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056592c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565930  30 50 84 e2                                      add r5, r4, #0x30
00565934  03 00 51 e1                                      cmp r1, r3
00565938  0e 00 00 0a                                      beq #0x565978
0056593c  00 30 9a e5                                      ldr r3, [sl]
00565940  00 30 81 e5                                      str r3, [r1]
00565944  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565948  38 30 94 e5                                      ldr r3, [r4, #0x38]
0056594c  04 10 81 e2                                      add r1, r1, #4
00565950  01 00 53 e1                                      cmp r3, r1
00565954  34 10 84 e5                                      str r1, [r4, #0x34]
00565958  0d 00 00 0a                                      beq #0x565994
0056595c  04 30 9a e5                                      ldr r3, [sl, #4]
00565960  04 00 a0 e1                                      mov r0, r4
00565964  00 30 81 e5                                      str r3, [r1]
00565968  34 30 94 e5                                      ldr r3, [r4, #0x34]
0056596c  04 30 83 e2                                      add r3, r3, #4
00565970  34 30 84 e5                                      str r3, [r4, #0x34]
00565974  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00565978  05 00 a0 e1                                      mov r0, r5
0056597c  0a 20 a0 e1                                      mov r2, sl
00565980  e1 f8 ff eb                                      bl #0x563d0c
00565984  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565988  38 30 94 e5                                      ldr r3, [r4, #0x38]
0056598c  01 00 53 e1                                      cmp r3, r1
00565990  f1 ff ff 1a                                      bne #0x56595c
00565994  05 00 a0 e1                                      mov r0, r5
00565998  04 20 8a e2                                      add r2, sl, #4
0056599c  da f8 ff eb                                      bl #0x563d0c
005659a0  04 00 a0 e1                                      mov r0, r4
005659a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005659a8  00 f2 42 00 44 2c 00 00 18 21 00 00              .byte 0x00, 0xf2, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00565a54, declared_size=428, range_size=428, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_5video7SColorfEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::video::SColorf const&, bool)
; decoder-mode: arm
00565a54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00565a58  94 61 9f e5                                      ldr r6, [pc, #0x194]
00565a5c  94 c1 9f e5                                      ldr ip, [pc, #0x194]
00565a60  00 50 a0 e1                                      mov r5, r0
00565a64  06 60 8f e0                                      add r6, pc, r6
00565a68  0c c0 96 e7                                      ldr ip, [r6, ip]
00565a6c  01 80 a0 e3                                      mov r8, #1
00565a70  04 80 80 e5                                      str r8, [r0, #4]
00565a74  08 c0 8c e2                                      add ip, ip, #8
00565a78  08 c0 85 e4                                      str ip, [r5], #8
00565a7c  00 40 a0 e1                                      mov r4, r0
00565a80  01 70 a0 e1                                      mov r7, r1
00565a84  18 50 80 e5                                      str r5, [r0, #0x18]
00565a88  1c 50 80 e5                                      str r5, [r0, #0x1c]
00565a8c  10 10 a0 e3                                      mov r1, #0x10
00565a90  05 00 a0 e1                                      mov r0, r5
00565a94  03 90 a0 e1                                      mov sb, r3
00565a98  02 a0 a0 e1                                      mov sl, r2
00565a9c  c1 eb f6 eb                                      bl #0x3209a8
00565aa0  54 21 9f e5                                      ldr r2, [pc, #0x154]
00565aa4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00565aa8  00 30 a0 e3                                      mov r3, #0
00565aac  02 20 96 e7                                      ldr r2, [r6, r2]
00565ab0  00 30 c1 e5                                      strb r3, [r1]
00565ab4  07 00 a0 e1                                      mov r0, r7
00565ab8  08 20 82 e2                                      add r2, r2, #8
00565abc  00 20 84 e5                                      str r2, [r4]
00565ac0  04 20 a0 e3                                      mov r2, #4
00565ac4  38 30 84 e5                                      str r3, [r4, #0x38]
00565ac8  24 30 84 e5                                      str r3, [r4, #0x24]
00565acc  28 30 84 e5                                      str r3, [r4, #0x28]
00565ad0  2c 30 84 e5                                      str r3, [r4, #0x2c]
00565ad4  30 30 84 e5                                      str r3, [r4, #0x30]
00565ad8  34 30 84 e5                                      str r3, [r4, #0x34]
00565adc  3c 20 84 e5                                      str r2, [r4, #0x3c]
00565ae0  20 90 c4 e5                                      strb sb, [r4, #0x20]
00565ae4  40 80 c4 e5                                      strb r8, [r4, #0x40]
00565ae8  d9 a0 f6 eb                                      bl #0x30de54
00565aec  07 10 a0 e1                                      mov r1, r7
00565af0  00 20 87 e0                                      add r2, r7, r0
00565af4  05 00 a0 e1                                      mov r0, r5
00565af8  22 ec f6 eb                                      bl #0x320b88
00565afc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565b00  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565b04  30 50 84 e2                                      add r5, r4, #0x30
00565b08  03 00 51 e1                                      cmp r1, r3
00565b0c  1e 00 00 0a                                      beq #0x565b8c
00565b10  00 30 9a e5                                      ldr r3, [sl]
00565b14  00 30 81 e5                                      str r3, [r1]
00565b18  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565b1c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565b20  04 10 81 e2                                      add r1, r1, #4
00565b24  01 00 53 e1                                      cmp r3, r1
00565b28  34 10 84 e5                                      str r1, [r4, #0x34]
00565b2c  1d 00 00 0a                                      beq #0x565ba8
00565b30  04 30 9a e5                                      ldr r3, [sl, #4]
00565b34  00 30 81 e5                                      str r3, [r1]
00565b38  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565b3c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565b40  04 10 81 e2                                      add r1, r1, #4
00565b44  01 00 53 e1                                      cmp r3, r1
00565b48  34 10 84 e5                                      str r1, [r4, #0x34]
00565b4c  1c 00 00 0a                                      beq #0x565bc4
00565b50  08 30 9a e5                                      ldr r3, [sl, #8]
00565b54  00 30 81 e5                                      str r3, [r1]
00565b58  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565b5c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565b60  04 10 81 e2                                      add r1, r1, #4
00565b64  01 00 53 e1                                      cmp r3, r1
00565b68  34 10 84 e5                                      str r1, [r4, #0x34]
00565b6c  1b 00 00 0a                                      beq #0x565be0
00565b70  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00565b74  04 00 a0 e1                                      mov r0, r4
00565b78  00 30 81 e5                                      str r3, [r1]
00565b7c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00565b80  04 30 83 e2                                      add r3, r3, #4
00565b84  34 30 84 e5                                      str r3, [r4, #0x34]
00565b88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00565b8c  05 00 a0 e1                                      mov r0, r5
00565b90  0a 20 a0 e1                                      mov r2, sl
00565b94  5c f8 ff eb                                      bl #0x563d0c
00565b98  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565b9c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565ba0  01 00 53 e1                                      cmp r3, r1
00565ba4  e1 ff ff 1a                                      bne #0x565b30
00565ba8  05 00 a0 e1                                      mov r0, r5
00565bac  04 20 8a e2                                      add r2, sl, #4
00565bb0  55 f8 ff eb                                      bl #0x563d0c
00565bb4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565bb8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565bbc  01 00 53 e1                                      cmp r3, r1
00565bc0  e2 ff ff 1a                                      bne #0x565b50
00565bc4  05 00 a0 e1                                      mov r0, r5
00565bc8  08 20 8a e2                                      add r2, sl, #8
00565bcc  4e f8 ff eb                                      bl #0x563d0c
00565bd0  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565bd4  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565bd8  01 00 53 e1                                      cmp r3, r1
00565bdc  e3 ff ff 1a                                      bne #0x565b70
00565be0  05 00 a0 e1                                      mov r0, r5
00565be4  0c 20 8a e2                                      add r2, sl, #0xc
00565be8  47 f8 ff eb                                      bl #0x563d0c
00565bec  04 00 a0 e1                                      mov r0, r4
00565bf0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00565bf4  2c f0 42 00 44 2c 00 00 18 21 00 00              .byte 0x2c, 0xf0, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00565ce8, declared_size=428, range_size=428, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core6line2dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::line2d<float>, bool)
; decoder-mode: arm
00565ce8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00565cec  94 61 9f e5                                      ldr r6, [pc, #0x194]
00565cf0  94 c1 9f e5                                      ldr ip, [pc, #0x194]
00565cf4  00 50 a0 e1                                      mov r5, r0
00565cf8  06 60 8f e0                                      add r6, pc, r6
00565cfc  0c c0 96 e7                                      ldr ip, [r6, ip]
00565d00  01 80 a0 e3                                      mov r8, #1
00565d04  04 80 80 e5                                      str r8, [r0, #4]
00565d08  08 c0 8c e2                                      add ip, ip, #8
00565d0c  08 c0 85 e4                                      str ip, [r5], #8
00565d10  00 40 a0 e1                                      mov r4, r0
00565d14  01 70 a0 e1                                      mov r7, r1
00565d18  18 50 80 e5                                      str r5, [r0, #0x18]
00565d1c  1c 50 80 e5                                      str r5, [r0, #0x1c]
00565d20  10 10 a0 e3                                      mov r1, #0x10
00565d24  05 00 a0 e1                                      mov r0, r5
00565d28  03 90 a0 e1                                      mov sb, r3
00565d2c  02 a0 a0 e1                                      mov sl, r2
00565d30  1c eb f6 eb                                      bl #0x3209a8
00565d34  54 21 9f e5                                      ldr r2, [pc, #0x154]
00565d38  18 10 94 e5                                      ldr r1, [r4, #0x18]
00565d3c  00 30 a0 e3                                      mov r3, #0
00565d40  02 20 96 e7                                      ldr r2, [r6, r2]
00565d44  00 30 c1 e5                                      strb r3, [r1]
00565d48  07 00 a0 e1                                      mov r0, r7
00565d4c  08 20 82 e2                                      add r2, r2, #8
00565d50  00 20 84 e5                                      str r2, [r4]
00565d54  04 20 a0 e3                                      mov r2, #4
00565d58  38 30 84 e5                                      str r3, [r4, #0x38]
00565d5c  24 30 84 e5                                      str r3, [r4, #0x24]
00565d60  28 30 84 e5                                      str r3, [r4, #0x28]
00565d64  2c 30 84 e5                                      str r3, [r4, #0x2c]
00565d68  30 30 84 e5                                      str r3, [r4, #0x30]
00565d6c  34 30 84 e5                                      str r3, [r4, #0x34]
00565d70  3c 20 84 e5                                      str r2, [r4, #0x3c]
00565d74  20 90 c4 e5                                      strb sb, [r4, #0x20]
00565d78  40 80 c4 e5                                      strb r8, [r4, #0x40]
00565d7c  34 a0 f6 eb                                      bl #0x30de54
00565d80  07 10 a0 e1                                      mov r1, r7
00565d84  00 20 87 e0                                      add r2, r7, r0
00565d88  05 00 a0 e1                                      mov r0, r5
00565d8c  7d eb f6 eb                                      bl #0x320b88
00565d90  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565d94  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565d98  30 50 84 e2                                      add r5, r4, #0x30
00565d9c  03 00 51 e1                                      cmp r1, r3
00565da0  1e 00 00 0a                                      beq #0x565e20
00565da4  00 30 9a e5                                      ldr r3, [sl]
00565da8  00 30 81 e5                                      str r3, [r1]
00565dac  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565db0  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565db4  04 10 81 e2                                      add r1, r1, #4
00565db8  01 00 53 e1                                      cmp r3, r1
00565dbc  34 10 84 e5                                      str r1, [r4, #0x34]
00565dc0  1d 00 00 0a                                      beq #0x565e3c
00565dc4  04 30 9a e5                                      ldr r3, [sl, #4]
00565dc8  00 30 81 e5                                      str r3, [r1]
00565dcc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565dd0  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565dd4  04 10 81 e2                                      add r1, r1, #4
00565dd8  01 00 53 e1                                      cmp r3, r1
00565ddc  34 10 84 e5                                      str r1, [r4, #0x34]
00565de0  1c 00 00 0a                                      beq #0x565e58
00565de4  08 30 9a e5                                      ldr r3, [sl, #8]
00565de8  00 30 81 e5                                      str r3, [r1]
00565dec  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565df0  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565df4  04 10 81 e2                                      add r1, r1, #4
00565df8  01 00 53 e1                                      cmp r3, r1
00565dfc  34 10 84 e5                                      str r1, [r4, #0x34]
00565e00  1b 00 00 0a                                      beq #0x565e74
00565e04  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00565e08  04 00 a0 e1                                      mov r0, r4
00565e0c  00 30 81 e5                                      str r3, [r1]
00565e10  34 30 94 e5                                      ldr r3, [r4, #0x34]
00565e14  04 30 83 e2                                      add r3, r3, #4
00565e18  34 30 84 e5                                      str r3, [r4, #0x34]
00565e1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00565e20  05 00 a0 e1                                      mov r0, r5
00565e24  0a 20 a0 e1                                      mov r2, sl
00565e28  b7 f7 ff eb                                      bl #0x563d0c
00565e2c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565e30  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565e34  01 00 53 e1                                      cmp r3, r1
00565e38  e1 ff ff 1a                                      bne #0x565dc4
00565e3c  05 00 a0 e1                                      mov r0, r5
00565e40  04 20 8a e2                                      add r2, sl, #4
00565e44  b0 f7 ff eb                                      bl #0x563d0c
00565e48  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565e4c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565e50  01 00 53 e1                                      cmp r3, r1
00565e54  e2 ff ff 1a                                      bne #0x565de4
00565e58  05 00 a0 e1                                      mov r0, r5
00565e5c  08 20 8a e2                                      add r2, sl, #8
00565e60  a9 f7 ff eb                                      bl #0x563d0c
00565e64  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565e68  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565e6c  01 00 53 e1                                      cmp r3, r1
00565e70  e3 ff ff 1a                                      bne #0x565e04
00565e74  05 00 a0 e1                                      mov r0, r5
00565e78  0c 20 8a e2                                      add r2, sl, #0xc
00565e7c  a2 f7 ff eb                                      bl #0x563d0c
00565e80  04 00 a0 e1                                      mov r0, r4
00565e84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00565e88  98 ed 42 00 44 2c 00 00 18 21 00 00              .byte 0x98, 0xed, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00565e94, declared_size=728, range_size=728, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10triangle3dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::triangle3d<float>, bool)
; decoder-mode: arm
00565e94  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00565e98  c0 62 9f e5                                      ldr r6, [pc, #0x2c0]
00565e9c  c0 c2 9f e5                                      ldr ip, [pc, #0x2c0]
00565ea0  00 50 a0 e1                                      mov r5, r0
00565ea4  06 60 8f e0                                      add r6, pc, r6
00565ea8  0c c0 96 e7                                      ldr ip, [r6, ip]
00565eac  01 80 a0 e3                                      mov r8, #1
00565eb0  04 80 80 e5                                      str r8, [r0, #4]
00565eb4  08 c0 8c e2                                      add ip, ip, #8
00565eb8  08 c0 85 e4                                      str ip, [r5], #8
00565ebc  00 40 a0 e1                                      mov r4, r0
00565ec0  01 70 a0 e1                                      mov r7, r1
00565ec4  18 50 80 e5                                      str r5, [r0, #0x18]
00565ec8  1c 50 80 e5                                      str r5, [r0, #0x1c]
00565ecc  10 10 a0 e3                                      mov r1, #0x10
00565ed0  05 00 a0 e1                                      mov r0, r5
00565ed4  03 90 a0 e1                                      mov sb, r3
00565ed8  02 a0 a0 e1                                      mov sl, r2
00565edc  b1 ea f6 eb                                      bl #0x3209a8
00565ee0  80 22 9f e5                                      ldr r2, [pc, #0x280]
00565ee4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00565ee8  00 30 a0 e3                                      mov r3, #0
00565eec  02 20 96 e7                                      ldr r2, [r6, r2]
00565ef0  00 30 c1 e5                                      strb r3, [r1]
00565ef4  07 00 a0 e1                                      mov r0, r7
00565ef8  08 20 82 e2                                      add r2, r2, #8
00565efc  00 20 84 e5                                      str r2, [r4]
00565f00  09 20 a0 e3                                      mov r2, #9
00565f04  38 30 84 e5                                      str r3, [r4, #0x38]
00565f08  24 30 84 e5                                      str r3, [r4, #0x24]
00565f0c  28 30 84 e5                                      str r3, [r4, #0x28]
00565f10  2c 30 84 e5                                      str r3, [r4, #0x2c]
00565f14  30 30 84 e5                                      str r3, [r4, #0x30]
00565f18  34 30 84 e5                                      str r3, [r4, #0x34]
00565f1c  3c 20 84 e5                                      str r2, [r4, #0x3c]
00565f20  20 90 c4 e5                                      strb sb, [r4, #0x20]
00565f24  40 80 c4 e5                                      strb r8, [r4, #0x40]
00565f28  c9 9f f6 eb                                      bl #0x30de54
00565f2c  07 10 a0 e1                                      mov r1, r7
00565f30  00 20 87 e0                                      add r2, r7, r0
00565f34  05 00 a0 e1                                      mov r0, r5
00565f38  12 eb f6 eb                                      bl #0x320b88
00565f3c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565f40  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565f44  30 50 84 e2                                      add r5, r4, #0x30
00565f48  03 00 51 e1                                      cmp r1, r3
00565f4c  46 00 00 0a                                      beq #0x56606c
00565f50  00 30 9a e5                                      ldr r3, [sl]
00565f54  00 30 81 e5                                      str r3, [r1]
00565f58  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565f5c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565f60  04 10 81 e2                                      add r1, r1, #4
00565f64  01 00 53 e1                                      cmp r3, r1
00565f68  34 10 84 e5                                      str r1, [r4, #0x34]
00565f6c  45 00 00 0a                                      beq #0x566088
00565f70  04 30 9a e5                                      ldr r3, [sl, #4]
00565f74  00 30 81 e5                                      str r3, [r1]
00565f78  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565f7c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565f80  04 10 81 e2                                      add r1, r1, #4
00565f84  01 00 53 e1                                      cmp r3, r1
00565f88  34 10 84 e5                                      str r1, [r4, #0x34]
00565f8c  44 00 00 0a                                      beq #0x5660a4
00565f90  08 30 9a e5                                      ldr r3, [sl, #8]
00565f94  00 30 81 e5                                      str r3, [r1]
00565f98  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565f9c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565fa0  04 10 81 e2                                      add r1, r1, #4
00565fa4  01 00 53 e1                                      cmp r3, r1
00565fa8  34 10 84 e5                                      str r1, [r4, #0x34]
00565fac  43 00 00 0a                                      beq #0x5660c0
00565fb0  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00565fb4  00 30 81 e5                                      str r3, [r1]
00565fb8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565fbc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565fc0  04 10 81 e2                                      add r1, r1, #4
00565fc4  01 00 53 e1                                      cmp r3, r1
00565fc8  34 10 84 e5                                      str r1, [r4, #0x34]
00565fcc  42 00 00 0a                                      beq #0x5660dc
00565fd0  10 30 9a e5                                      ldr r3, [sl, #0x10]
00565fd4  00 30 81 e5                                      str r3, [r1]
00565fd8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565fdc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00565fe0  04 10 81 e2                                      add r1, r1, #4
00565fe4  01 00 53 e1                                      cmp r3, r1
00565fe8  34 10 84 e5                                      str r1, [r4, #0x34]
00565fec  41 00 00 0a                                      beq #0x5660f8
00565ff0  14 30 9a e5                                      ldr r3, [sl, #0x14]
00565ff4  00 30 81 e5                                      str r3, [r1]
00565ff8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00565ffc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566000  04 10 81 e2                                      add r1, r1, #4
00566004  03 00 51 e1                                      cmp r1, r3
00566008  34 10 84 e5                                      str r1, [r4, #0x34]
0056600c  40 00 00 0a                                      beq #0x566114
00566010  18 30 9a e5                                      ldr r3, [sl, #0x18]
00566014  00 30 81 e5                                      str r3, [r1]
00566018  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056601c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566020  04 10 81 e2                                      add r1, r1, #4
00566024  01 00 53 e1                                      cmp r3, r1
00566028  34 10 84 e5                                      str r1, [r4, #0x34]
0056602c  3f 00 00 0a                                      beq #0x566130
00566030  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
00566034  00 30 81 e5                                      str r3, [r1]
00566038  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056603c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566040  04 10 81 e2                                      add r1, r1, #4
00566044  01 00 53 e1                                      cmp r3, r1
00566048  34 10 84 e5                                      str r1, [r4, #0x34]
0056604c  3e 00 00 0a                                      beq #0x56614c
00566050  20 30 9a e5                                      ldr r3, [sl, #0x20]
00566054  04 00 a0 e1                                      mov r0, r4
00566058  00 30 81 e5                                      str r3, [r1]
0056605c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566060  04 30 83 e2                                      add r3, r3, #4
00566064  34 30 84 e5                                      str r3, [r4, #0x34]
00566068  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056606c  05 00 a0 e1                                      mov r0, r5
00566070  0a 20 a0 e1                                      mov r2, sl
00566074  24 f7 ff eb                                      bl #0x563d0c
00566078  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056607c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566080  01 00 53 e1                                      cmp r3, r1
00566084  b9 ff ff 1a                                      bne #0x565f70
00566088  05 00 a0 e1                                      mov r0, r5
0056608c  04 20 8a e2                                      add r2, sl, #4
00566090  1d f7 ff eb                                      bl #0x563d0c
00566094  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566098  38 30 94 e5                                      ldr r3, [r4, #0x38]
0056609c  01 00 53 e1                                      cmp r3, r1
005660a0  ba ff ff 1a                                      bne #0x565f90
005660a4  05 00 a0 e1                                      mov r0, r5
005660a8  08 20 8a e2                                      add r2, sl, #8
005660ac  16 f7 ff eb                                      bl #0x563d0c
005660b0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005660b4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005660b8  01 00 53 e1                                      cmp r3, r1
005660bc  bb ff ff 1a                                      bne #0x565fb0
005660c0  05 00 a0 e1                                      mov r0, r5
005660c4  0c 20 8a e2                                      add r2, sl, #0xc
005660c8  0f f7 ff eb                                      bl #0x563d0c
005660cc  34 10 94 e5                                      ldr r1, [r4, #0x34]
005660d0  38 30 94 e5                                      ldr r3, [r4, #0x38]
005660d4  01 00 53 e1                                      cmp r3, r1
005660d8  bc ff ff 1a                                      bne #0x565fd0
005660dc  05 00 a0 e1                                      mov r0, r5
005660e0  10 20 8a e2                                      add r2, sl, #0x10
005660e4  08 f7 ff eb                                      bl #0x563d0c
005660e8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005660ec  38 30 94 e5                                      ldr r3, [r4, #0x38]
005660f0  01 00 53 e1                                      cmp r3, r1
005660f4  bd ff ff 1a                                      bne #0x565ff0
005660f8  05 00 a0 e1                                      mov r0, r5
005660fc  14 20 8a e2                                      add r2, sl, #0x14
00566100  01 f7 ff eb                                      bl #0x563d0c
00566104  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566108  38 30 94 e5                                      ldr r3, [r4, #0x38]
0056610c  03 00 51 e1                                      cmp r1, r3
00566110  be ff ff 1a                                      bne #0x566010
00566114  05 00 a0 e1                                      mov r0, r5
00566118  18 20 8a e2                                      add r2, sl, #0x18
0056611c  fa f6 ff eb                                      bl #0x563d0c
00566120  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566124  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566128  01 00 53 e1                                      cmp r3, r1
0056612c  bf ff ff 1a                                      bne #0x566030
00566130  05 00 a0 e1                                      mov r0, r5
00566134  1c 20 8a e2                                      add r2, sl, #0x1c
00566138  f3 f6 ff eb                                      bl #0x563d0c
0056613c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566140  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566144  01 00 53 e1                                      cmp r3, r1
00566148  c0 ff ff 1a                                      bne #0x566050
0056614c  05 00 a0 e1                                      mov r0, r5
00566150  20 20 8a e2                                      add r2, sl, #0x20
00566154  ec f6 ff eb                                      bl #0x563d0c
00566158  04 00 a0 e1                                      mov r0, r4
0056615c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566160  ec eb 42 00 44 2c 00 00 18 21 00 00              .byte 0xec, 0xeb, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x0056616c, declared_size=428, range_size=428, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core7plane3dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::plane3d<float>, bool)
; decoder-mode: arm
0056616c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00566170  94 61 9f e5                                      ldr r6, [pc, #0x194]
00566174  94 c1 9f e5                                      ldr ip, [pc, #0x194]
00566178  00 50 a0 e1                                      mov r5, r0
0056617c  06 60 8f e0                                      add r6, pc, r6
00566180  0c c0 96 e7                                      ldr ip, [r6, ip]
00566184  01 80 a0 e3                                      mov r8, #1
00566188  04 80 80 e5                                      str r8, [r0, #4]
0056618c  08 c0 8c e2                                      add ip, ip, #8
00566190  08 c0 85 e4                                      str ip, [r5], #8
00566194  00 40 a0 e1                                      mov r4, r0
00566198  01 70 a0 e1                                      mov r7, r1
0056619c  18 50 80 e5                                      str r5, [r0, #0x18]
005661a0  1c 50 80 e5                                      str r5, [r0, #0x1c]
005661a4  10 10 a0 e3                                      mov r1, #0x10
005661a8  05 00 a0 e1                                      mov r0, r5
005661ac  03 90 a0 e1                                      mov sb, r3
005661b0  02 a0 a0 e1                                      mov sl, r2
005661b4  fb e9 f6 eb                                      bl #0x3209a8
005661b8  54 21 9f e5                                      ldr r2, [pc, #0x154]
005661bc  18 10 94 e5                                      ldr r1, [r4, #0x18]
005661c0  00 30 a0 e3                                      mov r3, #0
005661c4  02 20 96 e7                                      ldr r2, [r6, r2]
005661c8  00 30 c1 e5                                      strb r3, [r1]
005661cc  07 00 a0 e1                                      mov r0, r7
005661d0  08 20 82 e2                                      add r2, r2, #8
005661d4  00 20 84 e5                                      str r2, [r4]
005661d8  04 20 a0 e3                                      mov r2, #4
005661dc  38 30 84 e5                                      str r3, [r4, #0x38]
005661e0  24 30 84 e5                                      str r3, [r4, #0x24]
005661e4  28 30 84 e5                                      str r3, [r4, #0x28]
005661e8  2c 30 84 e5                                      str r3, [r4, #0x2c]
005661ec  30 30 84 e5                                      str r3, [r4, #0x30]
005661f0  34 30 84 e5                                      str r3, [r4, #0x34]
005661f4  3c 20 84 e5                                      str r2, [r4, #0x3c]
005661f8  20 90 c4 e5                                      strb sb, [r4, #0x20]
005661fc  40 80 c4 e5                                      strb r8, [r4, #0x40]
00566200  13 9f f6 eb                                      bl #0x30de54
00566204  07 10 a0 e1                                      mov r1, r7
00566208  00 20 87 e0                                      add r2, r7, r0
0056620c  05 00 a0 e1                                      mov r0, r5
00566210  5c ea f6 eb                                      bl #0x320b88
00566214  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566218  38 30 94 e5                                      ldr r3, [r4, #0x38]
0056621c  30 50 84 e2                                      add r5, r4, #0x30
00566220  03 00 51 e1                                      cmp r1, r3
00566224  1e 00 00 0a                                      beq #0x5662a4
00566228  00 30 9a e5                                      ldr r3, [sl]
0056622c  00 30 81 e5                                      str r3, [r1]
00566230  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566234  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566238  04 10 81 e2                                      add r1, r1, #4
0056623c  01 00 53 e1                                      cmp r3, r1
00566240  34 10 84 e5                                      str r1, [r4, #0x34]
00566244  1d 00 00 0a                                      beq #0x5662c0
00566248  04 30 9a e5                                      ldr r3, [sl, #4]
0056624c  00 30 81 e5                                      str r3, [r1]
00566250  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566254  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566258  04 10 81 e2                                      add r1, r1, #4
0056625c  01 00 53 e1                                      cmp r3, r1
00566260  34 10 84 e5                                      str r1, [r4, #0x34]
00566264  1c 00 00 0a                                      beq #0x5662dc
00566268  08 30 9a e5                                      ldr r3, [sl, #8]
0056626c  00 30 81 e5                                      str r3, [r1]
00566270  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566274  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566278  04 10 81 e2                                      add r1, r1, #4
0056627c  01 00 53 e1                                      cmp r3, r1
00566280  34 10 84 e5                                      str r1, [r4, #0x34]
00566284  1b 00 00 0a                                      beq #0x5662f8
00566288  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0056628c  04 00 a0 e1                                      mov r0, r4
00566290  00 30 81 e5                                      str r3, [r1]
00566294  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566298  04 30 83 e2                                      add r3, r3, #4
0056629c  34 30 84 e5                                      str r3, [r4, #0x34]
005662a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005662a4  05 00 a0 e1                                      mov r0, r5
005662a8  0a 20 a0 e1                                      mov r2, sl
005662ac  96 f6 ff eb                                      bl #0x563d0c
005662b0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005662b4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005662b8  01 00 53 e1                                      cmp r3, r1
005662bc  e1 ff ff 1a                                      bne #0x566248
005662c0  05 00 a0 e1                                      mov r0, r5
005662c4  04 20 8a e2                                      add r2, sl, #4
005662c8  8f f6 ff eb                                      bl #0x563d0c
005662cc  34 10 94 e5                                      ldr r1, [r4, #0x34]
005662d0  38 30 94 e5                                      ldr r3, [r4, #0x38]
005662d4  01 00 53 e1                                      cmp r3, r1
005662d8  e2 ff ff 1a                                      bne #0x566268
005662dc  05 00 a0 e1                                      mov r0, r5
005662e0  08 20 8a e2                                      add r2, sl, #8
005662e4  88 f6 ff eb                                      bl #0x563d0c
005662e8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005662ec  38 30 94 e5                                      ldr r3, [r4, #0x38]
005662f0  01 00 53 e1                                      cmp r3, r1
005662f4  e3 ff ff 1a                                      bne #0x566288
005662f8  05 00 a0 e1                                      mov r0, r5
005662fc  0c 20 8a e2                                      add r2, sl, #0xc
00566300  81 f6 ff eb                                      bl #0x563d0c
00566304  04 00 a0 e1                                      mov r0, r4
00566308  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0056630c  14 e9 42 00 44 2c 00 00 18 21 00 00              .byte 0x14, 0xe9, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00566318, declared_size=548, range_size=548, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core8aabbox3dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::aabbox3d<float>, bool)
; decoder-mode: arm
00566318  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056631c  0c 62 9f e5                                      ldr r6, [pc, #0x20c]
00566320  0c c2 9f e5                                      ldr ip, [pc, #0x20c]
00566324  00 50 a0 e1                                      mov r5, r0
00566328  06 60 8f e0                                      add r6, pc, r6
0056632c  0c c0 96 e7                                      ldr ip, [r6, ip]
00566330  01 80 a0 e3                                      mov r8, #1
00566334  04 80 80 e5                                      str r8, [r0, #4]
00566338  08 c0 8c e2                                      add ip, ip, #8
0056633c  08 c0 85 e4                                      str ip, [r5], #8
00566340  00 40 a0 e1                                      mov r4, r0
00566344  01 70 a0 e1                                      mov r7, r1
00566348  18 50 80 e5                                      str r5, [r0, #0x18]
0056634c  1c 50 80 e5                                      str r5, [r0, #0x1c]
00566350  10 10 a0 e3                                      mov r1, #0x10
00566354  05 00 a0 e1                                      mov r0, r5
00566358  03 90 a0 e1                                      mov sb, r3
0056635c  02 a0 a0 e1                                      mov sl, r2
00566360  90 e9 f6 eb                                      bl #0x3209a8
00566364  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
00566368  18 10 94 e5                                      ldr r1, [r4, #0x18]
0056636c  00 30 a0 e3                                      mov r3, #0
00566370  02 20 96 e7                                      ldr r2, [r6, r2]
00566374  00 30 c1 e5                                      strb r3, [r1]
00566378  07 00 a0 e1                                      mov r0, r7
0056637c  08 20 82 e2                                      add r2, r2, #8
00566380  00 20 84 e5                                      str r2, [r4]
00566384  06 20 a0 e3                                      mov r2, #6
00566388  38 30 84 e5                                      str r3, [r4, #0x38]
0056638c  24 30 84 e5                                      str r3, [r4, #0x24]
00566390  28 30 84 e5                                      str r3, [r4, #0x28]
00566394  2c 30 84 e5                                      str r3, [r4, #0x2c]
00566398  30 30 84 e5                                      str r3, [r4, #0x30]
0056639c  34 30 84 e5                                      str r3, [r4, #0x34]
005663a0  3c 20 84 e5                                      str r2, [r4, #0x3c]
005663a4  20 90 c4 e5                                      strb sb, [r4, #0x20]
005663a8  40 80 c4 e5                                      strb r8, [r4, #0x40]
005663ac  a8 9e f6 eb                                      bl #0x30de54
005663b0  07 10 a0 e1                                      mov r1, r7
005663b4  00 20 87 e0                                      add r2, r7, r0
005663b8  05 00 a0 e1                                      mov r0, r5
005663bc  f1 e9 f6 eb                                      bl #0x320b88
005663c0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005663c4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005663c8  30 50 84 e2                                      add r5, r4, #0x30
005663cc  03 00 51 e1                                      cmp r1, r3
005663d0  2e 00 00 0a                                      beq #0x566490
005663d4  00 30 9a e5                                      ldr r3, [sl]
005663d8  00 30 81 e5                                      str r3, [r1]
005663dc  34 10 94 e5                                      ldr r1, [r4, #0x34]
005663e0  38 30 94 e5                                      ldr r3, [r4, #0x38]
005663e4  04 10 81 e2                                      add r1, r1, #4
005663e8  01 00 53 e1                                      cmp r3, r1
005663ec  34 10 84 e5                                      str r1, [r4, #0x34]
005663f0  2d 00 00 0a                                      beq #0x5664ac
005663f4  04 30 9a e5                                      ldr r3, [sl, #4]
005663f8  00 30 81 e5                                      str r3, [r1]
005663fc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566400  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566404  04 10 81 e2                                      add r1, r1, #4
00566408  01 00 53 e1                                      cmp r3, r1
0056640c  34 10 84 e5                                      str r1, [r4, #0x34]
00566410  2c 00 00 0a                                      beq #0x5664c8
00566414  08 30 9a e5                                      ldr r3, [sl, #8]
00566418  00 30 81 e5                                      str r3, [r1]
0056641c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566420  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566424  04 10 81 e2                                      add r1, r1, #4
00566428  01 00 53 e1                                      cmp r3, r1
0056642c  34 10 84 e5                                      str r1, [r4, #0x34]
00566430  2b 00 00 0a                                      beq #0x5664e4
00566434  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00566438  00 30 81 e5                                      str r3, [r1]
0056643c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566440  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566444  04 10 81 e2                                      add r1, r1, #4
00566448  01 00 53 e1                                      cmp r3, r1
0056644c  34 10 84 e5                                      str r1, [r4, #0x34]
00566450  2a 00 00 0a                                      beq #0x566500
00566454  10 30 9a e5                                      ldr r3, [sl, #0x10]
00566458  00 30 81 e5                                      str r3, [r1]
0056645c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566460  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566464  04 10 81 e2                                      add r1, r1, #4
00566468  01 00 53 e1                                      cmp r3, r1
0056646c  34 10 84 e5                                      str r1, [r4, #0x34]
00566470  29 00 00 0a                                      beq #0x56651c
00566474  14 30 9a e5                                      ldr r3, [sl, #0x14]
00566478  04 00 a0 e1                                      mov r0, r4
0056647c  00 30 81 e5                                      str r3, [r1]
00566480  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566484  04 30 83 e2                                      add r3, r3, #4
00566488  34 30 84 e5                                      str r3, [r4, #0x34]
0056648c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00566490  05 00 a0 e1                                      mov r0, r5
00566494  0a 20 a0 e1                                      mov r2, sl
00566498  1b f6 ff eb                                      bl #0x563d0c
0056649c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005664a0  38 30 94 e5                                      ldr r3, [r4, #0x38]
005664a4  01 00 53 e1                                      cmp r3, r1
005664a8  d1 ff ff 1a                                      bne #0x5663f4
005664ac  05 00 a0 e1                                      mov r0, r5
005664b0  04 20 8a e2                                      add r2, sl, #4
005664b4  14 f6 ff eb                                      bl #0x563d0c
005664b8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005664bc  38 30 94 e5                                      ldr r3, [r4, #0x38]
005664c0  01 00 53 e1                                      cmp r3, r1
005664c4  d2 ff ff 1a                                      bne #0x566414
005664c8  05 00 a0 e1                                      mov r0, r5
005664cc  08 20 8a e2                                      add r2, sl, #8
005664d0  0d f6 ff eb                                      bl #0x563d0c
005664d4  34 10 94 e5                                      ldr r1, [r4, #0x34]
005664d8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005664dc  01 00 53 e1                                      cmp r3, r1
005664e0  d3 ff ff 1a                                      bne #0x566434
005664e4  05 00 a0 e1                                      mov r0, r5
005664e8  0c 20 8a e2                                      add r2, sl, #0xc
005664ec  06 f6 ff eb                                      bl #0x563d0c
005664f0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005664f4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005664f8  01 00 53 e1                                      cmp r3, r1
005664fc  d4 ff ff 1a                                      bne #0x566454
00566500  05 00 a0 e1                                      mov r0, r5
00566504  10 20 8a e2                                      add r2, sl, #0x10
00566508  ff f5 ff eb                                      bl #0x563d0c
0056650c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566510  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566514  01 00 53 e1                                      cmp r3, r1
00566518  d5 ff ff 1a                                      bne #0x566474
0056651c  05 00 a0 e1                                      mov r0, r5
00566520  14 20 8a e2                                      add r2, sl, #0x14
00566524  f8 f5 ff eb                                      bl #0x563d0c
00566528  04 00 a0 e1                                      mov r0, r4
0056652c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566530  68 e7 42 00 44 2c 00 00 18 21 00 00              .byte 0x68, 0xe7, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x0056653c, declared_size=492, range_size=492, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10quaternionEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::quaternion, bool)
; decoder-mode: arm
0056653c  08 d0 4d e2                                      sub sp, sp, #8
00566540  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00566544  d0 61 9f e5                                      ldr r6, [pc, #0x1d0]
00566548  d0 e1 9f e5                                      ldr lr, [pc, #0x1d0]
0056654c  00 50 a0 e1                                      mov r5, r0
00566550  06 60 8f e0                                      add r6, pc, r6
00566554  0e e0 96 e7                                      ldr lr, [r6, lr]
00566558  01 c0 a0 e3                                      mov ip, #1
0056655c  1c d0 4d e2                                      sub sp, sp, #0x1c
00566560  08 e0 8e e2                                      add lr, lr, #8
00566564  04 c0 80 e5                                      str ip, [r0, #4]
00566568  08 e0 85 e4                                      str lr, [r5], #8
0056656c  40 20 8d e5                                      str r2, [sp, #0x40]
00566570  44 30 8d e5                                      str r3, [sp, #0x44]
00566574  18 50 80 e5                                      str r5, [r0, #0x18]
00566578  1c 50 80 e5                                      str r5, [r0, #0x1c]
0056657c  50 30 dd e5                                      ldrb r3, [sp, #0x50]
00566580  00 40 a0 e1                                      mov r4, r0
00566584  01 b0 a0 e1                                      mov fp, r1
00566588  05 00 a0 e1                                      mov r0, r5
0056658c  10 10 a0 e3                                      mov r1, #0x10
00566590  40 a0 9d e5                                      ldr sl, [sp, #0x40]
00566594  04 30 8d e5                                      str r3, [sp, #4]
00566598  00 c0 8d e5                                      str ip, [sp]
0056659c  44 80 9d e5                                      ldr r8, [sp, #0x44]
005665a0  48 70 9d e5                                      ldr r7, [sp, #0x48]
005665a4  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005665a8  fe e8 f6 eb                                      bl #0x3209a8
005665ac  18 00 94 e5                                      ldr r0, [r4, #0x18]
005665b0  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
005665b4  00 20 a0 e3                                      mov r2, #0
005665b8  00 20 c0 e5                                      strb r2, [r0]
005665bc  04 30 9d e5                                      ldr r3, [sp, #4]
005665c0  01 10 96 e7                                      ldr r1, [r6, r1]
005665c4  38 20 84 e5                                      str r2, [r4, #0x38]
005665c8  20 30 c4 e5                                      strb r3, [r4, #0x20]
005665cc  08 10 81 e2                                      add r1, r1, #8
005665d0  04 30 a0 e3                                      mov r3, #4
005665d4  3c 30 84 e5                                      str r3, [r4, #0x3c]
005665d8  00 10 84 e5                                      str r1, [r4]
005665dc  00 c0 9d e5                                      ldr ip, [sp]
005665e0  0b 00 a0 e1                                      mov r0, fp
005665e4  24 20 84 e5                                      str r2, [r4, #0x24]
005665e8  40 c0 c4 e5                                      strb ip, [r4, #0x40]
005665ec  28 20 84 e5                                      str r2, [r4, #0x28]
005665f0  2c 20 84 e5                                      str r2, [r4, #0x2c]
005665f4  30 20 84 e5                                      str r2, [r4, #0x30]
005665f8  34 20 84 e5                                      str r2, [r4, #0x34]
005665fc  14 9e f6 eb                                      bl #0x30de54
00566600  0b 10 a0 e1                                      mov r1, fp
00566604  00 20 8b e0                                      add r2, fp, r0
00566608  05 00 a0 e1                                      mov r0, r5
0056660c  5d e9 f6 eb                                      bl #0x320b88
00566610  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566614  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566618  30 50 84 e2                                      add r5, r4, #0x30
0056661c  14 a0 8d e5                                      str sl, [sp, #0x14]
00566620  03 00 51 e1                                      cmp r1, r3
00566624  20 00 00 0a                                      beq #0x5666ac
00566628  00 a0 81 e5                                      str sl, [r1]
0056662c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566630  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566634  04 10 81 e2                                      add r1, r1, #4
00566638  03 00 51 e1                                      cmp r1, r3
0056663c  34 10 84 e5                                      str r1, [r4, #0x34]
00566640  10 80 8d e5                                      str r8, [sp, #0x10]
00566644  20 00 00 0a                                      beq #0x5666cc
00566648  00 80 81 e5                                      str r8, [r1]
0056664c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566650  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566654  04 10 81 e2                                      add r1, r1, #4
00566658  03 00 51 e1                                      cmp r1, r3
0056665c  34 10 84 e5                                      str r1, [r4, #0x34]
00566660  0c 70 8d e5                                      str r7, [sp, #0xc]
00566664  20 00 00 0a                                      beq #0x5666ec
00566668  00 70 81 e5                                      str r7, [r1]
0056666c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566670  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566674  04 10 81 e2                                      add r1, r1, #4
00566678  03 00 51 e1                                      cmp r1, r3
0056667c  34 10 84 e5                                      str r1, [r4, #0x34]
00566680  08 90 8d e5                                      str sb, [sp, #8]
00566684  20 00 00 0a                                      beq #0x56670c
00566688  00 90 81 e5                                      str sb, [r1]
0056668c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566690  04 30 83 e2                                      add r3, r3, #4
00566694  34 30 84 e5                                      str r3, [r4, #0x34]
00566698  04 00 a0 e1                                      mov r0, r4
0056669c  1c d0 8d e2                                      add sp, sp, #0x1c
005666a0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005666a4  08 d0 8d e2                                      add sp, sp, #8
005666a8  1e ff 2f e1                                      bx lr
005666ac  05 00 a0 e1                                      mov r0, r5
005666b0  14 20 8d e2                                      add r2, sp, #0x14
005666b4  94 f5 ff eb                                      bl #0x563d0c
005666b8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005666bc  38 30 94 e5                                      ldr r3, [r4, #0x38]
005666c0  10 80 8d e5                                      str r8, [sp, #0x10]
005666c4  03 00 51 e1                                      cmp r1, r3
005666c8  de ff ff 1a                                      bne #0x566648
005666cc  05 00 a0 e1                                      mov r0, r5
005666d0  10 20 8d e2                                      add r2, sp, #0x10
005666d4  8c f5 ff eb                                      bl #0x563d0c
005666d8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005666dc  38 30 94 e5                                      ldr r3, [r4, #0x38]
005666e0  0c 70 8d e5                                      str r7, [sp, #0xc]
005666e4  03 00 51 e1                                      cmp r1, r3
005666e8  de ff ff 1a                                      bne #0x566668
005666ec  05 00 a0 e1                                      mov r0, r5
005666f0  0c 20 8d e2                                      add r2, sp, #0xc
005666f4  84 f5 ff eb                                      bl #0x563d0c
005666f8  34 10 94 e5                                      ldr r1, [r4, #0x34]
005666fc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566700  08 90 8d e5                                      str sb, [sp, #8]
00566704  03 00 51 e1                                      cmp r1, r3
00566708  de ff ff 1a                                      bne #0x566688
0056670c  05 00 a0 e1                                      mov r0, r5
00566710  08 20 8d e2                                      add r2, sp, #8
00566714  7c f5 ff eb                                      bl #0x563d0c
00566718  de ff ff ea                                      b #0x566698
; mapping-symbol data/literal pool
0056671c  40 e5 42 00 44 2c 00 00 18 21 00 00              .byte 0x40, 0xe5, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00566728, declared_size=288, range_size=288, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core8CMatrix4IfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::CMatrix4<float>, bool)
; decoder-mode: arm
00566728  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056672c  08 61 9f e5                                      ldr r6, [pc, #0x108]
00566730  08 c1 9f e5                                      ldr ip, [pc, #0x108]
00566734  00 50 a0 e1                                      mov r5, r0
00566738  06 60 8f e0                                      add r6, pc, r6
0056673c  0c c0 96 e7                                      ldr ip, [r6, ip]
00566740  01 90 a0 e3                                      mov sb, #1
00566744  04 90 80 e5                                      str sb, [r0, #4]
00566748  08 c0 8c e2                                      add ip, ip, #8
0056674c  08 c0 85 e4                                      str ip, [r5], #8
00566750  00 40 a0 e1                                      mov r4, r0
00566754  01 70 a0 e1                                      mov r7, r1
00566758  18 50 80 e5                                      str r5, [r0, #0x18]
0056675c  10 10 a0 e3                                      mov r1, #0x10
00566760  1c 50 80 e5                                      str r5, [r0, #0x1c]
00566764  05 00 a0 e1                                      mov r0, r5
00566768  03 b0 a0 e1                                      mov fp, r3
0056676c  02 80 a0 e1                                      mov r8, r2
00566770  8c e8 f6 eb                                      bl #0x3209a8
00566774  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00566778  18 20 94 e5                                      ldr r2, [r4, #0x18]
0056677c  00 a0 a0 e3                                      mov sl, #0
00566780  03 30 96 e7                                      ldr r3, [r6, r3]
00566784  00 a0 c2 e5                                      strb sl, [r2]
00566788  07 00 a0 e1                                      mov r0, r7
0056678c  08 30 83 e2                                      add r3, r3, #8
00566790  00 30 84 e5                                      str r3, [r4]
00566794  10 30 a0 e3                                      mov r3, #0x10
00566798  3c 30 84 e5                                      str r3, [r4, #0x3c]
0056679c  40 90 c4 e5                                      strb sb, [r4, #0x40]
005667a0  20 b0 c4 e5                                      strb fp, [r4, #0x20]
005667a4  24 a0 84 e5                                      str sl, [r4, #0x24]
005667a8  28 a0 84 e5                                      str sl, [r4, #0x28]
005667ac  2c a0 84 e5                                      str sl, [r4, #0x2c]
005667b0  30 a0 84 e5                                      str sl, [r4, #0x30]
005667b4  34 a0 84 e5                                      str sl, [r4, #0x34]
005667b8  38 a0 84 e5                                      str sl, [r4, #0x38]
005667bc  a4 9d f6 eb                                      bl #0x30de54
005667c0  07 10 a0 e1                                      mov r1, r7
005667c4  00 20 87 e0                                      add r2, r7, r0
005667c8  05 00 a0 e1                                      mov r0, r5
005667cc  ed e8 f6 eb                                      bl #0x320b88
005667d0  30 90 84 e2                                      add sb, r4, #0x30
005667d4  0a 70 a0 e1                                      mov r7, sl
005667d8  00 50 a0 e3                                      mov r5, #0
005667dc  0a 61 88 e0                                      add r6, r8, sl, lsl #2
005667e0  40 70 c8 e5                                      strb r7, [r8, #0x40]
005667e4  34 10 94 e5                                      ldr r1, [r4, #0x34]
005667e8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005667ec  05 20 8a e0                                      add r2, sl, r5
005667f0  03 00 51 e1                                      cmp r1, r3
005667f4  0c 00 00 0a                                      beq #0x56682c
005667f8  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
005667fc  00 30 81 e5                                      str r3, [r1]
00566800  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566804  04 30 83 e2                                      add r3, r3, #4
00566808  34 30 84 e5                                      str r3, [r4, #0x34]
0056680c  01 50 85 e2                                      add r5, r5, #1
00566810  04 00 55 e3                                      cmp r5, #4
00566814  f1 ff ff 1a                                      bne #0x5667e0
00566818  04 a0 8a e2                                      add sl, sl, #4
0056681c  10 00 5a e3                                      cmp sl, #0x10
00566820  ec ff ff 1a                                      bne #0x5667d8
00566824  04 00 a0 e1                                      mov r0, r4
00566828  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056682c  02 21 88 e0                                      add r2, r8, r2, lsl #2
00566830  09 00 a0 e1                                      mov r0, sb
00566834  34 f5 ff eb                                      bl #0x563d0c
00566838  f3 ff ff ea                                      b #0x56680c
; mapping-symbol data/literal pool
0056683c  58 e3 42 00 44 2c 00 00 18 21 00 00              .byte 0x58, 0xe3, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x005668ac, declared_size=472, range_size=472, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector4dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector4d<float> const&, bool)
; decoder-mode: arm
005668ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005668b0  c0 61 9f e5                                      ldr r6, [pc, #0x1c0]
005668b4  c0 c1 9f e5                                      ldr ip, [pc, #0x1c0]
005668b8  00 50 a0 e1                                      mov r5, r0
005668bc  06 60 8f e0                                      add r6, pc, r6
005668c0  0c c0 96 e7                                      ldr ip, [r6, ip]
005668c4  01 a0 a0 e3                                      mov sl, #1
005668c8  04 a0 80 e5                                      str sl, [r0, #4]
005668cc  08 c0 8c e2                                      add ip, ip, #8
005668d0  08 c0 85 e4                                      str ip, [r5], #8
005668d4  00 40 a0 e1                                      mov r4, r0
005668d8  10 d0 4d e2                                      sub sp, sp, #0x10
005668dc  01 80 a0 e1                                      mov r8, r1
005668e0  18 50 80 e5                                      str r5, [r0, #0x18]
005668e4  1c 50 80 e5                                      str r5, [r0, #0x1c]
005668e8  10 10 a0 e3                                      mov r1, #0x10
005668ec  05 00 a0 e1                                      mov r0, r5
005668f0  02 70 a0 e1                                      mov r7, r2
005668f4  03 90 a0 e1                                      mov sb, r3
005668f8  2a e8 f6 eb                                      bl #0x3209a8
005668fc  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
00566900  18 10 94 e5                                      ldr r1, [r4, #0x18]
00566904  00 30 a0 e3                                      mov r3, #0
00566908  02 20 96 e7                                      ldr r2, [r6, r2]
0056690c  00 30 c1 e5                                      strb r3, [r1]
00566910  08 00 a0 e1                                      mov r0, r8
00566914  08 20 82 e2                                      add r2, r2, #8
00566918  00 20 84 e5                                      str r2, [r4]
0056691c  04 20 a0 e3                                      mov r2, #4
00566920  38 30 84 e5                                      str r3, [r4, #0x38]
00566924  24 30 84 e5                                      str r3, [r4, #0x24]
00566928  28 30 84 e5                                      str r3, [r4, #0x28]
0056692c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00566930  30 30 84 e5                                      str r3, [r4, #0x30]
00566934  34 30 84 e5                                      str r3, [r4, #0x34]
00566938  3c 20 84 e5                                      str r2, [r4, #0x3c]
0056693c  20 90 c4 e5                                      strb sb, [r4, #0x20]
00566940  40 a0 c4 e5                                      strb sl, [r4, #0x40]
00566944  42 9d f6 eb                                      bl #0x30de54
00566948  08 10 a0 e1                                      mov r1, r8
0056694c  00 20 88 e0                                      add r2, r8, r0
00566950  05 00 a0 e1                                      mov r0, r5
00566954  8b e8 f6 eb                                      bl #0x320b88
00566958  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056695c  38 20 94 e5                                      ldr r2, [r4, #0x38]
00566960  00 30 97 e5                                      ldr r3, [r7]
00566964  30 50 84 e2                                      add r5, r4, #0x30
00566968  02 00 51 e1                                      cmp r1, r2
0056696c  0c 30 8d e5                                      str r3, [sp, #0xc]
00566970  21 00 00 0a                                      beq #0x5669fc
00566974  00 30 81 e5                                      str r3, [r1]
00566978  34 10 94 e5                                      ldr r1, [r4, #0x34]
0056697c  38 20 94 e5                                      ldr r2, [r4, #0x38]
00566980  04 10 81 e2                                      add r1, r1, #4
00566984  34 10 84 e5                                      str r1, [r4, #0x34]
00566988  04 30 97 e5                                      ldr r3, [r7, #4]
0056698c  02 00 51 e1                                      cmp r1, r2
00566990  08 30 8d e5                                      str r3, [sp, #8]
00566994  21 00 00 0a                                      beq #0x566a20
00566998  00 30 81 e5                                      str r3, [r1]
0056699c  34 10 94 e5                                      ldr r1, [r4, #0x34]
005669a0  38 20 94 e5                                      ldr r2, [r4, #0x38]
005669a4  04 10 81 e2                                      add r1, r1, #4
005669a8  34 10 84 e5                                      str r1, [r4, #0x34]
005669ac  08 30 97 e5                                      ldr r3, [r7, #8]
005669b0  02 00 51 e1                                      cmp r1, r2
005669b4  04 30 8d e5                                      str r3, [sp, #4]
005669b8  21 00 00 0a                                      beq #0x566a44
005669bc  00 30 81 e5                                      str r3, [r1]
005669c0  34 10 94 e5                                      ldr r1, [r4, #0x34]
005669c4  38 20 94 e5                                      ldr r2, [r4, #0x38]
005669c8  04 10 81 e2                                      add r1, r1, #4
005669cc  34 10 84 e5                                      str r1, [r4, #0x34]
005669d0  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005669d4  02 00 51 e1                                      cmp r1, r2
005669d8  00 30 8d e5                                      str r3, [sp]
005669dc  21 00 00 0a                                      beq #0x566a68
005669e0  00 30 81 e5                                      str r3, [r1]
005669e4  34 30 94 e5                                      ldr r3, [r4, #0x34]
005669e8  04 30 83 e2                                      add r3, r3, #4
005669ec  34 30 84 e5                                      str r3, [r4, #0x34]
005669f0  04 00 a0 e1                                      mov r0, r4
005669f4  10 d0 8d e2                                      add sp, sp, #0x10
005669f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005669fc  0c 20 8d e2                                      add r2, sp, #0xc
00566a00  05 00 a0 e1                                      mov r0, r5
00566a04  c0 f4 ff eb                                      bl #0x563d0c
00566a08  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566a0c  38 20 94 e5                                      ldr r2, [r4, #0x38]
00566a10  04 30 97 e5                                      ldr r3, [r7, #4]
00566a14  02 00 51 e1                                      cmp r1, r2
00566a18  08 30 8d e5                                      str r3, [sp, #8]
00566a1c  dd ff ff 1a                                      bne #0x566998
00566a20  08 20 8d e2                                      add r2, sp, #8
00566a24  05 00 a0 e1                                      mov r0, r5
00566a28  b7 f4 ff eb                                      bl #0x563d0c
00566a2c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566a30  38 20 94 e5                                      ldr r2, [r4, #0x38]
00566a34  08 30 97 e5                                      ldr r3, [r7, #8]
00566a38  02 00 51 e1                                      cmp r1, r2
00566a3c  04 30 8d e5                                      str r3, [sp, #4]
00566a40  dd ff ff 1a                                      bne #0x5669bc
00566a44  04 20 8d e2                                      add r2, sp, #4
00566a48  05 00 a0 e1                                      mov r0, r5
00566a4c  ae f4 ff eb                                      bl #0x563d0c
00566a50  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566a54  38 20 94 e5                                      ldr r2, [r4, #0x38]
00566a58  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00566a5c  02 00 51 e1                                      cmp r1, r2
00566a60  00 30 8d e5                                      str r3, [sp]
00566a64  dd ff ff 1a                                      bne #0x5669e0
00566a68  05 00 a0 e1                                      mov r0, r5
00566a6c  0d 20 a0 e1                                      mov r2, sp
00566a70  a5 f4 ff eb                                      bl #0x563d0c
00566a74  dd ff ff ea                                      b #0x5669f0
; mapping-symbol data/literal pool
00566a78  d4 e1 42 00 44 2c 00 00 18 21 00 00              .byte 0xd4, 0xe1, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00566a84, declared_size=368, range_size=368, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector3dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector3d<float> const&, bool)
; decoder-mode: arm
00566a84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00566a88  58 61 9f e5                                      ldr r6, [pc, #0x158]
00566a8c  58 c1 9f e5                                      ldr ip, [pc, #0x158]
00566a90  00 50 a0 e1                                      mov r5, r0
00566a94  06 60 8f e0                                      add r6, pc, r6
00566a98  0c c0 96 e7                                      ldr ip, [r6, ip]
00566a9c  01 80 a0 e3                                      mov r8, #1
00566aa0  04 80 80 e5                                      str r8, [r0, #4]
00566aa4  08 c0 8c e2                                      add ip, ip, #8
00566aa8  08 c0 85 e4                                      str ip, [r5], #8
00566aac  00 40 a0 e1                                      mov r4, r0
00566ab0  01 70 a0 e1                                      mov r7, r1
00566ab4  18 50 80 e5                                      str r5, [r0, #0x18]
00566ab8  1c 50 80 e5                                      str r5, [r0, #0x1c]
00566abc  10 10 a0 e3                                      mov r1, #0x10
00566ac0  05 00 a0 e1                                      mov r0, r5
00566ac4  03 90 a0 e1                                      mov sb, r3
00566ac8  02 a0 a0 e1                                      mov sl, r2
00566acc  b5 e7 f6 eb                                      bl #0x3209a8
00566ad0  18 21 9f e5                                      ldr r2, [pc, #0x118]
00566ad4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00566ad8  00 30 a0 e3                                      mov r3, #0
00566adc  02 20 96 e7                                      ldr r2, [r6, r2]
00566ae0  00 30 c1 e5                                      strb r3, [r1]
00566ae4  07 00 a0 e1                                      mov r0, r7
00566ae8  08 20 82 e2                                      add r2, r2, #8
00566aec  00 20 84 e5                                      str r2, [r4]
00566af0  03 20 a0 e3                                      mov r2, #3
00566af4  38 30 84 e5                                      str r3, [r4, #0x38]
00566af8  24 30 84 e5                                      str r3, [r4, #0x24]
00566afc  28 30 84 e5                                      str r3, [r4, #0x28]
00566b00  2c 30 84 e5                                      str r3, [r4, #0x2c]
00566b04  30 30 84 e5                                      str r3, [r4, #0x30]
00566b08  34 30 84 e5                                      str r3, [r4, #0x34]
00566b0c  3c 20 84 e5                                      str r2, [r4, #0x3c]
00566b10  20 90 c4 e5                                      strb sb, [r4, #0x20]
00566b14  40 80 c4 e5                                      strb r8, [r4, #0x40]
00566b18  cd 9c f6 eb                                      bl #0x30de54
00566b1c  07 10 a0 e1                                      mov r1, r7
00566b20  00 20 87 e0                                      add r2, r7, r0
00566b24  05 00 a0 e1                                      mov r0, r5
00566b28  16 e8 f6 eb                                      bl #0x320b88
00566b2c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566b30  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566b34  30 50 84 e2                                      add r5, r4, #0x30
00566b38  03 00 51 e1                                      cmp r1, r3
00566b3c  16 00 00 0a                                      beq #0x566b9c
00566b40  00 30 9a e5                                      ldr r3, [sl]
00566b44  00 30 81 e5                                      str r3, [r1]
00566b48  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566b4c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566b50  04 10 81 e2                                      add r1, r1, #4
00566b54  01 00 53 e1                                      cmp r3, r1
00566b58  34 10 84 e5                                      str r1, [r4, #0x34]
00566b5c  15 00 00 0a                                      beq #0x566bb8
00566b60  04 30 9a e5                                      ldr r3, [sl, #4]
00566b64  00 30 81 e5                                      str r3, [r1]
00566b68  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566b6c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566b70  04 10 81 e2                                      add r1, r1, #4
00566b74  01 00 53 e1                                      cmp r3, r1
00566b78  34 10 84 e5                                      str r1, [r4, #0x34]
00566b7c  14 00 00 0a                                      beq #0x566bd4
00566b80  08 30 9a e5                                      ldr r3, [sl, #8]
00566b84  04 00 a0 e1                                      mov r0, r4
00566b88  00 30 81 e5                                      str r3, [r1]
00566b8c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00566b90  04 30 83 e2                                      add r3, r3, #4
00566b94  34 30 84 e5                                      str r3, [r4, #0x34]
00566b98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00566b9c  05 00 a0 e1                                      mov r0, r5
00566ba0  0a 20 a0 e1                                      mov r2, sl
00566ba4  58 f4 ff eb                                      bl #0x563d0c
00566ba8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566bac  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566bb0  01 00 53 e1                                      cmp r3, r1
00566bb4  e9 ff ff 1a                                      bne #0x566b60
00566bb8  05 00 a0 e1                                      mov r0, r5
00566bbc  04 20 8a e2                                      add r2, sl, #4
00566bc0  51 f4 ff eb                                      bl #0x563d0c
00566bc4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00566bc8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00566bcc  01 00 53 e1                                      cmp r3, r1
00566bd0  ea ff ff 1a                                      bne #0x566b80
00566bd4  05 00 a0 e1                                      mov r0, r5
00566bd8  08 20 8a e2                                      add r2, sl, #8
00566bdc  4a f4 ff eb                                      bl #0x563d0c
00566be0  04 00 a0 e1                                      mov r0, r4
00566be4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566be8  fc df 42 00 44 2c 00 00 18 21 00 00              .byte 0xfc, 0xdf, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00567340, declared_size=428, range_size=428, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core4rectIiEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::rect<int>, bool)
; decoder-mode: arm
00567340  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00567344  94 61 9f e5                                      ldr r6, [pc, #0x194]
00567348  94 c1 9f e5                                      ldr ip, [pc, #0x194]
0056734c  00 40 a0 e1                                      mov r4, r0
00567350  06 60 8f e0                                      add r6, pc, r6
00567354  0c c0 96 e7                                      ldr ip, [r6, ip]
00567358  00 50 a0 e1                                      mov r5, r0
0056735c  01 00 a0 e3                                      mov r0, #1
00567360  08 c0 8c e2                                      add ip, ip, #8
00567364  04 00 84 e5                                      str r0, [r4, #4]
00567368  08 c0 85 e4                                      str ip, [r5], #8
0056736c  01 70 a0 e1                                      mov r7, r1
00567370  05 00 a0 e1                                      mov r0, r5
00567374  18 50 84 e5                                      str r5, [r4, #0x18]
00567378  1c 50 84 e5                                      str r5, [r4, #0x1c]
0056737c  10 10 a0 e3                                      mov r1, #0x10
00567380  03 a0 a0 e1                                      mov sl, r3
00567384  02 80 a0 e1                                      mov r8, r2
00567388  86 e5 f6 eb                                      bl #0x3209a8
0056738c  54 21 9f e5                                      ldr r2, [pc, #0x154]
00567390  18 10 94 e5                                      ldr r1, [r4, #0x18]
00567394  00 30 a0 e3                                      mov r3, #0
00567398  02 20 96 e7                                      ldr r2, [r6, r2]
0056739c  00 30 c1 e5                                      strb r3, [r1]
005673a0  07 00 a0 e1                                      mov r0, r7
005673a4  08 20 82 e2                                      add r2, r2, #8
005673a8  00 20 84 e5                                      str r2, [r4]
005673ac  04 20 a0 e3                                      mov r2, #4
005673b0  40 30 c4 e5                                      strb r3, [r4, #0x40]
005673b4  24 30 84 e5                                      str r3, [r4, #0x24]
005673b8  28 30 84 e5                                      str r3, [r4, #0x28]
005673bc  2c 30 84 e5                                      str r3, [r4, #0x2c]
005673c0  30 30 84 e5                                      str r3, [r4, #0x30]
005673c4  34 30 84 e5                                      str r3, [r4, #0x34]
005673c8  38 30 84 e5                                      str r3, [r4, #0x38]
005673cc  3c 20 84 e5                                      str r2, [r4, #0x3c]
005673d0  20 a0 c4 e5                                      strb sl, [r4, #0x20]
005673d4  9e 9a f6 eb                                      bl #0x30de54
005673d8  07 10 a0 e1                                      mov r1, r7
005673dc  00 20 87 e0                                      add r2, r7, r0
005673e0  05 00 a0 e1                                      mov r0, r5
005673e4  e7 e5 f6 eb                                      bl #0x320b88
005673e8  28 10 94 e5                                      ldr r1, [r4, #0x28]
005673ec  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005673f0  24 50 84 e2                                      add r5, r4, #0x24
005673f4  03 00 51 e1                                      cmp r1, r3
005673f8  1e 00 00 0a                                      beq #0x567478
005673fc  00 30 98 e5                                      ldr r3, [r8]
00567400  00 30 81 e5                                      str r3, [r1]
00567404  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567408  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0056740c  04 10 81 e2                                      add r1, r1, #4
00567410  01 00 53 e1                                      cmp r3, r1
00567414  28 10 84 e5                                      str r1, [r4, #0x28]
00567418  1d 00 00 0a                                      beq #0x567494
0056741c  04 30 98 e5                                      ldr r3, [r8, #4]
00567420  00 30 81 e5                                      str r3, [r1]
00567424  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567428  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0056742c  04 10 81 e2                                      add r1, r1, #4
00567430  01 00 53 e1                                      cmp r3, r1
00567434  28 10 84 e5                                      str r1, [r4, #0x28]
00567438  1c 00 00 0a                                      beq #0x5674b0
0056743c  08 30 98 e5                                      ldr r3, [r8, #8]
00567440  00 30 81 e5                                      str r3, [r1]
00567444  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567448  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0056744c  04 10 81 e2                                      add r1, r1, #4
00567450  01 00 53 e1                                      cmp r3, r1
00567454  28 10 84 e5                                      str r1, [r4, #0x28]
00567458  1b 00 00 0a                                      beq #0x5674cc
0056745c  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00567460  04 00 a0 e1                                      mov r0, r4
00567464  00 30 81 e5                                      str r3, [r1]
00567468  28 30 94 e5                                      ldr r3, [r4, #0x28]
0056746c  04 30 83 e2                                      add r3, r3, #4
00567470  28 30 84 e5                                      str r3, [r4, #0x28]
00567474  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00567478  05 00 a0 e1                                      mov r0, r5
0056747c  08 20 a0 e1                                      mov r2, r8
00567480  fd f1 ff eb                                      bl #0x563c7c
00567484  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567488  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0056748c  01 00 53 e1                                      cmp r3, r1
00567490  e1 ff ff 1a                                      bne #0x56741c
00567494  05 00 a0 e1                                      mov r0, r5
00567498  04 20 88 e2                                      add r2, r8, #4
0056749c  f6 f1 ff eb                                      bl #0x563c7c
005674a0  28 10 94 e5                                      ldr r1, [r4, #0x28]
005674a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005674a8  01 00 53 e1                                      cmp r3, r1
005674ac  e2 ff ff 1a                                      bne #0x56743c
005674b0  05 00 a0 e1                                      mov r0, r5
005674b4  08 20 88 e2                                      add r2, r8, #8
005674b8  ef f1 ff eb                                      bl #0x563c7c
005674bc  28 10 94 e5                                      ldr r1, [r4, #0x28]
005674c0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005674c4  01 00 53 e1                                      cmp r3, r1
005674c8  e3 ff ff 1a                                      bne #0x56745c
005674cc  05 00 a0 e1                                      mov r0, r5
005674d0  0c 20 88 e2                                      add r2, r8, #0xc
005674d4  e8 f1 ff eb                                      bl #0x563c7c
005674d8  04 00 a0 e1                                      mov r0, r4
005674dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005674e0  40 d7 42 00 44 2c 00 00 18 21 00 00              .byte 0x40, 0xd7, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x005674ec, declared_size=308, range_size=308, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10position2dIiEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::position2d<int>, bool)
; decoder-mode: arm
005674ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005674f0  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
005674f4  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
005674f8  00 40 a0 e1                                      mov r4, r0
005674fc  06 60 8f e0                                      add r6, pc, r6
00567500  0c c0 96 e7                                      ldr ip, [r6, ip]
00567504  00 50 a0 e1                                      mov r5, r0
00567508  01 00 a0 e3                                      mov r0, #1
0056750c  08 c0 8c e2                                      add ip, ip, #8
00567510  04 00 84 e5                                      str r0, [r4, #4]
00567514  08 c0 85 e4                                      str ip, [r5], #8
00567518  01 70 a0 e1                                      mov r7, r1
0056751c  05 00 a0 e1                                      mov r0, r5
00567520  18 50 84 e5                                      str r5, [r4, #0x18]
00567524  1c 50 84 e5                                      str r5, [r4, #0x1c]
00567528  10 10 a0 e3                                      mov r1, #0x10
0056752c  03 a0 a0 e1                                      mov sl, r3
00567530  02 80 a0 e1                                      mov r8, r2
00567534  1b e5 f6 eb                                      bl #0x3209a8
00567538  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0056753c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00567540  00 30 a0 e3                                      mov r3, #0
00567544  02 20 96 e7                                      ldr r2, [r6, r2]
00567548  00 30 c1 e5                                      strb r3, [r1]
0056754c  07 00 a0 e1                                      mov r0, r7
00567550  08 20 82 e2                                      add r2, r2, #8
00567554  00 20 84 e5                                      str r2, [r4]
00567558  02 20 a0 e3                                      mov r2, #2
0056755c  40 30 c4 e5                                      strb r3, [r4, #0x40]
00567560  24 30 84 e5                                      str r3, [r4, #0x24]
00567564  28 30 84 e5                                      str r3, [r4, #0x28]
00567568  2c 30 84 e5                                      str r3, [r4, #0x2c]
0056756c  30 30 84 e5                                      str r3, [r4, #0x30]
00567570  34 30 84 e5                                      str r3, [r4, #0x34]
00567574  38 30 84 e5                                      str r3, [r4, #0x38]
00567578  3c 20 84 e5                                      str r2, [r4, #0x3c]
0056757c  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00567580  33 9a f6 eb                                      bl #0x30de54
00567584  07 10 a0 e1                                      mov r1, r7
00567588  00 20 87 e0                                      add r2, r7, r0
0056758c  05 00 a0 e1                                      mov r0, r5
00567590  7c e5 f6 eb                                      bl #0x320b88
00567594  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567598  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0056759c  24 50 84 e2                                      add r5, r4, #0x24
005675a0  03 00 51 e1                                      cmp r1, r3
005675a4  0e 00 00 0a                                      beq #0x5675e4
005675a8  00 30 98 e5                                      ldr r3, [r8]
005675ac  00 30 81 e5                                      str r3, [r1]
005675b0  28 10 94 e5                                      ldr r1, [r4, #0x28]
005675b4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005675b8  04 10 81 e2                                      add r1, r1, #4
005675bc  01 00 53 e1                                      cmp r3, r1
005675c0  28 10 84 e5                                      str r1, [r4, #0x28]
005675c4  0d 00 00 0a                                      beq #0x567600
005675c8  04 30 98 e5                                      ldr r3, [r8, #4]
005675cc  04 00 a0 e1                                      mov r0, r4
005675d0  00 30 81 e5                                      str r3, [r1]
005675d4  28 30 94 e5                                      ldr r3, [r4, #0x28]
005675d8  04 30 83 e2                                      add r3, r3, #4
005675dc  28 30 84 e5                                      str r3, [r4, #0x28]
005675e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005675e4  05 00 a0 e1                                      mov r0, r5
005675e8  08 20 a0 e1                                      mov r2, r8
005675ec  a2 f1 ff eb                                      bl #0x563c7c
005675f0  28 10 94 e5                                      ldr r1, [r4, #0x28]
005675f4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005675f8  01 00 53 e1                                      cmp r3, r1
005675fc  f1 ff ff 1a                                      bne #0x5675c8
00567600  05 00 a0 e1                                      mov r0, r5
00567604  04 20 88 e2                                      add r2, r8, #4
00567608  9b f1 ff eb                                      bl #0x563c7c
0056760c  04 00 a0 e1                                      mov r0, r4
00567610  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567614  94 d5 42 00 44 2c 00 00 18 21 00 00              .byte 0x94, 0xd5, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00567620, declared_size=472, range_size=472, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector4dIiEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector4d<int> const&, bool)
; decoder-mode: arm
00567620  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00567624  c0 61 9f e5                                      ldr r6, [pc, #0x1c0]
00567628  c0 c1 9f e5                                      ldr ip, [pc, #0x1c0]
0056762c  00 40 a0 e1                                      mov r4, r0
00567630  06 60 8f e0                                      add r6, pc, r6
00567634  0c c0 96 e7                                      ldr ip, [r6, ip]
00567638  00 50 a0 e1                                      mov r5, r0
0056763c  01 00 a0 e3                                      mov r0, #1
00567640  08 c0 8c e2                                      add ip, ip, #8
00567644  04 00 84 e5                                      str r0, [r4, #4]
00567648  08 c0 85 e4                                      str ip, [r5], #8
0056764c  14 d0 4d e2                                      sub sp, sp, #0x14
00567650  01 80 a0 e1                                      mov r8, r1
00567654  05 00 a0 e1                                      mov r0, r5
00567658  18 50 84 e5                                      str r5, [r4, #0x18]
0056765c  1c 50 84 e5                                      str r5, [r4, #0x1c]
00567660  10 10 a0 e3                                      mov r1, #0x10
00567664  02 70 a0 e1                                      mov r7, r2
00567668  03 a0 a0 e1                                      mov sl, r3
0056766c  cd e4 f6 eb                                      bl #0x3209a8
00567670  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
00567674  18 10 94 e5                                      ldr r1, [r4, #0x18]
00567678  00 30 a0 e3                                      mov r3, #0
0056767c  02 20 96 e7                                      ldr r2, [r6, r2]
00567680  00 30 c1 e5                                      strb r3, [r1]
00567684  08 00 a0 e1                                      mov r0, r8
00567688  08 20 82 e2                                      add r2, r2, #8
0056768c  00 20 84 e5                                      str r2, [r4]
00567690  04 20 a0 e3                                      mov r2, #4
00567694  40 30 c4 e5                                      strb r3, [r4, #0x40]
00567698  24 30 84 e5                                      str r3, [r4, #0x24]
0056769c  28 30 84 e5                                      str r3, [r4, #0x28]
005676a0  2c 30 84 e5                                      str r3, [r4, #0x2c]
005676a4  30 30 84 e5                                      str r3, [r4, #0x30]
005676a8  34 30 84 e5                                      str r3, [r4, #0x34]
005676ac  38 30 84 e5                                      str r3, [r4, #0x38]
005676b0  3c 20 84 e5                                      str r2, [r4, #0x3c]
005676b4  20 a0 c4 e5                                      strb sl, [r4, #0x20]
005676b8  e5 99 f6 eb                                      bl #0x30de54
005676bc  08 10 a0 e1                                      mov r1, r8
005676c0  00 20 88 e0                                      add r2, r8, r0
005676c4  05 00 a0 e1                                      mov r0, r5
005676c8  2e e5 f6 eb                                      bl #0x320b88
005676cc  28 10 94 e5                                      ldr r1, [r4, #0x28]
005676d0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005676d4  00 30 97 e5                                      ldr r3, [r7]
005676d8  24 50 84 e2                                      add r5, r4, #0x24
005676dc  02 00 51 e1                                      cmp r1, r2
005676e0  0c 30 8d e5                                      str r3, [sp, #0xc]
005676e4  21 00 00 0a                                      beq #0x567770
005676e8  00 30 81 e5                                      str r3, [r1]
005676ec  28 10 94 e5                                      ldr r1, [r4, #0x28]
005676f0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005676f4  04 10 81 e2                                      add r1, r1, #4
005676f8  28 10 84 e5                                      str r1, [r4, #0x28]
005676fc  04 30 97 e5                                      ldr r3, [r7, #4]
00567700  02 00 51 e1                                      cmp r1, r2
00567704  08 30 8d e5                                      str r3, [sp, #8]
00567708  21 00 00 0a                                      beq #0x567794
0056770c  00 30 81 e5                                      str r3, [r1]
00567710  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567714  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00567718  04 10 81 e2                                      add r1, r1, #4
0056771c  28 10 84 e5                                      str r1, [r4, #0x28]
00567720  08 30 97 e5                                      ldr r3, [r7, #8]
00567724  02 00 51 e1                                      cmp r1, r2
00567728  04 30 8d e5                                      str r3, [sp, #4]
0056772c  21 00 00 0a                                      beq #0x5677b8
00567730  00 30 81 e5                                      str r3, [r1]
00567734  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567738  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0056773c  04 10 81 e2                                      add r1, r1, #4
00567740  28 10 84 e5                                      str r1, [r4, #0x28]
00567744  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00567748  02 00 51 e1                                      cmp r1, r2
0056774c  00 30 8d e5                                      str r3, [sp]
00567750  21 00 00 0a                                      beq #0x5677dc
00567754  00 30 81 e5                                      str r3, [r1]
00567758  28 30 94 e5                                      ldr r3, [r4, #0x28]
0056775c  04 30 83 e2                                      add r3, r3, #4
00567760  28 30 84 e5                                      str r3, [r4, #0x28]
00567764  04 00 a0 e1                                      mov r0, r4
00567768  14 d0 8d e2                                      add sp, sp, #0x14
0056776c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00567770  0c 20 8d e2                                      add r2, sp, #0xc
00567774  05 00 a0 e1                                      mov r0, r5
00567778  3f f1 ff eb                                      bl #0x563c7c
0056777c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567780  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00567784  04 30 97 e5                                      ldr r3, [r7, #4]
00567788  02 00 51 e1                                      cmp r1, r2
0056778c  08 30 8d e5                                      str r3, [sp, #8]
00567790  dd ff ff 1a                                      bne #0x56770c
00567794  08 20 8d e2                                      add r2, sp, #8
00567798  05 00 a0 e1                                      mov r0, r5
0056779c  36 f1 ff eb                                      bl #0x563c7c
005677a0  28 10 94 e5                                      ldr r1, [r4, #0x28]
005677a4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005677a8  08 30 97 e5                                      ldr r3, [r7, #8]
005677ac  02 00 51 e1                                      cmp r1, r2
005677b0  04 30 8d e5                                      str r3, [sp, #4]
005677b4  dd ff ff 1a                                      bne #0x567730
005677b8  04 20 8d e2                                      add r2, sp, #4
005677bc  05 00 a0 e1                                      mov r0, r5
005677c0  2d f1 ff eb                                      bl #0x563c7c
005677c4  28 10 94 e5                                      ldr r1, [r4, #0x28]
005677c8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005677cc  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005677d0  02 00 51 e1                                      cmp r1, r2
005677d4  00 30 8d e5                                      str r3, [sp]
005677d8  dd ff ff 1a                                      bne #0x567754
005677dc  05 00 a0 e1                                      mov r0, r5
005677e0  0d 20 a0 e1                                      mov r2, sp
005677e4  24 f1 ff eb                                      bl #0x563c7c
005677e8  dd ff ff ea                                      b #0x567764
; mapping-symbol data/literal pool
005677ec  60 d4 42 00 44 2c 00 00 18 21 00 00              .byte 0x60, 0xd4, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x005677f8, declared_size=368, range_size=368, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector3dIiEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector3d<int> const&, bool)
; decoder-mode: arm
005677f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005677fc  58 61 9f e5                                      ldr r6, [pc, #0x158]
00567800  58 c1 9f e5                                      ldr ip, [pc, #0x158]
00567804  00 40 a0 e1                                      mov r4, r0
00567808  06 60 8f e0                                      add r6, pc, r6
0056780c  0c c0 96 e7                                      ldr ip, [r6, ip]
00567810  00 50 a0 e1                                      mov r5, r0
00567814  01 00 a0 e3                                      mov r0, #1
00567818  08 c0 8c e2                                      add ip, ip, #8
0056781c  04 00 84 e5                                      str r0, [r4, #4]
00567820  08 c0 85 e4                                      str ip, [r5], #8
00567824  01 70 a0 e1                                      mov r7, r1
00567828  05 00 a0 e1                                      mov r0, r5
0056782c  18 50 84 e5                                      str r5, [r4, #0x18]
00567830  1c 50 84 e5                                      str r5, [r4, #0x1c]
00567834  10 10 a0 e3                                      mov r1, #0x10
00567838  03 a0 a0 e1                                      mov sl, r3
0056783c  02 80 a0 e1                                      mov r8, r2
00567840  58 e4 f6 eb                                      bl #0x3209a8
00567844  18 21 9f e5                                      ldr r2, [pc, #0x118]
00567848  18 10 94 e5                                      ldr r1, [r4, #0x18]
0056784c  00 30 a0 e3                                      mov r3, #0
00567850  02 20 96 e7                                      ldr r2, [r6, r2]
00567854  00 30 c1 e5                                      strb r3, [r1]
00567858  07 00 a0 e1                                      mov r0, r7
0056785c  08 20 82 e2                                      add r2, r2, #8
00567860  00 20 84 e5                                      str r2, [r4]
00567864  03 20 a0 e3                                      mov r2, #3
00567868  40 30 c4 e5                                      strb r3, [r4, #0x40]
0056786c  24 30 84 e5                                      str r3, [r4, #0x24]
00567870  28 30 84 e5                                      str r3, [r4, #0x28]
00567874  2c 30 84 e5                                      str r3, [r4, #0x2c]
00567878  30 30 84 e5                                      str r3, [r4, #0x30]
0056787c  34 30 84 e5                                      str r3, [r4, #0x34]
00567880  38 30 84 e5                                      str r3, [r4, #0x38]
00567884  3c 20 84 e5                                      str r2, [r4, #0x3c]
00567888  20 a0 c4 e5                                      strb sl, [r4, #0x20]
0056788c  70 99 f6 eb                                      bl #0x30de54
00567890  07 10 a0 e1                                      mov r1, r7
00567894  00 20 87 e0                                      add r2, r7, r0
00567898  05 00 a0 e1                                      mov r0, r5
0056789c  b9 e4 f6 eb                                      bl #0x320b88
005678a0  28 10 94 e5                                      ldr r1, [r4, #0x28]
005678a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005678a8  24 50 84 e2                                      add r5, r4, #0x24
005678ac  03 00 51 e1                                      cmp r1, r3
005678b0  16 00 00 0a                                      beq #0x567910
005678b4  00 30 98 e5                                      ldr r3, [r8]
005678b8  00 30 81 e5                                      str r3, [r1]
005678bc  28 10 94 e5                                      ldr r1, [r4, #0x28]
005678c0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005678c4  04 10 81 e2                                      add r1, r1, #4
005678c8  01 00 53 e1                                      cmp r3, r1
005678cc  28 10 84 e5                                      str r1, [r4, #0x28]
005678d0  15 00 00 0a                                      beq #0x56792c
005678d4  04 30 98 e5                                      ldr r3, [r8, #4]
005678d8  00 30 81 e5                                      str r3, [r1]
005678dc  28 10 94 e5                                      ldr r1, [r4, #0x28]
005678e0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005678e4  04 10 81 e2                                      add r1, r1, #4
005678e8  01 00 53 e1                                      cmp r3, r1
005678ec  28 10 84 e5                                      str r1, [r4, #0x28]
005678f0  14 00 00 0a                                      beq #0x567948
005678f4  08 30 98 e5                                      ldr r3, [r8, #8]
005678f8  04 00 a0 e1                                      mov r0, r4
005678fc  00 30 81 e5                                      str r3, [r1]
00567900  28 30 94 e5                                      ldr r3, [r4, #0x28]
00567904  04 30 83 e2                                      add r3, r3, #4
00567908  28 30 84 e5                                      str r3, [r4, #0x28]
0056790c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00567910  05 00 a0 e1                                      mov r0, r5
00567914  08 20 a0 e1                                      mov r2, r8
00567918  d7 f0 ff eb                                      bl #0x563c7c
0056791c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567920  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00567924  01 00 53 e1                                      cmp r3, r1
00567928  e9 ff ff 1a                                      bne #0x5678d4
0056792c  05 00 a0 e1                                      mov r0, r5
00567930  04 20 88 e2                                      add r2, r8, #4
00567934  d0 f0 ff eb                                      bl #0x563c7c
00567938  28 10 94 e5                                      ldr r1, [r4, #0x28]
0056793c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00567940  01 00 53 e1                                      cmp r3, r1
00567944  ea ff ff 1a                                      bne #0x5678f4
00567948  05 00 a0 e1                                      mov r0, r5
0056794c  08 20 88 e2                                      add r2, r8, #8
00567950  c9 f0 ff eb                                      bl #0x563c7c
00567954  04 00 a0 e1                                      mov r0, r4
00567958  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0056795c  88 d2 42 00 44 2c 00 00 18 21 00 00              .byte 0x88, 0xd2, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00567968, declared_size=308, range_size=308, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector2dIiEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::vector2d<int> const&, bool)
; decoder-mode: arm
00567968  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056796c  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
00567970  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
00567974  00 40 a0 e1                                      mov r4, r0
00567978  06 60 8f e0                                      add r6, pc, r6
0056797c  0c c0 96 e7                                      ldr ip, [r6, ip]
00567980  00 50 a0 e1                                      mov r5, r0
00567984  01 00 a0 e3                                      mov r0, #1
00567988  08 c0 8c e2                                      add ip, ip, #8
0056798c  04 00 84 e5                                      str r0, [r4, #4]
00567990  08 c0 85 e4                                      str ip, [r5], #8
00567994  01 70 a0 e1                                      mov r7, r1
00567998  05 00 a0 e1                                      mov r0, r5
0056799c  18 50 84 e5                                      str r5, [r4, #0x18]
005679a0  1c 50 84 e5                                      str r5, [r4, #0x1c]
005679a4  10 10 a0 e3                                      mov r1, #0x10
005679a8  03 a0 a0 e1                                      mov sl, r3
005679ac  02 80 a0 e1                                      mov r8, r2
005679b0  fc e3 f6 eb                                      bl #0x3209a8
005679b4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005679b8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005679bc  00 30 a0 e3                                      mov r3, #0
005679c0  02 20 96 e7                                      ldr r2, [r6, r2]
005679c4  00 30 c1 e5                                      strb r3, [r1]
005679c8  07 00 a0 e1                                      mov r0, r7
005679cc  08 20 82 e2                                      add r2, r2, #8
005679d0  00 20 84 e5                                      str r2, [r4]
005679d4  02 20 a0 e3                                      mov r2, #2
005679d8  40 30 c4 e5                                      strb r3, [r4, #0x40]
005679dc  24 30 84 e5                                      str r3, [r4, #0x24]
005679e0  28 30 84 e5                                      str r3, [r4, #0x28]
005679e4  2c 30 84 e5                                      str r3, [r4, #0x2c]
005679e8  30 30 84 e5                                      str r3, [r4, #0x30]
005679ec  34 30 84 e5                                      str r3, [r4, #0x34]
005679f0  38 30 84 e5                                      str r3, [r4, #0x38]
005679f4  3c 20 84 e5                                      str r2, [r4, #0x3c]
005679f8  20 a0 c4 e5                                      strb sl, [r4, #0x20]
005679fc  14 99 f6 eb                                      bl #0x30de54
00567a00  07 10 a0 e1                                      mov r1, r7
00567a04  00 20 87 e0                                      add r2, r7, r0
00567a08  05 00 a0 e1                                      mov r0, r5
00567a0c  5d e4 f6 eb                                      bl #0x320b88
00567a10  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567a14  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00567a18  24 50 84 e2                                      add r5, r4, #0x24
00567a1c  03 00 51 e1                                      cmp r1, r3
00567a20  0e 00 00 0a                                      beq #0x567a60
00567a24  00 30 98 e5                                      ldr r3, [r8]
00567a28  00 30 81 e5                                      str r3, [r1]
00567a2c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567a30  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00567a34  04 10 81 e2                                      add r1, r1, #4
00567a38  01 00 53 e1                                      cmp r3, r1
00567a3c  28 10 84 e5                                      str r1, [r4, #0x28]
00567a40  0d 00 00 0a                                      beq #0x567a7c
00567a44  04 30 98 e5                                      ldr r3, [r8, #4]
00567a48  04 00 a0 e1                                      mov r0, r4
00567a4c  00 30 81 e5                                      str r3, [r1]
00567a50  28 30 94 e5                                      ldr r3, [r4, #0x28]
00567a54  04 30 83 e2                                      add r3, r3, #4
00567a58  28 30 84 e5                                      str r3, [r4, #0x28]
00567a5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00567a60  05 00 a0 e1                                      mov r0, r5
00567a64  08 20 a0 e1                                      mov r2, r8
00567a68  83 f0 ff eb                                      bl #0x563c7c
00567a6c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00567a70  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00567a74  01 00 53 e1                                      cmp r3, r1
00567a78  f1 ff ff 1a                                      bne #0x567a44
00567a7c  05 00 a0 e1                                      mov r0, r5
00567a80  04 20 88 e2                                      add r2, r8, #4
00567a84  7c f0 ff eb                                      bl #0x563c7c
00567a88  04 00 a0 e1                                      mov r0, r4
00567a8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567a90  18 d1 42 00 44 2c 00 00 18 21 00 00              .byte 0x18, 0xd1, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00

; FUNCTION 0x00567b3c, declared_size=548, range_size=548, mode=arm
; class-group: glitch::io::CNumbersAttribute
; alias: _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core6line3dIfEEb
; demangled: glitch::io::CNumbersAttribute::CNumbersAttribute(char const*, glitch::core::line3d<float>, bool)
; decoder-mode: arm
00567b3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00567b40  0c 62 9f e5                                      ldr r6, [pc, #0x20c]
00567b44  0c c2 9f e5                                      ldr ip, [pc, #0x20c]
00567b48  00 50 a0 e1                                      mov r5, r0
00567b4c  06 60 8f e0                                      add r6, pc, r6
00567b50  0c c0 96 e7                                      ldr ip, [r6, ip]
00567b54  01 80 a0 e3                                      mov r8, #1
00567b58  04 80 80 e5                                      str r8, [r0, #4]
00567b5c  08 c0 8c e2                                      add ip, ip, #8
00567b60  08 c0 85 e4                                      str ip, [r5], #8
00567b64  00 40 a0 e1                                      mov r4, r0
00567b68  01 70 a0 e1                                      mov r7, r1
00567b6c  18 50 80 e5                                      str r5, [r0, #0x18]
00567b70  1c 50 80 e5                                      str r5, [r0, #0x1c]
00567b74  10 10 a0 e3                                      mov r1, #0x10
00567b78  05 00 a0 e1                                      mov r0, r5
00567b7c  03 90 a0 e1                                      mov sb, r3
00567b80  02 a0 a0 e1                                      mov sl, r2
00567b84  87 e3 f6 eb                                      bl #0x3209a8
00567b88  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
00567b8c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00567b90  00 30 a0 e3                                      mov r3, #0
00567b94  02 20 96 e7                                      ldr r2, [r6, r2]
00567b98  00 30 c1 e5                                      strb r3, [r1]
00567b9c  07 00 a0 e1                                      mov r0, r7
00567ba0  08 20 82 e2                                      add r2, r2, #8
00567ba4  00 20 84 e5                                      str r2, [r4]
00567ba8  06 20 a0 e3                                      mov r2, #6
00567bac  38 30 84 e5                                      str r3, [r4, #0x38]
00567bb0  24 30 84 e5                                      str r3, [r4, #0x24]
00567bb4  28 30 84 e5                                      str r3, [r4, #0x28]
00567bb8  2c 30 84 e5                                      str r3, [r4, #0x2c]
00567bbc  30 30 84 e5                                      str r3, [r4, #0x30]
00567bc0  34 30 84 e5                                      str r3, [r4, #0x34]
00567bc4  3c 20 84 e5                                      str r2, [r4, #0x3c]
00567bc8  20 90 c4 e5                                      strb sb, [r4, #0x20]
00567bcc  40 80 c4 e5                                      strb r8, [r4, #0x40]
00567bd0  9f 98 f6 eb                                      bl #0x30de54
00567bd4  07 10 a0 e1                                      mov r1, r7
00567bd8  00 20 87 e0                                      add r2, r7, r0
00567bdc  05 00 a0 e1                                      mov r0, r5
00567be0  e8 e3 f6 eb                                      bl #0x320b88
00567be4  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567be8  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567bec  30 50 84 e2                                      add r5, r4, #0x30
00567bf0  03 00 51 e1                                      cmp r1, r3
00567bf4  2e 00 00 0a                                      beq #0x567cb4
00567bf8  00 30 9a e5                                      ldr r3, [sl]
00567bfc  00 30 81 e5                                      str r3, [r1]
00567c00  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567c04  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567c08  04 10 81 e2                                      add r1, r1, #4
00567c0c  01 00 53 e1                                      cmp r3, r1
00567c10  34 10 84 e5                                      str r1, [r4, #0x34]
00567c14  2d 00 00 0a                                      beq #0x567cd0
00567c18  04 30 9a e5                                      ldr r3, [sl, #4]
00567c1c  00 30 81 e5                                      str r3, [r1]
00567c20  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567c24  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567c28  04 10 81 e2                                      add r1, r1, #4
00567c2c  01 00 53 e1                                      cmp r3, r1
00567c30  34 10 84 e5                                      str r1, [r4, #0x34]
00567c34  2c 00 00 0a                                      beq #0x567cec
00567c38  08 30 9a e5                                      ldr r3, [sl, #8]
00567c3c  00 30 81 e5                                      str r3, [r1]
00567c40  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567c44  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567c48  04 10 81 e2                                      add r1, r1, #4
00567c4c  01 00 53 e1                                      cmp r3, r1
00567c50  34 10 84 e5                                      str r1, [r4, #0x34]
00567c54  2b 00 00 0a                                      beq #0x567d08
00567c58  0c 30 9a e5                                      ldr r3, [sl, #0xc]
00567c5c  00 30 81 e5                                      str r3, [r1]
00567c60  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567c64  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567c68  04 10 81 e2                                      add r1, r1, #4
00567c6c  01 00 53 e1                                      cmp r3, r1
00567c70  34 10 84 e5                                      str r1, [r4, #0x34]
00567c74  2a 00 00 0a                                      beq #0x567d24
00567c78  10 30 9a e5                                      ldr r3, [sl, #0x10]
00567c7c  00 30 81 e5                                      str r3, [r1]
00567c80  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567c84  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567c88  04 10 81 e2                                      add r1, r1, #4
00567c8c  01 00 53 e1                                      cmp r3, r1
00567c90  34 10 84 e5                                      str r1, [r4, #0x34]
00567c94  29 00 00 0a                                      beq #0x567d40
00567c98  14 30 9a e5                                      ldr r3, [sl, #0x14]
00567c9c  04 00 a0 e1                                      mov r0, r4
00567ca0  00 30 81 e5                                      str r3, [r1]
00567ca4  34 30 94 e5                                      ldr r3, [r4, #0x34]
00567ca8  04 30 83 e2                                      add r3, r3, #4
00567cac  34 30 84 e5                                      str r3, [r4, #0x34]
00567cb0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00567cb4  05 00 a0 e1                                      mov r0, r5
00567cb8  0a 20 a0 e1                                      mov r2, sl
00567cbc  12 f0 ff eb                                      bl #0x563d0c
00567cc0  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567cc4  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567cc8  01 00 53 e1                                      cmp r3, r1
00567ccc  d1 ff ff 1a                                      bne #0x567c18
00567cd0  05 00 a0 e1                                      mov r0, r5
00567cd4  04 20 8a e2                                      add r2, sl, #4
00567cd8  0b f0 ff eb                                      bl #0x563d0c
00567cdc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567ce0  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567ce4  01 00 53 e1                                      cmp r3, r1
00567ce8  d2 ff ff 1a                                      bne #0x567c38
00567cec  05 00 a0 e1                                      mov r0, r5
00567cf0  08 20 8a e2                                      add r2, sl, #8
00567cf4  04 f0 ff eb                                      bl #0x563d0c
00567cf8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567cfc  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567d00  01 00 53 e1                                      cmp r3, r1
00567d04  d3 ff ff 1a                                      bne #0x567c58
00567d08  05 00 a0 e1                                      mov r0, r5
00567d0c  0c 20 8a e2                                      add r2, sl, #0xc
00567d10  fd ef ff eb                                      bl #0x563d0c
00567d14  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567d18  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567d1c  01 00 53 e1                                      cmp r3, r1
00567d20  d4 ff ff 1a                                      bne #0x567c78
00567d24  05 00 a0 e1                                      mov r0, r5
00567d28  10 20 8a e2                                      add r2, sl, #0x10
00567d2c  f6 ef ff eb                                      bl #0x563d0c
00567d30  34 10 94 e5                                      ldr r1, [r4, #0x34]
00567d34  38 30 94 e5                                      ldr r3, [r4, #0x38]
00567d38  01 00 53 e1                                      cmp r3, r1
00567d3c  d5 ff ff 1a                                      bne #0x567c98
00567d40  05 00 a0 e1                                      mov r0, r5
00567d44  14 20 8a e2                                      add r2, sl, #0x14
00567d48  ef ef ff eb                                      bl #0x563d0c
00567d4c  04 00 a0 e1                                      mov r0, r4
00567d50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00567d54  44 cf 42 00 44 2c 00 00 18 21 00 00              .byte 0x44, 0xcf, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00
