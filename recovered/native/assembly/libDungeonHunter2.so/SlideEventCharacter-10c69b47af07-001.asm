; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041f6c4, declared_size=184, range_size=184, mode=arm
; class-group: SlideEventCharacter
; alias: _ZN19SlideEventCharacterC1EPN7gameswf9characterE
; demangled: SlideEventCharacter::SlideEventCharacter(gameswf::character*)
; decoder-mode: arm
0041f6c4  98 30 9f e5                                      ldr r3, [pc, #0x98]
0041f6c8  98 20 9f e5                                      ldr r2, [pc, #0x98]
0041f6cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f6d0  03 30 8f e0                                      add r3, pc, r3
0041f6d4  90 50 9f e5                                      ldr r5, [pc, #0x90]
0041f6d8  02 60 93 e7                                      ldr r6, [r3, r2]
0041f6dc  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0041f6e0  05 50 8f e0                                      add r5, pc, r5
0041f6e4  00 10 80 e5                                      str r1, [r0]
0041f6e8  00 40 a0 e1                                      mov r4, r0
0041f6ec  02 20 8f e0                                      add r2, pc, r2
0041f6f0  05 10 a0 e1                                      mov r1, r5
0041f6f4  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f6f8  37 95 02 eb                                      bl #0x4c4bdc
0041f6fc  98 bc fb eb                                      bl #0x30e964
0041f700  41 14 a0 e3                                      mov r1, #0x41000000
0041f704  0a 16 81 e2                                      add r1, r1, #0xa00000
0041f708  97 bd fb eb                                      bl #0x30ed6c
0041f70c  60 20 9f e5                                      ldr r2, [pc, #0x60]
0041f710  04 00 84 e5                                      str r0, [r4, #4]
0041f714  05 10 a0 e1                                      mov r1, r5
0041f718  02 20 8f e0                                      add r2, pc, r2
0041f71c  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f720  2d 95 02 eb                                      bl #0x4c4bdc
0041f724  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0041f728  00 30 e0 e3                                      mvn r3, #0
0041f72c  10 30 84 e5                                      str r3, [r4, #0x10]
0041f730  0c 00 84 e5                                      str r0, [r4, #0xc]
0041f734  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f738  05 10 a0 e1                                      mov r1, r5
0041f73c  02 20 8f e0                                      add r2, pc, r2
0041f740  25 95 02 eb                                      bl #0x4c4bdc
0041f744  00 30 a0 e3                                      mov r3, #0
0041f748  14 00 84 e5                                      str r0, [r4, #0x14]
0041f74c  28 30 84 e5                                      str r3, [r4, #0x28]
0041f750  04 00 a0 e1                                      mov r0, r4
0041f754  1c 30 84 e5                                      str r3, [r4, #0x1c]
0041f758  20 30 84 e5                                      str r3, [r4, #0x20]
0041f75c  24 30 84 e5                                      str r3, [r4, #0x24]
0041f760  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041f764  c0 53 57 00 f4 37 00 00 c8 97 4a 00 d4 97 4a 00  .byte 0xc0, 0x53, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x97, 0x4a, 0x00, 0xd4, 0x97, 0x4a, 0x00
0041f774  b8 97 4a 00 a4 97 4a 00                          .byte 0xb8, 0x97, 0x4a, 0x00, 0xa4, 0x97, 0x4a, 0x00

; FUNCTION 0x0041f77c, declared_size=184, range_size=184, mode=arm
; class-group: SlideEventCharacter
; alias: _ZN19SlideEventCharacterC2EPN7gameswf9characterE
; demangled: SlideEventCharacter::SlideEventCharacter(gameswf::character*)
; decoder-mode: arm
0041f77c  98 30 9f e5                                      ldr r3, [pc, #0x98]
0041f780  98 20 9f e5                                      ldr r2, [pc, #0x98]
0041f784  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f788  03 30 8f e0                                      add r3, pc, r3
0041f78c  90 50 9f e5                                      ldr r5, [pc, #0x90]
0041f790  02 60 93 e7                                      ldr r6, [r3, r2]
0041f794  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0041f798  05 50 8f e0                                      add r5, pc, r5
0041f79c  00 10 80 e5                                      str r1, [r0]
0041f7a0  00 40 a0 e1                                      mov r4, r0
0041f7a4  02 20 8f e0                                      add r2, pc, r2
0041f7a8  05 10 a0 e1                                      mov r1, r5
0041f7ac  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f7b0  09 95 02 eb                                      bl #0x4c4bdc
0041f7b4  6a bc fb eb                                      bl #0x30e964
0041f7b8  41 14 a0 e3                                      mov r1, #0x41000000
0041f7bc  0a 16 81 e2                                      add r1, r1, #0xa00000
0041f7c0  69 bd fb eb                                      bl #0x30ed6c
0041f7c4  60 20 9f e5                                      ldr r2, [pc, #0x60]
0041f7c8  04 00 84 e5                                      str r0, [r4, #4]
0041f7cc  05 10 a0 e1                                      mov r1, r5
0041f7d0  02 20 8f e0                                      add r2, pc, r2
0041f7d4  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f7d8  ff 94 02 eb                                      bl #0x4c4bdc
0041f7dc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0041f7e0  00 30 e0 e3                                      mvn r3, #0
0041f7e4  10 30 84 e5                                      str r3, [r4, #0x10]
0041f7e8  0c 00 84 e5                                      str r0, [r4, #0xc]
0041f7ec  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0041f7f0  05 10 a0 e1                                      mov r1, r5
0041f7f4  02 20 8f e0                                      add r2, pc, r2
0041f7f8  f7 94 02 eb                                      bl #0x4c4bdc
0041f7fc  00 30 a0 e3                                      mov r3, #0
0041f800  14 00 84 e5                                      str r0, [r4, #0x14]
0041f804  28 30 84 e5                                      str r3, [r4, #0x28]
0041f808  04 00 a0 e1                                      mov r0, r4
0041f80c  1c 30 84 e5                                      str r3, [r4, #0x1c]
0041f810  20 30 84 e5                                      str r3, [r4, #0x20]
0041f814  24 30 84 e5                                      str r3, [r4, #0x24]
0041f818  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041f81c  08 53 57 00 f4 37 00 00 10 97 4a 00 1c 97 4a 00  .byte 0x08, 0x53, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x10, 0x97, 0x4a, 0x00, 0x1c, 0x97, 0x4a, 0x00
0041f82c  00 97 4a 00 ec 96 4a 00                          .byte 0x00, 0x97, 0x4a, 0x00, 0xec, 0x96, 0x4a, 0x00

; FUNCTION 0x004236c0, declared_size=1708, range_size=1708, mode=arm
; class-group: SlideEventCharacter
; alias: _ZN19SlideEventCharacter4TestERN8RenderFX5EventEP6MenuFX
; demangled: SlideEventCharacter::Test(RenderFX::Event&, MenuFX*)
; decoder-mode: arm
004236c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004236c4  50 46 9f e5                                      ldr r4, [pc, #0x650]
004236c8  50 56 9f e5                                      ldr r5, [pc, #0x650]
004236cc  00 60 a0 e1                                      mov r6, r0
004236d0  04 40 8f e0                                      add r4, pc, r4
004236d4  05 30 94 e7                                      ldr r3, [r4, r5]
004236d8  00 00 90 e5                                      ldr r0, [r0]
004236dc  01 70 a0 e1                                      mov r7, r1
004236e0  00 10 91 e5                                      ldr r1, [r1]
004236e4  00 30 93 e5                                      ldr r3, [r3]
004236e8  fc d0 4d e2                                      sub sp, sp, #0xfc
004236ec  01 00 50 e1                                      cmp r0, r1
004236f0  02 80 a0 e1                                      mov r8, r2
004236f4  f4 30 8d e5                                      str r3, [sp, #0xf4]
004236f8  06 00 00 0a                                      beq #0x423718
004236fc  05 30 94 e7                                      ldr r3, [r4, r5]
00423700  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
00423704  00 30 93 e5                                      ldr r3, [r3]
00423708  03 00 52 e1                                      cmp r2, r3
0042370c  51 01 00 1a                                      bne #0x423c58
00423710  fc d0 8d e2                                      add sp, sp, #0xfc
00423714  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00423718  08 30 97 e5                                      ldr r3, [r7, #8]
0042371c  04 00 53 e3                                      cmp r3, #4
00423720  00 30 a0 03                                      moveq r3, #0
00423724  18 30 c6 05                                      strbeq r3, [r6, #0x18]
00423728  02 00 00 0a                                      beq #0x423738
0042372c  18 30 d6 e5                                      ldrb r3, [r6, #0x18]
00423730  00 00 53 e3                                      cmp r3, #0
00423734  f0 ff ff 1a                                      bne #0x4236fc
00423738  e4 35 9f e5                                      ldr r3, [pc, #0x5e4]
0042373c  08 20 d6 e5                                      ldrb r2, [r6, #8]
00423740  03 30 94 e7                                      ldr r3, [r4, r3]
00423744  00 00 52 e3                                      cmp r2, #0
00423748  70 30 93 e5                                      ldr r3, [r3, #0x70]
0042374c  a9 00 00 0a                                      beq #0x4239f8
00423750  10 10 96 e5                                      ldr r1, [r6, #0x10]
00423754  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00423758  03 10 61 e0                                      rsb r1, r1, r3
0042375c  02 00 51 e1                                      cmp r1, r2
00423760  00 20 a0 83                                      movhi r2, #0
00423764  08 20 c6 85                                      strbhi r2, [r6, #8]
00423768  a2 00 00 8a                                      bhi #0x4239f8
0042376c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00423770  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00423774  24 00 86 e5                                      str r0, [r6, #0x24]
00423778  10 a0 97 e5                                      ldr sl, [r7, #0x10]
0042377c  28 a0 86 e5                                      str sl, [r6, #0x28]
00423780  09 ab fb eb                                      bl #0x30e3ac
00423784  20 10 96 e5                                      ldr r1, [r6, #0x20]
00423788  00 90 a0 e1                                      mov sb, r0
0042378c  0a 00 a0 e1                                      mov r0, sl
00423790  05 ab fb eb                                      bl #0x30e3ac
00423794  09 10 a0 e1                                      mov r1, sb
00423798  00 a0 a0 e1                                      mov sl, r0
0042379c  09 00 a0 e1                                      mov r0, sb
004237a0  0c 90 8d e5                                      str sb, [sp, #0xc]
004237a4  10 a0 8d e5                                      str sl, [sp, #0x10]
004237a8  6f ad fb eb                                      bl #0x30ed6c
004237ac  0a 10 a0 e1                                      mov r1, sl
004237b0  00 90 a0 e1                                      mov sb, r0
004237b4  0a 00 a0 e1                                      mov r0, sl
004237b8  6b ad fb eb                                      bl #0x30ed6c
004237bc  00 10 a0 e1                                      mov r1, r0
004237c0  09 00 a0 e1                                      mov r0, sb
004237c4  f6 ac fb eb                                      bl #0x30eba4
004237c8  35 ac fb eb                                      bl #0x30e8a4
004237cc  7b aa fb eb                                      bl #0x30e1c0
004237d0  b2 ab fb eb                                      bl #0x30e6a0
004237d4  00 10 a0 e1                                      mov r1, r0
004237d8  04 00 96 e5                                      ldr r0, [r6, #4]
004237dc  ca ab fb eb                                      bl #0x30e70c
004237e0  00 00 50 e3                                      cmp r0, #0
004237e4  c4 ff ff 0a                                      beq #0x4236fc
004237e8  0c 00 8d e2                                      add r0, sp, #0xc
004237ec  1b f2 ff eb                                      bl #0x420060
004237f0  aa ab fb eb                                      bl #0x30e6a0
004237f4  01 30 a0 e3                                      mov r3, #1
004237f8  43 14 a0 e3                                      mov r1, #0x43000000
004237fc  18 30 c6 e5                                      strb r3, [r6, #0x18]
00423800  0d 17 81 e2                                      add r1, r1, #0x340000
00423804  00 a0 a0 e1                                      mov sl, r0
00423808  e7 aa fb eb                                      bl #0x30e3ac
0042380c  00 10 a0 e3                                      mov r1, #0
00423810  00 b0 a0 e1                                      mov fp, r0
00423814  26 ab fb eb                                      bl #0x30e4b4
00423818  00 00 50 e3                                      cmp r0, #0
0042381c  0b 30 a0 01                                      moveq r3, fp
00423820  02 31 83 02                                      addeq r3, r3, #0x80000000
00423824  14 00 96 e5                                      ldr r0, [r6, #0x14]
00423828  03 b0 a0 01                                      moveq fp, r3
0042382c  ab aa fb eb                                      bl #0x30e2e0
00423830  0b 10 a0 e1                                      mov r1, fp
00423834  00 90 a0 e1                                      mov sb, r0
00423838  ae aa fb eb                                      bl #0x30e2f8
0042383c  00 00 50 e3                                      cmp r0, #0
00423840  74 00 00 1a                                      bne #0x423a18
00423844  00 10 a0 e3                                      mov r1, #0
00423848  0a 00 a0 e1                                      mov r0, sl
0042384c  18 ab fb eb                                      bl #0x30e4b4
00423850  00 00 50 e3                                      cmp r0, #0
00423854  0a 10 a0 11                                      movne r1, sl
00423858  02 11 8a 02                                      addeq r1, sl, #0x80000000
0042385c  09 00 a0 e1                                      mov r0, sb
00423860  a4 aa fb eb                                      bl #0x30e2f8
00423864  00 00 50 e3                                      cmp r0, #0
00423868  82 00 00 1a                                      bne #0x423a78
0042386c  42 14 a0 e3                                      mov r1, #0x42000000
00423870  2d 17 81 e2                                      add r1, r1, #0xb40000
00423874  0a 00 a0 e1                                      mov r0, sl
00423878  cb aa fb eb                                      bl #0x30e3ac
0042387c  00 10 a0 e3                                      mov r1, #0
00423880  00 b0 a0 e1                                      mov fp, r0
00423884  0a ab fb eb                                      bl #0x30e4b4
00423888  00 00 50 e3                                      cmp r0, #0
0042388c  0b 30 a0 01                                      moveq r3, fp
00423890  02 31 83 02                                      addeq r3, r3, #0x80000000
00423894  03 b0 a0 01                                      moveq fp, r3
00423898  0b 10 a0 e1                                      mov r1, fp
0042389c  09 00 a0 e1                                      mov r0, sb
004238a0  94 aa fb eb                                      bl #0x30e2f8
004238a4  00 00 50 e3                                      cmp r0, #0
004238a8  8a 00 00 1a                                      bne #0x423ad8
004238ac  43 14 a0 e3                                      mov r1, #0x43000000
004238b0  87 18 81 e2                                      add r1, r1, #0x870000
004238b4  0a 00 a0 e1                                      mov r0, sl
004238b8  bb aa fb eb                                      bl #0x30e3ac
004238bc  00 10 a0 e3                                      mov r1, #0
004238c0  00 b0 a0 e1                                      mov fp, r0
004238c4  fa aa fb eb                                      bl #0x30e4b4
004238c8  00 00 50 e3                                      cmp r0, #0
004238cc  0b 30 a0 01                                      moveq r3, fp
004238d0  02 31 83 02                                      addeq r3, r3, #0x80000000
004238d4  03 b0 a0 01                                      moveq fp, r3
004238d8  0b 10 a0 e1                                      mov r1, fp
004238dc  09 00 a0 e1                                      mov r0, sb
004238e0  84 aa fb eb                                      bl #0x30e2f8
004238e4  00 00 50 e3                                      cmp r0, #0
004238e8  92 00 00 1a                                      bne #0x423b38
004238ec  42 14 a0 e3                                      mov r1, #0x42000000
004238f0  0d 17 81 e2                                      add r1, r1, #0x340000
004238f4  0a 00 a0 e1                                      mov r0, sl
004238f8  ab aa fb eb                                      bl #0x30e3ac
004238fc  00 10 a0 e3                                      mov r1, #0
00423900  00 b0 a0 e1                                      mov fp, r0
00423904  ea aa fb eb                                      bl #0x30e4b4
00423908  00 00 50 e3                                      cmp r0, #0
0042390c  0b 30 a0 01                                      moveq r3, fp
00423910  02 31 83 02                                      addeq r3, r3, #0x80000000
00423914  03 b0 a0 01                                      moveq fp, r3
00423918  0b 10 a0 e1                                      mov r1, fp
0042391c  09 00 a0 e1                                      mov r0, sb
00423920  74 aa fb eb                                      bl #0x30e2f8
00423924  00 00 50 e3                                      cmp r0, #0
00423928  9a 00 00 1a                                      bne #0x423b98
0042392c  43 14 a0 e3                                      mov r1, #0x43000000
00423930  07 18 81 e2                                      add r1, r1, #0x70000
00423934  0a 00 a0 e1                                      mov r0, sl
00423938  9b aa fb eb                                      bl #0x30e3ac
0042393c  00 10 a0 e3                                      mov r1, #0
00423940  00 b0 a0 e1                                      mov fp, r0
00423944  da aa fb eb                                      bl #0x30e4b4
00423948  00 00 50 e3                                      cmp r0, #0
0042394c  0b 30 a0 01                                      moveq r3, fp
00423950  02 31 83 02                                      addeq r3, r3, #0x80000000
00423954  03 b0 a0 01                                      moveq fp, r3
00423958  0b 10 a0 e1                                      mov r1, fp
0042395c  09 00 a0 e1                                      mov r0, sb
00423960  64 aa fb eb                                      bl #0x30e2f8
00423964  00 00 50 e3                                      cmp r0, #0
00423968  a2 00 00 1a                                      bne #0x423bf8
0042396c  43 14 a0 e3                                      mov r1, #0x43000000
00423970  61 18 81 e2                                      add r1, r1, #0x610000
00423974  0a 00 a0 e1                                      mov r0, sl
00423978  8b aa fb eb                                      bl #0x30e3ac
0042397c  00 10 a0 e3                                      mov r1, #0
00423980  00 b0 a0 e1                                      mov fp, r0
00423984  ca aa fb eb                                      bl #0x30e4b4
00423988  00 00 50 e3                                      cmp r0, #0
0042398c  0b 30 a0 01                                      moveq r3, fp
00423990  02 31 83 02                                      addeq r3, r3, #0x80000000
00423994  03 b0 a0 01                                      moveq fp, r3
00423998  0b 10 a0 e1                                      mov r1, fp
0042399c  09 00 a0 e1                                      mov r0, sb
004239a0  54 aa fb eb                                      bl #0x30e2f8
004239a4  00 00 50 e3                                      cmp r0, #0
004239a8  ab 00 00 1a                                      bne #0x423c5c
004239ac  00 10 08 e3                                      movw r1, #0x8000
004239b0  0a 00 a0 e1                                      mov r0, sl
004239b4  9d 13 44 e3                                      movt r1, #0x439d
004239b8  7b aa fb eb                                      bl #0x30e3ac
004239bc  00 10 a0 e3                                      mov r1, #0
004239c0  00 a0 a0 e1                                      mov sl, r0
004239c4  ba aa fb eb                                      bl #0x30e4b4
004239c8  00 00 50 e3                                      cmp r0, #0
004239cc  02 a1 8a 02                                      addeq sl, sl, #0x80000000
004239d0  09 00 a0 e1                                      mov r0, sb
004239d4  0a 10 a0 e1                                      mov r1, sl
004239d8  46 aa fb eb                                      bl #0x30e2f8
004239dc  00 00 50 e3                                      cmp r0, #0
004239e0  00 30 a0 03                                      moveq r3, #0
004239e4  18 30 c6 05                                      strbeq r3, [r6, #0x18]
004239e8  b3 00 00 1a                                      bne #0x423cbc
004239ec  00 30 a0 e3                                      mov r3, #0
004239f0  08 30 c6 e5                                      strb r3, [r6, #8]
004239f4  40 ff ff ea                                      b #0x4236fc
004239f8  01 20 a0 e3                                      mov r2, #1
004239fc  08 20 c6 e5                                      strb r2, [r6, #8]
00423a00  10 30 86 e5                                      str r3, [r6, #0x10]
00423a04  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00423a08  1c 30 86 e5                                      str r3, [r6, #0x1c]
00423a0c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00423a10  20 30 86 e5                                      str r3, [r6, #0x20]
00423a14  38 ff ff ea                                      b #0x4236fc
00423a18  08 33 9f e5                                      ldr r3, [pc, #0x308]
00423a1c  dc a0 8d e2                                      add sl, sp, #0xdc
00423a20  03 90 94 e7                                      ldr sb, [r4, r3]
00423a24  09 00 a0 e1                                      mov r0, sb
00423a28  96 4f fc eb                                      bl #0x337888
00423a2c  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
00423a30  30 20 8d e2                                      add r2, sp, #0x30
00423a34  0a 00 a0 e1                                      mov r0, sl
00423a38  01 10 8f e0                                      add r1, pc, r1
00423a3c  aa c1 fb eb                                      bl #0x3140ec
00423a40  0a 10 a0 e1                                      mov r1, sl
00423a44  09 00 a0 e1                                      mov r0, sb
00423a48  0e 50 fc eb                                      bl #0x337a88
00423a4c  0a 00 a0 e1                                      mov r0, sl
00423a50  ff d1 fb eb                                      bl #0x318254
00423a54  d4 22 9f e5                                      ldr r2, [pc, #0x2d4]
00423a58  00 c0 a0 e3                                      mov ip, #0
00423a5c  00 10 97 e5                                      ldr r1, [r7]
00423a60  08 00 a0 e1                                      mov r0, r8
00423a64  02 20 8f e0                                      add r2, pc, r2
00423a68  0c 30 a0 e1                                      mov r3, ip
00423a6c  00 c0 8d e5                                      str ip, [sp]
00423a70  e5 20 0e eb                                      bl #0x7abe0c
00423a74  dc ff ff ea                                      b #0x4239ec
00423a78  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
00423a7c  c4 a0 8d e2                                      add sl, sp, #0xc4
00423a80  03 90 94 e7                                      ldr sb, [r4, r3]
00423a84  09 00 a0 e1                                      mov r0, sb
00423a88  7e 4f fc eb                                      bl #0x337888
00423a8c  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
00423a90  2c 20 8d e2                                      add r2, sp, #0x2c
00423a94  0a 00 a0 e1                                      mov r0, sl
00423a98  01 10 8f e0                                      add r1, pc, r1
00423a9c  92 c1 fb eb                                      bl #0x3140ec
00423aa0  0a 10 a0 e1                                      mov r1, sl
00423aa4  09 00 a0 e1                                      mov r0, sb
00423aa8  f6 4f fc eb                                      bl #0x337a88
00423aac  0a 00 a0 e1                                      mov r0, sl
00423ab0  e7 d1 fb eb                                      bl #0x318254
00423ab4  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
00423ab8  00 c0 a0 e3                                      mov ip, #0
00423abc  00 10 97 e5                                      ldr r1, [r7]
00423ac0  08 00 a0 e1                                      mov r0, r8
00423ac4  02 20 8f e0                                      add r2, pc, r2
00423ac8  0c 30 a0 e1                                      mov r3, ip
00423acc  00 c0 8d e5                                      str ip, [sp]
00423ad0  cd 20 0e eb                                      bl #0x7abe0c
00423ad4  c4 ff ff ea                                      b #0x4239ec
00423ad8  48 32 9f e5                                      ldr r3, [pc, #0x248]
00423adc  ac a0 8d e2                                      add sl, sp, #0xac
00423ae0  03 90 94 e7                                      ldr sb, [r4, r3]
00423ae4  09 00 a0 e1                                      mov r0, sb
00423ae8  66 4f fc eb                                      bl #0x337888
00423aec  48 12 9f e5                                      ldr r1, [pc, #0x248]
00423af0  28 20 8d e2                                      add r2, sp, #0x28
00423af4  0a 00 a0 e1                                      mov r0, sl
00423af8  01 10 8f e0                                      add r1, pc, r1
00423afc  7a c1 fb eb                                      bl #0x3140ec
00423b00  0a 10 a0 e1                                      mov r1, sl
00423b04  09 00 a0 e1                                      mov r0, sb
00423b08  de 4f fc eb                                      bl #0x337a88
00423b0c  0a 00 a0 e1                                      mov r0, sl
00423b10  cf d1 fb eb                                      bl #0x318254
00423b14  24 22 9f e5                                      ldr r2, [pc, #0x224]
00423b18  00 c0 a0 e3                                      mov ip, #0
00423b1c  00 10 97 e5                                      ldr r1, [r7]
00423b20  08 00 a0 e1                                      mov r0, r8
00423b24  02 20 8f e0                                      add r2, pc, r2
00423b28  0c 30 a0 e1                                      mov r3, ip
00423b2c  00 c0 8d e5                                      str ip, [sp]
00423b30  b5 20 0e eb                                      bl #0x7abe0c
00423b34  ac ff ff ea                                      b #0x4239ec
00423b38  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
00423b3c  94 a0 8d e2                                      add sl, sp, #0x94
00423b40  03 90 94 e7                                      ldr sb, [r4, r3]
00423b44  09 00 a0 e1                                      mov r0, sb
00423b48  4e 4f fc eb                                      bl #0x337888
00423b4c  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
00423b50  24 20 8d e2                                      add r2, sp, #0x24
00423b54  0a 00 a0 e1                                      mov r0, sl
00423b58  01 10 8f e0                                      add r1, pc, r1
00423b5c  62 c1 fb eb                                      bl #0x3140ec
00423b60  0a 10 a0 e1                                      mov r1, sl
00423b64  09 00 a0 e1                                      mov r0, sb
00423b68  c6 4f fc eb                                      bl #0x337a88
00423b6c  0a 00 a0 e1                                      mov r0, sl
00423b70  b7 d1 fb eb                                      bl #0x318254
00423b74  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
00423b78  00 c0 a0 e3                                      mov ip, #0
00423b7c  00 10 97 e5                                      ldr r1, [r7]
00423b80  08 00 a0 e1                                      mov r0, r8
00423b84  02 20 8f e0                                      add r2, pc, r2
00423b88  0c 30 a0 e1                                      mov r3, ip
00423b8c  00 c0 8d e5                                      str ip, [sp]
00423b90  9d 20 0e eb                                      bl #0x7abe0c
00423b94  94 ff ff ea                                      b #0x4239ec
00423b98  88 31 9f e5                                      ldr r3, [pc, #0x188]
00423b9c  7c a0 8d e2                                      add sl, sp, #0x7c
00423ba0  03 90 94 e7                                      ldr sb, [r4, r3]
00423ba4  09 00 a0 e1                                      mov r0, sb
00423ba8  36 4f fc eb                                      bl #0x337888
00423bac  98 11 9f e5                                      ldr r1, [pc, #0x198]
00423bb0  20 20 8d e2                                      add r2, sp, #0x20
00423bb4  0a 00 a0 e1                                      mov r0, sl
00423bb8  01 10 8f e0                                      add r1, pc, r1
00423bbc  4a c1 fb eb                                      bl #0x3140ec
00423bc0  0a 10 a0 e1                                      mov r1, sl
00423bc4  09 00 a0 e1                                      mov r0, sb
00423bc8  ae 4f fc eb                                      bl #0x337a88
00423bcc  0a 00 a0 e1                                      mov r0, sl
00423bd0  9f d1 fb eb                                      bl #0x318254
00423bd4  74 21 9f e5                                      ldr r2, [pc, #0x174]
00423bd8  00 c0 a0 e3                                      mov ip, #0
00423bdc  00 10 97 e5                                      ldr r1, [r7]
00423be0  08 00 a0 e1                                      mov r0, r8
00423be4  02 20 8f e0                                      add r2, pc, r2
00423be8  0c 30 a0 e1                                      mov r3, ip
00423bec  00 c0 8d e5                                      str ip, [sp]
00423bf0  85 20 0e eb                                      bl #0x7abe0c
00423bf4  7c ff ff ea                                      b #0x4239ec
00423bf8  28 31 9f e5                                      ldr r3, [pc, #0x128]
00423bfc  64 a0 8d e2                                      add sl, sp, #0x64
00423c00  03 90 94 e7                                      ldr sb, [r4, r3]
00423c04  09 00 a0 e1                                      mov r0, sb
00423c08  1e 4f fc eb                                      bl #0x337888
00423c0c  40 11 9f e5                                      ldr r1, [pc, #0x140]
00423c10  1c 20 8d e2                                      add r2, sp, #0x1c
00423c14  0a 00 a0 e1                                      mov r0, sl
00423c18  01 10 8f e0                                      add r1, pc, r1
00423c1c  32 c1 fb eb                                      bl #0x3140ec
00423c20  0a 10 a0 e1                                      mov r1, sl
00423c24  09 00 a0 e1                                      mov r0, sb
00423c28  96 4f fc eb                                      bl #0x337a88
00423c2c  0a 00 a0 e1                                      mov r0, sl
00423c30  87 d1 fb eb                                      bl #0x318254
00423c34  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00423c38  00 c0 a0 e3                                      mov ip, #0
00423c3c  00 10 97 e5                                      ldr r1, [r7]
00423c40  08 00 a0 e1                                      mov r0, r8
00423c44  02 20 8f e0                                      add r2, pc, r2
00423c48  0c 30 a0 e1                                      mov r3, ip
00423c4c  00 c0 8d e5                                      str ip, [sp]
00423c50  6d 20 0e eb                                      bl #0x7abe0c
00423c54  64 ff ff ea                                      b #0x4239ec
00423c58  ac a9 fb eb                                      bl #0x30e310
00423c5c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00423c60  4c a0 8d e2                                      add sl, sp, #0x4c
00423c64  03 90 94 e7                                      ldr sb, [r4, r3]
00423c68  09 00 a0 e1                                      mov r0, sb
00423c6c  05 4f fc eb                                      bl #0x337888
00423c70  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00423c74  18 20 8d e2                                      add r2, sp, #0x18
00423c78  0a 00 a0 e1                                      mov r0, sl
00423c7c  01 10 8f e0                                      add r1, pc, r1
00423c80  19 c1 fb eb                                      bl #0x3140ec
00423c84  0a 10 a0 e1                                      mov r1, sl
00423c88  09 00 a0 e1                                      mov r0, sb
00423c8c  7d 4f fc eb                                      bl #0x337a88
00423c90  0a 00 a0 e1                                      mov r0, sl
00423c94  6e d1 fb eb                                      bl #0x318254
00423c98  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00423c9c  00 c0 a0 e3                                      mov ip, #0
00423ca0  00 10 97 e5                                      ldr r1, [r7]
00423ca4  08 00 a0 e1                                      mov r0, r8
00423ca8  02 20 8f e0                                      add r2, pc, r2
00423cac  0c 30 a0 e1                                      mov r3, ip
00423cb0  00 c0 8d e5                                      str ip, [sp]
00423cb4  54 20 0e eb                                      bl #0x7abe0c
00423cb8  4b ff ff ea                                      b #0x4239ec
00423cbc  64 30 9f e5                                      ldr r3, [pc, #0x64]
00423cc0  34 a0 8d e2                                      add sl, sp, #0x34
00423cc4  03 90 94 e7                                      ldr sb, [r4, r3]
00423cc8  09 00 a0 e1                                      mov r0, sb
00423ccc  ed 4e fc eb                                      bl #0x337888
00423cd0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00423cd4  14 20 8d e2                                      add r2, sp, #0x14
00423cd8  0a 00 a0 e1                                      mov r0, sl
00423cdc  01 10 8f e0                                      add r1, pc, r1
00423ce0  01 c1 fb eb                                      bl #0x3140ec
00423ce4  0a 10 a0 e1                                      mov r1, sl
00423ce8  09 00 a0 e1                                      mov r0, sb
00423cec  65 4f fc eb                                      bl #0x337a88
00423cf0  0a 00 a0 e1                                      mov r0, sl
00423cf4  56 d1 fb eb                                      bl #0x318254
00423cf8  68 20 9f e5                                      ldr r2, [pc, #0x68]
00423cfc  00 c0 a0 e3                                      mov ip, #0
00423d00  00 10 97 e5                                      ldr r1, [r7]
00423d04  08 00 a0 e1                                      mov r0, r8
00423d08  02 20 8f e0                                      add r2, pc, r2
00423d0c  0c 30 a0 e1                                      mov r3, ip
00423d10  00 c0 8d e5                                      str ip, [sp]
00423d14  3c 20 0e eb                                      bl #0x7abe0c
00423d18  33 ff ff ea                                      b #0x4239ec
; mapping-symbol data/literal pool
00423d1c  c0 13 57 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xc0, 0x13, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00423d2c  c8 56 4a 00 bc 56 4a 00 68 56 4a 00 6c 56 4a 00  .byte 0xc8, 0x56, 0x4a, 0x00, 0xbc, 0x56, 0x4a, 0x00, 0x68, 0x56, 0x4a, 0x00, 0x6c, 0x56, 0x4a, 0x00
00423d3c  08 56 4a 00 1c 56 4a 00 a8 55 4a 00 cc 55 4a 00  .byte 0x08, 0x56, 0x4a, 0x00, 0x1c, 0x56, 0x4a, 0x00, 0xa8, 0x55, 0x4a, 0x00, 0xcc, 0x55, 0x4a, 0x00
00423d4c  48 55 4a 00 7c 55 4a 00 e8 54 4a 00 2c 55 4a 00  .byte 0x48, 0x55, 0x4a, 0x00, 0x7c, 0x55, 0x4a, 0x00, 0xe8, 0x54, 0x4a, 0x00, 0x2c, 0x55, 0x4a, 0x00
00423d5c  84 54 4a 00 d8 54 4a 00 24 54 4a 00 88 54 4a 00  .byte 0x84, 0x54, 0x4a, 0x00, 0xd8, 0x54, 0x4a, 0x00, 0x24, 0x54, 0x4a, 0x00, 0x88, 0x54, 0x4a, 0x00
