; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a7840, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::OpenableContainers
; alias: _ZN6Arrays18OpenableContainers13finalizeNamesEv
; demangled: Arrays::OpenableContainers::finalizeNames()
; decoder-mode: arm
004a7840  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a7844  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a7848  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a784c  05 50 8f e0                                      add r5, pc, r5
004a7850  06 30 95 e7                                      ldr r3, [r5, r6]
004a7854  00 30 93 e5                                      ldr r3, [r3]
004a7858  00 00 53 e3                                      cmp r3, #0
004a785c  1a 00 00 0a                                      beq #0x4a78cc
004a7860  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a7864  07 20 95 e7                                      ldr r2, [r5, r7]
004a7868  00 20 92 e5                                      ldr r2, [r2]
004a786c  00 00 52 e3                                      cmp r2, #0
004a7870  10 00 00 0a                                      beq #0x4a78b8
004a7874  00 40 a0 e3                                      mov r4, #0
004a7878  01 00 00 ea                                      b #0x4a7884
004a787c  06 30 95 e7                                      ldr r3, [r5, r6]
004a7880  00 30 93 e5                                      ldr r3, [r3]
004a7884  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a7888  01 40 84 e2                                      add r4, r4, #1
004a788c  00 00 50 e3                                      cmp r0, #0
004a7890  02 00 00 0a                                      beq #0x4a78a0
004a7894  e9 a2 f9 eb                                      bl #0x310440
004a7898  06 30 95 e7                                      ldr r3, [r5, r6]
004a789c  00 30 93 e5                                      ldr r3, [r3]
004a78a0  07 20 95 e7                                      ldr r2, [r5, r7]
004a78a4  00 20 92 e5                                      ldr r2, [r2]
004a78a8  04 00 52 e1                                      cmp r2, r4
004a78ac  f2 ff ff 8a                                      bhi #0x4a787c
004a78b0  00 00 53 e3                                      cmp r3, #0
004a78b4  01 00 00 0a                                      beq #0x4a78c0
004a78b8  03 00 a0 e1                                      mov r0, r3
004a78bc  df a2 f9 eb                                      bl #0x310440
004a78c0  06 30 95 e7                                      ldr r3, [r5, r6]
004a78c4  00 20 a0 e3                                      mov r2, #0
004a78c8  00 20 83 e5                                      str r2, [r3]
004a78cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a78d0  44 d2 4e 00 60 18 00 00 fc 3a 00 00              .byte 0x44, 0xd2, 0x4e, 0x00, 0x60, 0x18, 0x00, 0x00, 0xfc, 0x3a, 0x00, 0x00

