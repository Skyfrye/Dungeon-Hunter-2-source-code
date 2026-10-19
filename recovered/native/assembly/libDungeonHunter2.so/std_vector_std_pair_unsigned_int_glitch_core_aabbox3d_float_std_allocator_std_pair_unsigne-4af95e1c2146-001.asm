; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a3bf4, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > > >
; alias: _ZNSt6vectorISt4pairIjN6glitch4core8aabbox3dIfEEESaIS5_EED1Ev
; demangled: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > > >::~vector()
; decoder-mode: arm
005a3bf4  10 40 2d e9                                      push {r4, lr}
005a3bf8  00 40 a0 e1                                      mov r4, r0
005a3bfc  00 00 90 e5                                      ldr r0, [r0]
005a3c00  00 00 50 e3                                      cmp r0, #0
005a3c04  0d 00 00 0a                                      beq #0x5a3c40
005a3c08  08 30 94 e5                                      ldr r3, [r4, #8]
005a3c0c  1c 10 a0 e3                                      mov r1, #0x1c
005a3c10  03 30 60 e0                                      rsb r3, r0, r3
005a3c14  43 31 a0 e1                                      asr r3, r3, #2
005a3c18  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a3c1c  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a3c20  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a3c24  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a3c28  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a3c2c  00 30 63 e2                                      rsb r3, r3, #0
005a3c30  91 03 01 e0                                      mul r1, r1, r3
005a3c34  80 00 51 e3                                      cmp r1, #0x80
005a3c38  02 00 00 8a                                      bhi #0x5a3c48
005a3c3c  af 94 05 eb                                      bl #0x708f00
005a3c40  04 00 a0 e1                                      mov r0, r4
005a3c44  10 80 bd e8                                      pop {r4, pc}
005a3c48  98 a9 f5 eb                                      bl #0x30e2b0
005a3c4c  04 00 a0 e1                                      mov r0, r4
005a3c50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a4ba4, declared_size=184, range_size=184, mode=arm
; class-group: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > > >
; alias: _ZNSt6vectorISt4pairIjN6glitch4core8aabbox3dIfEEESaIS5_EEC1Ej
; demangled: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, std::allocator<std::pair<unsigned int, glitch::core::aabbox3d<float> > > >::vector(unsigned int)
; decoder-mode: arm
005a4ba4  70 40 2d e9                                      push {r4, r5, r6, lr}
005a4ba8  08 d0 4d e2                                      sub sp, sp, #8
005a4bac  00 40 a0 e1                                      mov r4, r0
005a4bb0  00 50 a0 e3                                      mov r5, #0
005a4bb4  08 20 8d e2                                      add r2, sp, #8
005a4bb8  04 10 22 e5                                      str r1, [r2, #-4]!
005a4bbc  00 50 84 e5                                      str r5, [r4]
005a4bc0  04 50 84 e5                                      str r5, [r4, #4]
005a4bc4  08 50 a0 e5                                      str r5, [r0, #8]!
005a4bc8  01 60 a0 e1                                      mov r6, r1
005a4bcc  d2 ff ff eb                                      bl #0x5a4b1c
005a4bd0  1c 10 a0 e3                                      mov r1, #0x1c
005a4bd4  91 06 26 e0                                      mla r6, r1, r6, r0
005a4bd8  04 30 9d e5                                      ldr r3, [sp, #4]
005a4bdc  06 20 60 e0                                      rsb r2, r0, r6
005a4be0  42 21 a0 e1                                      asr r2, r2, #2
005a4be4  91 03 21 e0                                      mla r1, r1, r3, r0
005a4be8  82 31 82 e0                                      add r3, r2, r2, lsl #3
005a4bec  08 10 84 e5                                      str r1, [r4, #8]
005a4bf0  03 33 83 e0                                      add r3, r3, r3, lsl #6
005a4bf4  00 00 84 e5                                      str r0, [r4]
005a4bf8  83 31 82 e0                                      add r3, r2, r3, lsl #3
005a4bfc  04 00 84 e5                                      str r0, [r4, #4]
005a4c00  83 37 83 e0                                      add r3, r3, r3, lsl #15
005a4c04  83 31 82 e0                                      add r3, r2, r3, lsl #3
005a4c08  00 30 63 e2                                      rsb r3, r3, #0
005a4c0c  05 00 53 e1                                      cmp r3, r5
005a4c10  0d 00 00 da                                      ble #0x5a4c4c
005a4c14  bf 14 a0 e3                                      mov r1, #0xbf000000
005a4c18  02 15 81 e2                                      add r1, r1, #0x800000
005a4c1c  fe 25 a0 e3                                      mov r2, #0x3f800000
005a4c20  1c 00 80 e2                                      add r0, r0, #0x1c
005a4c24  01 30 53 e2                                      subs r3, r3, #1
005a4c28  1c 50 00 e5                                      str r5, [r0, #-0x1c]
005a4c2c  18 10 00 e5                                      str r1, [r0, #-0x18]
005a4c30  14 10 00 e5                                      str r1, [r0, #-0x14]
005a4c34  10 10 00 e5                                      str r1, [r0, #-0x10]
005a4c38  0c 20 00 e5                                      str r2, [r0, #-0xc]
005a4c3c  08 20 00 e5                                      str r2, [r0, #-8]
005a4c40  04 20 00 e5                                      str r2, [r0, #-4]
005a4c44  1c 00 80 e2                                      add r0, r0, #0x1c
005a4c48  f5 ff ff 1a                                      bne #0x5a4c24
005a4c4c  04 60 84 e5                                      str r6, [r4, #4]
005a4c50  04 00 a0 e1                                      mov r0, r4
005a4c54  08 d0 8d e2                                      add sp, sp, #8
005a4c58  70 80 bd e8                                      pop {r4, r5, r6, pc}
