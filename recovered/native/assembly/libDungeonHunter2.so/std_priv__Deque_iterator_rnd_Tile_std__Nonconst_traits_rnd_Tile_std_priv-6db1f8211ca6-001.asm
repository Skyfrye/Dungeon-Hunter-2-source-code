; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483f00, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv
; alias: _ZNSt4priv15__copy_backwardINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv::__copy_backward<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, int>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00483f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00483f04  10 d0 4d e2                                      sub sp, sp, #0x10
00483f08  02 50 a0 e1                                      mov r5, r2
00483f0c  0d c0 a0 e1                                      mov ip, sp
00483f10  00 60 a0 e1                                      mov r6, r0
00483f14  03 40 a0 e1                                      mov r4, r3
00483f18  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00483f1c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00483f20  0d 10 a0 e1                                      mov r1, sp
00483f24  05 00 a0 e1                                      mov r0, r5
00483f28  80 ff ff eb                                      bl #0x483d30
00483f2c  00 00 50 e3                                      cmp r0, #0
00483f30  0c 00 00 ca                                      bgt #0x483f68
00483f34  2b 00 00 ea                                      b #0x483fe8
00483f38  04 20 43 e2                                      sub r2, r3, #4
00483f3c  00 20 84 e5                                      str r2, [r4]
00483f40  00 30 95 e5                                      ldr r3, [r5]
00483f44  04 10 95 e5                                      ldr r1, [r5, #4]
00483f48  01 00 53 e1                                      cmp r3, r1
00483f4c  17 00 00 0a                                      beq #0x483fb0
00483f50  04 10 43 e2                                      sub r1, r3, #4
00483f54  00 10 85 e5                                      str r1, [r5]
00483f58  04 30 13 e5                                      ldr r3, [r3, #-4]
00483f5c  01 00 50 e2                                      subs r0, r0, #1
00483f60  00 30 82 e5                                      str r3, [r2]
00483f64  1f 00 00 0a                                      beq #0x483fe8
00483f68  00 30 94 e5                                      ldr r3, [r4]
00483f6c  04 20 94 e5                                      ldr r2, [r4, #4]
00483f70  02 00 53 e1                                      cmp r3, r2
00483f74  ef ff ff 1a                                      bne #0x483f38
00483f78  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00483f7c  04 20 43 e2                                      sub r2, r3, #4
00483f80  0c 20 84 e5                                      str r2, [r4, #0xc]
00483f84  04 20 13 e5                                      ldr r2, [r3, #-4]
00483f88  80 30 82 e2                                      add r3, r2, #0x80
00483f8c  04 20 84 e5                                      str r2, [r4, #4]
00483f90  04 20 43 e2                                      sub r2, r3, #4
00483f94  00 30 84 e5                                      str r3, [r4]
00483f98  08 30 84 e5                                      str r3, [r4, #8]
00483f9c  00 20 84 e5                                      str r2, [r4]
00483fa0  00 30 95 e5                                      ldr r3, [r5]
00483fa4  04 10 95 e5                                      ldr r1, [r5, #4]
00483fa8  01 00 53 e1                                      cmp r3, r1
00483fac  e7 ff ff 1a                                      bne #0x483f50
00483fb0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00483fb4  01 00 50 e2                                      subs r0, r0, #1
00483fb8  04 10 43 e2                                      sub r1, r3, #4
00483fbc  0c 10 85 e5                                      str r1, [r5, #0xc]
00483fc0  04 10 13 e5                                      ldr r1, [r3, #-4]
00483fc4  80 30 81 e2                                      add r3, r1, #0x80
00483fc8  04 10 85 e5                                      str r1, [r5, #4]
00483fcc  04 10 43 e2                                      sub r1, r3, #4
00483fd0  00 30 85 e5                                      str r3, [r5]
00483fd4  08 30 85 e5                                      str r3, [r5, #8]
00483fd8  00 10 85 e5                                      str r1, [r5]
00483fdc  04 30 13 e5                                      ldr r3, [r3, #-4]
00483fe0  00 30 82 e5                                      str r3, [r2]
00483fe4  df ff ff 1a                                      bne #0x483f68
00483fe8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00483fec  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00483ff0  06 00 a0 e1                                      mov r0, r6
00483ff4  10 d0 8d e2                                      add sp, sp, #0x10
00483ff8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00483ffc, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv
; alias: _ZNSt4priv6__copyINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv::__copy<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, int>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00483ffc  70 40 2d e9                                      push {r4, r5, r6, lr}
00484000  10 d0 4d e2                                      sub sp, sp, #0x10
00484004  02 e0 a0 e1                                      mov lr, r2
00484008  0d c0 a0 e1                                      mov ip, sp
0048400c  01 50 a0 e1                                      mov r5, r1
00484010  00 60 a0 e1                                      mov r6, r0
00484014  03 40 a0 e1                                      mov r4, r3
00484018  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
0048401c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00484020  0e 00 a0 e1                                      mov r0, lr
00484024  0d 10 a0 e1                                      mov r1, sp
00484028  40 ff ff eb                                      bl #0x483d30
0048402c  00 00 50 e3                                      cmp r0, #0
00484030  08 00 00 ca                                      bgt #0x484058
00484034  29 00 00 ea                                      b #0x4840e0
00484038  00 30 94 e5                                      ldr r3, [r4]
0048403c  08 20 94 e5                                      ldr r2, [r4, #8]
00484040  04 30 83 e2                                      add r3, r3, #4
00484044  02 00 53 e1                                      cmp r3, r2
00484048  00 30 84 e5                                      str r3, [r4]
0048404c  19 00 00 0a                                      beq #0x4840b8
00484050  01 00 50 e2                                      subs r0, r0, #1
00484054  21 00 00 0a                                      beq #0x4840e0
00484058  00 20 95 e5                                      ldr r2, [r5]
0048405c  00 30 94 e5                                      ldr r3, [r4]
00484060  00 20 92 e5                                      ldr r2, [r2]
00484064  00 20 83 e5                                      str r2, [r3]
00484068  00 30 95 e5                                      ldr r3, [r5]
0048406c  08 20 95 e5                                      ldr r2, [r5, #8]
00484070  04 30 83 e2                                      add r3, r3, #4
00484074  02 00 53 e1                                      cmp r3, r2
00484078  00 30 85 e5                                      str r3, [r5]
0048407c  ed ff ff 1a                                      bne #0x484038
00484080  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00484084  04 20 83 e2                                      add r2, r3, #4
00484088  0c 20 85 e5                                      str r2, [r5, #0xc]
0048408c  04 30 93 e5                                      ldr r3, [r3, #4]
00484090  80 20 83 e2                                      add r2, r3, #0x80
00484094  08 20 85 e5                                      str r2, [r5, #8]
00484098  00 30 85 e5                                      str r3, [r5]
0048409c  04 30 85 e5                                      str r3, [r5, #4]
004840a0  00 30 94 e5                                      ldr r3, [r4]
004840a4  08 20 94 e5                                      ldr r2, [r4, #8]
004840a8  04 30 83 e2                                      add r3, r3, #4
004840ac  02 00 53 e1                                      cmp r3, r2
004840b0  00 30 84 e5                                      str r3, [r4]
004840b4  e5 ff ff 1a                                      bne #0x484050
004840b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004840bc  01 00 50 e2                                      subs r0, r0, #1
004840c0  04 20 83 e2                                      add r2, r3, #4
004840c4  0c 20 84 e5                                      str r2, [r4, #0xc]
004840c8  04 30 93 e5                                      ldr r3, [r3, #4]
004840cc  80 20 83 e2                                      add r2, r3, #0x80
004840d0  08 20 84 e5                                      str r2, [r4, #8]
004840d4  00 30 84 e5                                      str r3, [r4]
004840d8  04 30 84 e5                                      str r3, [r4, #4]
004840dc  dd ff ff 1a                                      bne #0x484058
004840e0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004840e4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
004840e8  06 00 a0 e1                                      mov r0, r6
004840ec  10 d0 8d e2                                      add sp, sp, #0x10
004840f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004840f4, declared_size=244, range_size=244, mode=arm
; class-group: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, int>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
004840f4  30 40 2d e9                                      push {r4, r5, lr}
004840f8  00 40 a0 e1                                      mov r4, r0
004840fc  02 e0 a0 e1                                      mov lr, r2
00484100  01 50 a0 e1                                      mov r5, r1
00484104  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00484108  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048410c  14 d0 4d e2                                      sub sp, sp, #0x14
00484110  0d c0 a0 e1                                      mov ip, sp
00484114  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00484118  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0048411c  0e 00 a0 e1                                      mov r0, lr
00484120  0d 10 a0 e1                                      mov r1, sp
00484124  01 ff ff eb                                      bl #0x483d30
00484128  00 00 50 e3                                      cmp r0, #0
0048412c  08 00 00 ca                                      bgt #0x484154
00484130  29 00 00 ea                                      b #0x4841dc
00484134  00 30 94 e5                                      ldr r3, [r4]
00484138  08 20 94 e5                                      ldr r2, [r4, #8]
0048413c  04 30 83 e2                                      add r3, r3, #4
00484140  02 00 53 e1                                      cmp r3, r2
00484144  00 30 84 e5                                      str r3, [r4]
00484148  19 00 00 0a                                      beq #0x4841b4
0048414c  01 00 50 e2                                      subs r0, r0, #1
00484150  21 00 00 0a                                      beq #0x4841dc
00484154  00 20 95 e5                                      ldr r2, [r5]
00484158  00 30 94 e5                                      ldr r3, [r4]
0048415c  00 20 92 e5                                      ldr r2, [r2]
00484160  00 20 83 e5                                      str r2, [r3]
00484164  00 30 95 e5                                      ldr r3, [r5]
00484168  08 20 95 e5                                      ldr r2, [r5, #8]
0048416c  04 30 83 e2                                      add r3, r3, #4
00484170  02 00 53 e1                                      cmp r3, r2
00484174  00 30 85 e5                                      str r3, [r5]
00484178  ed ff ff 1a                                      bne #0x484134
0048417c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00484180  04 20 83 e2                                      add r2, r3, #4
00484184  0c 20 85 e5                                      str r2, [r5, #0xc]
00484188  04 30 93 e5                                      ldr r3, [r3, #4]
0048418c  80 20 83 e2                                      add r2, r3, #0x80
00484190  08 20 85 e5                                      str r2, [r5, #8]
00484194  00 30 85 e5                                      str r3, [r5]
00484198  04 30 85 e5                                      str r3, [r5, #4]
0048419c  00 30 94 e5                                      ldr r3, [r4]
004841a0  08 20 94 e5                                      ldr r2, [r4, #8]
004841a4  04 30 83 e2                                      add r3, r3, #4
004841a8  02 00 53 e1                                      cmp r3, r2
004841ac  00 30 84 e5                                      str r3, [r4]
004841b0  e5 ff ff 1a                                      bne #0x48414c
004841b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004841b8  01 00 50 e2                                      subs r0, r0, #1
004841bc  04 20 83 e2                                      add r2, r3, #4
004841c0  0c 20 84 e5                                      str r2, [r4, #0xc]
004841c4  04 30 93 e5                                      ldr r3, [r3, #4]
004841c8  80 20 83 e2                                      add r2, r3, #0x80
004841cc  08 20 84 e5                                      str r2, [r4, #8]
004841d0  00 30 84 e5                                      str r3, [r4]
004841d4  04 30 84 e5                                      str r3, [r4, #4]
004841d8  dd ff ff 1a                                      bne #0x484154
004841dc  04 00 a0 e1                                      mov r0, r4
004841e0  14 d0 8d e2                                      add sp, sp, #0x14
004841e4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0048427c, declared_size=240, range_size=240, mode=arm
; class-group: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv
; alias: _ZNSt4priv7__ucopyINS_15_Deque_iteratorIPN3rnd4TileESt13_Const_traitsIS4_EEENS1_IS4_St16_Nonconst_traitsIS4_EEEiEET0_T_SC_SB_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv::__ucopy<std::priv::_Deque_iterator<rnd::Tile*, std::_Const_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, int>(std::priv::_Deque_iterator<rnd::Tile*, std::_Const_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Const_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0048427c  10 d0 4d e2                                      sub sp, sp, #0x10
00484280  10 40 2d e9                                      push {r4, lr}
00484284  0c c0 8d e2                                      add ip, sp, #0xc
00484288  0e 00 8c e8                                      stm ip, {r1, r2, r3}
0048428c  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00484290  00 40 a0 e1                                      mov r4, r0
00484294  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00484298  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0048429c  0c 10 a0 e1                                      mov r1, ip
004842a0  1c 00 8d e2                                      add r0, sp, #0x1c
004842a4  a1 fe ff eb                                      bl #0x483d30
004842a8  00 00 50 e3                                      cmp r0, #0
004842ac  08 00 00 ca                                      bgt #0x4842d4
004842b0  29 00 00 ea                                      b #0x48435c
004842b4  00 30 94 e5                                      ldr r3, [r4]
004842b8  08 20 94 e5                                      ldr r2, [r4, #8]
004842bc  04 30 83 e2                                      add r3, r3, #4
004842c0  02 00 53 e1                                      cmp r3, r2
004842c4  00 30 84 e5                                      str r3, [r4]
004842c8  19 00 00 0a                                      beq #0x484334
004842cc  01 00 50 e2                                      subs r0, r0, #1
004842d0  21 00 00 0a                                      beq #0x48435c
004842d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004842d8  00 30 94 e5                                      ldr r3, [r4]
004842dc  00 20 92 e5                                      ldr r2, [r2]
004842e0  00 20 83 e5                                      str r2, [r3]
004842e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004842e8  14 20 9d e5                                      ldr r2, [sp, #0x14]
004842ec  04 30 83 e2                                      add r3, r3, #4
004842f0  02 00 53 e1                                      cmp r3, r2
004842f4  0c 30 8d e5                                      str r3, [sp, #0xc]
004842f8  ed ff ff 1a                                      bne #0x4842b4
004842fc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00484300  04 20 83 e2                                      add r2, r3, #4
00484304  18 20 8d e5                                      str r2, [sp, #0x18]
00484308  04 30 93 e5                                      ldr r3, [r3, #4]
0048430c  80 20 83 e2                                      add r2, r3, #0x80
00484310  14 20 8d e5                                      str r2, [sp, #0x14]
00484314  0c 30 8d e5                                      str r3, [sp, #0xc]
00484318  10 30 8d e5                                      str r3, [sp, #0x10]
0048431c  00 30 94 e5                                      ldr r3, [r4]
00484320  08 20 94 e5                                      ldr r2, [r4, #8]
00484324  04 30 83 e2                                      add r3, r3, #4
00484328  02 00 53 e1                                      cmp r3, r2
0048432c  00 30 84 e5                                      str r3, [r4]
00484330  e5 ff ff 1a                                      bne #0x4842cc
00484334  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00484338  01 00 50 e2                                      subs r0, r0, #1
0048433c  04 20 83 e2                                      add r2, r3, #4
00484340  0c 20 84 e5                                      str r2, [r4, #0xc]
00484344  04 30 93 e5                                      ldr r3, [r3, #4]
00484348  80 20 83 e2                                      add r2, r3, #0x80
0048434c  08 20 84 e5                                      str r2, [r4, #8]
00484350  00 30 84 e5                                      str r3, [r4]
00484354  04 30 84 e5                                      str r3, [r4, #4]
00484358  dd ff ff 1a                                      bne #0x4842d4
0048435c  04 00 a0 e1                                      mov r0, r4
00484360  10 40 bd e8                                      pop {r4, lr}
00484364  10 d0 8d e2                                      add sp, sp, #0x10
00484368  1e ff 2f e1                                      bx lr

; FUNCTION 0x00484a00, declared_size=300, range_size=300, mode=arm
; class-group: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv
; alias: _ZNSt4priv25__uninitialized_fill_copyINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES4_S7_EET_S8_S8_RKT0_T1_SC_
; demangled: std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > std::priv::__uninitialized_fill_copy<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile*, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> > >(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile* const&, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >)
; decoder-mode: arm
00484a00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00484a04  02 40 a0 e1                                      mov r4, r2
00484a08  c4 00 91 e9                                      ldmib r1, {r2, r6, r7}
00484a0c  00 50 91 e5                                      ldr r5, [r1]
00484a10  0c a0 94 e5                                      ldr sl, [r4, #0xc]
00484a14  08 80 94 e5                                      ldr r8, [r4, #8]
00484a18  00 50 94 e8                                      ldm r4, {ip, lr}
00484a1c  74 d0 4d e2                                      sub sp, sp, #0x74
00484a20  00 90 a0 e1                                      mov sb, r0
00484a24  1c 10 8d e2                                      add r1, sp, #0x1c
00484a28  2c 00 8d e2                                      add r0, sp, #0x2c
00484a2c  38 a0 8d e5                                      str sl, [sp, #0x38]
00484a30  34 80 8d e5                                      str r8, [sp, #0x34]
00484a34  30 e0 8d e5                                      str lr, [sp, #0x30]
00484a38  2c c0 8d e5                                      str ip, [sp, #0x2c]
00484a3c  20 20 8d e5                                      str r2, [sp, #0x20]
00484a40  03 b0 a0 e1                                      mov fp, r3
00484a44  1c 50 8d e5                                      str r5, [sp, #0x1c]
00484a48  24 60 8d e5                                      str r6, [sp, #0x24]
00484a4c  28 70 8d e5                                      str r7, [sp, #0x28]
00484a50  98 a0 9d e5                                      ldr sl, [sp, #0x98]
00484a54  9c 80 9d e5                                      ldr r8, [sp, #0x9c]
00484a58  b4 fc ff eb                                      bl #0x483d30
00484a5c  00 00 50 e3                                      cmp r0, #0
00484a60  07 00 00 da                                      ble #0x484a84
00484a64  00 30 9b e5                                      ldr r3, [fp]
00484a68  01 00 40 e2                                      sub r0, r0, #1
00484a6c  04 30 85 e4                                      str r3, [r5], #4
00484a70  06 00 55 e1                                      cmp r5, r6
00484a74  04 50 b7 05                                      ldreq r5, [r7, #4]!
00484a78  80 60 85 02                                      addeq r6, r5, #0x80
00484a7c  00 00 50 e3                                      cmp r0, #0
00484a80  f7 ff ff 1a                                      bne #0x484a64
00484a84  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00484a88  0c 70 9a e5                                      ldr r7, [sl, #0xc]
00484a8c  09 00 a0 e1                                      mov r0, sb
00484a90  10 30 8d e5                                      str r3, [sp, #0x10]
00484a94  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00484a98  5c 10 8d e2                                      add r1, sp, #0x5c
00484a9c  4c 20 8d e2                                      add r2, sp, #0x4c
00484aa0  0c 60 8d e5                                      str r6, [sp, #0xc]
00484aa4  00 c0 9a e5                                      ldr ip, [sl]
00484aa8  3c 30 8d e2                                      add r3, sp, #0x3c
00484aac  14 c0 8d e5                                      str ip, [sp, #0x14]
00484ab0  08 60 9a e5                                      ldr r6, [sl, #8]
00484ab4  00 c0 98 e5                                      ldr ip, [r8]
00484ab8  04 b0 9a e5                                      ldr fp, [sl, #4]
00484abc  04 e0 98 e5                                      ldr lr, [r8, #4]
00484ac0  08 50 98 e5                                      ldr r5, [r8, #8]
00484ac4  00 a0 94 e5                                      ldr sl, [r4]
00484ac8  04 80 94 e5                                      ldr r8, [r4, #4]
00484acc  08 40 94 e5                                      ldr r4, [r4, #8]
00484ad0  64 60 8d e5                                      str r6, [sp, #0x64]
00484ad4  14 60 9d e5                                      ldr r6, [sp, #0x14]
00484ad8  4c c0 8d e5                                      str ip, [sp, #0x4c]
00484adc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00484ae0  5c 60 8d e5                                      str r6, [sp, #0x5c]
00484ae4  10 60 9d e5                                      ldr r6, [sp, #0x10]
00484ae8  48 c0 8d e5                                      str ip, [sp, #0x48]
00484aec  6c c0 8d e2                                      add ip, sp, #0x6c
00484af0  00 c0 8d e5                                      str ip, [sp]
00484af4  00 c0 a0 e3                                      mov ip, #0
00484af8  68 70 8d e5                                      str r7, [sp, #0x68]
00484afc  60 b0 8d e5                                      str fp, [sp, #0x60]
00484b00  58 60 8d e5                                      str r6, [sp, #0x58]
00484b04  54 50 8d e5                                      str r5, [sp, #0x54]
00484b08  50 e0 8d e5                                      str lr, [sp, #0x50]
00484b0c  44 40 8d e5                                      str r4, [sp, #0x44]
00484b10  40 80 8d e5                                      str r8, [sp, #0x40]
00484b14  3c a0 8d e5                                      str sl, [sp, #0x3c]
00484b18  04 c0 8d e5                                      str ip, [sp, #4]
00484b1c  74 fd ff eb                                      bl #0x4840f4
00484b20  09 00 a0 e1                                      mov r0, sb
00484b24  74 d0 8d e2                                      add sp, sp, #0x74
00484b28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
