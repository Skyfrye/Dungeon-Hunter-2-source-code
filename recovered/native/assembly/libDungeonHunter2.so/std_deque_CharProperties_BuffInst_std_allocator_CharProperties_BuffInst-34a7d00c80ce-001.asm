; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003dfa9c, declared_size=636, range_size=636, mode=arm
; class-group: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt5dequeIPN14CharProperties8BuffInstESaIS2_EE8_M_eraseENSt4priv15_Deque_iteratorIS2_St16_Nonconst_traitsIS2_EEERKSt12__false_type
; demangled: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::_M_erase(std::priv::_Deque_iterator<CharProperties::BuffInst*, std::_Nonconst_traits<CharProperties::BuffInst*> >, std::__false_type const&)
; decoder-mode: arm
003dfa9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003dfaa0  00 60 92 e5                                      ldr r6, [r2]
003dfaa4  08 70 92 e5                                      ldr r7, [r2, #8]
003dfaa8  0c b0 92 e5                                      ldr fp, [r2, #0xc]
003dfaac  04 60 86 e2                                      add r6, r6, #4
003dfab0  07 00 56 e1                                      cmp r6, r7
003dfab4  04 90 92 e5                                      ldr sb, [r2, #4]
003dfab8  dc d0 4d e2                                      sub sp, sp, #0xdc
003dfabc  04 90 bb 05                                      ldreq sb, [fp, #4]!
003dfac0  c0 c0 8d e2                                      add ip, sp, #0xc0
003dfac4  02 50 a0 e1                                      mov r5, r2
003dfac8  01 40 a0 e1                                      mov r4, r1
003dfacc  00 a0 a0 e1                                      mov sl, r0
003dfad0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003dfad4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003dfad8  0c 10 a0 e1                                      mov r1, ip
003dfadc  05 00 a0 e1                                      mov r0, r5
003dfae0  80 70 89 02                                      addeq r7, sb, #0x80
003dfae4  09 60 a0 01                                      moveq r6, sb
003dfae8  60 fb ff eb                                      bl #0x3de870
003dfaec  20 c0 8d e2                                      add ip, sp, #0x20
003dfaf0  00 80 a0 e1                                      mov r8, r0
003dfaf4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003dfaf8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003dfafc  0c 10 a0 e1                                      mov r1, ip
003dfb00  10 00 84 e2                                      add r0, r4, #0x10
003dfb04  59 fb ff eb                                      bl #0x3de870
003dfb08  a0 00 58 e1                                      cmp r8, r0, lsr #1
003dfb0c  38 00 00 2a                                      bhs #0x3dfbf4
003dfb10  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003dfb14  90 20 8d e2                                      add r2, sp, #0x90
003dfb18  b0 00 8d e2                                      add r0, sp, #0xb0
003dfb1c  08 30 8d e5                                      str r3, [sp, #8]
003dfb20  00 c0 94 e5                                      ldr ip, [r4]
003dfb24  a0 10 8d e2                                      add r1, sp, #0xa0
003dfb28  1c c0 8d e5                                      str ip, [sp, #0x1c]
003dfb2c  04 e0 94 e5                                      ldr lr, [r4, #4]
003dfb30  18 e0 8d e5                                      str lr, [sp, #0x18]
003dfb34  00 30 95 e5                                      ldr r3, [r5]
003dfb38  08 e0 94 e5                                      ldr lr, [r4, #8]
003dfb3c  10 30 8d e5                                      str r3, [sp, #0x10]
003dfb40  04 c0 95 e5                                      ldr ip, [r5, #4]
003dfb44  80 30 8d e2                                      add r3, sp, #0x80
003dfb48  0c c0 8d e5                                      str ip, [sp, #0xc]
003dfb4c  08 c0 95 e5                                      ldr ip, [r5, #8]
003dfb50  0c 50 94 e5                                      ldr r5, [r4, #0xc]
003dfb54  a8 e0 8d e5                                      str lr, [sp, #0xa8]
003dfb58  18 e0 9d e5                                      ldr lr, [sp, #0x18]
003dfb5c  ac 50 8d e5                                      str r5, [sp, #0xac]
003dfb60  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
003dfb64  98 c0 8d e5                                      str ip, [sp, #0x98]
003dfb68  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003dfb6c  a4 e0 8d e5                                      str lr, [sp, #0xa4]
003dfb70  a0 50 8d e5                                      str r5, [sp, #0xa0]
003dfb74  08 e0 9d e5                                      ldr lr, [sp, #8]
003dfb78  0c 50 9d e5                                      ldr r5, [sp, #0xc]
003dfb7c  90 c0 8d e5                                      str ip, [sp, #0x90]
003dfb80  d4 c0 8d e2                                      add ip, sp, #0xd4
003dfb84  00 c0 8d e5                                      str ip, [sp]
003dfb88  00 c0 a0 e3                                      mov ip, #0
003dfb8c  9c e0 8d e5                                      str lr, [sp, #0x9c]
003dfb90  94 50 8d e5                                      str r5, [sp, #0x94]
003dfb94  8c b0 8d e5                                      str fp, [sp, #0x8c]
003dfb98  88 70 8d e5                                      str r7, [sp, #0x88]
003dfb9c  84 90 8d e5                                      str sb, [sp, #0x84]
003dfba0  80 60 8d e5                                      str r6, [sp, #0x80]
003dfba4  04 c0 8d e5                                      str ip, [sp, #4]
003dfba8  9a fb ff eb                                      bl #0x3dea18
003dfbac  08 20 94 e5                                      ldr r2, [r4, #8]
003dfbb0  00 30 94 e5                                      ldr r3, [r4]
003dfbb4  04 20 42 e2                                      sub r2, r2, #4
003dfbb8  02 00 53 e1                                      cmp r3, r2
003dfbbc  04 30 83 12                                      addne r3, r3, #4
003dfbc0  00 30 84 15                                      strne r3, [r4]
003dfbc4  45 00 00 0a                                      beq #0x3dfce0
003dfbc8  30 50 8d e2                                      add r5, sp, #0x30
003dfbcc  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003dfbd0  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
003dfbd4  08 10 a0 e1                                      mov r1, r8
003dfbd8  05 00 a0 e1                                      mov r0, r5
003dfbdc  34 fb ff eb                                      bl #0x3de8b4
003dfbe0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003dfbe4  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
003dfbe8  0a 00 a0 e1                                      mov r0, sl
003dfbec  dc d0 8d e2                                      add sp, sp, #0xdc
003dfbf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003dfbf4  0c e0 95 e5                                      ldr lr, [r5, #0xc]
003dfbf8  70 00 8d e2                                      add r0, sp, #0x70
003dfbfc  60 10 8d e2                                      add r1, sp, #0x60
003dfc00  08 e0 8d e5                                      str lr, [sp, #8]
003dfc04  10 30 94 e5                                      ldr r3, [r4, #0x10]
003dfc08  50 20 8d e2                                      add r2, sp, #0x50
003dfc0c  18 30 8d e5                                      str r3, [sp, #0x18]
003dfc10  14 c0 94 e5                                      ldr ip, [r4, #0x14]
003dfc14  14 c0 8d e5                                      str ip, [sp, #0x14]
003dfc18  00 30 95 e5                                      ldr r3, [r5]
003dfc1c  18 e0 94 e5                                      ldr lr, [r4, #0x18]
003dfc20  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
003dfc24  10 30 8d e5                                      str r3, [sp, #0x10]
003dfc28  04 30 95 e5                                      ldr r3, [r5, #4]
003dfc2c  0c 30 8d e5                                      str r3, [sp, #0xc]
003dfc30  08 50 95 e5                                      ldr r5, [r5, #8]
003dfc34  5c c0 8d e5                                      str ip, [sp, #0x5c]
003dfc38  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003dfc3c  58 e0 8d e5                                      str lr, [sp, #0x58]
003dfc40  18 e0 9d e5                                      ldr lr, [sp, #0x18]
003dfc44  54 c0 8d e5                                      str ip, [sp, #0x54]
003dfc48  08 c0 9d e5                                      ldr ip, [sp, #8]
003dfc4c  50 e0 8d e5                                      str lr, [sp, #0x50]
003dfc50  48 50 8d e5                                      str r5, [sp, #0x48]
003dfc54  0c e0 9d e5                                      ldr lr, [sp, #0xc]
003dfc58  10 50 9d e5                                      ldr r5, [sp, #0x10]
003dfc5c  4c c0 8d e5                                      str ip, [sp, #0x4c]
003dfc60  d0 c0 8d e2                                      add ip, sp, #0xd0
003dfc64  40 30 8d e2                                      add r3, sp, #0x40
003dfc68  00 c0 8d e5                                      str ip, [sp]
003dfc6c  00 c0 a0 e3                                      mov ip, #0
003dfc70  6c b0 8d e5                                      str fp, [sp, #0x6c]
003dfc74  68 70 8d e5                                      str r7, [sp, #0x68]
003dfc78  64 90 8d e5                                      str sb, [sp, #0x64]
003dfc7c  60 60 8d e5                                      str r6, [sp, #0x60]
003dfc80  44 e0 8d e5                                      str lr, [sp, #0x44]
003dfc84  40 50 8d e5                                      str r5, [sp, #0x40]
003dfc88  04 c0 8d e5                                      str ip, [sp, #4]
003dfc8c  a0 fb ff eb                                      bl #0x3deb14
003dfc90  10 00 94 e5                                      ldr r0, [r4, #0x10]
003dfc94  14 30 94 e5                                      ldr r3, [r4, #0x14]
003dfc98  03 00 50 e1                                      cmp r0, r3
003dfc9c  04 00 40 12                                      subne r0, r0, #4
003dfca0  10 00 84 15                                      strne r0, [r4, #0x10]
003dfca4  c7 ff ff 1a                                      bne #0x3dfbc8
003dfca8  00 00 50 e3                                      cmp r0, #0
003dfcac  01 00 00 0a                                      beq #0x3dfcb8
003dfcb0  80 10 a0 e3                                      mov r1, #0x80
003dfcb4  a2 ef fc eb                                      bl #0x31bb44
003dfcb8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003dfcbc  04 20 43 e2                                      sub r2, r3, #4
003dfcc0  1c 20 84 e5                                      str r2, [r4, #0x1c]
003dfcc4  04 30 13 e5                                      ldr r3, [r3, #-4]
003dfcc8  7c 20 83 e2                                      add r2, r3, #0x7c
003dfccc  80 10 83 e2                                      add r1, r3, #0x80
003dfcd0  18 10 84 e5                                      str r1, [r4, #0x18]
003dfcd4  10 20 84 e5                                      str r2, [r4, #0x10]
003dfcd8  14 30 84 e5                                      str r3, [r4, #0x14]
003dfcdc  b9 ff ff ea                                      b #0x3dfbc8
003dfce0  04 00 94 e5                                      ldr r0, [r4, #4]
003dfce4  00 00 50 e3                                      cmp r0, #0
003dfce8  01 00 00 0a                                      beq #0x3dfcf4
003dfcec  80 10 a0 e3                                      mov r1, #0x80
003dfcf0  93 ef fc eb                                      bl #0x31bb44
003dfcf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003dfcf8  04 20 83 e2                                      add r2, r3, #4
003dfcfc  0c 20 84 e5                                      str r2, [r4, #0xc]
003dfd00  04 30 93 e5                                      ldr r3, [r3, #4]
003dfd04  80 20 83 e2                                      add r2, r3, #0x80
003dfd08  08 20 84 e5                                      str r2, [r4, #8]
003dfd0c  00 30 84 e5                                      str r3, [r4]
003dfd10  04 30 84 e5                                      str r3, [r4, #4]
003dfd14  ab ff ff ea                                      b #0x3dfbc8

; FUNCTION 0x003e092c, declared_size=120, range_size=120, mode=arm
; class-group: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt5dequeIPN14CharProperties8BuffInstESaIS2_EE5clearEv
; demangled: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::clear()
; decoder-mode: arm
003e092c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e0930  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003e0934  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003e0938  00 50 a0 e1                                      mov r5, r0
003e093c  04 20 84 e2                                      add r2, r4, #4
003e0940  02 00 53 e1                                      cmp r3, r2
003e0944  0b 00 00 9a                                      bls #0x3e0978
003e0948  08 40 84 e2                                      add r4, r4, #8
003e094c  04 00 14 e5                                      ldr r0, [r4, #-4]
003e0950  80 10 a0 e3                                      mov r1, #0x80
003e0954  00 00 50 e3                                      cmp r0, #0
003e0958  01 00 00 0a                                      beq #0x3e0964
003e095c  67 a1 0c eb                                      bl #0x708f00
003e0960  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003e0964  04 20 a0 e1                                      mov r2, r4
003e0968  02 00 53 e1                                      cmp r3, r2
003e096c  04 40 84 e2                                      add r4, r4, #4
003e0970  f5 ff ff 8a                                      bhi #0x3e094c
003e0974  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003e0978  03 00 54 e1                                      cmp r4, r3
003e097c  04 00 00 0a                                      beq #0x3e0994
003e0980  14 00 95 e5                                      ldr r0, [r5, #0x14]
003e0984  00 00 50 e3                                      cmp r0, #0
003e0988  01 00 00 0a                                      beq #0x3e0994
003e098c  80 10 a0 e3                                      mov r1, #0x80
003e0990  5a a1 0c eb                                      bl #0x708f00
003e0994  10 c0 85 e2                                      add ip, r5, #0x10
003e0998  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e099c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e09a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e18c4, declared_size=252, range_size=252, mode=arm
; class-group: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt5dequeIPN14CharProperties8BuffInstESaIS2_EEC1ERKS4_
; demangled: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::deque(std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> > const&)
; decoder-mode: arm
003e18c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e18c8  7c d0 4d e2                                      sub sp, sp, #0x7c
003e18cc  01 50 a0 e1                                      mov r5, r1
003e18d0  24 c0 8d e2                                      add ip, sp, #0x24
003e18d4  00 40 a0 e1                                      mov r4, r0
003e18d8  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
003e18dc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e18e0  0c 10 a0 e1                                      mov r1, ip
003e18e4  10 00 85 e2                                      add r0, r5, #0x10
003e18e8  e0 f3 ff eb                                      bl #0x3de870
003e18ec  00 60 a0 e3                                      mov r6, #0
003e18f0  00 10 a0 e1                                      mov r1, r0
003e18f4  00 60 84 e5                                      str r6, [r4]
003e18f8  04 00 a0 e1                                      mov r0, r4
003e18fc  04 60 84 e5                                      str r6, [r4, #4]
003e1900  08 60 84 e5                                      str r6, [r4, #8]
003e1904  0c 60 84 e5                                      str r6, [r4, #0xc]
003e1908  10 60 84 e5                                      str r6, [r4, #0x10]
003e190c  14 60 84 e5                                      str r6, [r4, #0x14]
003e1910  18 60 84 e5                                      str r6, [r4, #0x18]
003e1914  1c 60 84 e5                                      str r6, [r4, #0x1c]
003e1918  20 60 84 e5                                      str r6, [r4, #0x20]
003e191c  24 60 84 e5                                      str r6, [r4, #0x24]
003e1920  bc ff ff eb                                      bl #0x3e1818
003e1924  0c 70 95 e5                                      ldr r7, [r5, #0xc]
003e1928  10 c0 95 e5                                      ldr ip, [r5, #0x10]
003e192c  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
003e1930  18 90 95 e5                                      ldr sb, [r5, #0x18]
003e1934  14 e0 95 e5                                      ldr lr, [r5, #0x14]
003e1938  01 05 95 e8                                      ldm r5, {r0, r8, sl}
003e193c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003e1940  08 20 94 e5                                      ldr r2, [r4, #8]
003e1944  04 30 94 e5                                      ldr r3, [r4, #4]
003e1948  00 50 94 e5                                      ldr r5, [r4]
003e194c  5c 90 8d e5                                      str sb, [sp, #0x5c]
003e1950  58 e0 8d e5                                      str lr, [sp, #0x58]
003e1954  54 c0 8d e5                                      str ip, [sp, #0x54]
003e1958  60 b0 8d e5                                      str fp, [sp, #0x60]
003e195c  40 10 8d e5                                      str r1, [sp, #0x40]
003e1960  3c 20 8d e5                                      str r2, [sp, #0x3c]
003e1964  38 30 8d e5                                      str r3, [sp, #0x38]
003e1968  34 50 8d e5                                      str r5, [sp, #0x34]
003e196c  04 c0 8d e2                                      add ip, sp, #4
003e1970  54 90 8d e2                                      add sb, sp, #0x54
003e1974  64 00 8d e5                                      str r0, [sp, #0x64]
003e1978  6c a0 8d e5                                      str sl, [sp, #0x6c]
003e197c  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
003e1980  68 80 8d e5                                      str r8, [sp, #0x68]
003e1984  70 70 8d e5                                      str r7, [sp, #0x70]
003e1988  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e198c  34 30 8d e2                                      add r3, sp, #0x34
003e1990  64 e0 8d e2                                      add lr, sp, #0x64
003e1994  14 30 8d e5                                      str r3, [sp, #0x14]
003e1998  74 30 8d e2                                      add r3, sp, #0x74
003e199c  18 30 8d e5                                      str r3, [sp, #0x18]
003e19a0  44 00 8d e2                                      add r0, sp, #0x44
003e19a4  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
003e19a8  1c 60 8d e5                                      str r6, [sp, #0x1c]
003e19ac  00 70 8d e5                                      str r7, [sp]
003e19b0  dc f3 ff eb                                      bl #0x3de928
003e19b4  04 00 a0 e1                                      mov r0, r4
003e19b8  7c d0 8d e2                                      add sp, sp, #0x7c
003e19bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x003e21a8, declared_size=388, range_size=388, mode=arm
; class-group: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt5dequeIPN14CharProperties8BuffInstESaIS2_EE18_M_push_back_aux_vERKS2_
; demangled: std::deque<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::_M_push_back_aux_v(CharProperties::BuffInst* const&)
; decoder-mode: arm
003e21a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e21ac  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
003e21b0  20 20 90 e5                                      ldr r2, [r0, #0x20]
003e21b4  24 30 90 e5                                      ldr r3, [r0, #0x24]
003e21b8  01 50 a0 e1                                      mov r5, r1
003e21bc  0a 10 62 e0                                      rsb r1, r2, sl
003e21c0  41 11 43 e0                                      sub r1, r3, r1, asr #2
003e21c4  01 00 51 e3                                      cmp r1, #1
003e21c8  00 40 a0 e1                                      mov r4, r0
003e21cc  0e 00 00 9a                                      bls #0x3e220c
003e21d0  24 00 84 e2                                      add r0, r4, #0x24
003e21d4  87 fd ff eb                                      bl #0x3e17f8
003e21d8  04 00 8a e5                                      str r0, [sl, #4]
003e21dc  00 20 95 e5                                      ldr r2, [r5]
003e21e0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e21e4  00 20 83 e5                                      str r2, [r3]
003e21e8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003e21ec  04 20 83 e2                                      add r2, r3, #4
003e21f0  1c 20 84 e5                                      str r2, [r4, #0x1c]
003e21f4  04 30 93 e5                                      ldr r3, [r3, #4]
003e21f8  80 20 83 e2                                      add r2, r3, #0x80
003e21fc  10 30 84 e5                                      str r3, [r4, #0x10]
003e2200  18 20 84 e5                                      str r2, [r4, #0x18]
003e2204  14 30 84 e5                                      str r3, [r4, #0x14]
003e2208  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e220c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003e2210  0a 70 61 e0                                      rsb r7, r1, sl
003e2214  47 71 a0 e1                                      asr r7, r7, #2
003e2218  01 70 87 e2                                      add r7, r7, #1
003e221c  01 90 87 e2                                      add sb, r7, #1
003e2220  89 00 53 e1                                      cmp r3, sb, lsl #1
003e2224  0a 00 00 9a                                      bls #0x3e2254
003e2228  03 60 69 e0                                      rsb r6, sb, r3
003e222c  a6 60 a0 e1                                      lsr r6, r6, #1
003e2230  06 61 82 e0                                      add r6, r2, r6, lsl #2
003e2234  06 00 51 e1                                      cmp r1, r6
003e2238  2e 00 00 9a                                      bls #0x3e22f8
003e223c  04 20 8a e2                                      add r2, sl, #4
003e2240  01 20 52 e0                                      subs r2, r2, r1
003e2244  1e 00 00 0a                                      beq #0x3e22c4
003e2248  06 00 a0 e1                                      mov r0, r6
003e224c  39 af fc eb                                      bl #0x30df38
003e2250  1b 00 00 ea                                      b #0x3e22c4
003e2254  00 00 53 e3                                      cmp r3, #0
003e2258  03 20 a0 11                                      movne r2, r3
003e225c  01 20 a0 03                                      moveq r2, #1
003e2260  02 80 83 e2                                      add r8, r3, #2
003e2264  02 80 88 e0                                      add r8, r8, r2
003e2268  08 10 a0 e1                                      mov r1, r8
003e226c  00 20 a0 e3                                      mov r2, #0
003e2270  20 00 80 e2                                      add r0, r0, #0x20
003e2274  94 f9 ff eb                                      bl #0x3e08cc
003e2278  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003e227c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003e2280  08 60 69 e0                                      rsb r6, sb, r8
003e2284  a6 60 a0 e1                                      lsr r6, r6, #1
003e2288  04 20 82 e2                                      add r2, r2, #4
003e228c  01 20 52 e0                                      subs r2, r2, r1
003e2290  00 a0 a0 e1                                      mov sl, r0
003e2294  06 61 80 e0                                      add r6, r0, r6, lsl #2
003e2298  20 00 00 1a                                      bne #0x3e2320
003e229c  20 00 94 e5                                      ldr r0, [r4, #0x20]
003e22a0  24 10 94 e5                                      ldr r1, [r4, #0x24]
003e22a4  00 00 50 e3                                      cmp r0, #0
003e22a8  03 00 00 0a                                      beq #0x3e22bc
003e22ac  01 11 a0 e1                                      lsl r1, r1, #2
003e22b0  80 00 51 e3                                      cmp r1, #0x80
003e22b4  17 00 00 8a                                      bhi #0x3e2318
003e22b8  10 9b 0c eb                                      bl #0x708f00
003e22bc  20 a0 84 e5                                      str sl, [r4, #0x20]
003e22c0  24 80 84 e5                                      str r8, [r4, #0x24]
003e22c4  0c 60 84 e5                                      str r6, [r4, #0xc]
003e22c8  00 30 96 e5                                      ldr r3, [r6]
003e22cc  01 70 47 e2                                      sub r7, r7, #1
003e22d0  07 a1 86 e0                                      add sl, r6, r7, lsl #2
003e22d4  80 20 83 e2                                      add r2, r3, #0x80
003e22d8  08 20 84 e5                                      str r2, [r4, #8]
003e22dc  04 30 84 e5                                      str r3, [r4, #4]
003e22e0  1c a0 84 e5                                      str sl, [r4, #0x1c]
003e22e4  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
003e22e8  80 20 83 e2                                      add r2, r3, #0x80
003e22ec  18 20 84 e5                                      str r2, [r4, #0x18]
003e22f0  14 30 84 e5                                      str r3, [r4, #0x14]
003e22f4  b5 ff ff ea                                      b #0x3e21d0
003e22f8  04 20 8a e2                                      add r2, sl, #4
003e22fc  02 20 61 e0                                      rsb r2, r1, r2
003e2300  00 00 52 e3                                      cmp r2, #0
003e2304  ee ff ff da                                      ble #0x3e22c4
003e2308  07 01 86 e0                                      add r0, r6, r7, lsl #2
003e230c  00 00 62 e0                                      rsb r0, r2, r0
003e2310  08 af fc eb                                      bl #0x30df38
003e2314  ea ff ff ea                                      b #0x3e22c4
003e2318  48 b8 fc eb                                      bl #0x310440
003e231c  e6 ff ff ea                                      b #0x3e22bc
003e2320  06 00 a0 e1                                      mov r0, r6
003e2324  03 af fc eb                                      bl #0x30df38
003e2328  db ff ff ea                                      b #0x3e229c
