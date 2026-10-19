; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c87bc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::canvas
; alias: _ZNK7gameswf6canvas2isEi
; demangled: gameswf::canvas::is(int) const
; decoder-mode: arm
007c87bc  14 00 51 e3                                      cmp r1, #0x14
007c87c0  01 00 a0 03                                      moveq r0, #1
007c87c4  1e ff 2f 01                                      bxeq lr
007c87c8  0a 00 51 e3                                      cmp r1, #0xa
007c87cc  00 00 a0 13                                      movne r0, #0
007c87d0  01 00 a0 03                                      moveq r0, #1
007c87d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007c87d8, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas10close_pathEv
; demangled: gameswf::canvas::close_path()
; decoder-mode: arm
007c87d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007c87dc  44 30 90 e5                                      ldr r3, [r0, #0x44]
007c87e0  98 20 90 e5                                      ldr r2, [r0, #0x98]
007c87e4  28 40 a0 e3                                      mov r4, #0x28
007c87e8  1c d0 4d e2                                      sub sp, sp, #0x1c
007c87ec  94 32 24 e0                                      mla r4, r4, r2, r3
007c87f0  18 30 94 e5                                      ldr r3, [r4, #0x18]
007c87f4  00 00 53 e3                                      cmp r3, #0
007c87f8  20 00 00 da                                      ble #0x7c8880
007c87fc  14 20 94 e5                                      ldr r2, [r4, #0x14]
007c8800  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007c8804  01 70 43 e2                                      sub r7, r3, #1
007c8808  07 72 82 e0                                      add r7, r2, r7, lsl #4
007c880c  08 00 97 e5                                      ldr r0, [r7, #8]
007c8810  06 10 a0 e1                                      mov r1, r6
007c8814  dc 15 ed eb                                      bl #0x30df8c
007c8818  00 00 50 e3                                      cmp r0, #0
007c881c  10 50 94 05                                      ldreq r5, [r4, #0x10]
007c8820  05 00 00 0a                                      beq #0x7c883c
007c8824  10 50 94 e5                                      ldr r5, [r4, #0x10]
007c8828  0c 00 97 e5                                      ldr r0, [r7, #0xc]
007c882c  05 10 a0 e1                                      mov r1, r5
007c8830  d5 15 ed eb                                      bl #0x30df8c
007c8834  00 00 50 e3                                      cmp r0, #0
007c8838  10 00 00 1a                                      bne #0x7c8880
007c883c  08 70 8d e2                                      add r7, sp, #8
007c8840  05 20 a0 e1                                      mov r2, r5
007c8844  06 30 a0 e1                                      mov r3, r6
007c8848  06 10 a0 e1                                      mov r1, r6
007c884c  07 00 a0 e1                                      mov r0, r7
007c8850  00 50 8d e5                                      str r5, [sp]
007c8854  5f c2 fe eb                                      bl #0x7791d8
007c8858  18 c0 94 e5                                      ldr ip, [r4, #0x18]
007c885c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007c8860  01 50 8c e2                                      add r5, ip, #1
007c8864  03 00 55 e1                                      cmp r5, r3
007c8868  06 00 00 ca                                      bgt #0x7c8888
007c886c  14 60 94 e5                                      ldr r6, [r4, #0x14]
007c8870  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
007c8874  0c c2 86 e0                                      add ip, r6, ip, lsl #4
007c8878  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c887c  18 50 84 e5                                      str r5, [r4, #0x18]
007c8880  1c d0 8d e2                                      add sp, sp, #0x1c
007c8884  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007c8888  14 00 84 e2                                      add r0, r4, #0x14
007c888c  c5 10 85 e0                                      add r1, r5, r5, asr #1
007c8890  86 63 fe eb                                      bl #0x7616b0
007c8894  18 c0 94 e5                                      ldr ip, [r4, #0x18]
007c8898  f3 ff ff ea                                      b #0x7c886c

; FUNCTION 0x007c889c, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas8end_fillEv
; demangled: gameswf::canvas::end_fill()
; decoder-mode: arm
007c889c  98 30 90 e5                                      ldr r3, [r0, #0x98]
007c88a0  10 40 2d e9                                      push {r4, lr}
007c88a4  00 00 53 e3                                      cmp r3, #0
007c88a8  00 40 a0 e1                                      mov r4, r0
007c88ac  00 00 00 ba                                      blt #0x7c88b4
007c88b0  c8 ff ff eb                                      bl #0x7c87d8
007c88b4  00 30 a0 e3                                      mov r3, #0
007c88b8  90 30 84 e5                                      str r3, [r4, #0x90]
007c88bc  00 30 e0 e3                                      mvn r3, #0
007c88c0  98 30 84 e5                                      str r3, [r4, #0x98]
007c88c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c88c8, declared_size=152, range_size=152, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas8add_pathEb
; demangled: gameswf::canvas::add_path(bool)
; decoder-mode: arm
007c88c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007c88cc  98 30 90 e5                                      ldr r3, [r0, #0x98]
007c88d0  34 d0 4d e2                                      sub sp, sp, #0x34
007c88d4  00 40 a0 e1                                      mov r4, r0
007c88d8  00 00 53 e3                                      cmp r3, #0
007c88dc  01 70 a0 e1                                      mov r7, r1
007c88e0  03 00 00 ba                                      blt #0x7c88f4
007c88e4  90 30 90 e5                                      ldr r3, [r0, #0x90]
007c88e8  00 00 53 e3                                      cmp r3, #0
007c88ec  01 00 00 da                                      ble #0x7c88f8
007c88f0  b8 ff ff eb                                      bl #0x7c87d8
007c88f4  90 30 94 e5                                      ldr r3, [r4, #0x90]
007c88f8  94 c0 94 e5                                      ldr ip, [r4, #0x94]
007c88fc  08 60 8d e2                                      add r6, sp, #8
007c8900  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
007c8904  88 10 94 e5                                      ldr r1, [r4, #0x88]
007c8908  00 50 a0 e3                                      mov r5, #0
007c890c  06 00 a0 e1                                      mov r0, r6
007c8910  20 10 8d e8                                      stm sp, {r5, ip}
007c8914  82 c4 fe eb                                      bl #0x779b24
007c8918  06 10 a0 e1                                      mov r1, r6
007c891c  44 00 84 e2                                      add r0, r4, #0x44
007c8920  2c 70 cd e5                                      strb r7, [sp, #0x2c]
007c8924  c2 c4 fe eb                                      bl #0x779c34
007c8928  48 30 94 e5                                      ldr r3, [r4, #0x48]
007c892c  04 00 a0 e1                                      mov r0, r4
007c8930  14 60 86 e2                                      add r6, r6, #0x14
007c8934  01 30 43 e2                                      sub r3, r3, #1
007c8938  98 30 84 e5                                      str r3, [r4, #0x98]
007c893c  5a cf fe eb                                      bl #0x77c6ac
007c8940  06 00 a0 e1                                      mov r0, r6
007c8944  05 10 a0 e1                                      mov r1, r5
007c8948  4f 64 fe eb                                      bl #0x761a8c
007c894c  06 00 a0 e1                                      mov r0, r6
007c8950  05 10 a0 e1                                      mov r1, r5
007c8954  55 63 fe eb                                      bl #0x7616b0
007c8958  34 d0 8d e2                                      add sp, sp, #0x34
007c895c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007c8960, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas7move_toEff
; demangled: gameswf::canvas::move_to(float, float)
; decoder-mode: arm
007c8960  70 40 2d e9                                      push {r4, r5, r6, lr}
007c8964  00 40 a0 e1                                      mov r4, r0
007c8968  88 00 90 e5                                      ldr r0, [r0, #0x88]
007c896c  02 50 a0 e1                                      mov r5, r2
007c8970  01 60 a0 e1                                      mov r6, r1
007c8974  84 15 ed eb                                      bl #0x30df8c
007c8978  00 00 50 e3                                      cmp r0, #0
007c897c  04 00 00 0a                                      beq #0x7c8994
007c8980  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
007c8984  05 10 a0 e1                                      mov r1, r5
007c8988  7f 15 ed eb                                      bl #0x30df8c
007c898c  00 00 50 e3                                      cmp r0, #0
007c8990  05 00 00 1a                                      bne #0x7c89ac
007c8994  04 00 a0 e1                                      mov r0, r4
007c8998  00 10 a0 e3                                      mov r1, #0
007c899c  88 60 84 e5                                      str r6, [r4, #0x88]
007c89a0  8c 50 84 e5                                      str r5, [r4, #0x8c]
007c89a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c89a8  c6 ff ff ea                                      b #0x7c88c8
007c89ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c89b0, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas14set_line_styleEtRKNS_4rgbaE
; demangled: gameswf::canvas::set_line_style(unsigned short, gameswf::rgba const&)
; decoder-mode: arm
007c89b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007c89b4  74 d0 4d e2                                      sub sp, sp, #0x74
007c89b8  04 50 8d e2                                      add r5, sp, #4
007c89bc  00 40 a0 e1                                      mov r4, r0
007c89c0  02 70 a0 e1                                      mov r7, r2
007c89c4  05 00 a0 e1                                      mov r0, r5
007c89c8  01 60 a0 e1                                      mov r6, r1
007c89cc  53 f0 fe eb                                      bl #0x784b20
007c89d0  04 20 a0 e3                                      mov r2, #4
007c89d4  07 10 a0 e1                                      mov r1, r7
007c89d8  0a 00 8d e2                                      add r0, sp, #0xa
007c89dc  a1 17 ed eb                                      bl #0x30e868
007c89e0  34 00 84 e2                                      add r0, r4, #0x34
007c89e4  05 10 a0 e1                                      mov r1, r5
007c89e8  b8 60 cd e1                                      strh r6, [sp, #8]
007c89ec  f1 63 fe eb                                      bl #0x7619b8
007c89f0  38 30 94 e5                                      ldr r3, [r4, #0x38]
007c89f4  04 00 a0 e1                                      mov r0, r4
007c89f8  00 10 a0 e3                                      mov r1, #0
007c89fc  94 30 84 e5                                      str r3, [r4, #0x94]
007c8a00  24 60 9f e5                                      ldr r6, [pc, #0x24]
007c8a04  af ff ff eb                                      bl #0x7c88c8
007c8a08  20 30 9f e5                                      ldr r3, [pc, #0x20]
007c8a0c  06 60 8f e0                                      add r6, pc, r6
007c8a10  0c 00 85 e2                                      add r0, r5, #0xc
007c8a14  03 30 96 e7                                      ldr r3, [r6, r3]
007c8a18  08 30 83 e2                                      add r3, r3, #8
007c8a1c  04 30 8d e5                                      str r3, [sp, #4]
007c8a20  a1 f0 fe eb                                      bl #0x784cac
007c8a24  74 d0 8d e2                                      add sp, sp, #0x74
007c8a28  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007c8a2c  84 c0 1c 00 30 25 00 00                          .byte 0x84, 0xc0, 0x1c, 0x00, 0x30, 0x25, 0x00, 0x00

; FUNCTION 0x007c8a34, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas10begin_fillERKNS_4rgbaE
; demangled: gameswf::canvas::begin_fill(gameswf::rgba const&)
; decoder-mode: arm
007c8a34  70 40 2d e9                                      push {r4, r5, r6, lr}
007c8a38  58 d0 4d e2                                      sub sp, sp, #0x58
007c8a3c  04 50 8d e2                                      add r5, sp, #4
007c8a40  00 40 a0 e1                                      mov r4, r0
007c8a44  01 60 a0 e1                                      mov r6, r1
007c8a48  05 00 a0 e1                                      mov r0, r5
007c8a4c  0e f0 fe eb                                      bl #0x784a8c
007c8a50  04 20 a0 e3                                      mov r2, #4
007c8a54  00 30 a0 e3                                      mov r3, #0
007c8a58  06 10 a0 e1                                      mov r1, r6
007c8a5c  0c 00 8d e2                                      add r0, sp, #0xc
007c8a60  08 30 8d e5                                      str r3, [sp, #8]
007c8a64  7f 17 ed eb                                      bl #0x30e868
007c8a68  24 00 84 e2                                      add r0, r4, #0x24
007c8a6c  05 10 a0 e1                                      mov r1, r5
007c8a70  be 63 fe eb                                      bl #0x761970
007c8a74  28 30 94 e5                                      ldr r3, [r4, #0x28]
007c8a78  04 00 a0 e1                                      mov r0, r4
007c8a7c  01 10 a0 e3                                      mov r1, #1
007c8a80  90 30 84 e5                                      str r3, [r4, #0x90]
007c8a84  8f ff ff eb                                      bl #0x7c88c8
007c8a88  05 00 a0 e1                                      mov r0, r5
007c8a8c  86 f0 fe eb                                      bl #0x784cac
007c8a90  58 d0 8d e2                                      add sp, sp, #0x58
007c8a94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c8a98, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::canvas
; alias: _ZThn32_N7gameswf6canvasD1Ev
; demangled: non-virtual thunk to gameswf::canvas::~canvas()
; decoder-mode: arm
007c8a98  20 00 40 e2                                      sub r0, r0, #0x20
007c8a9c  ff ff ff ea                                      b #0x7c8aa0

; FUNCTION 0x007c8aa0, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvasD1Ev
; demangled: gameswf::canvas::~canvas()
; decoder-mode: arm
007c8aa0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007c8aa4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007c8aa8  10 40 2d e9                                      push {r4, lr}
007c8aac  02 20 8f e0                                      add r2, pc, r2
007c8ab0  03 30 92 e7                                      ldr r3, [r2, r3]
007c8ab4  00 40 a0 e1                                      mov r4, r0
007c8ab8  44 20 83 e2                                      add r2, r3, #0x44
007c8abc  08 30 83 e2                                      add r3, r3, #8
007c8ac0  00 30 80 e5                                      str r3, [r0]
007c8ac4  20 20 80 e5                                      str r2, [r0, #0x20]
007c8ac8  a8 ce fe eb                                      bl #0x77c570
007c8acc  04 00 a0 e1                                      mov r0, r4
007c8ad0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c8ad4  e4 bf 1c 00 40 40 00 00                          .byte 0xe4, 0xbf, 0x1c, 0x00, 0x40, 0x40, 0x00, 0x00

; FUNCTION 0x007c8adc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::canvas
; alias: _ZThn32_N7gameswf6canvasD0Ev
; demangled: non-virtual thunk to gameswf::canvas::~canvas()
; decoder-mode: arm
007c8adc  20 00 40 e2                                      sub r0, r0, #0x20
007c8ae0  ff ff ff ea                                      b #0x7c8ae4

; FUNCTION 0x007c8ae4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvasD0Ev
; demangled: gameswf::canvas::~canvas()
; decoder-mode: arm
007c8ae4  10 40 2d e9                                      push {r4, lr}
007c8ae8  00 40 a0 e1                                      mov r4, r0
007c8aec  eb ff ff eb                                      bl #0x7c8aa0
007c8af0  04 00 a0 e1                                      mov r0, r4
007c8af4  ed 15 ed eb                                      bl #0x30e2b0
007c8af8  04 00 a0 e1                                      mov r0, r4
007c8afc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c8b00, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvasD2Ev
; demangled: gameswf::canvas::~canvas()
; decoder-mode: arm
007c8b00  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007c8b04  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007c8b08  10 40 2d e9                                      push {r4, lr}
007c8b0c  02 20 8f e0                                      add r2, pc, r2
007c8b10  03 30 92 e7                                      ldr r3, [r2, r3]
007c8b14  00 40 a0 e1                                      mov r4, r0
007c8b18  44 20 83 e2                                      add r2, r3, #0x44
007c8b1c  08 30 83 e2                                      add r3, r3, #8
007c8b20  00 30 80 e5                                      str r3, [r0]
007c8b24  20 20 80 e5                                      str r2, [r0, #0x20]
007c8b28  90 ce fe eb                                      bl #0x77c570
007c8b2c  04 00 a0 e1                                      mov r0, r4
007c8b30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007c8b34  84 bf 1c 00 40 40 00 00                          .byte 0x84, 0xbf, 0x1c, 0x00, 0x40, 0x40, 0x00, 0x00

; FUNCTION 0x007c8b3c, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvasC1EPNS_6playerE
; demangled: gameswf::canvas::canvas(gameswf::player*)
; decoder-mode: arm
007c8b3c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c8b40  48 50 9f e5                                      ldr r5, [pc, #0x48]
007c8b44  00 40 a0 e1                                      mov r4, r0
007c8b48  6c cb fe eb                                      bl #0x77b900
007c8b4c  40 30 9f e5                                      ldr r3, [pc, #0x40]
007c8b50  05 50 8f e0                                      add r5, pc, r5
007c8b54  00 10 a0 e3                                      mov r1, #0
007c8b58  03 30 95 e7                                      ldr r3, [r5, r3]
007c8b5c  00 20 a0 e3                                      mov r2, #0
007c8b60  8c 10 84 e5                                      str r1, [r4, #0x8c]
007c8b64  44 00 83 e2                                      add r0, r3, #0x44
007c8b68  08 30 83 e2                                      add r3, r3, #8
007c8b6c  00 30 84 e5                                      str r3, [r4]
007c8b70  00 30 e0 e3                                      mvn r3, #0
007c8b74  20 00 84 e5                                      str r0, [r4, #0x20]
007c8b78  94 20 84 e5                                      str r2, [r4, #0x94]
007c8b7c  98 30 84 e5                                      str r3, [r4, #0x98]
007c8b80  88 10 84 e5                                      str r1, [r4, #0x88]
007c8b84  90 20 84 e5                                      str r2, [r4, #0x90]
007c8b88  04 00 a0 e1                                      mov r0, r4
007c8b8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c8b90  40 bf 1c 00 40 40 00 00                          .byte 0x40, 0xbf, 0x1c, 0x00, 0x40, 0x40, 0x00, 0x00

; FUNCTION 0x007c8b98, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvasC2EPNS_6playerE
; demangled: gameswf::canvas::canvas(gameswf::player*)
; decoder-mode: arm
007c8b98  70 40 2d e9                                      push {r4, r5, r6, lr}
007c8b9c  48 50 9f e5                                      ldr r5, [pc, #0x48]
007c8ba0  00 40 a0 e1                                      mov r4, r0
007c8ba4  55 cb fe eb                                      bl #0x77b900
007c8ba8  40 30 9f e5                                      ldr r3, [pc, #0x40]
007c8bac  05 50 8f e0                                      add r5, pc, r5
007c8bb0  00 10 a0 e3                                      mov r1, #0
007c8bb4  03 30 95 e7                                      ldr r3, [r5, r3]
007c8bb8  00 20 a0 e3                                      mov r2, #0
007c8bbc  8c 10 84 e5                                      str r1, [r4, #0x8c]
007c8bc0  44 00 83 e2                                      add r0, r3, #0x44
007c8bc4  08 30 83 e2                                      add r3, r3, #8
007c8bc8  00 30 84 e5                                      str r3, [r4]
007c8bcc  00 30 e0 e3                                      mvn r3, #0
007c8bd0  20 00 84 e5                                      str r0, [r4, #0x20]
007c8bd4  94 20 84 e5                                      str r2, [r4, #0x94]
007c8bd8  98 30 84 e5                                      str r3, [r4, #0x98]
007c8bdc  88 10 84 e5                                      str r1, [r4, #0x88]
007c8be0  90 20 84 e5                                      str r2, [r4, #0x90]
007c8be4  04 00 a0 e1                                      mov r0, r4
007c8be8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c8bec  e4 be 1c 00 40 40 00 00                          .byte 0xe4, 0xbe, 0x1c, 0x00, 0x40, 0x40, 0x00, 0x00

; FUNCTION 0x007c8bf4, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas7line_toEff
; demangled: gameswf::canvas::line_to(float, float)
; decoder-mode: arm
007c8bf4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007c8bf8  98 30 90 e5                                      ldr r3, [r0, #0x98]
007c8bfc  1c d0 4d e2                                      sub sp, sp, #0x1c
007c8c00  00 40 a0 e1                                      mov r4, r0
007c8c04  00 00 53 e3                                      cmp r3, #0
007c8c08  01 70 a0 e1                                      mov r7, r1
007c8c0c  02 60 a0 e1                                      mov r6, r2
007c8c10  1e 00 00 ba                                      blt #0x7c8c90
007c8c14  08 50 8d e2                                      add r5, sp, #8
007c8c18  88 70 84 e5                                      str r7, [r4, #0x88]
007c8c1c  8c 60 84 e5                                      str r6, [r4, #0x8c]
007c8c20  06 20 a0 e1                                      mov r2, r6
007c8c24  07 30 a0 e1                                      mov r3, r7
007c8c28  07 10 a0 e1                                      mov r1, r7
007c8c2c  05 00 a0 e1                                      mov r0, r5
007c8c30  00 60 8d e5                                      str r6, [sp]
007c8c34  67 c1 fe eb                                      bl #0x7791d8
007c8c38  44 30 94 e5                                      ldr r3, [r4, #0x44]
007c8c3c  98 20 94 e5                                      ldr r2, [r4, #0x98]
007c8c40  28 60 a0 e3                                      mov r6, #0x28
007c8c44  96 32 26 e0                                      mla r6, r6, r2, r3
007c8c48  18 c0 96 e5                                      ldr ip, [r6, #0x18]
007c8c4c  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
007c8c50  01 70 8c e2                                      add r7, ip, #1
007c8c54  03 00 57 e1                                      cmp r7, r3
007c8c58  03 00 00 da                                      ble #0x7c8c6c
007c8c5c  14 00 86 e2                                      add r0, r6, #0x14
007c8c60  c7 10 87 e0                                      add r1, r7, r7, asr #1
007c8c64  91 62 fe eb                                      bl #0x7616b0
007c8c68  18 c0 96 e5                                      ldr ip, [r6, #0x18]
007c8c6c  14 e0 96 e5                                      ldr lr, [r6, #0x14]
007c8c70  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c8c74  0c c2 8e e0                                      add ip, lr, ip, lsl #4
007c8c78  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c8c7c  18 70 86 e5                                      str r7, [r6, #0x18]
007c8c80  04 00 a0 e1                                      mov r0, r4
007c8c84  88 ce fe eb                                      bl #0x77c6ac
007c8c88  1c d0 8d e2                                      add sp, sp, #0x1c
007c8c8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007c8c90  01 10 a0 e3                                      mov r1, #1
007c8c94  0b ff ff eb                                      bl #0x7c88c8
007c8c98  dd ff ff ea                                      b #0x7c8c14

; FUNCTION 0x007c8c9c, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::canvas
; alias: _ZN7gameswf6canvas8curve_toEffff
; demangled: gameswf::canvas::curve_to(float, float, float, float)
; decoder-mode: arm
007c8c9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c8ca0  98 c0 90 e5                                      ldr ip, [r0, #0x98]
007c8ca4  20 d0 4d e2                                      sub sp, sp, #0x20
007c8ca8  00 40 a0 e1                                      mov r4, r0
007c8cac  00 00 5c e3                                      cmp ip, #0
007c8cb0  01 70 a0 e1                                      mov r7, r1
007c8cb4  38 80 9d e5                                      ldr r8, [sp, #0x38]
007c8cb8  1b 00 00 ba                                      blt #0x7c8d2c
007c8cbc  44 10 94 e5                                      ldr r1, [r4, #0x44]
007c8cc0  28 60 a0 e3                                      mov r6, #0x28
007c8cc4  10 50 8d e2                                      add r5, sp, #0x10
007c8cc8  96 1c 26 e0                                      mla r6, r6, ip, r1
007c8ccc  88 30 84 e5                                      str r3, [r4, #0x88]
007c8cd0  8c 80 84 e5                                      str r8, [r4, #0x8c]
007c8cd4  07 10 a0 e1                                      mov r1, r7
007c8cd8  05 00 a0 e1                                      mov r0, r5
007c8cdc  00 80 8d e5                                      str r8, [sp]
007c8ce0  3c c1 fe eb                                      bl #0x7791d8
007c8ce4  18 c0 96 e5                                      ldr ip, [r6, #0x18]
007c8ce8  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
007c8cec  01 70 8c e2                                      add r7, ip, #1
007c8cf0  03 00 57 e1                                      cmp r7, r3
007c8cf4  03 00 00 da                                      ble #0x7c8d08
007c8cf8  14 00 86 e2                                      add r0, r6, #0x14
007c8cfc  c7 10 87 e0                                      add r1, r7, r7, asr #1
007c8d00  6a 62 fe eb                                      bl #0x7616b0
007c8d04  18 c0 96 e5                                      ldr ip, [r6, #0x18]
007c8d08  14 e0 96 e5                                      ldr lr, [r6, #0x14]
007c8d0c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007c8d10  0c c2 8e e0                                      add ip, lr, ip, lsl #4
007c8d14  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c8d18  18 70 86 e5                                      str r7, [r6, #0x18]
007c8d1c  04 00 a0 e1                                      mov r0, r4
007c8d20  61 ce fe eb                                      bl #0x77c6ac
007c8d24  20 d0 8d e2                                      add sp, sp, #0x20
007c8d28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c8d2c  01 10 a0 e3                                      mov r1, #1
007c8d30  0c 20 8d e5                                      str r2, [sp, #0xc]
007c8d34  08 30 8d e5                                      str r3, [sp, #8]
007c8d38  e2 fe ff eb                                      bl #0x7c88c8
007c8d3c  98 c0 94 e5                                      ldr ip, [r4, #0x98]
007c8d40  08 30 9d e5                                      ldr r3, [sp, #8]
007c8d44  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007c8d48  db ff ff ea                                      b #0x7c8cbc
