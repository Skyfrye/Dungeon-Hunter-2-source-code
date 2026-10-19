; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b85f4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_3_function> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13as_3_functionEEEE7reserveEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_3_function> >::reserve(int)
; decoder-mode: arm
007b85f4  10 40 2d e9                                      push {r4, lr}
007b85f8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b85fc  00 40 a0 e1                                      mov r4, r0
007b8600  00 00 53 e3                                      cmp r3, #0
007b8604  0f 00 00 1a                                      bne #0x7b8648
007b8608  00 00 51 e3                                      cmp r1, #0
007b860c  08 20 90 e5                                      ldr r2, [r0, #8]
007b8610  08 10 80 e5                                      str r1, [r0, #8]
007b8614  0c 00 00 1a                                      bne #0x7b864c
007b8618  00 00 90 e5                                      ldr r0, [r0]
007b861c  00 00 50 e3                                      cmp r0, #0
007b8620  01 00 00 0a                                      beq #0x7b862c
007b8624  02 11 a0 e1                                      lsl r1, r2, #2
007b8628  42 69 fe eb                                      bl #0x752b38
007b862c  00 30 a0 e3                                      mov r3, #0
007b8630  00 30 84 e5                                      str r3, [r4]
007b8634  10 80 bd e8                                      pop {r4, pc}
007b8638  01 01 a0 e1                                      lsl r0, r1, #2
007b863c  0c 10 a0 e1                                      mov r1, ip
007b8640  55 69 fe eb                                      bl #0x752b9c
007b8644  00 00 84 e5                                      str r0, [r4]
007b8648  10 80 bd e8                                      pop {r4, pc}
007b864c  00 c0 90 e5                                      ldr ip, [r0]
007b8650  00 00 5c e3                                      cmp ip, #0
007b8654  f7 ff ff 0a                                      beq #0x7b8638
007b8658  0c 00 a0 e1                                      mov r0, ip
007b865c  01 11 a0 e1                                      lsl r1, r1, #2
007b8660  02 21 a0 e1                                      lsl r2, r2, #2
007b8664  50 69 fe eb                                      bl #0x752bac
007b8668  00 00 84 e5                                      str r0, [r4]
007b866c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b88dc, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::array<gameswf::smart_ptr<gameswf::as_3_function> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_13as_3_functionEEEE6resizeEi
; demangled: gameswf::array<gameswf::smart_ptr<gameswf::as_3_function> >::resize(int)
; decoder-mode: arm
007b88dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b88e0  04 60 90 e5                                      ldr r6, [r0, #4]
007b88e4  00 40 a0 e1                                      mov r4, r0
007b88e8  01 50 a0 e1                                      mov r5, r1
007b88ec  01 00 56 e1                                      cmp r6, r1
007b88f0  0a 00 00 da                                      ble #0x7b8920
007b88f4  01 81 a0 e1                                      lsl r8, r1, #2
007b88f8  01 70 a0 e1                                      mov r7, r1
007b88fc  00 30 94 e5                                      ldr r3, [r4]
007b8900  01 70 87 e2                                      add r7, r7, #1
007b8904  08 00 93 e7                                      ldr r0, [r3, r8]
007b8908  04 80 88 e2                                      add r8, r8, #4
007b890c  00 00 50 e3                                      cmp r0, #0
007b8910  00 00 00 0a                                      beq #0x7b8918
007b8914  49 86 fe eb                                      bl #0x75a240
007b8918  06 00 57 e1                                      cmp r7, r6
007b891c  f6 ff ff 1a                                      bne #0x7b88fc
007b8920  00 00 55 e3                                      cmp r5, #0
007b8924  02 00 00 0a                                      beq #0x7b8934
007b8928  08 30 94 e5                                      ldr r3, [r4, #8]
007b892c  03 00 55 e1                                      cmp r5, r3
007b8930  0c 00 00 ca                                      bgt #0x7b8968
007b8934  05 00 56 e1                                      cmp r6, r5
007b8938  08 00 00 aa                                      bge #0x7b8960
007b893c  06 30 a0 e1                                      mov r3, r6
007b8940  00 10 a0 e3                                      mov r1, #0
007b8944  06 61 a0 e1                                      lsl r6, r6, #2
007b8948  00 20 94 e5                                      ldr r2, [r4]
007b894c  01 30 83 e2                                      add r3, r3, #1
007b8950  05 00 53 e1                                      cmp r3, r5
007b8954  06 10 82 e7                                      str r1, [r2, r6]
007b8958  04 60 86 e2                                      add r6, r6, #4
007b895c  f9 ff ff 1a                                      bne #0x7b8948
007b8960  04 50 84 e5                                      str r5, [r4, #4]
007b8964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8968  04 00 a0 e1                                      mov r0, r4
007b896c  c5 10 85 e0                                      add r1, r5, r5, asr #1
007b8970  1f ff ff eb                                      bl #0x7b85f4
007b8974  ee ff ff ea                                      b #0x7b8934
