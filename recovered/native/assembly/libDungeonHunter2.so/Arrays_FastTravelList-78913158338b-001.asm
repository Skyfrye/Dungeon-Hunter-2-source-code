; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a67d8, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::FastTravelList
; alias: _ZN6Arrays14FastTravelList13finalizeNamesEv
; demangled: Arrays::FastTravelList::finalizeNames()
; decoder-mode: arm
004a67d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a67dc  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a67e0  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a67e4  05 50 8f e0                                      add r5, pc, r5
004a67e8  06 30 95 e7                                      ldr r3, [r5, r6]
004a67ec  00 30 93 e5                                      ldr r3, [r3]
004a67f0  00 00 53 e3                                      cmp r3, #0
004a67f4  1a 00 00 0a                                      beq #0x4a6864
004a67f8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a67fc  07 20 95 e7                                      ldr r2, [r5, r7]
004a6800  00 20 92 e5                                      ldr r2, [r2]
004a6804  00 00 52 e3                                      cmp r2, #0
004a6808  10 00 00 0a                                      beq #0x4a6850
004a680c  00 40 a0 e3                                      mov r4, #0
004a6810  01 00 00 ea                                      b #0x4a681c
004a6814  06 30 95 e7                                      ldr r3, [r5, r6]
004a6818  00 30 93 e5                                      ldr r3, [r3]
004a681c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a6820  01 40 84 e2                                      add r4, r4, #1
004a6824  00 00 50 e3                                      cmp r0, #0
004a6828  02 00 00 0a                                      beq #0x4a6838
004a682c  03 a7 f9 eb                                      bl #0x310440
004a6830  06 30 95 e7                                      ldr r3, [r5, r6]
004a6834  00 30 93 e5                                      ldr r3, [r3]
004a6838  07 20 95 e7                                      ldr r2, [r5, r7]
004a683c  00 20 92 e5                                      ldr r2, [r2]
004a6840  04 00 52 e1                                      cmp r2, r4
004a6844  f2 ff ff 8a                                      bhi #0x4a6814
004a6848  00 00 53 e3                                      cmp r3, #0
004a684c  01 00 00 0a                                      beq #0x4a6858
004a6850  03 00 a0 e1                                      mov r0, r3
004a6854  f9 a6 f9 eb                                      bl #0x310440
004a6858  06 30 95 e7                                      ldr r3, [r5, r6]
004a685c  00 20 a0 e3                                      mov r2, #0
004a6860  00 20 83 e5                                      str r2, [r3]
004a6864  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6868  ac e2 4e 00 e4 1e 00 00 f4 45 00 00              .byte 0xac, 0xe2, 0x4e, 0x00, 0xe4, 0x1e, 0x00, 0x00, 0xf4, 0x45, 0x00, 0x00

