; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031b65c, declared_size=640, range_size=640, mode=arm
; class-group: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv
; alias: _ZNSt4priv6__findINS_15_Deque_iteratorIPSt6vectorIN3sfc6script3lua5ValueESaIS6_EESt16_Nonconst_traitsIS9_EEES9_EET_SD_SD_RKT0_RKSt26random_access_iterator_tag
; demangled: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv::__find<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
0031b65c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0031b660  24 d0 4d e2                                      sub sp, sp, #0x24
0031b664  10 c0 8d e2                                      add ip, sp, #0x10
0031b668  02 70 a0 e1                                      mov r7, r2
0031b66c  01 40 a0 e1                                      mov r4, r1
0031b670  00 60 a0 e1                                      mov r6, r0
0031b674  03 50 a0 e1                                      mov r5, r3
0031b678  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
0031b67c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031b680  0c 10 a0 e1                                      mov r1, ip
0031b684  07 00 a0 e1                                      mov r0, r7
0031b688  e2 ff ff eb                                      bl #0x31b618
0031b68c  40 01 a0 e1                                      asr r0, r0, #2
0031b690  00 00 50 e3                                      cmp r0, #0
0031b694  1d 00 00 ca                                      bgt #0x31b710
0031b698  53 00 00 ea                                      b #0x31b7ec
0031b69c  00 10 93 e5                                      ldr r1, [r3]
0031b6a0  00 20 95 e5                                      ldr r2, [r5]
0031b6a4  02 00 51 e1                                      cmp r1, r2
0031b6a8  2e 00 00 0a                                      beq #0x31b768
0031b6ac  08 20 94 e5                                      ldr r2, [r4, #8]
0031b6b0  04 30 83 e2                                      add r3, r3, #4
0031b6b4  00 30 84 e5                                      str r3, [r4]
0031b6b8  02 00 53 e1                                      cmp r3, r2
0031b6bc  2e 00 00 0a                                      beq #0x31b77c
0031b6c0  00 10 93 e5                                      ldr r1, [r3]
0031b6c4  00 20 95 e5                                      ldr r2, [r5]
0031b6c8  02 00 51 e1                                      cmp r1, r2
0031b6cc  25 00 00 0a                                      beq #0x31b768
0031b6d0  08 20 94 e5                                      ldr r2, [r4, #8]
0031b6d4  04 30 83 e2                                      add r3, r3, #4
0031b6d8  00 30 84 e5                                      str r3, [r4]
0031b6dc  02 00 53 e1                                      cmp r3, r2
0031b6e0  2e 00 00 0a                                      beq #0x31b7a0
0031b6e4  00 10 93 e5                                      ldr r1, [r3]
0031b6e8  00 20 95 e5                                      ldr r2, [r5]
0031b6ec  02 00 51 e1                                      cmp r1, r2
0031b6f0  1c 00 00 0a                                      beq #0x31b768
0031b6f4  08 20 94 e5                                      ldr r2, [r4, #8]
0031b6f8  04 30 83 e2                                      add r3, r3, #4
0031b6fc  00 30 84 e5                                      str r3, [r4]
0031b700  02 00 53 e1                                      cmp r3, r2
0031b704  2e 00 00 0a                                      beq #0x31b7c4
0031b708  01 00 50 e2                                      subs r0, r0, #1
0031b70c  36 00 00 0a                                      beq #0x31b7ec
0031b710  00 30 94 e5                                      ldr r3, [r4]
0031b714  00 20 95 e5                                      ldr r2, [r5]
0031b718  00 10 93 e5                                      ldr r1, [r3]
0031b71c  02 00 51 e1                                      cmp r1, r2
0031b720  10 00 00 0a                                      beq #0x31b768
0031b724  08 20 94 e5                                      ldr r2, [r4, #8]
0031b728  04 30 83 e2                                      add r3, r3, #4
0031b72c  00 30 84 e5                                      str r3, [r4]
0031b730  02 00 53 e1                                      cmp r3, r2
0031b734  d8 ff ff 1a                                      bne #0x31b69c
0031b738  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b73c  04 20 83 e2                                      add r2, r3, #4
0031b740  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b744  04 30 93 e5                                      ldr r3, [r3, #4]
0031b748  80 20 83 e2                                      add r2, r3, #0x80
0031b74c  08 20 84 e5                                      str r2, [r4, #8]
0031b750  04 30 84 e5                                      str r3, [r4, #4]
0031b754  00 30 84 e5                                      str r3, [r4]
0031b758  00 10 93 e5                                      ldr r1, [r3]
0031b75c  00 20 95 e5                                      ldr r2, [r5]
0031b760  02 00 51 e1                                      cmp r1, r2
0031b764  d0 ff ff 1a                                      bne #0x31b6ac
0031b768  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031b76c  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0031b770  06 00 a0 e1                                      mov r0, r6
0031b774  24 d0 8d e2                                      add sp, sp, #0x24
0031b778  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0031b77c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b780  04 20 83 e2                                      add r2, r3, #4
0031b784  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b788  04 30 93 e5                                      ldr r3, [r3, #4]
0031b78c  80 20 83 e2                                      add r2, r3, #0x80
0031b790  08 20 84 e5                                      str r2, [r4, #8]
0031b794  04 30 84 e5                                      str r3, [r4, #4]
0031b798  00 30 84 e5                                      str r3, [r4]
0031b79c  c7 ff ff ea                                      b #0x31b6c0
0031b7a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b7a4  04 20 83 e2                                      add r2, r3, #4
0031b7a8  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b7ac  04 30 93 e5                                      ldr r3, [r3, #4]
0031b7b0  80 20 83 e2                                      add r2, r3, #0x80
0031b7b4  08 20 84 e5                                      str r2, [r4, #8]
0031b7b8  04 30 84 e5                                      str r3, [r4, #4]
0031b7bc  00 30 84 e5                                      str r3, [r4]
0031b7c0  c7 ff ff ea                                      b #0x31b6e4
0031b7c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b7c8  01 00 50 e2                                      subs r0, r0, #1
0031b7cc  04 20 83 e2                                      add r2, r3, #4
0031b7d0  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b7d4  04 30 93 e5                                      ldr r3, [r3, #4]
0031b7d8  80 20 83 e2                                      add r2, r3, #0x80
0031b7dc  08 20 84 e5                                      str r2, [r4, #8]
0031b7e0  00 30 84 e5                                      str r3, [r4]
0031b7e4  04 30 84 e5                                      str r3, [r4, #4]
0031b7e8  c8 ff ff 1a                                      bne #0x31b710
0031b7ec  0d c0 a0 e1                                      mov ip, sp
0031b7f0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031b7f4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031b7f8  0d 10 a0 e1                                      mov r1, sp
0031b7fc  07 00 a0 e1                                      mov r0, r7
0031b800  84 ff ff eb                                      bl #0x31b618
0031b804  02 00 50 e3                                      cmp r0, #2
0031b808  06 00 00 0a                                      beq #0x31b828
0031b80c  03 00 50 e3                                      cmp r0, #3
0031b810  15 00 00 0a                                      beq #0x31b86c
0031b814  01 00 50 e3                                      cmp r0, #1
0031b818  11 00 00 0a                                      beq #0x31b864
0031b81c  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0031b820  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0031b824  d1 ff ff ea                                      b #0x31b770
0031b828  00 30 94 e5                                      ldr r3, [r4]
0031b82c  00 10 93 e5                                      ldr r1, [r3]
0031b830  00 20 95 e5                                      ldr r2, [r5]
0031b834  02 00 51 e1                                      cmp r1, r2
0031b838  ca ff ff 0a                                      beq #0x31b768
0031b83c  08 20 94 e5                                      ldr r2, [r4, #8]
0031b840  04 30 83 e2                                      add r3, r3, #4
0031b844  00 30 84 e5                                      str r3, [r4]
0031b848  02 00 53 e1                                      cmp r3, r2
0031b84c  19 00 00 0a                                      beq #0x31b8b8
0031b850  00 20 93 e5                                      ldr r2, [r3]
0031b854  00 30 95 e5                                      ldr r3, [r5]
0031b858  03 00 52 e1                                      cmp r2, r3
0031b85c  ee ff ff 1a                                      bne #0x31b81c
0031b860  c0 ff ff ea                                      b #0x31b768
0031b864  00 30 94 e5                                      ldr r3, [r4]
0031b868  f8 ff ff ea                                      b #0x31b850
0031b86c  00 30 94 e5                                      ldr r3, [r4]
0031b870  00 20 95 e5                                      ldr r2, [r5]
0031b874  00 10 93 e5                                      ldr r1, [r3]
0031b878  02 00 51 e1                                      cmp r1, r2
0031b87c  b9 ff ff 0a                                      beq #0x31b768
0031b880  08 20 94 e5                                      ldr r2, [r4, #8]
0031b884  04 30 83 e2                                      add r3, r3, #4
0031b888  00 30 84 e5                                      str r3, [r4]
0031b88c  02 00 53 e1                                      cmp r3, r2
0031b890  e5 ff ff 1a                                      bne #0x31b82c
0031b894  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b898  04 20 83 e2                                      add r2, r3, #4
0031b89c  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b8a0  04 30 93 e5                                      ldr r3, [r3, #4]
0031b8a4  80 20 83 e2                                      add r2, r3, #0x80
0031b8a8  08 20 84 e5                                      str r2, [r4, #8]
0031b8ac  04 30 84 e5                                      str r3, [r4, #4]
0031b8b0  00 30 84 e5                                      str r3, [r4]
0031b8b4  dc ff ff ea                                      b #0x31b82c
0031b8b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b8bc  04 20 83 e2                                      add r2, r3, #4
0031b8c0  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b8c4  04 30 93 e5                                      ldr r3, [r3, #4]
0031b8c8  80 20 83 e2                                      add r2, r3, #0x80
0031b8cc  08 20 84 e5                                      str r2, [r4, #8]
0031b8d0  04 30 84 e5                                      str r3, [r4, #4]
0031b8d4  00 30 84 e5                                      str r3, [r4]
0031b8d8  dc ff ff ea                                      b #0x31b850

; FUNCTION 0x0031b8dc, declared_size=252, range_size=252, mode=arm
; class-group: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv
; alias: _ZNSt4priv15__copy_backwardINS_15_Deque_iteratorIPSt6vectorIN3sfc6script3lua5ValueESaIS6_EESt16_Nonconst_traitsIS9_EEESC_iEET0_T_SE_SD_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv::__copy_backward<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, int>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0031b8dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0031b8e0  10 d0 4d e2                                      sub sp, sp, #0x10
0031b8e4  02 50 a0 e1                                      mov r5, r2
0031b8e8  0d c0 a0 e1                                      mov ip, sp
0031b8ec  00 60 a0 e1                                      mov r6, r0
0031b8f0  03 40 a0 e1                                      mov r4, r3
0031b8f4  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
0031b8f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031b8fc  0d 10 a0 e1                                      mov r1, sp
0031b900  05 00 a0 e1                                      mov r0, r5
0031b904  43 ff ff eb                                      bl #0x31b618
0031b908  00 00 50 e3                                      cmp r0, #0
0031b90c  0c 00 00 ca                                      bgt #0x31b944
0031b910  2b 00 00 ea                                      b #0x31b9c4
0031b914  04 20 43 e2                                      sub r2, r3, #4
0031b918  00 20 84 e5                                      str r2, [r4]
0031b91c  00 30 95 e5                                      ldr r3, [r5]
0031b920  04 10 95 e5                                      ldr r1, [r5, #4]
0031b924  01 00 53 e1                                      cmp r3, r1
0031b928  17 00 00 0a                                      beq #0x31b98c
0031b92c  04 10 43 e2                                      sub r1, r3, #4
0031b930  00 10 85 e5                                      str r1, [r5]
0031b934  04 30 13 e5                                      ldr r3, [r3, #-4]
0031b938  01 00 50 e2                                      subs r0, r0, #1
0031b93c  00 30 82 e5                                      str r3, [r2]
0031b940  1f 00 00 0a                                      beq #0x31b9c4
0031b944  00 30 94 e5                                      ldr r3, [r4]
0031b948  04 20 94 e5                                      ldr r2, [r4, #4]
0031b94c  02 00 53 e1                                      cmp r3, r2
0031b950  ef ff ff 1a                                      bne #0x31b914
0031b954  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031b958  04 20 43 e2                                      sub r2, r3, #4
0031b95c  0c 20 84 e5                                      str r2, [r4, #0xc]
0031b960  04 20 13 e5                                      ldr r2, [r3, #-4]
0031b964  80 30 82 e2                                      add r3, r2, #0x80
0031b968  04 20 84 e5                                      str r2, [r4, #4]
0031b96c  04 20 43 e2                                      sub r2, r3, #4
0031b970  00 30 84 e5                                      str r3, [r4]
0031b974  08 30 84 e5                                      str r3, [r4, #8]
0031b978  00 20 84 e5                                      str r2, [r4]
0031b97c  00 30 95 e5                                      ldr r3, [r5]
0031b980  04 10 95 e5                                      ldr r1, [r5, #4]
0031b984  01 00 53 e1                                      cmp r3, r1
0031b988  e7 ff ff 1a                                      bne #0x31b92c
0031b98c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0031b990  01 00 50 e2                                      subs r0, r0, #1
0031b994  04 10 43 e2                                      sub r1, r3, #4
0031b998  0c 10 85 e5                                      str r1, [r5, #0xc]
0031b99c  04 10 13 e5                                      ldr r1, [r3, #-4]
0031b9a0  80 30 81 e2                                      add r3, r1, #0x80
0031b9a4  04 10 85 e5                                      str r1, [r5, #4]
0031b9a8  04 10 43 e2                                      sub r1, r3, #4
0031b9ac  00 30 85 e5                                      str r3, [r5]
0031b9b0  08 30 85 e5                                      str r3, [r5, #8]
0031b9b4  00 10 85 e5                                      str r1, [r5]
0031b9b8  04 30 13 e5                                      ldr r3, [r3, #-4]
0031b9bc  00 30 82 e5                                      str r3, [r2]
0031b9c0  df ff ff 1a                                      bne #0x31b944
0031b9c4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031b9c8  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0031b9cc  06 00 a0 e1                                      mov r0, r6
0031b9d0  10 d0 8d e2                                      add sp, sp, #0x10
0031b9d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031b9d8, declared_size=248, range_size=248, mode=arm
; class-group: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv
; alias: _ZNSt4priv6__copyINS_15_Deque_iteratorIPSt6vectorIN3sfc6script3lua5ValueESaIS6_EESt16_Nonconst_traitsIS9_EEESC_iEET0_T_SE_SD_RKSt26random_access_iterator_tagPT1_
; demangled: std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> > std::priv::__copy<std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, int>(std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::priv::_Deque_iterator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*, std::_Nonconst_traits<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >*> >, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0031b9d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031b9dc  10 d0 4d e2                                      sub sp, sp, #0x10
0031b9e0  02 e0 a0 e1                                      mov lr, r2
0031b9e4  0d c0 a0 e1                                      mov ip, sp
0031b9e8  01 50 a0 e1                                      mov r5, r1
0031b9ec  00 60 a0 e1                                      mov r6, r0
0031b9f0  03 40 a0 e1                                      mov r4, r3
0031b9f4  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
0031b9f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0031b9fc  0e 00 a0 e1                                      mov r0, lr
0031ba00  0d 10 a0 e1                                      mov r1, sp
0031ba04  03 ff ff eb                                      bl #0x31b618
0031ba08  00 00 50 e3                                      cmp r0, #0
0031ba0c  08 00 00 ca                                      bgt #0x31ba34
0031ba10  29 00 00 ea                                      b #0x31babc
0031ba14  00 30 94 e5                                      ldr r3, [r4]
0031ba18  08 20 94 e5                                      ldr r2, [r4, #8]
0031ba1c  04 30 83 e2                                      add r3, r3, #4
0031ba20  02 00 53 e1                                      cmp r3, r2
0031ba24  00 30 84 e5                                      str r3, [r4]
0031ba28  19 00 00 0a                                      beq #0x31ba94
0031ba2c  01 00 50 e2                                      subs r0, r0, #1
0031ba30  21 00 00 0a                                      beq #0x31babc
0031ba34  00 20 95 e5                                      ldr r2, [r5]
0031ba38  00 30 94 e5                                      ldr r3, [r4]
0031ba3c  00 20 92 e5                                      ldr r2, [r2]
0031ba40  00 20 83 e5                                      str r2, [r3]
0031ba44  00 30 95 e5                                      ldr r3, [r5]
0031ba48  08 20 95 e5                                      ldr r2, [r5, #8]
0031ba4c  04 30 83 e2                                      add r3, r3, #4
0031ba50  02 00 53 e1                                      cmp r3, r2
0031ba54  00 30 85 e5                                      str r3, [r5]
0031ba58  ed ff ff 1a                                      bne #0x31ba14
0031ba5c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0031ba60  04 20 83 e2                                      add r2, r3, #4
0031ba64  0c 20 85 e5                                      str r2, [r5, #0xc]
0031ba68  04 30 93 e5                                      ldr r3, [r3, #4]
0031ba6c  80 20 83 e2                                      add r2, r3, #0x80
0031ba70  08 20 85 e5                                      str r2, [r5, #8]
0031ba74  00 30 85 e5                                      str r3, [r5]
0031ba78  04 30 85 e5                                      str r3, [r5, #4]
0031ba7c  00 30 94 e5                                      ldr r3, [r4]
0031ba80  08 20 94 e5                                      ldr r2, [r4, #8]
0031ba84  04 30 83 e2                                      add r3, r3, #4
0031ba88  02 00 53 e1                                      cmp r3, r2
0031ba8c  00 30 84 e5                                      str r3, [r4]
0031ba90  e5 ff ff 1a                                      bne #0x31ba2c
0031ba94  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031ba98  01 00 50 e2                                      subs r0, r0, #1
0031ba9c  04 20 83 e2                                      add r2, r3, #4
0031baa0  0c 20 84 e5                                      str r2, [r4, #0xc]
0031baa4  04 30 93 e5                                      ldr r3, [r3, #4]
0031baa8  80 20 83 e2                                      add r2, r3, #0x80
0031baac  08 20 84 e5                                      str r2, [r4, #8]
0031bab0  00 30 84 e5                                      str r3, [r4]
0031bab4  04 30 84 e5                                      str r3, [r4, #4]
0031bab8  dd ff ff 1a                                      bne #0x31ba34
0031babc  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0031bac0  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0031bac4  06 00 a0 e1                                      mov r0, r6
0031bac8  10 d0 8d e2                                      add sp, sp, #0x10
0031bacc  70 80 bd e8                                      pop {r4, r5, r6, pc}
