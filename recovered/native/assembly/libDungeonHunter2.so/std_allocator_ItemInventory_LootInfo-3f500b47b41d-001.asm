; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004024fc, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ItemInventory::LootInfo>
; alias: _ZNSaIN13ItemInventory8LootInfoEE11_M_allocateEjRj
; demangled: std::allocator<ItemInventory::LootInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004024fc  10 40 2d e9                                      push {r4, lr}
00402500  1f 02 71 e3                                      cmn r1, #0xf0000001
00402504  08 d0 4d e2                                      sub sp, sp, #8
00402508  02 40 a0 e1                                      mov r4, r2
0040250c  10 00 00 8a                                      bhi #0x402554
00402510  00 00 51 e3                                      cmp r1, #0
00402514  01 00 a0 01                                      moveq r0, r1
00402518  01 00 00 1a                                      bne #0x402524
0040251c  08 d0 8d e2                                      add sp, sp, #8
00402520  10 80 bd e8                                      pop {r4, pc}
00402524  01 02 a0 e1                                      lsl r0, r1, #4
00402528  80 00 50 e3                                      cmp r0, #0x80
0040252c  04 00 8d e5                                      str r0, [sp, #4]
00402530  05 00 00 8a                                      bhi #0x40254c
00402534  04 00 8d e2                                      add r0, sp, #4
00402538  60 1a 0c eb                                      bl #0x708ec0
0040253c  04 30 9d e5                                      ldr r3, [sp, #4]
00402540  23 32 a0 e1                                      lsr r3, r3, #4
00402544  00 30 84 e5                                      str r3, [r4]
00402548  f3 ff ff ea                                      b #0x40251c
0040254c  c0 37 fc eb                                      bl #0x310454
00402550  f9 ff ff ea                                      b #0x40253c
00402554  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00402558  00 00 8f e0                                      add r0, pc, r0
0040255c  d8 2e fc eb                                      bl #0x30e0c4
00402560  01 00 a0 e3                                      mov r0, #1
00402564  37 2e fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00402568  18 bf 4b 00                                      .byte 0x18, 0xbf, 0x4b, 0x00