; FUNCTION 0x004a6874, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::FastTravelList
; alias: _ZN6Arrays14FastTravelList8finalizeEv
; demangled: Arrays::FastTravelList::finalize()
; decoder-mode: arm
004a6874  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a6878  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a687c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a6880  05 50 8f e0                                      add r5, pc, r5
004a6884  07 30 95 e7                                      ldr r3, [r5, r7]
004a6888  00 30 93 e5                                      ldr r3, [r3]
004a688c  00 00 53 e3                                      cmp r3, #0
004a6890  2c 00 00 0a                                      beq #0x4a6948
004a6894  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a6898  08 20 95 e7                                      ldr r2, [r5, r8]
004a689c  00 20 92 e5                                      ldr r2, [r2]
004a68a0  00 00 52 e3                                      cmp r2, #0
004a68a4  12 00 00 0a                                      beq #0x4a68f4
004a68a8  00 40 a0 e3                                      mov r4, #0
004a68ac  04 60 a0 e1                                      mov r6, r4
004a68b0  01 00 00 ea                                      b #0x4a68bc
004a68b4  07 30 95 e7                                      ldr r3, [r5, r7]
004a68b8  00 30 93 e5                                      ldr r3, [r3]
004a68bc  04 00 83 e0                                      add r0, r3, r4
004a68c0  04 30 93 e7                                      ldr r3, [r3, r4]
004a68c4  0f e0 a0 e1                                      mov lr, pc
004a68c8  08 f0 93 e5                                      ldr pc, [r3, #8]
004a68cc  08 30 95 e7                                      ldr r3, [r5, r8]
004a68d0  01 60 86 e2                                      add r6, r6, #1
004a68d4  1c 40 84 e2                                      add r4, r4, #0x1c
004a68d8  00 30 93 e5                                      ldr r3, [r3]
004a68dc  06 00 53 e1                                      cmp r3, r6
004a68e0  f3 ff ff 8a                                      bhi #0x4a68b4
004a68e4  07 30 95 e7                                      ldr r3, [r5, r7]
004a68e8  00 30 93 e5                                      ldr r3, [r3]
004a68ec  00 00 53 e3                                      cmp r3, #0
004a68f0  11 00 00 0a                                      beq #0x4a693c
004a68f4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a68f8  1c 00 a0 e3                                      mov r0, #0x1c
004a68fc  90 32 20 e0                                      mla r0, r0, r2, r3
004a6900  00 00 53 e1                                      cmp r3, r0
004a6904  01 00 00 1a                                      bne #0x4a6910
004a6908  09 00 00 ea                                      b #0x4a6934
004a690c  04 00 a0 e1                                      mov r0, r4
004a6910  1c 40 40 e2                                      sub r4, r0, #0x1c
004a6914  1c 30 10 e5                                      ldr r3, [r0, #-0x1c]
004a6918  04 00 a0 e1                                      mov r0, r4
004a691c  0f e0 a0 e1                                      mov lr, pc
004a6920  00 f0 93 e5                                      ldr pc, [r3]
004a6924  07 30 95 e7                                      ldr r3, [r5, r7]
004a6928  00 00 93 e5                                      ldr r0, [r3]
004a692c  04 00 50 e1                                      cmp r0, r4
004a6930  f5 ff ff 1a                                      bne #0x4a690c
004a6934  08 00 40 e2                                      sub r0, r0, #8
004a6938  c0 a6 f9 eb                                      bl #0x310440
004a693c  07 30 95 e7                                      ldr r3, [r5, r7]
004a6940  00 20 a0 e3                                      mov r2, #0
004a6944  00 20 83 e5                                      str r2, [r3]
004a6948  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a694c  10 e2 4e 00 7c 49 00 00 f4 45 00 00              .byte 0x10, 0xe2, 0x4e, 0x00, 0x7c, 0x49, 0x00, 0x00, 0xf4, 0x45, 0x00, 0x00

; FUNCTION 0x004b6964, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::FastTravelList
; alias: _ZN6Arrays14FastTravelList9readNamesEP11IStreamBase
; demangled: Arrays::FastTravelList::readNames(IStreamBase*)
; decoder-mode: arm
004b6964  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b6968  00 70 a0 e1                                      mov r7, r0
004b696c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b6970  98 bf ff eb                                      bl #0x4a67d8
004b6974  07 00 a0 e1                                      mov r0, r7
004b6978  44 74 f9 eb                                      bl #0x313a90
004b697c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b6980  01 30 a0 e3                                      mov r3, #1
004b6984  00 00 53 e3                                      cmp r3, #0
004b6988  06 60 8f e0                                      add r6, pc, r6
004b698c  14 00 8d e5                                      str r0, [sp, #0x14]
004b6990  0c 30 8d e5                                      str r3, [sp, #0xc]
004b6994  12 00 00 1a                                      bne #0x4b69e4
004b6998  14 30 8d e2                                      add r3, sp, #0x14
004b699c  02 20 83 e2                                      add r2, r3, #2
004b69a0  01 30 83 e2                                      add r3, r3, #1
004b69a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b69a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b69ac  03 00 52 e1                                      cmp r2, r3
004b69b0  02 40 a0 e1                                      mov r4, r2
004b69b4  01 10 20 e0                                      eor r1, r0, r1
004b69b8  01 10 43 e5                                      strb r1, [r3, #-1]
004b69bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b69c0  00 10 21 e0                                      eor r1, r1, r0
004b69c4  01 10 c2 e5                                      strb r1, [r2, #1]
004b69c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b69cc  01 20 42 e2                                      sub r2, r2, #1
004b69d0  00 10 21 e0                                      eor r1, r1, r0
004b69d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b69d8  01 30 83 e2                                      add r3, r3, #1
004b69dc  f0 ff ff 8a                                      bhi #0x4b69a4
004b69e0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b69e4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b69e8  03 30 96 e7                                      ldr r3, [r6, r3]
004b69ec  00 30 93 e5                                      ldr r3, [r3]
004b69f0  00 00 53 e1                                      cmp r3, r0
004b69f4  01 00 00 0a                                      beq #0x4b6a00
004b69f8  1c d0 8d e2                                      add sp, sp, #0x1c
004b69fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b6a00  00 01 a0 e1                                      lsl r0, r0, #2
004b6a04  01 10 a0 e3                                      mov r1, #1
004b6a08  d7 66 f9 eb                                      bl #0x31056c
004b6a0c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b6a10  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b6a14  09 30 96 e7                                      ldr r3, [r6, sb]
004b6a18  00 00 52 e3                                      cmp r2, #0
004b6a1c  00 00 83 e5                                      str r0, [r3]
004b6a20  f4 ff ff 0a                                      beq #0x4b69f8
004b6a24  10 a0 8d e2                                      add sl, sp, #0x10
004b6a28  01 80 a0 e3                                      mov r8, #1
004b6a2c  08 10 8a e0                                      add r1, sl, r8
004b6a30  02 30 8a e2                                      add r3, sl, #2
004b6a34  00 40 a0 e3                                      mov r4, #0
004b6a38  0a 00 8d e8                                      stm sp, {r1, r3}
004b6a3c  07 00 a0 e1                                      mov r0, r7
004b6a40  0a 10 a0 e1                                      mov r1, sl
004b6a44  d5 a1 fc eb                                      bl #0x3df1a0
004b6a48  00 00 58 e3                                      cmp r8, #0
004b6a4c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b6a50  0f 00 00 1a                                      bne #0x4b6a94
004b6a54  00 30 9d e5                                      ldr r3, [sp]
004b6a58  04 20 9d e5                                      ldr r2, [sp, #4]
004b6a5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6a60  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b6a64  03 00 52 e1                                      cmp r2, r3
004b6a68  01 10 20 e0                                      eor r1, r0, r1
004b6a6c  01 10 43 e5                                      strb r1, [r3, #-1]
004b6a70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b6a74  00 10 21 e0                                      eor r1, r1, r0
004b6a78  01 10 c2 e5                                      strb r1, [r2, #1]
004b6a7c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b6a80  01 20 42 e2                                      sub r2, r2, #1
004b6a84  00 10 21 e0                                      eor r1, r1, r0
004b6a88  01 10 43 e5                                      strb r1, [r3, #-1]
004b6a8c  01 30 83 e2                                      add r3, r3, #1
004b6a90  f1 ff ff 8a                                      bhi #0x4b6a5c
004b6a94  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b6a98  09 50 96 e7                                      ldr r5, [r6, sb]
004b6a9c  01 10 a0 e3                                      mov r1, #1
004b6aa0  01 00 80 e0                                      add r0, r0, r1
004b6aa4  00 b0 95 e5                                      ldr fp, [r5]
004b6aa8  af 66 f9 eb                                      bl #0x31056c
004b6aac  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b6ab0  00 30 95 e5                                      ldr r3, [r5]
004b6ab4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b6ab8  07 00 a0 e1                                      mov r0, r7
004b6abc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b6ac0  00 30 a0 e3                                      mov r3, #0
004b6ac4  62 82 f9 eb                                      bl #0x317454
004b6ac8  00 30 95 e5                                      ldr r3, [r5]
004b6acc  00 10 a0 e3                                      mov r1, #0
004b6ad0  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b6ad4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b6ad8  01 40 84 e2                                      add r4, r4, #1
004b6adc  03 10 c2 e7                                      strb r1, [r2, r3]
004b6ae0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b6ae4  04 00 53 e1                                      cmp r3, r4
004b6ae8  d3 ff ff 8a                                      bhi #0x4b6a3c
004b6aec  c1 ff ff ea                                      b #0x4b69f8
; mapping-symbol data/literal pool
004b6af0  08 e1 4d 00 f4 45 00 00 e4 1e 00 00              .byte 0x08, 0xe1, 0x4d, 0x00, 0xf4, 0x45, 0x00, 0x00, 0xe4, 0x1e, 0x00, 0x00

; FUNCTION 0x004ba8e4, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::FastTravelList
; alias: _ZN6Arrays14FastTravelList4readEP11IStreamBase
; demangled: Arrays::FastTravelList::read(IStreamBase*)
; decoder-mode: arm
004ba8e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba8e8  0c d0 4d e2                                      sub sp, sp, #0xc
004ba8ec  00 a0 a0 e1                                      mov sl, r0
004ba8f0  66 64 f9 eb                                      bl #0x313a90
004ba8f4  24 61 9f e5                                      ldr r6, [pc, #0x124]
004ba8f8  01 30 a0 e3                                      mov r3, #1
004ba8fc  00 00 53 e3                                      cmp r3, #0
004ba900  04 00 8d e5                                      str r0, [sp, #4]
004ba904  00 30 8d e5                                      str r3, [sp]
004ba908  06 60 8f e0                                      add r6, pc, r6
004ba90c  10 00 00 1a                                      bne #0x4ba954
004ba910  04 30 8d e2                                      add r3, sp, #4
004ba914  02 20 83 e2                                      add r2, r3, #2
004ba918  01 30 83 e2                                      add r3, r3, #1
004ba91c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba920  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba924  03 00 52 e1                                      cmp r2, r3
004ba928  01 10 20 e0                                      eor r1, r0, r1
004ba92c  01 10 43 e5                                      strb r1, [r3, #-1]
004ba930  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba934  00 10 21 e0                                      eor r1, r1, r0
004ba938  01 10 c2 e5                                      strb r1, [r2, #1]
004ba93c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba940  01 20 42 e2                                      sub r2, r2, #1
004ba944  00 10 21 e0                                      eor r1, r1, r0
004ba948  01 10 43 e5                                      strb r1, [r3, #-1]
004ba94c  01 30 83 e2                                      add r3, r3, #1
004ba950  f1 ff ff 8a                                      bhi #0x4ba91c
004ba954  c6 af ff eb                                      bl #0x4a6874
004ba958  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004ba95c  04 40 9d e5                                      ldr r4, [sp, #4]
004ba960  1c 50 a0 e3                                      mov r5, #0x1c
004ba964  07 30 96 e7                                      ldr r3, [r6, r7]
004ba968  95 04 00 e0                                      mul r0, r5, r4
004ba96c  00 40 83 e5                                      str r4, [r3]
004ba970  08 00 80 e2                                      add r0, r0, #8
004ba974  01 10 a0 e3                                      mov r1, #1
004ba978  fb 56 f9 eb                                      bl #0x31056c
004ba97c  00 00 54 e3                                      cmp r4, #0
004ba980  00 50 80 e5                                      str r5, [r0]
004ba984  04 40 80 e5                                      str r4, [r0, #4]
004ba988  08 30 80 e2                                      add r3, r0, #8
004ba98c  0a 00 00 0a                                      beq #0x4ba9bc
004ba990  90 10 9f e5                                      ldr r1, [pc, #0x90]
004ba994  00 20 a0 e3                                      mov r2, #0
004ba998  02 c0 a0 e1                                      mov ip, r2
004ba99c  01 10 96 e7                                      ldr r1, [r6, r1]
004ba9a0  08 10 81 e2                                      add r1, r1, #8
004ba9a4  01 20 82 e2                                      add r2, r2, #1
004ba9a8  04 00 52 e1                                      cmp r2, r4
004ba9ac  08 10 80 e5                                      str r1, [r0, #8]
004ba9b0  18 c0 80 e5                                      str ip, [r0, #0x18]
004ba9b4  1c 00 80 e2                                      add r0, r0, #0x1c
004ba9b8  f9 ff ff 1a                                      bne #0x4ba9a4
004ba9bc  07 20 96 e7                                      ldr r2, [r6, r7]
004ba9c0  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba9c4  00 10 92 e5                                      ldr r1, [r2]
004ba9c8  08 20 96 e7                                      ldr r2, [r6, r8]
004ba9cc  00 00 51 e3                                      cmp r1, #0
004ba9d0  00 30 82 e5                                      str r3, [r2]
004ba9d4  0f 00 00 0a                                      beq #0x4baa18
004ba9d8  00 40 a0 e3                                      mov r4, #0
004ba9dc  04 50 a0 e1                                      mov r5, r4
004ba9e0  01 00 00 ea                                      b #0x4ba9ec
004ba9e4  08 30 96 e7                                      ldr r3, [r6, r8]
004ba9e8  00 30 93 e5                                      ldr r3, [r3]
004ba9ec  04 00 83 e0                                      add r0, r3, r4
004ba9f0  0a 10 a0 e1                                      mov r1, sl
004ba9f4  04 30 93 e7                                      ldr r3, [r3, r4]
004ba9f8  0f e0 a0 e1                                      mov lr, pc
004ba9fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004baa00  07 30 96 e7                                      ldr r3, [r6, r7]
004baa04  01 50 85 e2                                      add r5, r5, #1
004baa08  1c 40 84 e2                                      add r4, r4, #0x1c
004baa0c  00 30 93 e5                                      ldr r3, [r3]
004baa10  05 00 53 e1                                      cmp r3, r5
004baa14  f2 ff ff 8a                                      bhi #0x4ba9e4
004baa18  0c d0 8d e2                                      add sp, sp, #0xc
004baa1c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004baa20  88 a1 4d 00 f4 45 00 00 78 10 00 00 7c 49 00 00  .byte 0x88, 0xa1, 0x4d, 0x00, 0xf4, 0x45, 0x00, 0x00, 0x78, 0x10, 0x00, 0x00, 0x7c, 0x49, 0x00, 0x00
