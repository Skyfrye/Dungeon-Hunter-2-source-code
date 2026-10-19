; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c78d4, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definitionD1Ev
; demangled: gameswf::button_character_definition::~button_character_definition()
; decoder-mode: arm
007c78d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007c78d8  78 30 9f e5                                      ldr r3, [pc, #0x78]
007c78dc  78 20 9f e5                                      ldr r2, [pc, #0x78]
007c78e0  44 50 90 e5                                      ldr r5, [r0, #0x44]
007c78e4  03 30 8f e0                                      add r3, pc, r3
007c78e8  02 20 93 e7                                      ldr r2, [r3, r2]
007c78ec  00 00 55 e3                                      cmp r5, #0
007c78f0  00 40 a0 e1                                      mov r4, r0
007c78f4  08 20 82 e2                                      add r2, r2, #8
007c78f8  00 20 80 e5                                      str r2, [r0]
007c78fc  04 00 00 0a                                      beq #0x7c7914
007c7900  05 00 a0 e1                                      mov r0, r5
007c7904  78 fe ff eb                                      bl #0x7c72ec
007c7908  05 00 a0 e1                                      mov r0, r5
007c790c  00 10 a0 e3                                      mov r1, #0
007c7910  88 2c fe eb                                      bl #0x752b38
007c7914  34 50 84 e2                                      add r5, r4, #0x34
007c7918  05 00 a0 e1                                      mov r0, r5
007c791c  00 10 a0 e3                                      mov r1, #0
007c7920  67 ff ff eb                                      bl #0x7c76c4
007c7924  05 00 a0 e1                                      mov r0, r5
007c7928  00 10 a0 e3                                      mov r1, #0
007c792c  24 50 84 e2                                      add r5, r4, #0x24
007c7930  4b fe ff eb                                      bl #0x7c7264
007c7934  05 00 a0 e1                                      mov r0, r5
007c7938  b8 ff ff eb                                      bl #0x7c7820
007c793c  05 00 a0 e1                                      mov r0, r5
007c7940  00 10 a0 e3                                      mov r1, #0
007c7944  12 fe ff eb                                      bl #0x7c7194
007c7948  04 00 a0 e1                                      mov r0, r4
007c794c  49 59 fe eb                                      bl #0x75de78
007c7950  04 00 a0 e1                                      mov r0, r4
007c7954  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c7958  ac d1 1c 00 58 3e 00 00                          .byte 0xac, 0xd1, 0x1c, 0x00, 0x58, 0x3e, 0x00, 0x00

; FUNCTION 0x007c7960, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definitionD0Ev
; demangled: gameswf::button_character_definition::~button_character_definition()
; decoder-mode: arm
007c7960  10 40 2d e9                                      push {r4, lr}
007c7964  00 40 a0 e1                                      mov r4, r0
007c7968  d9 ff ff eb                                      bl #0x7c78d4
007c796c  04 00 a0 e1                                      mov r0, r4
007c7970  4e 1a ed eb                                      bl #0x30e2b0
007c7974  04 00 a0 e1                                      mov r0, r4
007c7978  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c797c, declared_size=140, range_size=140, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definitionD2Ev
; demangled: gameswf::button_character_definition::~button_character_definition()
; decoder-mode: arm
007c797c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7980  78 30 9f e5                                      ldr r3, [pc, #0x78]
007c7984  78 20 9f e5                                      ldr r2, [pc, #0x78]
007c7988  44 50 90 e5                                      ldr r5, [r0, #0x44]
007c798c  03 30 8f e0                                      add r3, pc, r3
007c7990  02 20 93 e7                                      ldr r2, [r3, r2]
007c7994  00 00 55 e3                                      cmp r5, #0
007c7998  00 40 a0 e1                                      mov r4, r0
007c799c  08 20 82 e2                                      add r2, r2, #8
007c79a0  00 20 80 e5                                      str r2, [r0]
007c79a4  04 00 00 0a                                      beq #0x7c79bc
007c79a8  05 00 a0 e1                                      mov r0, r5
007c79ac  4e fe ff eb                                      bl #0x7c72ec
007c79b0  05 00 a0 e1                                      mov r0, r5
007c79b4  00 10 a0 e3                                      mov r1, #0
007c79b8  5e 2c fe eb                                      bl #0x752b38
007c79bc  34 50 84 e2                                      add r5, r4, #0x34
007c79c0  05 00 a0 e1                                      mov r0, r5
007c79c4  00 10 a0 e3                                      mov r1, #0
007c79c8  3d ff ff eb                                      bl #0x7c76c4
007c79cc  05 00 a0 e1                                      mov r0, r5
007c79d0  00 10 a0 e3                                      mov r1, #0
007c79d4  24 50 84 e2                                      add r5, r4, #0x24
007c79d8  21 fe ff eb                                      bl #0x7c7264
007c79dc  05 00 a0 e1                                      mov r0, r5
007c79e0  8e ff ff eb                                      bl #0x7c7820
007c79e4  05 00 a0 e1                                      mov r0, r5
007c79e8  00 10 a0 e3                                      mov r1, #0
007c79ec  e8 fd ff eb                                      bl #0x7c7194
007c79f0  04 00 a0 e1                                      mov r0, r4
007c79f4  1f 59 fe eb                                      bl #0x75de78
007c79f8  04 00 a0 e1                                      mov r0, r4
007c79fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c7a00  04 d1 1c 00 58 3e 00 00                          .byte 0x04, 0xd1, 0x1c, 0x00, 0x58, 0x3e, 0x00, 0x00

; FUNCTION 0x007c7a08, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definitionC1EPNS_6playerE
; demangled: gameswf::button_character_definition::button_character_definition(gameswf::player*)
; decoder-mode: arm
007c7a08  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7a0c  48 50 9f e5                                      ldr r5, [pc, #0x48]
007c7a10  00 40 a0 e1                                      mov r4, r0
007c7a14  0a 5c fe eb                                      bl #0x75ea44
007c7a18  40 20 9f e5                                      ldr r2, [pc, #0x40]
007c7a1c  05 50 8f e0                                      add r5, pc, r5
007c7a20  00 30 a0 e3                                      mov r3, #0
007c7a24  02 20 95 e7                                      ldr r2, [r5, r2]
007c7a28  44 30 84 e5                                      str r3, [r4, #0x44]
007c7a2c  24 30 84 e5                                      str r3, [r4, #0x24]
007c7a30  08 20 82 e2                                      add r2, r2, #8
007c7a34  00 20 84 e5                                      str r2, [r4]
007c7a38  28 30 84 e5                                      str r3, [r4, #0x28]
007c7a3c  2c 30 84 e5                                      str r3, [r4, #0x2c]
007c7a40  30 30 c4 e5                                      strb r3, [r4, #0x30]
007c7a44  34 30 84 e5                                      str r3, [r4, #0x34]
007c7a48  38 30 84 e5                                      str r3, [r4, #0x38]
007c7a4c  3c 30 84 e5                                      str r3, [r4, #0x3c]
007c7a50  40 30 c4 e5                                      strb r3, [r4, #0x40]
007c7a54  04 00 a0 e1                                      mov r0, r4
007c7a58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c7a5c  74 d0 1c 00 58 3e 00 00                          .byte 0x74, 0xd0, 0x1c, 0x00, 0x58, 0x3e, 0x00, 0x00

; FUNCTION 0x007c7a64, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definitionC2EPNS_6playerE
; demangled: gameswf::button_character_definition::button_character_definition(gameswf::player*)
; decoder-mode: arm
007c7a64  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7a68  48 50 9f e5                                      ldr r5, [pc, #0x48]
007c7a6c  00 40 a0 e1                                      mov r4, r0
007c7a70  f3 5b fe eb                                      bl #0x75ea44
007c7a74  40 20 9f e5                                      ldr r2, [pc, #0x40]
007c7a78  05 50 8f e0                                      add r5, pc, r5
007c7a7c  00 30 a0 e3                                      mov r3, #0
007c7a80  02 20 95 e7                                      ldr r2, [r5, r2]
007c7a84  44 30 84 e5                                      str r3, [r4, #0x44]
007c7a88  24 30 84 e5                                      str r3, [r4, #0x24]
007c7a8c  08 20 82 e2                                      add r2, r2, #8
007c7a90  00 20 84 e5                                      str r2, [r4]
007c7a94  28 30 84 e5                                      str r3, [r4, #0x28]
007c7a98  2c 30 84 e5                                      str r3, [r4, #0x2c]
007c7a9c  30 30 c4 e5                                      strb r3, [r4, #0x30]
007c7aa0  34 30 84 e5                                      str r3, [r4, #0x34]
007c7aa4  38 30 84 e5                                      str r3, [r4, #0x38]
007c7aa8  3c 30 84 e5                                      str r3, [r4, #0x3c]
007c7aac  40 30 c4 e5                                      strb r3, [r4, #0x40]
007c7ab0  04 00 a0 e1                                      mov r0, r4
007c7ab4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c7ab8  18 d0 1c 00 58 3e 00 00                          .byte 0x18, 0xd0, 0x1c, 0x00, 0x58, 0x3e, 0x00, 0x00

; FUNCTION 0x007c8090, declared_size=1096, range_size=1096, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definition4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::button_character_definition::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
007c8090  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c8094  07 00 52 e3                                      cmp r2, #7
007c8098  94 d0 4d e2                                      sub sp, sp, #0x94
007c809c  00 a0 a0 e1                                      mov sl, r0
007c80a0  01 80 a0 e1                                      mov r8, r1
007c80a4  03 90 a0 e1                                      mov sb, r3
007c80a8  05 00 00 0a                                      beq #0x7c80c4
007c80ac  11 00 52 e3                                      cmp r2, #0x11
007c80b0  d6 00 00 0a                                      beq #0x7c8410
007c80b4  22 00 52 e3                                      cmp r2, #0x22
007c80b8  56 00 00 0a                                      beq #0x7c8218
007c80bc  94 d0 8d e2                                      add sp, sp, #0x94
007c80c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c80c4  2c 60 8d e2                                      add r6, sp, #0x2c
007c80c8  24 30 80 e2                                      add r3, r0, #0x24
007c80cc  14 c0 86 e2                                      add ip, r6, #0x14
007c80d0  18 30 8d e5                                      str r3, [sp, #0x18]
007c80d4  18 30 86 e2                                      add r3, r6, #0x18
007c80d8  04 c0 8d e5                                      str ip, [sp, #4]
007c80dc  08 30 8d e5                                      str r3, [sp, #8]
007c80e0  1c c0 86 e2                                      add ip, r6, #0x1c
007c80e4  20 30 86 e2                                      add r3, r6, #0x20
007c80e8  0c c0 8d e5                                      str ip, [sp, #0xc]
007c80ec  10 30 8d e5                                      str r3, [sp, #0x10]
007c80f0  24 c0 86 e2                                      add ip, r6, #0x24
007c80f4  28 30 86 e2                                      add r3, r6, #0x28
007c80f8  fe 55 a0 e3                                      mov r5, #0x3f800000
007c80fc  00 70 a0 e3                                      mov r7, #0
007c8100  00 40 a0 e3                                      mov r4, #0
007c8104  14 c0 8d e5                                      str ip, [sp, #0x14]
007c8108  1c 00 8d e5                                      str r0, [sp, #0x1c]
007c810c  03 a0 a0 e1                                      mov sl, r3
007c8110  09 00 00 ea                                      b #0x7c813c
007c8114  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c8118  06 10 a0 e1                                      mov r1, r6
007c811c  50 b0 86 e2                                      add fp, r6, #0x50
007c8120  3d fc ff eb                                      bl #0x7c721c
007c8124  0b 00 a0 e1                                      mov r0, fp
007c8128  04 10 a0 e1                                      mov r1, r4
007c812c  69 36 fe eb                                      bl #0x755ad8
007c8130  0b 00 a0 e1                                      mov r0, fp
007c8134  04 10 a0 e1                                      mov r1, r4
007c8138  62 2b fe eb                                      bl #0x752ec8
007c813c  04 c0 9d e5                                      ldr ip, [sp, #4]
007c8140  00 40 8a e5                                      str r4, [sl]
007c8144  07 20 a0 e3                                      mov r2, #7
007c8148  00 40 8c e5                                      str r4, [ip]
007c814c  08 c0 9d e5                                      ldr ip, [sp, #8]
007c8150  09 30 a0 e1                                      mov r3, sb
007c8154  08 10 a0 e1                                      mov r1, r8
007c8158  00 40 8c e5                                      str r4, [ip]
007c815c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007c8160  06 00 a0 e1                                      mov r0, r6
007c8164  78 40 8d e5                                      str r4, [sp, #0x78]
007c8168  00 40 8c e5                                      str r4, [ip]
007c816c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007c8170  7c 40 8d e5                                      str r4, [sp, #0x7c]
007c8174  80 40 8d e5                                      str r4, [sp, #0x80]
007c8178  00 40 8c e5                                      str r4, [ip]
007c817c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007c8180  84 40 8d e5                                      str r4, [sp, #0x84]
007c8184  00 40 8c e5                                      str r4, [ip]
007c8188  00 c0 a0 e3                                      mov ip, #0
007c818c  40 50 8d e5                                      str r5, [sp, #0x40]
007c8190  50 50 8d e5                                      str r5, [sp, #0x50]
007c8194  58 50 8d e5                                      str r5, [sp, #0x58]
007c8198  60 50 8d e5                                      str r5, [sp, #0x60]
007c819c  68 50 8d e5                                      str r5, [sp, #0x68]
007c81a0  70 50 8d e5                                      str r5, [sp, #0x70]
007c81a4  5c 70 8d e5                                      str r7, [sp, #0x5c]
007c81a8  64 70 8d e5                                      str r7, [sp, #0x64]
007c81ac  6c 70 8d e5                                      str r7, [sp, #0x6c]
007c81b0  74 70 8d e5                                      str r7, [sp, #0x74]
007c81b4  88 c0 cd e5                                      strb ip, [sp, #0x88]
007c81b8  df fc ff eb                                      bl #0x7c753c
007c81bc  00 00 50 e3                                      cmp r0, #0
007c81c0  d3 ff ff 1a                                      bne #0x7c8114
007c81c4  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
007c81c8  50 60 86 e2                                      add r6, r6, #0x50
007c81cc  06 00 a0 e1                                      mov r0, r6
007c81d0  04 10 a0 e1                                      mov r1, r4
007c81d4  3f 36 fe eb                                      bl #0x755ad8
007c81d8  06 00 a0 e1                                      mov r0, r6
007c81dc  04 10 a0 e1                                      mov r1, r4
007c81e0  38 2b fe eb                                      bl #0x752ec8
007c81e4  38 10 9a e5                                      ldr r1, [sl, #0x38]
007c81e8  34 00 8a e2                                      add r0, sl, #0x34
007c81ec  01 10 81 e2                                      add r1, r1, #1
007c81f0  33 fd ff eb                                      bl #0x7c76c4
007c81f4  38 20 9a e5                                      ldr r2, [sl, #0x38]
007c81f8  34 30 9a e5                                      ldr r3, [sl, #0x34]
007c81fc  14 00 a0 e3                                      mov r0, #0x14
007c8200  01 20 42 e2                                      sub r2, r2, #1
007c8204  90 32 20 e0                                      mla r0, r0, r2, r3
007c8208  08 10 a0 e1                                      mov r1, r8
007c820c  07 20 a0 e3                                      mov r2, #7
007c8210  aa fc ff eb                                      bl #0x7c74c0
007c8214  a8 ff ff ea                                      b #0x7c80bc
007c8218  01 00 a0 e1                                      mov r0, r1
007c821c  41 ee fe eb                                      bl #0x783b28
007c8220  00 00 50 e2                                      subs r0, r0, #0
007c8224  01 00 a0 13                                      movne r0, #1
007c8228  20 00 ca e5                                      strb r0, [sl, #0x20]
007c822c  08 00 a0 e1                                      mov r0, r8
007c8230  77 ee fe eb                                      bl #0x783c14
007c8234  2c 60 8d e2                                      add r6, sp, #0x2c
007c8238  24 30 8a e2                                      add r3, sl, #0x24
007c823c  18 30 8d e5                                      str r3, [sp, #0x18]
007c8240  14 c0 86 e2                                      add ip, r6, #0x14
007c8244  18 30 86 e2                                      add r3, r6, #0x18
007c8248  04 c0 8d e5                                      str ip, [sp, #4]
007c824c  08 30 8d e5                                      str r3, [sp, #8]
007c8250  1c c0 86 e2                                      add ip, r6, #0x1c
007c8254  20 30 86 e2                                      add r3, r6, #0x20
007c8258  1c 00 8d e5                                      str r0, [sp, #0x1c]
007c825c  0c c0 8d e5                                      str ip, [sp, #0xc]
007c8260  10 30 8d e5                                      str r3, [sp, #0x10]
007c8264  24 c0 86 e2                                      add ip, r6, #0x24
007c8268  28 30 86 e2                                      add r3, r6, #0x28
007c826c  08 00 a0 e1                                      mov r0, r8
007c8270  00 30 8d e5                                      str r3, [sp]
007c8274  14 c0 8d e5                                      str ip, [sp, #0x14]
007c8278  7f ee fe eb                                      bl #0x783c7c
007c827c  00 30 9d e5                                      ldr r3, [sp]
007c8280  20 a0 8d e5                                      str sl, [sp, #0x20]
007c8284  fe 55 a0 e3                                      mov r5, #0x3f800000
007c8288  00 70 a0 e3                                      mov r7, #0
007c828c  00 40 a0 e3                                      mov r4, #0
007c8290  24 00 8d e5                                      str r0, [sp, #0x24]
007c8294  03 a0 a0 e1                                      mov sl, r3
007c8298  09 00 00 ea                                      b #0x7c82c4
007c829c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c82a0  06 10 a0 e1                                      mov r1, r6
007c82a4  50 b0 86 e2                                      add fp, r6, #0x50
007c82a8  db fb ff eb                                      bl #0x7c721c
007c82ac  0b 00 a0 e1                                      mov r0, fp
007c82b0  04 10 a0 e1                                      mov r1, r4
007c82b4  07 36 fe eb                                      bl #0x755ad8
007c82b8  0b 00 a0 e1                                      mov r0, fp
007c82bc  04 10 a0 e1                                      mov r1, r4
007c82c0  00 2b fe eb                                      bl #0x752ec8
007c82c4  04 c0 9d e5                                      ldr ip, [sp, #4]
007c82c8  00 40 8a e5                                      str r4, [sl]
007c82cc  22 20 a0 e3                                      mov r2, #0x22
007c82d0  00 40 8c e5                                      str r4, [ip]
007c82d4  08 c0 9d e5                                      ldr ip, [sp, #8]
007c82d8  09 30 a0 e1                                      mov r3, sb
007c82dc  08 10 a0 e1                                      mov r1, r8
007c82e0  00 40 8c e5                                      str r4, [ip]
007c82e4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007c82e8  06 00 a0 e1                                      mov r0, r6
007c82ec  78 40 8d e5                                      str r4, [sp, #0x78]
007c82f0  00 40 8c e5                                      str r4, [ip]
007c82f4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007c82f8  7c 40 8d e5                                      str r4, [sp, #0x7c]
007c82fc  80 40 8d e5                                      str r4, [sp, #0x80]
007c8300  00 40 8c e5                                      str r4, [ip]
007c8304  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007c8308  84 40 8d e5                                      str r4, [sp, #0x84]
007c830c  00 40 8c e5                                      str r4, [ip]
007c8310  00 c0 a0 e3                                      mov ip, #0
007c8314  40 50 8d e5                                      str r5, [sp, #0x40]
007c8318  50 50 8d e5                                      str r5, [sp, #0x50]
007c831c  58 50 8d e5                                      str r5, [sp, #0x58]
007c8320  60 50 8d e5                                      str r5, [sp, #0x60]
007c8324  68 50 8d e5                                      str r5, [sp, #0x68]
007c8328  70 50 8d e5                                      str r5, [sp, #0x70]
007c832c  5c 70 8d e5                                      str r7, [sp, #0x5c]
007c8330  64 70 8d e5                                      str r7, [sp, #0x64]
007c8334  6c 70 8d e5                                      str r7, [sp, #0x6c]
007c8338  74 70 8d e5                                      str r7, [sp, #0x74]
007c833c  88 c0 cd e5                                      strb ip, [sp, #0x88]
007c8340  7d fc ff eb                                      bl #0x7c753c
007c8344  00 00 50 e3                                      cmp r0, #0
007c8348  d3 ff ff 1a                                      bne #0x7c829c
007c834c  50 60 86 e2                                      add r6, r6, #0x50
007c8350  06 00 a0 e1                                      mov r0, r6
007c8354  04 10 a0 e1                                      mov r1, r4
007c8358  20 a0 9d e5                                      ldr sl, [sp, #0x20]
007c835c  dd 35 fe eb                                      bl #0x755ad8
007c8360  06 00 a0 e1                                      mov r0, r6
007c8364  04 10 a0 e1                                      mov r1, r4
007c8368  d6 2a fe eb                                      bl #0x752ec8
007c836c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007c8370  00 00 53 e3                                      cmp r3, #0
007c8374  50 ff ff 0a                                      beq #0x7c80bc
007c8378  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007c837c  08 00 a0 e1                                      mov r0, r8
007c8380  34 70 8a e2                                      add r7, sl, #0x34
007c8384  02 10 4c e2                                      sub r1, ip, #2
007c8388  03 10 81 e0                                      add r1, r1, r3
007c838c  40 ee fe eb                                      bl #0x783c94
007c8390  14 60 a0 e3                                      mov r6, #0x14
007c8394  08 00 a0 e1                                      mov r0, r8
007c8398  1d ee fe eb                                      bl #0x783c14
007c839c  00 40 a0 e1                                      mov r4, r0
007c83a0  08 00 a0 e1                                      mov r0, r8
007c83a4  34 ee fe eb                                      bl #0x783c7c
007c83a8  38 10 9a e5                                      ldr r1, [sl, #0x38]
007c83ac  00 50 a0 e1                                      mov r5, r0
007c83b0  07 00 a0 e1                                      mov r0, r7
007c83b4  01 10 81 e2                                      add r1, r1, #1
007c83b8  c1 fc ff eb                                      bl #0x7c76c4
007c83bc  38 00 9a e5                                      ldr r0, [sl, #0x38]
007c83c0  34 30 9a e5                                      ldr r3, [sl, #0x34]
007c83c4  08 10 a0 e1                                      mov r1, r8
007c83c8  01 00 40 e2                                      sub r0, r0, #1
007c83cc  96 30 20 e0                                      mla r0, r6, r0, r3
007c83d0  22 20 a0 e3                                      mov r2, #0x22
007c83d4  39 fc ff eb                                      bl #0x7c74c0
007c83d8  00 00 54 e3                                      cmp r4, #0
007c83dc  36 ff ff 0a                                      beq #0x7c80bc
007c83e0  08 00 a0 e1                                      mov r0, r8
007c83e4  24 ee fe eb                                      bl #0x783c7c
007c83e8  00 90 a0 e1                                      mov sb, r0
007c83ec  08 00 a0 e1                                      mov r0, r8
007c83f0  31 ee fe eb                                      bl #0x783cbc
007c83f4  00 00 59 e1                                      cmp sb, r0
007c83f8  2f ff ff aa                                      bge #0x7c80bc
007c83fc  02 10 45 e2                                      sub r1, r5, #2
007c8400  04 10 81 e0                                      add r1, r1, r4
007c8404  08 00 a0 e1                                      mov r0, r8
007c8408  21 ee fe eb                                      bl #0x783c94
007c840c  e0 ff ff ea                                      b #0x7c8394
007c8410  00 10 a0 e3                                      mov r1, #0
007c8414  b0 00 a0 e3                                      mov r0, #0xb0
007c8418  e2 29 fe eb                                      bl #0x752ba8
007c841c  b0 20 a0 e3                                      mov r2, #0xb0
007c8420  00 10 a0 e3                                      mov r1, #0
007c8424  00 40 a0 e1                                      mov r4, r0
007c8428  0c 18 ed eb                                      bl #0x30e460
007c842c  00 20 a0 e3                                      mov r2, #0
007c8430  04 30 a0 e1                                      mov r3, r4
007c8434  02 50 a0 e1                                      mov r5, r2
007c8438  2c 20 82 e2                                      add r2, r2, #0x2c
007c843c  b0 00 52 e3                                      cmp r2, #0xb0
007c8440  1c 50 83 e5                                      str r5, [r3, #0x1c]
007c8444  20 50 83 e5                                      str r5, [r3, #0x20]
007c8448  24 50 83 e5                                      str r5, [r3, #0x24]
007c844c  28 50 c3 e5                                      strb r5, [r3, #0x28]
007c8450  2c 30 83 e2                                      add r3, r3, #0x2c
007c8454  f7 ff ff 1a                                      bne #0x7c8438
007c8458  44 40 8a e5                                      str r4, [sl, #0x44]
007c845c  08 00 a0 e1                                      mov r0, r8
007c8460  eb ed fe eb                                      bl #0x783c14
007c8464  2c b0 a0 e3                                      mov fp, #0x2c
007c8468  9b 05 06 e0                                      mul r6, fp, r5
007c846c  00 00 50 e3                                      cmp r0, #0
007c8470  01 50 85 e2                                      add r5, r5, #1
007c8474  b6 00 84 e1                                      strh r0, [r4, r6]
007c8478  06 70 84 e0                                      add r7, r4, r6
007c847c  0a 00 00 1a                                      bne #0x7c84ac
007c8480  04 00 55 e3                                      cmp r5, #4
007c8484  0c ff ff 0a                                      beq #0x7c80bc
007c8488  08 00 a0 e1                                      mov r0, r8
007c848c  44 40 9a e5                                      ldr r4, [sl, #0x44]
007c8490  df ed fe eb                                      bl #0x783c14
007c8494  9b 05 06 e0                                      mul r6, fp, r5
007c8498  00 00 50 e3                                      cmp r0, #0
007c849c  01 50 85 e2                                      add r5, r5, #1
007c84a0  b6 00 84 e1                                      strh r0, [r4, r6]
007c84a4  06 70 84 e0                                      add r7, r4, r6
007c84a8  f4 ff ff 0a                                      beq #0x7c8480
007c84ac  00 10 a0 e1                                      mov r1, r0
007c84b0  00 30 99 e5                                      ldr r3, [sb]
007c84b4  09 00 a0 e1                                      mov r0, sb
007c84b8  0f e0 a0 e1                                      mov lr, pc
007c84bc  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
007c84c0  08 60 86 e2                                      add r6, r6, #8
007c84c4  04 00 87 e5                                      str r0, [r7, #4]
007c84c8  08 10 a0 e1                                      mov r1, r8
007c84cc  06 00 84 e0                                      add r0, r4, r6
007c84d0  95 fb ff eb                                      bl #0x7c732c
007c84d4  e9 ff ff ea                                      b #0x7c8480

; FUNCTION 0x007c86b4, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::button_character_definition
; alias: _ZN7gameswf27button_character_definition25create_character_instanceEPNS_9characterEi
; demangled: gameswf::button_character_definition::create_character_instance(gameswf::character*, int)
; decoder-mode: arm
007c86b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c86b8  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
007c86bc  08 d0 4d e2                                      sub sp, sp, #8
007c86c0  00 60 a0 e1                                      mov r6, r0
007c86c4  00 00 57 e3                                      cmp r7, #0
007c86c8  01 80 a0 e1                                      mov r8, r1
007c86cc  02 50 a0 e1                                      mov r5, r2
007c86d0  03 00 00 0a                                      beq #0x7c86e4
007c86d4  18 00 90 e5                                      ldr r0, [r0, #0x18]
007c86d8  04 30 d0 e5                                      ldrb r3, [r0, #4]
007c86dc  00 00 53 e3                                      cmp r3, #0
007c86e0  0b 00 00 0a                                      beq #0x7c8714
007c86e4  00 10 a0 e3                                      mov r1, #0
007c86e8  c0 00 a0 e3                                      mov r0, #0xc0
007c86ec  2d 29 fe eb                                      bl #0x752ba8
007c86f0  07 10 a0 e1                                      mov r1, r7
007c86f4  00 40 a0 e1                                      mov r4, r0
007c86f8  06 20 a0 e1                                      mov r2, r6
007c86fc  08 30 a0 e1                                      mov r3, r8
007c8700  00 50 8d e5                                      str r5, [sp]
007c8704  73 ff ff eb                                      bl #0x7c84d8
007c8708  04 00 a0 e1                                      mov r0, r4
007c870c  08 d0 8d e2                                      add sp, sp, #8
007c8710  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c8714  00 10 90 e5                                      ldr r1, [r0]
007c8718  01 10 41 e2                                      sub r1, r1, #1
007c871c  00 00 51 e3                                      cmp r1, #0
007c8720  00 10 80 e5                                      str r1, [r0]
007c8724  00 00 00 1a                                      bne #0x7c872c
007c8728  02 29 fe eb                                      bl #0x752b38
007c872c  00 70 a0 e3                                      mov r7, #0
007c8730  18 70 86 e5                                      str r7, [r6, #0x18]
007c8734  1c 70 86 e5                                      str r7, [r6, #0x1c]
007c8738  e9 ff ff ea                                      b #0x7c86e4
