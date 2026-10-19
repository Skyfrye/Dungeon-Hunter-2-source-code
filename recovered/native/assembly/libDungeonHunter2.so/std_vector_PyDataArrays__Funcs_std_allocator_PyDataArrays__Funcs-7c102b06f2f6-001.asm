; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004af7b4, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >
; alias: _ZNSt6vectorIN12PyDataArrays6_FuncsESaIS1_EED1Ev
; demangled: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >::~vector()
; decoder-mode: arm
004af7b4  10 40 2d e9                                      push {r4, lr}
004af7b8  00 40 a0 e1                                      mov r4, r0
004af7bc  00 00 90 e5                                      ldr r0, [r0]
004af7c0  00 00 50 e3                                      cmp r0, #0
004af7c4  05 00 00 0a                                      beq #0x4af7e0
004af7c8  08 10 94 e5                                      ldr r1, [r4, #8]
004af7cc  01 10 60 e0                                      rsb r1, r0, r1
004af7d0  07 10 c1 e3                                      bic r1, r1, #7
004af7d4  80 00 51 e3                                      cmp r1, #0x80
004af7d8  02 00 00 8a                                      bhi #0x4af7e8
004af7dc  c7 65 09 eb                                      bl #0x708f00
004af7e0  04 00 a0 e1                                      mov r0, r4
004af7e4  10 80 bd e8                                      pop {r4, pc}
004af7e8  14 83 f9 eb                                      bl #0x310440
004af7ec  04 00 a0 e1                                      mov r0, r4
004af7f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004afba8, declared_size=428, range_size=428, mode=arm
; class-group: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >
; alias: _ZNSt6vectorIN12PyDataArrays6_FuncsESaIS1_EEaSERKS3_
; demangled: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >::operator=(std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > const&)
; decoder-mode: arm
004afba8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004afbac  00 00 51 e1                                      cmp r1, r0
004afbb0  08 d0 4d e2                                      sub sp, sp, #8
004afbb4  00 50 a0 e1                                      mov r5, r0
004afbb8  36 00 00 0a                                      beq #0x4afc98
004afbbc  0c 00 91 e8                                      ldm r1, {r2, r3}
004afbc0  00 60 90 e5                                      ldr r6, [r0]
004afbc4  08 c0 90 e5                                      ldr ip, [r0, #8]
004afbc8  03 40 62 e0                                      rsb r4, r2, r3
004afbcc  c4 41 a0 e1                                      asr r4, r4, #3
004afbd0  0c c0 66 e0                                      rsb ip, r6, ip
004afbd4  cc 01 54 e1                                      cmp r4, ip, asr #3
004afbd8  04 70 a0 e1                                      mov r7, r4
004afbdc  06 c0 a0 e1                                      mov ip, r6
004afbe0  40 00 00 8a                                      bhi #0x4afce8
004afbe4  04 80 90 e5                                      ldr r8, [r0, #4]
004afbe8  08 00 66 e0                                      rsb r0, r6, r8
004afbec  c0 01 a0 e1                                      asr r0, r0, #3
004afbf0  00 00 54 e1                                      cmp r4, r0
004afbf4  2a 00 00 9a                                      bls #0x4afca4
004afbf8  00 70 50 e2                                      subs r7, r0, #0
004afbfc  08 70 a0 d1                                      movle r7, r8
004afc00  80 01 82 e0                                      add r0, r2, r0, lsl #3
004afc04  0f 00 00 da                                      ble #0x4afc48
004afc08  00 c0 a0 e3                                      mov ip, #0
004afc0c  02 00 a0 e1                                      mov r0, r2
004afc10  0c 80 b0 e7                                      ldr r8, [r0, ip]!
004afc14  06 30 a0 e1                                      mov r3, r6
004afc18  01 70 57 e2                                      subs r7, r7, #1
004afc1c  0c 80 a3 e7                                      str r8, [r3, ip]!
004afc20  04 00 90 e5                                      ldr r0, [r0, #4]
004afc24  08 c0 8c e2                                      add ip, ip, #8
004afc28  04 00 83 e5                                      str r0, [r3, #4]
004afc2c  f6 ff ff 1a                                      bne #0x4afc0c
004afc30  04 70 95 e5                                      ldr r7, [r5, #4]
004afc34  00 c0 95 e5                                      ldr ip, [r5]
004afc38  0c 00 91 e8                                      ldm r1, {r2, r3}
004afc3c  07 00 6c e0                                      rsb r0, ip, r7
004afc40  07 00 c0 e3                                      bic r0, r0, #7
004afc44  00 00 82 e0                                      add r0, r2, r0
004afc48  03 30 60 e0                                      rsb r3, r0, r3
004afc4c  c3 31 a0 e1                                      asr r3, r3, #3
004afc50  00 00 53 e3                                      cmp r3, #0
004afc54  0c 60 a0 d1                                      movle r6, ip
004afc58  84 41 a0 d1                                      lslle r4, r4, #3
004afc5c  1e 00 00 da                                      ble #0x4afcdc
004afc60  00 c0 a0 e3                                      mov ip, #0
004afc64  00 10 a0 e1                                      mov r1, r0
004afc68  0c 60 b1 e7                                      ldr r6, [r1, ip]!
004afc6c  07 20 a0 e1                                      mov r2, r7
004afc70  01 30 53 e2                                      subs r3, r3, #1
004afc74  0c 60 a2 e7                                      str r6, [r2, ip]!
004afc78  04 10 91 e5                                      ldr r1, [r1, #4]
004afc7c  08 c0 8c e2                                      add ip, ip, #8
004afc80  04 10 82 e5                                      str r1, [r2, #4]
004afc84  f6 ff ff 1a                                      bne #0x4afc64
004afc88  00 60 95 e5                                      ldr r6, [r5]
004afc8c  84 41 a0 e1                                      lsl r4, r4, #3
004afc90  04 60 86 e0                                      add r6, r6, r4
004afc94  04 60 85 e5                                      str r6, [r5, #4]
004afc98  05 00 a0 e1                                      mov r0, r5
004afc9c  08 d0 8d e2                                      add sp, sp, #8
004afca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004afca4  00 00 54 e3                                      cmp r4, #0
004afca8  00 00 a0 c3                                      movgt r0, #0
004afcac  f6 ff ff da                                      ble #0x4afc8c
004afcb0  02 10 a0 e1                                      mov r1, r2
004afcb4  00 c0 b1 e7                                      ldr ip, [r1, r0]!
004afcb8  06 30 a0 e1                                      mov r3, r6
004afcbc  01 40 54 e2                                      subs r4, r4, #1
004afcc0  00 c0 a3 e7                                      str ip, [r3, r0]!
004afcc4  04 10 91 e5                                      ldr r1, [r1, #4]
004afcc8  08 00 80 e2                                      add r0, r0, #8
004afccc  04 10 83 e5                                      str r1, [r3, #4]
004afcd0  f6 ff ff 1a                                      bne #0x4afcb0
004afcd4  00 60 95 e5                                      ldr r6, [r5]
004afcd8  87 41 a0 e1                                      lsl r4, r7, #3
004afcdc  04 60 86 e0                                      add r6, r6, r4
004afce0  04 60 85 e5                                      str r6, [r5, #4]
004afce4  eb ff ff ea                                      b #0x4afc98
004afce8  08 10 8d e2                                      add r1, sp, #8
004afcec  04 40 21 e5                                      str r4, [r1, #-4]!
004afcf0  96 ff ff eb                                      bl #0x4afb50
004afcf4  04 30 95 e5                                      ldr r3, [r5, #4]
004afcf8  00 60 a0 e1                                      mov r6, r0
004afcfc  00 00 95 e5                                      ldr r0, [r5]
004afd00  08 10 95 e5                                      ldr r1, [r5, #8]
004afd04  00 00 53 e1                                      cmp r3, r0
004afd08  08 20 43 12                                      subne r2, r3, #8
004afd0c  02 20 60 10                                      rsbne r2, r0, r2
004afd10  a2 21 e0 11                                      mvnne r2, r2, lsr #3
004afd14  82 31 83 10                                      addne r3, r3, r2, lsl #3
004afd18  00 00 53 e3                                      cmp r3, #0
004afd1c  04 00 00 0a                                      beq #0x4afd34
004afd20  01 10 63 e0                                      rsb r1, r3, r1
004afd24  07 10 c1 e3                                      bic r1, r1, #7
004afd28  80 00 51 e3                                      cmp r1, #0x80
004afd2c  06 00 00 8a                                      bhi #0x4afd4c
004afd30  72 64 09 eb                                      bl #0x708f00
004afd34  04 30 9d e5                                      ldr r3, [sp, #4]
004afd38  84 41 a0 e1                                      lsl r4, r4, #3
004afd3c  00 60 85 e5                                      str r6, [r5]
004afd40  83 31 86 e0                                      add r3, r6, r3, lsl #3
004afd44  08 30 85 e5                                      str r3, [r5, #8]
004afd48  e3 ff ff ea                                      b #0x4afcdc
004afd4c  bb 81 f9 eb                                      bl #0x310440
004afd50  f7 ff ff ea                                      b #0x4afd34

; FUNCTION 0x004afd54, declared_size=160, range_size=160, mode=arm
; class-group: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >
; alias: _ZNSt6vectorIN12PyDataArrays6_FuncsESaIS1_EEC1ERKS3_
; demangled: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >::vector(std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > const&)
; decoder-mode: arm
004afd54  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004afd58  01 50 a0 e1                                      mov r5, r1
004afd5c  00 30 95 e5                                      ldr r3, [r5]
004afd60  04 10 91 e5                                      ldr r1, [r1, #4]
004afd64  0c d0 4d e2                                      sub sp, sp, #0xc
004afd68  00 40 a0 e1                                      mov r4, r0
004afd6c  01 10 63 e0                                      rsb r1, r3, r1
004afd70  00 60 a0 e3                                      mov r6, #0
004afd74  c1 11 a0 e1                                      asr r1, r1, #3
004afd78  08 20 8d e2                                      add r2, sp, #8
004afd7c  04 10 22 e5                                      str r1, [r2, #-4]!
004afd80  00 60 84 e5                                      str r6, [r4]
004afd84  04 60 84 e5                                      str r6, [r4, #4]
004afd88  08 60 a0 e5                                      str r6, [r0, #8]!
004afd8c  53 ff ff eb                                      bl #0x4afae0
004afd90  04 30 9d e5                                      ldr r3, [sp, #4]
004afd94  00 00 84 e5                                      str r0, [r4]
004afd98  04 00 84 e5                                      str r0, [r4, #4]
004afd9c  83 31 80 e0                                      add r3, r0, r3, lsl #3
004afda0  08 30 84 e5                                      str r3, [r4, #8]
004afda4  a0 00 95 e8                                      ldm r5, {r5, r7}
004afda8  07 70 65 e0                                      rsb r7, r5, r7
004afdac  c7 71 a0 e1                                      asr r7, r7, #3
004afdb0  06 00 57 e1                                      cmp r7, r6
004afdb4  0a 00 00 da                                      ble #0x4afde4
004afdb8  07 10 a0 e1                                      mov r1, r7
004afdbc  05 20 a0 e1                                      mov r2, r5
004afdc0  06 c0 b2 e7                                      ldr ip, [r2, r6]!
004afdc4  00 30 a0 e1                                      mov r3, r0
004afdc8  01 10 51 e2                                      subs r1, r1, #1
004afdcc  06 c0 a3 e7                                      str ip, [r3, r6]!
004afdd0  04 20 92 e5                                      ldr r2, [r2, #4]
004afdd4  08 60 86 e2                                      add r6, r6, #8
004afdd8  04 20 83 e5                                      str r2, [r3, #4]
004afddc  f6 ff ff 1a                                      bne #0x4afdbc
004afde0  87 01 80 e0                                      add r0, r0, r7, lsl #3
004afde4  04 00 84 e5                                      str r0, [r4, #4]
004afde8  04 00 a0 e1                                      mov r0, r4
004afdec  0c d0 8d e2                                      add sp, sp, #0xc
004afdf0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
