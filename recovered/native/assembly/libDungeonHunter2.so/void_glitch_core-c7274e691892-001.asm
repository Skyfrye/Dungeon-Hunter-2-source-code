; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350f00, declared_size=192, range_size=192, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5scene13CSceneManager18SDistanceNodeEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::scene::CSceneManager::SDistanceNodeEntry>(glitch::scene::CSceneManager::SDistanceNodeEntry*, int, int)
; decoder-mode: arm
00350f00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00350f04  81 70 a0 e1                                      lsl r7, r1, #1
00350f08  07 00 52 e1                                      cmp r2, r7
00350f0c  0c d0 4d e2                                      sub sp, sp, #0xc
00350f10  01 a0 a0 e1                                      mov sl, r1
00350f14  02 90 a0 e1                                      mov sb, r2
00350f18  00 80 a0 e1                                      mov r8, r0
00350f1c  1b 00 00 ca                                      bgt #0x350f90
00350f20  24 00 00 ea                                      b #0x350fb8
00350f24  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
00350f28  f0 20 cd e1                                      strd r2, r3, [sp]
00350f2c  d0 00 cd e1                                      ldrd r0, r1, [sp]
00350f30  d8 20 c5 e1                                      ldrd r2, r3, [r5, #8]
00350f34  09 f6 fe eb                                      bl #0x30e760
00350f38  00 00 50 e3                                      cmp r0, #0
00350f3c  1b 00 00 0a                                      beq #0x350fb0
00350f40  d8 20 c5 e1                                      ldrd r2, r3, [r5, #8]
00350f44  f0 20 cd e1                                      strd r2, r3, [sp]
00350f48  05 40 a0 e1                                      mov r4, r5
00350f4c  0a 52 88 e0                                      add r5, r8, sl, lsl #4
00350f50  d8 00 c5 e1                                      ldrd r0, r1, [r5, #8]
00350f54  d0 20 cd e1                                      ldrd r2, r3, [sp]
00350f58  00 f6 fe eb                                      bl #0x30e760
00350f5c  00 00 50 e3                                      cmp r0, #0
00350f60  86 70 a0 e1                                      lsl r7, r6, #1
00350f64  13 00 00 0a                                      beq #0x350fb8
00350f68  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00350f6c  00 18 94 e8                                      ldm r4, {fp, ip}
00350f70  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00350f74  09 00 57 e1                                      cmp r7, sb
00350f78  04 c0 85 e5                                      str ip, [r5, #4]
00350f7c  d0 20 cd e1                                      ldrd r2, r3, [sp]
00350f80  f8 20 c5 e1                                      strd r2, r3, [r5, #8]
00350f84  0a b2 88 e7                                      str fp, [r8, sl, lsl #4]
00350f88  06 a0 a0 e1                                      mov sl, r6
00350f8c  09 00 00 aa                                      bge #0x350fb8
00350f90  01 60 87 e2                                      add r6, r7, #1
00350f94  06 00 59 e1                                      cmp sb, r6
00350f98  07 42 88 e0                                      add r4, r8, r7, lsl #4
00350f9c  06 52 88 e0                                      add r5, r8, r6, lsl #4
00350fa0  df ff ff ca                                      bgt #0x350f24
00350fa4  07 42 88 e0                                      add r4, r8, r7, lsl #4
00350fa8  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
00350fac  f0 20 cd e1                                      strd r2, r3, [sp]
00350fb0  07 60 a0 e1                                      mov r6, r7
00350fb4  e4 ff ff ea                                      b #0x350f4c
00350fb8  0c d0 8d e2                                      add sp, sp, #0xc
00350fbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00350fc0, declared_size=140, range_size=140, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5scene13CSceneManager18SDistanceNodeEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(glitch::scene::CSceneManager::SDistanceNodeEntry*, int)
; decoder-mode: arm
00350fc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00350fc4  01 50 41 e2                                      sub r5, r1, #1
00350fc8  a5 8f 85 e0                                      add r8, r5, r5, lsr #31
00350fcc  01 60 a0 e1                                      mov r6, r1
00350fd0  c8 80 b0 e1                                      asrs r8, r8, #1
00350fd4  00 40 a0 e1                                      mov r4, r0
00350fd8  10 70 40 e2                                      sub r7, r0, #0x10
00350fdc  07 00 00 4a                                      bmi #0x351000
00350fe0  01 80 88 e2                                      add r8, r8, #1
00350fe4  01 a0 81 e2                                      add sl, r1, #1
00350fe8  08 10 a0 e1                                      mov r1, r8
00350fec  07 00 a0 e1                                      mov r0, r7
00350ff0  0a 20 a0 e1                                      mov r2, sl
00350ff4  c1 ff ff eb                                      bl #0x350f00
00350ff8  01 80 58 e2                                      subs r8, r8, #1
00350ffc  f9 ff ff 1a                                      bne #0x350fe8
00351000  00 00 55 e3                                      cmp r5, #0
00351004  0f 00 00 ba                                      blt #0x351048
00351008  05 52 84 e0                                      add r5, r4, r5, lsl #4
0035100c  08 50 85 e2                                      add r5, r5, #8
00351010  00 50 94 e8                                      ldm r4, {ip, lr}
00351014  08 30 45 e2                                      sub r3, r5, #8
00351018  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0035101c  d8 80 c4 e1                                      ldrd r8, sb, [r4, #8]
00351020  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00351024  f0 80 c5 e1                                      strd r8, sb, [r5]
00351028  00 50 05 e9                                      stmdb r5, {ip, lr}
0035102c  06 20 a0 e1                                      mov r2, r6
00351030  07 00 a0 e1                                      mov r0, r7
00351034  01 10 a0 e3                                      mov r1, #1
00351038  b0 ff ff eb                                      bl #0x350f00
0035103c  01 60 56 e2                                      subs r6, r6, #1
00351040  10 50 45 e2                                      sub r5, r5, #0x10
00351044  f1 ff ff 1a                                      bne #0x351010
00351048  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0035104c, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5scene13CSceneManager24SRenderDataSortNodeEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, int, int)
; decoder-mode: arm
0035104c  81 30 a0 e1                                      lsl r3, r1, #1
00351050  03 00 52 e1                                      cmp r2, r3
00351054  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00351058  15 00 00 ca                                      bgt #0x3510b4
0035105c  21 00 00 ea                                      b #0x3510e8
00351060  04 60 9c e5                                      ldr r6, [ip, #4]
00351064  04 70 95 e5                                      ldr r7, [r5, #4]
00351068  07 00 56 e1                                      cmp r6, r7
0035106c  17 00 00 2a                                      bhs #0x3510d0
00351070  05 c0 a0 e1                                      mov ip, r5
00351074  81 51 80 e0                                      add r5, r0, r1, lsl #3
00351078  07 60 a0 e1                                      mov r6, r7
0035107c  04 70 95 e5                                      ldr r7, [r5, #4]
00351080  84 30 a0 e1                                      lsl r3, r4, #1
00351084  06 00 57 e1                                      cmp r7, r6
00351088  16 00 00 2a                                      bhs #0x3510e8
0035108c  81 81 90 e7                                      ldr r8, [r0, r1, lsl #3]
00351090  00 70 9c e5                                      ldr r7, [ip]
00351094  02 00 53 e1                                      cmp r3, r2
00351098  00 80 8c e5                                      str r8, [ip]
0035109c  04 80 95 e5                                      ldr r8, [r5, #4]
003510a0  04 80 8c e5                                      str r8, [ip, #4]
003510a4  04 60 85 e5                                      str r6, [r5, #4]
003510a8  81 71 80 e7                                      str r7, [r0, r1, lsl #3]
003510ac  04 10 a0 e1                                      mov r1, r4
003510b0  0c 00 00 aa                                      bge #0x3510e8
003510b4  01 40 83 e2                                      add r4, r3, #1
003510b8  04 00 52 e1                                      cmp r2, r4
003510bc  83 c1 80 e0                                      add ip, r0, r3, lsl #3
003510c0  84 51 80 e0                                      add r5, r0, r4, lsl #3
003510c4  e5 ff ff ca                                      bgt #0x351060
003510c8  83 c1 80 e0                                      add ip, r0, r3, lsl #3
003510cc  04 60 9c e5                                      ldr r6, [ip, #4]
003510d0  81 51 80 e0                                      add r5, r0, r1, lsl #3
003510d4  04 70 95 e5                                      ldr r7, [r5, #4]
003510d8  03 40 a0 e1                                      mov r4, r3
003510dc  84 30 a0 e1                                      lsl r3, r4, #1
003510e0  06 00 57 e1                                      cmp r7, r6
003510e4  e8 ff ff 3a                                      blo #0x35108c
003510e8  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
003510ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003510f0, declared_size=136, range_size=136, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5scene13CSceneManager24SRenderDataSortNodeEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*, int)
; decoder-mode: arm
003510f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003510f4  01 40 41 e2                                      sub r4, r1, #1
003510f8  a4 7f 84 e0                                      add r7, r4, r4, lsr #31
003510fc  01 60 a0 e1                                      mov r6, r1
00351100  c7 70 b0 e1                                      asrs r7, r7, #1
00351104  00 50 a0 e1                                      mov r5, r0
00351108  08 80 40 e2                                      sub r8, r0, #8
0035110c  07 00 00 4a                                      bmi #0x351130
00351110  01 70 87 e2                                      add r7, r7, #1
00351114  01 a0 81 e2                                      add sl, r1, #1
00351118  07 10 a0 e1                                      mov r1, r7
0035111c  08 00 a0 e1                                      mov r0, r8
00351120  0a 20 a0 e1                                      mov r2, sl
00351124  c8 ff ff eb                                      bl #0x35104c
00351128  01 70 57 e2                                      subs r7, r7, #1
0035112c  f9 ff ff 1a                                      bne #0x351118
00351130  00 00 54 e3                                      cmp r4, #0
00351134  0e 00 00 ba                                      blt #0x351174
00351138  84 41 85 e0                                      add r4, r5, r4, lsl #3
0035113c  00 20 94 e5                                      ldr r2, [r4]
00351140  00 30 95 e5                                      ldr r3, [r5]
00351144  04 10 95 e5                                      ldr r1, [r5, #4]
00351148  00 20 85 e5                                      str r2, [r5]
0035114c  04 c0 94 e5                                      ldr ip, [r4, #4]
00351150  06 20 a0 e1                                      mov r2, r6
00351154  08 00 a0 e1                                      mov r0, r8
00351158  04 c0 85 e5                                      str ip, [r5, #4]
0035115c  04 10 84 e5                                      str r1, [r4, #4]
00351160  08 30 04 e4                                      str r3, [r4], #-8
00351164  01 10 a0 e3                                      mov r1, #1
00351168  b7 ff ff eb                                      bl #0x35104c
0035116c  01 60 56 e2                                      subs r6, r6, #1
00351170  f1 ff ff 1a                                      bne #0x35113c
00351174  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00356d80, declared_size=392, range_size=392, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5scene13CSceneManager21STransparentNodeEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::scene::CSceneManager::STransparentNodeEntry>(glitch::scene::CSceneManager::STransparentNodeEntry*, int, int)
; decoder-mode: arm
00356d80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00356d84  81 70 a0 e1                                      lsl r7, r1, #1
00356d88  07 00 52 e1                                      cmp r2, r7
00356d8c  34 d0 4d e2                                      sub sp, sp, #0x34
00356d90  01 40 a0 e1                                      mov r4, r1
00356d94  02 90 a0 e1                                      mov sb, r2
00356d98  00 80 a0 e1                                      mov r8, r0
00356d9c  4e 00 00 da                                      ble #0x356edc
00356da0  2c 30 8d e2                                      add r3, sp, #0x2c
00356da4  04 30 8d e5                                      str r3, [sp, #4]
00356da8  28 30 8d e2                                      add r3, sp, #0x28
00356dac  08 30 8d e5                                      str r3, [sp, #8]
00356db0  1c 30 8d e2                                      add r3, sp, #0x1c
00356db4  14 a0 a0 e3                                      mov sl, #0x14
00356db8  0c 30 8d e5                                      str r3, [sp, #0xc]
00356dbc  01 60 87 e2                                      add r6, r7, #1
00356dc0  06 00 59 e1                                      cmp sb, r6
00356dc4  9a 87 25 d0                                      mlale r5, sl, r7, r8
00356dc8  45 00 00 ca                                      bgt #0x356ee4
00356dcc  07 60 a0 e1                                      mov r6, r7
00356dd0  9a 04 04 e0                                      mul r4, sl, r4
00356dd4  05 10 a0 e1                                      mov r1, r5
00356dd8  04 70 88 e0                                      add r7, r8, r4
00356ddc  07 00 a0 e1                                      mov r0, r7
00356de0  b1 f2 ff eb                                      bl #0x3538ac
00356de4  00 00 50 e3                                      cmp r0, #0
00356de8  3b 00 00 0a                                      beq #0x356edc
00356dec  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
00356df0  00 00 53 e3                                      cmp r3, #0
00356df4  18 20 8d e5                                      str r2, [sp, #0x18]
00356df8  14 10 8d e5                                      str r1, [sp, #0x14]
00356dfc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00356e00  00 20 93 15                                      ldrne r2, [r3]
00356e04  01 20 82 12                                      addne r2, r2, #1
00356e08  00 20 83 15                                      strne r2, [r3]
00356e0c  04 30 98 e7                                      ldr r3, [r8, r4]
00356e10  10 20 95 e5                                      ldr r2, [r5, #0x10]
00356e14  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00356e18  00 30 85 e5                                      str r3, [r5]
00356e1c  04 30 97 e5                                      ldr r3, [r7, #4]
00356e20  24 20 8d e5                                      str r2, [sp, #0x24]
00356e24  20 10 8d e5                                      str r1, [sp, #0x20]
00356e28  04 30 85 e5                                      str r3, [r5, #4]
00356e2c  08 30 97 e5                                      ldr r3, [r7, #8]
00356e30  00 00 53 e3                                      cmp r3, #0
00356e34  2c 30 8d e5                                      str r3, [sp, #0x2c]
00356e38  00 20 93 15                                      ldrne r2, [r3]
00356e3c  03 20 a0 01                                      moveq r2, r3
00356e40  01 20 82 12                                      addne r2, r2, #1
00356e44  00 20 83 15                                      strne r2, [r3]
00356e48  2c 20 9d 15                                      ldrne r2, [sp, #0x2c]
00356e4c  08 30 95 e5                                      ldr r3, [r5, #8]
00356e50  08 20 85 e5                                      str r2, [r5, #8]
00356e54  04 00 9d e5                                      ldr r0, [sp, #4]
00356e58  2c 30 8d e5                                      str r3, [sp, #0x2c]
00356e5c  f6 eb ff eb                                      bl #0x351e3c
00356e60  0c 20 97 e5                                      ldr r2, [r7, #0xc]
00356e64  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00356e68  14 10 9d e5                                      ldr r1, [sp, #0x14]
00356e6c  0c 20 85 e5                                      str r2, [r5, #0xc]
00356e70  18 20 9d e5                                      ldr r2, [sp, #0x18]
00356e74  10 00 97 e5                                      ldr r0, [r7, #0x10]
00356e78  00 00 53 e3                                      cmp r3, #0
00356e7c  10 00 85 e5                                      str r0, [r5, #0x10]
00356e80  04 10 88 e7                                      str r1, [r8, r4]
00356e84  04 20 87 e5                                      str r2, [r7, #4]
00356e88  28 30 8d e5                                      str r3, [sp, #0x28]
00356e8c  00 20 93 15                                      ldrne r2, [r3]
00356e90  03 20 a0 01                                      moveq r2, r3
00356e94  06 40 a0 e1                                      mov r4, r6
00356e98  01 20 82 12                                      addne r2, r2, #1
00356e9c  00 20 83 15                                      strne r2, [r3]
00356ea0  28 20 9d 15                                      ldrne r2, [sp, #0x28]
00356ea4  08 30 97 e5                                      ldr r3, [r7, #8]
00356ea8  08 20 87 e5                                      str r2, [r7, #8]
00356eac  08 00 9d e5                                      ldr r0, [sp, #8]
00356eb0  28 30 8d e5                                      str r3, [sp, #0x28]
00356eb4  e0 eb ff eb                                      bl #0x351e3c
00356eb8  24 30 9d e5                                      ldr r3, [sp, #0x24]
00356ebc  20 20 9d e5                                      ldr r2, [sp, #0x20]
00356ec0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00356ec4  10 30 87 e5                                      str r3, [r7, #0x10]
00356ec8  0c 20 87 e5                                      str r2, [r7, #0xc]
00356ecc  86 70 a0 e1                                      lsl r7, r6, #1
00356ed0  d9 eb ff eb                                      bl #0x351e3c
00356ed4  09 00 57 e1                                      cmp r7, sb
00356ed8  b7 ff ff ba                                      blt #0x356dbc
00356edc  34 d0 8d e2                                      add sp, sp, #0x34
00356ee0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00356ee4  9a 87 25 e0                                      mla r5, sl, r7, r8
00356ee8  9a 86 2b e0                                      mla fp, sl, r6, r8
00356eec  05 00 a0 e1                                      mov r0, r5
00356ef0  0b 10 a0 e1                                      mov r1, fp
00356ef4  6c f2 ff eb                                      bl #0x3538ac
00356ef8  00 00 50 e3                                      cmp r0, #0
00356efc  b2 ff ff 0a                                      beq #0x356dcc
00356f00  0b 50 a0 e1                                      mov r5, fp
00356f04  b1 ff ff ea                                      b #0x356dd0

; FUNCTION 0x00356f08, declared_size=340, range_size=340, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5scene13CSceneManager21STransparentNodeEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(glitch::scene::CSceneManager::STransparentNodeEntry*, int)
; decoder-mode: arm
00356f08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00356f0c  01 40 41 e2                                      sub r4, r1, #1
00356f10  a4 8f 84 e0                                      add r8, r4, r4, lsr #31
00356f14  20 d0 4d e2                                      sub sp, sp, #0x20
00356f18  c8 80 b0 e1                                      asrs r8, r8, #1
00356f1c  01 60 a0 e1                                      mov r6, r1
00356f20  00 50 a0 e1                                      mov r5, r0
00356f24  14 70 40 e2                                      sub r7, r0, #0x14
00356f28  07 00 00 4a                                      bmi #0x356f4c
00356f2c  01 80 88 e2                                      add r8, r8, #1
00356f30  01 a0 81 e2                                      add sl, r1, #1
00356f34  08 10 a0 e1                                      mov r1, r8
00356f38  07 00 a0 e1                                      mov r0, r7
00356f3c  0a 20 a0 e1                                      mov r2, sl
00356f40  8e ff ff eb                                      bl #0x356d80
00356f44  01 80 58 e2                                      subs r8, r8, #1
00356f48  f9 ff ff 1a                                      bne #0x356f34
00356f4c  00 00 54 e3                                      cmp r4, #0
00356f50  3f 00 00 ba                                      blt #0x357054
00356f54  14 30 a0 e3                                      mov r3, #0x14
00356f58  93 54 24 e0                                      mla r4, r3, r4, r5
00356f5c  1c a0 8d e2                                      add sl, sp, #0x1c
00356f60  10 40 84 e2                                      add r4, r4, #0x10
00356f64  18 80 8d e2                                      add r8, sp, #0x18
00356f68  0c 90 8d e2                                      add sb, sp, #0xc
00356f6c  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
00356f70  00 00 53 e3                                      cmp r3, #0
00356f74  0e 00 8d e9                                      stmib sp, {r1, r2, r3}
00356f78  00 20 93 15                                      ldrne r2, [r3]
00356f7c  0a 00 a0 e1                                      mov r0, sl
00356f80  01 20 82 12                                      addne r2, r2, #1
00356f84  00 20 83 15                                      strne r2, [r3]
00356f88  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00356f8c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00356f90  10 20 8d e5                                      str r2, [sp, #0x10]
00356f94  14 30 8d e5                                      str r3, [sp, #0x14]
00356f98  10 30 14 e5                                      ldr r3, [r4, #-0x10]
00356f9c  00 30 85 e5                                      str r3, [r5]
00356fa0  0c 30 14 e5                                      ldr r3, [r4, #-0xc]
00356fa4  04 30 85 e5                                      str r3, [r5, #4]
00356fa8  08 20 14 e5                                      ldr r2, [r4, #-8]
00356fac  1c 20 8d e5                                      str r2, [sp, #0x1c]
00356fb0  00 00 52 e3                                      cmp r2, #0
00356fb4  00 30 92 15                                      ldrne r3, [r2]
00356fb8  01 30 83 12                                      addne r3, r3, #1
00356fbc  00 30 82 15                                      strne r3, [r2]
00356fc0  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
00356fc4  08 30 95 e5                                      ldr r3, [r5, #8]
00356fc8  08 20 85 e5                                      str r2, [r5, #8]
00356fcc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00356fd0  99 eb ff eb                                      bl #0x351e3c
00356fd4  04 20 14 e5                                      ldr r2, [r4, #-4]
00356fd8  04 30 9d e5                                      ldr r3, [sp, #4]
00356fdc  08 00 a0 e1                                      mov r0, r8
00356fe0  0c 20 85 e5                                      str r2, [r5, #0xc]
00356fe4  00 20 94 e5                                      ldr r2, [r4]
00356fe8  10 20 85 e5                                      str r2, [r5, #0x10]
00356fec  10 30 04 e5                                      str r3, [r4, #-0x10]
00356ff0  08 30 9d e5                                      ldr r3, [sp, #8]
00356ff4  0c 30 04 e5                                      str r3, [r4, #-0xc]
00356ff8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00356ffc  00 00 52 e3                                      cmp r2, #0
00357000  18 20 8d e5                                      str r2, [sp, #0x18]
00357004  00 30 92 15                                      ldrne r3, [r2]
00357008  01 30 83 12                                      addne r3, r3, #1
0035700c  00 30 82 15                                      strne r3, [r2]
00357010  18 20 9d 15                                      ldrne r2, [sp, #0x18]
00357014  08 30 14 e5                                      ldr r3, [r4, #-8]
00357018  18 30 8d e5                                      str r3, [sp, #0x18]
0035701c  08 20 04 e5                                      str r2, [r4, #-8]
00357020  85 eb ff eb                                      bl #0x351e3c
00357024  10 30 9d e5                                      ldr r3, [sp, #0x10]
00357028  06 20 a0 e1                                      mov r2, r6
0035702c  01 10 a0 e3                                      mov r1, #1
00357030  04 30 04 e5                                      str r3, [r4, #-4]
00357034  14 30 9d e5                                      ldr r3, [sp, #0x14]
00357038  07 00 a0 e1                                      mov r0, r7
0035703c  14 30 04 e4                                      str r3, [r4], #-0x14
00357040  4e ff ff eb                                      bl #0x356d80
00357044  09 00 a0 e1                                      mov r0, sb
00357048  7b eb ff eb                                      bl #0x351e3c
0035704c  01 60 56 e2                                      subs r6, r6, #1
00357050  c5 ff ff 1a                                      bne #0x356f6c
00357054  20 d0 8d e2                                      add sp, sp, #0x20
00357058  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00357144, declared_size=360, range_size=360, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5scene13CSceneManager17SDefaultNodeEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::scene::CSceneManager::SDefaultNodeEntry>(glitch::scene::CSceneManager::SDefaultNodeEntry*, int, int)
; decoder-mode: arm
00357144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00357148  81 70 a0 e1                                      lsl r7, r1, #1
0035714c  07 00 52 e1                                      cmp r2, r7
00357150  24 d0 4d e2                                      sub sp, sp, #0x24
00357154  01 40 a0 e1                                      mov r4, r1
00357158  02 a0 a0 e1                                      mov sl, r2
0035715c  00 80 a0 e1                                      mov r8, r0
00357160  46 00 00 da                                      ble #0x357280
00357164  18 30 8d e2                                      add r3, sp, #0x18
00357168  00 30 8d e5                                      str r3, [sp]
0035716c  10 30 8d e2                                      add r3, sp, #0x10
00357170  1c 90 8d e2                                      add sb, sp, #0x1c
00357174  04 30 8d e5                                      str r3, [sp, #4]
00357178  01 60 87 e2                                      add r6, r7, #1
0035717c  06 00 5a e1                                      cmp sl, r6
00357180  07 52 88 d0                                      addle r5, r8, r7, lsl #4
00357184  3f 00 00 ca                                      bgt #0x357288
00357188  07 60 a0 e1                                      mov r6, r7
0035718c  04 42 a0 e1                                      lsl r4, r4, #4
00357190  04 b0 88 e0                                      add fp, r8, r4
00357194  0b 00 a0 e1                                      mov r0, fp
00357198  05 10 a0 e1                                      mov r1, r5
0035719c  11 f2 ff eb                                      bl #0x3539e8
003571a0  00 00 50 e3                                      cmp r0, #0
003571a4  35 00 00 0a                                      beq #0x357280
003571a8  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
003571ac  00 00 53 e3                                      cmp r3, #0
003571b0  0c 20 8d e5                                      str r2, [sp, #0xc]
003571b4  08 10 8d e5                                      str r1, [sp, #8]
003571b8  10 30 8d e5                                      str r3, [sp, #0x10]
003571bc  00 20 93 15                                      ldrne r2, [r3]
003571c0  09 00 a0 e1                                      mov r0, sb
003571c4  86 70 a0 e1                                      lsl r7, r6, #1
003571c8  01 20 82 12                                      addne r2, r2, #1
003571cc  00 20 83 15                                      strne r2, [r3]
003571d0  04 30 98 e7                                      ldr r3, [r8, r4]
003571d4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003571d8  00 30 85 e5                                      str r3, [r5]
003571dc  04 30 9b e5                                      ldr r3, [fp, #4]
003571e0  14 20 8d e5                                      str r2, [sp, #0x14]
003571e4  04 30 85 e5                                      str r3, [r5, #4]
003571e8  08 30 9b e5                                      ldr r3, [fp, #8]
003571ec  00 00 53 e3                                      cmp r3, #0
003571f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003571f4  00 20 93 15                                      ldrne r2, [r3]
003571f8  03 20 a0 01                                      moveq r2, r3
003571fc  01 20 82 12                                      addne r2, r2, #1
00357200  00 20 83 15                                      strne r2, [r3]
00357204  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
00357208  08 30 95 e5                                      ldr r3, [r5, #8]
0035720c  08 20 85 e5                                      str r2, [r5, #8]
00357210  1c 30 8d e5                                      str r3, [sp, #0x1c]
00357214  08 eb ff eb                                      bl #0x351e3c
00357218  10 30 9d e5                                      ldr r3, [sp, #0x10]
0035721c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00357220  0c 00 9b e5                                      ldr r0, [fp, #0xc]
00357224  08 10 9d e5                                      ldr r1, [sp, #8]
00357228  00 00 53 e3                                      cmp r3, #0
0035722c  0c 00 85 e5                                      str r0, [r5, #0xc]
00357230  04 10 88 e7                                      str r1, [r8, r4]
00357234  04 20 8b e5                                      str r2, [fp, #4]
00357238  18 30 8d e5                                      str r3, [sp, #0x18]
0035723c  00 20 93 15                                      ldrne r2, [r3]
00357240  03 20 a0 01                                      moveq r2, r3
00357244  06 40 a0 e1                                      mov r4, r6
00357248  01 20 82 12                                      addne r2, r2, #1
0035724c  00 20 83 15                                      strne r2, [r3]
00357250  18 20 9d 15                                      ldrne r2, [sp, #0x18]
00357254  08 30 9b e5                                      ldr r3, [fp, #8]
00357258  08 20 8b e5                                      str r2, [fp, #8]
0035725c  00 00 9d e5                                      ldr r0, [sp]
00357260  18 30 8d e5                                      str r3, [sp, #0x18]
00357264  f4 ea ff eb                                      bl #0x351e3c
00357268  14 30 9d e5                                      ldr r3, [sp, #0x14]
0035726c  04 00 9d e5                                      ldr r0, [sp, #4]
00357270  0c 30 8b e5                                      str r3, [fp, #0xc]
00357274  f0 ea ff eb                                      bl #0x351e3c
00357278  0a 00 57 e1                                      cmp r7, sl
0035727c  bd ff ff ba                                      blt #0x357178
00357280  24 d0 8d e2                                      add sp, sp, #0x24
00357284  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00357288  07 52 88 e0                                      add r5, r8, r7, lsl #4
0035728c  06 b2 88 e0                                      add fp, r8, r6, lsl #4
00357290  05 00 a0 e1                                      mov r0, r5
00357294  0b 10 a0 e1                                      mov r1, fp
00357298  d2 f1 ff eb                                      bl #0x3539e8
0035729c  00 00 50 e3                                      cmp r0, #0
003572a0  b8 ff ff 0a                                      beq #0x357188
003572a4  0b 50 a0 e1                                      mov r5, fp
003572a8  b7 ff ff ea                                      b #0x35718c

; FUNCTION 0x003572ac, declared_size=312, range_size=312, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5scene13CSceneManager17SDefaultNodeEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(glitch::scene::CSceneManager::SDefaultNodeEntry*, int)
; decoder-mode: arm
003572ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003572b0  01 40 41 e2                                      sub r4, r1, #1
003572b4  a4 8f 84 e0                                      add r8, r4, r4, lsr #31
003572b8  18 d0 4d e2                                      sub sp, sp, #0x18
003572bc  c8 80 b0 e1                                      asrs r8, r8, #1
003572c0  01 60 a0 e1                                      mov r6, r1
003572c4  00 50 a0 e1                                      mov r5, r0
003572c8  10 70 40 e2                                      sub r7, r0, #0x10
003572cc  07 00 00 4a                                      bmi #0x3572f0
003572d0  01 80 88 e2                                      add r8, r8, #1
003572d4  01 a0 81 e2                                      add sl, r1, #1
003572d8  08 10 a0 e1                                      mov r1, r8
003572dc  07 00 a0 e1                                      mov r0, r7
003572e0  0a 20 a0 e1                                      mov r2, sl
003572e4  96 ff ff eb                                      bl #0x357144
003572e8  01 80 58 e2                                      subs r8, r8, #1
003572ec  f9 ff ff 1a                                      bne #0x3572d8
003572f0  00 00 54 e3                                      cmp r4, #0
003572f4  38 00 00 ba                                      blt #0x3573dc
003572f8  04 42 85 e0                                      add r4, r5, r4, lsl #4
003572fc  14 a0 8d e2                                      add sl, sp, #0x14
00357300  10 80 8d e2                                      add r8, sp, #0x10
00357304  08 90 8d e2                                      add sb, sp, #8
00357308  0e 00 95 e8                                      ldm r5, {r1, r2, r3}
0035730c  00 00 53 e3                                      cmp r3, #0
00357310  0e 00 8d e8                                      stm sp, {r1, r2, r3}
00357314  00 20 93 15                                      ldrne r2, [r3]
00357318  0a 00 a0 e1                                      mov r0, sl
0035731c  01 20 82 12                                      addne r2, r2, #1
00357320  00 20 83 15                                      strne r2, [r3]
00357324  00 20 94 e5                                      ldr r2, [r4]
00357328  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0035732c  00 20 85 e5                                      str r2, [r5]
00357330  0c 30 8d e5                                      str r3, [sp, #0xc]
00357334  04 30 94 e5                                      ldr r3, [r4, #4]
00357338  04 30 85 e5                                      str r3, [r5, #4]
0035733c  08 20 94 e5                                      ldr r2, [r4, #8]
00357340  14 20 8d e5                                      str r2, [sp, #0x14]
00357344  00 00 52 e3                                      cmp r2, #0
00357348  00 30 92 15                                      ldrne r3, [r2]
0035734c  01 30 83 12                                      addne r3, r3, #1
00357350  00 30 82 15                                      strne r3, [r2]
00357354  14 20 9d 15                                      ldrne r2, [sp, #0x14]
00357358  08 30 95 e5                                      ldr r3, [r5, #8]
0035735c  08 20 85 e5                                      str r2, [r5, #8]
00357360  14 30 8d e5                                      str r3, [sp, #0x14]
00357364  b4 ea ff eb                                      bl #0x351e3c
00357368  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0035736c  04 20 9d e5                                      ldr r2, [sp, #4]
00357370  00 30 9d e5                                      ldr r3, [sp]
00357374  0c 10 85 e5                                      str r1, [r5, #0xc]
00357378  04 20 84 e5                                      str r2, [r4, #4]
0035737c  08 20 9d e5                                      ldr r2, [sp, #8]
00357380  00 30 84 e5                                      str r3, [r4]
00357384  08 00 a0 e1                                      mov r0, r8
00357388  00 00 52 e3                                      cmp r2, #0
0035738c  10 20 8d e5                                      str r2, [sp, #0x10]
00357390  00 30 92 15                                      ldrne r3, [r2]
00357394  01 30 83 12                                      addne r3, r3, #1
00357398  00 30 82 15                                      strne r3, [r2]
0035739c  10 20 9d 15                                      ldrne r2, [sp, #0x10]
003573a0  08 30 94 e5                                      ldr r3, [r4, #8]
003573a4  10 30 8d e5                                      str r3, [sp, #0x10]
003573a8  08 20 84 e5                                      str r2, [r4, #8]
003573ac  a2 ea ff eb                                      bl #0x351e3c
003573b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003573b4  06 20 a0 e1                                      mov r2, r6
003573b8  01 10 a0 e3                                      mov r1, #1
003573bc  0c 30 84 e5                                      str r3, [r4, #0xc]
003573c0  07 00 a0 e1                                      mov r0, r7
003573c4  5e ff ff eb                                      bl #0x357144
003573c8  09 00 a0 e1                                      mov r0, sb
003573cc  9a ea ff eb                                      bl #0x351e3c
003573d0  01 60 56 e2                                      subs r6, r6, #1
003573d4  10 40 44 e2                                      sub r4, r4, #0x10
003573d8  ca ff ff 1a                                      bne #0x357308
003573dc  18 d0 8d e2                                      add sp, sp, #0x18
003573e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0056fa04, declared_size=520, range_size=520, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_2io13SPakFileEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::io::SPakFileEntry>(glitch::io::SPakFileEntry*, int, int)
; decoder-mode: arm
0056fa04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056fa08  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
0056fa0c  f4 41 9f e5                                      ldr r4, [pc, #0x1f4]
0056fa10  74 d0 4d e2                                      sub sp, sp, #0x74
0056fa14  03 30 8f e0                                      add r3, pc, r3
0056fa18  04 c0 93 e7                                      ldr ip, [r3, r4]
0056fa1c  08 20 8d e5                                      str r2, [sp, #8]
0056fa20  08 a0 9d e5                                      ldr sl, [sp, #8]
0056fa24  00 20 9c e5                                      ldr r2, [ip]
0056fa28  10 30 8d e5                                      str r3, [sp, #0x10]
0056fa2c  81 30 a0 e1                                      lsl r3, r1, #1
0056fa30  03 00 5a e1                                      cmp sl, r3
0056fa34  14 40 8d e5                                      str r4, [sp, #0x14]
0056fa38  00 80 a0 e1                                      mov r8, r0
0056fa3c  6c 20 8d e5                                      str r2, [sp, #0x6c]
0056fa40  30 00 00 da                                      ble #0x56fb08
0056fa44  50 b0 a0 e3                                      mov fp, #0x50
0056fa48  1c 70 8d e2                                      add r7, sp, #0x1c
0056fa4c  00 90 a0 e1                                      mov sb, r0
0056fa50  01 60 a0 e1                                      mov r6, r1
0056fa54  08 c0 9d e5                                      ldr ip, [sp, #8]
0056fa58  01 50 83 e2                                      add r5, r3, #1
0056fa5c  05 00 5c e1                                      cmp ip, r5
0056fa60  39 00 00 ca                                      bgt #0x56fb4c
0056fa64  9b 93 24 e0                                      mla r4, fp, r3, sb
0056fa68  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0056fa6c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0056fa70  00 00 68 e0                                      rsb r0, r8, r0
0056fa74  03 50 a0 e1                                      mov r5, r3
0056fa78  9b 96 26 e0                                      mla r6, fp, r6, sb
0056fa7c  2c a0 96 e5                                      ldr sl, [r6, #0x2c]
0056fa80  28 20 96 e5                                      ldr r2, [r6, #0x28]
0056fa84  0a 20 52 e0                                      subs r2, r2, sl
0056fa88  09 00 00 0a                                      beq #0x56fab4
0056fa8c  00 00 50 e3                                      cmp r0, #0
0056fa90  07 00 00 0a                                      beq #0x56fab4
0056fa94  d0 c0 da e1                                      ldrsb ip, [sl]
0056fa98  d0 10 d8 e1                                      ldrsb r1, [r8]
0056fa9c  01 10 5c e0                                      subs r1, ip, r1
0056faa0  01 30 a0 01                                      moveq r3, r1
0056faa4  26 00 00 1a                                      bne #0x56fb44
0056faa8  01 30 83 e2                                      add r3, r3, #1
0056faac  03 00 52 e1                                      cmp r2, r3
0056fab0  1d 00 00 1a                                      bne #0x56fb2c
0056fab4  00 00 52 e1                                      cmp r2, r0
0056fab8  00 10 a0 23                                      movhs r1, #0
0056fabc  01 10 a0 33                                      movlo r1, #1
0056fac0  00 00 51 e3                                      cmp r1, #0
0056fac4  0f 00 00 0a                                      beq #0x56fb08
0056fac8  04 10 a0 e1                                      mov r1, r4
0056facc  07 00 a0 e1                                      mov r0, r7
0056fad0  8a fe ff eb                                      bl #0x56f500
0056fad4  06 10 a0 e1                                      mov r1, r6
0056fad8  04 00 a0 e1                                      mov r0, r4
0056fadc  bf fe ff eb                                      bl #0x56f5e0
0056fae0  06 00 a0 e1                                      mov r0, r6
0056fae4  07 10 a0 e1                                      mov r1, r7
0056fae8  bc fe ff eb                                      bl #0x56f5e0
0056faec  07 00 a0 e1                                      mov r0, r7
0056faf0  d6 fe ff eb                                      bl #0x56f650
0056faf4  08 c0 9d e5                                      ldr ip, [sp, #8]
0056faf8  85 30 a0 e1                                      lsl r3, r5, #1
0056fafc  05 60 a0 e1                                      mov r6, r5
0056fb00  0c 00 53 e1                                      cmp r3, ip
0056fb04  d2 ff ff ba                                      blt #0x56fa54
0056fb08  10 20 9d e5                                      ldr r2, [sp, #0x10]
0056fb0c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0056fb10  01 30 92 e7                                      ldr r3, [r2, r1]
0056fb14  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0056fb18  00 30 93 e5                                      ldr r3, [r3]
0056fb1c  03 00 52 e1                                      cmp r2, r3
0056fb20  36 00 00 1a                                      bne #0x56fc00
0056fb24  74 d0 8d e2                                      add sp, sp, #0x74
0056fb28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056fb2c  00 00 53 e1                                      cmp r3, r0
0056fb30  df ff ff 0a                                      beq #0x56fab4
0056fb34  d3 c0 9a e1                                      ldrsb ip, [sl, r3]
0056fb38  d3 10 98 e1                                      ldrsb r1, [r8, r3]
0056fb3c  01 10 5c e0                                      subs r1, ip, r1
0056fb40  d8 ff ff 0a                                      beq #0x56faa8
0056fb44  a1 1f a0 e1                                      lsr r1, r1, #0x1f
0056fb48  dc ff ff ea                                      b #0x56fac0
0056fb4c  9b 93 24 e0                                      mla r4, fp, r3, sb
0056fb50  9b 95 22 e0                                      mla r2, fp, r5, sb
0056fb54  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0056fb58  28 00 94 e5                                      ldr r0, [r4, #0x28]
0056fb5c  08 00 50 e0                                      subs r0, r0, r8
0056fb60  22 00 00 0a                                      beq #0x56fbf0
0056fb64  28 10 92 e5                                      ldr r1, [r2, #0x28]
0056fb68  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0056fb6c  02 10 51 e0                                      subs r1, r1, r2
0056fb70  0c 20 8d e5                                      str r2, [sp, #0xc]
0056fb74  08 00 00 0a                                      beq #0x56fb9c
0056fb78  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0056fb7c  d0 20 d8 e1                                      ldrsb r2, [r8]
0056fb80  d0 c0 da e1                                      ldrsb ip, [sl]
0056fb84  0c c0 52 e0                                      subs ip, r2, ip
0056fb88  0c 20 a0 01                                      moveq r2, ip
0056fb8c  15 00 00 1a                                      bne #0x56fbe8
0056fb90  01 20 82 e2                                      add r2, r2, #1
0056fb94  00 00 52 e1                                      cmp r2, r0
0056fb98  09 00 00 1a                                      bne #0x56fbc4
0056fb9c  01 00 50 e1                                      cmp r0, r1
0056fba0  00 10 a0 23                                      movhs r1, #0
0056fba4  01 10 a0 33                                      movlo r1, #1
0056fba8  00 00 51 e3                                      cmp r1, #0
0056fbac  b0 ff ff 0a                                      beq #0x56fa74
0056fbb0  9b 95 24 e0                                      mla r4, fp, r5, sb
0056fbb4  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0056fbb8  28 00 94 e5                                      ldr r0, [r4, #0x28]
0056fbbc  00 00 68 e0                                      rsb r0, r8, r0
0056fbc0  ac ff ff ea                                      b #0x56fa78
0056fbc4  01 00 52 e1                                      cmp r2, r1
0056fbc8  f3 ff ff 0a                                      beq #0x56fb9c
0056fbcc  d2 c0 98 e1                                      ldrsb ip, [r8, r2]
0056fbd0  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0056fbd4  04 c0 8d e5                                      str ip, [sp, #4]
0056fbd8  d2 c0 9a e1                                      ldrsb ip, [sl, r2]
0056fbdc  04 a0 9d e5                                      ldr sl, [sp, #4]
0056fbe0  0c c0 5a e0                                      subs ip, sl, ip
0056fbe4  e9 ff ff 0a                                      beq #0x56fb90
0056fbe8  ac 1f a0 e1                                      lsr r1, ip, #0x1f
0056fbec  ed ff ff ea                                      b #0x56fba8
0056fbf0  28 10 92 e5                                      ldr r1, [r2, #0x28]
0056fbf4  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0056fbf8  01 10 62 e0                                      rsb r1, r2, r1
0056fbfc  e6 ff ff ea                                      b #0x56fb9c
0056fc00  c2 79 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056fc04  7c 50 42 00 ac 40 00 00                          .byte 0x7c, 0x50, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0056fc0c, declared_size=224, range_size=224, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_2io13SPakFileEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::io::SPakFileEntry>(glitch::io::SPakFileEntry*, int)
; decoder-mode: arm
0056fc0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056fc10  cc 80 9f e5                                      ldr r8, [pc, #0xcc]
0056fc14  cc b0 9f e5                                      ldr fp, [pc, #0xcc]
0056fc18  01 a0 41 e2                                      sub sl, r1, #1
0056fc1c  08 80 8f e0                                      add r8, pc, r8
0056fc20  0b 30 98 e7                                      ldr r3, [r8, fp]
0056fc24  aa 4f 8a e0                                      add r4, sl, sl, lsr #31
0056fc28  5c d0 4d e2                                      sub sp, sp, #0x5c
0056fc2c  00 30 93 e5                                      ldr r3, [r3]
0056fc30  c4 40 b0 e1                                      asrs r4, r4, #1
0056fc34  01 90 a0 e1                                      mov sb, r1
0056fc38  00 50 a0 e1                                      mov r5, r0
0056fc3c  54 30 8d e5                                      str r3, [sp, #0x54]
0056fc40  50 60 40 e2                                      sub r6, r0, #0x50
0056fc44  07 00 00 4a                                      bmi #0x56fc68
0056fc48  01 40 84 e2                                      add r4, r4, #1
0056fc4c  01 70 81 e2                                      add r7, r1, #1
0056fc50  04 10 a0 e1                                      mov r1, r4
0056fc54  06 00 a0 e1                                      mov r0, r6
0056fc58  07 20 a0 e1                                      mov r2, r7
0056fc5c  68 ff ff eb                                      bl #0x56fa04
0056fc60  01 40 54 e2                                      subs r4, r4, #1
0056fc64  f9 ff ff 1a                                      bne #0x56fc50
0056fc68  00 00 5a e3                                      cmp sl, #0
0056fc6c  14 00 00 ba                                      blt #0x56fcc4
0056fc70  50 30 a0 e3                                      mov r3, #0x50
0056fc74  93 5a 2a e0                                      mla sl, r3, sl, r5
0056fc78  04 40 8d e2                                      add r4, sp, #4
0056fc7c  05 10 a0 e1                                      mov r1, r5
0056fc80  04 00 a0 e1                                      mov r0, r4
0056fc84  1d fe ff eb                                      bl #0x56f500
0056fc88  0a 10 a0 e1                                      mov r1, sl
0056fc8c  05 00 a0 e1                                      mov r0, r5
0056fc90  52 fe ff eb                                      bl #0x56f5e0
0056fc94  0a 00 a0 e1                                      mov r0, sl
0056fc98  04 10 a0 e1                                      mov r1, r4
0056fc9c  4f fe ff eb                                      bl #0x56f5e0
0056fca0  09 20 a0 e1                                      mov r2, sb
0056fca4  06 00 a0 e1                                      mov r0, r6
0056fca8  01 10 a0 e3                                      mov r1, #1
0056fcac  54 ff ff eb                                      bl #0x56fa04
0056fcb0  04 00 a0 e1                                      mov r0, r4
0056fcb4  65 fe ff eb                                      bl #0x56f650
0056fcb8  01 90 59 e2                                      subs sb, sb, #1
0056fcbc  50 a0 4a e2                                      sub sl, sl, #0x50
0056fcc0  ed ff ff 1a                                      bne #0x56fc7c
0056fcc4  0b 30 98 e7                                      ldr r3, [r8, fp]
0056fcc8  54 20 9d e5                                      ldr r2, [sp, #0x54]
0056fccc  00 30 93 e5                                      ldr r3, [r3]
0056fcd0  03 00 52 e1                                      cmp r2, r3
0056fcd4  01 00 00 1a                                      bne #0x56fce0
0056fcd8  5c d0 8d e2                                      add sp, sp, #0x5c
0056fcdc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056fce0  8a 79 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056fce4  74 4e 42 00 ac 40 00 00                          .byte 0x74, 0x4e, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005775a4, declared_size=520, range_size=520, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_2io13SZipFileEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::io::SZipFileEntry>(glitch::io::SZipFileEntry*, int, int)
; decoder-mode: arm
005775a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005775a8  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
005775ac  f4 41 9f e5                                      ldr r4, [pc, #0x1f4]
005775b0  8c d0 4d e2                                      sub sp, sp, #0x8c
005775b4  03 30 8f e0                                      add r3, pc, r3
005775b8  04 c0 93 e7                                      ldr ip, [r3, r4]
005775bc  08 20 8d e5                                      str r2, [sp, #8]
005775c0  08 a0 9d e5                                      ldr sl, [sp, #8]
005775c4  00 20 9c e5                                      ldr r2, [ip]
005775c8  10 30 8d e5                                      str r3, [sp, #0x10]
005775cc  81 30 a0 e1                                      lsl r3, r1, #1
005775d0  03 00 5a e1                                      cmp sl, r3
005775d4  14 40 8d e5                                      str r4, [sp, #0x14]
005775d8  00 80 a0 e1                                      mov r8, r0
005775dc  84 20 8d e5                                      str r2, [sp, #0x84]
005775e0  30 00 00 da                                      ble #0x5776a8
005775e4  6c b0 a0 e3                                      mov fp, #0x6c
005775e8  18 70 8d e2                                      add r7, sp, #0x18
005775ec  00 90 a0 e1                                      mov sb, r0
005775f0  01 60 a0 e1                                      mov r6, r1
005775f4  08 c0 9d e5                                      ldr ip, [sp, #8]
005775f8  01 50 83 e2                                      add r5, r3, #1
005775fc  05 00 5c e1                                      cmp ip, r5
00577600  39 00 00 ca                                      bgt #0x5776ec
00577604  9b 93 24 e0                                      mla r4, fp, r3, sb
00577608  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
0057760c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00577610  00 00 68 e0                                      rsb r0, r8, r0
00577614  03 50 a0 e1                                      mov r5, r3
00577618  9b 96 26 e0                                      mla r6, fp, r6, sb
0057761c  2c a0 96 e5                                      ldr sl, [r6, #0x2c]
00577620  28 20 96 e5                                      ldr r2, [r6, #0x28]
00577624  0a 20 52 e0                                      subs r2, r2, sl
00577628  09 00 00 0a                                      beq #0x577654
0057762c  00 00 50 e3                                      cmp r0, #0
00577630  07 00 00 0a                                      beq #0x577654
00577634  d0 c0 da e1                                      ldrsb ip, [sl]
00577638  d0 10 d8 e1                                      ldrsb r1, [r8]
0057763c  01 10 5c e0                                      subs r1, ip, r1
00577640  01 30 a0 01                                      moveq r3, r1
00577644  26 00 00 1a                                      bne #0x5776e4
00577648  01 30 83 e2                                      add r3, r3, #1
0057764c  03 00 52 e1                                      cmp r2, r3
00577650  1d 00 00 1a                                      bne #0x5776cc
00577654  00 00 52 e1                                      cmp r2, r0
00577658  00 10 a0 23                                      movhs r1, #0
0057765c  01 10 a0 33                                      movlo r1, #1
00577660  00 00 51 e3                                      cmp r1, #0
00577664  0f 00 00 0a                                      beq #0x5776a8
00577668  04 10 a0 e1                                      mov r1, r4
0057766c  07 00 a0 e1                                      mov r0, r7
00577670  00 fe ff eb                                      bl #0x576e78
00577674  06 10 a0 e1                                      mov r1, r6
00577678  04 00 a0 e1                                      mov r0, r4
0057767c  00 ff ff eb                                      bl #0x577284
00577680  06 00 a0 e1                                      mov r0, r6
00577684  07 10 a0 e1                                      mov r1, r7
00577688  fd fe ff eb                                      bl #0x577284
0057768c  07 00 a0 e1                                      mov r0, r7
00577690  53 ff ff eb                                      bl #0x5773e4
00577694  08 c0 9d e5                                      ldr ip, [sp, #8]
00577698  85 30 a0 e1                                      lsl r3, r5, #1
0057769c  05 60 a0 e1                                      mov r6, r5
005776a0  0c 00 53 e1                                      cmp r3, ip
005776a4  d2 ff ff ba                                      blt #0x5775f4
005776a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
005776ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
005776b0  01 30 92 e7                                      ldr r3, [r2, r1]
005776b4  84 20 9d e5                                      ldr r2, [sp, #0x84]
005776b8  00 30 93 e5                                      ldr r3, [r3]
005776bc  03 00 52 e1                                      cmp r2, r3
005776c0  36 00 00 1a                                      bne #0x5777a0
005776c4  8c d0 8d e2                                      add sp, sp, #0x8c
005776c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005776cc  00 00 53 e1                                      cmp r3, r0
005776d0  df ff ff 0a                                      beq #0x577654
005776d4  d3 c0 9a e1                                      ldrsb ip, [sl, r3]
005776d8  d3 10 98 e1                                      ldrsb r1, [r8, r3]
005776dc  01 10 5c e0                                      subs r1, ip, r1
005776e0  d8 ff ff 0a                                      beq #0x577648
005776e4  a1 1f a0 e1                                      lsr r1, r1, #0x1f
005776e8  dc ff ff ea                                      b #0x577660
005776ec  9b 93 24 e0                                      mla r4, fp, r3, sb
005776f0  9b 95 22 e0                                      mla r2, fp, r5, sb
005776f4  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
005776f8  28 00 94 e5                                      ldr r0, [r4, #0x28]
005776fc  08 00 50 e0                                      subs r0, r0, r8
00577700  22 00 00 0a                                      beq #0x577790
00577704  28 10 92 e5                                      ldr r1, [r2, #0x28]
00577708  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0057770c  02 10 51 e0                                      subs r1, r1, r2
00577710  0c 20 8d e5                                      str r2, [sp, #0xc]
00577714  08 00 00 0a                                      beq #0x57773c
00577718  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0057771c  d0 20 d8 e1                                      ldrsb r2, [r8]
00577720  d0 c0 da e1                                      ldrsb ip, [sl]
00577724  0c c0 52 e0                                      subs ip, r2, ip
00577728  0c 20 a0 01                                      moveq r2, ip
0057772c  15 00 00 1a                                      bne #0x577788
00577730  01 20 82 e2                                      add r2, r2, #1
00577734  00 00 52 e1                                      cmp r2, r0
00577738  09 00 00 1a                                      bne #0x577764
0057773c  01 00 50 e1                                      cmp r0, r1
00577740  00 10 a0 23                                      movhs r1, #0
00577744  01 10 a0 33                                      movlo r1, #1
00577748  00 00 51 e3                                      cmp r1, #0
0057774c  b0 ff ff 0a                                      beq #0x577614
00577750  9b 95 24 e0                                      mla r4, fp, r5, sb
00577754  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
00577758  28 00 94 e5                                      ldr r0, [r4, #0x28]
0057775c  00 00 68 e0                                      rsb r0, r8, r0
00577760  ac ff ff ea                                      b #0x577618
00577764  01 00 52 e1                                      cmp r2, r1
00577768  f3 ff ff 0a                                      beq #0x57773c
0057776c  d2 c0 98 e1                                      ldrsb ip, [r8, r2]
00577770  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00577774  04 c0 8d e5                                      str ip, [sp, #4]
00577778  d2 c0 9a e1                                      ldrsb ip, [sl, r2]
0057777c  04 a0 9d e5                                      ldr sl, [sp, #4]
00577780  0c c0 5a e0                                      subs ip, sl, ip
00577784  e9 ff ff 0a                                      beq #0x577730
00577788  ac 1f a0 e1                                      lsr r1, ip, #0x1f
0057778c  ed ff ff ea                                      b #0x577748
00577790  28 10 92 e5                                      ldr r1, [r2, #0x28]
00577794  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
00577798  01 10 62 e0                                      rsb r1, r2, r1
0057779c  e6 ff ff ea                                      b #0x57773c
005777a0  da 5a f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005777a4  dc d4 41 00 ac 40 00 00                          .byte 0xdc, 0xd4, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005777ac, declared_size=224, range_size=224, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_2io13SZipFileEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::io::SZipFileEntry>(glitch::io::SZipFileEntry*, int)
; decoder-mode: arm
005777ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005777b0  cc 80 9f e5                                      ldr r8, [pc, #0xcc]
005777b4  cc b0 9f e5                                      ldr fp, [pc, #0xcc]
005777b8  01 a0 41 e2                                      sub sl, r1, #1
005777bc  08 80 8f e0                                      add r8, pc, r8
005777c0  0b 30 98 e7                                      ldr r3, [r8, fp]
005777c4  aa 4f 8a e0                                      add r4, sl, sl, lsr #31
005777c8  74 d0 4d e2                                      sub sp, sp, #0x74
005777cc  00 30 93 e5                                      ldr r3, [r3]
005777d0  c4 40 b0 e1                                      asrs r4, r4, #1
005777d4  01 90 a0 e1                                      mov sb, r1
005777d8  00 50 a0 e1                                      mov r5, r0
005777dc  6c 30 8d e5                                      str r3, [sp, #0x6c]
005777e0  6c 60 40 e2                                      sub r6, r0, #0x6c
005777e4  07 00 00 4a                                      bmi #0x577808
005777e8  01 40 84 e2                                      add r4, r4, #1
005777ec  01 70 81 e2                                      add r7, r1, #1
005777f0  04 10 a0 e1                                      mov r1, r4
005777f4  06 00 a0 e1                                      mov r0, r6
005777f8  07 20 a0 e1                                      mov r2, r7
005777fc  68 ff ff eb                                      bl #0x5775a4
00577800  01 40 54 e2                                      subs r4, r4, #1
00577804  f9 ff ff 1a                                      bne #0x5777f0
00577808  00 00 5a e3                                      cmp sl, #0
0057780c  14 00 00 ba                                      blt #0x577864
00577810  6c 30 a0 e3                                      mov r3, #0x6c
00577814  93 5a 2a e0                                      mla sl, r3, sl, r5
00577818  0d 40 a0 e1                                      mov r4, sp
0057781c  05 10 a0 e1                                      mov r1, r5
00577820  0d 00 a0 e1                                      mov r0, sp
00577824  93 fd ff eb                                      bl #0x576e78
00577828  0a 10 a0 e1                                      mov r1, sl
0057782c  05 00 a0 e1                                      mov r0, r5
00577830  93 fe ff eb                                      bl #0x577284
00577834  0a 00 a0 e1                                      mov r0, sl
00577838  0d 10 a0 e1                                      mov r1, sp
0057783c  90 fe ff eb                                      bl #0x577284
00577840  09 20 a0 e1                                      mov r2, sb
00577844  06 00 a0 e1                                      mov r0, r6
00577848  01 10 a0 e3                                      mov r1, #1
0057784c  54 ff ff eb                                      bl #0x5775a4
00577850  0d 00 a0 e1                                      mov r0, sp
00577854  e2 fe ff eb                                      bl #0x5773e4
00577858  01 90 59 e2                                      subs sb, sb, #1
0057785c  6c a0 4a e2                                      sub sl, sl, #0x6c
00577860  ed ff ff 1a                                      bne #0x57781c
00577864  0b 30 98 e7                                      ldr r3, [r8, fp]
00577868  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0057786c  00 30 93 e5                                      ldr r3, [r3]
00577870  03 00 52 e1                                      cmp r2, r3
00577874  01 00 00 1a                                      bne #0x577880
00577878  74 d0 8d e2                                      add sp, sp, #0x74
0057787c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00577880  a2 5a f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00577884  d4 d2 41 00 ac 40 00 00                          .byte 0xd4, 0xd2, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0060a384, declared_size=1940, range_size=1940, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core21overrideVertexStreamsILb1ELb0ELb1EEEvPKhRKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEEttS3_RKNS5_IS7_EEPKNS6_9CMaterialEhPKNS6_12IVideoDriverEtj
; demangled: void glitch::core::overrideVertexStreams<true, false, true>(unsigned char const*, boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned short, unsigned short, unsigned char const*, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::CMaterial const*, unsigned char, glitch::video::IVideoDriver const*, unsigned short, unsigned int)
; decoder-mode: arm
0060a384  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060a388  d7 df 4d e2                                      sub sp, sp, #0x35c
0060a38c  88 43 9d e5                                      ldr r4, [sp, #0x388]
0060a390  8c c3 dd e5                                      ldrb ip, [sp, #0x38c]
0060a394  51 5f 8d e2                                      add r5, sp, #0x144
0060a398  04 e0 94 e5                                      ldr lr, [r4, #4]
0060a39c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0060a3a0  20 10 8d e5                                      str r1, [sp, #0x20]
0060a3a4  18 10 9e e5                                      ldr r1, [lr, #0x18]
0060a3a8  2c 20 8d e5                                      str r2, [sp, #0x2c]
0060a3ac  0c 20 a0 e3                                      mov r2, #0xc
0060a3b0  92 1c 21 e0                                      mla r1, r2, ip, r1
0060a3b4  03 cc 8d e2                                      add ip, sp, #0x300
0060a3b8  08 20 91 e5                                      ldr r2, [r1, #8]
0060a3bc  b4 c9 dc e1                                      ldrh ip, [ip, #0x94]
0060a3c0  20 70 92 e5                                      ldr r7, [r2, #0x20]
0060a3c4  28 c0 8d e5                                      str ip, [sp, #0x28]
0060a3c8  00 c0 a0 e3                                      mov ip, #0
0060a3cc  00 00 57 e3                                      cmp r7, #0
0060a3d0  04 20 97 15                                      ldrne r2, [r7, #4]
0060a3d4  3c 00 d7 e5                                      ldrb r0, [r7, #0x3c]
0060a3d8  01 20 82 12                                      addne r2, r2, #1
0060a3dc  04 20 87 15                                      strne r2, [r7, #4]
0060a3e0  84 23 9d e5                                      ldr r2, [sp, #0x384]
0060a3e4  00 10 92 e5                                      ldr r1, [r2]
0060a3e8  38 20 97 e5                                      ldr r2, [r7, #0x38]
0060a3ec  04 10 91 e5                                      ldr r1, [r1, #4]
0060a3f0  02 10 01 e0                                      and r1, r1, r2
0060a3f4  98 23 9d e5                                      ldr r2, [sp, #0x398]
0060a3f8  02 10 01 e0                                      and r1, r1, r2
0060a3fc  14 10 8d e5                                      str r1, [sp, #0x14]
0060a400  0c 10 a0 e1                                      mov r1, ip
0060a404  05 20 a0 e1                                      mov r2, r5
0060a408  0c 10 a2 e7                                      str r1, [r2, ip]!
0060a40c  08 c0 8c e2                                      add ip, ip, #8
0060a410  f0 00 5c e3                                      cmp ip, #0xf0
0060a414  04 10 82 e5                                      str r1, [r2, #4]
0060a418  f9 ff ff 1a                                      bne #0x60a404
0060a41c  54 40 8d e2                                      add r4, sp, #0x54
0060a420  01 60 a0 e1                                      mov r6, r1
0060a424  04 20 a0 e1                                      mov r2, r4
0060a428  01 60 a2 e7                                      str r6, [r2, r1]!
0060a42c  08 10 81 e2                                      add r1, r1, #8
0060a430  f0 00 51 e3                                      cmp r1, #0xf0
0060a434  04 60 82 e5                                      str r6, [r2, #4]
0060a438  f9 ff ff 1a                                      bne #0x60a424
0060a43c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0060a440  00 20 e0 e3                                      mvn r2, #0
0060a444  00 00 50 e3                                      cmp r0, #0
0060a448  03 30 6c e0                                      rsb r3, ip, r3
0060a44c  73 30 ff e6                                      uxth r3, r3
0060a450  57 23 cd e5                                      strb r2, [sp, #0x357]
0060a454  24 30 8d e5                                      str r3, [sp, #0x24]
0060a458  54 23 cd e5                                      strb r2, [sp, #0x354]
0060a45c  55 23 cd e5                                      strb r2, [sp, #0x355]
0060a460  56 23 cd e5                                      strb r2, [sp, #0x356]
0060a464  81 00 00 0a                                      beq #0x60a670
0060a468  02 30 80 e0                                      add r3, r0, r2
0060a46c  73 30 ef e6                                      uxtb r3, r3
0060a470  01 30 83 e2                                      add r3, r3, #1
0060a474  83 31 a0 e1                                      lsl r3, r3, #3
0060a478  d5 1f 8d e2                                      add r1, sp, #0x354
0060a47c  18 30 8d e5                                      str r3, [sp, #0x18]
0060a480  4c 10 8d e5                                      str r1, [sp, #0x4c]
0060a484  b3 2f 8d e2                                      add r2, sp, #0x2cc
0060a488  0a 3d 8d e2                                      add r3, sp, #0x280
0060a48c  8d cf 8d e2                                      add ip, sp, #0x234
0060a490  31 1e 8d e2                                      add r1, sp, #0x310
0060a494  48 60 8d e5                                      str r6, [sp, #0x48]
0060a498  38 20 8d e5                                      str r2, [sp, #0x38]
0060a49c  30 30 8d e5                                      str r3, [sp, #0x30]
0060a4a0  3c c0 8d e5                                      str ip, [sp, #0x3c]
0060a4a4  40 10 8d e5                                      str r1, [sp, #0x40]
0060a4a8  34 40 8d e5                                      str r4, [sp, #0x34]
0060a4ac  44 50 8d e5                                      str r5, [sp, #0x44]
0060a4b0  24 30 97 e5                                      ldr r3, [r7, #0x24]
0060a4b4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0060a4b8  06 30 83 e0                                      add r3, r3, r6
0060a4bc  b4 40 d3 e1                                      ldrh r4, [r3, #4]
0060a4c0  01 30 a0 e3                                      mov r3, #1
0060a4c4  13 24 12 e0                                      ands r2, r2, r3, lsl r4
0060a4c8  62 00 00 0a                                      beq #0x60a658
0060a4cc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0060a4d0  80 c3 9d e5                                      ldr ip, [sp, #0x380]
0060a4d4  04 80 d3 e7                                      ldrb r8, [r3, r4]
0060a4d8  04 30 dc e7                                      ldrb r3, [ip, r4]
0060a4dc  ff 00 58 e3                                      cmp r8, #0xff
0060a4e0  07 01 00 0a                                      beq #0x60a904
0060a4e4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0060a4e8  00 50 91 e5                                      ldr r5, [r1]
0060a4ec  14 50 85 e2                                      add r5, r5, #0x14
0060a4f0  08 22 95 e7                                      ldr r2, [r5, r8, lsl #4]
0060a4f4  08 a2 85 e0                                      add sl, r5, r8, lsl #4
0060a4f8  00 00 52 e3                                      cmp r2, #0
0060a4fc  00 01 00 0a                                      beq #0x60a904
0060a500  84 13 9d e5                                      ldr r1, [sp, #0x384]
0060a504  83 b1 a0 e1                                      lsl fp, r3, #3
0060a508  d6 cf 8d e2                                      add ip, sp, #0x358
0060a50c  0b 20 8c e0                                      add r2, ip, fp
0060a510  00 23 12 e5                                      ldr r2, [r2, #-0x300]
0060a514  00 90 91 e5                                      ldr sb, [r1]
0060a518  00 00 52 e3                                      cmp r2, #0
0060a51c  14 90 89 e2                                      add sb, sb, #0x14
0060a520  03 92 89 e0                                      add sb, sb, r3, lsl #4
0060a524  50 01 00 0a                                      beq #0x60aa6c
0060a528  d6 1f 8d e2                                      add r1, sp, #0x358
0060a52c  88 31 81 e0                                      add r3, r1, r8, lsl #3
0060a530  10 22 13 e5                                      ldr r2, [r3, #-0x210]
0060a534  00 00 52 e3                                      cmp r2, #0
0060a538  54 01 00 0a                                      beq #0x60aa90
0060a53c  d6 3f 8d e2                                      add r3, sp, #0x358
0060a540  0b b0 83 e0                                      add fp, r3, fp
0060a544  00 33 1b e5                                      ldr r3, [fp, #-0x300]
0060a548  be 50 da e1                                      ldrh r5, [sl, #0xe]
0060a54c  be 80 d9 e1                                      ldrh r8, [sb, #0xe]
0060a550  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0060a554  28 10 9d e5                                      ldr r1, [sp, #0x28]
0060a558  95 2c 25 e0                                      mla r5, r5, ip, r2
0060a55c  98 31 28 e0                                      mla r8, r8, r1, r3
0060a560  1b 00 54 e3                                      cmp r4, #0x1b
0060a564  04 f1 8f 90                                      addls pc, pc, r4, lsl #2
0060a568  3a 00 00 ea                                      b #0x60a658
0060a56c  1a 00 00 ea                                      b #0x60a5dc
0060a570  90 00 00 ea                                      b #0x60a7b8
0060a574  8f 00 00 ea                                      b #0x60a7b8
0060a578  8e 00 00 ea                                      b #0x60a7b8
0060a57c  8d 00 00 ea                                      b #0x60a7b8
0060a580  8c 00 00 ea                                      b #0x60a7b8
0060a584  8b 00 00 ea                                      b #0x60a7b8
0060a588  8a 00 00 ea                                      b #0x60a7b8
0060a58c  89 00 00 ea                                      b #0x60a7b8
0060a590  30 00 00 ea                                      b #0x60a658
0060a594  2f 00 00 ea                                      b #0x60a658
0060a598  2e 00 00 ea                                      b #0x60a658
0060a59c  2d 00 00 ea                                      b #0x60a658
0060a5a0  2c 00 00 ea                                      b #0x60a658
0060a5a4  2b 00 00 ea                                      b #0x60a658
0060a5a8  2a 00 00 ea                                      b #0x60a658
0060a5ac  29 00 00 ea                                      b #0x60a658
0060a5b0  65 00 00 ea                                      b #0x60a74c
0060a5b4  4c 00 00 ea                                      b #0x60a6ec
0060a5b8  26 00 00 ea                                      b #0x60a658
0060a5bc  62 00 00 ea                                      b #0x60a74c
0060a5c0  61 00 00 ea                                      b #0x60a74c
0060a5c4  60 00 00 ea                                      b #0x60a74c
0060a5c8  5f 00 00 ea                                      b #0x60a74c
0060a5cc  5e 00 00 ea                                      b #0x60a74c
0060a5d0  5d 00 00 ea                                      b #0x60a74c
0060a5d4  5c 00 00 ea                                      b #0x60a74c
0060a5d8  5b 00 00 ea                                      b #0x60a74c
0060a5dc  90 43 9d e5                                      ldr r4, [sp, #0x390]
0060a5e0  01 10 a0 e3                                      mov r1, #1
0060a5e4  00 30 94 e5                                      ldr r3, [r4]
0060a5e8  04 00 a0 e1                                      mov r0, r4
0060a5ec  0f e0 a0 e1                                      mov lr, pc
0060a5f0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0060a5f4  00 10 a0 e1                                      mov r1, r0
0060a5f8  40 00 9d e5                                      ldr r0, [sp, #0x40]
0060a5fc  32 ff ff eb                                      bl #0x60a2cc
0060a600  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0060a604  40 10 9d e5                                      ldr r1, [sp, #0x40]
0060a608  30 00 9d e5                                      ldr r0, [sp, #0x30]
0060a60c  00 30 9c e5                                      ldr r3, [ip]
0060a610  be 40 d3 e1                                      ldrh r4, [r3, #0xe]
0060a614  04 40 14 e2                                      ands r4, r4, #4
0060a618  10 b0 93 15                                      ldrne fp, [r3, #0x10]
0060a61c  04 b0 a0 01                                      moveq fp, r4
0060a620  0b 40 a0 11                                      movne r4, fp
0060a624  28 ff ff eb                                      bl #0x60a2cc
0060a628  c4 42 8d e5                                      str r4, [sp, #0x2c4]
0060a62c  c8 b2 8d e5                                      str fp, [sp, #0x2c8]
0060a630  ba c0 da e1                                      ldrh ip, [sl, #0xa]
0060a634  be 10 d9 e1                                      ldrh r1, [sb, #0xe]
0060a638  be 30 da e1                                      ldrh r3, [sl, #0xe]
0060a63c  24 40 9d e5                                      ldr r4, [sp, #0x24]
0060a640  00 c0 8d e5                                      str ip, [sp]
0060a644  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0060a648  08 00 a0 e1                                      mov r0, r8
0060a64c  05 20 a0 e1                                      mov r2, r5
0060a650  10 10 8d e9                                      stmib sp, {r4, ip}
0060a654  44 fa ff eb                                      bl #0x608f6c
0060a658  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060a65c  08 60 86 e2                                      add r6, r6, #8
0060a660  01 00 56 e1                                      cmp r6, r1
0060a664  91 ff ff 1a                                      bne #0x60a4b0
0060a668  34 40 9d e5                                      ldr r4, [sp, #0x34]
0060a66c  44 50 9d e5                                      ldr r5, [sp, #0x44]
0060a670  f0 60 84 e2                                      add r6, r4, #0xf0
0060a674  00 a0 a0 e3                                      mov sl, #0
0060a678  08 00 00 ea                                      b #0x60a6a0
0060a67c  01 20 42 e2                                      sub r2, r2, #1
0060a680  1f 30 c3 e3                                      bic r3, r3, #0x1f
0060a684  03 30 82 e1                                      orr r3, r2, r3
0060a688  13 30 c8 e5                                      strb r3, [r8, #0x13]
0060a68c  08 a0 06 e5                                      str sl, [r6, #-8]
0060a690  04 a0 06 e5                                      str sl, [r6, #-4]
0060a694  08 60 46 e2                                      sub r6, r6, #8
0060a698  04 00 56 e1                                      cmp r6, r4
0060a69c  75 00 00 0a                                      beq #0x60a878
0060a6a0  04 30 16 e5                                      ldr r3, [r6, #-4]
0060a6a4  00 00 53 e3                                      cmp r3, #0
0060a6a8  f9 ff ff 0a                                      beq #0x60a694
0060a6ac  08 30 16 e5                                      ldr r3, [r6, #-8]
0060a6b0  00 80 93 e5                                      ldr r8, [r3]
0060a6b4  13 30 d8 e5                                      ldrb r3, [r8, #0x13]
0060a6b8  1f 20 03 e2                                      and r2, r3, #0x1f
0060a6bc  01 00 52 e3                                      cmp r2, #1
0060a6c0  ed ff ff 8a                                      bhi #0x60a67c
0060a6c4  12 30 d8 e5                                      ldrb r3, [r8, #0x12]
0060a6c8  20 00 13 e3                                      tst r3, #0x20
0060a6cc  13 a0 c8 05                                      strbeq sl, [r8, #0x13]
0060a6d0  ed ff ff 0a                                      beq #0x60a68c
0060a6d4  00 30 98 e5                                      ldr r3, [r8]
0060a6d8  08 00 a0 e1                                      mov r0, r8
0060a6dc  0f e0 a0 e1                                      mov lr, pc
0060a6e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0060a6e4  13 a0 c8 e5                                      strb sl, [r8, #0x13]
0060a6e8  e7 ff ff ea                                      b #0x60a68c
0060a6ec  24 20 9d e5                                      ldr r2, [sp, #0x24]
0060a6f0  00 00 52 e3                                      cmp r2, #0
0060a6f4  d7 ff ff 0a                                      beq #0x60a658
0060a6f8  06 b0 a0 e1                                      mov fp, r6
0060a6fc  24 60 9d e5                                      ldr r6, [sp, #0x24]
0060a700  00 40 a0 e3                                      mov r4, #0
0060a704  08 00 a0 e1                                      mov r0, r8
0060a708  05 10 a0 e1                                      mov r1, r5
0060a70c  04 20 a0 e3                                      mov r2, #4
0060a710  54 10 f4 eb                                      bl #0x30e868
0060a714  01 40 84 e2                                      add r4, r4, #1
0060a718  be 20 da e1                                      ldrh r2, [sl, #0xe]
0060a71c  be 30 d9 e1                                      ldrh r3, [sb, #0xe]
0060a720  74 40 ff e6                                      uxth r4, r4
0060a724  06 00 54 e1                                      cmp r4, r6
0060a728  02 50 85 e0                                      add r5, r5, r2
0060a72c  03 80 88 e0                                      add r8, r8, r3
0060a730  f3 ff ff 1a                                      bne #0x60a704
0060a734  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060a738  0b 60 a0 e1                                      mov r6, fp
0060a73c  08 60 86 e2                                      add r6, r6, #8
0060a740  01 00 56 e1                                      cmp r6, r1
0060a744  59 ff ff 1a                                      bne #0x60a4b0
0060a748  c6 ff ff ea                                      b #0x60a668
0060a74c  90 13 9d e5                                      ldr r1, [sp, #0x390]
0060a750  08 60 86 e2                                      add r6, r6, #8
0060a754  00 30 91 e5                                      ldr r3, [r1]
0060a758  01 00 a0 e1                                      mov r0, r1
0060a75c  01 10 a0 e3                                      mov r1, #1
0060a760  0f e0 a0 e1                                      mov lr, pc
0060a764  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0060a768  00 10 a0 e1                                      mov r1, r0
0060a76c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0060a770  d5 fe ff eb                                      bl #0x60a2cc
0060a774  38 10 9d e5                                      ldr r1, [sp, #0x38]
0060a778  30 00 9d e5                                      ldr r0, [sp, #0x30]
0060a77c  d2 fe ff eb                                      bl #0x60a2cc
0060a780  ba c0 da e1                                      ldrh ip, [sl, #0xa]
0060a784  be 10 d9 e1                                      ldrh r1, [sb, #0xe]
0060a788  be 30 da e1                                      ldrh r3, [sl, #0xe]
0060a78c  24 40 9d e5                                      ldr r4, [sp, #0x24]
0060a790  00 c0 8d e5                                      str ip, [sp]
0060a794  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0060a798  08 00 a0 e1                                      mov r0, r8
0060a79c  05 20 a0 e1                                      mov r2, r5
0060a7a0  10 10 8d e9                                      stmib sp, {r4, ip}
0060a7a4  59 fc ff eb                                      bl #0x609910
0060a7a8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060a7ac  01 00 56 e1                                      cmp r6, r1
0060a7b0  3e ff ff 1a                                      bne #0x60a4b0
0060a7b4  ab ff ff ea                                      b #0x60a668
0060a7b8  b8 30 da e1                                      ldrh r3, [sl, #8]
0060a7bc  00 10 a0 e3                                      mov r1, #0
0060a7c0  40 20 a0 e3                                      mov r2, #0x40
0060a7c4  01 30 43 e2                                      sub r3, r3, #1
0060a7c8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0060a7cc  73 40 ef e6                                      uxtb r4, r3
0060a7d0  22 0f f4 eb                                      bl #0x30e460
0060a7d4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0060a7d8  01 30 a0 e3                                      mov r3, #1
0060a7dc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0060a7e0  00 20 91 e5                                      ldr r2, [r1]
0060a7e4  c0 32 cd e5                                      strb r3, [sp, #0x2c0]
0060a7e8  fe 35 a0 e3                                      mov r3, #0x3f800000
0060a7ec  80 32 8d e5                                      str r3, [sp, #0x280]
0060a7f0  94 32 8d e5                                      str r3, [sp, #0x294]
0060a7f4  a8 32 8d e5                                      str r3, [sp, #0x2a8]
0060a7f8  bc 32 8d e5                                      str r3, [sp, #0x2bc]
0060a7fc  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
0060a800  08 30 a0 e3                                      mov r3, #8
0060a804  08 60 86 e2                                      add r6, r6, #8
0060a808  13 34 11 e0                                      ands r3, r1, r3, lsl r4
0060a80c  18 30 a0 13                                      movne r3, #0x18
0060a810  93 04 0b 10                                      mulne fp, r3, r4
0060a814  10 20 92 15                                      ldrne r2, [r2, #0x10]
0060a818  94 33 23 10                                      mlane r3, r4, r3, r3
0060a81c  03 40 a0 01                                      moveq r4, r3
0060a820  24 b0 8b 12                                      addne fp, fp, #0x24
0060a824  03 40 82 10                                      addne r4, r2, r3
0060a828  04 b0 a0 01                                      moveq fp, r4
0060a82c  0b b0 82 10                                      addne fp, r2, fp
0060a830  30 10 9d e5                                      ldr r1, [sp, #0x30]
0060a834  a4 fe ff eb                                      bl #0x60a2cc
0060a838  78 42 8d e5                                      str r4, [sp, #0x278]
0060a83c  7c b2 8d e5                                      str fp, [sp, #0x27c]
0060a840  ba c0 da e1                                      ldrh ip, [sl, #0xa]
0060a844  be 10 d9 e1                                      ldrh r1, [sb, #0xe]
0060a848  be 30 da e1                                      ldrh r3, [sl, #0xe]
0060a84c  24 40 9d e5                                      ldr r4, [sp, #0x24]
0060a850  00 c0 8d e5                                      str ip, [sp]
0060a854  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0060a858  08 00 a0 e1                                      mov r0, r8
0060a85c  05 20 a0 e1                                      mov r2, r5
0060a860  10 10 8d e9                                      stmib sp, {r4, ip}
0060a864  44 fa ff eb                                      bl #0x60917c
0060a868  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060a86c  01 00 56 e1                                      cmp r6, r1
0060a870  0e ff ff 1a                                      bne #0x60a4b0
0060a874  7b ff ff ea                                      b #0x60a668
0060a878  f0 40 85 e2                                      add r4, r5, #0xf0
0060a87c  00 80 a0 e3                                      mov r8, #0
0060a880  08 00 00 ea                                      b #0x60a8a8
0060a884  01 20 42 e2                                      sub r2, r2, #1
0060a888  1f 30 c3 e3                                      bic r3, r3, #0x1f
0060a88c  03 30 82 e1                                      orr r3, r2, r3
0060a890  13 30 c6 e5                                      strb r3, [r6, #0x13]
0060a894  08 80 04 e5                                      str r8, [r4, #-8]
0060a898  04 80 04 e5                                      str r8, [r4, #-4]
0060a89c  08 40 44 e2                                      sub r4, r4, #8
0060a8a0  05 00 54 e1                                      cmp r4, r5
0060a8a4  12 00 00 0a                                      beq #0x60a8f4
0060a8a8  04 30 14 e5                                      ldr r3, [r4, #-4]
0060a8ac  00 00 53 e3                                      cmp r3, #0
0060a8b0  f9 ff ff 0a                                      beq #0x60a89c
0060a8b4  08 30 14 e5                                      ldr r3, [r4, #-8]
0060a8b8  00 60 93 e5                                      ldr r6, [r3]
0060a8bc  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
0060a8c0  1f 20 03 e2                                      and r2, r3, #0x1f
0060a8c4  01 00 52 e3                                      cmp r2, #1
0060a8c8  ed ff ff 8a                                      bhi #0x60a884
0060a8cc  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0060a8d0  20 00 13 e3                                      tst r3, #0x20
0060a8d4  13 80 c6 05                                      strbeq r8, [r6, #0x13]
0060a8d8  ed ff ff 0a                                      beq #0x60a894
0060a8dc  00 30 96 e5                                      ldr r3, [r6]
0060a8e0  06 00 a0 e1                                      mov r0, r6
0060a8e4  0f e0 a0 e1                                      mov lr, pc
0060a8e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0060a8ec  13 80 c6 e5                                      strb r8, [r6, #0x13]
0060a8f0  e7 ff ff ea                                      b #0x60a894
0060a8f4  07 00 a0 e1                                      mov r0, r7
0060a8f8  21 4b f4 eb                                      bl #0x31d584
0060a8fc  d7 df 8d e2                                      add sp, sp, #0x35c
0060a900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060a904  ff 00 53 e3                                      cmp r3, #0xff
0060a908  52 ff ff 0a                                      beq #0x60a658
0060a90c  84 23 9d e5                                      ldr r2, [sp, #0x384]
0060a910  00 50 92 e5                                      ldr r5, [r2]
0060a914  14 50 85 e2                                      add r5, r5, #0x14
0060a918  03 22 95 e7                                      ldr r2, [r5, r3, lsl #4]
0060a91c  03 52 85 e0                                      add r5, r5, r3, lsl #4
0060a920  00 00 52 e3                                      cmp r2, #0
0060a924  4b ff ff 0a                                      beq #0x60a658
0060a928  83 b1 a0 e1                                      lsl fp, r3, #3
0060a92c  d6 cf 8d e2                                      add ip, sp, #0x358
0060a930  0b 30 8c e0                                      add r3, ip, fp
0060a934  00 33 13 e5                                      ldr r3, [r3, #-0x300]
0060a938  00 00 53 e3                                      cmp r3, #0
0060a93c  6d 00 00 0a                                      beq #0x60aaf8
0060a940  d6 2f 8d e2                                      add r2, sp, #0x358
0060a944  0b b0 82 e0                                      add fp, r2, fp
0060a948  00 83 1b e5                                      ldr r8, [fp, #-0x300]
0060a94c  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
0060a950  28 30 9d e5                                      ldr r3, [sp, #0x28]
0060a954  1b 00 54 e3                                      cmp r4, #0x1b
0060a958  92 83 28 e0                                      mla r8, r2, r3, r8
0060a95c  3d ff ff 8a                                      bhi #0x60a658
0060a960  01 a0 a0 e3                                      mov sl, #1
0060a964  1a 44 a0 e1                                      lsl r4, sl, r4
0060a968  00 30 00 e3                                      movw r3, #0
0060a96c  f2 3f 40 e3                                      movt r3, #0xff2
0060a970  03 30 04 e0                                      and r3, r4, r3
0060a974  00 00 53 e3                                      cmp r3, #0
0060a978  10 00 00 0a                                      beq #0x60a9c0
0060a97c  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060a980  00 00 51 e3                                      cmp r1, #0
0060a984  01 30 a0 e1                                      mov r3, r1
0060a988  32 ff ff 0a                                      beq #0x60a658
0060a98c  00 40 a0 e3                                      mov r4, #0
0060a990  fe c5 a0 e3                                      mov ip, #0x3f800000
0060a994  01 30 53 e2                                      subs r3, r3, #1
0060a998  00 40 88 e5                                      str r4, [r8]
0060a99c  04 c0 88 e5                                      str ip, [r8, #4]
0060a9a0  08 40 88 e5                                      str r4, [r8, #8]
0060a9a4  02 80 88 e0                                      add r8, r8, r2
0060a9a8  f7 ff ff 1a                                      bne #0x60a98c
0060a9ac  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060a9b0  08 60 86 e2                                      add r6, r6, #8
0060a9b4  01 00 56 e1                                      cmp r6, r1
0060a9b8  bc fe ff 1a                                      bne #0x60a4b0
0060a9bc  29 ff ff ea                                      b #0x60a668
0060a9c0  01 07 14 e3                                      tst r4, #0x40000
0060a9c4  14 00 00 0a                                      beq #0x60aa1c
0060a9c8  48 10 9d e5                                      ldr r1, [sp, #0x48]
0060a9cc  00 00 51 e3                                      cmp r1, #0
0060a9d0  38 00 00 0a                                      beq #0x60aab8
0060a9d4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0060a9d8  54 e3 dd e5                                      ldrb lr, [sp, #0x354]
0060a9dc  55 c3 dd e5                                      ldrb ip, [sp, #0x355]
0060a9e0  00 00 53 e3                                      cmp r3, #0
0060a9e4  56 03 dd e5                                      ldrb r0, [sp, #0x356]
0060a9e8  57 13 dd e5                                      ldrb r1, [sp, #0x357]
0060a9ec  19 ff ff 0a                                      beq #0x60a658
0060a9f0  01 30 53 e2                                      subs r3, r3, #1
0060a9f4  03 10 c8 e5                                      strb r1, [r8, #3]
0060a9f8  02 00 c8 e5                                      strb r0, [r8, #2]
0060a9fc  01 c0 c8 e5                                      strb ip, [r8, #1]
0060aa00  02 e0 c8 e6                                      strb lr, [r8], r2
0060aa04  f9 ff ff 1a                                      bne #0x60a9f0
0060aa08  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060aa0c  08 60 86 e2                                      add r6, r6, #8
0060aa10  01 00 56 e1                                      cmp r6, r1
0060aa14  a5 fe ff 1a                                      bne #0x60a4b0
0060aa18  12 ff ff ea                                      b #0x60a668
0060aa1c  01 40 c4 e3                                      bic r4, r4, #1
0060aa20  84 4b a0 e1                                      lsl r4, r4, #0x17
0060aa24  a4 4b a0 e1                                      lsr r4, r4, #0x17
0060aa28  00 00 54 e3                                      cmp r4, #0
0060aa2c  09 ff ff 0a                                      beq #0x60a658
0060aa30  24 40 9d e5                                      ldr r4, [sp, #0x24]
0060aa34  00 00 54 e3                                      cmp r4, #0
0060aa38  04 30 a0 e1                                      mov r3, r4
0060aa3c  05 ff ff 0a                                      beq #0x60a658
0060aa40  00 c0 a0 e3                                      mov ip, #0
0060aa44  01 30 53 e2                                      subs r3, r3, #1
0060aa48  00 c0 88 e5                                      str ip, [r8]
0060aa4c  04 c0 88 e5                                      str ip, [r8, #4]
0060aa50  02 80 88 e0                                      add r8, r8, r2
0060aa54  f9 ff ff 1a                                      bne #0x60aa40
0060aa58  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060aa5c  08 60 86 e2                                      add r6, r6, #8
0060aa60  01 00 56 e1                                      cmp r6, r1
0060aa64  91 fe ff 1a                                      bne #0x60a4b0
0060aa68  fe fe ff ea                                      b #0x60a668
0060aa6c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0060aa70  09 10 a0 e1                                      mov r1, sb
0060aa74  0b 00 8c e0                                      add r0, ip, fp
0060aa78  1b fe ff eb                                      bl #0x60a2ec
0060aa7c  d6 1f 8d e2                                      add r1, sp, #0x358
0060aa80  88 31 81 e0                                      add r3, r1, r8, lsl #3
0060aa84  10 22 13 e5                                      ldr r2, [r3, #-0x210]
0060aa88  00 00 52 e3                                      cmp r2, #0
0060aa8c  aa fe ff 1a                                      bne #0x60a53c
0060aa90  14 a2 03 e5                                      str sl, [r3, #-0x214]
0060aa94  08 02 95 e7                                      ldr r0, [r5, r8, lsl #4]
0060aa98  01 10 a0 e3                                      mov r1, #1
0060aa9c  10 30 8d e5                                      str r3, [sp, #0x10]
0060aaa0  0d 5c fe eb                                      bl #0x5a1adc
0060aaa4  04 20 9a e5                                      ldr r2, [sl, #4]
0060aaa8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0060aaac  02 20 80 e0                                      add r2, r0, r2
0060aab0  10 22 03 e5                                      str r2, [r3, #-0x210]
0060aab4  a0 fe ff ea                                      b #0x60a53c
0060aab8  88 23 9d e5                                      ldr r2, [sp, #0x388]
0060aabc  06 10 a0 e3                                      mov r1, #6
0060aac0  04 00 92 e5                                      ldr r0, [r2, #4]
0060aac4  48 20 9d e5                                      ldr r2, [sp, #0x48]
0060aac8  0e 11 ff eb                                      bl #0x5cef08
0060aacc  ff 3f 0f e3                                      movw r3, #0xffff
0060aad0  03 00 50 e1                                      cmp r0, r3
0060aad4  0c 00 00 0a                                      beq #0x60ab0c
0060aad8  48 20 9d e5                                      ldr r2, [sp, #0x48]
0060aadc  00 10 a0 e1                                      mov r1, r0
0060aae0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0060aae4  88 03 9d e5                                      ldr r0, [sp, #0x388]
0060aae8  ad f1 fe eb                                      bl #0x5c71a4
0060aaec  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
0060aaf0  48 a0 8d e5                                      str sl, [sp, #0x48]
0060aaf4  b6 ff ff ea                                      b #0x60a9d4
0060aaf8  34 10 9d e5                                      ldr r1, [sp, #0x34]
0060aafc  0b 00 81 e0                                      add r0, r1, fp
0060ab00  05 10 a0 e1                                      mov r1, r5
0060ab04  f8 fd ff eb                                      bl #0x60a2ec
0060ab08  8c ff ff ea                                      b #0x60a940
0060ab0c  48 a0 8d e5                                      str sl, [sp, #0x48]
0060ab10  be 20 d5 e1                                      ldrh r2, [r5, #0xe]
0060ab14  ae ff ff ea                                      b #0x60a9d4

; FUNCTION 0x0066d0b8, declared_size=940, range_size=940, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4coreL18rowMatrixProduct34INS0_8CMatrix4IfEES3_A16_fEEvRT_RKT0_RKT1_
; demangled: void glitch::core::rowMatrixProduct34<glitch::core::CMatrix4<float>, glitch::core::CMatrix4<float>, float [16]>(glitch::core::CMatrix4<float>&, glitch::core::CMatrix4<float> const&, float const (&) [16])
; decoder-mode: arm
0066d0b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066d0bc  00 30 a0 e3                                      mov r3, #0
0066d0c0  40 30 c0 e5                                      strb r3, [r0, #0x40]
0066d0c4  01 50 a0 e1                                      mov r5, r1
0066d0c8  00 40 a0 e1                                      mov r4, r0
0066d0cc  00 00 91 e5                                      ldr r0, [r1]
0066d0d0  00 10 92 e5                                      ldr r1, [r2]
0066d0d4  02 60 a0 e1                                      mov r6, r2
0066d0d8  23 87 f2 eb                                      bl #0x30ed6c
0066d0dc  04 10 96 e5                                      ldr r1, [r6, #4]
0066d0e0  00 70 a0 e1                                      mov r7, r0
0066d0e4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066d0e8  1f 87 f2 eb                                      bl #0x30ed6c
0066d0ec  00 10 a0 e1                                      mov r1, r0
0066d0f0  07 00 a0 e1                                      mov r0, r7
0066d0f4  aa 86 f2 eb                                      bl #0x30eba4
0066d0f8  08 10 96 e5                                      ldr r1, [r6, #8]
0066d0fc  00 70 a0 e1                                      mov r7, r0
0066d100  20 00 95 e5                                      ldr r0, [r5, #0x20]
0066d104  18 87 f2 eb                                      bl #0x30ed6c
0066d108  00 10 a0 e1                                      mov r1, r0
0066d10c  07 00 a0 e1                                      mov r0, r7
0066d110  a3 86 f2 eb                                      bl #0x30eba4
0066d114  00 00 84 e5                                      str r0, [r4]
0066d118  00 10 96 e5                                      ldr r1, [r6]
0066d11c  04 00 95 e5                                      ldr r0, [r5, #4]
0066d120  11 87 f2 eb                                      bl #0x30ed6c
0066d124  04 10 96 e5                                      ldr r1, [r6, #4]
0066d128  00 70 a0 e1                                      mov r7, r0
0066d12c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0066d130  0d 87 f2 eb                                      bl #0x30ed6c
0066d134  00 10 a0 e1                                      mov r1, r0
0066d138  07 00 a0 e1                                      mov r0, r7
0066d13c  98 86 f2 eb                                      bl #0x30eba4
0066d140  08 10 96 e5                                      ldr r1, [r6, #8]
0066d144  00 70 a0 e1                                      mov r7, r0
0066d148  24 00 95 e5                                      ldr r0, [r5, #0x24]
0066d14c  06 87 f2 eb                                      bl #0x30ed6c
0066d150  00 10 a0 e1                                      mov r1, r0
0066d154  07 00 a0 e1                                      mov r0, r7
0066d158  91 86 f2 eb                                      bl #0x30eba4
0066d15c  04 00 84 e5                                      str r0, [r4, #4]
0066d160  00 10 96 e5                                      ldr r1, [r6]
0066d164  08 00 95 e5                                      ldr r0, [r5, #8]
0066d168  ff 86 f2 eb                                      bl #0x30ed6c
0066d16c  04 10 96 e5                                      ldr r1, [r6, #4]
0066d170  00 70 a0 e1                                      mov r7, r0
0066d174  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066d178  fb 86 f2 eb                                      bl #0x30ed6c
0066d17c  00 10 a0 e1                                      mov r1, r0
0066d180  07 00 a0 e1                                      mov r0, r7
0066d184  86 86 f2 eb                                      bl #0x30eba4
0066d188  08 10 96 e5                                      ldr r1, [r6, #8]
0066d18c  00 70 a0 e1                                      mov r7, r0
0066d190  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066d194  f4 86 f2 eb                                      bl #0x30ed6c
0066d198  00 10 a0 e1                                      mov r1, r0
0066d19c  07 00 a0 e1                                      mov r0, r7
0066d1a0  7f 86 f2 eb                                      bl #0x30eba4
0066d1a4  00 70 a0 e3                                      mov r7, #0
0066d1a8  08 00 84 e5                                      str r0, [r4, #8]
0066d1ac  0c 70 84 e5                                      str r7, [r4, #0xc]
0066d1b0  10 10 96 e5                                      ldr r1, [r6, #0x10]
0066d1b4  00 00 95 e5                                      ldr r0, [r5]
0066d1b8  eb 86 f2 eb                                      bl #0x30ed6c
0066d1bc  14 10 96 e5                                      ldr r1, [r6, #0x14]
0066d1c0  00 80 a0 e1                                      mov r8, r0
0066d1c4  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066d1c8  e7 86 f2 eb                                      bl #0x30ed6c
0066d1cc  00 10 a0 e1                                      mov r1, r0
0066d1d0  08 00 a0 e1                                      mov r0, r8
0066d1d4  72 86 f2 eb                                      bl #0x30eba4
0066d1d8  18 10 96 e5                                      ldr r1, [r6, #0x18]
0066d1dc  00 80 a0 e1                                      mov r8, r0
0066d1e0  20 00 95 e5                                      ldr r0, [r5, #0x20]
0066d1e4  e0 86 f2 eb                                      bl #0x30ed6c
0066d1e8  00 10 a0 e1                                      mov r1, r0
0066d1ec  08 00 a0 e1                                      mov r0, r8
0066d1f0  6b 86 f2 eb                                      bl #0x30eba4
0066d1f4  10 00 84 e5                                      str r0, [r4, #0x10]
0066d1f8  10 10 96 e5                                      ldr r1, [r6, #0x10]
0066d1fc  04 00 95 e5                                      ldr r0, [r5, #4]
0066d200  d9 86 f2 eb                                      bl #0x30ed6c
0066d204  14 10 96 e5                                      ldr r1, [r6, #0x14]
0066d208  00 80 a0 e1                                      mov r8, r0
0066d20c  14 00 95 e5                                      ldr r0, [r5, #0x14]
0066d210  d5 86 f2 eb                                      bl #0x30ed6c
0066d214  00 10 a0 e1                                      mov r1, r0
0066d218  08 00 a0 e1                                      mov r0, r8
0066d21c  60 86 f2 eb                                      bl #0x30eba4
0066d220  18 10 96 e5                                      ldr r1, [r6, #0x18]
0066d224  00 80 a0 e1                                      mov r8, r0
0066d228  24 00 95 e5                                      ldr r0, [r5, #0x24]
0066d22c  ce 86 f2 eb                                      bl #0x30ed6c
0066d230  00 10 a0 e1                                      mov r1, r0
0066d234  08 00 a0 e1                                      mov r0, r8
0066d238  59 86 f2 eb                                      bl #0x30eba4
0066d23c  14 00 84 e5                                      str r0, [r4, #0x14]
0066d240  10 10 96 e5                                      ldr r1, [r6, #0x10]
0066d244  08 00 95 e5                                      ldr r0, [r5, #8]
0066d248  c7 86 f2 eb                                      bl #0x30ed6c
0066d24c  14 10 96 e5                                      ldr r1, [r6, #0x14]
0066d250  00 80 a0 e1                                      mov r8, r0
0066d254  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066d258  c3 86 f2 eb                                      bl #0x30ed6c
0066d25c  00 10 a0 e1                                      mov r1, r0
0066d260  08 00 a0 e1                                      mov r0, r8
0066d264  4e 86 f2 eb                                      bl #0x30eba4
0066d268  18 10 96 e5                                      ldr r1, [r6, #0x18]
0066d26c  00 80 a0 e1                                      mov r8, r0
0066d270  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066d274  bc 86 f2 eb                                      bl #0x30ed6c
0066d278  00 10 a0 e1                                      mov r1, r0
0066d27c  08 00 a0 e1                                      mov r0, r8
0066d280  47 86 f2 eb                                      bl #0x30eba4
0066d284  18 00 84 e5                                      str r0, [r4, #0x18]
0066d288  1c 70 84 e5                                      str r7, [r4, #0x1c]
0066d28c  20 10 96 e5                                      ldr r1, [r6, #0x20]
0066d290  00 00 95 e5                                      ldr r0, [r5]
0066d294  b4 86 f2 eb                                      bl #0x30ed6c
0066d298  24 10 96 e5                                      ldr r1, [r6, #0x24]
0066d29c  00 80 a0 e1                                      mov r8, r0
0066d2a0  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066d2a4  b0 86 f2 eb                                      bl #0x30ed6c
0066d2a8  00 10 a0 e1                                      mov r1, r0
0066d2ac  08 00 a0 e1                                      mov r0, r8
0066d2b0  3b 86 f2 eb                                      bl #0x30eba4
0066d2b4  28 10 96 e5                                      ldr r1, [r6, #0x28]
0066d2b8  00 80 a0 e1                                      mov r8, r0
0066d2bc  20 00 95 e5                                      ldr r0, [r5, #0x20]
0066d2c0  a9 86 f2 eb                                      bl #0x30ed6c
0066d2c4  00 10 a0 e1                                      mov r1, r0
0066d2c8  08 00 a0 e1                                      mov r0, r8
0066d2cc  34 86 f2 eb                                      bl #0x30eba4
0066d2d0  20 00 84 e5                                      str r0, [r4, #0x20]
0066d2d4  20 10 96 e5                                      ldr r1, [r6, #0x20]
0066d2d8  04 00 95 e5                                      ldr r0, [r5, #4]
0066d2dc  a2 86 f2 eb                                      bl #0x30ed6c
0066d2e0  24 10 96 e5                                      ldr r1, [r6, #0x24]
0066d2e4  00 80 a0 e1                                      mov r8, r0
0066d2e8  14 00 95 e5                                      ldr r0, [r5, #0x14]
0066d2ec  9e 86 f2 eb                                      bl #0x30ed6c
0066d2f0  00 10 a0 e1                                      mov r1, r0
0066d2f4  08 00 a0 e1                                      mov r0, r8
0066d2f8  29 86 f2 eb                                      bl #0x30eba4
0066d2fc  28 10 96 e5                                      ldr r1, [r6, #0x28]
0066d300  00 80 a0 e1                                      mov r8, r0
0066d304  24 00 95 e5                                      ldr r0, [r5, #0x24]
0066d308  97 86 f2 eb                                      bl #0x30ed6c
0066d30c  00 10 a0 e1                                      mov r1, r0
0066d310  08 00 a0 e1                                      mov r0, r8
0066d314  22 86 f2 eb                                      bl #0x30eba4
0066d318  24 00 84 e5                                      str r0, [r4, #0x24]
0066d31c  20 10 96 e5                                      ldr r1, [r6, #0x20]
0066d320  08 00 95 e5                                      ldr r0, [r5, #8]
0066d324  90 86 f2 eb                                      bl #0x30ed6c
0066d328  24 10 96 e5                                      ldr r1, [r6, #0x24]
0066d32c  00 80 a0 e1                                      mov r8, r0
0066d330  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066d334  8c 86 f2 eb                                      bl #0x30ed6c
0066d338  00 10 a0 e1                                      mov r1, r0
0066d33c  08 00 a0 e1                                      mov r0, r8
0066d340  17 86 f2 eb                                      bl #0x30eba4
0066d344  28 10 96 e5                                      ldr r1, [r6, #0x28]
0066d348  00 80 a0 e1                                      mov r8, r0
0066d34c  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066d350  85 86 f2 eb                                      bl #0x30ed6c
0066d354  00 10 a0 e1                                      mov r1, r0
0066d358  08 00 a0 e1                                      mov r0, r8
0066d35c  10 86 f2 eb                                      bl #0x30eba4
0066d360  28 00 84 e5                                      str r0, [r4, #0x28]
0066d364  2c 70 84 e5                                      str r7, [r4, #0x2c]
0066d368  30 10 96 e5                                      ldr r1, [r6, #0x30]
0066d36c  00 00 95 e5                                      ldr r0, [r5]
0066d370  7d 86 f2 eb                                      bl #0x30ed6c
0066d374  34 10 96 e5                                      ldr r1, [r6, #0x34]
0066d378  00 70 a0 e1                                      mov r7, r0
0066d37c  10 00 95 e5                                      ldr r0, [r5, #0x10]
0066d380  79 86 f2 eb                                      bl #0x30ed6c
0066d384  00 10 a0 e1                                      mov r1, r0
0066d388  07 00 a0 e1                                      mov r0, r7
0066d38c  04 86 f2 eb                                      bl #0x30eba4
0066d390  38 10 96 e5                                      ldr r1, [r6, #0x38]
0066d394  00 70 a0 e1                                      mov r7, r0
0066d398  20 00 95 e5                                      ldr r0, [r5, #0x20]
0066d39c  72 86 f2 eb                                      bl #0x30ed6c
0066d3a0  00 10 a0 e1                                      mov r1, r0
0066d3a4  07 00 a0 e1                                      mov r0, r7
0066d3a8  fd 85 f2 eb                                      bl #0x30eba4
0066d3ac  30 10 95 e5                                      ldr r1, [r5, #0x30]
0066d3b0  fb 85 f2 eb                                      bl #0x30eba4
0066d3b4  30 00 84 e5                                      str r0, [r4, #0x30]
0066d3b8  30 10 96 e5                                      ldr r1, [r6, #0x30]
0066d3bc  04 00 95 e5                                      ldr r0, [r5, #4]
0066d3c0  69 86 f2 eb                                      bl #0x30ed6c
0066d3c4  34 10 96 e5                                      ldr r1, [r6, #0x34]
0066d3c8  00 70 a0 e1                                      mov r7, r0
0066d3cc  14 00 95 e5                                      ldr r0, [r5, #0x14]
0066d3d0  65 86 f2 eb                                      bl #0x30ed6c
0066d3d4  00 10 a0 e1                                      mov r1, r0
0066d3d8  07 00 a0 e1                                      mov r0, r7
0066d3dc  f0 85 f2 eb                                      bl #0x30eba4
0066d3e0  38 10 96 e5                                      ldr r1, [r6, #0x38]
0066d3e4  00 70 a0 e1                                      mov r7, r0
0066d3e8  24 00 95 e5                                      ldr r0, [r5, #0x24]
0066d3ec  5e 86 f2 eb                                      bl #0x30ed6c
0066d3f0  00 10 a0 e1                                      mov r1, r0
0066d3f4  07 00 a0 e1                                      mov r0, r7
0066d3f8  e9 85 f2 eb                                      bl #0x30eba4
0066d3fc  34 10 95 e5                                      ldr r1, [r5, #0x34]
0066d400  e7 85 f2 eb                                      bl #0x30eba4
0066d404  34 00 84 e5                                      str r0, [r4, #0x34]
0066d408  30 10 96 e5                                      ldr r1, [r6, #0x30]
0066d40c  08 00 95 e5                                      ldr r0, [r5, #8]
0066d410  55 86 f2 eb                                      bl #0x30ed6c
0066d414  34 10 96 e5                                      ldr r1, [r6, #0x34]
0066d418  00 70 a0 e1                                      mov r7, r0
0066d41c  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066d420  51 86 f2 eb                                      bl #0x30ed6c
0066d424  00 10 a0 e1                                      mov r1, r0
0066d428  07 00 a0 e1                                      mov r0, r7
0066d42c  dc 85 f2 eb                                      bl #0x30eba4
0066d430  38 10 96 e5                                      ldr r1, [r6, #0x38]
0066d434  00 70 a0 e1                                      mov r7, r0
0066d438  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066d43c  4a 86 f2 eb                                      bl #0x30ed6c
0066d440  00 10 a0 e1                                      mov r1, r0
0066d444  07 00 a0 e1                                      mov r0, r7
0066d448  d5 85 f2 eb                                      bl #0x30eba4
0066d44c  38 10 95 e5                                      ldr r1, [r5, #0x38]
0066d450  d3 85 f2 eb                                      bl #0x30eba4
0066d454  fe 35 a0 e3                                      mov r3, #0x3f800000
0066d458  38 00 84 e5                                      str r0, [r4, #0x38]
0066d45c  3c 30 84 e5                                      str r3, [r4, #0x3c]
0066d460  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006a11bc, declared_size=324, range_size=324, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIfEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<float>(float const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<float>&)
; decoder-mode: arm
006a11bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a11c0  00 00 53 e3                                      cmp r3, #0
006a11c4  14 d0 4d e2                                      sub sp, sp, #0x14
006a11c8  04 20 8d e5                                      str r2, [sp, #4]
006a11cc  38 70 9d e5                                      ldr r7, [sp, #0x38]
006a11d0  3f 00 00 0a                                      beq #0x6a12d4
006a11d4  03 00 51 e3                                      cmp r1, #3
006a11d8  01 90 a0 31                                      movlo sb, r1
006a11dc  03 90 a0 23                                      movhs sb, #3
006a11e0  00 00 59 e3                                      cmp sb, #0
006a11e4  00 20 a0 13                                      movne r2, #0
006a11e8  0c 80 87 12                                      addne r8, r7, #0xc
006a11ec  02 10 a0 11                                      movne r1, r2
006a11f0  40 00 00 0a                                      beq #0x6a12f8
006a11f4  02 c0 90 e7                                      ldr ip, [r0, r2]
006a11f8  01 10 81 e2                                      add r1, r1, #1
006a11fc  09 00 51 e1                                      cmp r1, sb
006a1200  02 c0 87 e7                                      str ip, [r7, r2]
006a1204  02 c0 90 e7                                      ldr ip, [r0, r2]
006a1208  02 c0 88 e7                                      str ip, [r8, r2]
006a120c  04 20 82 e2                                      add r2, r2, #4
006a1210  f7 ff ff 1a                                      bne #0x6a11f4
006a1214  02 00 59 e3                                      cmp sb, #2
006a1218  08 00 00 8a                                      bhi #0x6a1240
006a121c  09 21 a0 e1                                      lsl r2, sb, #2
006a1220  09 10 a0 e1                                      mov r1, sb
006a1224  00 c0 a0 e3                                      mov ip, #0
006a1228  01 10 81 e2                                      add r1, r1, #1
006a122c  02 00 51 e3                                      cmp r1, #2
006a1230  02 c0 87 e7                                      str ip, [r7, r2]
006a1234  02 c0 88 e7                                      str ip, [r8, r2]
006a1238  04 20 82 e2                                      add r2, r2, #4
006a123c  f9 ff ff 9a                                      bls #0x6a1228
006a1240  04 10 9d e5                                      ldr r1, [sp, #4]
006a1244  01 30 43 e2                                      sub r3, r3, #1
006a1248  01 00 80 e0                                      add r0, r0, r1
006a124c  91 03 23 e0                                      mla r3, r1, r3, r0
006a1250  08 00 8d e5                                      str r0, [sp, #8]
006a1254  03 00 50 e1                                      cmp r0, r3
006a1258  0c 30 8d e5                                      str r3, [sp, #0xc]
006a125c  00 b0 a0 13                                      movne fp, #0
006a1260  00 a0 a0 11                                      movne sl, r0
006a1264  21 00 00 0a                                      beq #0x6a12f0
006a1268  00 00 59 e3                                      cmp sb, #0
006a126c  00 40 a0 13                                      movne r4, #0
006a1270  04 60 a0 11                                      movne r6, r4
006a1274  0f 00 00 0a                                      beq #0x6a12b8
006a1278  04 50 9a e7                                      ldr r5, [sl, r4]
006a127c  04 10 97 e7                                      ldr r1, [r7, r4]
006a1280  01 60 86 e2                                      add r6, r6, #1
006a1284  05 00 a0 e1                                      mov r0, r5
006a1288  1f b5 f1 eb                                      bl #0x30e70c
006a128c  00 00 50 e3                                      cmp r0, #0
006a1290  04 50 87 17                                      strne r5, [r7, r4]
006a1294  04 50 9a 17                                      ldrne r5, [sl, r4]
006a1298  04 00 98 e7                                      ldr r0, [r8, r4]
006a129c  05 10 a0 e1                                      mov r1, r5
006a12a0  19 b5 f1 eb                                      bl #0x30e70c
006a12a4  00 00 50 e3                                      cmp r0, #0
006a12a8  04 50 88 17                                      strne r5, [r8, r4]
006a12ac  09 00 56 e1                                      cmp r6, sb
006a12b0  04 40 84 e2                                      add r4, r4, #4
006a12b4  ef ff ff 1a                                      bne #0x6a1278
006a12b8  0c 00 9d e9                                      ldmib sp, {r2, r3}
006a12bc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a12c0  02 b0 8b e0                                      add fp, fp, r2
006a12c4  0b a0 83 e0                                      add sl, r3, fp
006a12c8  0a 00 51 e1                                      cmp r1, sl
006a12cc  e5 ff ff 1a                                      bne #0x6a1268
006a12d0  06 00 00 ea                                      b #0x6a12f0
006a12d4  00 30 a0 e3                                      mov r3, #0
006a12d8  08 30 87 e5                                      str r3, [r7, #8]
006a12dc  0c 30 87 e5                                      str r3, [r7, #0xc]
006a12e0  10 30 87 e5                                      str r3, [r7, #0x10]
006a12e4  14 30 87 e5                                      str r3, [r7, #0x14]
006a12e8  00 30 87 e5                                      str r3, [r7]
006a12ec  04 30 87 e5                                      str r3, [r7, #4]
006a12f0  14 d0 8d e2                                      add sp, sp, #0x14
006a12f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a12f8  0c 80 87 e2                                      add r8, r7, #0xc
006a12fc  c6 ff ff ea                                      b #0x6a121c

; FUNCTION 0x006a1300, declared_size=496, range_size=496, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core19quantizeScaleOffsetINS0_8vector3dIsEENS2_IfEEEEvPT_jPKT0_jjRS7_SA_
; demangled: void glitch::core::quantizeScaleOffset<glitch::core::vector3d<short>, glitch::core::vector3d<float> >(glitch::core::vector3d<short>*, unsigned int, glitch::core::vector3d<float> const*, unsigned int, unsigned int, glitch::core::vector3d<float>&, glitch::core::vector3d<float>&)
; decoder-mode: arm
006a1300  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a1304  54 d0 4d e2                                      sub sp, sp, #0x54
006a1308  78 80 9d e5                                      ldr r8, [sp, #0x78]
006a130c  02 40 a0 e1                                      mov r4, r2
006a1310  bf c4 a0 e3                                      mov ip, #0xbf000000
006a1314  03 20 a0 e1                                      mov r2, r3
006a1318  20 e0 8d e2                                      add lr, sp, #0x20
006a131c  02 c5 8c e2                                      add ip, ip, #0x800000
006a1320  fe 55 a0 e3                                      mov r5, #0x3f800000
006a1324  00 90 a0 e1                                      mov sb, r0
006a1328  14 30 8d e5                                      str r3, [sp, #0x14]
006a132c  10 10 8d e5                                      str r1, [sp, #0x10]
006a1330  08 30 a0 e1                                      mov r3, r8
006a1334  04 00 a0 e1                                      mov r0, r4
006a1338  03 10 a0 e3                                      mov r1, #3
006a133c  00 e0 8d e5                                      str lr, [sp]
006a1340  28 c0 8d e5                                      str ip, [sp, #0x28]
006a1344  20 c0 8d e5                                      str ip, [sp, #0x20]
006a1348  24 c0 8d e5                                      str ip, [sp, #0x24]
006a134c  34 50 8d e5                                      str r5, [sp, #0x34]
006a1350  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a1354  30 50 8d e5                                      str r5, [sp, #0x30]
006a1358  80 50 9d e5                                      ldr r5, [sp, #0x80]
006a135c  96 ff ff eb                                      bl #0x6a11bc
006a1360  24 10 9d e5                                      ldr r1, [sp, #0x24]
006a1364  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a1368  0f b4 f1 eb                                      bl #0x30e3ac
006a136c  de 15 a0 e3                                      mov r1, #0x37800000
006a1370  80 10 81 e2                                      add r1, r1, #0x80
006a1374  7c b6 f1 eb                                      bl #0x30ed6c
006a1378  28 10 9d e5                                      ldr r1, [sp, #0x28]
006a137c  00 70 a0 e1                                      mov r7, r0
006a1380  34 00 9d e5                                      ldr r0, [sp, #0x34]
006a1384  08 b4 f1 eb                                      bl #0x30e3ac
006a1388  de 15 a0 e3                                      mov r1, #0x37800000
006a138c  80 10 81 e2                                      add r1, r1, #0x80
006a1390  75 b6 f1 eb                                      bl #0x30ed6c
006a1394  20 10 9d e5                                      ldr r1, [sp, #0x20]
006a1398  00 60 a0 e1                                      mov r6, r0
006a139c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a13a0  01 b4 f1 eb                                      bl #0x30e3ac
006a13a4  de 15 a0 e3                                      mov r1, #0x37800000
006a13a8  80 10 81 e2                                      add r1, r1, #0x80
006a13ac  6e b6 f1 eb                                      bl #0x30ed6c
006a13b0  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006a13b4  04 70 83 e5                                      str r7, [r3, #4]
006a13b8  00 00 83 e5                                      str r0, [r3]
006a13bc  08 60 83 e5                                      str r6, [r3, #8]
006a13c0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006a13c4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006a13c8  f5 b5 f1 eb                                      bl #0x30eba4
006a13cc  3f 14 a0 e3                                      mov r1, #0x3f000000
006a13d0  65 b6 f1 eb                                      bl #0x30ed6c
006a13d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a13d8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006a13dc  00 b0 a0 e1                                      mov fp, r0
006a13e0  9c 98 28 e0                                      mla r8, ip, r8, sb
006a13e4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006a13e8  0c 80 8d e5                                      str r8, [sp, #0xc]
006a13ec  ec b5 f1 eb                                      bl #0x30eba4
006a13f0  3f 14 a0 e3                                      mov r1, #0x3f000000
006a13f4  5c b6 f1 eb                                      bl #0x30ed6c
006a13f8  34 10 9d e5                                      ldr r1, [sp, #0x34]
006a13fc  00 a0 a0 e1                                      mov sl, r0
006a1400  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a1404  e6 b5 f1 eb                                      bl #0x30eba4
006a1408  3f 14 a0 e3                                      mov r1, #0x3f000000
006a140c  56 b6 f1 eb                                      bl #0x30ed6c
006a1410  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a1414  00 80 a0 e1                                      mov r8, r0
006a1418  00 b0 85 e5                                      str fp, [r5]
006a141c  03 00 59 e1                                      cmp sb, r3
006a1420  04 a0 85 e5                                      str sl, [r5, #4]
006a1424  08 00 85 e5                                      str r0, [r5, #8]
006a1428  2e 00 00 0a                                      beq #0x6a14e8
006a142c  38 c0 8d e2                                      add ip, sp, #0x38
006a1430  44 30 8d e2                                      add r3, sp, #0x44
006a1434  00 70 a0 e3                                      mov r7, #0
006a1438  09 60 a0 e1                                      mov r6, sb
006a143c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a1440  18 30 8d e5                                      str r3, [sp, #0x18]
006a1444  0a 10 a0 e1                                      mov r1, sl
006a1448  04 00 00 ea                                      b #0x6a1460
006a144c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006a1450  00 b0 95 e5                                      ldr fp, [r5]
006a1454  04 10 95 e5                                      ldr r1, [r5, #4]
006a1458  08 80 95 e5                                      ldr r8, [r5, #8]
006a145c  0c 40 84 e0                                      add r4, r4, ip
006a1460  04 00 94 e5                                      ldr r0, [r4, #4]
006a1464  d0 b3 f1 eb                                      bl #0x30e3ac
006a1468  08 10 a0 e1                                      mov r1, r8
006a146c  00 a0 a0 e1                                      mov sl, r0
006a1470  08 00 94 e5                                      ldr r0, [r4, #8]
006a1474  cc b3 f1 eb                                      bl #0x30e3ac
006a1478  0b 10 a0 e1                                      mov r1, fp
006a147c  00 80 a0 e1                                      mov r8, r0
006a1480  00 00 94 e5                                      ldr r0, [r4]
006a1484  c8 b3 f1 eb                                      bl #0x30e3ac
006a1488  18 10 9d e5                                      ldr r1, [sp, #0x18]
006a148c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006a1490  44 00 8d e5                                      str r0, [sp, #0x44]
006a1494  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006a1498  48 a0 8d e5                                      str sl, [sp, #0x48]
006a149c  4c 80 8d e5                                      str r8, [sp, #0x4c]
006a14a0  7b e3 fb eb                                      bl #0x59a294
006a14a4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006a14a8  07 b4 f1 eb                                      bl #0x30e4cc
006a14ac  70 a0 ff e6                                      uxth sl, r0
006a14b0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006a14b4  04 b4 f1 eb                                      bl #0x30e4cc
006a14b8  70 80 ff e6                                      uxth r8, r0
006a14bc  40 00 9d e5                                      ldr r0, [sp, #0x40]
006a14c0  01 b4 f1 eb                                      bl #0x30e4cc
006a14c4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a14c8  b4 00 c6 e1                                      strh r0, [r6, #4]
006a14cc  b0 a0 c6 e1                                      strh sl, [r6]
006a14d0  b2 80 c6 e1                                      strh r8, [r6, #2]
006a14d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a14d8  0c 70 87 e0                                      add r7, r7, ip
006a14dc  09 60 87 e0                                      add r6, r7, sb
006a14e0  06 00 53 e1                                      cmp r3, r6
006a14e4  d8 ff ff 1a                                      bne #0x6a144c
006a14e8  54 d0 8d e2                                      add sp, sp, #0x54
006a14ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006a14f0, declared_size=372, range_size=372, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core19quantizeScaleOffsetINS0_8vector2dIsEENS2_IfEEEEvPT_jPKT0_jjRS7_SA_
; demangled: void glitch::core::quantizeScaleOffset<glitch::core::vector2d<short>, glitch::core::vector2d<float> >(glitch::core::vector2d<short>*, unsigned int, glitch::core::vector2d<float> const*, unsigned int, unsigned int, glitch::core::vector2d<float>&, glitch::core::vector2d<float>&)
; decoder-mode: arm
006a14f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a14f4  34 d0 4d e2                                      sub sp, sp, #0x34
006a14f8  58 b0 9d e5                                      ldr fp, [sp, #0x58]
006a14fc  02 40 a0 e1                                      mov r4, r2
006a1500  bf c4 a0 e3                                      mov ip, #0xbf000000
006a1504  02 c5 8c e2                                      add ip, ip, #0x800000
006a1508  18 e0 8d e2                                      add lr, sp, #0x18
006a150c  03 20 a0 e1                                      mov r2, r3
006a1510  fe 55 a0 e3                                      mov r5, #0x3f800000
006a1514  14 30 8d e5                                      str r3, [sp, #0x14]
006a1518  0c 00 8d e5                                      str r0, [sp, #0xc]
006a151c  0b 30 a0 e1                                      mov r3, fp
006a1520  10 10 8d e5                                      str r1, [sp, #0x10]
006a1524  04 00 a0 e1                                      mov r0, r4
006a1528  02 10 a0 e3                                      mov r1, #2
006a152c  20 c0 8d e5                                      str ip, [sp, #0x20]
006a1530  00 e0 8d e5                                      str lr, [sp]
006a1534  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1538  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a153c  60 60 9d e5                                      ldr r6, [sp, #0x60]
006a1540  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a1544  24 50 8d e5                                      str r5, [sp, #0x24]
006a1548  28 50 8d e5                                      str r5, [sp, #0x28]
006a154c  5c 50 9d e5                                      ldr r5, [sp, #0x5c]
006a1550  19 ff ff eb                                      bl #0x6a11bc
006a1554  18 10 9d e5                                      ldr r1, [sp, #0x18]
006a1558  24 00 9d e5                                      ldr r0, [sp, #0x24]
006a155c  92 b3 f1 eb                                      bl #0x30e3ac
006a1560  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006a1564  00 80 a0 e1                                      mov r8, r0
006a1568  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a156c  8e b3 f1 eb                                      bl #0x30e3ac
006a1570  00 1f 0f e3                                      movw r1, #0xff00
006a1574  00 70 a0 e1                                      mov r7, r0
006a1578  7f 17 44 e3                                      movt r1, #0x477f
006a157c  08 00 a0 e1                                      mov r0, r8
006a1580  c3 b5 f1 eb                                      bl #0x30ec94
006a1584  00 1f 0f e3                                      movw r1, #0xff00
006a1588  00 00 85 e5                                      str r0, [r5]
006a158c  7f 17 44 e3                                      movt r1, #0x477f
006a1590  07 00 a0 e1                                      mov r0, r7
006a1594  be b5 f1 eb                                      bl #0x30ec94
006a1598  04 00 85 e5                                      str r0, [r5, #4]
006a159c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a15a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a15a4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006a15a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a15ac  92 3b 2b e0                                      mla fp, r2, fp, r3
006a15b0  7b b5 f1 eb                                      bl #0x30eba4
006a15b4  3f 14 a0 e3                                      mov r1, #0x3f000000
006a15b8  eb b5 f1 eb                                      bl #0x30ed6c
006a15bc  28 10 9d e5                                      ldr r1, [sp, #0x28]
006a15c0  00 90 a0 e1                                      mov sb, r0
006a15c4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006a15c8  75 b5 f1 eb                                      bl #0x30eba4
006a15cc  3f 14 a0 e3                                      mov r1, #0x3f000000
006a15d0  e5 b5 f1 eb                                      bl #0x30ed6c
006a15d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006a15d8  00 a0 a0 e1                                      mov sl, r0
006a15dc  00 90 86 e5                                      str sb, [r6]
006a15e0  0b 00 52 e1                                      cmp r2, fp
006a15e4  04 00 86 e5                                      str r0, [r6, #4]
006a15e8  1b 00 00 0a                                      beq #0x6a165c
006a15ec  00 80 a0 e3                                      mov r8, #0
006a15f0  0c 70 9d e5                                      ldr r7, [sp, #0xc]
006a15f4  03 00 00 ea                                      b #0x6a1608
006a15f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006a15fc  00 90 96 e5                                      ldr sb, [r6]
006a1600  04 a0 96 e5                                      ldr sl, [r6, #4]
006a1604  03 40 84 e0                                      add r4, r4, r3
006a1608  00 00 94 e5                                      ldr r0, [r4]
006a160c  09 10 a0 e1                                      mov r1, sb
006a1610  65 b3 f1 eb                                      bl #0x30e3ac
006a1614  00 10 95 e5                                      ldr r1, [r5]
006a1618  9d b5 f1 eb                                      bl #0x30ec94
006a161c  aa b3 f1 eb                                      bl #0x30e4cc
006a1620  0a 10 a0 e1                                      mov r1, sl
006a1624  70 a0 ff e6                                      uxth sl, r0
006a1628  04 00 94 e5                                      ldr r0, [r4, #4]
006a162c  5e b3 f1 eb                                      bl #0x30e3ac
006a1630  04 10 95 e5                                      ldr r1, [r5, #4]
006a1634  96 b5 f1 eb                                      bl #0x30ec94
006a1638  a3 b3 f1 eb                                      bl #0x30e4cc
006a163c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a1640  b2 00 c7 e1                                      strh r0, [r7, #2]
006a1644  b0 a0 c7 e1                                      strh sl, [r7]
006a1648  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006a164c  03 80 88 e0                                      add r8, r8, r3
006a1650  02 70 88 e0                                      add r7, r8, r2
006a1654  07 00 5b e1                                      cmp fp, r7
006a1658  e6 ff ff 1a                                      bne #0x6a15f8
006a165c  34 d0 8d e2                                      add sp, sp, #0x34
006a1660  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006a4288, declared_size=256, range_size=256, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIaEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<signed char>(signed char const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<signed char>&)
; decoder-mode: arm
006a4288  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
006a428c  00 00 53 e3                                      cmp r3, #0
006a4290  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
006a4294  31 00 00 0a                                      beq #0x6a4360
006a4298  03 00 51 e3                                      cmp r1, #3
006a429c  03 10 a0 23                                      movhs r1, #3
006a42a0  00 00 51 e3                                      cmp r1, #0
006a42a4  03 70 86 12                                      addne r7, r6, #3
006a42a8  00 c0 a0 13                                      movne ip, #0
006a42ac  33 00 00 0a                                      beq #0x6a4380
006a42b0  0c 40 d0 e7                                      ldrb r4, [r0, ip]
006a42b4  0c 40 c6 e7                                      strb r4, [r6, ip]
006a42b8  0c 40 d0 e7                                      ldrb r4, [r0, ip]
006a42bc  0c 40 c7 e7                                      strb r4, [r7, ip]
006a42c0  01 c0 8c e2                                      add ip, ip, #1
006a42c4  01 00 5c e1                                      cmp ip, r1
006a42c8  f8 ff ff 1a                                      bne #0x6a42b0
006a42cc  02 00 51 e3                                      cmp r1, #2
006a42d0  06 00 00 8a                                      bhi #0x6a42f0
006a42d4  01 c0 a0 e1                                      mov ip, r1
006a42d8  00 40 a0 e3                                      mov r4, #0
006a42dc  0c 40 c6 e7                                      strb r4, [r6, ip]
006a42e0  0c 40 c7 e7                                      strb r4, [r7, ip]
006a42e4  01 c0 8c e2                                      add ip, ip, #1
006a42e8  02 00 5c e3                                      cmp ip, #2
006a42ec  fa ff ff 9a                                      bls #0x6a42dc
006a42f0  02 00 80 e0                                      add r0, r0, r2
006a42f4  01 30 43 e2                                      sub r3, r3, #1
006a42f8  92 03 29 e0                                      mla sb, r2, r3, r0
006a42fc  09 00 50 e1                                      cmp r0, sb
006a4300  00 a0 a0 13                                      movne sl, #0
006a4304  00 80 a0 11                                      movne r8, r0
006a4308  1a 00 00 0a                                      beq #0x6a4378
006a430c  00 00 51 e3                                      cmp r1, #0
006a4310  00 30 a0 13                                      movne r3, #0
006a4314  0c 00 00 0a                                      beq #0x6a434c
006a4318  03 c0 d8 e7                                      ldrb ip, [r8, r3]
006a431c  d3 50 96 e1                                      ldrsb r5, [r6, r3]
006a4320  7c 40 af e6                                      sxtb r4, ip
006a4324  04 00 55 e1                                      cmp r5, r4
006a4328  03 c0 c6 c7                                      strbgt ip, [r6, r3]
006a432c  03 c0 d8 c7                                      ldrbgt ip, [r8, r3]
006a4330  d3 50 97 e1                                      ldrsb r5, [r7, r3]
006a4334  7c 40 af c6                                      sxtbgt r4, ip
006a4338  04 00 55 e1                                      cmp r5, r4
006a433c  03 c0 c7 b7                                      strblt ip, [r7, r3]
006a4340  01 30 83 e2                                      add r3, r3, #1
006a4344  01 00 53 e1                                      cmp r3, r1
006a4348  f2 ff ff 1a                                      bne #0x6a4318
006a434c  02 a0 8a e0                                      add sl, sl, r2
006a4350  0a 80 80 e0                                      add r8, r0, sl
006a4354  08 00 59 e1                                      cmp sb, r8
006a4358  eb ff ff 1a                                      bne #0x6a430c
006a435c  05 00 00 ea                                      b #0x6a4378
006a4360  02 30 c6 e5                                      strb r3, [r6, #2]
006a4364  03 30 c6 e5                                      strb r3, [r6, #3]
006a4368  04 30 c6 e5                                      strb r3, [r6, #4]
006a436c  05 30 c6 e5                                      strb r3, [r6, #5]
006a4370  00 30 c6 e5                                      strb r3, [r6]
006a4374  01 30 c6 e5                                      strb r3, [r6, #1]
006a4378  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
006a437c  1e ff 2f e1                                      bx lr
006a4380  03 70 86 e2                                      add r7, r6, #3
006a4384  d2 ff ff ea                                      b #0x6a42d4

; FUNCTION 0x006a4388, declared_size=248, range_size=248, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIhEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<unsigned char>(unsigned char const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<unsigned char>&)
; decoder-mode: arm
006a4388  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
006a438c  00 00 53 e3                                      cmp r3, #0
006a4390  18 50 9d e5                                      ldr r5, [sp, #0x18]
006a4394  2f 00 00 0a                                      beq #0x6a4458
006a4398  03 00 51 e3                                      cmp r1, #3
006a439c  03 10 a0 23                                      movhs r1, #3
006a43a0  00 00 51 e3                                      cmp r1, #0
006a43a4  03 60 85 12                                      addne r6, r5, #3
006a43a8  00 c0 a0 13                                      movne ip, #0
006a43ac  31 00 00 0a                                      beq #0x6a4478
006a43b0  0c 40 d0 e7                                      ldrb r4, [r0, ip]
006a43b4  0c 40 c5 e7                                      strb r4, [r5, ip]
006a43b8  0c 40 d0 e7                                      ldrb r4, [r0, ip]
006a43bc  0c 40 c6 e7                                      strb r4, [r6, ip]
006a43c0  01 c0 8c e2                                      add ip, ip, #1
006a43c4  01 00 5c e1                                      cmp ip, r1
006a43c8  f8 ff ff 1a                                      bne #0x6a43b0
006a43cc  02 00 51 e3                                      cmp r1, #2
006a43d0  06 00 00 8a                                      bhi #0x6a43f0
006a43d4  01 c0 a0 e1                                      mov ip, r1
006a43d8  00 40 a0 e3                                      mov r4, #0
006a43dc  0c 40 c5 e7                                      strb r4, [r5, ip]
006a43e0  0c 40 c6 e7                                      strb r4, [r6, ip]
006a43e4  01 c0 8c e2                                      add ip, ip, #1
006a43e8  02 00 5c e3                                      cmp ip, #2
006a43ec  fa ff ff 9a                                      bls #0x6a43dc
006a43f0  02 00 80 e0                                      add r0, r0, r2
006a43f4  01 30 43 e2                                      sub r3, r3, #1
006a43f8  92 03 2a e0                                      mla sl, r2, r3, r0
006a43fc  0a 00 50 e1                                      cmp r0, sl
006a4400  00 80 a0 13                                      movne r8, #0
006a4404  00 70 a0 11                                      movne r7, r0
006a4408  18 00 00 0a                                      beq #0x6a4470
006a440c  00 00 51 e3                                      cmp r1, #0
006a4410  00 30 a0 13                                      movne r3, #0
006a4414  0a 00 00 0a                                      beq #0x6a4444
006a4418  03 c0 d7 e7                                      ldrb ip, [r7, r3]
006a441c  03 40 d5 e7                                      ldrb r4, [r5, r3]
006a4420  0c 00 54 e1                                      cmp r4, ip
006a4424  03 c0 c5 87                                      strbhi ip, [r5, r3]
006a4428  03 c0 d7 87                                      ldrbhi ip, [r7, r3]
006a442c  03 40 d6 e7                                      ldrb r4, [r6, r3]
006a4430  0c 00 54 e1                                      cmp r4, ip
006a4434  03 c0 c6 37                                      strblo ip, [r6, r3]
006a4438  01 30 83 e2                                      add r3, r3, #1
006a443c  01 00 53 e1                                      cmp r3, r1
006a4440  f4 ff ff 1a                                      bne #0x6a4418
006a4444  02 80 88 e0                                      add r8, r8, r2
006a4448  08 70 80 e0                                      add r7, r0, r8
006a444c  07 00 5a e1                                      cmp sl, r7
006a4450  ed ff ff 1a                                      bne #0x6a440c
006a4454  05 00 00 ea                                      b #0x6a4470
006a4458  02 30 c5 e5                                      strb r3, [r5, #2]
006a445c  03 30 c5 e5                                      strb r3, [r5, #3]
006a4460  04 30 c5 e5                                      strb r3, [r5, #4]
006a4464  05 30 c5 e5                                      strb r3, [r5, #5]
006a4468  00 30 c5 e5                                      strb r3, [r5]
006a446c  01 30 c5 e5                                      strb r3, [r5, #1]
006a4470  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
006a4474  1e ff 2f e1                                      bx lr
006a4478  03 60 85 e2                                      add r6, r5, #3
006a447c  d4 ff ff ea                                      b #0x6a43d4

; FUNCTION 0x006a4480, declared_size=284, range_size=284, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIsEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<short>(short const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<short>&)
; decoder-mode: arm
006a4480  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006a4484  00 00 53 e3                                      cmp r3, #0
006a4488  20 50 9d e5                                      ldr r5, [sp, #0x20]
006a448c  38 00 00 0a                                      beq #0x6a4574
006a4490  03 00 51 e3                                      cmp r1, #3
006a4494  01 80 a0 31                                      movlo r8, r1
006a4498  03 80 a0 23                                      movhs r8, #3
006a449c  00 00 58 e3                                      cmp r8, #0
006a44a0  00 10 a0 13                                      movne r1, #0
006a44a4  06 60 85 12                                      addne r6, r5, #6
006a44a8  01 c0 a0 11                                      movne ip, r1
006a44ac  38 00 00 0a                                      beq #0x6a4594
006a44b0  b1 40 90 e1                                      ldrh r4, [r0, r1]
006a44b4  01 c0 8c e2                                      add ip, ip, #1
006a44b8  08 00 5c e1                                      cmp ip, r8
006a44bc  b1 40 85 e1                                      strh r4, [r5, r1]
006a44c0  b1 40 90 e1                                      ldrh r4, [r0, r1]
006a44c4  b1 40 86 e1                                      strh r4, [r6, r1]
006a44c8  02 10 81 e2                                      add r1, r1, #2
006a44cc  f7 ff ff 1a                                      bne #0x6a44b0
006a44d0  02 00 58 e3                                      cmp r8, #2
006a44d4  08 00 00 8a                                      bhi #0x6a44fc
006a44d8  88 10 a0 e1                                      lsl r1, r8, #1
006a44dc  08 c0 a0 e1                                      mov ip, r8
006a44e0  01 c0 8c e2                                      add ip, ip, #1
006a44e4  00 40 a0 e3                                      mov r4, #0
006a44e8  02 00 5c e3                                      cmp ip, #2
006a44ec  b1 40 85 e1                                      strh r4, [r5, r1]
006a44f0  b1 40 86 e1                                      strh r4, [r6, r1]
006a44f4  02 10 81 e2                                      add r1, r1, #2
006a44f8  f8 ff ff 9a                                      bls #0x6a44e0
006a44fc  02 90 80 e0                                      add sb, r0, r2
006a4500  01 30 43 e2                                      sub r3, r3, #1
006a4504  92 93 2b e0                                      mla fp, r2, r3, sb
006a4508  0b 00 59 e1                                      cmp sb, fp
006a450c  00 a0 a0 13                                      movne sl, #0
006a4510  09 70 a0 11                                      movne r7, sb
006a4514  1c 00 00 0a                                      beq #0x6a458c
006a4518  00 00 58 e3                                      cmp r8, #0
006a451c  00 30 a0 13                                      movne r3, #0
006a4520  03 c0 a0 11                                      movne ip, r3
006a4524  0d 00 00 0a                                      beq #0x6a4560
006a4528  b3 10 97 e1                                      ldrh r1, [r7, r3]
006a452c  f3 40 95 e1                                      ldrsh r4, [r5, r3]
006a4530  01 c0 8c e2                                      add ip, ip, #1
006a4534  71 00 bf e6                                      sxth r0, r1
006a4538  00 00 54 e1                                      cmp r4, r0
006a453c  b3 10 85 c1                                      strhgt r1, [r5, r3]
006a4540  b3 10 97 c1                                      ldrhgt r1, [r7, r3]
006a4544  f3 40 96 e1                                      ldrsh r4, [r6, r3]
006a4548  71 00 bf c6                                      sxthgt r0, r1
006a454c  00 00 54 e1                                      cmp r4, r0
006a4550  b3 10 86 b1                                      strhlt r1, [r6, r3]
006a4554  08 00 5c e1                                      cmp ip, r8
006a4558  02 30 83 e2                                      add r3, r3, #2
006a455c  f1 ff ff 1a                                      bne #0x6a4528
006a4560  02 a0 8a e0                                      add sl, sl, r2
006a4564  0a 70 89 e0                                      add r7, sb, sl
006a4568  07 00 5b e1                                      cmp fp, r7
006a456c  e9 ff ff 1a                                      bne #0x6a4518
006a4570  05 00 00 ea                                      b #0x6a458c
006a4574  b4 30 c5 e1                                      strh r3, [r5, #4]
006a4578  b6 30 c5 e1                                      strh r3, [r5, #6]
006a457c  b8 30 c5 e1                                      strh r3, [r5, #8]
006a4580  ba 30 c5 e1                                      strh r3, [r5, #0xa]
006a4584  b0 30 c5 e1                                      strh r3, [r5]
006a4588  b2 30 c5 e1                                      strh r3, [r5, #2]
006a458c  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006a4590  1e ff 2f e1                                      bx lr
006a4594  06 60 85 e2                                      add r6, r5, #6
006a4598  ce ff ff ea                                      b #0x6a44d8

; FUNCTION 0x006a459c, declared_size=272, range_size=272, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxItEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<unsigned short>(unsigned short const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<unsigned short>&)
; decoder-mode: arm
006a459c  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
006a45a0  00 00 53 e3                                      cmp r3, #0
006a45a4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
006a45a8  35 00 00 0a                                      beq #0x6a4684
006a45ac  03 00 51 e3                                      cmp r1, #3
006a45b0  03 10 a0 23                                      movhs r1, #3
006a45b4  00 00 51 e3                                      cmp r1, #0
006a45b8  00 c0 a0 13                                      movne ip, #0
006a45bc  06 70 86 12                                      addne r7, r6, #6
006a45c0  0c 40 a0 11                                      movne r4, ip
006a45c4  36 00 00 0a                                      beq #0x6a46a4
006a45c8  bc 50 90 e1                                      ldrh r5, [r0, ip]
006a45cc  01 40 84 e2                                      add r4, r4, #1
006a45d0  01 00 54 e1                                      cmp r4, r1
006a45d4  bc 50 86 e1                                      strh r5, [r6, ip]
006a45d8  bc 50 90 e1                                      ldrh r5, [r0, ip]
006a45dc  bc 50 87 e1                                      strh r5, [r7, ip]
006a45e0  02 c0 8c e2                                      add ip, ip, #2
006a45e4  f7 ff ff 1a                                      bne #0x6a45c8
006a45e8  02 00 51 e3                                      cmp r1, #2
006a45ec  08 00 00 8a                                      bhi #0x6a4614
006a45f0  81 c0 a0 e1                                      lsl ip, r1, #1
006a45f4  01 40 a0 e1                                      mov r4, r1
006a45f8  01 40 84 e2                                      add r4, r4, #1
006a45fc  00 50 a0 e3                                      mov r5, #0
006a4600  02 00 54 e3                                      cmp r4, #2
006a4604  bc 50 86 e1                                      strh r5, [r6, ip]
006a4608  bc 50 87 e1                                      strh r5, [r7, ip]
006a460c  02 c0 8c e2                                      add ip, ip, #2
006a4610  f8 ff ff 9a                                      bls #0x6a45f8
006a4614  02 00 80 e0                                      add r0, r0, r2
006a4618  01 30 43 e2                                      sub r3, r3, #1
006a461c  92 03 29 e0                                      mla sb, r2, r3, r0
006a4620  09 00 50 e1                                      cmp r0, sb
006a4624  00 a0 a0 13                                      movne sl, #0
006a4628  00 80 a0 11                                      movne r8, r0
006a462c  1a 00 00 0a                                      beq #0x6a469c
006a4630  00 00 51 e3                                      cmp r1, #0
006a4634  00 30 a0 13                                      movne r3, #0
006a4638  03 40 a0 11                                      movne r4, r3
006a463c  0b 00 00 0a                                      beq #0x6a4670
006a4640  b3 c0 98 e1                                      ldrh ip, [r8, r3]
006a4644  b3 50 96 e1                                      ldrh r5, [r6, r3]
006a4648  01 40 84 e2                                      add r4, r4, #1
006a464c  0c 00 55 e1                                      cmp r5, ip
006a4650  b3 c0 86 81                                      strhhi ip, [r6, r3]
006a4654  b3 c0 98 81                                      ldrhhi ip, [r8, r3]
006a4658  b3 50 97 e1                                      ldrh r5, [r7, r3]
006a465c  0c 00 55 e1                                      cmp r5, ip
006a4660  b3 c0 87 31                                      strhlo ip, [r7, r3]
006a4664  01 00 54 e1                                      cmp r4, r1
006a4668  02 30 83 e2                                      add r3, r3, #2
006a466c  f3 ff ff 1a                                      bne #0x6a4640
006a4670  02 a0 8a e0                                      add sl, sl, r2
006a4674  0a 80 80 e0                                      add r8, r0, sl
006a4678  08 00 59 e1                                      cmp sb, r8
006a467c  eb ff ff 1a                                      bne #0x6a4630
006a4680  05 00 00 ea                                      b #0x6a469c
006a4684  b4 30 c6 e1                                      strh r3, [r6, #4]
006a4688  b6 30 c6 e1                                      strh r3, [r6, #6]
006a468c  b8 30 c6 e1                                      strh r3, [r6, #8]
006a4690  ba 30 c6 e1                                      strh r3, [r6, #0xa]
006a4694  b0 30 c6 e1                                      strh r3, [r6]
006a4698  b2 30 c6 e1                                      strh r3, [r6, #2]
006a469c  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
006a46a0  1e ff 2f e1                                      bx lr
006a46a4  06 70 86 e2                                      add r7, r6, #6
006a46a8  d0 ff ff ea                                      b #0x6a45f0

; FUNCTION 0x006a46ac, declared_size=272, range_size=272, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIiEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<int>(int const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<int>&)
; decoder-mode: arm
006a46ac  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
006a46b0  00 00 53 e3                                      cmp r3, #0
006a46b4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
006a46b8  35 00 00 0a                                      beq #0x6a4794
006a46bc  03 00 51 e3                                      cmp r1, #3
006a46c0  03 10 a0 23                                      movhs r1, #3
006a46c4  00 00 51 e3                                      cmp r1, #0
006a46c8  00 c0 a0 13                                      movne ip, #0
006a46cc  0c 70 86 12                                      addne r7, r6, #0xc
006a46d0  0c 40 a0 11                                      movne r4, ip
006a46d4  36 00 00 0a                                      beq #0x6a47b4
006a46d8  0c 50 90 e7                                      ldr r5, [r0, ip]
006a46dc  01 40 84 e2                                      add r4, r4, #1
006a46e0  01 00 54 e1                                      cmp r4, r1
006a46e4  0c 50 86 e7                                      str r5, [r6, ip]
006a46e8  0c 50 90 e7                                      ldr r5, [r0, ip]
006a46ec  0c 50 87 e7                                      str r5, [r7, ip]
006a46f0  04 c0 8c e2                                      add ip, ip, #4
006a46f4  f7 ff ff 1a                                      bne #0x6a46d8
006a46f8  02 00 51 e3                                      cmp r1, #2
006a46fc  08 00 00 8a                                      bhi #0x6a4724
006a4700  01 c1 a0 e1                                      lsl ip, r1, #2
006a4704  01 40 a0 e1                                      mov r4, r1
006a4708  00 50 a0 e3                                      mov r5, #0
006a470c  01 40 84 e2                                      add r4, r4, #1
006a4710  02 00 54 e3                                      cmp r4, #2
006a4714  0c 50 86 e7                                      str r5, [r6, ip]
006a4718  0c 50 87 e7                                      str r5, [r7, ip]
006a471c  04 c0 8c e2                                      add ip, ip, #4
006a4720  f9 ff ff 9a                                      bls #0x6a470c
006a4724  02 00 80 e0                                      add r0, r0, r2
006a4728  01 30 43 e2                                      sub r3, r3, #1
006a472c  92 03 29 e0                                      mla sb, r2, r3, r0
006a4730  09 00 50 e1                                      cmp r0, sb
006a4734  00 a0 a0 13                                      movne sl, #0
006a4738  00 80 a0 11                                      movne r8, r0
006a473c  1a 00 00 0a                                      beq #0x6a47ac
006a4740  00 00 51 e3                                      cmp r1, #0
006a4744  00 30 a0 13                                      movne r3, #0
006a4748  03 40 a0 11                                      movne r4, r3
006a474c  0b 00 00 0a                                      beq #0x6a4780
006a4750  03 c0 98 e7                                      ldr ip, [r8, r3]
006a4754  03 50 96 e7                                      ldr r5, [r6, r3]
006a4758  01 40 84 e2                                      add r4, r4, #1
006a475c  05 00 5c e1                                      cmp ip, r5
006a4760  03 c0 86 b7                                      strlt ip, [r6, r3]
006a4764  03 c0 98 b7                                      ldrlt ip, [r8, r3]
006a4768  03 50 97 e7                                      ldr r5, [r7, r3]
006a476c  0c 00 55 e1                                      cmp r5, ip
006a4770  03 c0 87 b7                                      strlt ip, [r7, r3]
006a4774  01 00 54 e1                                      cmp r4, r1
006a4778  04 30 83 e2                                      add r3, r3, #4
006a477c  f3 ff ff 1a                                      bne #0x6a4750
006a4780  02 a0 8a e0                                      add sl, sl, r2
006a4784  0a 80 80 e0                                      add r8, r0, sl
006a4788  08 00 59 e1                                      cmp sb, r8
006a478c  eb ff ff 1a                                      bne #0x6a4740
006a4790  05 00 00 ea                                      b #0x6a47ac
006a4794  08 30 86 e5                                      str r3, [r6, #8]
006a4798  0c 30 86 e5                                      str r3, [r6, #0xc]
006a479c  10 30 86 e5                                      str r3, [r6, #0x10]
006a47a0  14 30 86 e5                                      str r3, [r6, #0x14]
006a47a4  00 30 86 e5                                      str r3, [r6]
006a47a8  04 30 86 e5                                      str r3, [r6, #4]
006a47ac  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
006a47b0  1e ff 2f e1                                      bx lr
006a47b4  0c 70 86 e2                                      add r7, r6, #0xc
006a47b8  d0 ff ff ea                                      b #0x6a4700

; FUNCTION 0x006a47bc, declared_size=272, range_size=272, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxIjEEvPKT_jjjRNS0_8aabbox3dIS2_EE
; demangled: void glitch::core::computeBoundingBox<unsigned int>(unsigned int const*, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<unsigned int>&)
; decoder-mode: arm
006a47bc  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
006a47c0  00 00 53 e3                                      cmp r3, #0
006a47c4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
006a47c8  35 00 00 0a                                      beq #0x6a48a4
006a47cc  03 00 51 e3                                      cmp r1, #3
006a47d0  03 10 a0 23                                      movhs r1, #3
006a47d4  00 00 51 e3                                      cmp r1, #0
006a47d8  00 c0 a0 13                                      movne ip, #0
006a47dc  0c 70 86 12                                      addne r7, r6, #0xc
006a47e0  0c 40 a0 11                                      movne r4, ip
006a47e4  36 00 00 0a                                      beq #0x6a48c4
006a47e8  0c 50 90 e7                                      ldr r5, [r0, ip]
006a47ec  01 40 84 e2                                      add r4, r4, #1
006a47f0  01 00 54 e1                                      cmp r4, r1
006a47f4  0c 50 86 e7                                      str r5, [r6, ip]
006a47f8  0c 50 90 e7                                      ldr r5, [r0, ip]
006a47fc  0c 50 87 e7                                      str r5, [r7, ip]
006a4800  04 c0 8c e2                                      add ip, ip, #4
006a4804  f7 ff ff 1a                                      bne #0x6a47e8
006a4808  02 00 51 e3                                      cmp r1, #2
006a480c  08 00 00 8a                                      bhi #0x6a4834
006a4810  01 c1 a0 e1                                      lsl ip, r1, #2
006a4814  01 40 a0 e1                                      mov r4, r1
006a4818  00 50 a0 e3                                      mov r5, #0
006a481c  01 40 84 e2                                      add r4, r4, #1
006a4820  02 00 54 e3                                      cmp r4, #2
006a4824  0c 50 86 e7                                      str r5, [r6, ip]
006a4828  0c 50 87 e7                                      str r5, [r7, ip]
006a482c  04 c0 8c e2                                      add ip, ip, #4
006a4830  f9 ff ff 9a                                      bls #0x6a481c
006a4834  02 00 80 e0                                      add r0, r0, r2
006a4838  01 30 43 e2                                      sub r3, r3, #1
006a483c  92 03 29 e0                                      mla sb, r2, r3, r0
006a4840  09 00 50 e1                                      cmp r0, sb
006a4844  00 a0 a0 13                                      movne sl, #0
006a4848  00 80 a0 11                                      movne r8, r0
006a484c  1a 00 00 0a                                      beq #0x6a48bc
006a4850  00 00 51 e3                                      cmp r1, #0
006a4854  00 30 a0 13                                      movne r3, #0
006a4858  03 40 a0 11                                      movne r4, r3
006a485c  0b 00 00 0a                                      beq #0x6a4890
006a4860  03 c0 98 e7                                      ldr ip, [r8, r3]
006a4864  03 50 96 e7                                      ldr r5, [r6, r3]
006a4868  01 40 84 e2                                      add r4, r4, #1
006a486c  05 00 5c e1                                      cmp ip, r5
006a4870  03 c0 86 37                                      strlo ip, [r6, r3]
006a4874  03 c0 98 37                                      ldrlo ip, [r8, r3]
006a4878  03 50 97 e7                                      ldr r5, [r7, r3]
006a487c  0c 00 55 e1                                      cmp r5, ip
006a4880  03 c0 87 37                                      strlo ip, [r7, r3]
006a4884  01 00 54 e1                                      cmp r4, r1
006a4888  04 30 83 e2                                      add r3, r3, #4
006a488c  f3 ff ff 1a                                      bne #0x6a4860
006a4890  02 a0 8a e0                                      add sl, sl, r2
006a4894  0a 80 80 e0                                      add r8, r0, sl
006a4898  08 00 59 e1                                      cmp sb, r8
006a489c  eb ff ff 1a                                      bne #0x6a4850
006a48a0  05 00 00 ea                                      b #0x6a48bc
006a48a4  08 30 86 e5                                      str r3, [r6, #8]
006a48a8  0c 30 86 e5                                      str r3, [r6, #0xc]
006a48ac  10 30 86 e5                                      str r3, [r6, #0x10]
006a48b0  14 30 86 e5                                      str r3, [r6, #0x14]
006a48b4  00 30 86 e5                                      str r3, [r6]
006a48b8  04 30 86 e5                                      str r3, [r6, #4]
006a48bc  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
006a48c0  1e ff 2f e1                                      bx lr
006a48c4  0c 70 86 e2                                      add r7, r6, #0xc
006a48c8  d0 ff ff ea                                      b #0x6a4810

; FUNCTION 0x006b41d8, declared_size=352, range_size=352, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_2io9CFileList9FileEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::io::CFileList::FileEntry>(glitch::io::CFileList::FileEntry*, int, int)
; decoder-mode: arm
006b41d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b41dc  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
006b41e0  54 d0 4d e2                                      sub sp, sp, #0x54
006b41e4  48 41 9f e5                                      ldr r4, [pc, #0x148]
006b41e8  08 30 8d e5                                      str r3, [sp, #8]
006b41ec  08 c0 9d e5                                      ldr ip, [sp, #8]
006b41f0  01 30 a0 e1                                      mov r3, r1
006b41f4  02 b0 a0 e1                                      mov fp, r2
006b41f8  0c c0 8f e0                                      add ip, pc, ip
006b41fc  04 10 9c e7                                      ldr r1, [ip, r4]
006b4200  83 50 a0 e1                                      lsl r5, r3, #1
006b4204  05 00 5b e1                                      cmp fp, r5
006b4208  00 20 91 e5                                      ldr r2, [r1]
006b420c  08 c0 8d e5                                      str ip, [sp, #8]
006b4210  0c 40 8d e5                                      str r4, [sp, #0xc]
006b4214  00 a0 a0 e1                                      mov sl, r0
006b4218  4c 20 8d e5                                      str r2, [sp, #0x4c]
006b421c  32 00 00 da                                      ble #0x6b42ec
006b4220  38 90 a0 e3                                      mov sb, #0x38
006b4224  14 80 8d e2                                      add r8, sp, #0x14
006b4228  1f 00 00 ea                                      b #0x6b42ac
006b422c  99 a5 26 e0                                      mla r6, sb, r5, sl
006b4230  99 a4 22 e0                                      mla r2, sb, r4, sl
006b4234  34 70 d6 e5                                      ldrb r7, [r6, #0x34]
006b4238  34 10 d2 e5                                      ldrb r1, [r2, #0x34]
006b423c  07 00 51 e1                                      cmp r1, r7
006b4240  07 00 a0 11                                      movne r0, r7
006b4244  31 00 00 0a                                      beq #0x6b4310
006b4248  00 00 50 e3                                      cmp r0, #0
006b424c  1b 00 00 0a                                      beq #0x6b42c0
006b4250  99 a4 26 e0                                      mla r6, sb, r4, sl
006b4254  99 a3 25 e0                                      mla r5, sb, r3, sl
006b4258  34 70 d6 e5                                      ldrb r7, [r6, #0x34]
006b425c  34 00 d5 e5                                      ldrb r0, [r5, #0x34]
006b4260  07 00 50 e1                                      cmp r0, r7
006b4264  1a 00 00 0a                                      beq #0x6b42d4
006b4268  00 00 50 e3                                      cmp r0, #0
006b426c  1e 00 00 0a                                      beq #0x6b42ec
006b4270  06 10 a0 e1                                      mov r1, r6
006b4274  08 00 a0 e1                                      mov r0, r8
006b4278  c2 ff ff eb                                      bl #0x6b4188
006b427c  05 10 a0 e1                                      mov r1, r5
006b4280  06 00 a0 e1                                      mov r0, r6
006b4284  70 ff ff eb                                      bl #0x6b404c
006b4288  05 00 a0 e1                                      mov r0, r5
006b428c  08 10 a0 e1                                      mov r1, r8
006b4290  6d ff ff eb                                      bl #0x6b404c
006b4294  84 50 a0 e1                                      lsl r5, r4, #1
006b4298  08 00 a0 e1                                      mov r0, r8
006b429c  2d ff ff eb                                      bl #0x6b3f58
006b42a0  0b 00 55 e1                                      cmp r5, fp
006b42a4  04 30 a0 e1                                      mov r3, r4
006b42a8  0f 00 00 aa                                      bge #0x6b42ec
006b42ac  01 40 85 e2                                      add r4, r5, #1
006b42b0  04 00 5b e1                                      cmp fp, r4
006b42b4  dc ff ff ca                                      bgt #0x6b422c
006b42b8  99 a5 26 e0                                      mla r6, sb, r5, sl
006b42bc  34 70 d6 e5                                      ldrb r7, [r6, #0x34]
006b42c0  05 40 a0 e1                                      mov r4, r5
006b42c4  99 a3 25 e0                                      mla r5, sb, r3, sl
006b42c8  34 00 d5 e5                                      ldrb r0, [r5, #0x34]
006b42cc  07 00 50 e1                                      cmp r0, r7
006b42d0  e4 ff ff 1a                                      bne #0x6b4268
006b42d4  14 00 95 e5                                      ldr r0, [r5, #0x14]
006b42d8  14 10 96 e5                                      ldr r1, [r6, #0x14]
006b42dc  01 69 f1 eb                                      bl #0x30e6e8
006b42e0  a0 0f a0 e1                                      lsr r0, r0, #0x1f
006b42e4  00 00 50 e3                                      cmp r0, #0
006b42e8  e0 ff ff 1a                                      bne #0x6b4270
006b42ec  08 20 9d e5                                      ldr r2, [sp, #8]
006b42f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006b42f4  01 30 92 e7                                      ldr r3, [r2, r1]
006b42f8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006b42fc  00 30 93 e5                                      ldr r3, [r3]
006b4300  03 00 52 e1                                      cmp r2, r3
006b4304  08 00 00 1a                                      bne #0x6b432c
006b4308  54 d0 8d e2                                      add sp, sp, #0x54
006b430c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b4310  14 10 92 e5                                      ldr r1, [r2, #0x14]
006b4314  14 00 96 e5                                      ldr r0, [r6, #0x14]
006b4318  04 30 8d e5                                      str r3, [sp, #4]
006b431c  f1 68 f1 eb                                      bl #0x30e6e8
006b4320  04 30 9d e5                                      ldr r3, [sp, #4]
006b4324  a0 0f a0 e1                                      lsr r0, r0, #0x1f
006b4328  c6 ff ff ea                                      b #0x6b4248
006b432c  f7 67 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006b4330  98 08 2e 00 ac 40 00 00                          .byte 0x98, 0x08, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006b4338, declared_size=224, range_size=224, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_2io9CFileList9FileEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::io::CFileList::FileEntry>(glitch::io::CFileList::FileEntry*, int)
; decoder-mode: arm
006b4338  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b433c  cc 80 9f e5                                      ldr r8, [pc, #0xcc]
006b4340  cc b0 9f e5                                      ldr fp, [pc, #0xcc]
006b4344  01 a0 41 e2                                      sub sl, r1, #1
006b4348  08 80 8f e0                                      add r8, pc, r8
006b434c  0b 30 98 e7                                      ldr r3, [r8, fp]
006b4350  aa 4f 8a e0                                      add r4, sl, sl, lsr #31
006b4354  44 d0 4d e2                                      sub sp, sp, #0x44
006b4358  00 30 93 e5                                      ldr r3, [r3]
006b435c  c4 40 b0 e1                                      asrs r4, r4, #1
006b4360  01 90 a0 e1                                      mov sb, r1
006b4364  00 50 a0 e1                                      mov r5, r0
006b4368  3c 30 8d e5                                      str r3, [sp, #0x3c]
006b436c  38 60 40 e2                                      sub r6, r0, #0x38
006b4370  07 00 00 4a                                      bmi #0x6b4394
006b4374  01 40 84 e2                                      add r4, r4, #1
006b4378  01 70 81 e2                                      add r7, r1, #1
006b437c  04 10 a0 e1                                      mov r1, r4
006b4380  06 00 a0 e1                                      mov r0, r6
006b4384  07 20 a0 e1                                      mov r2, r7
006b4388  92 ff ff eb                                      bl #0x6b41d8
006b438c  01 40 54 e2                                      subs r4, r4, #1
006b4390  f9 ff ff 1a                                      bne #0x6b437c
006b4394  00 00 5a e3                                      cmp sl, #0
006b4398  14 00 00 ba                                      blt #0x6b43f0
006b439c  38 30 a0 e3                                      mov r3, #0x38
006b43a0  93 5a 2a e0                                      mla sl, r3, sl, r5
006b43a4  04 40 8d e2                                      add r4, sp, #4
006b43a8  05 10 a0 e1                                      mov r1, r5
006b43ac  04 00 a0 e1                                      mov r0, r4
006b43b0  74 ff ff eb                                      bl #0x6b4188
006b43b4  0a 10 a0 e1                                      mov r1, sl
006b43b8  05 00 a0 e1                                      mov r0, r5
006b43bc  22 ff ff eb                                      bl #0x6b404c
006b43c0  0a 00 a0 e1                                      mov r0, sl
006b43c4  04 10 a0 e1                                      mov r1, r4
006b43c8  1f ff ff eb                                      bl #0x6b404c
006b43cc  09 20 a0 e1                                      mov r2, sb
006b43d0  06 00 a0 e1                                      mov r0, r6
006b43d4  01 10 a0 e3                                      mov r1, #1
006b43d8  7e ff ff eb                                      bl #0x6b41d8
006b43dc  04 00 a0 e1                                      mov r0, r4
006b43e0  dc fe ff eb                                      bl #0x6b3f58
006b43e4  01 90 59 e2                                      subs sb, sb, #1
006b43e8  38 a0 4a e2                                      sub sl, sl, #0x38
006b43ec  ed ff ff 1a                                      bne #0x6b43a8
006b43f0  0b 30 98 e7                                      ldr r3, [r8, fp]
006b43f4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006b43f8  00 30 93 e5                                      ldr r3, [r3]
006b43fc  03 00 52 e1                                      cmp r2, r3
006b4400  01 00 00 1a                                      bne #0x6b440c
006b4404  44 d0 8d e2                                      add sp, sp, #0x44
006b4408  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b440c  bf 67 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006b4410  48 07 2e 00 ac 40 00 00                          .byte 0x48, 0x07, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006beffc, declared_size=556, range_size=556, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5scene10CMeshCache9MeshEntryEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::scene::CMeshCache::MeshEntry>(glitch::scene::CMeshCache::MeshEntry*, int, int)
; decoder-mode: arm
006beffc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bf000  18 32 9f e5                                      ldr r3, [pc, #0x218]
006bf004  18 82 9f e5                                      ldr r8, [pc, #0x218]
006bf008  3c d0 4d e2                                      sub sp, sp, #0x3c
006bf00c  03 30 8f e0                                      add r3, pc, r3
006bf010  01 60 a0 e1                                      mov r6, r1
006bf014  08 10 93 e7                                      ldr r1, [r3, r8]
006bf018  08 20 8d e5                                      str r2, [sp, #8]
006bf01c  08 90 9d e5                                      ldr sb, [sp, #8]
006bf020  00 20 91 e5                                      ldr r2, [r1]
006bf024  10 30 8d e5                                      str r3, [sp, #0x10]
006bf028  86 30 a0 e1                                      lsl r3, r6, #1
006bf02c  03 00 59 e1                                      cmp sb, r3
006bf030  14 80 8d e5                                      str r8, [sp, #0x14]
006bf034  00 b0 a0 e1                                      mov fp, r0
006bf038  34 20 8d e5                                      str r2, [sp, #0x34]
006bf03c  36 00 00 da                                      ble #0x6bf11c
006bf040  18 70 8d e2                                      add r7, sp, #0x18
006bf044  08 c0 9d e5                                      ldr ip, [sp, #8]
006bf048  01 50 83 e2                                      add r5, r3, #1
006bf04c  05 00 5c e1                                      cmp ip, r5
006bf050  42 00 00 ca                                      bgt #0x6bf160
006bf054  1c 20 a0 e3                                      mov r2, #0x1c
006bf058  92 b3 24 e0                                      mla r4, r2, r3, fp
006bf05c  14 10 94 e5                                      ldr r1, [r4, #0x14]
006bf060  10 20 94 e5                                      ldr r2, [r4, #0x10]
006bf064  02 c0 61 e0                                      rsb ip, r1, r2
006bf068  03 50 a0 e1                                      mov r5, r3
006bf06c  1c 00 a0 e3                                      mov r0, #0x1c
006bf070  90 b6 26 e0                                      mla r6, r0, r6, fp
006bf074  14 90 96 e5                                      ldr sb, [r6, #0x14]
006bf078  10 00 96 e5                                      ldr r0, [r6, #0x10]
006bf07c  09 00 50 e0                                      subs r0, r0, sb
006bf080  09 00 00 0a                                      beq #0x6bf0ac
006bf084  00 00 5c e3                                      cmp ip, #0
006bf088  07 00 00 0a                                      beq #0x6bf0ac
006bf08c  d0 a0 d9 e1                                      ldrsb sl, [sb]
006bf090  d0 80 d1 e1                                      ldrsb r8, [r1]
006bf094  08 80 5a e0                                      subs r8, sl, r8
006bf098  08 30 a0 01                                      moveq r3, r8
006bf09c  2d 00 00 1a                                      bne #0x6bf158
006bf0a0  01 30 83 e2                                      add r3, r3, #1
006bf0a4  03 00 50 e1                                      cmp r0, r3
006bf0a8  24 00 00 1a                                      bne #0x6bf140
006bf0ac  0c 00 50 e1                                      cmp r0, ip
006bf0b0  00 80 a0 23                                      movhs r8, #0
006bf0b4  01 80 a0 33                                      movlo r8, #1
006bf0b8  00 00 58 e3                                      cmp r8, #0
006bf0bc  16 00 00 0a                                      beq #0x6bf11c
006bf0c0  07 00 a0 e1                                      mov r0, r7
006bf0c4  28 70 8d e5                                      str r7, [sp, #0x28]
006bf0c8  2c 70 8d e5                                      str r7, [sp, #0x2c]
006bf0cc  c8 9b f1 eb                                      bl #0x325ff4
006bf0d0  18 30 94 e5                                      ldr r3, [r4, #0x18]
006bf0d4  06 10 a0 e1                                      mov r1, r6
006bf0d8  04 00 a0 e1                                      mov r0, r4
006bf0dc  00 00 53 e3                                      cmp r3, #0
006bf0e0  30 30 8d e5                                      str r3, [sp, #0x30]
006bf0e4  04 20 93 15                                      ldrne r2, [r3, #4]
006bf0e8  01 20 82 12                                      addne r2, r2, #1
006bf0ec  04 20 83 15                                      strne r2, [r3, #4]
006bf0f0  b2 fd ff eb                                      bl #0x6be7c0
006bf0f4  07 10 a0 e1                                      mov r1, r7
006bf0f8  06 00 a0 e1                                      mov r0, r6
006bf0fc  af fd ff eb                                      bl #0x6be7c0
006bf100  07 00 a0 e1                                      mov r0, r7
006bf104  89 fd ff eb                                      bl #0x6be730
006bf108  08 10 9d e5                                      ldr r1, [sp, #8]
006bf10c  85 30 a0 e1                                      lsl r3, r5, #1
006bf110  05 60 a0 e1                                      mov r6, r5
006bf114  01 00 53 e1                                      cmp r3, r1
006bf118  c9 ff ff ba                                      blt #0x6bf044
006bf11c  10 90 9d e5                                      ldr sb, [sp, #0x10]
006bf120  14 80 9d e5                                      ldr r8, [sp, #0x14]
006bf124  34 20 9d e5                                      ldr r2, [sp, #0x34]
006bf128  08 30 99 e7                                      ldr r3, [sb, r8]
006bf12c  00 30 93 e5                                      ldr r3, [r3]
006bf130  03 00 52 e1                                      cmp r2, r3
006bf134  38 00 00 1a                                      bne #0x6bf21c
006bf138  3c d0 8d e2                                      add sp, sp, #0x3c
006bf13c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bf140  0c 00 53 e1                                      cmp r3, ip
006bf144  d8 ff ff 0a                                      beq #0x6bf0ac
006bf148  d3 a0 99 e1                                      ldrsb sl, [sb, r3]
006bf14c  d3 80 91 e1                                      ldrsb r8, [r1, r3]
006bf150  08 80 5a e0                                      subs r8, sl, r8
006bf154  d1 ff ff 0a                                      beq #0x6bf0a0
006bf158  a8 8f a0 e1                                      lsr r8, r8, #0x1f
006bf15c  d5 ff ff ea                                      b #0x6bf0b8
006bf160  1c 00 a0 e3                                      mov r0, #0x1c
006bf164  90 b3 24 e0                                      mla r4, r0, r3, fp
006bf168  90 b5 20 e0                                      mla r0, r0, r5, fp
006bf16c  14 10 94 e5                                      ldr r1, [r4, #0x14]
006bf170  10 20 94 e5                                      ldr r2, [r4, #0x10]
006bf174  01 c0 52 e0                                      subs ip, r2, r1
006bf178  23 00 00 0a                                      beq #0x6bf20c
006bf17c  10 a0 90 e5                                      ldr sl, [r0, #0x10]
006bf180  14 00 90 e5                                      ldr r0, [r0, #0x14]
006bf184  00 a0 5a e0                                      subs sl, sl, r0
006bf188  0c 00 8d e5                                      str r0, [sp, #0xc]
006bf18c  08 00 00 0a                                      beq #0x6bf1b4
006bf190  0c 90 9d e5                                      ldr sb, [sp, #0xc]
006bf194  d0 00 d1 e1                                      ldrsb r0, [r1]
006bf198  d0 80 d9 e1                                      ldrsb r8, [sb]
006bf19c  08 80 50 e0                                      subs r8, r0, r8
006bf1a0  08 00 a0 01                                      moveq r0, r8
006bf1a4  16 00 00 1a                                      bne #0x6bf204
006bf1a8  01 00 80 e2                                      add r0, r0, #1
006bf1ac  0c 00 50 e1                                      cmp r0, ip
006bf1b0  0a 00 00 1a                                      bne #0x6bf1e0
006bf1b4  0a 00 5c e1                                      cmp ip, sl
006bf1b8  00 80 a0 23                                      movhs r8, #0
006bf1bc  01 80 a0 33                                      movlo r8, #1
006bf1c0  00 00 58 e3                                      cmp r8, #0
006bf1c4  a7 ff ff 0a                                      beq #0x6bf068
006bf1c8  1c c0 a0 e3                                      mov ip, #0x1c
006bf1cc  9c b5 24 e0                                      mla r4, ip, r5, fp
006bf1d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
006bf1d4  10 20 94 e5                                      ldr r2, [r4, #0x10]
006bf1d8  02 c0 61 e0                                      rsb ip, r1, r2
006bf1dc  a2 ff ff ea                                      b #0x6bf06c
006bf1e0  0a 00 50 e1                                      cmp r0, sl
006bf1e4  f2 ff ff 0a                                      beq #0x6bf1b4
006bf1e8  d0 80 91 e1                                      ldrsb r8, [r1, r0]
006bf1ec  0c 90 9d e5                                      ldr sb, [sp, #0xc]
006bf1f0  04 80 8d e5                                      str r8, [sp, #4]
006bf1f4  d0 80 99 e1                                      ldrsb r8, [sb, r0]
006bf1f8  04 90 9d e5                                      ldr sb, [sp, #4]
006bf1fc  08 80 59 e0                                      subs r8, sb, r8
006bf200  e8 ff ff 0a                                      beq #0x6bf1a8
006bf204  a8 8f a0 e1                                      lsr r8, r8, #0x1f
006bf208  ec ff ff ea                                      b #0x6bf1c0
006bf20c  10 80 90 e5                                      ldr r8, [r0, #0x10]
006bf210  14 a0 90 e5                                      ldr sl, [r0, #0x14]
006bf214  08 a0 6a e0                                      rsb sl, sl, r8
006bf218  e5 ff ff ea                                      b #0x6bf1b4
006bf21c  3b 3c f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bf220  84 5a 2d 00 ac 40 00 00                          .byte 0x84, 0x5a, 0x2d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006bf228, declared_size=260, range_size=260, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5scene10CMeshCache9MeshEntryEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::scene::CMeshCache::MeshEntry>(glitch::scene::CMeshCache::MeshEntry*, int)
; decoder-mode: arm
006bf228  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bf22c  f0 80 9f e5                                      ldr r8, [pc, #0xf0]
006bf230  f0 b0 9f e5                                      ldr fp, [pc, #0xf0]
006bf234  01 a0 41 e2                                      sub sl, r1, #1
006bf238  08 80 8f e0                                      add r8, pc, r8
006bf23c  0b 30 98 e7                                      ldr r3, [r8, fp]
006bf240  aa 5f 8a e0                                      add r5, sl, sl, lsr #31
006bf244  24 d0 4d e2                                      sub sp, sp, #0x24
006bf248  00 30 93 e5                                      ldr r3, [r3]
006bf24c  c5 50 b0 e1                                      asrs r5, r5, #1
006bf250  01 90 a0 e1                                      mov sb, r1
006bf254  00 40 a0 e1                                      mov r4, r0
006bf258  1c 30 8d e5                                      str r3, [sp, #0x1c]
006bf25c  1c 60 40 e2                                      sub r6, r0, #0x1c
006bf260  07 00 00 4a                                      bmi #0x6bf284
006bf264  01 50 85 e2                                      add r5, r5, #1
006bf268  01 70 81 e2                                      add r7, r1, #1
006bf26c  05 10 a0 e1                                      mov r1, r5
006bf270  06 00 a0 e1                                      mov r0, r6
006bf274  07 20 a0 e1                                      mov r2, r7
006bf278  5f ff ff eb                                      bl #0x6beffc
006bf27c  01 50 55 e2                                      subs r5, r5, #1
006bf280  f9 ff ff 1a                                      bne #0x6bf26c
006bf284  00 00 5a e3                                      cmp sl, #0
006bf288  1d 00 00 ba                                      blt #0x6bf304
006bf28c  1c 30 a0 e3                                      mov r3, #0x1c
006bf290  93 4a 2a e0                                      mla sl, r3, sl, r4
006bf294  0d 50 a0 e1                                      mov r5, sp
006bf298  10 20 94 e5                                      ldr r2, [r4, #0x10]
006bf29c  14 10 94 e5                                      ldr r1, [r4, #0x14]
006bf2a0  0d 00 a0 e1                                      mov r0, sp
006bf2a4  10 50 8d e5                                      str r5, [sp, #0x10]
006bf2a8  14 50 8d e5                                      str r5, [sp, #0x14]
006bf2ac  50 9b f1 eb                                      bl #0x325ff4
006bf2b0  18 30 94 e5                                      ldr r3, [r4, #0x18]
006bf2b4  0a 10 a0 e1                                      mov r1, sl
006bf2b8  04 00 a0 e1                                      mov r0, r4
006bf2bc  00 00 53 e3                                      cmp r3, #0
006bf2c0  18 30 8d e5                                      str r3, [sp, #0x18]
006bf2c4  04 20 93 15                                      ldrne r2, [r3, #4]
006bf2c8  01 20 82 12                                      addne r2, r2, #1
006bf2cc  04 20 83 15                                      strne r2, [r3, #4]
006bf2d0  3a fd ff eb                                      bl #0x6be7c0
006bf2d4  0a 00 a0 e1                                      mov r0, sl
006bf2d8  0d 10 a0 e1                                      mov r1, sp
006bf2dc  37 fd ff eb                                      bl #0x6be7c0
006bf2e0  09 20 a0 e1                                      mov r2, sb
006bf2e4  06 00 a0 e1                                      mov r0, r6
006bf2e8  01 10 a0 e3                                      mov r1, #1
006bf2ec  42 ff ff eb                                      bl #0x6beffc
006bf2f0  0d 00 a0 e1                                      mov r0, sp
006bf2f4  0d fd ff eb                                      bl #0x6be730
006bf2f8  01 90 59 e2                                      subs sb, sb, #1
006bf2fc  1c a0 4a e2                                      sub sl, sl, #0x1c
006bf300  e4 ff ff 1a                                      bne #0x6bf298
006bf304  0b 30 98 e7                                      ldr r3, [r8, fp]
006bf308  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006bf30c  00 30 93 e5                                      ldr r3, [r3]
006bf310  03 00 52 e1                                      cmp r2, r3
006bf314  01 00 00 1a                                      bne #0x6bf320
006bf318  24 d0 8d e2                                      add sp, sp, #0x24
006bf31c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bf320  fa 3b f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006bf324  58 58 2d 00 ac 40 00 00                          .byte 0x58, 0x58, 0x2d, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006dac5c, declared_size=304, range_size=304, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsinkINS_5video14CVideoModeList10SVideoModeEEEvPT_ii
; demangled: void glitch::core::heapsink<glitch::video::CVideoModeList::SVideoMode>(glitch::video::CVideoModeList::SVideoMode*, int, int)
; decoder-mode: arm
006dac5c  81 30 a0 e1                                      lsl r3, r1, #1
006dac60  03 00 52 e1                                      cmp r2, r3
006dac64  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006dac68  22 00 00 da                                      ble #0x6dacf8
006dac6c  0c 80 a0 e3                                      mov r8, #0xc
006dac70  01 c0 83 e2                                      add ip, r3, #1
006dac74  0c 00 52 e1                                      cmp r2, ip
006dac78  39 00 00 da                                      ble #0x6dad64
006dac7c  98 03 05 e0                                      mul r5, r8, r3
006dac80  98 0c 04 e0                                      mul r4, r8, ip
006dac84  05 60 90 e7                                      ldr r6, [r0, r5]
006dac88  04 70 90 e7                                      ldr r7, [r0, r4]
006dac8c  04 40 80 e0                                      add r4, r0, r4
006dac90  05 50 80 e0                                      add r5, r0, r5
006dac94  07 00 56 e1                                      cmp r6, r7
006dac98  04 50 a0 b1                                      movlt r5, r4
006dac9c  07 60 a0 b1                                      movlt r6, r7
006daca0  01 00 00 ba                                      blt #0x6dacac
006daca4  15 00 00 0a                                      beq #0x6dad00
006daca8  03 c0 a0 e1                                      mov ip, r3
006dacac  98 01 04 e0                                      mul r4, r8, r1
006dacb0  04 30 90 e7                                      ldr r3, [r0, r4]
006dacb4  04 70 80 e0                                      add r7, r0, r4
006dacb8  06 00 53 e1                                      cmp r3, r6
006dacbc  19 00 00 aa                                      bge #0x6dad28
006dacc0  00 0a 95 e9                                      ldmib r5, {sb, fp}
006dacc4  04 10 90 e7                                      ldr r1, [r0, r4]
006dacc8  05 a0 a0 e1                                      mov sl, r5
006daccc  8c 30 a0 e1                                      lsl r3, ip, #1
006dacd0  04 10 8a e4                                      str r1, [sl], #4
006dacd4  0c 10 a0 e1                                      mov r1, ip
006dacd8  04 c0 97 e5                                      ldr ip, [r7, #4]
006dacdc  02 00 53 e1                                      cmp r3, r2
006dace0  04 c0 85 e5                                      str ip, [r5, #4]
006dace4  08 c0 97 e5                                      ldr ip, [r7, #8]
006dace8  04 c0 8a e5                                      str ip, [sl, #4]
006dacec  00 0a 87 e9                                      stmib r7, {sb, fp}
006dacf0  04 60 80 e7                                      str r6, [r0, r4]
006dacf4  dd ff ff ba                                      blt #0x6dac70
006dacf8  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006dacfc  1e ff 2f e1                                      bx lr
006dad00  04 a0 95 e5                                      ldr sl, [r5, #4]
006dad04  04 70 94 e5                                      ldr r7, [r4, #4]
006dad08  07 00 5a e1                                      cmp sl, r7
006dad0c  0d 00 00 aa                                      bge #0x6dad48
006dad10  04 50 a0 e1                                      mov r5, r4
006dad14  98 01 04 e0                                      mul r4, r8, r1
006dad18  04 30 90 e7                                      ldr r3, [r0, r4]
006dad1c  04 70 80 e0                                      add r7, r0, r4
006dad20  06 00 53 e1                                      cmp r3, r6
006dad24  e5 ff ff ba                                      blt #0x6dacc0
006dad28  f2 ff ff 1a                                      bne #0x6dacf8
006dad2c  04 90 97 e5                                      ldr sb, [r7, #4]
006dad30  04 30 95 e5                                      ldr r3, [r5, #4]
006dad34  03 00 59 e1                                      cmp sb, r3
006dad38  0d 00 00 aa                                      bge #0x6dad74
006dad3c  03 90 a0 e1                                      mov sb, r3
006dad40  08 b0 95 e5                                      ldr fp, [r5, #8]
006dad44  de ff ff ea                                      b #0x6dacc4
006dad48  d6 ff ff 1a                                      bne #0x6daca8
006dad4c  08 a0 95 e5                                      ldr sl, [r5, #8]
006dad50  08 70 94 e5                                      ldr r7, [r4, #8]
006dad54  07 00 5a e1                                      cmp sl, r7
006dad58  d2 ff ff aa                                      bge #0x6daca8
006dad5c  04 50 a0 e1                                      mov r5, r4
006dad60  eb ff ff ea                                      b #0x6dad14
006dad64  98 03 05 e0                                      mul r5, r8, r3
006dad68  05 60 90 e7                                      ldr r6, [r0, r5]
006dad6c  05 50 80 e0                                      add r5, r0, r5
006dad70  cc ff ff ea                                      b #0x6daca8
006dad74  df ff ff 1a                                      bne #0x6dacf8
006dad78  08 b0 95 e5                                      ldr fp, [r5, #8]
006dad7c  08 30 97 e5                                      ldr r3, [r7, #8]
006dad80  0b 00 53 e1                                      cmp r3, fp
006dad84  db ff ff aa                                      bge #0x6dacf8
006dad88  cd ff ff ea                                      b #0x6dacc4

; FUNCTION 0x006dad8c, declared_size=164, range_size=164, mode=arm
; class-group: void glitch::core
; alias: _ZN6glitch4core8heapsortINS_5video14CVideoModeList10SVideoModeEEEvPT_i
; demangled: void glitch::core::heapsort<glitch::video::CVideoModeList::SVideoMode>(glitch::video::CVideoModeList::SVideoMode*, int)
; decoder-mode: arm
006dad8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006dad90  01 40 41 e2                                      sub r4, r1, #1
006dad94  a4 8f 84 e0                                      add r8, r4, r4, lsr #31
006dad98  01 60 a0 e1                                      mov r6, r1
006dad9c  c8 80 b0 e1                                      asrs r8, r8, #1
006dada0  00 50 a0 e1                                      mov r5, r0
006dada4  0c 70 40 e2                                      sub r7, r0, #0xc
006dada8  07 00 00 4a                                      bmi #0x6dadcc
006dadac  01 80 88 e2                                      add r8, r8, #1
006dadb0  01 a0 81 e2                                      add sl, r1, #1
006dadb4  08 10 a0 e1                                      mov r1, r8
006dadb8  07 00 a0 e1                                      mov r0, r7
006dadbc  0a 20 a0 e1                                      mov r2, sl
006dadc0  a5 ff ff eb                                      bl #0x6dac5c
006dadc4  01 80 58 e2                                      subs r8, r8, #1
006dadc8  f9 ff ff 1a                                      bne #0x6dadb4
006dadcc  00 00 54 e3                                      cmp r4, #0
006dadd0  15 00 00 ba                                      blt #0x6dae2c
006dadd4  0c 30 a0 e3                                      mov r3, #0xc
006dadd8  93 54 24 e0                                      mla r4, r3, r4, r5
006daddc  04 80 85 e2                                      add r8, r5, #4
006dade0  08 40 84 e2                                      add r4, r4, #8
006dade4  04 a0 88 e2                                      add sl, r8, #4
006dade8  08 20 14 e5                                      ldr r2, [r4, #-8]
006dadec  00 30 95 e5                                      ldr r3, [r5]
006dadf0  08 e0 95 e5                                      ldr lr, [r5, #8]
006dadf4  00 20 85 e5                                      str r2, [r5]
006dadf8  04 10 14 e5                                      ldr r1, [r4, #-4]
006dadfc  04 c0 95 e5                                      ldr ip, [r5, #4]
006dae00  06 20 a0 e1                                      mov r2, r6
006dae04  00 10 88 e5                                      str r1, [r8]
006dae08  00 90 94 e5                                      ldr sb, [r4]
006dae0c  07 00 a0 e1                                      mov r0, r7
006dae10  01 10 a0 e3                                      mov r1, #1
006dae14  00 90 8a e5                                      str sb, [sl]
006dae18  08 50 04 e8                                      stmda r4, {r3, ip, lr}
006dae1c  8e ff ff eb                                      bl #0x6dac5c
006dae20  01 60 56 e2                                      subs r6, r6, #1
006dae24  0c 40 44 e2                                      sub r4, r4, #0xc
006dae28  ee ff ff 1a                                      bne #0x6dade8
006dae2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
