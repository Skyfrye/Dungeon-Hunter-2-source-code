; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005619b0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io10IAttributeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005619b0  70 40 2d e9                                      push {r4, r5, r6, lr}
005619b4  14 00 90 e8                                      ldm r0, {r2, r4}
005619b8  ff 3f 0f e3                                      movw r3, #0xffff
005619bc  ff 3f 43 e3                                      movt r3, #0x3fff
005619c0  04 40 62 e0                                      rsb r4, r2, r4
005619c4  44 41 a0 e1                                      asr r4, r4, #2
005619c8  03 30 64 e0                                      rsb r3, r4, r3
005619cc  01 00 53 e1                                      cmp r3, r1
005619d0  01 50 a0 e1                                      mov r5, r1
005619d4  08 00 00 3a                                      blo #0x5619fc
005619d8  05 00 54 e1                                      cmp r4, r5
005619dc  04 00 84 20                                      addhs r0, r4, r4
005619e0  05 00 84 30                                      addlo r0, r4, r5
005619e4  07 01 70 e3                                      cmn r0, #0xc0000001
005619e8  01 00 00 8a                                      bhi #0x5619f4
005619ec  04 00 50 e1                                      cmp r0, r4
005619f0  00 00 00 2a                                      bhs #0x5619f8
005619f4  03 01 e0 e3                                      mvn r0, #0xc0000000
005619f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005619fc  08 00 9f e5                                      ldr r0, [pc, #8]
00561a00  00 00 8f e0                                      add r0, pc, r0
00561a04  0d 9d 06 eb                                      bl #0x708e40
00561a08  f2 ff ff ea                                      b #0x5619d8
; mapping-symbol data/literal pool
00561a0c  68 ca 35 00                                      .byte 0x68, 0xca, 0x35, 0x00

; FUNCTION 0x00562f78, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io10IAttributeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::io::IAttribute**, unsigned int, glitch::io::IAttribute* const&, std::__false_type const&)
; decoder-mode: arm
00562f78  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00562f7c  00 c0 90 e5                                      ldr ip, [r0]
00562f80  03 50 a0 e1                                      mov r5, r3
00562f84  14 d0 4d e2                                      sub sp, sp, #0x14
00562f88  0c 00 53 e1                                      cmp r3, ip
00562f8c  00 40 a0 e1                                      mov r4, r0
00562f90  01 60 a0 e1                                      mov r6, r1
00562f94  02 30 a0 e1                                      mov r3, r2
00562f98  04 70 90 35                                      ldrlo r7, [r0, #4]
00562f9c  02 00 00 3a                                      blo #0x562fac
00562fa0  04 70 90 e5                                      ldr r7, [r0, #4]
00562fa4  07 00 55 e1                                      cmp r5, r7
00562fa8  20 00 00 3a                                      blo #0x563030
00562fac  07 20 66 e0                                      rsb r2, r6, r7
00562fb0  42 81 a0 e1                                      asr r8, r2, #2
00562fb4  08 00 53 e1                                      cmp r3, r8
00562fb8  23 00 00 3a                                      blo #0x56304c
00562fbc  03 30 68 e0                                      rsb r3, r8, r3
00562fc0  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00562fc4  00 00 5a e3                                      cmp sl, #0
00562fc8  03 01 87 e0                                      add r0, r7, r3, lsl #2
00562fcc  05 00 00 da                                      ble #0x562fe8
00562fd0  00 10 a0 e3                                      mov r1, #0
00562fd4  00 c0 95 e5                                      ldr ip, [r5]
00562fd8  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00562fdc  01 10 81 e2                                      add r1, r1, #1
00562fe0  0a 00 51 e1                                      cmp r1, sl
00562fe4  fa ff ff 1a                                      bne #0x562fd4
00562fe8  07 00 56 e1                                      cmp r6, r7
00562fec  04 00 84 e5                                      str r0, [r4, #4]
00562ff0  02 00 00 0a                                      beq #0x563000
00562ff4  06 10 a0 e1                                      mov r1, r6
00562ff8  1a ae f6 eb                                      bl #0x30e868
00562ffc  04 00 94 e5                                      ldr r0, [r4, #4]
00563000  08 01 80 e0                                      add r0, r0, r8, lsl #2
00563004  00 00 58 e3                                      cmp r8, #0
00563008  04 00 84 e5                                      str r0, [r4, #4]
0056300c  05 00 00 da                                      ble #0x563028
00563010  00 30 a0 e3                                      mov r3, #0
00563014  00 20 95 e5                                      ldr r2, [r5]
00563018  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0056301c  01 30 83 e2                                      add r3, r3, #1
00563020  03 00 58 e1                                      cmp r8, r3
00563024  fa ff ff 1a                                      bne #0x563014
00563028  14 d0 8d e2                                      add sp, sp, #0x14
0056302c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00563030  00 c0 95 e5                                      ldr ip, [r5]
00563034  10 30 8d e2                                      add r3, sp, #0x10
00563038  08 c0 23 e5                                      str ip, [r3, #-8]!
0056303c  0c c0 8d e2                                      add ip, sp, #0xc
00563040  00 c0 8d e5                                      str ip, [sp]
00563044  cb ff ff eb                                      bl #0x562f78
00563048  f6 ff ff ea                                      b #0x563028
0056304c  03 81 a0 e1                                      lsl r8, r3, #2
00563050  07 30 68 e0                                      rsb r3, r8, r7
00563054  07 00 53 e1                                      cmp r3, r7
00563058  07 a0 a0 01                                      moveq sl, r7
0056305c  05 00 00 0a                                      beq #0x563078
00563060  03 10 a0 e1                                      mov r1, r3
00563064  07 20 63 e0                                      rsb r2, r3, r7
00563068  07 00 a0 e1                                      mov r0, r7
0056306c  03 a0 a0 e1                                      mov sl, r3
00563070  fc ad f6 eb                                      bl #0x30e868
00563074  04 30 94 e5                                      ldr r3, [r4, #4]
00563078  0a 20 66 e0                                      rsb r2, r6, sl
0056307c  08 30 83 e0                                      add r3, r3, r8
00563080  00 00 52 e3                                      cmp r2, #0
00563084  04 30 84 e5                                      str r3, [r4, #4]
00563088  02 00 00 da                                      ble #0x563098
0056308c  07 00 62 e0                                      rsb r0, r2, r7
00563090  06 10 a0 e1                                      mov r1, r6
00563094  a7 ab f6 eb                                      bl #0x30df38
00563098  48 81 a0 e1                                      asr r8, r8, #2
0056309c  00 00 58 e3                                      cmp r8, #0
005630a0  e0 ff ff da                                      ble #0x563028
005630a4  00 20 a0 e3                                      mov r2, #0
005630a8  00 10 95 e5                                      ldr r1, [r5]
005630ac  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
005630b0  01 20 82 e2                                      add r2, r2, #1
005630b4  08 00 52 e1                                      cmp r2, r8
005630b8  fa ff ff 1a                                      bne #0x5630a8
005630bc  d9 ff ff ea                                      b #0x563028

; FUNCTION 0x00563468, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io10IAttributeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb
; demangled: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::io::IAttribute**, glitch::io::IAttribute* const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
00563468  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056346c  28 60 9d e5                                      ldr r6, [sp, #0x28]
00563470  01 90 a0 e1                                      mov sb, r1
00563474  02 40 a0 e1                                      mov r4, r2
00563478  06 10 a0 e1                                      mov r1, r6
0056347c  00 50 a0 e1                                      mov r5, r0
00563480  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
00563484  49 f9 ff eb                                      bl #0x5619b0
00563488  00 81 a0 e1                                      lsl r8, r0, #2
0056348c  00 10 a0 e3                                      mov r1, #0
00563490  08 00 a0 e1                                      mov r0, r8
00563494  33 b4 f6 eb                                      bl #0x310568
00563498  00 10 95 e5                                      ldr r1, [r5]
0056349c  00 70 a0 e1                                      mov r7, r0
005634a0  01 a0 59 e0                                      subs sl, sb, r1
005634a4  00 00 a0 01                                      moveq r0, r0
005634a8  02 00 00 0a                                      beq #0x5634b8
005634ac  0a 20 a0 e1                                      mov r2, sl
005634b0  a0 aa f6 eb                                      bl #0x30df38
005634b4  0a 00 80 e0                                      add r0, r0, sl
005634b8  00 00 56 e3                                      cmp r6, #0
005634bc  00 a0 a0 e1                                      mov sl, r0
005634c0  07 00 00 0a                                      beq #0x5634e4
005634c4  06 20 a0 e1                                      mov r2, r6
005634c8  00 30 a0 e3                                      mov r3, #0
005634cc  00 10 94 e5                                      ldr r1, [r4]
005634d0  01 20 52 e2                                      subs r2, r2, #1
005634d4  03 10 80 e7                                      str r1, [r0, r3]
005634d8  04 30 83 e2                                      add r3, r3, #4
005634dc  fa ff ff 1a                                      bne #0x5634cc
005634e0  06 a1 80 e0                                      add sl, r0, r6, lsl #2
005634e4  00 00 5b e3                                      cmp fp, #0
005634e8  05 00 00 0a                                      beq #0x563504
005634ec  00 00 95 e5                                      ldr r0, [r5]
005634f0  08 80 87 e0                                      add r8, r7, r8
005634f4  d5 b3 f6 eb                                      bl #0x310450
005634f8  08 80 85 e5                                      str r8, [r5, #8]
005634fc  80 04 85 e8                                      stm r5, {r7, sl}
00563500  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00563504  04 40 95 e5                                      ldr r4, [r5, #4]
00563508  09 40 54 e0                                      subs r4, r4, sb
0056350c  f6 ff ff 0a                                      beq #0x5634ec
00563510  0a 00 a0 e1                                      mov r0, sl
00563514  09 10 a0 e1                                      mov r1, sb
00563518  04 20 a0 e1                                      mov r2, r4
0056351c  85 aa f6 eb                                      bl #0x30df38
00563520  04 a0 80 e0                                      add sl, r0, r4
00563524  f0 ff ff ea                                      b #0x5634ec

; FUNCTION 0x00563528, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io10IAttributeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::io::IAttribute* const&)
; decoder-mode: arm
00563528  10 40 2d e9                                      push {r4, lr}
0056352c  04 c0 90 e5                                      ldr ip, [r0, #4]
00563530  08 40 90 e5                                      ldr r4, [r0, #8]
00563534  10 d0 4d e2                                      sub sp, sp, #0x10
00563538  01 20 a0 e1                                      mov r2, r1
0056353c  04 00 5c e1                                      cmp ip, r4
00563540  06 00 00 0a                                      beq #0x563560
00563544  00 20 91 e5                                      ldr r2, [r1]
00563548  00 20 8c e5                                      str r2, [ip]
0056354c  04 20 90 e5                                      ldr r2, [r0, #4]
00563550  04 20 82 e2                                      add r2, r2, #4
00563554  04 20 80 e5                                      str r2, [r0, #4]
00563558  10 d0 8d e2                                      add sp, sp, #0x10
0056355c  10 80 bd e8                                      pop {r4, pc}
00563560  0c 10 a0 e1                                      mov r1, ip
00563564  0c 30 8d e2                                      add r3, sp, #0xc
00563568  01 c0 a0 e3                                      mov ip, #1
0056356c  04 c0 8d e5                                      str ip, [sp, #4]
00563570  00 c0 8d e5                                      str ip, [sp]
00563574  bb ff ff eb                                      bl #0x563468
00563578  f6 ff ff ea                                      b #0x563558

; FUNCTION 0x0056357c, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch2io10IAttributeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::io::IAttribute*, glitch::core::SAllocator<glitch::io::IAttribute*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::io::IAttribute**, unsigned int, glitch::io::IAttribute* const&)
; decoder-mode: arm
0056357c  30 40 2d e9                                      push {r4, r5, lr}
00563580  00 40 52 e2                                      subs r4, r2, #0
00563584  14 d0 4d e2                                      sub sp, sp, #0x14
00563588  03 50 a0 e1                                      mov r5, r3
0056358c  09 00 00 0a                                      beq #0x5635b8
00563590  04 e0 90 e5                                      ldr lr, [r0, #4]
00563594  08 c0 90 e5                                      ldr ip, [r0, #8]
00563598  0c c0 6e e0                                      rsb ip, lr, ip
0056359c  4c 01 54 e1                                      cmp r4, ip, asr #2
005635a0  06 00 00 9a                                      bls #0x5635c0
005635a4  03 20 a0 e1                                      mov r2, r3
005635a8  00 c0 a0 e3                                      mov ip, #0
005635ac  08 30 8d e2                                      add r3, sp, #8
005635b0  10 10 8d e8                                      stm sp, {r4, ip}
005635b4  ab ff ff eb                                      bl #0x563468
005635b8  14 d0 8d e2                                      add sp, sp, #0x14
005635bc  30 80 bd e8                                      pop {r4, r5, pc}
005635c0  0c c0 8d e2                                      add ip, sp, #0xc
005635c4  00 c0 8d e5                                      str ip, [sp]
005635c8  6a fe ff eb                                      bl #0x562f78
005635cc  f9 ff ff ea                                      b #0x5635b8
