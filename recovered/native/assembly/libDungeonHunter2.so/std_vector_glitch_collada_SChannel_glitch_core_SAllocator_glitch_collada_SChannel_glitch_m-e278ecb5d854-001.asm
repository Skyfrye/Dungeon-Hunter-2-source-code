; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062dc0c, declared_size=468, range_size=468, mode=arm
; class-group: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada8SChannelENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::SChannel*, unsigned int, glitch::collada::SChannel const&, std::__false_type const&)
; decoder-mode: arm
0062dc0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062dc10  00 90 a0 e1                                      mov sb, r0
0062dc14  00 00 90 e5                                      ldr r0, [r0]
0062dc18  2c d0 4d e2                                      sub sp, sp, #0x2c
0062dc1c  03 c0 a0 e1                                      mov ip, r3
0062dc20  00 00 53 e1                                      cmp r3, r0
0062dc24  01 60 a0 e1                                      mov r6, r1
0062dc28  02 b0 a0 e1                                      mov fp, r2
0062dc2c  04 80 99 35                                      ldrlo r8, [sb, #4]
0062dc30  0e 00 00 3a                                      blo #0x62dc70
0062dc34  04 80 99 e5                                      ldr r8, [sb, #4]
0062dc38  08 00 53 e1                                      cmp r3, r8
0062dc3c  0b 00 00 2a                                      bhs #0x62dc70
0062dc40  14 e0 8d e2                                      add lr, sp, #0x14
0062dc44  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062dc48  24 c0 8d e2                                      add ip, sp, #0x24
0062dc4c  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0062dc50  09 00 a0 e1                                      mov r0, sb
0062dc54  06 10 a0 e1                                      mov r1, r6
0062dc58  0b 20 a0 e1                                      mov r2, fp
0062dc5c  0e 30 a0 e1                                      mov r3, lr
0062dc60  00 c0 8d e5                                      str ip, [sp]
0062dc64  e8 ff ff eb                                      bl #0x62dc0c
0062dc68  2c d0 8d e2                                      add sp, sp, #0x2c
0062dc6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062dc70  08 70 66 e0                                      rsb r7, r6, r8
0062dc74  47 72 a0 e1                                      asr r7, r7, #4
0062dc78  07 00 5b e1                                      cmp fp, r7
0062dc7c  0c 70 8d e5                                      str r7, [sp, #0xc]
0062dc80  2f 00 00 2a                                      bhs #0x62dd44
0062dc84  0b b2 a0 e1                                      lsl fp, fp, #4
0062dc88  08 a0 6b e0                                      rsb sl, fp, r8
0062dc8c  4b 52 a0 e1                                      asr r5, fp, #4
0062dc90  00 00 55 e3                                      cmp r5, #0
0062dc94  08 30 a0 d1                                      movle r3, r8
0062dc98  0c 00 00 da                                      ble #0x62dcd0
0062dc9c  06 70 a0 e1                                      mov r7, r6
0062dca0  00 40 a0 e3                                      mov r4, #0
0062dca4  0c 60 a0 e1                                      mov r6, ip
0062dca8  04 c0 88 e0                                      add ip, r8, r4
0062dcac  04 30 8a e0                                      add r3, sl, r4
0062dcb0  01 50 55 e2                                      subs r5, r5, #1
0062dcb4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062dcb8  10 40 84 e2                                      add r4, r4, #0x10
0062dcbc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062dcc0  f8 ff ff 1a                                      bne #0x62dca8
0062dcc4  04 30 99 e5                                      ldr r3, [sb, #4]
0062dcc8  06 c0 a0 e1                                      mov ip, r6
0062dccc  07 60 a0 e1                                      mov r6, r7
0062dcd0  0a 50 66 e0                                      rsb r5, r6, sl
0062dcd4  45 52 a0 e1                                      asr r5, r5, #4
0062dcd8  0b 30 83 e0                                      add r3, r3, fp
0062dcdc  00 00 55 e3                                      cmp r5, #0
0062dce0  04 30 89 e5                                      str r3, [sb, #4]
0062dce4  0b 00 00 da                                      ble #0x62dd18
0062dce8  08 70 a0 e1                                      mov r7, r8
0062dcec  0c 40 a0 e1                                      mov r4, ip
0062dcf0  0a 80 a0 e1                                      mov r8, sl
0062dcf4  10 c0 47 e2                                      sub ip, r7, #0x10
0062dcf8  10 30 48 e2                                      sub r3, r8, #0x10
0062dcfc  01 50 55 e2                                      subs r5, r5, #1
0062dd00  03 80 a0 e1                                      mov r8, r3
0062dd04  0c 70 a0 e1                                      mov r7, ip
0062dd08  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062dd0c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062dd10  f7 ff ff 1a                                      bne #0x62dcf4
0062dd14  04 c0 a0 e1                                      mov ip, r4
0062dd18  4b 72 a0 e1                                      asr r7, fp, #4
0062dd1c  00 00 57 e3                                      cmp r7, #0
0062dd20  d0 ff ff da                                      ble #0x62dc68
0062dd24  00 50 a0 e3                                      mov r5, #0
0062dd28  05 42 86 e0                                      add r4, r6, r5, lsl #4
0062dd2c  01 50 85 e2                                      add r5, r5, #1
0062dd30  07 00 55 e1                                      cmp r5, r7
0062dd34  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0062dd38  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0062dd3c  f9 ff ff 1a                                      bne #0x62dd28
0062dd40  c8 ff ff ea                                      b #0x62dc68
0062dd44  0b b0 67 e0                                      rsb fp, r7, fp
0062dd48  5b a0 bb e7                                      sbfx sl, fp, #0, #0x1c
0062dd4c  00 00 5a e3                                      cmp sl, #0
0062dd50  0b b2 88 e0                                      add fp, r8, fp, lsl #4
0062dd54  06 00 00 da                                      ble #0x62dd74
0062dd58  00 50 a0 e3                                      mov r5, #0
0062dd5c  05 42 88 e0                                      add r4, r8, r5, lsl #4
0062dd60  01 50 85 e2                                      add r5, r5, #1
0062dd64  0a 00 55 e1                                      cmp r5, sl
0062dd68  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0062dd6c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0062dd70  f9 ff ff 1a                                      bne #0x62dd5c
0062dd74  00 00 57 e3                                      cmp r7, #0
0062dd78  07 72 8b d0                                      addle r7, fp, r7, lsl #4
0062dd7c  04 b0 89 e5                                      str fp, [sb, #4]
0062dd80  04 70 89 d5                                      strle r7, [sb, #4]
0062dd84  b7 ff ff da                                      ble #0x62dc68
0062dd88  00 40 a0 e3                                      mov r4, #0
0062dd8c  0c 50 a0 e1                                      mov r5, ip
0062dd90  04 c0 8b e0                                      add ip, fp, r4
0062dd94  04 30 86 e0                                      add r3, r6, r4
0062dd98  01 70 57 e2                                      subs r7, r7, #1
0062dd9c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062dda0  10 40 84 e2                                      add r4, r4, #0x10
0062dda4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062dda8  f8 ff ff 1a                                      bne #0x62dd90
0062ddac  04 30 99 e5                                      ldr r3, [sb, #4]
0062ddb0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0062ddb4  05 c0 a0 e1                                      mov ip, r5
0062ddb8  02 32 83 e0                                      add r3, r3, r2, lsl #4
0062ddbc  04 30 89 e5                                      str r3, [sb, #4]
0062ddc0  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0062ddc4  07 42 86 e0                                      add r4, r6, r7, lsl #4
0062ddc8  01 70 87 e2                                      add r7, r7, #1
0062ddcc  07 00 55 e1                                      cmp r5, r7
0062ddd0  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0062ddd4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0062ddd8  f9 ff ff 1a                                      bne #0x62ddc4
0062dddc  a1 ff ff ea                                      b #0x62dc68

; FUNCTION 0x0062e4a0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada8SChannelENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0062e4a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e4a4  14 00 90 e8                                      ldm r0, {r2, r4}
0062e4a8  ff 3f 0f e3                                      movw r3, #0xffff
0062e4ac  ff 3f 40 e3                                      movt r3, #0xfff
0062e4b0  04 40 62 e0                                      rsb r4, r2, r4
0062e4b4  44 42 a0 e1                                      asr r4, r4, #4
0062e4b8  03 30 64 e0                                      rsb r3, r4, r3
0062e4bc  01 00 53 e1                                      cmp r3, r1
0062e4c0  01 50 a0 e1                                      mov r5, r1
0062e4c4  08 00 00 3a                                      blo #0x62e4ec
0062e4c8  05 00 54 e1                                      cmp r4, r5
0062e4cc  04 00 84 20                                      addhs r0, r4, r4
0062e4d0  05 00 84 30                                      addlo r0, r4, r5
0062e4d4  1f 02 70 e3                                      cmn r0, #0xf0000001
0062e4d8  01 00 00 8a                                      bhi #0x62e4e4
0062e4dc  04 00 50 e1                                      cmp r0, r4
0062e4e0  00 00 00 2a                                      bhs #0x62e4e8
0062e4e4  0f 02 e0 e3                                      mvn r0, #0xf0000000
0062e4e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0062e4ec  08 00 9f e5                                      ldr r0, [pc, #8]
0062e4f0  00 00 8f e0                                      add r0, pc, r0
0062e4f4  51 6a 03 eb                                      bl #0x708e40
0062e4f8  f2 ff ff ea                                      b #0x62e4c8
; mapping-symbol data/literal pool
0062e4fc  78 ff 28 00                                      .byte 0x78, 0xff, 0x28, 0x00

; FUNCTION 0x0062e710, declared_size=324, range_size=324, mode=arm
; class-group: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada8SChannelENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS2_RKS2_RKSt12__false_typejb
; demangled: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::collada::SChannel*, glitch::collada::SChannel const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
0062e710  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062e714  0c d0 4d e2                                      sub sp, sp, #0xc
0062e718  30 b0 9d e5                                      ldr fp, [sp, #0x30]
0062e71c  02 40 a0 e1                                      mov r4, r2
0062e720  34 20 dd e5                                      ldrb r2, [sp, #0x34]
0062e724  01 a0 a0 e1                                      mov sl, r1
0062e728  0b 10 a0 e1                                      mov r1, fp
0062e72c  00 90 a0 e1                                      mov sb, r0
0062e730  04 20 8d e5                                      str r2, [sp, #4]
0062e734  59 ff ff eb                                      bl #0x62e4a0
0062e738  00 10 a0 e3                                      mov r1, #0
0062e73c  00 02 a0 e1                                      lsl r0, r0, #4
0062e740  00 00 8d e5                                      str r0, [sp]
0062e744  87 87 f3 eb                                      bl #0x310568
0062e748  00 70 99 e5                                      ldr r7, [sb]
0062e74c  00 50 a0 e1                                      mov r5, r0
0062e750  0a 80 67 e0                                      rsb r8, r7, sl
0062e754  48 82 a0 e1                                      asr r8, r8, #4
0062e758  00 00 58 e3                                      cmp r8, #0
0062e75c  00 60 a0 d1                                      movle r6, r0
0062e760  09 00 00 da                                      ble #0x62e78c
0062e764  08 60 a0 e1                                      mov r6, r8
0062e768  00 e0 a0 e3                                      mov lr, #0
0062e76c  0e c0 85 e0                                      add ip, r5, lr
0062e770  0e 30 87 e0                                      add r3, r7, lr
0062e774  01 60 56 e2                                      subs r6, r6, #1
0062e778  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062e77c  10 e0 8e e2                                      add lr, lr, #0x10
0062e780  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062e784  f8 ff ff 1a                                      bne #0x62e76c
0062e788  08 62 85 e0                                      add r6, r5, r8, lsl #4
0062e78c  01 00 5b e3                                      cmp fp, #1
0062e790  2b 00 00 0a                                      beq #0x62e844
0062e794  5b 70 bb e7                                      sbfx r7, fp, #0, #0x1c
0062e798  00 00 57 e3                                      cmp r7, #0
0062e79c  0b 82 86 e0                                      add r8, r6, fp, lsl #4
0062e7a0  06 00 00 da                                      ble #0x62e7c0
0062e7a4  00 e0 a0 e3                                      mov lr, #0
0062e7a8  0e c2 86 e0                                      add ip, r6, lr, lsl #4
0062e7ac  01 e0 8e e2                                      add lr, lr, #1
0062e7b0  07 00 5e e1                                      cmp lr, r7
0062e7b4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0062e7b8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062e7bc  f9 ff ff 1a                                      bne #0x62e7a8
0062e7c0  04 30 9d e5                                      ldr r3, [sp, #4]
0062e7c4  00 00 53 e3                                      cmp r3, #0
0062e7c8  04 00 99 15                                      ldrne r0, [sb, #4]
0062e7cc  0f 00 00 1a                                      bne #0x62e810
0062e7d0  04 00 99 e5                                      ldr r0, [sb, #4]
0062e7d4  00 60 6a e0                                      rsb r6, sl, r0
0062e7d8  46 62 a0 e1                                      asr r6, r6, #4
0062e7dc  00 00 56 e3                                      cmp r6, #0
0062e7e0  0a 00 00 da                                      ble #0x62e810
0062e7e4  04 e0 9d e5                                      ldr lr, [sp, #4]
0062e7e8  06 40 a0 e1                                      mov r4, r6
0062e7ec  0e c0 88 e0                                      add ip, r8, lr
0062e7f0  0e 30 8a e0                                      add r3, sl, lr
0062e7f4  01 40 54 e2                                      subs r4, r4, #1
0062e7f8  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0062e7fc  10 e0 8e e2                                      add lr, lr, #0x10
0062e800  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062e804  f8 ff ff 1a                                      bne #0x62e7ec
0062e808  04 00 99 e5                                      ldr r0, [sb, #4]
0062e80c  06 82 88 e0                                      add r8, r8, r6, lsl #4
0062e810  00 30 99 e5                                      ldr r3, [sb]
0062e814  00 00 53 e1                                      cmp r3, r0
0062e818  10 20 40 12                                      subne r2, r0, #0x10
0062e81c  02 30 63 10                                      rsbne r3, r3, r2
0062e820  23 32 e0 11                                      mvnne r3, r3, lsr #4
0062e824  03 02 80 10                                      addne r0, r0, r3, lsl #4
0062e828  08 87 f3 eb                                      bl #0x310450
0062e82c  00 20 9d e5                                      ldr r2, [sp]
0062e830  20 01 89 e8                                      stm sb, {r5, r8}
0062e834  02 30 85 e0                                      add r3, r5, r2
0062e838  08 30 89 e5                                      str r3, [sb, #8]
0062e83c  0c d0 8d e2                                      add sp, sp, #0xc
0062e840  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062e844  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0062e848  10 80 86 e2                                      add r8, r6, #0x10
0062e84c  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0062e850  da ff ff ea                                      b #0x62e7c0

; FUNCTION 0x0062e854, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada8SChannelENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::collada::SChannel, glitch::core::SAllocator<glitch::collada::SChannel, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::SChannel*, unsigned int, glitch::collada::SChannel const&)
; decoder-mode: arm
0062e854  30 40 2d e9                                      push {r4, r5, lr}
0062e858  00 40 52 e2                                      subs r4, r2, #0
0062e85c  14 d0 4d e2                                      sub sp, sp, #0x14
0062e860  03 50 a0 e1                                      mov r5, r3
0062e864  09 00 00 0a                                      beq #0x62e890
0062e868  04 e0 90 e5                                      ldr lr, [r0, #4]
0062e86c  08 c0 90 e5                                      ldr ip, [r0, #8]
0062e870  0c c0 6e e0                                      rsb ip, lr, ip
0062e874  4c 02 54 e1                                      cmp r4, ip, asr #4
0062e878  06 00 00 9a                                      bls #0x62e898
0062e87c  03 20 a0 e1                                      mov r2, r3
0062e880  00 c0 a0 e3                                      mov ip, #0
0062e884  08 30 8d e2                                      add r3, sp, #8
0062e888  10 10 8d e8                                      stm sp, {r4, ip}
0062e88c  9f ff ff eb                                      bl #0x62e710
0062e890  14 d0 8d e2                                      add sp, sp, #0x14
0062e894  30 80 bd e8                                      pop {r4, r5, pc}
0062e898  0c c0 8d e2                                      add ip, sp, #0xc
0062e89c  00 c0 8d e5                                      str ip, [sp]
0062e8a0  d9 fc ff eb                                      bl #0x62dc0c
0062e8a4  f9 ff ff ea                                      b #0x62e890
