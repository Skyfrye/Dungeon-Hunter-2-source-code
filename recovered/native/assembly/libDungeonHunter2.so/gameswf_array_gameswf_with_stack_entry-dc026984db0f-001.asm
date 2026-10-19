; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075a314, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::with_stack_entry>
; alias: _ZN7gameswf5arrayINS_16with_stack_entryEE7reserveEi
; demangled: gameswf::array<gameswf::with_stack_entry>::reserve(int)
; decoder-mode: arm
0075a314  10 40 2d e9                                      push {r4, lr}
0075a318  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0075a31c  00 40 a0 e1                                      mov r4, r0
0075a320  00 00 53 e3                                      cmp r3, #0
0075a324  0f 00 00 1a                                      bne #0x75a368
0075a328  00 00 51 e3                                      cmp r1, #0
0075a32c  08 20 90 e5                                      ldr r2, [r0, #8]
0075a330  08 10 80 e5                                      str r1, [r0, #8]
0075a334  0c 00 00 1a                                      bne #0x75a36c
0075a338  00 00 90 e5                                      ldr r0, [r0]
0075a33c  00 00 50 e3                                      cmp r0, #0
0075a340  01 00 00 0a                                      beq #0x75a34c
0075a344  82 11 a0 e1                                      lsl r1, r2, #3
0075a348  fa e1 ff eb                                      bl #0x752b38
0075a34c  00 30 a0 e3                                      mov r3, #0
0075a350  00 30 84 e5                                      str r3, [r4]
0075a354  10 80 bd e8                                      pop {r4, pc}
0075a358  81 01 a0 e1                                      lsl r0, r1, #3
0075a35c  0c 10 a0 e1                                      mov r1, ip
0075a360  0d e2 ff eb                                      bl #0x752b9c
0075a364  00 00 84 e5                                      str r0, [r4]
0075a368  10 80 bd e8                                      pop {r4, pc}
0075a36c  00 c0 90 e5                                      ldr ip, [r0]
0075a370  00 00 5c e3                                      cmp ip, #0
0075a374  f7 ff ff 0a                                      beq #0x75a358
0075a378  0c 00 a0 e1                                      mov r0, ip
0075a37c  81 11 a0 e1                                      lsl r1, r1, #3
0075a380  82 21 a0 e1                                      lsl r2, r2, #3
0075a384  08 e2 ff eb                                      bl #0x752bac
0075a388  00 00 84 e5                                      str r0, [r4]
0075a38c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077f318, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::array<gameswf::with_stack_entry>
; alias: _ZN7gameswf5arrayINS_16with_stack_entryEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::with_stack_entry>::resize(int) [clone .clone.0]
; decoder-mode: arm
0077f318  70 40 2d e9                                      push {r4, r5, r6, lr}
0077f31c  04 40 90 e5                                      ldr r4, [r0, #4]
0077f320  00 60 a0 e1                                      mov r6, r0
0077f324  00 00 54 e3                                      cmp r4, #0
0077f328  0b 00 00 da                                      ble #0x77f35c
0077f32c  00 50 a0 e3                                      mov r5, #0
0077f330  00 30 96 e5                                      ldr r3, [r6]
0077f334  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
0077f338  01 50 85 e2                                      add r5, r5, #1
0077f33c  00 00 50 e3                                      cmp r0, #0
0077f340  00 00 00 0a                                      beq #0x77f348
0077f344  bd 6b ff eb                                      bl #0x75a240
0077f348  04 00 55 e1                                      cmp r5, r4
0077f34c  f7 ff ff 1a                                      bne #0x77f330
0077f350  00 30 a0 e3                                      mov r3, #0
0077f354  04 30 86 e5                                      str r3, [r6, #4]
0077f358  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077f35c  fb ff ff aa                                      bge #0x77f350
0077f360  84 31 a0 e1                                      lsl r3, r4, #3
0077f364  00 10 a0 e3                                      mov r1, #0
0077f368  00 20 96 e5                                      ldr r2, [r6]
0077f36c  01 40 94 e2                                      adds r4, r4, #1
0077f370  03 00 82 e0                                      add r0, r2, r3
0077f374  03 10 82 e7                                      str r1, [r2, r3]
0077f378  04 10 80 e5                                      str r1, [r0, #4]
0077f37c  08 30 83 e2                                      add r3, r3, #8
0077f380  f8 ff ff 1a                                      bne #0x77f368
0077f384  00 30 a0 e3                                      mov r3, #0
0077f388  04 30 86 e5                                      str r3, [r6, #4]
0077f38c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007baaac, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::array<gameswf::with_stack_entry>
; alias: _ZN7gameswf5arrayINS_16with_stack_entryEE6resizeEi
; demangled: gameswf::array<gameswf::with_stack_entry>::resize(int)
; decoder-mode: arm
007baaac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007baab0  04 60 90 e5                                      ldr r6, [r0, #4]
007baab4  00 40 a0 e1                                      mov r4, r0
007baab8  01 50 a0 e1                                      mov r5, r1
007baabc  01 00 56 e1                                      cmp r6, r1
007baac0  0a 00 00 da                                      ble #0x7baaf0
007baac4  81 81 a0 e1                                      lsl r8, r1, #3
007baac8  01 70 a0 e1                                      mov r7, r1
007baacc  00 30 94 e5                                      ldr r3, [r4]
007baad0  01 70 87 e2                                      add r7, r7, #1
007baad4  08 00 93 e7                                      ldr r0, [r3, r8]
007baad8  08 80 88 e2                                      add r8, r8, #8
007baadc  00 00 50 e3                                      cmp r0, #0
007baae0  00 00 00 0a                                      beq #0x7baae8
007baae4  d5 7d fe eb                                      bl #0x75a240
007baae8  06 00 57 e1                                      cmp r7, r6
007baaec  f6 ff ff 1a                                      bne #0x7baacc
007baaf0  00 00 55 e3                                      cmp r5, #0
007baaf4  02 00 00 0a                                      beq #0x7bab04
007baaf8  08 30 94 e5                                      ldr r3, [r4, #8]
007baafc  03 00 55 e1                                      cmp r5, r3
007bab00  0e 00 00 ca                                      bgt #0x7bab40
007bab04  05 00 56 e1                                      cmp r6, r5
007bab08  0a 00 00 aa                                      bge #0x7bab38
007bab0c  06 30 a0 e1                                      mov r3, r6
007bab10  00 10 a0 e3                                      mov r1, #0
007bab14  86 61 a0 e1                                      lsl r6, r6, #3
007bab18  00 20 94 e5                                      ldr r2, [r4]
007bab1c  01 30 83 e2                                      add r3, r3, #1
007bab20  05 00 53 e1                                      cmp r3, r5
007bab24  06 00 82 e0                                      add r0, r2, r6
007bab28  06 10 82 e7                                      str r1, [r2, r6]
007bab2c  04 10 80 e5                                      str r1, [r0, #4]
007bab30  08 60 86 e2                                      add r6, r6, #8
007bab34  f7 ff ff 1a                                      bne #0x7bab18
007bab38  04 50 84 e5                                      str r5, [r4, #4]
007bab3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007bab40  04 00 a0 e1                                      mov r0, r4
007bab44  c5 10 85 e0                                      add r1, r5, r5, asr #1
007bab48  f1 7d fe eb                                      bl #0x75a314
007bab4c  ec ff ff ea                                      b #0x7bab04

; FUNCTION 0x007bab50, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::array<gameswf::with_stack_entry>
; alias: _ZN7gameswf5arrayINS_16with_stack_entryEEaSERKS2_
; demangled: gameswf::array<gameswf::with_stack_entry>::operator=(gameswf::array<gameswf::with_stack_entry> const&)
; decoder-mode: arm
007bab50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007bab54  00 60 a0 e1                                      mov r6, r0
007bab58  01 80 a0 e1                                      mov r8, r1
007bab5c  04 10 91 e5                                      ldr r1, [r1, #4]
007bab60  d1 ff ff eb                                      bl #0x7baaac
007bab64  04 30 96 e5                                      ldr r3, [r6, #4]
007bab68  00 00 53 e3                                      cmp r3, #0
007bab6c  0e 00 00 da                                      ble #0x7babac
007bab70  00 40 a0 e3                                      mov r4, #0
007bab74  00 50 96 e5                                      ldr r5, [r6]
007bab78  00 30 98 e5                                      ldr r3, [r8]
007bab7c  84 71 a0 e1                                      lsl r7, r4, #3
007bab80  07 50 85 e0                                      add r5, r5, r7
007bab84  84 11 93 e7                                      ldr r1, [r3, r4, lsl #3]
007bab88  07 70 83 e0                                      add r7, r3, r7
007bab8c  05 00 a0 e1                                      mov r0, r5
007bab90  4c b8 fe eb                                      bl #0x768cc8
007bab94  04 30 97 e5                                      ldr r3, [r7, #4]
007bab98  01 40 84 e2                                      add r4, r4, #1
007bab9c  04 30 85 e5                                      str r3, [r5, #4]
007baba0  04 30 96 e5                                      ldr r3, [r6, #4]
007baba4  04 00 53 e1                                      cmp r3, r4
007baba8  f1 ff ff ca                                      bgt #0x7bab74
007babac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
