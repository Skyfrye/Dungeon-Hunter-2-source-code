; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052a504, declared_size=224, range_size=224, mode=arm
; class-group: SearchFailCache
; alias: _ZN15SearchFailCache3addERNS_5EntryE
; demangled: SearchFailCache::add(SearchFailCache::Entry&)
; decoder-mode: arm
0052a504  30 40 2d e9                                      push {r4, r5, lr}
0052a508  04 30 90 e5                                      ldr r3, [r0, #4]
0052a50c  00 c0 90 e5                                      ldr ip, [r0]
0052a510  01 50 a0 e1                                      mov r5, r1
0052a514  1c d0 4d e2                                      sub sp, sp, #0x1c
0052a518  03 10 6c e0                                      rsb r1, ip, r3
0052a51c  41 11 a0 e1                                      asr r1, r1, #2
0052a520  00 40 a0 e1                                      mov r4, r0
0052a524  01 21 81 e0                                      add r2, r1, r1, lsl #2
0052a528  02 22 82 e0                                      add r2, r2, r2, lsl #4
0052a52c  02 24 82 e0                                      add r2, r2, r2, lsl #8
0052a530  02 28 82 e0                                      add r2, r2, r2, lsl #16
0052a534  82 20 81 e0                                      add r2, r1, r2, lsl #1
0052a538  0a 00 52 e3                                      cmp r2, #0xa
0052a53c  08 00 00 9a                                      bls #0x52a564
0052a540  00 10 a0 e3                                      mov r1, #0
0052a544  00 00 52 e3                                      cmp r2, #0
0052a548  10 10 8d e5                                      str r1, [sp, #0x10]
0052a54c  08 10 8d e5                                      str r1, [sp, #8]
0052a550  0c 10 8d e5                                      str r1, [sp, #0xc]
0052a554  12 00 00 0a                                      beq #0x52a5a4
0052a558  0c 00 53 e1                                      cmp r3, ip
0052a55c  04 c0 80 15                                      strne ip, [r0, #4]
0052a560  0c 30 a0 11                                      movne r3, ip
0052a564  08 20 94 e5                                      ldr r2, [r4, #8]
0052a568  03 00 52 e1                                      cmp r2, r3
0052a56c  13 00 00 0a                                      beq #0x52a5c0
0052a570  05 10 a0 e1                                      mov r1, r5
0052a574  04 00 91 e4                                      ldr r0, [r1], #4
0052a578  03 20 a0 e1                                      mov r2, r3
0052a57c  04 00 82 e4                                      str r0, [r2], #4
0052a580  04 00 95 e5                                      ldr r0, [r5, #4]
0052a584  04 00 83 e5                                      str r0, [r3, #4]
0052a588  04 30 91 e5                                      ldr r3, [r1, #4]
0052a58c  04 30 82 e5                                      str r3, [r2, #4]
0052a590  04 30 94 e5                                      ldr r3, [r4, #4]
0052a594  0c 30 83 e2                                      add r3, r3, #0xc
0052a598  04 30 84 e5                                      str r3, [r4, #4]
0052a59c  1c d0 8d e2                                      add sp, sp, #0x1c
0052a5a0  30 80 bd e8                                      pop {r4, r5, pc}
0052a5a4  03 10 a0 e1                                      mov r1, r3
0052a5a8  08 30 8d e2                                      add r3, sp, #8
0052a5ac  b9 ff ff eb                                      bl #0x52a498
0052a5b0  04 30 94 e5                                      ldr r3, [r4, #4]
0052a5b4  08 20 94 e5                                      ldr r2, [r4, #8]
0052a5b8  03 00 52 e1                                      cmp r2, r3
0052a5bc  eb ff ff 1a                                      bne #0x52a570
0052a5c0  01 c0 a0 e3                                      mov ip, #1
0052a5c4  03 10 a0 e1                                      mov r1, r3
0052a5c8  04 00 a0 e1                                      mov r0, r4
0052a5cc  05 20 a0 e1                                      mov r2, r5
0052a5d0  14 30 8d e2                                      add r3, sp, #0x14
0052a5d4  04 c0 8d e5                                      str ip, [sp, #4]
0052a5d8  00 c0 8d e5                                      str ip, [sp]
0052a5dc  16 ff ff eb                                      bl #0x52a23c
0052a5e0  ed ff ff ea                                      b #0x52a59c