; FUNCTION 0x004a78dc, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::OpenableContainers
; alias: _ZN6Arrays18OpenableContainers8finalizeEv
; demangled: Arrays::OpenableContainers::finalize()
; decoder-mode: arm
004a78dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a78e0  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a78e4  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a78e8  05 50 8f e0                                      add r5, pc, r5
004a78ec  07 30 95 e7                                      ldr r3, [r5, r7]
004a78f0  00 30 93 e5                                      ldr r3, [r3]
004a78f4  00 00 53 e3                                      cmp r3, #0
004a78f8  2c 00 00 0a                                      beq #0x4a79b0
004a78fc  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a7900  08 20 95 e7                                      ldr r2, [r5, r8]
004a7904  00 20 92 e5                                      ldr r2, [r2]
004a7908  00 00 52 e3                                      cmp r2, #0
004a790c  12 00 00 0a                                      beq #0x4a795c
004a7910  00 40 a0 e3                                      mov r4, #0
004a7914  04 60 a0 e1                                      mov r6, r4
004a7918  01 00 00 ea                                      b #0x4a7924
004a791c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7920  00 30 93 e5                                      ldr r3, [r3]
004a7924  04 00 83 e0                                      add r0, r3, r4
004a7928  04 30 93 e7                                      ldr r3, [r3, r4]
004a792c  0f e0 a0 e1                                      mov lr, pc
004a7930  08 f0 93 e5                                      ldr pc, [r3, #8]
004a7934  08 30 95 e7                                      ldr r3, [r5, r8]
004a7938  01 60 86 e2                                      add r6, r6, #1
004a793c  28 40 84 e2                                      add r4, r4, #0x28
004a7940  00 30 93 e5                                      ldr r3, [r3]
004a7944  06 00 53 e1                                      cmp r3, r6
004a7948  f3 ff ff 8a                                      bhi #0x4a791c
004a794c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7950  00 30 93 e5                                      ldr r3, [r3]
004a7954  00 00 53 e3                                      cmp r3, #0
004a7958  11 00 00 0a                                      beq #0x4a79a4
004a795c  04 20 13 e5                                      ldr r2, [r3, #-4]
004a7960  28 00 a0 e3                                      mov r0, #0x28
004a7964  90 32 20 e0                                      mla r0, r0, r2, r3
004a7968  00 00 53 e1                                      cmp r3, r0
004a796c  01 00 00 1a                                      bne #0x4a7978
004a7970  09 00 00 ea                                      b #0x4a799c
004a7974  04 00 a0 e1                                      mov r0, r4
004a7978  28 40 40 e2                                      sub r4, r0, #0x28
004a797c  28 30 10 e5                                      ldr r3, [r0, #-0x28]
004a7980  04 00 a0 e1                                      mov r0, r4
004a7984  0f e0 a0 e1                                      mov lr, pc
004a7988  00 f0 93 e5                                      ldr pc, [r3]
004a798c  07 30 95 e7                                      ldr r3, [r5, r7]
004a7990  00 00 93 e5                                      ldr r0, [r3]
004a7994  04 00 50 e1                                      cmp r0, r4
004a7998  f5 ff ff 1a                                      bne #0x4a7974
004a799c  08 00 40 e2                                      sub r0, r0, #8
004a79a0  a6 a2 f9 eb                                      bl #0x310440
004a79a4  07 30 95 e7                                      ldr r3, [r5, r7]
004a79a8  00 20 a0 e3                                      mov r2, #0
004a79ac  00 20 83 e5                                      str r2, [r3]
004a79b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a79b4  a8 d1 4e 00 dc 33 00 00 fc 3a 00 00              .byte 0xa8, 0xd1, 0x4e, 0x00, 0xdc, 0x33, 0x00, 0x00, 0xfc, 0x3a, 0x00, 0x00

; FUNCTION 0x004b5b04, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::OpenableContainers
; alias: _ZN6Arrays18OpenableContainers9readNamesEP11IStreamBase
; demangled: Arrays::OpenableContainers::readNames(IStreamBase*)
; decoder-mode: arm
004b5b04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b5b08  00 70 a0 e1                                      mov r7, r0
004b5b0c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b5b10  4a c7 ff eb                                      bl #0x4a7840
004b5b14  07 00 a0 e1                                      mov r0, r7
004b5b18  dc 77 f9 eb                                      bl #0x313a90
004b5b1c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b5b20  01 30 a0 e3                                      mov r3, #1
004b5b24  00 00 53 e3                                      cmp r3, #0
004b5b28  06 60 8f e0                                      add r6, pc, r6
004b5b2c  14 00 8d e5                                      str r0, [sp, #0x14]
004b5b30  0c 30 8d e5                                      str r3, [sp, #0xc]
004b5b34  12 00 00 1a                                      bne #0x4b5b84
004b5b38  14 30 8d e2                                      add r3, sp, #0x14
004b5b3c  02 20 83 e2                                      add r2, r3, #2
004b5b40  01 30 83 e2                                      add r3, r3, #1
004b5b44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5b48  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5b4c  03 00 52 e1                                      cmp r2, r3
004b5b50  02 40 a0 e1                                      mov r4, r2
004b5b54  01 10 20 e0                                      eor r1, r0, r1
004b5b58  01 10 43 e5                                      strb r1, [r3, #-1]
004b5b5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5b60  00 10 21 e0                                      eor r1, r1, r0
004b5b64  01 10 c2 e5                                      strb r1, [r2, #1]
004b5b68  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5b6c  01 20 42 e2                                      sub r2, r2, #1
004b5b70  00 10 21 e0                                      eor r1, r1, r0
004b5b74  01 10 43 e5                                      strb r1, [r3, #-1]
004b5b78  01 30 83 e2                                      add r3, r3, #1
004b5b7c  f0 ff ff 8a                                      bhi #0x4b5b44
004b5b80  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b5b84  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b5b88  03 30 96 e7                                      ldr r3, [r6, r3]
004b5b8c  00 30 93 e5                                      ldr r3, [r3]
004b5b90  00 00 53 e1                                      cmp r3, r0
004b5b94  01 00 00 0a                                      beq #0x4b5ba0
004b5b98  1c d0 8d e2                                      add sp, sp, #0x1c
004b5b9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b5ba0  00 01 a0 e1                                      lsl r0, r0, #2
004b5ba4  01 10 a0 e3                                      mov r1, #1
004b5ba8  6f 6a f9 eb                                      bl #0x31056c
004b5bac  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b5bb0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b5bb4  09 30 96 e7                                      ldr r3, [r6, sb]
004b5bb8  00 00 52 e3                                      cmp r2, #0
004b5bbc  00 00 83 e5                                      str r0, [r3]
004b5bc0  f4 ff ff 0a                                      beq #0x4b5b98
004b5bc4  10 a0 8d e2                                      add sl, sp, #0x10
004b5bc8  01 80 a0 e3                                      mov r8, #1
004b5bcc  08 10 8a e0                                      add r1, sl, r8
004b5bd0  02 30 8a e2                                      add r3, sl, #2
004b5bd4  00 40 a0 e3                                      mov r4, #0
004b5bd8  0a 00 8d e8                                      stm sp, {r1, r3}
004b5bdc  07 00 a0 e1                                      mov r0, r7
004b5be0  0a 10 a0 e1                                      mov r1, sl
004b5be4  6d a5 fc eb                                      bl #0x3df1a0
004b5be8  00 00 58 e3                                      cmp r8, #0
004b5bec  0c 80 8d e5                                      str r8, [sp, #0xc]
004b5bf0  0f 00 00 1a                                      bne #0x4b5c34
004b5bf4  00 30 9d e5                                      ldr r3, [sp]
004b5bf8  04 20 9d e5                                      ldr r2, [sp, #4]
004b5bfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5c00  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5c04  03 00 52 e1                                      cmp r2, r3
004b5c08  01 10 20 e0                                      eor r1, r0, r1
004b5c0c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5c10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5c14  00 10 21 e0                                      eor r1, r1, r0
004b5c18  01 10 c2 e5                                      strb r1, [r2, #1]
004b5c1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5c20  01 20 42 e2                                      sub r2, r2, #1
004b5c24  00 10 21 e0                                      eor r1, r1, r0
004b5c28  01 10 43 e5                                      strb r1, [r3, #-1]
004b5c2c  01 30 83 e2                                      add r3, r3, #1
004b5c30  f1 ff ff 8a                                      bhi #0x4b5bfc
004b5c34  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b5c38  09 50 96 e7                                      ldr r5, [r6, sb]
004b5c3c  01 10 a0 e3                                      mov r1, #1
004b5c40  01 00 80 e0                                      add r0, r0, r1
004b5c44  00 b0 95 e5                                      ldr fp, [r5]
004b5c48  47 6a f9 eb                                      bl #0x31056c
004b5c4c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b5c50  00 30 95 e5                                      ldr r3, [r5]
004b5c54  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b5c58  07 00 a0 e1                                      mov r0, r7
004b5c5c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b5c60  00 30 a0 e3                                      mov r3, #0
004b5c64  fa 85 f9 eb                                      bl #0x317454
004b5c68  00 30 95 e5                                      ldr r3, [r5]
004b5c6c  00 10 a0 e3                                      mov r1, #0
004b5c70  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b5c74  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b5c78  01 40 84 e2                                      add r4, r4, #1
004b5c7c  03 10 c2 e7                                      strb r1, [r2, r3]
004b5c80  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b5c84  04 00 53 e1                                      cmp r3, r4
004b5c88  d3 ff ff 8a                                      bhi #0x4b5bdc
004b5c8c  c1 ff ff ea                                      b #0x4b5b98
; mapping-symbol data/literal pool
004b5c90  68 ef 4d 00 fc 3a 00 00 60 18 00 00              .byte 0x68, 0xef, 0x4d, 0x00, 0xfc, 0x3a, 0x00, 0x00, 0x60, 0x18, 0x00, 0x00

; FUNCTION 0x004bb6f8, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::OpenableContainers
; alias: _ZN6Arrays18OpenableContainers4readEP11IStreamBase
; demangled: Arrays::OpenableContainers::read(IStreamBase*)
; decoder-mode: arm
004bb6f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004bb6fc  0c d0 4d e2                                      sub sp, sp, #0xc
004bb700  00 a0 a0 e1                                      mov sl, r0
004bb704  e1 60 f9 eb                                      bl #0x313a90
004bb708  24 61 9f e5                                      ldr r6, [pc, #0x124]
004bb70c  01 30 a0 e3                                      mov r3, #1
004bb710  00 00 53 e3                                      cmp r3, #0
004bb714  04 00 8d e5                                      str r0, [sp, #4]
004bb718  00 30 8d e5                                      str r3, [sp]
004bb71c  06 60 8f e0                                      add r6, pc, r6
004bb720  10 00 00 1a                                      bne #0x4bb768
004bb724  04 30 8d e2                                      add r3, sp, #4
004bb728  02 20 83 e2                                      add r2, r3, #2
004bb72c  01 30 83 e2                                      add r3, r3, #1
004bb730  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb734  01 10 53 e5                                      ldrb r1, [r3, #-1]
004bb738  03 00 52 e1                                      cmp r2, r3
004bb73c  01 10 20 e0                                      eor r1, r0, r1
004bb740  01 10 43 e5                                      strb r1, [r3, #-1]
004bb744  01 00 d2 e5                                      ldrb r0, [r2, #1]
004bb748  00 10 21 e0                                      eor r1, r1, r0
004bb74c  01 10 c2 e5                                      strb r1, [r2, #1]
004bb750  01 00 53 e5                                      ldrb r0, [r3, #-1]
004bb754  01 20 42 e2                                      sub r2, r2, #1
004bb758  00 10 21 e0                                      eor r1, r1, r0
004bb75c  01 10 43 e5                                      strb r1, [r3, #-1]
004bb760  01 30 83 e2                                      add r3, r3, #1
004bb764  f1 ff ff 8a                                      bhi #0x4bb730
004bb768  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004bb76c  5a b0 ff eb                                      bl #0x4a78dc
004bb770  04 40 9d e5                                      ldr r4, [sp, #4]
004bb774  07 30 96 e7                                      ldr r3, [r6, r7]
004bb778  01 10 a0 e3                                      mov r1, #1
004bb77c  04 01 84 e0                                      add r0, r4, r4, lsl #2
004bb780  01 00 80 e0                                      add r0, r0, r1
004bb784  00 40 83 e5                                      str r4, [r3]
004bb788  80 01 a0 e1                                      lsl r0, r0, #3
004bb78c  76 53 f9 eb                                      bl #0x31056c
004bb790  28 30 a0 e3                                      mov r3, #0x28
004bb794  00 00 54 e3                                      cmp r4, #0
004bb798  18 00 80 e8                                      stm r0, {r3, r4}
004bb79c  08 30 80 e2                                      add r3, r0, #8
004bb7a0  0a 00 00 0a                                      beq #0x4bb7d0
004bb7a4  90 10 9f e5                                      ldr r1, [pc, #0x90]
004bb7a8  00 20 a0 e3                                      mov r2, #0
004bb7ac  02 c0 a0 e1                                      mov ip, r2
004bb7b0  01 10 96 e7                                      ldr r1, [r6, r1]
004bb7b4  08 10 81 e2                                      add r1, r1, #8
004bb7b8  01 20 82 e2                                      add r2, r2, #1
004bb7bc  04 00 52 e1                                      cmp r2, r4
004bb7c0  08 10 80 e5                                      str r1, [r0, #8]
004bb7c4  20 c0 80 e5                                      str ip, [r0, #0x20]
004bb7c8  28 00 80 e2                                      add r0, r0, #0x28
004bb7cc  f9 ff ff 1a                                      bne #0x4bb7b8
004bb7d0  07 20 96 e7                                      ldr r2, [r6, r7]
004bb7d4  64 80 9f e5                                      ldr r8, [pc, #0x64]
004bb7d8  00 10 92 e5                                      ldr r1, [r2]
004bb7dc  08 20 96 e7                                      ldr r2, [r6, r8]
004bb7e0  00 00 51 e3                                      cmp r1, #0
004bb7e4  00 30 82 e5                                      str r3, [r2]
004bb7e8  0f 00 00 0a                                      beq #0x4bb82c
004bb7ec  00 40 a0 e3                                      mov r4, #0
004bb7f0  04 50 a0 e1                                      mov r5, r4
004bb7f4  01 00 00 ea                                      b #0x4bb800
004bb7f8  08 30 96 e7                                      ldr r3, [r6, r8]
004bb7fc  00 30 93 e5                                      ldr r3, [r3]
004bb800  04 00 83 e0                                      add r0, r3, r4
004bb804  0a 10 a0 e1                                      mov r1, sl
004bb808  04 30 93 e7                                      ldr r3, [r3, r4]
004bb80c  0f e0 a0 e1                                      mov lr, pc
004bb810  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004bb814  07 30 96 e7                                      ldr r3, [r6, r7]
004bb818  01 50 85 e2                                      add r5, r5, #1
004bb81c  28 40 84 e2                                      add r4, r4, #0x28
004bb820  00 30 93 e5                                      ldr r3, [r3]
004bb824  05 00 53 e1                                      cmp r3, r5
004bb828  f2 ff ff 8a                                      bhi #0x4bb7f8
004bb82c  0c d0 8d e2                                      add sp, sp, #0xc
004bb830  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004bb834  74 93 4d 00 fc 3a 00 00 94 19 00 00 dc 33 00 00  .byte 0x74, 0x93, 0x4d, 0x00, 0xfc, 0x3a, 0x00, 0x00, 0x94, 0x19, 0x00, 0x00, 0xdc, 0x33, 0x00, 0x00
