; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a324, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_def9get_boundEPNS_4rectE
; demangled: gameswf::text_character_def::get_bound(gameswf::rect*)
; decoder-mode: arm
0078a324  01 c0 a0 e1                                      mov ip, r1
0078a328  24 00 80 e2                                      add r0, r0, #0x24
0078a32c  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0078a330  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0078a334  1e ff 2f e1                                      bx lr

; FUNCTION 0x0078b474, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_def15csm_textsettingEPNS_6streamEi
; demangled: gameswf::text_character_def::csm_textsetting(gameswf::stream*, int)
; decoder-mode: arm
0078b474  70 40 2d e9                                      push {r4, r5, r6, lr}
0078b478  01 40 a0 e1                                      mov r4, r1
0078b47c  00 50 a0 e1                                      mov r5, r0
0078b480  02 10 a0 e3                                      mov r1, #2
0078b484  04 00 a0 e1                                      mov r0, r4
0078b488  45 e1 ff eb                                      bl #0x7839a4
0078b48c  00 00 50 e2                                      subs r0, r0, #0
0078b490  01 00 a0 13                                      movne r0, #1
0078b494  5c 00 c5 e5                                      strb r0, [r5, #0x5c]
0078b498  03 10 a0 e3                                      mov r1, #3
0078b49c  04 00 a0 e1                                      mov r0, r4
0078b4a0  3f e1 ff eb                                      bl #0x7839a4
0078b4a4  03 10 a0 e3                                      mov r1, #3
0078b4a8  60 00 85 e5                                      str r0, [r5, #0x60]
0078b4ac  04 00 a0 e1                                      mov r0, r4
0078b4b0  3b e1 ff eb                                      bl #0x7839a4
0078b4b4  04 00 a0 e1                                      mov r0, r4
0078b4b8  7a e2 ff eb                                      bl #0x783ea8
0078b4bc  64 00 85 e5                                      str r0, [r5, #0x64]
0078b4c0  04 00 a0 e1                                      mov r0, r4
0078b4c4  77 e2 ff eb                                      bl #0x783ea8
0078b4c8  68 00 85 e5                                      str r0, [r5, #0x68]
0078b4cc  04 00 a0 e1                                      mov r0, r4
0078b4d0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078b4d4  93 e1 ff ea                                      b #0x783b28

; FUNCTION 0x0078bde0, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_defD0Ev
; demangled: gameswf::text_character_def::~text_character_def()
; decoder-mode: arm
0078bde0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0078bde4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0078bde8  70 40 2d e9                                      push {r4, r5, r6, lr}
0078bdec  03 30 8f e0                                      add r3, pc, r3
0078bdf0  02 20 93 e7                                      ldr r2, [r3, r2]
0078bdf4  00 50 a0 e1                                      mov r5, r0
0078bdf8  00 40 a0 e1                                      mov r4, r0
0078bdfc  08 20 82 e2                                      add r2, r2, #8
0078be00  4c 20 85 e4                                      str r2, [r5], #0x4c
0078be04  05 00 a0 e1                                      mov r0, r5
0078be08  00 10 a0 e3                                      mov r1, #0
0078be0c  ae ff ff eb                                      bl #0x78bccc
0078be10  00 10 a0 e3                                      mov r1, #0
0078be14  05 00 a0 e1                                      mov r0, r5
0078be18  f5 f9 ff eb                                      bl #0x78a5f4
0078be1c  04 00 a0 e1                                      mov r0, r4
0078be20  14 48 ff eb                                      bl #0x75de78
0078be24  04 00 a0 e1                                      mov r0, r4
0078be28  20 09 ee eb                                      bl #0x30e2b0
0078be2c  04 00 a0 e1                                      mov r0, r4
0078be30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0078be34  a4 8c 20 00 50 39 00 00                          .byte 0xa4, 0x8c, 0x20, 0x00, 0x50, 0x39, 0x00, 0x00

; FUNCTION 0x0078be3c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_defD1Ev
; demangled: gameswf::text_character_def::~text_character_def()
; decoder-mode: arm
0078be3c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0078be40  44 20 9f e5                                      ldr r2, [pc, #0x44]
0078be44  70 40 2d e9                                      push {r4, r5, r6, lr}
0078be48  03 30 8f e0                                      add r3, pc, r3
0078be4c  02 20 93 e7                                      ldr r2, [r3, r2]
0078be50  00 40 a0 e1                                      mov r4, r0
0078be54  00 50 a0 e1                                      mov r5, r0
0078be58  08 20 82 e2                                      add r2, r2, #8
0078be5c  4c 20 84 e4                                      str r2, [r4], #0x4c
0078be60  04 00 a0 e1                                      mov r0, r4
0078be64  00 10 a0 e3                                      mov r1, #0
0078be68  97 ff ff eb                                      bl #0x78bccc
0078be6c  04 00 a0 e1                                      mov r0, r4
0078be70  00 10 a0 e3                                      mov r1, #0
0078be74  de f9 ff eb                                      bl #0x78a5f4
0078be78  05 00 a0 e1                                      mov r0, r5
0078be7c  fd 47 ff eb                                      bl #0x75de78
0078be80  05 00 a0 e1                                      mov r0, r5
0078be84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0078be88  48 8c 20 00 50 39 00 00                          .byte 0x48, 0x8c, 0x20, 0x00, 0x50, 0x39, 0x00, 0x00

; FUNCTION 0x0078be90, declared_size=604, range_size=604, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_def4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::text_character_def::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078be90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078be94  01 40 a0 e1                                      mov r4, r1
0078be98  44 d0 4d e2                                      sub sp, sp, #0x44
0078be9c  00 70 a0 e1                                      mov r7, r0
0078bea0  24 00 80 e2                                      add r0, r0, #0x24
0078bea4  0c 20 8d e5                                      str r2, [sp, #0xc]
0078bea8  4f 28 00 eb                                      bl #0x795fec
0078beac  04 10 a0 e1                                      mov r1, r4
0078beb0  34 00 87 e2                                      add r0, r7, #0x34
0078beb4  c6 29 00 eb                                      bl #0x7965d4
0078beb8  04 00 a0 e1                                      mov r0, r4
0078bebc  19 df ff eb                                      bl #0x783b28
0078bec0  18 00 8d e5                                      str r0, [sp, #0x18]
0078bec4  04 00 a0 e1                                      mov r0, r4
0078bec8  16 df ff eb                                      bl #0x783b28
0078becc  00 30 e0 e3                                      mvn r3, #0
0078bed0  00 60 a0 e3                                      mov r6, #0
0078bed4  00 80 a0 e3                                      mov r8, #0
0078bed8  01 90 a0 e3                                      mov sb, #1
0078bedc  2b 30 cd e5                                      strb r3, [sp, #0x2b]
0078bee0  fe 25 a0 e3                                      mov r2, #0x3f800000
0078bee4  20 30 8d e5                                      str r3, [sp, #0x20]
0078bee8  28 30 cd e5                                      strb r3, [sp, #0x28]
0078beec  29 30 cd e5                                      strb r3, [sp, #0x29]
0078bef0  2a 30 cd e5                                      strb r3, [sp, #0x2a]
0078bef4  28 e0 8d e2                                      add lr, sp, #0x28
0078bef8  4c 30 87 e2                                      add r3, r7, #0x4c
0078befc  1c 00 8d e5                                      str r0, [sp, #0x1c]
0078bf00  38 20 8d e5                                      str r2, [sp, #0x38]
0078bf04  24 60 8d e5                                      str r6, [sp, #0x24]
0078bf08  2c 60 cd e5                                      strb r6, [sp, #0x2c]
0078bf0c  30 80 8d e5                                      str r8, [sp, #0x30]
0078bf10  34 80 8d e5                                      str r8, [sp, #0x34]
0078bf14  3c 60 cd e5                                      strb r6, [sp, #0x3c]
0078bf18  3d 60 cd e5                                      strb r6, [sp, #0x3d]
0078bf1c  3e 90 cd e5                                      strb sb, [sp, #0x3e]
0078bf20  14 30 8d e5                                      str r3, [sp, #0x14]
0078bf24  30 a0 a0 e3                                      mov sl, #0x30
0078bf28  10 e0 8d e5                                      str lr, [sp, #0x10]
0078bf2c  04 00 a0 e1                                      mov r0, r4
0078bf30  fc de ff eb                                      bl #0x783b28
0078bf34  00 b0 50 e2                                      subs fp, r0, #0
0078bf38  23 00 00 0a                                      beq #0x78bfcc
0078bf3c  00 00 56 e3                                      cmp r6, #0
0078bf40  27 00 00 1a                                      bne #0x78bfe4
0078bf44  db 51 e0 e7                                      ubfx r5, fp, #3, #1
0078bf48  00 00 55 e3                                      cmp r5, #0
0078bf4c  01 60 0b e2                                      and r6, fp, #1
0078bf50  04 30 0b e2                                      and r3, fp, #4
0078bf54  02 b0 0b e2                                      and fp, fp, #2
0078bf58  4b 00 00 1a                                      bne #0x78c08c
0078bf5c  00 00 53 e3                                      cmp r3, #0
0078bf60  05 00 00 0a                                      beq #0x78bf7c
0078bf64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0078bf68  0b 00 53 e3                                      cmp r3, #0xb
0078bf6c  5a 00 00 0a                                      beq #0x78c0dc
0078bf70  10 00 9d e5                                      ldr r0, [sp, #0x10]
0078bf74  04 10 a0 e1                                      mov r1, r4
0078bf78  42 2a 00 eb                                      bl #0x796888
0078bf7c  00 00 56 e3                                      cmp r6, #0
0078bf80  3c 60 cd 05                                      strbeq r6, [sp, #0x3c]
0078bf84  30 80 8d 05                                      streq r8, [sp, #0x30]
0078bf88  4c 00 00 1a                                      bne #0x78c0c0
0078bf8c  00 00 5b e3                                      cmp fp, #0
0078bf90  3d b0 cd 05                                      strbeq fp, [sp, #0x3d]
0078bf94  34 80 8d 05                                      streq r8, [sp, #0x34]
0078bf98  41 00 00 1a                                      bne #0x78c0a4
0078bf9c  00 00 55 e3                                      cmp r5, #0
0078bfa0  01 60 a0 03                                      moveq r6, #1
0078bfa4  e0 ff ff 0a                                      beq #0x78bf2c
0078bfa8  04 00 a0 e1                                      mov r0, r4
0078bfac  18 df ff eb                                      bl #0x783c14
0078bfb0  ca 08 ee eb                                      bl #0x30e2e0
0078bfb4  38 00 8d e5                                      str r0, [sp, #0x38]
0078bfb8  04 00 a0 e1                                      mov r0, r4
0078bfbc  d9 de ff eb                                      bl #0x783b28
0078bfc0  00 b0 50 e2                                      subs fp, r0, #0
0078bfc4  01 60 a0 e3                                      mov r6, #1
0078bfc8  db ff ff 1a                                      bne #0x78bf3c
0078bfcc  24 00 9d e5                                      ldr r0, [sp, #0x24]
0078bfd0  00 00 50 e3                                      cmp r0, #0
0078bfd4  00 00 00 0a                                      beq #0x78bfdc
0078bfd8  98 38 ff eb                                      bl #0x75a240
0078bfdc  44 d0 8d e2                                      add sp, sp, #0x44
0078bfe0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078bfe4  50 10 97 e5                                      ldr r1, [r7, #0x50]
0078bfe8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0078bfec  00 60 a0 e3                                      mov r6, #0
0078bff0  01 10 81 e2                                      add r1, r1, #1
0078bff4  34 ff ff eb                                      bl #0x78bccc
0078bff8  50 50 97 e5                                      ldr r5, [r7, #0x50]
0078bffc  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
0078c000  20 20 9d e5                                      ldr r2, [sp, #0x20]
0078c004  01 50 45 e2                                      sub r5, r5, #1
0078c008  9a 05 05 e0                                      mul r5, sl, r5
0078c00c  05 20 83 e7                                      str r2, [r3, r5]
0078c010  05 50 83 e0                                      add r5, r3, r5
0078c014  04 00 85 e2                                      add r0, r5, #4
0078c018  24 10 9d e5                                      ldr r1, [sp, #0x24]
0078c01c  84 60 ff eb                                      bl #0x764234
0078c020  28 30 9d e5                                      ldr r3, [sp, #0x28]
0078c024  0b 20 a0 e1                                      mov r2, fp
0078c028  04 10 a0 e1                                      mov r1, r4
0078c02c  08 30 85 e5                                      str r3, [r5, #8]
0078c030  2c 00 dd e5                                      ldrb r0, [sp, #0x2c]
0078c034  18 30 9d e5                                      ldr r3, [sp, #0x18]
0078c038  0c 00 c5 e5                                      strb r0, [r5, #0xc]
0078c03c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0078c040  10 00 85 e5                                      str r0, [r5, #0x10]
0078c044  34 00 9d e5                                      ldr r0, [sp, #0x34]
0078c048  14 00 85 e5                                      str r0, [r5, #0x14]
0078c04c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0078c050  18 00 85 e5                                      str r0, [r5, #0x18]
0078c054  3c 00 dd e5                                      ldrb r0, [sp, #0x3c]
0078c058  1c 00 c5 e5                                      strb r0, [r5, #0x1c]
0078c05c  3d 00 dd e5                                      ldrb r0, [sp, #0x3d]
0078c060  1d 00 c5 e5                                      strb r0, [r5, #0x1d]
0078c064  3e 00 dd e5                                      ldrb r0, [sp, #0x3e]
0078c068  1e 00 c5 e5                                      strb r0, [r5, #0x1e]
0078c06c  50 c0 97 e5                                      ldr ip, [r7, #0x50]
0078c070  4c 00 97 e5                                      ldr r0, [r7, #0x4c]
0078c074  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0078c078  01 c0 4c e2                                      sub ip, ip, #1
0078c07c  9a 0c 20 e0                                      mla r0, sl, ip, r0
0078c080  00 e0 8d e5                                      str lr, [sp]
0078c084  f3 fd ff eb                                      bl #0x78b858
0078c088  a7 ff ff ea                                      b #0x78bf2c
0078c08c  04 00 a0 e1                                      mov r0, r4
0078c090  08 30 8d e5                                      str r3, [sp, #8]
0078c094  de de ff eb                                      bl #0x783c14
0078c098  08 30 9d e5                                      ldr r3, [sp, #8]
0078c09c  20 00 8d e5                                      str r0, [sp, #0x20]
0078c0a0  ad ff ff ea                                      b #0x78bf5c
0078c0a4  04 00 a0 e1                                      mov r0, r4
0078c0a8  3d 90 cd e5                                      strb sb, [sp, #0x3d]
0078c0ac  e5 de ff eb                                      bl #0x783c48
0078c0b0  70 00 bf e6                                      sxth r0, r0
0078c0b4  2a 0a ee eb                                      bl #0x30e964
0078c0b8  34 00 8d e5                                      str r0, [sp, #0x34]
0078c0bc  b6 ff ff ea                                      b #0x78bf9c
0078c0c0  04 00 a0 e1                                      mov r0, r4
0078c0c4  3c 90 cd e5                                      strb sb, [sp, #0x3c]
0078c0c8  de de ff eb                                      bl #0x783c48
0078c0cc  70 00 bf e6                                      sxth r0, r0
0078c0d0  23 0a ee eb                                      bl #0x30e964
0078c0d4  30 00 8d e5                                      str r0, [sp, #0x30]
0078c0d8  ab ff ff ea                                      b #0x78bf8c
0078c0dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0078c0e0  04 10 a0 e1                                      mov r1, r4
0078c0e4  d8 29 00 eb                                      bl #0x79684c
0078c0e8  a3 ff ff ea                                      b #0x78bf7c

; FUNCTION 0x0078dc40, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_defC1EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::text_character_def::text_character_def(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078dc40  70 40 2d e9                                      push {r4, r5, r6, lr}
0078dc44  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
0078dc48  00 50 a0 e1                                      mov r5, r0
0078dc4c  02 60 a0 e1                                      mov r6, r2
0078dc50  7b 43 ff eb                                      bl #0x75ea44
0078dc54  60 20 9f e5                                      ldr r2, [pc, #0x60]
0078dc58  04 40 8f e0                                      add r4, pc, r4
0078dc5c  00 30 a0 e3                                      mov r3, #0
0078dc60  02 20 94 e7                                      ldr r2, [r4, r2]
0078dc64  fe 05 a0 e3                                      mov r0, #0x3f800000
0078dc68  00 10 a0 e3                                      mov r1, #0
0078dc6c  08 20 82 e2                                      add r2, r2, #8
0078dc70  44 00 85 e5                                      str r0, [r5, #0x44]
0078dc74  34 00 85 e5                                      str r0, [r5, #0x34]
0078dc78  00 20 85 e5                                      str r2, [r5]
0078dc7c  20 60 85 e5                                      str r6, [r5, #0x20]
0078dc80  60 30 85 e5                                      str r3, [r5, #0x60]
0078dc84  68 10 85 e5                                      str r1, [r5, #0x68]
0078dc88  38 30 85 e5                                      str r3, [r5, #0x38]
0078dc8c  3c 30 85 e5                                      str r3, [r5, #0x3c]
0078dc90  40 30 85 e5                                      str r3, [r5, #0x40]
0078dc94  48 30 85 e5                                      str r3, [r5, #0x48]
0078dc98  4c 30 85 e5                                      str r3, [r5, #0x4c]
0078dc9c  50 30 85 e5                                      str r3, [r5, #0x50]
0078dca0  54 30 85 e5                                      str r3, [r5, #0x54]
0078dca4  58 30 c5 e5                                      strb r3, [r5, #0x58]
0078dca8  5c 30 c5 e5                                      strb r3, [r5, #0x5c]
0078dcac  64 10 85 e5                                      str r1, [r5, #0x64]
0078dcb0  05 00 a0 e1                                      mov r0, r5
0078dcb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0078dcb8  38 6e 20 00 50 39 00 00                          .byte 0x38, 0x6e, 0x20, 0x00, 0x50, 0x39, 0x00, 0x00

; FUNCTION 0x0078dd68, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_defC2EPNS_6playerEPNS_20movie_definition_subE
; demangled: gameswf::text_character_def::text_character_def(gameswf::player*, gameswf::movie_definition_sub*)
; decoder-mode: arm
0078dd68  70 40 2d e9                                      push {r4, r5, r6, lr}
0078dd6c  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
0078dd70  00 50 a0 e1                                      mov r5, r0
0078dd74  02 60 a0 e1                                      mov r6, r2
0078dd78  31 43 ff eb                                      bl #0x75ea44
0078dd7c  60 20 9f e5                                      ldr r2, [pc, #0x60]
0078dd80  04 40 8f e0                                      add r4, pc, r4
0078dd84  00 30 a0 e3                                      mov r3, #0
0078dd88  02 20 94 e7                                      ldr r2, [r4, r2]
0078dd8c  fe 05 a0 e3                                      mov r0, #0x3f800000
0078dd90  00 10 a0 e3                                      mov r1, #0
0078dd94  08 20 82 e2                                      add r2, r2, #8
0078dd98  44 00 85 e5                                      str r0, [r5, #0x44]
0078dd9c  34 00 85 e5                                      str r0, [r5, #0x34]
0078dda0  00 20 85 e5                                      str r2, [r5]
0078dda4  20 60 85 e5                                      str r6, [r5, #0x20]
0078dda8  60 30 85 e5                                      str r3, [r5, #0x60]
0078ddac  68 10 85 e5                                      str r1, [r5, #0x68]
0078ddb0  38 30 85 e5                                      str r3, [r5, #0x38]
0078ddb4  3c 30 85 e5                                      str r3, [r5, #0x3c]
0078ddb8  40 30 85 e5                                      str r3, [r5, #0x40]
0078ddbc  48 30 85 e5                                      str r3, [r5, #0x48]
0078ddc0  4c 30 85 e5                                      str r3, [r5, #0x4c]
0078ddc4  50 30 85 e5                                      str r3, [r5, #0x50]
0078ddc8  54 30 85 e5                                      str r3, [r5, #0x54]
0078ddcc  58 30 c5 e5                                      strb r3, [r5, #0x58]
0078ddd0  5c 30 c5 e5                                      strb r3, [r5, #0x5c]
0078ddd4  64 10 85 e5                                      str r1, [r5, #0x64]
0078ddd8  05 00 a0 e1                                      mov r0, r5
0078dddc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0078dde0  10 6d 20 00 50 39 00 00                          .byte 0x10, 0x6d, 0x20, 0x00, 0x50, 0x39, 0x00, 0x00

; FUNCTION 0x00790a7c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::text_character_def
; alias: _ZN7gameswf18text_character_def7displayEPNS_9characterE
; demangled: gameswf::text_character_def::display(gameswf::character*)
; decoder-mode: arm
00790a7c  04 e0 2d e5                                      str lr, [sp, #-4]!
00790a80  00 c0 a0 e3                                      mov ip, #0
00790a84  20 30 90 e5                                      ldr r3, [r0, #0x20]
00790a88  14 d0 4d e2                                      sub sp, sp, #0x14
00790a8c  4c 20 80 e2                                      add r2, r0, #0x4c
00790a90  34 00 80 e2                                      add r0, r0, #0x34
00790a94  0c c0 8d e5                                      str ip, [sp, #0xc]
00790a98  00 c0 8d e5                                      str ip, [sp]
00790a9c  04 c0 8d e5                                      str ip, [sp, #4]
00790aa0  08 c0 8d e5                                      str ip, [sp, #8]
00790aa4  fd fb ff eb                                      bl #0x78faa0
00790aa8  14 d0 8d e2                                      add sp, sp, #0x14
00790aac  00 80 bd e8                                      ldm sp!, {pc}
