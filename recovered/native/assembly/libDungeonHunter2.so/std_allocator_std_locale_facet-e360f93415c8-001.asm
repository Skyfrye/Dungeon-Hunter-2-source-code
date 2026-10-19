; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a5dc0, declared_size=72, range_size=72, mode=thumb
; class-group: std::allocator<std::locale::facet*>
; alias: _ZNSaIPNSt6locale5facetEE11_M_allocateEjRj
; demangled: std::allocator<std::locale::facet*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: thumb
008a5dc0  10 b5                                            push {r4, lr}
008a5dc2  0f 4b                                            ldr r3, [pc, #0x3c]
008a5dc4  82 b0                                            sub sp, #8
008a5dc6  14 1c                                            adds r4, r2, #0
008a5dc8  99 42                                            cmp r1, r3
008a5dca  12 d8                                            bhi #0x8a5df2
008a5dcc  00 20                                            movs r0, #0
008a5dce  00 29                                            cmp r1, #0
008a5dd0  01 d1                                            bne #0x8a5dd6
008a5dd2  02 b0                                            add sp, #8
008a5dd4  10 bd                                            pop {r4, pc}
008a5dd6  88 00                                            lsls r0, r1, #2
008a5dd8  01 90                                            str r0, [sp, #4]
008a5dda  80 28                                            cmp r0, #0x80
008a5ddc  06 d8                                            bhi #0x8a5dec
008a5dde  01 a8                                            add r0, sp, #4
008a5de0  10 f0 08 fb                                      bl #0x8b63f4
008a5de4  01 9b                                            ldr r3, [sp, #4]
008a5de6  9b 08                                            lsrs r3, r3, #2
008a5de8  23 60                                            str r3, [r4]
008a5dea  f2 e7                                            b #0x8a5dd2
008a5dec  68 f6 4e e5                                      blx #0x30e88c
008a5df0  f8 e7                                            b #0x8a5de4
008a5df2  04 48                                            ldr r0, [pc, #0x10]
008a5df4  78 44                                            add r0, pc
008a5df6  68 f6 66 e1                                      blx #0x30e0c4
008a5dfa  01 20                                            movs r0, #1
008a5dfc  68 f6 24 e0                                      blx #0x30de48
; mapping-symbol data/literal pool
008a5e00  ff ff ff 3f 40 fb 06 00                          .byte 0xff, 0xff, 0xff, 0x3f, 0x40, 0xfb, 0x06, 0x00
