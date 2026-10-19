; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a2e4, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_def9get_boundEPNS_4rectE
; demangled: gameswf::edit_text_character_def::get_bound(gameswf::rect*)
; decoder-mode: arm
0078a2e4  01 c0 a0 e1                                      mov ip, r1
0078a2e8  24 00 80 e2                                      add r0, r0, #0x24
0078a2ec  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0078a2f0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0078a2f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078b410, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_def15csm_textsettingEPNS_6streamEi
; demangled: gameswf::edit_text_character_def::csm_textsetting(gameswf::stream*, int)
; decoder-mode: arm
0078b410  70 40 2d e9                                      push {r4, r5, r6, lr}
0078b414  01 40 a0 e1                                      mov r4, r1
0078b418  00 50 a0 e1                                      mov r5, r0
0078b41c  02 10 a0 e3                                      mov r1, #2
0078b420  04 00 a0 e1                                      mov r0, r4
0078b424  5e e1 ff eb                                      bl #0x7839a4
0078b428  00 00 50 e2                                      subs r0, r0, #0
0078b42c  01 00 a0 13                                      movne r0, #1
0078b430  90 00 c5 e5                                      strb r0, [r5, #0x90]
0078b434  03 10 a0 e3                                      mov r1, #3
0078b438  04 00 a0 e1                                      mov r0, r4
0078b43c  58 e1 ff eb                                      bl #0x7839a4
0078b440  03 10 a0 e3                                      mov r1, #3
0078b444  94 00 85 e5                                      str r0, [r5, #0x94]
0078b448  04 00 a0 e1                                      mov r0, r4
0078b44c  54 e1 ff eb                                      bl #0x7839a4
0078b450  04 00 a0 e1                                      mov r0, r4
0078b454  93 e2 ff eb                                      bl #0x783ea8
0078b458  98 00 85 e5                                      str r0, [r5, #0x98]
0078b45c  04 00 a0 e1                                      mov r0, r4
0078b460  90 e2 ff eb                                      bl #0x783ea8
0078b464  9c 00 85 e5                                      str r0, [r5, #0x9c]
0078b468  04 00 a0 e1                                      mov r0, r4
0078b46c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078b470  ac e1 ff ea                                      b #0x783b28

; FUNCTION 0x0078b610, declared_size=584, range_size=584, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_def4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::edit_text_character_def::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078b610  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078b614  01 40 a0 e1                                      mov r4, r1
0078b618  00 50 a0 e1                                      mov r5, r0
0078b61c  24 00 80 e2                                      add r0, r0, #0x24
0078b620  71 2a 00 eb                                      bl #0x795fec
0078b624  04 00 a0 e1                                      mov r0, r4
0078b628  3a e1 ff eb                                      bl #0x783b18
0078b62c  01 10 a0 e3                                      mov r1, #1
0078b630  04 00 a0 e1                                      mov r0, r4
0078b634  da e0 ff eb                                      bl #0x7839a4
0078b638  01 10 a0 e3                                      mov r1, #1
0078b63c  00 60 a0 e1                                      mov r6, r0
0078b640  04 00 a0 e1                                      mov r0, r4
0078b644  d6 e0 ff eb                                      bl #0x7839a4
0078b648  00 00 50 e2                                      subs r0, r0, #0
0078b64c  01 00 a0 13                                      movne r0, #1
0078b650  48 00 c5 e5                                      strb r0, [r5, #0x48]
0078b654  01 10 a0 e3                                      mov r1, #1
0078b658  04 00 a0 e1                                      mov r0, r4
0078b65c  d0 e0 ff eb                                      bl #0x7839a4
0078b660  00 00 50 e2                                      subs r0, r0, #0
0078b664  01 00 a0 13                                      movne r0, #1
0078b668  49 00 c5 e5                                      strb r0, [r5, #0x49]
0078b66c  01 10 a0 e3                                      mov r1, #1
0078b670  04 00 a0 e1                                      mov r0, r4
0078b674  ca e0 ff eb                                      bl #0x7839a4
0078b678  00 00 50 e2                                      subs r0, r0, #0
0078b67c  01 00 a0 13                                      movne r0, #1
0078b680  4a 00 c5 e5                                      strb r0, [r5, #0x4a]
0078b684  01 10 a0 e3                                      mov r1, #1
0078b688  04 00 a0 e1                                      mov r0, r4
0078b68c  c4 e0 ff eb                                      bl #0x7839a4
0078b690  00 00 50 e2                                      subs r0, r0, #0
0078b694  01 00 a0 13                                      movne r0, #1
0078b698  4b 00 c5 e5                                      strb r0, [r5, #0x4b]
0078b69c  01 10 a0 e3                                      mov r1, #1
0078b6a0  04 00 a0 e1                                      mov r0, r4
0078b6a4  be e0 ff eb                                      bl #0x7839a4
0078b6a8  01 10 a0 e3                                      mov r1, #1
0078b6ac  00 a0 a0 e1                                      mov sl, r0
0078b6b0  04 00 a0 e1                                      mov r0, r4
0078b6b4  ba e0 ff eb                                      bl #0x7839a4
0078b6b8  01 10 a0 e3                                      mov r1, #1
0078b6bc  00 80 a0 e1                                      mov r8, r0
0078b6c0  04 00 a0 e1                                      mov r0, r4
0078b6c4  b6 e0 ff eb                                      bl #0x7839a4
0078b6c8  01 10 a0 e3                                      mov r1, #1
0078b6cc  00 90 a0 e1                                      mov sb, r0
0078b6d0  04 00 a0 e1                                      mov r0, r4
0078b6d4  b2 e0 ff eb                                      bl #0x7839a4
0078b6d8  01 10 a0 e3                                      mov r1, #1
0078b6dc  04 00 a0 e1                                      mov r0, r4
0078b6e0  af e0 ff eb                                      bl #0x7839a4
0078b6e4  00 00 50 e2                                      subs r0, r0, #0
0078b6e8  01 00 a0 13                                      movne r0, #1
0078b6ec  4c 00 c5 e5                                      strb r0, [r5, #0x4c]
0078b6f0  01 10 a0 e3                                      mov r1, #1
0078b6f4  04 00 a0 e1                                      mov r0, r4
0078b6f8  a9 e0 ff eb                                      bl #0x7839a4
0078b6fc  01 10 a0 e3                                      mov r1, #1
0078b700  00 70 a0 e1                                      mov r7, r0
0078b704  04 00 a0 e1                                      mov r0, r4
0078b708  a5 e0 ff eb                                      bl #0x7839a4
0078b70c  00 00 50 e2                                      subs r0, r0, #0
0078b710  01 00 a0 13                                      movne r0, #1
0078b714  4d 00 c5 e5                                      strb r0, [r5, #0x4d]
0078b718  01 10 a0 e3                                      mov r1, #1
0078b71c  04 00 a0 e1                                      mov r0, r4
0078b720  9f e0 ff eb                                      bl #0x7839a4
0078b724  00 00 50 e2                                      subs r0, r0, #0
0078b728  01 00 a0 13                                      movne r0, #1
0078b72c  4e 00 c5 e5                                      strb r0, [r5, #0x4e]
0078b730  01 10 a0 e3                                      mov r1, #1
0078b734  04 00 a0 e1                                      mov r0, r4
0078b738  99 e0 ff eb                                      bl #0x7839a4
0078b73c  01 10 a0 e3                                      mov r1, #1
0078b740  04 00 a0 e1                                      mov r0, r4
0078b744  96 e0 ff eb                                      bl #0x7839a4
0078b748  00 00 50 e2                                      subs r0, r0, #0
0078b74c  01 00 a0 13                                      movne r0, #1
0078b750  4f 00 c5 e5                                      strb r0, [r5, #0x4f]
0078b754  01 10 a0 e3                                      mov r1, #1
0078b758  04 00 a0 e1                                      mov r0, r4
0078b75c  90 e0 ff eb                                      bl #0x7839a4
0078b760  00 00 50 e2                                      subs r0, r0, #0
0078b764  01 00 a0 13                                      movne r0, #1
0078b768  00 00 59 e3                                      cmp sb, #0
0078b76c  50 00 c5 e5                                      strb r0, [r5, #0x50]
0078b770  30 00 00 1a                                      bne #0x78b838
0078b774  00 00 5a e3                                      cmp sl, #0
0078b778  2a 00 00 1a                                      bne #0x78b828
0078b77c  00 00 58 e3                                      cmp r8, #0
0078b780  24 00 00 1a                                      bne #0x78b818
0078b784  00 00 57 e3                                      cmp r7, #0
0078b788  0c 00 00 1a                                      bne #0x78b7c0
0078b78c  04 00 a0 e1                                      mov r0, r4
0078b790  34 10 85 e2                                      add r1, r5, #0x34
0078b794  8b e2 ff eb                                      bl #0x7841c8
0078b798  00 00 56 e3                                      cmp r6, #0
0078b79c  00 00 00 1a                                      bne #0x78b7a4
0078b7a0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0078b7a4  7c 50 85 e2                                      add r5, r5, #0x7c
0078b7a8  04 00 a0 e1                                      mov r0, r4
0078b7ac  05 10 a0 e1                                      mov r1, r5
0078b7b0  84 e2 ff eb                                      bl #0x7841c8
0078b7b4  05 00 a0 e1                                      mov r0, r5
0078b7b8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0078b7bc  45 ff ff ea                                      b #0x78b4d8
0078b7c0  04 00 a0 e1                                      mov r0, r4
0078b7c4  d7 e0 ff eb                                      bl #0x783b28
0078b7c8  68 00 85 e5                                      str r0, [r5, #0x68]
0078b7cc  04 00 a0 e1                                      mov r0, r4
0078b7d0  0f e1 ff eb                                      bl #0x783c14
0078b7d4  c1 0a ee eb                                      bl #0x30e2e0
0078b7d8  6c 00 85 e5                                      str r0, [r5, #0x6c]
0078b7dc  04 00 a0 e1                                      mov r0, r4
0078b7e0  0b e1 ff eb                                      bl #0x783c14
0078b7e4  bd 0a ee eb                                      bl #0x30e2e0
0078b7e8  70 00 85 e5                                      str r0, [r5, #0x70]
0078b7ec  04 00 a0 e1                                      mov r0, r4
0078b7f0  14 e1 ff eb                                      bl #0x783c48
0078b7f4  70 00 bf e6                                      sxth r0, r0
0078b7f8  59 0c ee eb                                      bl #0x30e964
0078b7fc  74 00 85 e5                                      str r0, [r5, #0x74]
0078b800  04 00 a0 e1                                      mov r0, r4
0078b804  0f e1 ff eb                                      bl #0x783c48
0078b808  70 00 bf e6                                      sxth r0, r0
0078b80c  54 0c ee eb                                      bl #0x30e964
0078b810  78 00 85 e5                                      str r0, [r5, #0x78]
0078b814  dc ff ff ea                                      b #0x78b78c
0078b818  04 00 a0 e1                                      mov r0, r4
0078b81c  fc e0 ff eb                                      bl #0x783c14
0078b820  64 00 85 e5                                      str r0, [r5, #0x64]
0078b824  d6 ff ff ea                                      b #0x78b784
0078b828  60 00 85 e2                                      add r0, r5, #0x60
0078b82c  04 10 a0 e1                                      mov r1, r4
0078b830  14 2c 00 eb                                      bl #0x796888
0078b834  d0 ff ff ea                                      b #0x78b77c
0078b838  04 00 a0 e1                                      mov r0, r4
0078b83c  f4 e0 ff eb                                      bl #0x783c14
0078b840  54 00 85 e5                                      str r0, [r5, #0x54]
0078b844  04 00 a0 e1                                      mov r0, r4
0078b848  f1 e0 ff eb                                      bl #0x783c14
0078b84c  a3 0a ee eb                                      bl #0x30e2e0
0078b850  5c 00 85 e5                                      str r0, [r5, #0x5c]
0078b854  c6 ff ff ea                                      b #0x78b774

; FUNCTION 0x0078c4dc, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defD1Ev
; demangled: gameswf::edit_text_character_def::~edit_text_character_def()
; decoder-mode: arm
0078c4dc  10 40 2d e9                                      push {r4, lr}
0078c4e0  70 30 9f e5                                      ldr r3, [pc, #0x70]
0078c4e4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0078c4e8  dc 17 d0 e1                                      ldrsb r1, [r0, #0x7c]
0078c4ec  03 30 8f e0                                      add r3, pc, r3
0078c4f0  02 20 93 e7                                      ldr r2, [r3, r2]
0078c4f4  01 00 71 e3                                      cmn r1, #1
0078c4f8  00 40 a0 e1                                      mov r4, r0
0078c4fc  08 20 82 e2                                      add r2, r2, #8
0078c500  00 20 80 e5                                      str r2, [r0]
0078c504  06 00 00 0a                                      beq #0x78c524
0078c508  d4 33 d4 e1                                      ldrsb r3, [r4, #0x34]
0078c50c  01 00 73 e3                                      cmn r3, #1
0078c510  09 00 00 0a                                      beq #0x78c53c
0078c514  04 00 a0 e1                                      mov r0, r4
0078c518  56 46 ff eb                                      bl #0x75de78
0078c51c  04 00 a0 e1                                      mov r0, r4
0078c520  10 80 bd e8                                      pop {r4, pc}
0078c524  88 00 90 e5                                      ldr r0, [r0, #0x88]
0078c528  84 10 94 e5                                      ldr r1, [r4, #0x84]
0078c52c  81 19 ff eb                                      bl #0x752b38
0078c530  d4 33 d4 e1                                      ldrsb r3, [r4, #0x34]
0078c534  01 00 73 e3                                      cmn r3, #1
0078c538  f5 ff ff 1a                                      bne #0x78c514
0078c53c  40 00 94 e5                                      ldr r0, [r4, #0x40]
0078c540  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0078c544  7b 19 ff eb                                      bl #0x752b38
0078c548  04 00 a0 e1                                      mov r0, r4
0078c54c  49 46 ff eb                                      bl #0x75de78
0078c550  04 00 a0 e1                                      mov r0, r4
0078c554  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0078c558  a4 85 20 00 6c 16 00 00                          .byte 0xa4, 0x85, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00

; FUNCTION 0x0078c560, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defD0Ev
; demangled: gameswf::edit_text_character_def::~edit_text_character_def()
; decoder-mode: arm
0078c560  10 40 2d e9                                      push {r4, lr}
0078c564  00 40 a0 e1                                      mov r4, r0
0078c568  db ff ff eb                                      bl #0x78c4dc
0078c56c  04 00 a0 e1                                      mov r0, r4
0078c570  4e 07 ee eb                                      bl #0x30e2b0
0078c574  04 00 a0 e1                                      mov r0, r4
0078c578  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0078c57c, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defD2Ev
; demangled: gameswf::edit_text_character_def::~edit_text_character_def()
; decoder-mode: arm
0078c57c  10 40 2d e9                                      push {r4, lr}
0078c580  70 30 9f e5                                      ldr r3, [pc, #0x70]
0078c584  70 20 9f e5                                      ldr r2, [pc, #0x70]
0078c588  dc 17 d0 e1                                      ldrsb r1, [r0, #0x7c]
0078c58c  03 30 8f e0                                      add r3, pc, r3
0078c590  02 20 93 e7                                      ldr r2, [r3, r2]
0078c594  01 00 71 e3                                      cmn r1, #1
0078c598  00 40 a0 e1                                      mov r4, r0
0078c59c  08 20 82 e2                                      add r2, r2, #8
0078c5a0  00 20 80 e5                                      str r2, [r0]
0078c5a4  06 00 00 0a                                      beq #0x78c5c4
0078c5a8  d4 33 d4 e1                                      ldrsb r3, [r4, #0x34]
0078c5ac  01 00 73 e3                                      cmn r3, #1
0078c5b0  09 00 00 0a                                      beq #0x78c5dc
0078c5b4  04 00 a0 e1                                      mov r0, r4
0078c5b8  2e 46 ff eb                                      bl #0x75de78
0078c5bc  04 00 a0 e1                                      mov r0, r4
0078c5c0  10 80 bd e8                                      pop {r4, pc}
0078c5c4  88 00 90 e5                                      ldr r0, [r0, #0x88]
0078c5c8  84 10 94 e5                                      ldr r1, [r4, #0x84]
0078c5cc  59 19 ff eb                                      bl #0x752b38
0078c5d0  d4 33 d4 e1                                      ldrsb r3, [r4, #0x34]
0078c5d4  01 00 73 e3                                      cmn r3, #1
0078c5d8  f5 ff ff 1a                                      bne #0x78c5b4
0078c5dc  40 00 94 e5                                      ldr r0, [r4, #0x40]
0078c5e0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0078c5e4  53 19 ff eb                                      bl #0x752b38
0078c5e8  04 00 a0 e1                                      mov r0, r4
0078c5ec  21 46 ff eb                                      bl #0x75de78
0078c5f0  04 00 a0 e1                                      mov r0, r4
0078c5f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0078c5f8  04 85 20 00 6c 16 00 00                          .byte 0x04, 0x85, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00

; FUNCTION 0x0078cad4, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_def25create_character_instanceEPNS_9characterEi
; demangled: gameswf::edit_text_character_def::create_character_instance(gameswf::character*, int)
; decoder-mode: arm
0078cad4  70 40 2d e9                                      push {r4, r5, r6, lr}
0078cad8  58 30 90 e5                                      ldr r3, [r0, #0x58]
0078cadc  00 40 a0 e1                                      mov r4, r0
0078cae0  01 60 a0 e1                                      mov r6, r1
0078cae4  00 00 53 e3                                      cmp r3, #0
0078cae8  02 50 a0 e1                                      mov r5, r2
0078caec  16 00 00 0a                                      beq #0x78cb4c
0078caf0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0078caf4  00 00 50 e3                                      cmp r0, #0
0078caf8  03 00 00 0a                                      beq #0x78cb0c
0078cafc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0078cb00  04 20 d3 e5                                      ldrb r2, [r3, #4]
0078cb04  00 00 52 e3                                      cmp r2, #0
0078cb08  04 00 00 0a                                      beq #0x78cb20
0078cb0c  04 10 a0 e1                                      mov r1, r4
0078cb10  06 20 a0 e1                                      mov r2, r6
0078cb14  05 30 a0 e1                                      mov r3, r5
0078cb18  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078cb1c  08 80 ff ea                                      b #0x76cb44
0078cb20  00 10 93 e5                                      ldr r1, [r3]
0078cb24  01 10 41 e2                                      sub r1, r1, #1
0078cb28  00 00 51 e3                                      cmp r1, #0
0078cb2c  00 10 83 e5                                      str r1, [r3]
0078cb30  01 00 00 1a                                      bne #0x78cb3c
0078cb34  03 00 a0 e1                                      mov r0, r3
0078cb38  fe 17 ff eb                                      bl #0x752b38
0078cb3c  00 00 a0 e3                                      mov r0, #0
0078cb40  18 00 84 e5                                      str r0, [r4, #0x18]
0078cb44  1c 00 84 e5                                      str r0, [r4, #0x1c]
0078cb48  ef ff ff ea                                      b #0x78cb0c
0078cb4c  20 30 90 e5                                      ldr r3, [r0, #0x20]
0078cb50  00 00 53 e3                                      cmp r3, #0
0078cb54  e5 ff ff 0a                                      beq #0x78caf0
0078cb58  03 00 a0 e1                                      mov r0, r3
0078cb5c  54 10 94 e5                                      ldr r1, [r4, #0x54]
0078cb60  00 30 93 e5                                      ldr r3, [r3]
0078cb64  0f e0 a0 e1                                      mov lr, pc
0078cb68  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0078cb6c  00 00 50 e3                                      cmp r0, #0
0078cb70  58 00 84 e5                                      str r0, [r4, #0x58]
0078cb74  dd ff ff 1a                                      bne #0x78caf0
0078cb78  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0078cb7c  54 10 94 e5                                      ldr r1, [r4, #0x54]
0078cb80  00 00 8f e0                                      add r0, pc, r0
0078cb84  7e 51 ff eb                                      bl #0x761184
0078cb88  d8 ff ff ea                                      b #0x78caf0
; mapping-symbol data/literal pool
0078cb8c  f8 d2 17 00                                      .byte 0xf8, 0xd2, 0x17, 0x00

; FUNCTION 0x0078d6d0, declared_size=252, range_size=252, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defC1EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::edit_text_character_def::edit_text_character_def(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078d6d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078d6d4  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0078d6d8  00 50 a0 e1                                      mov r5, r0
0078d6dc  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
0078d6e0  02 60 a0 e1                                      mov r6, r2
0078d6e4  d6 44 ff eb                                      bl #0x75ea44
0078d6e8  44 c0 95 e5                                      ldr ip, [r5, #0x44]
0078d6ec  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
0078d6f0  04 40 8f e0                                      add r4, pc, r4
0078d6f4  00 10 e0 e3                                      mvn r1, #0
0078d6f8  07 70 94 e7                                      ldr r7, [r4, r7]
0078d6fc  11 00 d7 e7                                      bfi r0, r1, #0, #0x18
0078d700  11 c0 d7 e7                                      bfi ip, r1, #0, #0x18
0078d704  00 30 a0 e3                                      mov r3, #0
0078d708  20 60 85 e5                                      str r6, [r5, #0x20]
0078d70c  2c 9c a0 e1                                      lsr sb, ip, #0x18
0078d710  20 ac a0 e1                                      lsr sl, r0, #0x18
0078d714  43 64 a0 e3                                      mov r6, #0x43000000
0078d718  00 20 a0 e3                                      mov r2, #0
0078d71c  01 80 a0 e3                                      mov r8, #1
0078d720  08 70 87 e2                                      add r7, r7, #8
0078d724  13 90 c0 e7                                      bfi sb, r3, #0, #1
0078d728  13 a0 c0 e7                                      bfi sl, r3, #0, #1
0078d72c  07 66 86 e2                                      add r6, r6, #0x700000
0078d730  8c 00 85 e5                                      str r0, [r5, #0x8c]
0078d734  44 c0 85 e5                                      str ip, [r5, #0x44]
0078d738  00 70 85 e5                                      str r7, [r5]
0078d73c  5c 60 85 e5                                      str r6, [r5, #0x5c]
0078d740  7c 80 c5 e5                                      strb r8, [r5, #0x7c]
0078d744  47 90 c5 e5                                      strb sb, [r5, #0x47]
0078d748  8f a0 c5 e5                                      strb sl, [r5, #0x8f]
0078d74c  34 80 c5 e5                                      strb r8, [r5, #0x34]
0078d750  35 30 c5 e5                                      strb r3, [r5, #0x35]
0078d754  48 30 c5 e5                                      strb r3, [r5, #0x48]
0078d758  49 30 c5 e5                                      strb r3, [r5, #0x49]
0078d75c  4a 30 c5 e5                                      strb r3, [r5, #0x4a]
0078d760  4b 30 c5 e5                                      strb r3, [r5, #0x4b]
0078d764  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0078d768  4d 30 c5 e5                                      strb r3, [r5, #0x4d]
0078d76c  4e 30 c5 e5                                      strb r3, [r5, #0x4e]
0078d770  4f 30 c5 e5                                      strb r3, [r5, #0x4f]
0078d774  50 30 c5 e5                                      strb r3, [r5, #0x50]
0078d778  54 10 85 e5                                      str r1, [r5, #0x54]
0078d77c  58 30 85 e5                                      str r3, [r5, #0x58]
0078d780  63 10 c5 e5                                      strb r1, [r5, #0x63]
0078d784  64 30 85 e5                                      str r3, [r5, #0x64]
0078d788  68 30 85 e5                                      str r3, [r5, #0x68]
0078d78c  6c 20 85 e5                                      str r2, [r5, #0x6c]
0078d790  70 20 85 e5                                      str r2, [r5, #0x70]
0078d794  74 20 85 e5                                      str r2, [r5, #0x74]
0078d798  78 20 85 e5                                      str r2, [r5, #0x78]
0078d79c  7d 30 c5 e5                                      strb r3, [r5, #0x7d]
0078d7a0  90 30 c5 e5                                      strb r3, [r5, #0x90]
0078d7a4  94 30 85 e5                                      str r3, [r5, #0x94]
0078d7a8  05 00 a0 e1                                      mov r0, r5
0078d7ac  9c 20 85 e5                                      str r2, [r5, #0x9c]
0078d7b0  62 30 c5 e5                                      strb r3, [r5, #0x62]
0078d7b4  98 20 85 e5                                      str r2, [r5, #0x98]
0078d7b8  60 30 c5 e5                                      strb r3, [r5, #0x60]
0078d7bc  61 30 c5 e5                                      strb r3, [r5, #0x61]
0078d7c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0078d7c4  a0 73 20 00 6c 16 00 00                          .byte 0xa0, 0x73, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00

; FUNCTION 0x0078d874, declared_size=252, range_size=252, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defC2EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::edit_text_character_def::edit_text_character_def(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078d874  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078d878  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0078d87c  00 50 a0 e1                                      mov r5, r0
0078d880  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
0078d884  02 60 a0 e1                                      mov r6, r2
0078d888  6d 44 ff eb                                      bl #0x75ea44
0078d88c  44 c0 95 e5                                      ldr ip, [r5, #0x44]
0078d890  8c 00 95 e5                                      ldr r0, [r5, #0x8c]
0078d894  04 40 8f e0                                      add r4, pc, r4
0078d898  00 10 e0 e3                                      mvn r1, #0
0078d89c  07 70 94 e7                                      ldr r7, [r4, r7]
0078d8a0  11 00 d7 e7                                      bfi r0, r1, #0, #0x18
0078d8a4  11 c0 d7 e7                                      bfi ip, r1, #0, #0x18
0078d8a8  00 30 a0 e3                                      mov r3, #0
0078d8ac  20 60 85 e5                                      str r6, [r5, #0x20]
0078d8b0  2c 9c a0 e1                                      lsr sb, ip, #0x18
0078d8b4  20 ac a0 e1                                      lsr sl, r0, #0x18
0078d8b8  43 64 a0 e3                                      mov r6, #0x43000000
0078d8bc  00 20 a0 e3                                      mov r2, #0
0078d8c0  01 80 a0 e3                                      mov r8, #1
0078d8c4  08 70 87 e2                                      add r7, r7, #8
0078d8c8  13 90 c0 e7                                      bfi sb, r3, #0, #1
0078d8cc  13 a0 c0 e7                                      bfi sl, r3, #0, #1
0078d8d0  07 66 86 e2                                      add r6, r6, #0x700000
0078d8d4  8c 00 85 e5                                      str r0, [r5, #0x8c]
0078d8d8  44 c0 85 e5                                      str ip, [r5, #0x44]
0078d8dc  00 70 85 e5                                      str r7, [r5]
0078d8e0  5c 60 85 e5                                      str r6, [r5, #0x5c]
0078d8e4  7c 80 c5 e5                                      strb r8, [r5, #0x7c]
0078d8e8  47 90 c5 e5                                      strb sb, [r5, #0x47]
0078d8ec  8f a0 c5 e5                                      strb sl, [r5, #0x8f]
0078d8f0  34 80 c5 e5                                      strb r8, [r5, #0x34]
0078d8f4  35 30 c5 e5                                      strb r3, [r5, #0x35]
0078d8f8  48 30 c5 e5                                      strb r3, [r5, #0x48]
0078d8fc  49 30 c5 e5                                      strb r3, [r5, #0x49]
0078d900  4a 30 c5 e5                                      strb r3, [r5, #0x4a]
0078d904  4b 30 c5 e5                                      strb r3, [r5, #0x4b]
0078d908  4c 30 c5 e5                                      strb r3, [r5, #0x4c]
0078d90c  4d 30 c5 e5                                      strb r3, [r5, #0x4d]
0078d910  4e 30 c5 e5                                      strb r3, [r5, #0x4e]
0078d914  4f 30 c5 e5                                      strb r3, [r5, #0x4f]
0078d918  50 30 c5 e5                                      strb r3, [r5, #0x50]
0078d91c  54 10 85 e5                                      str r1, [r5, #0x54]
0078d920  58 30 85 e5                                      str r3, [r5, #0x58]
0078d924  63 10 c5 e5                                      strb r1, [r5, #0x63]
0078d928  64 30 85 e5                                      str r3, [r5, #0x64]
0078d92c  68 30 85 e5                                      str r3, [r5, #0x68]
0078d930  6c 20 85 e5                                      str r2, [r5, #0x6c]
0078d934  70 20 85 e5                                      str r2, [r5, #0x70]
0078d938  74 20 85 e5                                      str r2, [r5, #0x74]
0078d93c  78 20 85 e5                                      str r2, [r5, #0x78]
0078d940  7d 30 c5 e5                                      strb r3, [r5, #0x7d]
0078d944  90 30 c5 e5                                      strb r3, [r5, #0x90]
0078d948  94 30 85 e5                                      str r3, [r5, #0x94]
0078d94c  05 00 a0 e1                                      mov r0, r5
0078d950  9c 20 85 e5                                      str r2, [r5, #0x9c]
0078d954  62 30 c5 e5                                      strb r3, [r5, #0x62]
0078d958  98 20 85 e5                                      str r2, [r5, #0x98]
0078d95c  60 30 c5 e5                                      strb r3, [r5, #0x60]
0078d960  61 30 c5 e5                                      strb r3, [r5, #0x61]
0078d964  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0078d968  fc 71 20 00 6c 16 00 00                          .byte 0xfc, 0x71, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00

; FUNCTION 0x0078d970, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defC1EPNS_6playerEii
; demangled: gameswf::edit_text_character_def::edit_text_character_def(gameswf::player*, int, int)
; decoder-mode: arm
0078d970  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078d974  54 41 9f e5                                      ldr r4, [pc, #0x154]
0078d978  00 60 a0 e1                                      mov r6, r0
0078d97c  02 50 a0 e1                                      mov r5, r2
0078d980  03 a0 a0 e1                                      mov sl, r3
0078d984  01 80 a0 e1                                      mov r8, r1
0078d988  2d 44 ff eb                                      bl #0x75ea44
0078d98c  40 e1 9f e5                                      ldr lr, [pc, #0x140]
0078d990  44 c0 96 e5                                      ldr ip, [r6, #0x44]
0078d994  04 40 8f e0                                      add r4, pc, r4
0078d998  8c 20 96 e5                                      ldr r2, [r6, #0x8c]
0078d99c  0e e0 94 e7                                      ldr lr, [r4, lr]
0078d9a0  00 00 e0 e3                                      mvn r0, #0
0078d9a4  10 c0 d7 e7                                      bfi ip, r0, #0, #0x18
0078d9a8  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
0078d9ac  2c 1c a0 e1                                      lsr r1, ip, #0x18
0078d9b0  08 e0 8e e2                                      add lr, lr, #8
0078d9b4  00 70 a0 e3                                      mov r7, #0
0078d9b8  00 e0 86 e5                                      str lr, [r6]
0078d9bc  01 b0 a0 e1                                      mov fp, r1
0078d9c0  43 e4 a0 e3                                      mov lr, #0x43000000
0078d9c4  22 1c a0 e1                                      lsr r1, r2, #0x18
0078d9c8  00 30 a0 e3                                      mov r3, #0
0078d9cc  07 e6 8e e2                                      add lr, lr, #0x700000
0078d9d0  17 10 c0 e7                                      bfi r1, r7, #0, #1
0078d9d4  01 90 a0 e3                                      mov sb, #1
0078d9d8  17 b0 c0 e7                                      bfi fp, r7, #0, #1
0078d9dc  44 c0 86 e5                                      str ip, [r6, #0x44]
0078d9e0  5c e0 86 e5                                      str lr, [r6, #0x5c]
0078d9e4  6c 30 86 e5                                      str r3, [r6, #0x6c]
0078d9e8  70 30 86 e5                                      str r3, [r6, #0x70]
0078d9ec  74 30 86 e5                                      str r3, [r6, #0x74]
0078d9f0  78 30 86 e5                                      str r3, [r6, #0x78]
0078d9f4  54 00 86 e5                                      str r0, [r6, #0x54]
0078d9f8  60 00 c6 e5                                      strb r0, [r6, #0x60]
0078d9fc  61 00 c6 e5                                      strb r0, [r6, #0x61]
0078da00  62 00 c6 e5                                      strb r0, [r6, #0x62]
0078da04  63 00 c6 e5                                      strb r0, [r6, #0x63]
0078da08  7c 90 c6 e5                                      strb sb, [r6, #0x7c]
0078da0c  47 b0 c6 e5                                      strb fp, [r6, #0x47]
0078da10  34 90 c6 e5                                      strb sb, [r6, #0x34]
0078da14  20 70 86 e5                                      str r7, [r6, #0x20]
0078da18  35 70 c6 e5                                      strb r7, [r6, #0x35]
0078da1c  48 70 c6 e5                                      strb r7, [r6, #0x48]
0078da20  49 70 c6 e5                                      strb r7, [r6, #0x49]
0078da24  4a 70 c6 e5                                      strb r7, [r6, #0x4a]
0078da28  4b 70 c6 e5                                      strb r7, [r6, #0x4b]
0078da2c  4c 70 c6 e5                                      strb r7, [r6, #0x4c]
0078da30  4d 70 c6 e5                                      strb r7, [r6, #0x4d]
0078da34  4e 70 c6 e5                                      strb r7, [r6, #0x4e]
0078da38  4f 70 c6 e5                                      strb r7, [r6, #0x4f]
0078da3c  50 70 c6 e5                                      strb r7, [r6, #0x50]
0078da40  58 70 86 e5                                      str r7, [r6, #0x58]
0078da44  64 70 86 e5                                      str r7, [r6, #0x64]
0078da48  68 70 86 e5                                      str r7, [r6, #0x68]
0078da4c  7d 70 c6 e5                                      strb r7, [r6, #0x7d]
0078da50  05 00 a0 e1                                      mov r0, r5
0078da54  8c 20 86 e5                                      str r2, [r6, #0x8c]
0078da58  2c 30 86 e5                                      str r3, [r6, #0x2c]
0078da5c  98 30 86 e5                                      str r3, [r6, #0x98]
0078da60  9c 30 86 e5                                      str r3, [r6, #0x9c]
0078da64  24 30 86 e5                                      str r3, [r6, #0x24]
0078da68  8f 10 c6 e5                                      strb r1, [r6, #0x8f]
0078da6c  90 70 c6 e5                                      strb r7, [r6, #0x90]
0078da70  94 70 86 e5                                      str r7, [r6, #0x94]
0078da74  ba 03 ee eb                                      bl #0x30e964
0078da78  41 14 a0 e3                                      mov r1, #0x41000000
0078da7c  0a 16 81 e2                                      add r1, r1, #0xa00000
0078da80  b9 04 ee eb                                      bl #0x30ed6c
0078da84  28 00 86 e5                                      str r0, [r6, #0x28]
0078da88  0a 00 a0 e1                                      mov r0, sl
0078da8c  b4 03 ee eb                                      bl #0x30e964
0078da90  41 14 a0 e3                                      mov r1, #0x41000000
0078da94  0a 16 81 e2                                      add r1, r1, #0xa00000
0078da98  b3 04 ee eb                                      bl #0x30ed6c
0078da9c  07 10 a0 e1                                      mov r1, r7
0078daa0  30 00 86 e5                                      str r0, [r6, #0x30]
0078daa4  60 70 c6 e5                                      strb r7, [r6, #0x60]
0078daa8  61 70 c6 e5                                      strb r7, [r6, #0x61]
0078daac  62 70 c6 e5                                      strb r7, [r6, #0x62]
0078dab0  88 00 a0 e3                                      mov r0, #0x88
0078dab4  3b 14 ff eb                                      bl #0x752ba8
0078dab8  08 10 a0 e1                                      mov r1, r8
0078dabc  00 40 a0 e1                                      mov r4, r0
0078dac0  84 07 01 eb                                      bl #0x7cf8d8
0078dac4  58 40 86 e5                                      str r4, [r6, #0x58]
0078dac8  06 00 a0 e1                                      mov r0, r6
0078dacc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0078dad0  fc 70 20 00 6c 16 00 00                          .byte 0xfc, 0x70, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00

; FUNCTION 0x0078dad8, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::edit_text_character_def
; alias: _ZN7gameswf23edit_text_character_defC2EPNS_6playerEii
; demangled: gameswf::edit_text_character_def::edit_text_character_def(gameswf::player*, int, int)
; decoder-mode: arm
0078dad8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078dadc  54 41 9f e5                                      ldr r4, [pc, #0x154]
0078dae0  00 60 a0 e1                                      mov r6, r0
0078dae4  02 50 a0 e1                                      mov r5, r2
0078dae8  03 a0 a0 e1                                      mov sl, r3
0078daec  01 80 a0 e1                                      mov r8, r1
0078daf0  d3 43 ff eb                                      bl #0x75ea44
0078daf4  40 e1 9f e5                                      ldr lr, [pc, #0x140]
0078daf8  44 c0 96 e5                                      ldr ip, [r6, #0x44]
0078dafc  04 40 8f e0                                      add r4, pc, r4
0078db00  8c 20 96 e5                                      ldr r2, [r6, #0x8c]
0078db04  0e e0 94 e7                                      ldr lr, [r4, lr]
0078db08  00 00 e0 e3                                      mvn r0, #0
0078db0c  10 c0 d7 e7                                      bfi ip, r0, #0, #0x18
0078db10  10 20 d7 e7                                      bfi r2, r0, #0, #0x18
0078db14  2c 1c a0 e1                                      lsr r1, ip, #0x18
0078db18  08 e0 8e e2                                      add lr, lr, #8
0078db1c  00 70 a0 e3                                      mov r7, #0
0078db20  00 e0 86 e5                                      str lr, [r6]
0078db24  01 b0 a0 e1                                      mov fp, r1
0078db28  43 e4 a0 e3                                      mov lr, #0x43000000
0078db2c  22 1c a0 e1                                      lsr r1, r2, #0x18
0078db30  00 30 a0 e3                                      mov r3, #0
0078db34  07 e6 8e e2                                      add lr, lr, #0x700000
0078db38  17 10 c0 e7                                      bfi r1, r7, #0, #1
0078db3c  01 90 a0 e3                                      mov sb, #1
0078db40  17 b0 c0 e7                                      bfi fp, r7, #0, #1
0078db44  44 c0 86 e5                                      str ip, [r6, #0x44]
0078db48  5c e0 86 e5                                      str lr, [r6, #0x5c]
0078db4c  6c 30 86 e5                                      str r3, [r6, #0x6c]
0078db50  70 30 86 e5                                      str r3, [r6, #0x70]
0078db54  74 30 86 e5                                      str r3, [r6, #0x74]
0078db58  78 30 86 e5                                      str r3, [r6, #0x78]
0078db5c  54 00 86 e5                                      str r0, [r6, #0x54]
0078db60  60 00 c6 e5                                      strb r0, [r6, #0x60]
0078db64  61 00 c6 e5                                      strb r0, [r6, #0x61]
0078db68  62 00 c6 e5                                      strb r0, [r6, #0x62]
0078db6c  63 00 c6 e5                                      strb r0, [r6, #0x63]
0078db70  7c 90 c6 e5                                      strb sb, [r6, #0x7c]
0078db74  47 b0 c6 e5                                      strb fp, [r6, #0x47]
0078db78  34 90 c6 e5                                      strb sb, [r6, #0x34]
0078db7c  20 70 86 e5                                      str r7, [r6, #0x20]
0078db80  35 70 c6 e5                                      strb r7, [r6, #0x35]
0078db84  48 70 c6 e5                                      strb r7, [r6, #0x48]
0078db88  49 70 c6 e5                                      strb r7, [r6, #0x49]
0078db8c  4a 70 c6 e5                                      strb r7, [r6, #0x4a]
0078db90  4b 70 c6 e5                                      strb r7, [r6, #0x4b]
0078db94  4c 70 c6 e5                                      strb r7, [r6, #0x4c]
0078db98  4d 70 c6 e5                                      strb r7, [r6, #0x4d]
0078db9c  4e 70 c6 e5                                      strb r7, [r6, #0x4e]
0078dba0  4f 70 c6 e5                                      strb r7, [r6, #0x4f]
0078dba4  50 70 c6 e5                                      strb r7, [r6, #0x50]
0078dba8  58 70 86 e5                                      str r7, [r6, #0x58]
0078dbac  64 70 86 e5                                      str r7, [r6, #0x64]
0078dbb0  68 70 86 e5                                      str r7, [r6, #0x68]
0078dbb4  7d 70 c6 e5                                      strb r7, [r6, #0x7d]
0078dbb8  05 00 a0 e1                                      mov r0, r5
0078dbbc  8c 20 86 e5                                      str r2, [r6, #0x8c]
0078dbc0  2c 30 86 e5                                      str r3, [r6, #0x2c]
0078dbc4  98 30 86 e5                                      str r3, [r6, #0x98]
0078dbc8  9c 30 86 e5                                      str r3, [r6, #0x9c]
0078dbcc  24 30 86 e5                                      str r3, [r6, #0x24]
0078dbd0  8f 10 c6 e5                                      strb r1, [r6, #0x8f]
0078dbd4  90 70 c6 e5                                      strb r7, [r6, #0x90]
0078dbd8  94 70 86 e5                                      str r7, [r6, #0x94]
0078dbdc  60 03 ee eb                                      bl #0x30e964
0078dbe0  41 14 a0 e3                                      mov r1, #0x41000000
0078dbe4  0a 16 81 e2                                      add r1, r1, #0xa00000
0078dbe8  5f 04 ee eb                                      bl #0x30ed6c
0078dbec  28 00 86 e5                                      str r0, [r6, #0x28]
0078dbf0  0a 00 a0 e1                                      mov r0, sl
0078dbf4  5a 03 ee eb                                      bl #0x30e964
0078dbf8  41 14 a0 e3                                      mov r1, #0x41000000
0078dbfc  0a 16 81 e2                                      add r1, r1, #0xa00000
0078dc00  59 04 ee eb                                      bl #0x30ed6c
0078dc04  07 10 a0 e1                                      mov r1, r7
0078dc08  30 00 86 e5                                      str r0, [r6, #0x30]
0078dc0c  60 70 c6 e5                                      strb r7, [r6, #0x60]
0078dc10  61 70 c6 e5                                      strb r7, [r6, #0x61]
0078dc14  62 70 c6 e5                                      strb r7, [r6, #0x62]
0078dc18  88 00 a0 e3                                      mov r0, #0x88
0078dc1c  e1 13 ff eb                                      bl #0x752ba8
0078dc20  08 10 a0 e1                                      mov r1, r8
0078dc24  00 40 a0 e1                                      mov r4, r0
0078dc28  2a 07 01 eb                                      bl #0x7cf8d8
0078dc2c  58 40 86 e5                                      str r4, [r6, #0x58]
0078dc30  06 00 a0 e1                                      mov r0, r6
0078dc34  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0078dc38  94 6f 20 00 6c 16 00 00                          .byte 0x94, 0x6f, 0x20, 0x00, 0x6c, 0x16, 0x00, 0x00
