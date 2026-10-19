; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00484da0, declared_size=792, range_size=792, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE8_M_eraseENSt4priv15_Deque_iteratorIS2_St16_Nonconst_traitsIS2_EEES9_RKSt12__false_type
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_erase(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::__false_type const&)
; decoder-mode: arm
00484da0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00484da4  f4 d0 4d e2                                      sub sp, sp, #0xf4
00484da8  d8 c0 8d e2                                      add ip, sp, #0xd8
00484dac  03 60 a0 e1                                      mov r6, r3
00484db0  01 40 a0 e1                                      mov r4, r1
00484db4  02 50 a0 e1                                      mov r5, r2
00484db8  00 a0 a0 e1                                      mov sl, r0
00484dbc  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
00484dc0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00484dc4  0c 10 a0 e1                                      mov r1, ip
00484dc8  06 00 a0 e1                                      mov r0, r6
00484dcc  d7 fb ff eb                                      bl #0x483d30
00484dd0  c8 c0 8d e2                                      add ip, sp, #0xc8
00484dd4  00 70 a0 e1                                      mov r7, r0
00484dd8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00484ddc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00484de0  0c 10 a0 e1                                      mov r1, ip
00484de4  05 00 a0 e1                                      mov r0, r5
00484de8  d0 fb ff eb                                      bl #0x483d30
00484dec  10 90 84 e2                                      add sb, r4, #0x10
00484df0  38 c0 8d e2                                      add ip, sp, #0x38
00484df4  00 80 a0 e1                                      mov r8, r0
00484df8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00484dfc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00484e00  0c 10 a0 e1                                      mov r1, ip
00484e04  09 00 a0 e1                                      mov r0, sb
00484e08  c8 fb ff eb                                      bl #0x483d30
00484e0c  00 00 67 e0                                      rsb r0, r7, r0
00484e10  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
00484e14  c0 00 58 e1                                      cmp r8, r0, asr #1
00484e18  51 00 00 ca                                      bgt #0x484f64
00484e1c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00484e20  b8 00 8d e2                                      add r0, sp, #0xb8
00484e24  a8 10 8d e2                                      add r1, sp, #0xa8
00484e28  0c 20 8d e5                                      str r2, [sp, #0xc]
00484e2c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00484e30  08 30 8d e5                                      str r3, [sp, #8]
00484e34  00 b0 94 e5                                      ldr fp, [r4]
00484e38  24 b0 8d e5                                      str fp, [sp, #0x24]
00484e3c  04 c0 94 e5                                      ldr ip, [r4, #4]
00484e40  20 c0 8d e5                                      str ip, [sp, #0x20]
00484e44  08 e0 94 e5                                      ldr lr, [r4, #8]
00484e48  1c e0 8d e5                                      str lr, [sp, #0x1c]
00484e4c  00 20 95 e5                                      ldr r2, [r5]
00484e50  14 20 8d e5                                      str r2, [sp, #0x14]
00484e54  04 30 95 e5                                      ldr r3, [r5, #4]
00484e58  98 20 8d e2                                      add r2, sp, #0x98
00484e5c  10 30 8d e5                                      str r3, [sp, #0x10]
00484e60  00 b0 96 e5                                      ldr fp, [r6]
00484e64  00 12 96 e9                                      ldmib r6, {sb, ip}
00484e68  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00484e6c  08 e0 95 e5                                      ldr lr, [r5, #8]
00484e70  88 30 8d e2                                      add r3, sp, #0x88
00484e74  b4 60 8d e5                                      str r6, [sp, #0xb4]
00484e78  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00484e7c  a0 e0 8d e5                                      str lr, [sp, #0xa0]
00484e80  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00484e84  b0 60 8d e5                                      str r6, [sp, #0xb0]
00484e88  20 60 9d e5                                      ldr r6, [sp, #0x20]
00484e8c  9c e0 8d e5                                      str lr, [sp, #0x9c]
00484e90  08 e0 9d e5                                      ldr lr, [sp, #8]
00484e94  ac 60 8d e5                                      str r6, [sp, #0xac]
00484e98  24 60 9d e5                                      ldr r6, [sp, #0x24]
00484e9c  28 50 8d e2                                      add r5, sp, #0x28
00484ea0  a8 60 8d e5                                      str r6, [sp, #0xa8]
00484ea4  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00484ea8  a4 60 8d e5                                      str r6, [sp, #0xa4]
00484eac  14 60 9d e5                                      ldr r6, [sp, #0x14]
00484eb0  98 60 8d e5                                      str r6, [sp, #0x98]
00484eb4  94 e0 8d e5                                      str lr, [sp, #0x94]
00484eb8  90 c0 8d e5                                      str ip, [sp, #0x90]
00484ebc  ec c0 8d e2                                      add ip, sp, #0xec
00484ec0  00 c0 8d e5                                      str ip, [sp]
00484ec4  00 c0 a0 e3                                      mov ip, #0
00484ec8  8c 90 8d e5                                      str sb, [sp, #0x8c]
00484ecc  88 b0 8d e5                                      str fp, [sp, #0x88]
00484ed0  04 c0 8d e5                                      str ip, [sp, #4]
00484ed4  09 fc ff eb                                      bl #0x483f00
00484ed8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00484edc  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00484ee0  07 10 a0 e1                                      mov r1, r7
00484ee4  05 00 a0 e1                                      mov r0, r5
00484ee8  a1 fb ff eb                                      bl #0x483d74
00484eec  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00484ef0  34 70 9d e5                                      ldr r7, [sp, #0x34]
00484ef4  28 20 9d e5                                      ldr r2, [sp, #0x28]
00484ef8  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00484efc  07 00 56 e1                                      cmp r6, r7
00484f00  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
00484f04  08 20 8d e5                                      str r2, [sp, #8]
00484f08  07 00 00 2a                                      bhs #0x484f2c
00484f0c  00 00 96 e5                                      ldr r0, [r6]
00484f10  80 10 a0 e3                                      mov r1, #0x80
00484f14  04 60 86 e2                                      add r6, r6, #4
00484f18  00 00 50 e3                                      cmp r0, #0
00484f1c  00 00 00 0a                                      beq #0x484f24
00484f20  f6 0f 0a eb                                      bl #0x708f00
00484f24  07 00 56 e1                                      cmp r6, r7
00484f28  f7 ff ff 3a                                      blo #0x484f0c
00484f2c  00 0a 84 e9                                      stmib r4, {sb, fp}
00484f30  08 30 9d e5                                      ldr r3, [sp, #8]
00484f34  0c 70 84 e5                                      str r7, [r4, #0xc]
00484f38  00 30 84 e5                                      str r3, [r4]
00484f3c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00484f40  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00484f44  08 10 a0 e1                                      mov r1, r8
00484f48  05 00 a0 e1                                      mov r0, r5
00484f4c  88 fb ff eb                                      bl #0x483d74
00484f50  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00484f54  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00484f58  0a 00 a0 e1                                      mov r0, sl
00484f5c  f4 d0 8d e2                                      add sp, sp, #0xf4
00484f60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00484f64  0c b0 96 e5                                      ldr fp, [r6, #0xc]
00484f68  78 00 8d e2                                      add r0, sp, #0x78
00484f6c  68 10 8d e2                                      add r1, sp, #0x68
00484f70  1c b0 8d e5                                      str fp, [sp, #0x1c]
00484f74  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00484f78  08 c0 8d e5                                      str ip, [sp, #8]
00484f7c  00 e0 96 e5                                      ldr lr, [r6]
00484f80  24 e0 8d e5                                      str lr, [sp, #0x24]
00484f84  04 20 96 e5                                      ldr r2, [r6, #4]
00484f88  20 20 8d e5                                      str r2, [sp, #0x20]
00484f8c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00484f90  08 c0 96 e5                                      ldr ip, [r6, #8]
00484f94  18 30 8d e5                                      str r3, [sp, #0x18]
00484f98  14 60 94 e5                                      ldr r6, [r4, #0x14]
00484f9c  48 30 8d e2                                      add r3, sp, #0x48
00484fa0  0c 60 8d e5                                      str r6, [sp, #0xc]
00484fa4  00 b0 95 e5                                      ldr fp, [r5]
00484fa8  18 60 94 e5                                      ldr r6, [r4, #0x18]
00484fac  1c e0 94 e5                                      ldr lr, [r4, #0x1c]
00484fb0  14 b0 8d e5                                      str fp, [sp, #0x14]
00484fb4  04 20 95 e5                                      ldr r2, [r5, #4]
00484fb8  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
00484fbc  10 20 8d e5                                      str r2, [sp, #0x10]
00484fc0  08 50 95 e5                                      ldr r5, [r5, #8]
00484fc4  70 c0 8d e5                                      str ip, [sp, #0x70]
00484fc8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00484fcc  74 b0 8d e5                                      str fp, [sp, #0x74]
00484fd0  64 e0 8d e5                                      str lr, [sp, #0x64]
00484fd4  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00484fd8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00484fdc  6c c0 8d e5                                      str ip, [sp, #0x6c]
00484fe0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00484fe4  50 50 8d e5                                      str r5, [sp, #0x50]
00484fe8  68 b0 8d e5                                      str fp, [sp, #0x68]
00484fec  60 60 8d e5                                      str r6, [sp, #0x60]
00484ff0  5c c0 8d e5                                      str ip, [sp, #0x5c]
00484ff4  58 e0 8d e5                                      str lr, [sp, #0x58]
00484ff8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00484ffc  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00485000  08 60 9d e5                                      ldr r6, [sp, #8]
00485004  48 c0 8d e5                                      str ip, [sp, #0x48]
00485008  e8 c0 8d e2                                      add ip, sp, #0xe8
0048500c  58 20 8d e2                                      add r2, sp, #0x58
00485010  28 50 8d e2                                      add r5, sp, #0x28
00485014  00 c0 8d e5                                      str ip, [sp]
00485018  00 c0 a0 e3                                      mov ip, #0
0048501c  4c b0 8d e5                                      str fp, [sp, #0x4c]
00485020  04 c0 8d e5                                      str ip, [sp, #4]
00485024  54 60 8d e5                                      str r6, [sp, #0x54]
00485028  f3 fb ff eb                                      bl #0x483ffc
0048502c  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00485030  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00485034  00 10 67 e2                                      rsb r1, r7, #0
00485038  05 00 a0 e1                                      mov r0, r5
0048503c  4c fb ff eb                                      bl #0x483d74
00485040  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00485044  34 90 9d e5                                      ldr sb, [sp, #0x34]
00485048  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0048504c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00485050  09 00 53 e1                                      cmp r3, sb
00485054  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00485058  08 e0 8d e5                                      str lr, [sp, #8]
0048505c  0c 20 8d e5                                      str r2, [sp, #0xc]
00485060  0d 00 00 9a                                      bls #0x48509c
00485064  01 30 43 e2                                      sub r3, r3, #1
00485068  03 30 69 e0                                      rsb r3, sb, r3
0048506c  03 30 c3 e3                                      bic r3, r3, #3
00485070  04 70 89 e2                                      add r7, sb, #4
00485074  03 70 87 e0                                      add r7, r7, r3
00485078  09 60 a0 e1                                      mov r6, sb
0048507c  04 00 96 e5                                      ldr r0, [r6, #4]
00485080  80 10 a0 e3                                      mov r1, #0x80
00485084  04 60 86 e2                                      add r6, r6, #4
00485088  00 00 50 e3                                      cmp r0, #0
0048508c  00 00 00 0a                                      beq #0x485094
00485090  9a 0f 0a eb                                      bl #0x708f00
00485094  07 00 56 e1                                      cmp r6, r7
00485098  f7 ff ff 1a                                      bne #0x48507c
0048509c  18 b0 84 e5                                      str fp, [r4, #0x18]
004850a0  08 30 9d e5                                      ldr r3, [sp, #8]
004850a4  14 30 84 e5                                      str r3, [r4, #0x14]
004850a8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
004850ac  1c 90 84 e5                                      str sb, [r4, #0x1c]
004850b0  10 60 84 e5                                      str r6, [r4, #0x10]
004850b4  a0 ff ff ea                                      b #0x484f3c

; FUNCTION 0x00485894, declared_size=120, range_size=120, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE5clearEv
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::clear()
; decoder-mode: arm
00485894  70 40 2d e9                                      push {r4, r5, r6, lr}
00485898  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0048589c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
004858a0  00 50 a0 e1                                      mov r5, r0
004858a4  04 20 84 e2                                      add r2, r4, #4
004858a8  02 00 53 e1                                      cmp r3, r2
004858ac  0b 00 00 9a                                      bls #0x4858e0
004858b0  08 40 84 e2                                      add r4, r4, #8
004858b4  04 00 14 e5                                      ldr r0, [r4, #-4]
004858b8  80 10 a0 e3                                      mov r1, #0x80
004858bc  00 00 50 e3                                      cmp r0, #0
004858c0  01 00 00 0a                                      beq #0x4858cc
004858c4  8d 0d 0a eb                                      bl #0x708f00
004858c8  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
004858cc  04 20 a0 e1                                      mov r2, r4
004858d0  02 00 53 e1                                      cmp r3, r2
004858d4  04 40 84 e2                                      add r4, r4, #4
004858d8  f5 ff ff 8a                                      bhi #0x4858b4
004858dc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004858e0  03 00 54 e1                                      cmp r4, r3
004858e4  04 00 00 0a                                      beq #0x4858fc
004858e8  14 00 95 e5                                      ldr r0, [r5, #0x14]
004858ec  00 00 50 e3                                      cmp r0, #0
004858f0  01 00 00 0a                                      beq #0x4858fc
004858f4  80 10 a0 e3                                      mov r1, #0x80
004858f8  80 0d 0a eb                                      bl #0x708f00
004858fc  10 c0 85 e2                                      add ip, r5, #0x10
00485900  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00485904  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485908  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048590c, declared_size=164, range_size=164, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE5eraseENSt4priv15_Deque_iteratorIS2_St16_Nonconst_traitsIS2_EEES9_
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::erase(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >)
; decoder-mode: arm
0048590c  70 40 2d e9                                      push {r4, r5, r6, lr}
00485910  01 50 a0 e1                                      mov r5, r1
00485914  00 60 95 e5                                      ldr r6, [r5]
00485918  00 10 92 e5                                      ldr r1, [r2]
0048591c  03 c0 a0 e1                                      mov ip, r3
00485920  30 d0 4d e2                                      sub sp, sp, #0x30
00485924  06 00 51 e1                                      cmp r1, r6
00485928  00 40 a0 e1                                      mov r4, r0
0048592c  00 30 93 15                                      ldrne r3, [r3]
00485930  11 00 00 0a                                      beq #0x48597c
00485934  01 00 53 e1                                      cmp r3, r1
00485938  19 00 00 0a                                      beq #0x4859a4
0048593c  1c 60 8d e2                                      add r6, sp, #0x1c
00485940  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
00485944  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00485948  0c e0 8d e2                                      add lr, sp, #0xc
0048594c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00485950  2c c0 8d e2                                      add ip, sp, #0x2c
00485954  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00485958  05 10 a0 e1                                      mov r1, r5
0048595c  06 20 a0 e1                                      mov r2, r6
00485960  0e 30 a0 e1                                      mov r3, lr
00485964  04 00 a0 e1                                      mov r0, r4
00485968  00 c0 8d e5                                      str ip, [sp]
0048596c  0b fd ff eb                                      bl #0x484da0
00485970  04 00 a0 e1                                      mov r0, r4
00485974  30 d0 8d e2                                      add sp, sp, #0x30
00485978  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048597c  00 30 9c e5                                      ldr r3, [ip]
00485980  10 00 95 e5                                      ldr r0, [r5, #0x10]
00485984  00 00 53 e1                                      cmp r3, r0
00485988  e9 ff ff 1a                                      bne #0x485934
0048598c  05 00 a0 e1                                      mov r0, r5
00485990  10 50 85 e2                                      add r5, r5, #0x10
00485994  be ff ff eb                                      bl #0x485894
00485998  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0048599c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004859a0  f2 ff ff ea                                      b #0x485970
004859a4  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
004859a8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004859ac  ef ff ff ea                                      b #0x485970

; FUNCTION 0x0048678c, declared_size=252, range_size=252, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EEC1ERKS4_
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::deque(std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
0048678c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00486790  7c d0 4d e2                                      sub sp, sp, #0x7c
00486794  01 50 a0 e1                                      mov r5, r1
00486798  24 c0 8d e2                                      add ip, sp, #0x24
0048679c  00 40 a0 e1                                      mov r4, r0
004867a0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
004867a4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004867a8  0c 10 a0 e1                                      mov r1, ip
004867ac  10 00 85 e2                                      add r0, r5, #0x10
004867b0  5e f5 ff eb                                      bl #0x483d30
004867b4  00 60 a0 e3                                      mov r6, #0
004867b8  00 10 a0 e1                                      mov r1, r0
004867bc  00 60 84 e5                                      str r6, [r4]
004867c0  04 00 a0 e1                                      mov r0, r4
004867c4  04 60 84 e5                                      str r6, [r4, #4]
004867c8  08 60 84 e5                                      str r6, [r4, #8]
004867cc  0c 60 84 e5                                      str r6, [r4, #0xc]
004867d0  10 60 84 e5                                      str r6, [r4, #0x10]
004867d4  14 60 84 e5                                      str r6, [r4, #0x14]
004867d8  18 60 84 e5                                      str r6, [r4, #0x18]
004867dc  1c 60 84 e5                                      str r6, [r4, #0x1c]
004867e0  20 60 84 e5                                      str r6, [r4, #0x20]
004867e4  24 60 84 e5                                      str r6, [r4, #0x24]
004867e8  bc ff ff eb                                      bl #0x4866e0
004867ec  0c 70 95 e5                                      ldr r7, [r5, #0xc]
004867f0  10 c0 95 e5                                      ldr ip, [r5, #0x10]
004867f4  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
004867f8  18 90 95 e5                                      ldr sb, [r5, #0x18]
004867fc  14 e0 95 e5                                      ldr lr, [r5, #0x14]
00486800  01 05 95 e8                                      ldm r5, {r0, r8, sl}
00486804  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00486808  08 20 94 e5                                      ldr r2, [r4, #8]
0048680c  04 30 94 e5                                      ldr r3, [r4, #4]
00486810  00 50 94 e5                                      ldr r5, [r4]
00486814  5c 90 8d e5                                      str sb, [sp, #0x5c]
00486818  58 e0 8d e5                                      str lr, [sp, #0x58]
0048681c  54 c0 8d e5                                      str ip, [sp, #0x54]
00486820  60 b0 8d e5                                      str fp, [sp, #0x60]
00486824  40 10 8d e5                                      str r1, [sp, #0x40]
00486828  3c 20 8d e5                                      str r2, [sp, #0x3c]
0048682c  38 30 8d e5                                      str r3, [sp, #0x38]
00486830  34 50 8d e5                                      str r5, [sp, #0x34]
00486834  04 c0 8d e2                                      add ip, sp, #4
00486838  54 90 8d e2                                      add sb, sp, #0x54
0048683c  64 00 8d e5                                      str r0, [sp, #0x64]
00486840  6c a0 8d e5                                      str sl, [sp, #0x6c]
00486844  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00486848  68 80 8d e5                                      str r8, [sp, #0x68]
0048684c  70 70 8d e5                                      str r7, [sp, #0x70]
00486850  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486854  34 30 8d e2                                      add r3, sp, #0x34
00486858  64 e0 8d e2                                      add lr, sp, #0x64
0048685c  14 30 8d e5                                      str r3, [sp, #0x14]
00486860  74 30 8d e2                                      add r3, sp, #0x74
00486864  18 30 8d e5                                      str r3, [sp, #0x18]
00486868  44 00 8d e2                                      add r0, sp, #0x44
0048686c  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
00486870  1c 60 8d e5                                      str r6, [sp, #0x1c]
00486874  00 70 8d e5                                      str r7, [sp]
00486878  7f f6 ff eb                                      bl #0x48427c
0048687c  04 00 a0 e1                                      mov r0, r4
00486880  7c d0 8d e2                                      add sp, sp, #0x7c
00486884  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00487188, declared_size=368, range_size=368, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE17_M_reallocate_mapEjb
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_reallocate_map(unsigned int, bool)
; decoder-mode: arm
00487188  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048718c  00 40 a0 e1                                      mov r4, r0
00487190  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00487194  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00487198  24 a0 94 e5                                      ldr sl, [r4, #0x24]
0048719c  01 60 a0 e1                                      mov r6, r1
004871a0  00 50 63 e0                                      rsb r5, r3, r0
004871a4  45 51 a0 e1                                      asr r5, r5, #2
004871a8  01 50 85 e2                                      add r5, r5, #1
004871ac  01 70 85 e0                                      add r7, r5, r1
004871b0  87 00 5a e1                                      cmp sl, r7, lsl #1
004871b4  02 80 a0 e1                                      mov r8, r2
004871b8  12 00 00 9a                                      bls #0x487208
004871bc  0a a0 67 e0                                      rsb sl, r7, sl
004871c0  aa a0 a0 e1                                      lsr sl, sl, #1
004871c4  00 00 52 e3                                      cmp r2, #0
004871c8  20 20 94 e5                                      ldr r2, [r4, #0x20]
004871cc  01 81 a0 11                                      lslne r8, r1, #2
004871d0  0a a1 a0 e1                                      lsl sl, sl, #2
004871d4  0a 60 88 e0                                      add r6, r8, sl
004871d8  06 60 82 e0                                      add r6, r2, r6
004871dc  06 00 53 e1                                      cmp r3, r6
004871e0  3b 00 00 8a                                      bhi #0x4872d4
004871e4  04 00 80 e2                                      add r0, r0, #4
004871e8  00 20 63 e0                                      rsb r2, r3, r0
004871ec  00 00 52 e3                                      cmp r2, #0
004871f0  23 00 00 da                                      ble #0x487284
004871f4  05 01 86 e0                                      add r0, r6, r5, lsl #2
004871f8  00 00 62 e0                                      rsb r0, r2, r0
004871fc  03 10 a0 e1                                      mov r1, r3
00487200  4c 1b fa eb                                      bl #0x30df38
00487204  1e 00 00 ea                                      b #0x487284
00487208  02 30 8a e2                                      add r3, sl, #2
0048720c  0a 00 51 e1                                      cmp r1, sl
00487210  01 a0 83 20                                      addhs sl, r3, r1
00487214  0a a0 83 30                                      addlo sl, r3, sl
00487218  0a 10 a0 e1                                      mov r1, sl
0048721c  00 20 a0 e3                                      mov r2, #0
00487220  20 00 84 e2                                      add r0, r4, #0x20
00487224  83 f6 ff eb                                      bl #0x484c38
00487228  0a 70 67 e0                                      rsb r7, r7, sl
0048722c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00487230  a7 70 a0 e1                                      lsr r7, r7, #1
00487234  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00487238  00 00 58 e3                                      cmp r8, #0
0048723c  06 81 a0 11                                      lslne r8, r6, #2
00487240  07 71 a0 e1                                      lsl r7, r7, #2
00487244  04 20 82 e2                                      add r2, r2, #4
00487248  07 60 88 e0                                      add r6, r8, r7
0048724c  01 20 52 e0                                      subs r2, r2, r1
00487250  00 90 a0 e1                                      mov sb, r0
00487254  06 60 80 e0                                      add r6, r0, r6
00487258  16 00 00 1a                                      bne #0x4872b8
0048725c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00487260  24 10 94 e5                                      ldr r1, [r4, #0x24]
00487264  00 00 50 e3                                      cmp r0, #0
00487268  03 00 00 0a                                      beq #0x48727c
0048726c  01 11 a0 e1                                      lsl r1, r1, #2
00487270  80 00 51 e3                                      cmp r1, #0x80
00487274  1d 00 00 8a                                      bhi #0x4872f0
00487278  20 07 0a eb                                      bl #0x708f00
0048727c  20 90 84 e5                                      str sb, [r4, #0x20]
00487280  24 a0 84 e5                                      str sl, [r4, #0x24]
00487284  0c 60 84 e5                                      str r6, [r4, #0xc]
00487288  00 30 96 e5                                      ldr r3, [r6]
0048728c  01 50 45 e2                                      sub r5, r5, #1
00487290  05 21 86 e0                                      add r2, r6, r5, lsl #2
00487294  80 10 83 e2                                      add r1, r3, #0x80
00487298  1c 20 84 e5                                      str r2, [r4, #0x1c]
0048729c  08 10 84 e5                                      str r1, [r4, #8]
004872a0  04 30 84 e5                                      str r3, [r4, #4]
004872a4  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
004872a8  80 20 83 e2                                      add r2, r3, #0x80
004872ac  18 20 84 e5                                      str r2, [r4, #0x18]
004872b0  14 30 84 e5                                      str r3, [r4, #0x14]
004872b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004872b8  06 00 a0 e1                                      mov r0, r6
004872bc  1d 1b fa eb                                      bl #0x30df38
004872c0  20 00 94 e5                                      ldr r0, [r4, #0x20]
004872c4  24 10 94 e5                                      ldr r1, [r4, #0x24]
004872c8  00 00 50 e3                                      cmp r0, #0
004872cc  e6 ff ff 1a                                      bne #0x48726c
004872d0  e9 ff ff ea                                      b #0x48727c
004872d4  04 00 80 e2                                      add r0, r0, #4
004872d8  03 20 50 e0                                      subs r2, r0, r3
004872dc  e8 ff ff 0a                                      beq #0x487284
004872e0  03 10 a0 e1                                      mov r1, r3
004872e4  06 00 a0 e1                                      mov r0, r6
004872e8  12 1b fa eb                                      bl #0x30df38
004872ec  e4 ff ff ea                                      b #0x487284
004872f0  52 24 fa eb                                      bl #0x310440
004872f4  e0 ff ff ea                                      b #0x48727c

; FUNCTION 0x004872f8, declared_size=108, range_size=108, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE24_M_new_elements_at_frontEj
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_new_elements_at_front(unsigned int)
; decoder-mode: arm
004872f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004872fc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00487300  20 30 90 e5                                      ldr r3, [r0, #0x20]
00487304  1f 10 81 e2                                      add r1, r1, #0x1f
00487308  a1 52 a0 e1                                      lsr r5, r1, #5
0048730c  02 30 63 e0                                      rsb r3, r3, r2
00487310  43 01 55 e1                                      cmp r5, r3, asr #2
00487314  00 40 a0 e1                                      mov r4, r0
00487318  0d 00 00 8a                                      bhi #0x487354
0048731c  00 00 55 e3                                      cmp r5, #0
00487320  0a 00 00 0a                                      beq #0x487350
00487324  24 a0 84 e2                                      add sl, r4, #0x24
00487328  03 70 e0 e3                                      mvn r7, #3
0048732c  01 60 a0 e3                                      mov r6, #1
00487330  0a 00 a0 e1                                      mov r0, sl
00487334  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00487338  e0 fc ff eb                                      bl #0x4866c0
0048733c  01 60 86 e2                                      add r6, r6, #1
00487340  06 00 55 e1                                      cmp r5, r6
00487344  07 00 88 e7                                      str r0, [r8, r7]
00487348  04 70 47 e2                                      sub r7, r7, #4
0048734c  f7 ff ff 2a                                      bhs #0x487330
00487350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00487354  05 10 a0 e1                                      mov r1, r5
00487358  01 20 a0 e3                                      mov r2, #1
0048735c  89 ff ff eb                                      bl #0x487188
00487360  ed ff ff ea                                      b #0x48731c

; FUNCTION 0x00487364, declared_size=100, range_size=100, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE28_M_reserve_elements_at_frontEj
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_reserve_elements_at_front(unsigned int)
; decoder-mode: arm
00487364  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00487368  01 70 a0 e1                                      mov r7, r1
0048736c  04 30 97 e5                                      ldr r3, [r7, #4]
00487370  00 10 91 e5                                      ldr r1, [r1]
00487374  14 d0 4d e2                                      sub sp, sp, #0x14
00487378  02 60 a0 e1                                      mov r6, r2
0048737c  01 10 63 e0                                      rsb r1, r3, r1
00487380  41 11 a0 e1                                      asr r1, r1, #2
00487384  02 00 51 e1                                      cmp r1, r2
00487388  00 50 a0 e1                                      mov r5, r0
0048738c  02 00 00 2a                                      bhs #0x48739c
00487390  02 10 61 e0                                      rsb r1, r1, r2
00487394  07 00 a0 e1                                      mov r0, r7
00487398  d6 ff ff eb                                      bl #0x4872f8
0048739c  0d 40 a0 e1                                      mov r4, sp
004873a0  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
004873a4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004873a8  00 10 66 e2                                      rsb r1, r6, #0
004873ac  0d 00 a0 e1                                      mov r0, sp
004873b0  6f f2 ff eb                                      bl #0x483d74
004873b4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004873b8  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
004873bc  05 00 a0 e1                                      mov r0, r5
004873c0  14 d0 8d e2                                      add sp, sp, #0x14
004873c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x004873c8, declared_size=112, range_size=112, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE23_M_new_elements_at_backEj
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_new_elements_at_back(unsigned int)
; decoder-mode: arm
004873c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004873cc  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
004873d0  20 20 90 e5                                      ldr r2, [r0, #0x20]
004873d4  24 30 90 e5                                      ldr r3, [r0, #0x24]
004873d8  1f 10 81 e2                                      add r1, r1, #0x1f
004873dc  0c 20 62 e0                                      rsb r2, r2, ip
004873e0  a1 52 a0 e1                                      lsr r5, r1, #5
004873e4  42 31 43 e0                                      sub r3, r3, r2, asr #2
004873e8  01 20 85 e2                                      add r2, r5, #1
004873ec  03 00 52 e1                                      cmp r2, r3
004873f0  00 40 a0 e1                                      mov r4, r0
004873f4  0b 00 00 8a                                      bhi #0x487428
004873f8  00 00 55 e3                                      cmp r5, #0
004873fc  08 00 00 0a                                      beq #0x487424
00487400  24 80 84 e2                                      add r8, r4, #0x24
00487404  01 60 a0 e3                                      mov r6, #1
00487408  08 00 a0 e1                                      mov r0, r8
0048740c  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
00487410  aa fc ff eb                                      bl #0x4866c0
00487414  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
00487418  01 60 86 e2                                      add r6, r6, #1
0048741c  06 00 55 e1                                      cmp r5, r6
00487420  f8 ff ff 2a                                      bhs #0x487408
00487424  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00487428  05 10 a0 e1                                      mov r1, r5
0048742c  00 20 a0 e3                                      mov r2, #0
00487430  54 ff ff eb                                      bl #0x487188
00487434  ef ff ff ea                                      b #0x4873f8

; FUNCTION 0x00487438, declared_size=108, range_size=108, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE27_M_reserve_elements_at_backEj
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_reserve_elements_at_back(unsigned int)
; decoder-mode: arm
00487438  70 40 2d e9                                      push {r4, r5, r6, lr}
0048743c  01 40 a0 e1                                      mov r4, r1
00487440  10 30 94 e5                                      ldr r3, [r4, #0x10]
00487444  18 10 91 e5                                      ldr r1, [r1, #0x18]
00487448  10 d0 4d e2                                      sub sp, sp, #0x10
0048744c  02 60 a0 e1                                      mov r6, r2
00487450  01 10 63 e0                                      rsb r1, r3, r1
00487454  41 11 a0 e1                                      asr r1, r1, #2
00487458  01 10 41 e2                                      sub r1, r1, #1
0048745c  02 00 51 e1                                      cmp r1, r2
00487460  00 50 a0 e1                                      mov r5, r0
00487464  02 00 00 2a                                      bhs #0x487474
00487468  02 10 61 e0                                      rsb r1, r1, r2
0048746c  04 00 a0 e1                                      mov r0, r4
00487470  d4 ff ff eb                                      bl #0x4873c8
00487474  10 30 84 e2                                      add r3, r4, #0x10
00487478  0d 40 a0 e1                                      mov r4, sp
0048747c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00487480  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00487484  06 10 a0 e1                                      mov r1, r6
00487488  0d 00 a0 e1                                      mov r0, sp
0048748c  38 f2 ff eb                                      bl #0x483d74
00487490  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487494  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00487498  05 00 a0 e1                                      mov r0, r5
0048749c  10 d0 8d e2                                      add sp, sp, #0x10
004874a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004874a4, declared_size=1596, range_size=1596, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE18_M_fill_insert_auxENSt4priv15_Deque_iteratorIS2_St16_Nonconst_traitsIS2_EEEjRKS2_RKSt12__false_type
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_fill_insert_aux(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, unsigned int, rnd::Tile* const&, std::__false_type const&)
; decoder-mode: arm
004874a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004874a8  ab df 4d e2                                      sub sp, sp, #0x2ac
004874ac  9d cf 8d e2                                      add ip, sp, #0x274
004874b0  02 50 a0 e1                                      mov r5, r2
004874b4  01 40 a0 e1                                      mov r4, r1
004874b8  00 a0 a0 e1                                      mov sl, r0
004874bc  03 70 a0 e1                                      mov r7, r3
004874c0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
004874c4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004874c8  0c 10 a0 e1                                      mov r1, ip
004874cc  05 00 a0 e1                                      mov r0, r5
004874d0  16 f2 ff eb                                      bl #0x483d30
004874d4  10 60 84 e2                                      add r6, r4, #0x10
004874d8  d4 c0 8d e2                                      add ip, sp, #0xd4
004874dc  00 80 a0 e1                                      mov r8, r0
004874e0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004874e4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004874e8  0c 10 a0 e1                                      mov r1, ip
004874ec  06 00 a0 e1                                      mov r0, r6
004874f0  0e f2 ff eb                                      bl #0x483d30
004874f4  d0 32 9d e5                                      ldr r3, [sp, #0x2d0]
004874f8  a0 00 58 e1                                      cmp r8, r0, lsr #1
004874fc  00 30 93 e5                                      ldr r3, [r3]
00487500  84 32 8d e5                                      str r3, [sp, #0x284]
00487504  47 00 00 ca                                      bgt #0x487628
00487508  89 9f 8d e2                                      add sb, sp, #0x224
0048750c  09 00 a0 e1                                      mov r0, sb
00487510  04 10 a0 e1                                      mov r1, r4
00487514  07 20 a0 e1                                      mov r2, r7
00487518  64 60 8d e2                                      add r6, sp, #0x64
0048751c  90 ff ff eb                                      bl #0x487364
00487520  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487524  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00487528  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0048752c  06 00 a0 e1                                      mov r0, r6
00487530  08 10 a0 e1                                      mov r1, r8
00487534  08 30 8d e5                                      str r3, [sp, #8]
00487538  08 c0 94 e5                                      ldr ip, [r4, #8]
0048753c  0c c0 8d e5                                      str ip, [sp, #0xc]
00487540  04 30 94 e5                                      ldr r3, [r4, #4]
00487544  10 30 8d e5                                      str r3, [sp, #0x10]
00487548  00 b0 94 e5                                      ldr fp, [r4]
0048754c  08 f2 ff eb                                      bl #0x483d74
00487550  68 20 9d e5                                      ldr r2, [sp, #0x68]
00487554  64 30 9d e5                                      ldr r3, [sp, #0x64]
00487558  70 10 9d e5                                      ldr r1, [sp, #0x70]
0048755c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00487560  08 00 57 e1                                      cmp r7, r8
00487564  0c 10 85 e5                                      str r1, [r5, #0xc]
00487568  08 00 85 e5                                      str r0, [r5, #8]
0048756c  04 20 85 e5                                      str r2, [r5, #4]
00487570  00 30 85 e5                                      str r3, [r5]
00487574  ea 00 00 da                                      ble #0x487924
00487578  99 ef 8d e2                                      add lr, sp, #0x264
0048757c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487580  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00487584  95 cf 8d e2                                      add ip, sp, #0x254
00487588  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0048758c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487590  91 6f 8d e2                                      add r6, sp, #0x244
00487594  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00487598  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0048759c  8d 7f 8d e2                                      add r7, sp, #0x234
004875a0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004875a4  a1 8f 8d e2                                      add r8, sp, #0x284
004875a8  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
004875ac  0e 00 a0 e1                                      mov r0, lr
004875b0  0c 10 a0 e1                                      mov r1, ip
004875b4  06 20 a0 e1                                      mov r2, r6
004875b8  07 30 a0 e1                                      mov r3, r7
004875bc  00 80 8d e5                                      str r8, [sp]
004875c0  ca f4 ff eb                                      bl #0x4848f0
004875c4  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
004875c8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004875cc  10 70 9d e5                                      ldr r7, [sp, #0x10]
004875d0  04 c0 95 e5                                      ldr ip, [r5, #4]
004875d4  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004875d8  08 e0 95 e5                                      ldr lr, [r5, #8]
004875dc  00 60 95 e5                                      ldr r6, [r5]
004875e0  0c 90 9d e5                                      ldr sb, [sp, #0xc]
004875e4  98 70 8d e5                                      str r7, [sp, #0x98]
004875e8  08 70 9d e5                                      ldr r7, [sp, #8]
004875ec  a8 c0 8d e5                                      str ip, [sp, #0xa8]
004875f0  08 20 a0 e1                                      mov r2, r8
004875f4  00 c0 a0 e3                                      mov ip, #0
004875f8  94 00 8d e2                                      add r0, sp, #0x94
004875fc  a4 10 8d e2                                      add r1, sp, #0xa4
00487600  29 3e 8d e2                                      add r3, sp, #0x290
00487604  94 b0 8d e5                                      str fp, [sp, #0x94]
00487608  9c 90 8d e5                                      str sb, [sp, #0x9c]
0048760c  a0 70 8d e5                                      str r7, [sp, #0xa0]
00487610  b0 40 8d e5                                      str r4, [sp, #0xb0]
00487614  ac e0 8d e5                                      str lr, [sp, #0xac]
00487618  a4 60 8d e5                                      str r6, [sp, #0xa4]
0048761c  00 c0 8d e5                                      str ip, [sp]
00487620  f0 f2 ff eb                                      bl #0x4841e8
00487624  4f 00 00 ea                                      b #0x487768
00487628  89 bf 8d e2                                      add fp, sp, #0x224
0048762c  00 90 68 e0                                      rsb sb, r8, r0
00487630  04 10 a0 e1                                      mov r1, r4
00487634  0b 00 a0 e1                                      mov r0, fp
00487638  07 20 a0 e1                                      mov r2, r7
0048763c  64 80 8d e2                                      add r8, sp, #0x64
00487640  7c ff ff eb                                      bl #0x487438
00487644  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487648  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
0048764c  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00487650  08 00 a0 e1                                      mov r0, r8
00487654  00 10 69 e2                                      rsb r1, sb, #0
00487658  08 c0 8d e5                                      str ip, [sp, #8]
0048765c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00487660  0c 30 8d e5                                      str r3, [sp, #0xc]
00487664  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00487668  10 c0 8d e5                                      str ip, [sp, #0x10]
0048766c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00487670  14 30 8d e5                                      str r3, [sp, #0x14]
00487674  be f1 ff eb                                      bl #0x483d74
00487678  68 20 9d e5                                      ldr r2, [sp, #0x68]
0048767c  64 30 9d e5                                      ldr r3, [sp, #0x64]
00487680  70 10 9d e5                                      ldr r1, [sp, #0x70]
00487684  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00487688  07 00 59 e1                                      cmp sb, r7
0048768c  0c 10 85 e5                                      str r1, [r5, #0xc]
00487690  08 00 85 e5                                      str r0, [r5, #8]
00487694  04 20 85 e5                                      str r2, [r5, #4]
00487698  00 30 85 e5                                      str r3, [r5]
0048769c  36 00 00 ca                                      bgt #0x48777c
004876a0  81 9f 8d e2                                      add sb, sp, #0x204
004876a4  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
004876a8  0f 00 89 e8                                      stm sb, {r0, r1, r2, r3}
004876ac  85 4f 8d e2                                      add r4, sp, #0x214
004876b0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004876b4  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
004876b8  07 10 a0 e1                                      mov r1, r7
004876bc  08 00 a0 e1                                      mov r0, r8
004876c0  ab f1 ff eb                                      bl #0x483d74
004876c4  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
004876c8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004876cc  7d ef 8d e2                                      add lr, sp, #0x1f4
004876d0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004876d4  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
004876d8  79 cf 8d e2                                      add ip, sp, #0x1e4
004876dc  a1 7f 8d e2                                      add r7, sp, #0x284
004876e0  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
004876e4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004876e8  09 10 a0 e1                                      mov r1, sb
004876ec  04 20 a0 e1                                      mov r2, r4
004876f0  07 30 a0 e1                                      mov r3, r7
004876f4  30 00 8d e2                                      add r0, sp, #0x30
004876f8  00 e0 8d e5                                      str lr, [sp]
004876fc  04 c0 8d e5                                      str ip, [sp, #4]
00487700  be f4 ff eb                                      bl #0x484a00
00487704  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
00487708  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0048770c  00 c0 95 e5                                      ldr ip, [r5]
00487710  0c 60 95 e5                                      ldr r6, [r5, #0xc]
00487714  08 40 95 e5                                      ldr r4, [r5, #8]
00487718  04 e0 95 e5                                      ldr lr, [r5, #4]
0048771c  44 c0 8d e5                                      str ip, [sp, #0x44]
00487720  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00487724  07 20 a0 e1                                      mov r2, r7
00487728  0c 90 9d e5                                      ldr sb, [sp, #0xc]
0048772c  54 c0 8d e5                                      str ip, [sp, #0x54]
00487730  08 c0 9d e5                                      ldr ip, [sp, #8]
00487734  10 70 9d e5                                      ldr r7, [sp, #0x10]
00487738  44 00 8d e2                                      add r0, sp, #0x44
0048773c  60 c0 8d e5                                      str ip, [sp, #0x60]
00487740  54 10 8d e2                                      add r1, sp, #0x54
00487744  00 c0 a0 e3                                      mov ip, #0
00487748  a2 3f 8d e2                                      add r3, sp, #0x288
0048774c  50 60 8d e5                                      str r6, [sp, #0x50]
00487750  4c 40 8d e5                                      str r4, [sp, #0x4c]
00487754  48 e0 8d e5                                      str lr, [sp, #0x48]
00487758  58 70 8d e5                                      str r7, [sp, #0x58]
0048775c  5c 90 8d e5                                      str sb, [sp, #0x5c]
00487760  00 c0 8d e5                                      str ip, [sp]
00487764  9f f2 ff eb                                      bl #0x4841e8
00487768  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0048776c  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00487770  0a 00 a0 e1                                      mov r0, sl
00487774  ab df 8d e2                                      add sp, sp, #0x2ac
00487778  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048777c  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487780  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00487784  08 00 a0 e1                                      mov r0, r8
00487788  00 10 67 e2                                      rsb r1, r7, #0
0048778c  78 f1 ff eb                                      bl #0x483d74
00487790  10 90 94 e5                                      ldr sb, [r4, #0x10]
00487794  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00487798  68 30 9d e5                                      ldr r3, [sp, #0x68]
0048779c  2c 90 8d e5                                      str sb, [sp, #0x2c]
004877a0  24 c0 8d e5                                      str ip, [sp, #0x24]
004877a4  6c 90 9d e5                                      ldr sb, [sp, #0x6c]
004877a8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
004877ac  20 30 8d e5                                      str r3, [sp, #0x20]
004877b0  1c 90 8d e5                                      str sb, [sp, #0x1c]
004877b4  18 c0 8d e5                                      str ip, [sp, #0x18]
004877b8  14 40 84 e2                                      add r4, r4, #0x14
004877bc  10 42 94 e8                                      ldm r4, {r4, sb, lr}
004877c0  55 0f 8d e2                                      add r0, sp, #0x154
004877c4  4c 91 8d e5                                      str sb, [sp, #0x14c]
004877c8  38 41 8d e5                                      str r4, [sp, #0x138]
004877cc  38 c1 9d e5                                      ldr ip, [sp, #0x138]
004877d0  3c 91 8d e5                                      str sb, [sp, #0x13c]
004877d4  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
004877d8  48 c1 8d e5                                      str ip, [sp, #0x148]
004877dc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
004877e0  00 40 a0 e3                                      mov r4, #0
004877e4  49 1f 8d e2                                      add r1, sp, #0x124
004877e8  44 c1 8d e5                                      str ip, [sp, #0x144]
004877ec  a7 cf 8d e2                                      add ip, sp, #0x29c
004877f0  00 c0 8d e5                                      str ip, [sp]
004877f4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004877f8  4d 2f 8d e2                                      add r2, sp, #0x134
004877fc  51 3f 8d e2                                      add r3, sp, #0x144
00487800  30 c1 8d e5                                      str ip, [sp, #0x130]
00487804  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00487808  50 e1 8d e5                                      str lr, [sp, #0x150]
0048780c  40 e1 8d e5                                      str lr, [sp, #0x140]
00487810  2c c1 8d e5                                      str ip, [sp, #0x12c]
00487814  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00487818  34 91 8d e5                                      str sb, [sp, #0x134]
0048781c  28 c1 8d e5                                      str ip, [sp, #0x128]
00487820  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00487824  24 c1 8d e5                                      str ip, [sp, #0x124]
00487828  04 40 8d e5                                      str r4, [sp, #4]
0048782c  30 f2 ff eb                                      bl #0x4840f4
00487830  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
00487834  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00487838  08 c0 95 e5                                      ldr ip, [r5, #8]
0048783c  0c 90 95 e5                                      ldr sb, [r5, #0xc]
00487840  40 40 95 e8                                      ldm r5, {r6, lr}
00487844  0c c1 8d e5                                      str ip, [sp, #0x10c]
00487848  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0048784c  10 91 8d e5                                      str sb, [sp, #0x110]
00487850  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
00487854  00 c1 8d e5                                      str ip, [sp, #0x100]
00487858  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0048785c  fc 90 8d e5                                      str sb, [sp, #0xfc]
00487860  24 90 9d e5                                      ldr sb, [sp, #0x24]
00487864  f8 c0 8d e5                                      str ip, [sp, #0xf8]
00487868  08 c0 9d e5                                      ldr ip, [sp, #8]
0048786c  f4 90 8d e5                                      str sb, [sp, #0xf4]
00487870  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00487874  f0 c0 8d e5                                      str ip, [sp, #0xf0]
00487878  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0048787c  ec 90 8d e5                                      str sb, [sp, #0xec]
00487880  14 90 9d e5                                      ldr sb, [sp, #0x14]
00487884  45 0f 8d e2                                      add r0, sp, #0x114
00487888  41 1f 8d e2                                      add r1, sp, #0x104
0048788c  f4 20 8d e2                                      add r2, sp, #0xf4
00487890  e4 30 8d e2                                      add r3, sp, #0xe4
00487894  e8 c0 8d e5                                      str ip, [sp, #0xe8]
00487898  a6 cf 8d e2                                      add ip, sp, #0x298
0048789c  00 c0 8d e5                                      str ip, [sp]
004878a0  08 e1 8d e5                                      str lr, [sp, #0x108]
004878a4  04 61 8d e5                                      str r6, [sp, #0x104]
004878a8  e4 90 8d e5                                      str sb, [sp, #0xe4]
004878ac  04 40 8d e5                                      str r4, [sp, #4]
004878b0  92 f1 ff eb                                      bl #0x483f00
004878b4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004878b8  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
004878bc  08 00 a0 e1                                      mov r0, r8
004878c0  07 10 a0 e1                                      mov r1, r7
004878c4  0c 60 95 e5                                      ldr r6, [r5, #0xc]
004878c8  08 70 95 e5                                      ldr r7, [r5, #8]
004878cc  04 80 95 e5                                      ldr r8, [r5, #4]
004878d0  00 90 95 e5                                      ldr sb, [r5]
004878d4  26 f1 ff eb                                      bl #0x483d74
004878d8  70 c0 9d e5                                      ldr ip, [sp, #0x70]
004878dc  74 00 8d e2                                      add r0, sp, #0x74
004878e0  84 10 8d e2                                      add r1, sp, #0x84
004878e4  90 c0 8d e5                                      str ip, [sp, #0x90]
004878e8  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
004878ec  a1 2f 8d e2                                      add r2, sp, #0x284
004878f0  a3 3f 8d e2                                      add r3, sp, #0x28c
004878f4  8c c0 8d e5                                      str ip, [sp, #0x8c]
004878f8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
004878fc  80 60 8d e5                                      str r6, [sp, #0x80]
00487900  7c 70 8d e5                                      str r7, [sp, #0x7c]
00487904  88 c0 8d e5                                      str ip, [sp, #0x88]
00487908  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0048790c  78 80 8d e5                                      str r8, [sp, #0x78]
00487910  74 90 8d e5                                      str sb, [sp, #0x74]
00487914  84 c0 8d e5                                      str ip, [sp, #0x84]
00487918  00 40 8d e5                                      str r4, [sp]
0048791c  31 f2 ff eb                                      bl #0x4841e8
00487920  90 ff ff ea                                      b #0x487768
00487924  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487928  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0048792c  06 00 a0 e1                                      mov r0, r6
00487930  07 10 a0 e1                                      mov r1, r7
00487934  0e f1 ff eb                                      bl #0x483d74
00487938  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0048793c  68 30 9d e5                                      ldr r3, [sp, #0x68]
00487940  00 80 a0 e3                                      mov r8, #0
00487944  20 c0 8d e5                                      str ip, [sp, #0x20]
00487948  1c 30 8d e5                                      str r3, [sp, #0x1c]
0048794c  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00487950  70 30 9d e5                                      ldr r3, [sp, #0x70]
00487954  75 0f 8d e2                                      add r0, sp, #0x1d4
00487958  18 c0 8d e5                                      str ip, [sp, #0x18]
0048795c  14 30 8d e5                                      str r3, [sp, #0x14]
00487960  08 c0 94 e5                                      ldr ip, [r4, #8]
00487964  69 1f 8d e2                                      add r1, sp, #0x1a4
00487968  6d 2f 8d e2                                      add r2, sp, #0x1b4
0048796c  24 c0 8d e5                                      str ip, [sp, #0x24]
00487970  08 40 94 e8                                      ldm r4, {r3, lr}
00487974  00 70 67 e2                                      rsb r7, r7, #0
00487978  28 30 8d e5                                      str r3, [sp, #0x28]
0048797c  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00487980  a8 e1 8d e5                                      str lr, [sp, #0x1a8]
00487984  71 3f 8d e2                                      add r3, sp, #0x1c4
00487988  b0 c1 8d e5                                      str ip, [sp, #0x1b0]
0048798c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00487990  ac c1 8d e5                                      str ip, [sp, #0x1ac]
00487994  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00487998  a4 c1 8d e5                                      str ip, [sp, #0x1a4]
0048799c  30 c2 9d e5                                      ldr ip, [sp, #0x230]
004879a0  d0 c1 8d e5                                      str ip, [sp, #0x1d0]
004879a4  2c c2 9d e5                                      ldr ip, [sp, #0x22c]
004879a8  cc c1 8d e5                                      str ip, [sp, #0x1cc]
004879ac  28 c2 9d e5                                      ldr ip, [sp, #0x228]
004879b0  c8 c1 8d e5                                      str ip, [sp, #0x1c8]
004879b4  24 c2 9d e5                                      ldr ip, [sp, #0x224]
004879b8  c4 c1 8d e5                                      str ip, [sp, #0x1c4]
004879bc  a9 cf 8d e2                                      add ip, sp, #0x2a4
004879c0  00 c0 8d e5                                      str ip, [sp]
004879c4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
004879c8  c0 c1 8d e5                                      str ip, [sp, #0x1c0]
004879cc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004879d0  bc c1 8d e5                                      str ip, [sp, #0x1bc]
004879d4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
004879d8  b8 c1 8d e5                                      str ip, [sp, #0x1b8]
004879dc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
004879e0  04 80 8d e5                                      str r8, [sp, #4]
004879e4  b4 c1 8d e5                                      str ip, [sp, #0x1b4]
004879e8  c1 f1 ff eb                                      bl #0x4840f4
004879ec  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
004879f0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004879f4  14 90 9d e5                                      ldr sb, [sp, #0x14]
004879f8  10 40 95 e8                                      ldm r5, {r4, lr}
004879fc  08 c0 95 e5                                      ldr ip, [r5, #8]
00487a00  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00487a04  90 91 8d e5                                      str sb, [sp, #0x190]
00487a08  18 90 9d e5                                      ldr sb, [sp, #0x18]
00487a0c  7c c1 8d e5                                      str ip, [sp, #0x17c]
00487a10  08 c0 9d e5                                      ldr ip, [sp, #8]
00487a14  8c 91 8d e5                                      str sb, [sp, #0x18c]
00487a18  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
00487a1c  70 c1 8d e5                                      str ip, [sp, #0x170]
00487a20  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00487a24  88 91 8d e5                                      str sb, [sp, #0x188]
00487a28  20 90 9d e5                                      ldr sb, [sp, #0x20]
00487a2c  80 31 8d e5                                      str r3, [sp, #0x180]
00487a30  65 0f 8d e2                                      add r0, sp, #0x194
00487a34  84 91 8d e5                                      str sb, [sp, #0x184]
00487a38  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00487a3c  61 1f 8d e2                                      add r1, sp, #0x184
00487a40  5d 2f 8d e2                                      add r2, sp, #0x174
00487a44  59 3f 8d e2                                      add r3, sp, #0x164
00487a48  68 c1 8d e5                                      str ip, [sp, #0x168]
00487a4c  2a ce 8d e2                                      add ip, sp, #0x2a0
00487a50  78 e1 8d e5                                      str lr, [sp, #0x178]
00487a54  00 c0 8d e5                                      str ip, [sp]
00487a58  74 41 8d e5                                      str r4, [sp, #0x174]
00487a5c  6c 91 8d e5                                      str sb, [sp, #0x16c]
00487a60  64 b1 8d e5                                      str fp, [sp, #0x164]
00487a64  04 80 8d e5                                      str r8, [sp, #4]
00487a68  63 f1 ff eb                                      bl #0x483ffc
00487a6c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00487a70  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00487a74  06 00 a0 e1                                      mov r0, r6
00487a78  07 10 a0 e1                                      mov r1, r7
00487a7c  bc f0 ff eb                                      bl #0x483d74
00487a80  70 60 9d e5                                      ldr r6, [sp, #0x70]
00487a84  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00487a88  00 52 95 e8                                      ldm r5, {sb, ip, lr}
00487a8c  c0 60 8d e5                                      str r6, [sp, #0xc0]
00487a90  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
00487a94  b4 00 8d e2                                      add r0, sp, #0xb4
00487a98  c4 10 8d e2                                      add r1, sp, #0xc4
00487a9c  bc 60 8d e5                                      str r6, [sp, #0xbc]
00487aa0  68 60 9d e5                                      ldr r6, [sp, #0x68]
00487aa4  a1 2f 8d e2                                      add r2, sp, #0x284
00487aa8  a5 3f 8d e2                                      add r3, sp, #0x294
00487aac  b8 60 8d e5                                      str r6, [sp, #0xb8]
00487ab0  64 60 9d e5                                      ldr r6, [sp, #0x64]
00487ab4  d0 40 8d e5                                      str r4, [sp, #0xd0]
00487ab8  cc e0 8d e5                                      str lr, [sp, #0xcc]
00487abc  b4 60 8d e5                                      str r6, [sp, #0xb4]
00487ac0  c8 c0 8d e5                                      str ip, [sp, #0xc8]
00487ac4  c4 90 8d e5                                      str sb, [sp, #0xc4]
00487ac8  00 80 8d e5                                      str r8, [sp]
00487acc  c5 f1 ff eb                                      bl #0x4841e8
00487ad0  05 00 a0 e1                                      mov r0, r5
00487ad4  07 10 a0 e1                                      mov r1, r7
00487ad8  a5 f0 ff eb                                      bl #0x483d74
00487adc  21 ff ff ea                                      b #0x487768

; FUNCTION 0x00487ae0, declared_size=208, range_size=208, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE14_M_fill_insertENSt4priv15_Deque_iteratorIS2_St16_Nonconst_traitsIS2_EEEjRKS2_
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_fill_insert(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, unsigned int, rnd::Tile* const&)
; decoder-mode: arm
00487ae0  70 40 2d e9                                      push {r4, r5, r6, lr}
00487ae4  00 40 a0 e1                                      mov r4, r0
00487ae8  00 c0 94 e5                                      ldr ip, [r4]
00487aec  00 00 91 e5                                      ldr r0, [r1]
00487af0  80 d0 4d e2                                      sub sp, sp, #0x80
00487af4  03 50 a0 e1                                      mov r5, r3
00487af8  0c 00 50 e1                                      cmp r0, ip
00487afc  02 e0 a0 e1                                      mov lr, r2
00487b00  0e 00 00 0a                                      beq #0x487b40
00487b04  10 30 94 e5                                      ldr r3, [r4, #0x10]
00487b08  03 00 50 e1                                      cmp r0, r3
00487b0c  1c 00 00 0a                                      beq #0x487b84
00487b10  1c c0 8d e2                                      add ip, sp, #0x1c
00487b14  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00487b18  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487b1c  0c 20 a0 e1                                      mov r2, ip
00487b20  04 10 a0 e1                                      mov r1, r4
00487b24  7c c0 8d e2                                      add ip, sp, #0x7c
00487b28  0e 30 a0 e1                                      mov r3, lr
00487b2c  08 00 8d e2                                      add r0, sp, #8
00487b30  20 10 8d e8                                      stm sp, {r5, ip}
00487b34  5a fe ff eb                                      bl #0x4874a4
00487b38  80 d0 8d e2                                      add sp, sp, #0x80
00487b3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00487b40  4c 60 8d e2                                      add r6, sp, #0x4c
00487b44  06 00 a0 e1                                      mov r0, r6
00487b48  04 10 a0 e1                                      mov r1, r4
00487b4c  04 fe ff eb                                      bl #0x487364
00487b50  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487b54  6c e0 8d e2                                      add lr, sp, #0x6c
00487b58  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00487b5c  5c c0 8d e2                                      add ip, sp, #0x5c
00487b60  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487b64  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487b68  0e 00 a0 e1                                      mov r0, lr
00487b6c  0c 10 a0 e1                                      mov r1, ip
00487b70  05 20 a0 e1                                      mov r2, r5
00487b74  9b f0 ff eb                                      bl #0x483de8
00487b78  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487b7c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00487b80  ec ff ff ea                                      b #0x487b38
00487b84  4c 60 8d e2                                      add r6, sp, #0x4c
00487b88  04 10 a0 e1                                      mov r1, r4
00487b8c  06 00 a0 e1                                      mov r0, r6
00487b90  28 fe ff eb                                      bl #0x487438
00487b94  10 40 84 e2                                      add r4, r4, #0x10
00487b98  3c e0 8d e2                                      add lr, sp, #0x3c
00487b9c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00487ba0  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00487ba4  2c c0 8d e2                                      add ip, sp, #0x2c
00487ba8  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487bac  ec ff ff ea                                      b #0x487b64

; FUNCTION 0x00489a2c, declared_size=120, range_size=120, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE18_M_fill_initializeERKS2_RKSt12__false_type
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_fill_initialize(rnd::Tile* const&, std::__false_type const&)
; decoder-mode: arm
00489a2c  04 40 2d e5                                      str r4, [sp, #-4]!
00489a30  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00489a34  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00489a38  02 00 53 e1                                      cmp r3, r2
00489a3c  0a 00 00 2a                                      bhs #0x489a6c
00489a40  00 40 93 e5                                      ldr r4, [r3]
00489a44  00 20 a0 e3                                      mov r2, #0
00489a48  00 c0 91 e5                                      ldr ip, [r1]
00489a4c  02 c0 84 e7                                      str ip, [r4, r2]
00489a50  04 20 82 e2                                      add r2, r2, #4
00489a54  80 00 52 e3                                      cmp r2, #0x80
00489a58  fa ff ff 1a                                      bne #0x489a48
00489a5c  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00489a60  04 30 83 e2                                      add r3, r3, #4
00489a64  03 00 52 e1                                      cmp r2, r3
00489a68  f4 ff ff 8a                                      bhi #0x489a40
00489a6c  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00489a70  14 00 90 e5                                      ldr r0, [r0, #0x14]
00489a74  0c c0 60 e0                                      rsb ip, r0, ip
00489a78  4c c1 a0 e1                                      asr ip, ip, #2
00489a7c  00 00 5c e3                                      cmp ip, #0
00489a80  05 00 00 da                                      ble #0x489a9c
00489a84  00 30 a0 e3                                      mov r3, #0
00489a88  00 20 91 e5                                      ldr r2, [r1]
00489a8c  03 21 80 e7                                      str r2, [r0, r3, lsl #2]
00489a90  01 30 83 e2                                      add r3, r3, #1
00489a94  0c 00 53 e1                                      cmp r3, ip
00489a98  fa ff ff 1a                                      bne #0x489a88
00489a9c  10 00 bd e8                                      ldm sp!, {r4}
00489aa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048a110, declared_size=360, range_size=360, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE17_M_reallocate_mapEjb.clone.9
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_reallocate_map(unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
0048a110  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048a114  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0048a118  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0048a11c  00 40 a0 e1                                      mov r4, r0
0048a120  24 00 90 e5                                      ldr r0, [r0, #0x24]
0048a124  02 60 63 e0                                      rsb r6, r3, r2
0048a128  46 61 a0 e1                                      asr r6, r6, #2
0048a12c  01 60 86 e2                                      add r6, r6, #1
0048a130  01 50 86 e2                                      add r5, r6, #1
0048a134  85 00 50 e1                                      cmp r0, r5, lsl #1
0048a138  01 70 a0 e1                                      mov r7, r1
0048a13c  0f 00 00 9a                                      bls #0x48a180
0048a140  00 00 65 e0                                      rsb r0, r5, r0
0048a144  00 00 51 e3                                      cmp r1, #0
0048a148  a0 00 a0 e1                                      lsr r0, r0, #1
0048a14c  20 50 94 e5                                      ldr r5, [r4, #0x20]
0048a150  04 70 a0 13                                      movne r7, #4
0048a154  00 71 87 e0                                      add r7, r7, r0, lsl #2
0048a158  07 50 85 e0                                      add r5, r5, r7
0048a15c  05 00 53 e1                                      cmp r3, r5
0048a160  32 00 00 9a                                      bls #0x48a230
0048a164  04 20 82 e2                                      add r2, r2, #4
0048a168  03 20 52 e0                                      subs r2, r2, r3
0048a16c  22 00 00 0a                                      beq #0x48a1fc
0048a170  03 10 a0 e1                                      mov r1, r3
0048a174  05 00 a0 e1                                      mov r0, r5
0048a178  6e 0f fa eb                                      bl #0x30df38
0048a17c  1e 00 00 ea                                      b #0x48a1fc
0048a180  00 00 50 e3                                      cmp r0, #0
0048a184  00 30 a0 11                                      movne r3, r0
0048a188  01 30 a0 03                                      moveq r3, #1
0048a18c  02 80 80 e2                                      add r8, r0, #2
0048a190  03 80 88 e0                                      add r8, r8, r3
0048a194  08 10 a0 e1                                      mov r1, r8
0048a198  00 20 a0 e3                                      mov r2, #0
0048a19c  20 00 84 e2                                      add r0, r4, #0x20
0048a1a0  a4 ea ff eb                                      bl #0x484c38
0048a1a4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0048a1a8  08 50 65 e0                                      rsb r5, r5, r8
0048a1ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0048a1b0  00 00 57 e3                                      cmp r7, #0
0048a1b4  a5 50 a0 e1                                      lsr r5, r5, #1
0048a1b8  04 70 a0 13                                      movne r7, #4
0048a1bc  04 20 82 e2                                      add r2, r2, #4
0048a1c0  05 51 87 e0                                      add r5, r7, r5, lsl #2
0048a1c4  01 20 52 e0                                      subs r2, r2, r1
0048a1c8  00 a0 a0 e1                                      mov sl, r0
0048a1cc  05 50 80 e0                                      add r5, r0, r5
0048a1d0  1f 00 00 1a                                      bne #0x48a254
0048a1d4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0048a1d8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0048a1dc  00 00 50 e3                                      cmp r0, #0
0048a1e0  03 00 00 0a                                      beq #0x48a1f4
0048a1e4  01 11 a0 e1                                      lsl r1, r1, #2
0048a1e8  80 00 51 e3                                      cmp r1, #0x80
0048a1ec  1f 00 00 8a                                      bhi #0x48a270
0048a1f0  42 fb 09 eb                                      bl #0x708f00
0048a1f4  20 a0 84 e5                                      str sl, [r4, #0x20]
0048a1f8  24 80 84 e5                                      str r8, [r4, #0x24]
0048a1fc  0c 50 84 e5                                      str r5, [r4, #0xc]
0048a200  00 30 95 e5                                      ldr r3, [r5]
0048a204  01 60 46 e2                                      sub r6, r6, #1
0048a208  06 21 85 e0                                      add r2, r5, r6, lsl #2
0048a20c  80 10 83 e2                                      add r1, r3, #0x80
0048a210  1c 20 84 e5                                      str r2, [r4, #0x1c]
0048a214  08 10 84 e5                                      str r1, [r4, #8]
0048a218  04 30 84 e5                                      str r3, [r4, #4]
0048a21c  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
0048a220  80 20 83 e2                                      add r2, r3, #0x80
0048a224  18 20 84 e5                                      str r2, [r4, #0x18]
0048a228  14 30 84 e5                                      str r3, [r4, #0x14]
0048a22c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048a230  04 20 82 e2                                      add r2, r2, #4
0048a234  02 20 63 e0                                      rsb r2, r3, r2
0048a238  00 00 52 e3                                      cmp r2, #0
0048a23c  ee ff ff da                                      ble #0x48a1fc
0048a240  06 01 85 e0                                      add r0, r5, r6, lsl #2
0048a244  00 00 62 e0                                      rsb r0, r2, r0
0048a248  03 10 a0 e1                                      mov r1, r3
0048a24c  39 0f fa eb                                      bl #0x30df38
0048a250  e9 ff ff ea                                      b #0x48a1fc
0048a254  05 00 a0 e1                                      mov r0, r5
0048a258  36 0f fa eb                                      bl #0x30df38
0048a25c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0048a260  24 10 94 e5                                      ldr r1, [r4, #0x24]
0048a264  00 00 50 e3                                      cmp r0, #0
0048a268  e1 ff ff 0a                                      beq #0x48a1f4
0048a26c  dc ff ff ea                                      b #0x48a1e4
0048a270  72 18 fa eb                                      bl #0x310440
0048a274  de ff ff ea                                      b #0x48a1f4

; FUNCTION 0x0048b168, declared_size=116, range_size=116, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE18_M_push_back_aux_vERKS2_
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_push_back_aux_v(rnd::Tile* const&)
; decoder-mode: arm
0048b168  70 40 2d e9                                      push {r4, r5, r6, lr}
0048b16c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
0048b170  20 20 90 e5                                      ldr r2, [r0, #0x20]
0048b174  24 30 90 e5                                      ldr r3, [r0, #0x24]
0048b178  00 40 a0 e1                                      mov r4, r0
0048b17c  05 20 62 e0                                      rsb r2, r2, r5
0048b180  42 31 43 e0                                      sub r3, r3, r2, asr #2
0048b184  01 00 53 e3                                      cmp r3, #1
0048b188  01 60 a0 e1                                      mov r6, r1
0048b18c  0e 00 00 9a                                      bls #0x48b1cc
0048b190  24 00 84 e2                                      add r0, r4, #0x24
0048b194  eb ff ff eb                                      bl #0x48b148
0048b198  04 00 85 e5                                      str r0, [r5, #4]
0048b19c  00 20 96 e5                                      ldr r2, [r6]
0048b1a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0048b1a4  00 20 83 e5                                      str r2, [r3]
0048b1a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0048b1ac  04 20 83 e2                                      add r2, r3, #4
0048b1b0  1c 20 84 e5                                      str r2, [r4, #0x1c]
0048b1b4  04 30 93 e5                                      ldr r3, [r3, #4]
0048b1b8  80 20 83 e2                                      add r2, r3, #0x80
0048b1bc  10 30 84 e5                                      str r3, [r4, #0x10]
0048b1c0  18 20 84 e5                                      str r2, [r4, #0x18]
0048b1c4  14 30 84 e5                                      str r3, [r4, #0x14]
0048b1c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048b1cc  00 10 a0 e3                                      mov r1, #0
0048b1d0  ce fb ff eb                                      bl #0x48a110
0048b1d4  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
0048b1d8  ec ff ff ea                                      b #0x48b190

; FUNCTION 0x0048b1dc, declared_size=104, range_size=104, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EE19_M_push_front_aux_vERKS2_
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::_M_push_front_aux_v(rnd::Tile* const&)
; decoder-mode: arm
0048b1dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048b1e0  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0048b1e4  20 30 90 e5                                      ldr r3, [r0, #0x20]
0048b1e8  00 40 a0 e1                                      mov r4, r0
0048b1ec  01 60 a0 e1                                      mov r6, r1
0048b1f0  05 30 63 e0                                      rsb r3, r3, r5
0048b1f4  23 31 b0 e1                                      lsrs r3, r3, #2
0048b1f8  02 00 00 1a                                      bne #0x48b208
0048b1fc  01 10 a0 e3                                      mov r1, #1
0048b200  c2 fb ff eb                                      bl #0x48a110
0048b204  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0048b208  24 00 84 e2                                      add r0, r4, #0x24
0048b20c  cd ff ff eb                                      bl #0x48b148
0048b210  04 00 05 e5                                      str r0, [r5, #-4]
0048b214  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0048b218  04 20 43 e2                                      sub r2, r3, #4
0048b21c  0c 20 84 e5                                      str r2, [r4, #0xc]
0048b220  04 30 13 e5                                      ldr r3, [r3, #-4]
0048b224  80 20 83 e2                                      add r2, r3, #0x80
0048b228  7c 10 83 e2                                      add r1, r3, #0x7c
0048b22c  00 10 84 e5                                      str r1, [r4]
0048b230  08 20 84 e5                                      str r2, [r4, #8]
0048b234  04 30 84 e5                                      str r3, [r4, #4]
0048b238  00 20 96 e5                                      ldr r2, [r6]
0048b23c  7c 20 83 e5                                      str r2, [r3, #0x7c]
0048b240  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048b244, declared_size=96, range_size=96, mode=arm
; class-group: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >
; alias: _ZNSt5dequeIPN3rnd4TileESaIS2_EEC1Ej
; demangled: std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >::deque(unsigned int)
; decoder-mode: arm
0048b244  30 40 2d e9                                      push {r4, r5, lr}
0048b248  00 50 a0 e3                                      mov r5, #0
0048b24c  0c d0 4d e2                                      sub sp, sp, #0xc
0048b250  00 50 80 e5                                      str r5, [r0]
0048b254  04 50 80 e5                                      str r5, [r0, #4]
0048b258  08 50 80 e5                                      str r5, [r0, #8]
0048b25c  0c 50 80 e5                                      str r5, [r0, #0xc]
0048b260  10 50 80 e5                                      str r5, [r0, #0x10]
0048b264  14 50 80 e5                                      str r5, [r0, #0x14]
0048b268  18 50 80 e5                                      str r5, [r0, #0x18]
0048b26c  1c 50 80 e5                                      str r5, [r0, #0x1c]
0048b270  20 50 80 e5                                      str r5, [r0, #0x20]
0048b274  24 50 80 e5                                      str r5, [r0, #0x24]
0048b278  00 40 a0 e1                                      mov r4, r0
0048b27c  17 ed ff eb                                      bl #0x4866e0
0048b280  08 10 8d e2                                      add r1, sp, #8
0048b284  08 50 21 e5                                      str r5, [r1, #-8]!
0048b288  04 00 a0 e1                                      mov r0, r4
0048b28c  0d 10 a0 e1                                      mov r1, sp
0048b290  04 20 8d e2                                      add r2, sp, #4
0048b294  e4 f9 ff eb                                      bl #0x489a2c
0048b298  04 00 a0 e1                                      mov r0, r4
0048b29c  0c d0 8d e2                                      add sp, sp, #0xc
0048b2a0  30 80 bd e8                                      pop {r4, r5, pc}
