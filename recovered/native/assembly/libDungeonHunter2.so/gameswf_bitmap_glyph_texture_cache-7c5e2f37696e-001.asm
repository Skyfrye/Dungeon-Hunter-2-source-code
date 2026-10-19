; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4648, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::bitmap_glyph_texture_cache
; alias: _ZN7gameswf26bitmap_glyph_texture_cacheC1Eii
; demangled: gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int, int)
; decoder-mode: arm
007c4648  10 40 2d e9                                      push {r4, lr}
007c464c  00 c0 a0 e3                                      mov ip, #0
007c4650  08 d0 4d e2                                      sub sp, sp, #8
007c4654  00 40 a0 e1                                      mov r4, r0
007c4658  04 30 a0 e3                                      mov r3, #4
007c465c  00 c0 8d e5                                      str ip, [sp]
007c4660  d6 3e ff eb                                      bl #0x7941c0
007c4664  04 00 a0 e1                                      mov r0, r4
007c4668  08 d0 8d e2                                      add sp, sp, #8
007c466c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c4670, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::bitmap_glyph_texture_cache
; alias: _ZN7gameswf26bitmap_glyph_texture_cacheC2Eii
; demangled: gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int, int)
; decoder-mode: arm
007c4670  10 40 2d e9                                      push {r4, lr}
007c4674  00 c0 a0 e3                                      mov ip, #0
007c4678  08 d0 4d e2                                      sub sp, sp, #8
007c467c  00 40 a0 e1                                      mov r4, r0
007c4680  04 30 a0 e3                                      mov r3, #4
007c4684  00 c0 8d e5                                      str ip, [sp]
007c4688  cc 3e ff eb                                      bl #0x7941c0
007c468c  04 00 a0 e1                                      mov r0, r4
007c4690  08 d0 8d e2                                      add sp, sp, #8
007c4694  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c53c4, declared_size=532, range_size=532, mode=arm
; class-group: gameswf::bitmap_glyph_texture_cache
; alias: _ZN7gameswf26bitmap_glyph_texture_cache16add_glyph_regionEtPvi
; demangled: gameswf::bitmap_glyph_texture_cache::add_glyph_region(unsigned short, void*, int)
; decoder-mode: arm
007c53c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c53c8  64 d0 4d e2                                      sub sp, sp, #0x64
007c53cc  02 40 a0 e1                                      mov r4, r2
007c53d0  01 70 a0 e1                                      mov r7, r1
007c53d4  03 60 a0 e1                                      mov r6, r3
007c53d8  00 50 a0 e1                                      mov r5, r0
007c53dc  3d fc ff eb                                      bl #0x7c44d8
007c53e0  14 30 8d e2                                      add r3, sp, #0x14
007c53e4  00 30 8d e5                                      str r3, [sp]
007c53e8  00 80 a0 e1                                      mov r8, r0
007c53ec  00 c0 94 e5                                      ldr ip, [r4]
007c53f0  04 00 a0 e1                                      mov r0, r4
007c53f4  48 10 8d e2                                      add r1, sp, #0x48
007c53f8  07 20 a0 e1                                      mov r2, r7
007c53fc  06 30 a0 e1                                      mov r3, r6
007c5400  0f e0 a0 e1                                      mov lr, pc
007c5404  08 f0 9c e5                                      ldr pc, [ip, #8]
007c5408  00 00 50 e3                                      cmp r0, #0
007c540c  02 00 00 1a                                      bne #0x7c541c
007c5410  00 00 a0 e3                                      mov r0, #0
007c5414  64 d0 8d e2                                      add sp, sp, #0x64
007c5418  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c541c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007c5420  50 30 9d e5                                      ldr r3, [sp, #0x50]
007c5424  58 10 8d e2                                      add r1, sp, #0x58
007c5428  01 20 82 e2                                      add r2, r2, #1
007c542c  01 30 83 e2                                      add r3, r3, #1
007c5430  5c 00 8d e2                                      add r0, sp, #0x5c
007c5434  5c 20 8d e5                                      str r2, [sp, #0x5c]
007c5438  58 30 8d e5                                      str r3, [sp, #0x58]
007c543c  47 38 ff eb                                      bl #0x793560
007c5440  05 00 a0 e1                                      mov r0, r5
007c5444  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007c5448  58 20 9d e5                                      ldr r2, [sp, #0x58]
007c544c  85 3c ff eb                                      bl #0x794668
007c5450  00 90 50 e2                                      subs sb, r0, #0
007c5454  ed ff ff 0a                                      beq #0x7c5410
007c5458  01 20 a0 e3                                      mov r2, #1
007c545c  d0 a0 c5 e1                                      ldrd sl, fp, [r5]
007c5460  76 10 ef e6                                      uxtb r1, r6
007c5464  0a 20 92 e0                                      adds r2, r2, sl
007c5468  00 30 a0 e3                                      mov r3, #0
007c546c  0b 30 a3 e0                                      adc r3, r3, fp
007c5470  05 00 a0 e1                                      mov r0, r5
007c5474  d0 a0 c5 e1                                      ldrd sl, fp, [r5]
007c5478  f0 a0 c9 e1                                      strd sl, fp, [sb]
007c547c  07 b0 a0 e1                                      mov fp, r7
007c5480  00 a0 a0 e3                                      mov sl, #0
007c5484  f0 23 c0 e0                                      strd r2, r3, [r0], #0x30
007c5488  01 78 a0 e1                                      lsl r7, r1, #0x10
007c548c  04 20 8a e1                                      orr r2, sl, r4
007c5490  0b 30 a0 e1                                      mov r3, fp
007c5494  f8 20 cd e1                                      strd r2, r3, [sp, #8]
007c5498  07 30 8b e1                                      orr r3, fp, r7
007c549c  0a 20 82 e1                                      orr r2, r2, sl
007c54a0  f8 23 cd e1                                      strd r2, r3, [sp, #0x38]
007c54a4  38 10 8d e2                                      add r1, sp, #0x38
007c54a8  00 30 a0 e3                                      mov r3, #0
007c54ac  00 20 a0 e3                                      mov r2, #0
007c54b0  f0 24 cd e1                                      strd r2, r3, [sp, #0x40]
007c54b4  ac ff ff eb                                      bl #0x7c536c
007c54b8  28 20 8d e2                                      add r2, sp, #0x28
007c54bc  09 10 a0 e1                                      mov r1, sb
007c54c0  00 90 80 e5                                      str sb, [r0]
007c54c4  05 00 a0 e1                                      mov r0, r5
007c54c8  d8 45 fe eb                                      bl #0x756c30
007c54cc  34 30 95 e5                                      ldr r3, [r5, #0x34]
007c54d0  38 60 95 e5                                      ldr r6, [r5, #0x38]
007c54d4  30 70 9d e5                                      ldr r7, [sp, #0x30]
007c54d8  03 00 a0 e1                                      mov r0, r3
007c54dc  00 30 93 e5                                      ldr r3, [r3]
007c54e0  0f e0 a0 e1                                      mov lr, pc
007c54e4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007c54e8  00 90 a0 e1                                      mov sb, r0
007c54ec  06 00 a0 e1                                      mov r0, r6
007c54f0  1b 25 ed eb                                      bl #0x30e964
007c54f4  00 40 a0 e1                                      mov r4, r0
007c54f8  09 00 a0 e1                                      mov r0, sb
007c54fc  18 25 ed eb                                      bl #0x30e964
007c5500  00 10 a0 e1                                      mov r1, r0
007c5504  07 00 a0 e1                                      mov r0, r7
007c5508  17 26 ed eb                                      bl #0x30ed6c
007c550c  04 10 a0 e1                                      mov r1, r4
007c5510  15 26 ed eb                                      bl #0x30ed6c
007c5514  28 10 9d e5                                      ldr r1, [sp, #0x28]
007c5518  00 70 a0 e1                                      mov r7, r0
007c551c  04 00 a0 e1                                      mov r0, r4
007c5520  11 26 ed eb                                      bl #0x30ed6c
007c5524  00 10 a0 e1                                      mov r1, r0
007c5528  07 00 a0 e1                                      mov r0, r7
007c552c  9c 25 ed eb                                      bl #0x30eba4
007c5530  e5 23 ed eb                                      bl #0x30e4cc
007c5534  34 30 95 e5                                      ldr r3, [r5, #0x34]
007c5538  00 80 88 e0                                      add r8, r8, r0
007c553c  03 00 a0 e1                                      mov r0, r3
007c5540  00 30 93 e5                                      ldr r3, [r3]
007c5544  0f e0 a0 e1                                      mov lr, pc
007c5548  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007c554c  58 30 9d e5                                      ldr r3, [sp, #0x58]
007c5550  96 00 05 e0                                      mul r5, r6, r0
007c5554  0a 00 53 e1                                      cmp r3, sl
007c5558  0a 00 00 da                                      ble #0x7c5588
007c555c  08 40 a0 e1                                      mov r4, r8
007c5560  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
007c5564  04 00 a0 e1                                      mov r0, r4
007c5568  00 10 a0 e3                                      mov r1, #0
007c556c  92 06 02 e0                                      mul r2, r2, r6
007c5570  ba 23 ed eb                                      bl #0x30e460
007c5574  58 30 9d e5                                      ldr r3, [sp, #0x58]
007c5578  01 a0 8a e2                                      add sl, sl, #1
007c557c  05 40 84 e0                                      add r4, r4, r5
007c5580  0a 00 53 e1                                      cmp r3, sl
007c5584  f5 ff ff ca                                      bgt #0x7c5560
007c5588  50 30 9d e5                                      ldr r3, [sp, #0x50]
007c558c  00 00 53 e3                                      cmp r3, #0
007c5590  0e 00 00 da                                      ble #0x7c55d0
007c5594  48 10 9d e5                                      ldr r1, [sp, #0x48]
007c5598  00 40 a0 e3                                      mov r4, #0
007c559c  00 00 00 ea                                      b #0x7c55a4
007c55a0  48 10 9d e5                                      ldr r1, [sp, #0x48]
007c55a4  54 30 9d e5                                      ldr r3, [sp, #0x54]
007c55a8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007c55ac  08 00 a0 e1                                      mov r0, r8
007c55b0  94 31 21 e0                                      mla r1, r4, r1, r3
007c55b4  92 06 02 e0                                      mul r2, r2, r6
007c55b8  aa 24 ed eb                                      bl #0x30e868
007c55bc  50 30 9d e5                                      ldr r3, [sp, #0x50]
007c55c0  01 40 84 e2                                      add r4, r4, #1
007c55c4  05 80 88 e0                                      add r8, r8, r5
007c55c8  04 00 53 e1                                      cmp r3, r4
007c55cc  f3 ff ff ca                                      bgt #0x7c55a0
007c55d0  01 00 a0 e3                                      mov r0, #1
007c55d4  8e ff ff ea                                      b #0x7c5414

; FUNCTION 0x007c55d8, declared_size=276, range_size=276, mode=arm
; class-group: gameswf::bitmap_glyph_texture_cache
; alias: _ZN7gameswf26bitmap_glyph_texture_cache16get_glyph_regionEtPviRNS_4rectE
; demangled: gameswf::bitmap_glyph_texture_cache::get_glyph_region(unsigned short, void*, int, gameswf::rect&)
; decoder-mode: arm
007c55d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c55dc  03 80 a0 e1                                      mov r8, r3
007c55e0  73 30 ef e6                                      uxtb r3, r3
007c55e4  24 d0 4d e2                                      sub sp, sp, #0x24
007c55e8  00 a0 a0 e3                                      mov sl, #0
007c55ec  03 38 a0 e1                                      lsl r3, r3, #0x10
007c55f0  08 a0 8d e5                                      str sl, [sp, #8]
007c55f4  00 40 a0 e1                                      mov r4, r0
007c55f8  0c 30 8d e5                                      str r3, [sp, #0xc]
007c55fc  02 00 8a e1                                      orr r0, sl, r2
007c5600  01 70 a0 e1                                      mov r7, r1
007c5604  01 b0 a0 e1                                      mov fp, r1
007c5608  02 60 a0 e1                                      mov r6, r2
007c560c  30 a0 84 e2                                      add sl, r4, #0x30
007c5610  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
007c5614  10 90 8d e2                                      add sb, sp, #0x10
007c5618  02 00 80 e1                                      orr r0, r0, r2
007c561c  03 10 81 e1                                      orr r1, r1, r3
007c5620  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
007c5624  00 20 a0 e3                                      mov r2, #0
007c5628  00 30 a0 e3                                      mov r3, #0
007c562c  0a 00 a0 e1                                      mov r0, sl
007c5630  09 10 a0 e1                                      mov r1, sb
007c5634  f8 21 cd e1                                      strd r2, r3, [sp, #0x18]
007c5638  37 46 fe eb                                      bl #0x756f1c
007c563c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
007c5640  00 00 50 e3                                      cmp r0, #0
007c5644  05 50 8f e0                                      add r5, pc, r5
007c5648  09 00 00 ba                                      blt #0x7c5674
007c564c  30 30 94 e5                                      ldr r3, [r4, #0x30]
007c5650  80 02 83 e0                                      add r0, r3, r0, lsl #5
007c5654  20 10 90 e5                                      ldr r1, [r0, #0x20]
007c5658  00 00 51 e3                                      cmp r1, #0
007c565c  02 00 00 0a                                      beq #0x7c566c
007c5660  04 00 a0 e1                                      mov r0, r4
007c5664  48 20 9d e5                                      ldr r2, [sp, #0x48]
007c5668  70 45 fe eb                                      bl #0x756c30
007c566c  24 d0 8d e2                                      add sp, sp, #0x24
007c5670  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c5674  04 00 a0 e1                                      mov r0, r4
007c5678  07 10 a0 e1                                      mov r1, r7
007c567c  06 20 a0 e1                                      mov r2, r6
007c5680  08 30 a0 e1                                      mov r3, r8
007c5684  4e ff ff eb                                      bl #0x7c53c4
007c5688  00 00 50 e3                                      cmp r0, #0
007c568c  05 00 00 0a                                      beq #0x7c56a8
007c5690  0a 00 a0 e1                                      mov r0, sl
007c5694  09 10 a0 e1                                      mov r1, sb
007c5698  1f 46 fe eb                                      bl #0x756f1c
007c569c  00 00 50 e3                                      cmp r0, #0
007c56a0  e9 ff ff aa                                      bge #0x7c564c
007c56a4  f0 ff ff ea                                      b #0x7c566c
007c56a8  38 30 9f e5                                      ldr r3, [pc, #0x38]
007c56ac  03 30 95 e7                                      ldr r3, [r5, r3]
007c56b0  00 30 93 e5                                      ldr r3, [r3]
007c56b4  03 00 a0 e1                                      mov r0, r3
007c56b8  00 30 93 e5                                      ldr r3, [r3]
007c56bc  0f e0 a0 e1                                      mov lr, pc
007c56c0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007c56c4  04 00 a0 e1                                      mov r0, r4
007c56c8  02 3a ff eb                                      bl #0x793ed8
007c56cc  04 00 a0 e1                                      mov r0, r4
007c56d0  07 10 a0 e1                                      mov r1, r7
007c56d4  06 20 a0 e1                                      mov r2, r6
007c56d8  08 30 a0 e1                                      mov r3, r8
007c56dc  38 ff ff eb                                      bl #0x7c53c4
007c56e0  ea ff ff ea                                      b #0x7c5690
; mapping-symbol data/literal pool
007c56e4  4c f4 1c 00 b4 39 00 00                          .byte 0x4c, 0xf4, 0x1c, 0x00, 0xb4, 0x39, 0x00, 0x00
