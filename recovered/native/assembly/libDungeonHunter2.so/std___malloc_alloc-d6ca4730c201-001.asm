; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b61c4, declared_size=48, range_size=48, mode=thumb
; class-group: std::__malloc_alloc
; alias: _ZNSt14__malloc_alloc18set_malloc_handlerEPFvvE
; demangled: std::__malloc_alloc::set_malloc_handler(void (*)())
; decoder-mode: thumb
008b61c4  70 b5                                            push {r4, r5, r6, lr}
008b61c6  08 4b                                            ldr r3, [pc, #0x20]
008b61c8  08 4a                                            ldr r2, [pc, #0x20]
008b61ca  06 1c                                            adds r6, r0, #0
008b61cc  7b 44                                            add r3, pc
008b61ce  9c 58                                            ldr r4, [r3, r2]
008b61d0  20 1c                                            adds r0, r4, #0
008b61d2  58 f6 ee e1                                      blx #0x30e5b0
008b61d6  06 4b                                            ldr r3, [pc, #0x18]
008b61d8  20 1c                                            adds r0, r4, #0
008b61da  7b 44                                            add r3, pc
008b61dc  1d 68                                            ldr r5, [r3]
008b61de  1e 60                                            str r6, [r3]
008b61e0  58 f6 d8 e0                                      blx #0x30e394
008b61e4  28 1c                                            adds r0, r5, #0
008b61e6  70 bd                                            pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008b61e8  c8 e8 0d 00 c0 3a 00 00 6a ed 17 00              .byte 0xc8, 0xe8, 0x0d, 0x00, 0xc0, 0x3a, 0x00, 0x00, 0x6a, 0xed, 0x17, 0x00

; FUNCTION 0x008b6524, declared_size=88, range_size=88, mode=thumb
; class-group: std::__malloc_alloc
; alias: _ZNSt14__malloc_alloc8allocateEj
; demangled: std::__malloc_alloc::allocate(unsigned int)
; decoder-mode: thumb
008b6524  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b6526  11 4c                                            ldr r4, [pc, #0x44]
008b6528  05 1c                                            adds r5, r0, #0
008b652a  7c 44                                            add r4, pc
008b652c  58 f6 e2 e0                                      blx #0x30e6f4
008b6530  00 28                                            cmp r0, #0
008b6532  00 d0                                            beq #0x8b6536
008b6534  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b6536  0e 4e                                            ldr r6, [pc, #0x38]
008b6538  0e 4b                                            ldr r3, [pc, #0x38]
008b653a  7e 44                                            add r6, pc
008b653c  e7 58                                            ldr r7, [r4, r3]
008b653e  05 e0                                            b #0x8b654c
008b6540  a0 47                                            blx r4
008b6542  28 1c                                            adds r0, r5, #0
008b6544  58 f6 d6 e0                                      blx #0x30e6f4
008b6548  00 28                                            cmp r0, #0
008b654a  f3 d1                                            bne #0x8b6534
008b654c  38 1c                                            adds r0, r7, #0
008b654e  58 f6 30 e0                                      blx #0x30e5b0
008b6552  34 68                                            ldr r4, [r6]
008b6554  38 1c                                            adds r0, r7, #0
008b6556  57 f6 1e e7                                      blx #0x30e394
008b655a  00 2c                                            cmp r4, #0
008b655c  f0 d1                                            bne #0x8b6540
008b655e  06 48                                            ldr r0, [pc, #0x18]
008b6560  78 44                                            add r0, pc
008b6562  57 f6 b0 e5                                      blx #0x30e0c4
008b6566  01 20                                            movs r0, #1
008b6568  57 f6 6e e4                                      blx #0x30de48
; mapping-symbol data/literal pool
008b656c  6a e5 0d 00 0a ea 17 00 c0 3a 00 00 d4 f3 05 00  .byte 0x6a, 0xe5, 0x0d, 0x00, 0x0a, 0xea, 0x17, 0x00, 0xc0, 0x3a, 0x00, 0x00, 0xd4, 0xf3, 0x05, 0x00
