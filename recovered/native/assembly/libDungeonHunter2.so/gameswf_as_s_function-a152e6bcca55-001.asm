; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007bb528, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_function7add_argEiPKc
; demangled: gameswf::as_s_function::add_arg(int, char const*)
; decoder-mode: arm
007bb528  70 40 2d e9                                      push {r4, r5, r6, lr}
007bb52c  64 30 90 e5                                      ldr r3, [r0, #0x64]
007bb530  00 40 a0 e1                                      mov r4, r0
007bb534  01 50 a0 e1                                      mov r5, r1
007bb538  60 00 80 e2                                      add r0, r0, #0x60
007bb53c  01 10 83 e2                                      add r1, r3, #1
007bb540  02 60 a0 e1                                      mov r6, r2
007bb544  b9 ff ff eb                                      bl #0x7bb430
007bb548  64 20 94 e5                                      ldr r2, [r4, #0x64]
007bb54c  18 30 a0 e3                                      mov r3, #0x18
007bb550  60 00 94 e5                                      ldr r0, [r4, #0x60]
007bb554  01 20 42 e2                                      sub r2, r2, #1
007bb558  93 02 02 e0                                      mul r2, r3, r2
007bb55c  06 10 a0 e1                                      mov r1, r6
007bb560  02 50 80 e7                                      str r5, [r0, r2]
007bb564  64 00 94 e5                                      ldr r0, [r4, #0x64]
007bb568  60 20 94 e5                                      ldr r2, [r4, #0x60]
007bb56c  01 00 40 e2                                      sub r0, r0, #1
007bb570  93 20 23 e0                                      mla r3, r3, r0, r2
007bb574  04 00 83 e2                                      add r0, r3, #4
007bb578  70 40 bd e8                                      pop {r4, r5, r6, lr}
007bb57c  a5 c4 fe ea                                      b #0x76c818

; FUNCTION 0x007d27f8, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZNK7gameswf13as_s_function2isEi
; demangled: gameswf::as_s_function::is(int) const
; decoder-mode: arm
007d27f8  06 00 51 e3                                      cmp r1, #6
007d27fc  04 00 00 0a                                      beq #0x7d2814
007d2800  04 00 51 e3                                      cmp r1, #4
007d2804  02 00 00 0a                                      beq #0x7d2814
007d2808  01 00 71 e2                                      rsbs r0, r1, #1
007d280c  00 00 a0 33                                      movlo r0, #0
007d2810  1e ff 2f e1                                      bx lr
007d2814  01 00 a0 e3                                      mov r0, #1
007d2818  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d2878, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_function10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_s_function::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007d2878  70 40 2d e9                                      push {r4, r5, r6, lr}
007d287c  00 60 a0 e1                                      mov r6, r0
007d2880  05 00 a0 e3                                      mov r0, #5
007d2884  01 50 a0 e1                                      mov r5, r1
007d2888  02 40 a0 e1                                      mov r4, r2
007d288c  5d 69 fe eb                                      bl #0x76ce08
007d2890  00 00 50 e3                                      cmp r0, #0
007d2894  01 00 00 0a                                      beq #0x7d28a0
007d2898  01 00 a0 e3                                      mov r0, #1
007d289c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d28a0  06 00 a0 e1                                      mov r0, r6
007d28a4  05 10 a0 e1                                      mov r1, r5
007d28a8  04 20 a0 e1                                      mov r2, r4
007d28ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d28b0  36 c0 ff ea                                      b #0x7c2990

; FUNCTION 0x007d2c8c, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionD1Ev
; demangled: gameswf::as_s_function::~as_s_function()
; decoder-mode: arm
007d2c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
007d2c90  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
007d2c94  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007d2c98  00 40 a0 e1                                      mov r4, r0
007d2c9c  05 50 8f e0                                      add r5, pc, r5
007d2ca0  74 00 90 e5                                      ldr r0, [r0, #0x74]
007d2ca4  03 30 95 e7                                      ldr r3, [r5, r3]
007d2ca8  00 00 50 e3                                      cmp r0, #0
007d2cac  08 30 83 e2                                      add r3, r3, #8
007d2cb0  00 30 84 e5                                      str r3, [r4]
007d2cb4  04 00 00 0a                                      beq #0x7d2ccc
007d2cb8  00 10 90 e5                                      ldr r1, [r0]
007d2cbc  01 10 41 e2                                      sub r1, r1, #1
007d2cc0  00 00 51 e3                                      cmp r1, #0
007d2cc4  00 10 80 e5                                      str r1, [r0]
007d2cc8  1c 00 00 0a                                      beq #0x7d2d40
007d2ccc  60 60 84 e2                                      add r6, r4, #0x60
007d2cd0  06 00 a0 e1                                      mov r0, r6
007d2cd4  79 ff ff eb                                      bl #0x7d2ac0
007d2cd8  06 00 a0 e1                                      mov r0, r6
007d2cdc  00 10 a0 e3                                      mov r1, #0
007d2ce0  48 60 84 e2                                      add r6, r4, #0x48
007d2ce4  e4 9e ff eb                                      bl #0x7ba87c
007d2ce8  00 10 a0 e3                                      mov r1, #0
007d2cec  06 00 a0 e1                                      mov r0, r6
007d2cf0  6d 9f ff eb                                      bl #0x7baaac
007d2cf4  06 00 a0 e1                                      mov r0, r6
007d2cf8  00 10 a0 e3                                      mov r1, #0
007d2cfc  84 1d fe eb                                      bl #0x75a314
007d2d00  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007d2d04  00 00 50 e3                                      cmp r0, #0
007d2d08  00 00 00 0a                                      beq #0x7d2d10
007d2d0c  38 23 fe eb                                      bl #0x75b9f4
007d2d10  38 30 9f e5                                      ldr r3, [pc, #0x38]
007d2d14  38 00 94 e5                                      ldr r0, [r4, #0x38]
007d2d18  03 30 95 e7                                      ldr r3, [r5, r3]
007d2d1c  00 00 50 e3                                      cmp r0, #0
007d2d20  08 30 83 e2                                      add r3, r3, #8
007d2d24  00 30 84 e5                                      str r3, [r4]
007d2d28  00 00 00 0a                                      beq #0x7d2d30
007d2d2c  43 1d fe eb                                      bl #0x75a240
007d2d30  04 00 a0 e1                                      mov r0, r4
007d2d34  58 5b fe eb                                      bl #0x769a9c
007d2d38  04 00 a0 e1                                      mov r0, r4
007d2d3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d2d40  7c ff fd eb                                      bl #0x752b38
007d2d44  e0 ff ff ea                                      b #0x7d2ccc
; mapping-symbol data/literal pool
007d2d48  f4 1d 1c 00 34 0f 00 00 88 27 00 00              .byte 0xf4, 0x1d, 0x1c, 0x00, 0x34, 0x0f, 0x00, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007d2d54, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionD0Ev
; demangled: gameswf::as_s_function::~as_s_function()
; decoder-mode: arm
007d2d54  10 40 2d e9                                      push {r4, lr}
007d2d58  00 40 a0 e1                                      mov r4, r0
007d2d5c  ca ff ff eb                                      bl #0x7d2c8c
007d2d60  04 00 a0 e1                                      mov r0, r4
007d2d64  51 ed ec eb                                      bl #0x30e2b0
007d2d68  04 00 a0 e1                                      mov r0, r4
007d2d6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d2d70, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionD2Ev
; demangled: gameswf::as_s_function::~as_s_function()
; decoder-mode: arm
007d2d70  70 40 2d e9                                      push {r4, r5, r6, lr}
007d2d74  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
007d2d78  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007d2d7c  00 40 a0 e1                                      mov r4, r0
007d2d80  05 50 8f e0                                      add r5, pc, r5
007d2d84  74 00 90 e5                                      ldr r0, [r0, #0x74]
007d2d88  03 30 95 e7                                      ldr r3, [r5, r3]
007d2d8c  00 00 50 e3                                      cmp r0, #0
007d2d90  08 30 83 e2                                      add r3, r3, #8
007d2d94  00 30 84 e5                                      str r3, [r4]
007d2d98  04 00 00 0a                                      beq #0x7d2db0
007d2d9c  00 10 90 e5                                      ldr r1, [r0]
007d2da0  01 10 41 e2                                      sub r1, r1, #1
007d2da4  00 00 51 e3                                      cmp r1, #0
007d2da8  00 10 80 e5                                      str r1, [r0]
007d2dac  1c 00 00 0a                                      beq #0x7d2e24
007d2db0  60 60 84 e2                                      add r6, r4, #0x60
007d2db4  06 00 a0 e1                                      mov r0, r6
007d2db8  40 ff ff eb                                      bl #0x7d2ac0
007d2dbc  06 00 a0 e1                                      mov r0, r6
007d2dc0  00 10 a0 e3                                      mov r1, #0
007d2dc4  48 60 84 e2                                      add r6, r4, #0x48
007d2dc8  ab 9e ff eb                                      bl #0x7ba87c
007d2dcc  00 10 a0 e3                                      mov r1, #0
007d2dd0  06 00 a0 e1                                      mov r0, r6
007d2dd4  34 9f ff eb                                      bl #0x7baaac
007d2dd8  06 00 a0 e1                                      mov r0, r6
007d2ddc  00 10 a0 e3                                      mov r1, #0
007d2de0  4b 1d fe eb                                      bl #0x75a314
007d2de4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007d2de8  00 00 50 e3                                      cmp r0, #0
007d2dec  00 00 00 0a                                      beq #0x7d2df4
007d2df0  ff 22 fe eb                                      bl #0x75b9f4
007d2df4  38 30 9f e5                                      ldr r3, [pc, #0x38]
007d2df8  38 00 94 e5                                      ldr r0, [r4, #0x38]
007d2dfc  03 30 95 e7                                      ldr r3, [r5, r3]
007d2e00  00 00 50 e3                                      cmp r0, #0
007d2e04  08 30 83 e2                                      add r3, r3, #8
007d2e08  00 30 84 e5                                      str r3, [r4]
007d2e0c  00 00 00 0a                                      beq #0x7d2e14
007d2e10  0a 1d fe eb                                      bl #0x75a240
007d2e14  04 00 a0 e1                                      mov r0, r4
007d2e18  1f 5b fe eb                                      bl #0x769a9c
007d2e1c  04 00 a0 e1                                      mov r0, r4
007d2e20  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d2e24  43 ff fd eb                                      bl #0x752b38
007d2e28  e0 ff ff ea                                      b #0x7d2db0
; mapping-symbol data/literal pool
007d2e2c  10 1d 1c 00 34 0f 00 00 88 27 00 00              .byte 0x10, 0x1d, 0x1c, 0x00, 0x34, 0x0f, 0x00, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007d2e38, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionC1EPNS_6playerEPKNS_13action_bufferEiRKNS_5arrayINS_16with_stack_entryEEE
; demangled: gameswf::as_s_function::as_s_function(gameswf::player*, gameswf::action_buffer const*, int, gameswf::array<gameswf::with_stack_entry> const&)
; decoder-mode: arm
007d2e38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d2e3c  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
007d2e40  00 60 a0 e1                                      mov r6, r0
007d2e44  02 50 a0 e1                                      mov r5, r2
007d2e48  01 a0 a0 e1                                      mov sl, r1
007d2e4c  03 90 a0 e1                                      mov sb, r3
007d2e50  a2 63 fe eb                                      bl #0x76bce0
007d2e54  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007d2e58  04 40 8f e0                                      add r4, pc, r4
007d2e5c  00 70 a0 e3                                      mov r7, #0
007d2e60  03 30 94 e7                                      ldr r3, [r4, r3]
007d2e64  06 80 a0 e1                                      mov r8, r6
007d2e68  38 70 86 e5                                      str r7, [r6, #0x38]
007d2e6c  08 30 83 e2                                      add r3, r3, #8
007d2e70  3c 30 88 e4                                      str r3, [r8], #0x3c
007d2e74  08 00 a0 e1                                      mov r0, r8
007d2e78  e2 9f ff eb                                      bl #0x7bae08
007d2e7c  20 10 9d e5                                      ldr r1, [sp, #0x20]
007d2e80  48 00 86 e2                                      add r0, r6, #0x48
007d2e84  48 70 86 e5                                      str r7, [r6, #0x48]
007d2e88  4c 70 86 e5                                      str r7, [r6, #0x4c]
007d2e8c  50 70 86 e5                                      str r7, [r6, #0x50]
007d2e90  54 70 c6 e5                                      strb r7, [r6, #0x54]
007d2e94  2d 9f ff eb                                      bl #0x7bab50
007d2e98  08 00 a0 e1                                      mov r0, r8
007d2e9c  05 10 a0 e1                                      mov r1, r5
007d2ea0  58 90 86 e5                                      str sb, [r6, #0x58]
007d2ea4  5c 70 86 e5                                      str r7, [r6, #0x5c]
007d2ea8  60 70 86 e5                                      str r7, [r6, #0x60]
007d2eac  64 70 86 e5                                      str r7, [r6, #0x64]
007d2eb0  68 70 86 e5                                      str r7, [r6, #0x68]
007d2eb4  6c 70 c6 e5                                      strb r7, [r6, #0x6c]
007d2eb8  70 70 c6 e5                                      strb r7, [r6, #0x70]
007d2ebc  71 70 c6 e5                                      strb r7, [r6, #0x71]
007d2ec0  b2 77 c6 e1                                      strh r7, [r6, #0x72]
007d2ec4  74 70 86 e5                                      str r7, [r6, #0x74]
007d2ec8  78 70 86 e5                                      str r7, [r6, #0x78]
007d2ecc  c4 a0 ff eb                                      bl #0x7bb1e4
007d2ed0  20 00 86 e2                                      add r0, r6, #0x20
007d2ed4  06 10 a0 e1                                      mov r1, r6
007d2ed8  6a 2f fe eb                                      bl #0x75ec88
007d2edc  07 10 a0 e1                                      mov r1, r7
007d2ee0  38 00 a0 e3                                      mov r0, #0x38
007d2ee4  2f ff fd eb                                      bl #0x752ba8
007d2ee8  0a 10 a0 e1                                      mov r1, sl
007d2eec  00 40 a0 e1                                      mov r4, r0
007d2ef0  4a 62 fe eb                                      bl #0x76b820
007d2ef4  38 00 86 e2                                      add r0, r6, #0x38
007d2ef8  04 10 a0 e1                                      mov r1, r4
007d2efc  71 57 fe eb                                      bl #0x768cc8
007d2f00  06 00 a0 e1                                      mov r0, r6
007d2f04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007d2f08  38 1c 1c 00 34 0f 00 00                          .byte 0x38, 0x1c, 0x1c, 0x00, 0x34, 0x0f, 0x00, 0x00

; FUNCTION 0x007d2f10, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionC2EPNS_6playerEPKNS_13action_bufferEiRKNS_5arrayINS_16with_stack_entryEEE
; demangled: gameswf::as_s_function::as_s_function(gameswf::player*, gameswf::action_buffer const*, int, gameswf::array<gameswf::with_stack_entry> const&)
; decoder-mode: arm
007d2f10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d2f14  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
007d2f18  00 60 a0 e1                                      mov r6, r0
007d2f1c  02 50 a0 e1                                      mov r5, r2
007d2f20  01 a0 a0 e1                                      mov sl, r1
007d2f24  03 90 a0 e1                                      mov sb, r3
007d2f28  6c 63 fe eb                                      bl #0x76bce0
007d2f2c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007d2f30  04 40 8f e0                                      add r4, pc, r4
007d2f34  00 70 a0 e3                                      mov r7, #0
007d2f38  03 30 94 e7                                      ldr r3, [r4, r3]
007d2f3c  06 80 a0 e1                                      mov r8, r6
007d2f40  38 70 86 e5                                      str r7, [r6, #0x38]
007d2f44  08 30 83 e2                                      add r3, r3, #8
007d2f48  3c 30 88 e4                                      str r3, [r8], #0x3c
007d2f4c  08 00 a0 e1                                      mov r0, r8
007d2f50  ac 9f ff eb                                      bl #0x7bae08
007d2f54  20 10 9d e5                                      ldr r1, [sp, #0x20]
007d2f58  48 00 86 e2                                      add r0, r6, #0x48
007d2f5c  48 70 86 e5                                      str r7, [r6, #0x48]
007d2f60  4c 70 86 e5                                      str r7, [r6, #0x4c]
007d2f64  50 70 86 e5                                      str r7, [r6, #0x50]
007d2f68  54 70 c6 e5                                      strb r7, [r6, #0x54]
007d2f6c  f7 9e ff eb                                      bl #0x7bab50
007d2f70  08 00 a0 e1                                      mov r0, r8
007d2f74  05 10 a0 e1                                      mov r1, r5
007d2f78  58 90 86 e5                                      str sb, [r6, #0x58]
007d2f7c  5c 70 86 e5                                      str r7, [r6, #0x5c]
007d2f80  60 70 86 e5                                      str r7, [r6, #0x60]
007d2f84  64 70 86 e5                                      str r7, [r6, #0x64]
007d2f88  68 70 86 e5                                      str r7, [r6, #0x68]
007d2f8c  6c 70 c6 e5                                      strb r7, [r6, #0x6c]
007d2f90  70 70 c6 e5                                      strb r7, [r6, #0x70]
007d2f94  71 70 c6 e5                                      strb r7, [r6, #0x71]
007d2f98  b2 77 c6 e1                                      strh r7, [r6, #0x72]
007d2f9c  74 70 86 e5                                      str r7, [r6, #0x74]
007d2fa0  78 70 86 e5                                      str r7, [r6, #0x78]
007d2fa4  8e a0 ff eb                                      bl #0x7bb1e4
007d2fa8  20 00 86 e2                                      add r0, r6, #0x20
007d2fac  06 10 a0 e1                                      mov r1, r6
007d2fb0  34 2f fe eb                                      bl #0x75ec88
007d2fb4  07 10 a0 e1                                      mov r1, r7
007d2fb8  38 00 a0 e3                                      mov r0, #0x38
007d2fbc  f9 fe fd eb                                      bl #0x752ba8
007d2fc0  0a 10 a0 e1                                      mov r1, sl
007d2fc4  00 40 a0 e1                                      mov r4, r0
007d2fc8  14 62 fe eb                                      bl #0x76b820
007d2fcc  38 00 86 e2                                      add r0, r6, #0x38
007d2fd0  04 10 a0 e1                                      mov r1, r4
007d2fd4  3b 57 fe eb                                      bl #0x768cc8
007d2fd8  06 00 a0 e1                                      mov r0, r6
007d2fdc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
007d2fe0  60 1b 1c 00 34 0f 00 00                          .byte 0x60, 0x1b, 0x1c, 0x00, 0x34, 0x0f, 0x00, 0x00

; FUNCTION 0x007d2fe8, declared_size=2516, range_size=2516, mode=arm
; class-group: gameswf::as_s_function
; alias: _ZN7gameswf13as_s_functionclERKNS_7fn_callE
; demangled: gameswf::as_s_function::operator()(gameswf::fn_call const&)
; decoder-mode: arm
007d2fe8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d2fec  a8 29 9f e5                                      ldr r2, [pc, #0x9a8]
007d2ff0  a8 39 9f e5                                      ldr r3, [pc, #0x9a8]
007d2ff4  4f df 4d e2                                      sub sp, sp, #0x13c
007d2ff8  02 20 8f e0                                      add r2, pc, r2
007d2ffc  18 30 8d e5                                      str r3, [sp, #0x18]
007d3000  03 30 92 e7                                      ldr r3, [r2, r3]
007d3004  10 20 8d e5                                      str r2, [sp, #0x10]
007d3008  00 50 a0 e1                                      mov r5, r0
007d300c  78 00 90 e5                                      ldr r0, [r0, #0x78]
007d3010  00 30 93 e5                                      ldr r3, [r3]
007d3014  01 40 a0 e1                                      mov r4, r1
007d3018  00 00 50 e3                                      cmp r0, #0
007d301c  14 00 8d e5                                      str r0, [sp, #0x14]
007d3020  34 31 8d e5                                      str r3, [sp, #0x134]
007d3024  53 01 00 0a                                      beq #0x7d3578
007d3028  74 00 95 e5                                      ldr r0, [r5, #0x74]
007d302c  04 30 d0 e5                                      ldrb r3, [r0, #4]
007d3030  00 00 53 e3                                      cmp r3, #0
007d3034  46 01 00 0a                                      beq #0x7d3554
007d3038  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d303c  08 1b fe eb                                      bl #0x759c64
007d3040  04 30 94 e5                                      ldr r3, [r4, #4]
007d3044  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007d3048  00 00 53 e3                                      cmp r3, #0
007d304c  0b 00 00 0a                                      beq #0x7d3080
007d3050  03 00 a0 e1                                      mov r0, r3
007d3054  00 30 93 e5                                      ldr r3, [r3]
007d3058  0f e0 a0 e1                                      mov lr, pc
007d305c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007d3060  00 00 50 e3                                      cmp r0, #0
007d3064  05 00 00 0a                                      beq #0x7d3080
007d3068  04 30 94 e5                                      ldr r3, [r4, #4]
007d306c  03 00 a0 e1                                      mov r0, r3
007d3070  00 30 93 e5                                      ldr r3, [r3]
007d3074  0f e0 a0 e1                                      mov lr, pc
007d3078  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007d307c  00 60 a0 e1                                      mov r6, r0
007d3080  06 00 a0 e1                                      mov r0, r6
007d3084  8e e7 ff eb                                      bl #0x7ccec4
007d3088  04 b0 94 e5                                      ldr fp, [r4, #4]
007d308c  00 00 5b e3                                      cmp fp, #0
007d3090  00 b0 a0 01                                      moveq fp, r0
007d3094  07 00 00 0a                                      beq #0x7d30b8
007d3098  24 30 9b e5                                      ldr r3, [fp, #0x24]
007d309c  00 00 53 e3                                      cmp r3, #0
007d30a0  04 00 00 0a                                      beq #0x7d30b8
007d30a4  20 00 9b e5                                      ldr r0, [fp, #0x20]
007d30a8  04 20 d0 e5                                      ldrb r2, [r0, #4]
007d30ac  00 00 52 e3                                      cmp r2, #0
007d30b0  03 b0 a0 11                                      movne fp, r3
007d30b4  43 01 00 0a                                      beq #0x7d35c8
007d30b8  78 70 95 e5                                      ldr r7, [r5, #0x78]
007d30bc  00 00 57 e3                                      cmp r7, #0
007d30c0  0a 00 00 0a                                      beq #0x7d30f0
007d30c4  74 00 95 e5                                      ldr r0, [r5, #0x74]
007d30c8  04 30 d0 e5                                      ldrb r3, [r0, #4]
007d30cc  00 00 53 e3                                      cmp r3, #0
007d30d0  32 01 00 0a                                      beq #0x7d35a0
007d30d4  00 30 97 e5                                      ldr r3, [r7]
007d30d8  07 00 a0 e1                                      mov r0, r7
007d30dc  01 10 a0 e3                                      mov r1, #1
007d30e0  0f e0 a0 e1                                      mov lr, pc
007d30e4  08 f0 93 e5                                      ldr pc, [r3, #8]
007d30e8  00 00 50 e3                                      cmp r0, #0
007d30ec  7b 00 00 1a                                      bne #0x7d32e0
007d30f0  58 10 96 e5                                      ldr r1, [r6, #0x58]
007d30f4  06 00 a0 e1                                      mov r0, r6
007d30f8  1c 10 8d e5                                      str r1, [sp, #0x1c]
007d30fc  a4 fe ff eb                                      bl #0x7d2b94
007d3100  70 80 d5 e5                                      ldrb r8, [r5, #0x70]
007d3104  00 00 58 e3                                      cmp r8, #0
007d3108  8a 00 00 1a                                      bne #0x7d3338
007d310c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d3110  64 a0 95 e5                                      ldr sl, [r5, #0x64]
007d3114  03 00 5a e1                                      cmp sl, r3
007d3118  03 a0 a0 a1                                      movge sl, r3
007d311c  00 00 5a e3                                      cmp sl, #0
007d3120  0f 00 00 da                                      ble #0x7d3164
007d3124  08 70 a0 e1                                      mov r7, r8
007d3128  0c 90 a0 e3                                      mov sb, #0xc
007d312c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d3130  60 10 95 e5                                      ldr r1, [r5, #0x60]
007d3134  14 20 94 e5                                      ldr r2, [r4, #0x14]
007d3138  00 30 93 e5                                      ldr r3, [r3]
007d313c  08 10 81 e0                                      add r1, r1, r8
007d3140  02 20 67 e0                                      rsb r2, r7, r2
007d3144  99 32 22 e0                                      mla r2, sb, r2, r3
007d3148  04 10 81 e2                                      add r1, r1, #4
007d314c  01 70 87 e2                                      add r7, r7, #1
007d3150  06 00 a0 e1                                      mov r0, r6
007d3154  9a e8 ff eb                                      bl #0x7cd3c4
007d3158  0a 00 57 e1                                      cmp r7, sl
007d315c  18 80 88 e2                                      add r8, r8, #0x18
007d3160  f1 ff ff 1a                                      bne #0x7d312c
007d3164  38 18 9f e5                                      ldr r1, [pc, #0x838]
007d3168  12 8e 8d e2                                      add r8, sp, #0x120
007d316c  08 00 a0 e1                                      mov r0, r8
007d3170  01 10 8f e0                                      add r1, pc, r1
007d3174  40 02 f1 eb                                      bl #0x413a7c
007d3178  00 30 a0 e3                                      mov r3, #0
007d317c  ac 30 cd e5                                      strb r3, [sp, #0xac]
007d3180  00 00 5b e3                                      cmp fp, #0
007d3184  05 30 a0 e3                                      mov r3, #5
007d3188  ad 30 cd e5                                      strb r3, [sp, #0xad]
007d318c  b0 b0 8d e5                                      str fp, [sp, #0xb0]
007d3190  01 00 00 0a                                      beq #0x7d319c
007d3194  0b 00 a0 e1                                      mov r0, fp
007d3198  b1 1a fe eb                                      bl #0x759c64
007d319c  ac 70 8d e2                                      add r7, sp, #0xac
007d31a0  07 20 a0 e1                                      mov r2, r7
007d31a4  08 10 a0 e1                                      mov r1, r8
007d31a8  06 00 a0 e1                                      mov r0, r6
007d31ac  c2 e8 ff eb                                      bl #0x7cd4bc
007d31b0  07 00 a0 e1                                      mov r0, r7
007d31b4  da 0f ff eb                                      bl #0x797124
007d31b8  20 21 dd e5                                      ldrb r2, [sp, #0x120]
007d31bc  72 30 af e6                                      sxtb r3, r2
007d31c0  01 00 73 e3                                      cmn r3, #1
007d31c4  35 01 00 0a                                      beq #0x7d36a0
007d31c8  04 30 94 e5                                      ldr r3, [r4, #4]
007d31cc  00 00 53 e3                                      cmp r3, #0
007d31d0  1c 00 00 0a                                      beq #0x7d3248
007d31d4  cc 17 9f e5                                      ldr r1, [pc, #0x7cc]
007d31d8  43 8f 8d e2                                      add r8, sp, #0x10c
007d31dc  08 00 a0 e1                                      mov r0, r8
007d31e0  01 10 8f e0                                      add r1, pc, r1
007d31e4  24 02 f1 eb                                      bl #0x413a7c
007d31e8  04 30 94 e5                                      ldr r3, [r4, #4]
007d31ec  03 00 a0 e1                                      mov r0, r3
007d31f0  00 30 93 e5                                      ldr r3, [r3]
007d31f4  0f e0 a0 e1                                      mov lr, pc
007d31f8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007d31fc  00 20 a0 e3                                      mov r2, #0
007d3200  a0 20 cd e5                                      strb r2, [sp, #0xa0]
007d3204  00 00 50 e3                                      cmp r0, #0
007d3208  05 20 a0 e3                                      mov r2, #5
007d320c  a1 20 cd e5                                      strb r2, [sp, #0xa1]
007d3210  a4 00 8d e5                                      str r0, [sp, #0xa4]
007d3214  00 00 00 0a                                      beq #0x7d321c
007d3218  91 1a fe eb                                      bl #0x759c64
007d321c  a0 70 8d e2                                      add r7, sp, #0xa0
007d3220  08 10 a0 e1                                      mov r1, r8
007d3224  07 20 a0 e1                                      mov r2, r7
007d3228  06 00 a0 e1                                      mov r0, r6
007d322c  64 e8 ff eb                                      bl #0x7cd3c4
007d3230  07 00 a0 e1                                      mov r0, r7
007d3234  ba 0f ff eb                                      bl #0x797124
007d3238  0c 01 dd e5                                      ldrb r0, [sp, #0x10c]
007d323c  70 30 af e6                                      sxtb r3, r0
007d3240  01 00 73 e3                                      cmn r3, #1
007d3244  11 01 00 0a                                      beq #0x7d3690
007d3248  00 e0 94 e5                                      ldr lr, [r4]
007d324c  70 70 d5 e5                                      ldrb r7, [r5, #0x70]
007d3250  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
007d3254  58 20 95 e5                                      ldr r2, [r5, #0x58]
007d3258  48 c0 85 e2                                      add ip, r5, #0x48
007d325c  3c 00 85 e2                                      add r0, r5, #0x3c
007d3260  06 10 a0 e1                                      mov r1, r6
007d3264  04 40 96 e5                                      ldr r4, [r6, #4]
007d3268  00 e0 8d e5                                      str lr, [sp]
007d326c  04 c0 8d e5                                      str ip, [sp, #4]
007d3270  08 70 8d e5                                      str r7, [sp, #8]
007d3274  ed a3 ff eb                                      bl #0x7bc230
007d3278  04 30 96 e5                                      ldr r3, [r6, #4]
007d327c  03 00 54 e1                                      cmp r4, r3
007d3280  02 00 00 0a                                      beq #0x7d3290
007d3284  04 10 a0 e1                                      mov r1, r4
007d3288  06 00 a0 e1                                      mov r0, r6
007d328c  44 ae fe eb                                      bl #0x77eba4
007d3290  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007d3294  54 00 86 e2                                      add r0, r6, #0x54
007d3298  cd fd ff eb                                      bl #0x7d29d4
007d329c  70 30 d5 e5                                      ldrb r3, [r5, #0x70]
007d32a0  00 00 53 e3                                      cmp r3, #0
007d32a4  b6 00 00 1a                                      bne #0x7d3584
007d32a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
007d32ac  00 00 51 e3                                      cmp r1, #0
007d32b0  01 00 00 0a                                      beq #0x7d32bc
007d32b4  01 00 a0 e1                                      mov r0, r1
007d32b8  e0 1b fe eb                                      bl #0x75a240
007d32bc  10 10 9d e5                                      ldr r1, [sp, #0x10]
007d32c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d32c4  34 21 9d e5                                      ldr r2, [sp, #0x134]
007d32c8  00 30 91 e7                                      ldr r3, [r1, r0]
007d32cc  00 30 93 e5                                      ldr r3, [r3]
007d32d0  03 00 52 e1                                      cmp r2, r3
007d32d4  af 01 00 1a                                      bne #0x7d3998
007d32d8  4f df 8d e2                                      add sp, sp, #0x13c
007d32dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d32e0  b4 39 d7 e1                                      ldrh r3, [r7, #0x94]
007d32e4  00 00 53 e3                                      cmp r3, #0
007d32e8  8a 00 00 0a                                      beq #0x7d3518
007d32ec  78 30 95 e5                                      ldr r3, [r5, #0x78]
007d32f0  00 00 53 e3                                      cmp r3, #0
007d32f4  03 00 00 0a                                      beq #0x7d3308
007d32f8  74 00 95 e5                                      ldr r0, [r5, #0x74]
007d32fc  04 20 d0 e5                                      ldrb r2, [r0, #4]
007d3300  00 00 52 e3                                      cmp r2, #0
007d3304  86 01 00 0a                                      beq #0x7d3924
007d3308  03 00 a0 e1                                      mov r0, r3
007d330c  00 30 93 e5                                      ldr r3, [r3]
007d3310  0f e0 a0 e1                                      mov lr, pc
007d3314  58 f0 93 e5                                      ldr pc, [r3, #0x58]
007d3318  00 60 a0 e1                                      mov r6, r0
007d331c  58 10 96 e5                                      ldr r1, [r6, #0x58]
007d3320  06 00 a0 e1                                      mov r0, r6
007d3324  1c 10 8d e5                                      str r1, [sp, #0x1c]
007d3328  19 fe ff eb                                      bl #0x7d2b94
007d332c  70 80 d5 e5                                      ldrb r8, [r5, #0x70]
007d3330  00 00 58 e3                                      cmp r8, #0
007d3334  74 ff ff 0a                                      beq #0x7d310c
007d3338  44 10 96 e5                                      ldr r1, [r6, #0x44]
007d333c  71 30 d5 e5                                      ldrb r3, [r5, #0x71]
007d3340  40 00 86 e2                                      add r0, r6, #0x40
007d3344  01 10 81 e2                                      add r1, r1, #1
007d3348  03 10 81 e0                                      add r1, r1, r3
007d334c  14 ae fe eb                                      bl #0x77eba4
007d3350  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d3354  64 90 95 e5                                      ldr sb, [r5, #0x64]
007d3358  03 00 59 e1                                      cmp sb, r3
007d335c  03 90 a0 a1                                      movge sb, r3
007d3360  00 00 59 e3                                      cmp sb, #0
007d3364  23 00 00 da                                      ble #0x7d33f8
007d3368  00 70 a0 e3                                      mov r7, #0
007d336c  07 80 a0 e1                                      mov r8, r7
007d3370  0c a0 a0 e3                                      mov sl, #0xc
007d3374  0b 00 00 ea                                      b #0x7d33a8
007d3378  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d337c  14 20 94 e5                                      ldr r2, [r4, #0x14]
007d3380  04 10 81 e2                                      add r1, r1, #4
007d3384  00 30 93 e5                                      ldr r3, [r3]
007d3388  02 20 68 e0                                      rsb r2, r8, r2
007d338c  06 00 a0 e1                                      mov r0, r6
007d3390  9a 32 22 e0                                      mla r2, sl, r2, r3
007d3394  01 80 88 e2                                      add r8, r8, #1
007d3398  09 e8 ff eb                                      bl #0x7cd3c4
007d339c  09 00 58 e1                                      cmp r8, sb
007d33a0  18 70 87 e2                                      add r7, r7, #0x18
007d33a4  13 00 00 0a                                      beq #0x7d33f8
007d33a8  60 10 95 e5                                      ldr r1, [r5, #0x60]
007d33ac  07 20 91 e7                                      ldr r2, [r1, r7]
007d33b0  07 10 81 e0                                      add r1, r1, r7
007d33b4  00 00 52 e3                                      cmp r2, #0
007d33b8  ee ff ff 0a                                      beq #0x7d3378
007d33bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d33c0  44 c0 96 e5                                      ldr ip, [r6, #0x44]
007d33c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007d33c8  00 30 93 e5                                      ldr r3, [r3]
007d33cc  40 00 96 e5                                      ldr r0, [r6, #0x40]
007d33d0  01 c0 4c e2                                      sub ip, ip, #1
007d33d4  0c 20 62 e0                                      rsb r2, r2, ip
007d33d8  01 10 68 e0                                      rsb r1, r8, r1
007d33dc  9a 02 20 e0                                      mla r0, sl, r2, r0
007d33e0  9a 31 21 e0                                      mla r1, sl, r1, r3
007d33e4  01 80 88 e2                                      add r8, r8, #1
007d33e8  d3 10 ff eb                                      bl #0x79773c
007d33ec  09 00 58 e1                                      cmp r8, sb
007d33f0  18 70 87 e2                                      add r7, r7, #0x18
007d33f4  eb ff ff 1a                                      bne #0x7d33a8
007d33f8  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d33fc  01 00 13 e3                                      tst r3, #1
007d3400  01 a0 a0 03                                      moveq sl, #1
007d3404  36 01 00 1a                                      bne #0x7d38e4
007d3408  02 00 13 e3                                      tst r3, #2
007d340c  20 01 00 0a                                      beq #0x7d3894
007d3410  0c 20 03 e2                                      and r2, r3, #0xc
007d3414  08 00 52 e3                                      cmp r2, #8
007d3418  00 20 a0 e3                                      mov r2, #0
007d341c  b8 20 8d e5                                      str r2, [sp, #0xb8]
007d3420  29 00 00 0a                                      beq #0x7d34cc
007d3424  68 70 96 e5                                      ldr r7, [r6, #0x68]
007d3428  02 00 57 e1                                      cmp r7, r2
007d342c  08 00 00 0a                                      beq #0x7d3454
007d3430  64 30 96 e5                                      ldr r3, [r6, #0x64]
007d3434  04 80 d3 e5                                      ldrb r8, [r3, #4]
007d3438  02 00 58 e1                                      cmp r8, r2
007d343c  04 00 00 1a                                      bne #0x7d3454
007d3440  64 00 86 e2                                      add r0, r6, #0x64
007d3444  08 10 a0 e1                                      mov r1, r8
007d3448  8d 32 f1 eb                                      bl #0x41fe84
007d344c  08 70 a0 e1                                      mov r7, r8
007d3450  68 80 86 e5                                      str r8, [r6, #0x68]
007d3454  00 10 a0 e3                                      mov r1, #0
007d3458  5c 00 a0 e3                                      mov r0, #0x5c
007d345c  d1 fd fd eb                                      bl #0x752ba8
007d3460  07 10 a0 e1                                      mov r1, r7
007d3464  00 80 a0 e1                                      mov r8, r0
007d3468  3b 14 ff eb                                      bl #0x79855c
007d346c  08 10 a0 e1                                      mov r1, r8
007d3470  b8 00 8d e2                                      add r0, sp, #0xb8
007d3474  ef fc ff eb                                      bl #0x7d2838
007d3478  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d347c  00 00 53 e3                                      cmp r3, #0
007d3480  00 70 a0 c3                                      movgt r7, #0
007d3484  0c 80 a0 c3                                      movgt r8, #0xc
007d3488  0e 00 00 da                                      ble #0x7d34c8
007d348c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007d3490  14 20 94 e5                                      ldr r2, [r4, #0x14]
007d3494  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
007d3498  00 10 91 e5                                      ldr r1, [r1]
007d349c  02 20 67 e0                                      rsb r2, r7, r2
007d34a0  03 00 a0 e1                                      mov r0, r3
007d34a4  98 12 22 e0                                      mla r2, r8, r2, r1
007d34a8  00 30 93 e5                                      ldr r3, [r3]
007d34ac  07 10 a0 e1                                      mov r1, r7
007d34b0  0f e0 a0 e1                                      mov lr, pc
007d34b4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007d34b8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007d34bc  01 70 87 e2                                      add r7, r7, #1
007d34c0  07 00 53 e1                                      cmp r3, r7
007d34c4  f0 ff ff ca                                      bgt #0x7d348c
007d34c8  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d34cc  04 00 13 e3                                      tst r3, #4
007d34d0  de 00 00 1a                                      bne #0x7d3850
007d34d4  08 00 13 e3                                      tst r3, #8
007d34d8  b7 00 00 0a                                      beq #0x7d37bc
007d34dc  10 00 13 e3                                      tst r3, #0x10
007d34e0  9f 00 00 1a                                      bne #0x7d3764
007d34e4  20 00 13 e3                                      tst r3, #0x20
007d34e8  84 00 00 0a                                      beq #0x7d3700
007d34ec  40 00 13 e3                                      tst r3, #0x40
007d34f0  6e 00 00 1a                                      bne #0x7d36b0
007d34f4  80 00 13 e3                                      tst r3, #0x80
007d34f8  3c 00 00 1a                                      bne #0x7d35f0
007d34fc  01 0c 13 e3                                      tst r3, #0x100
007d3500  c1 00 00 1a                                      bne #0x7d380c
007d3504  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
007d3508  00 00 50 e3                                      cmp r0, #0
007d350c  4d ff ff 0a                                      beq #0x7d3248
007d3510  4a 1b fe eb                                      bl #0x75a240
007d3514  4b ff ff ea                                      b #0x7d3248
007d3518  40 30 97 e5                                      ldr r3, [r7, #0x40]
007d351c  00 00 53 e3                                      cmp r3, #0
007d3520  07 00 00 0a                                      beq #0x7d3544
007d3524  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
007d3528  04 80 d3 e5                                      ldrb r8, [r3, #4]
007d352c  00 00 58 e3                                      cmp r8, #0
007d3530  ee fe ff 1a                                      bne #0x7d30f0
007d3534  3c 00 87 e2                                      add r0, r7, #0x3c
007d3538  08 10 a0 e1                                      mov r1, r8
007d353c  50 32 f1 eb                                      bl #0x41fe84
007d3540  40 80 87 e5                                      str r8, [r7, #0x40]
007d3544  38 30 97 e5                                      ldr r3, [r7, #0x38]
007d3548  01 00 73 e3                                      cmn r3, #1
007d354c  e7 fe ff 1a                                      bne #0x7d30f0
007d3550  65 ff ff ea                                      b #0x7d32ec
007d3554  00 10 90 e5                                      ldr r1, [r0]
007d3558  01 10 41 e2                                      sub r1, r1, #1
007d355c  00 00 51 e3                                      cmp r1, #0
007d3560  00 10 80 e5                                      str r1, [r0]
007d3564  00 00 00 1a                                      bne #0x7d356c
007d3568  72 fd fd eb                                      bl #0x752b38
007d356c  00 30 a0 e3                                      mov r3, #0
007d3570  78 30 85 e5                                      str r3, [r5, #0x78]
007d3574  74 30 85 e5                                      str r3, [r5, #0x74]
007d3578  00 20 a0 e3                                      mov r2, #0
007d357c  14 20 8d e5                                      str r2, [sp, #0x14]
007d3580  ae fe ff ea                                      b #0x7d3040
007d3584  44 10 96 e5                                      ldr r1, [r6, #0x44]
007d3588  71 30 d5 e5                                      ldrb r3, [r5, #0x71]
007d358c  40 00 86 e2                                      add r0, r6, #0x40
007d3590  01 10 41 e2                                      sub r1, r1, #1
007d3594  01 10 63 e0                                      rsb r1, r3, r1
007d3598  81 ad fe eb                                      bl #0x77eba4
007d359c  41 ff ff ea                                      b #0x7d32a8
007d35a0  00 10 90 e5                                      ldr r1, [r0]
007d35a4  01 10 41 e2                                      sub r1, r1, #1
007d35a8  00 00 51 e3                                      cmp r1, #0
007d35ac  00 10 80 e5                                      str r1, [r0]
007d35b0  00 00 00 1a                                      bne #0x7d35b8
007d35b4  5f fd fd eb                                      bl #0x752b38
007d35b8  00 30 a0 e3                                      mov r3, #0
007d35bc  78 30 85 e5                                      str r3, [r5, #0x78]
007d35c0  74 30 85 e5                                      str r3, [r5, #0x74]
007d35c4  c9 fe ff ea                                      b #0x7d30f0
007d35c8  00 10 90 e5                                      ldr r1, [r0]
007d35cc  01 10 41 e2                                      sub r1, r1, #1
007d35d0  00 00 51 e3                                      cmp r1, #0
007d35d4  00 10 80 e5                                      str r1, [r0]
007d35d8  00 00 00 1a                                      bne #0x7d35e0
007d35dc  55 fd fd eb                                      bl #0x752b38
007d35e0  00 30 a0 e3                                      mov r3, #0
007d35e4  24 30 8b e5                                      str r3, [fp, #0x24]
007d35e8  20 30 8b e5                                      str r3, [fp, #0x20]
007d35ec  b1 fe ff ea                                      b #0x7d30b8
007d35f0  b4 13 9f e5                                      ldr r1, [pc, #0x3b4]
007d35f4  bc b0 8d e2                                      add fp, sp, #0xbc
007d35f8  00 70 a0 e3                                      mov r7, #0
007d35fc  01 10 8f e0                                      add r1, pc, r1
007d3600  0b 00 a0 e1                                      mov r0, fp
007d3604  40 80 8d e2                                      add r8, sp, #0x40
007d3608  24 90 8d e2                                      add sb, sp, #0x24
007d360c  24 70 8d e5                                      str r7, [sp, #0x24]
007d3610  28 70 8d e5                                      str r7, [sp, #0x28]
007d3614  2c 70 8d e5                                      str r7, [sp, #0x2c]
007d3618  30 70 cd e5                                      strb r7, [sp, #0x30]
007d361c  16 01 f1 eb                                      bl #0x413a7c
007d3620  09 30 a0 e1                                      mov r3, sb
007d3624  0b 20 a0 e1                                      mov r2, fp
007d3628  08 00 a0 e1                                      mov r0, r8
007d362c  06 10 a0 e1                                      mov r1, r6
007d3630  00 70 8d e5                                      str r7, [sp]
007d3634  b9 ea ff eb                                      bl #0x7ce120
007d3638  dc 3b dd e1                                      ldrsb r3, [sp, #0xbc]
007d363c  01 00 73 e3                                      cmn r3, #1
007d3640  d0 00 00 0a                                      beq #0x7d3988
007d3644  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d3648  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d364c  0c 00 a0 e3                                      mov r0, #0xc
007d3650  01 20 42 e2                                      sub r2, r2, #1
007d3654  02 20 6a e0                                      rsb r2, sl, r2
007d3658  90 32 20 e0                                      mla r0, r0, r2, r3
007d365c  08 10 a0 e1                                      mov r1, r8
007d3660  35 10 ff eb                                      bl #0x79773c
007d3664  08 00 a0 e1                                      mov r0, r8
007d3668  ad 0e ff eb                                      bl #0x797124
007d366c  09 00 a0 e1                                      mov r0, sb
007d3670  00 10 a0 e3                                      mov r1, #0
007d3674  0c 9d ff eb                                      bl #0x7baaac
007d3678  09 00 a0 e1                                      mov r0, sb
007d367c  00 10 a0 e3                                      mov r1, #0
007d3680  23 1b fe eb                                      bl #0x75a314
007d3684  01 a0 8a e2                                      add sl, sl, #1
007d3688  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d368c  9a ff ff ea                                      b #0x7d34fc
007d3690  18 01 9d e5                                      ldr r0, [sp, #0x118]
007d3694  14 11 9d e5                                      ldr r1, [sp, #0x114]
007d3698  26 fd fd eb                                      bl #0x752b38
007d369c  e9 fe ff ea                                      b #0x7d3248
007d36a0  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
007d36a4  28 11 9d e5                                      ldr r1, [sp, #0x128]
007d36a8  22 fd fd eb                                      bl #0x752b38
007d36ac  c5 fe ff ea                                      b #0x7d31c8
007d36b0  06 00 a0 e1                                      mov r0, r6
007d36b4  e6 e8 ff eb                                      bl #0x7cda54
007d36b8  a5 82 fe eb                                      bl #0x774154
007d36bc  4c 70 8d e2                                      add r7, sp, #0x4c
007d36c0  00 10 a0 e1                                      mov r1, r0
007d36c4  07 00 a0 e1                                      mov r0, r7
007d36c8  38 9d ff eb                                      bl #0x7babb0
007d36cc  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d36d0  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d36d4  0c 00 a0 e3                                      mov r0, #0xc
007d36d8  01 20 42 e2                                      sub r2, r2, #1
007d36dc  02 20 6a e0                                      rsb r2, sl, r2
007d36e0  90 32 20 e0                                      mla r0, r0, r2, r3
007d36e4  07 10 a0 e1                                      mov r1, r7
007d36e8  13 10 ff eb                                      bl #0x79773c
007d36ec  07 00 a0 e1                                      mov r0, r7
007d36f0  8b 0e ff eb                                      bl #0x797124
007d36f4  01 a0 8a e2                                      add sl, sl, #1
007d36f8  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d36fc  7c ff ff ea                                      b #0x7d34f4
007d3700  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
007d3704  d0 80 8d e2                                      add r8, sp, #0xd0
007d3708  08 00 a0 e1                                      mov r0, r8
007d370c  01 10 8f e0                                      add r1, pc, r1
007d3710  d9 00 f1 eb                                      bl #0x413a7c
007d3714  04 30 94 e5                                      ldr r3, [r4, #4]
007d3718  58 70 8d e2                                      add r7, sp, #0x58
007d371c  03 00 a0 e1                                      mov r0, r3
007d3720  00 30 93 e5                                      ldr r3, [r3]
007d3724  0f e0 a0 e1                                      mov lr, pc
007d3728  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007d372c  00 10 a0 e1                                      mov r1, r0
007d3730  07 00 a0 e1                                      mov r0, r7
007d3734  1d 9d ff eb                                      bl #0x7babb0
007d3738  06 00 a0 e1                                      mov r0, r6
007d373c  08 10 a0 e1                                      mov r1, r8
007d3740  07 20 a0 e1                                      mov r2, r7
007d3744  1e e7 ff eb                                      bl #0x7cd3c4
007d3748  07 00 a0 e1                                      mov r0, r7
007d374c  74 0e ff eb                                      bl #0x797124
007d3750  d0 3d dd e1                                      ldrsb r3, [sp, #0xd0]
007d3754  01 00 73 e3                                      cmn r3, #1
007d3758  85 00 00 0a                                      beq #0x7d3974
007d375c  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3760  61 ff ff ea                                      b #0x7d34ec
007d3764  04 30 94 e5                                      ldr r3, [r4, #4]
007d3768  64 70 8d e2                                      add r7, sp, #0x64
007d376c  03 00 a0 e1                                      mov r0, r3
007d3770  00 30 93 e5                                      ldr r3, [r3]
007d3774  0f e0 a0 e1                                      mov lr, pc
007d3778  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007d377c  00 10 a0 e1                                      mov r1, r0
007d3780  07 00 a0 e1                                      mov r0, r7
007d3784  09 9d ff eb                                      bl #0x7babb0
007d3788  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d378c  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d3790  0c 00 a0 e3                                      mov r0, #0xc
007d3794  01 20 42 e2                                      sub r2, r2, #1
007d3798  02 20 6a e0                                      rsb r2, sl, r2
007d379c  90 32 20 e0                                      mla r0, r0, r2, r3
007d37a0  07 10 a0 e1                                      mov r1, r7
007d37a4  e4 0f ff eb                                      bl #0x79773c
007d37a8  07 00 a0 e1                                      mov r0, r7
007d37ac  5c 0e ff eb                                      bl #0x797124
007d37b0  01 a0 8a e2                                      add sl, sl, #1
007d37b4  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d37b8  49 ff ff ea                                      b #0x7d34e4
007d37bc  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
007d37c0  e4 80 8d e2                                      add r8, sp, #0xe4
007d37c4  70 70 8d e2                                      add r7, sp, #0x70
007d37c8  01 10 8f e0                                      add r1, pc, r1
007d37cc  08 00 a0 e1                                      mov r0, r8
007d37d0  a9 00 f1 eb                                      bl #0x413a7c
007d37d4  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
007d37d8  07 00 a0 e1                                      mov r0, r7
007d37dc  f3 9c ff eb                                      bl #0x7babb0
007d37e0  06 00 a0 e1                                      mov r0, r6
007d37e4  08 10 a0 e1                                      mov r1, r8
007d37e8  07 20 a0 e1                                      mov r2, r7
007d37ec  f4 e6 ff eb                                      bl #0x7cd3c4
007d37f0  07 00 a0 e1                                      mov r0, r7
007d37f4  4a 0e ff eb                                      bl #0x797124
007d37f8  d4 3e dd e1                                      ldrsb r3, [sp, #0xe4]
007d37fc  01 00 73 e3                                      cmn r3, #1
007d3800  56 00 00 0a                                      beq #0x7d3960
007d3804  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3808  33 ff ff ea                                      b #0x7d34dc
007d380c  05 00 a0 e1                                      mov r0, r5
007d3810  3b 5f fe eb                                      bl #0x76b504
007d3814  34 70 8d e2                                      add r7, sp, #0x34
007d3818  00 10 a0 e1                                      mov r1, r0
007d381c  07 00 a0 e1                                      mov r0, r7
007d3820  e2 9c ff eb                                      bl #0x7babb0
007d3824  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d3828  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d382c  0c 00 a0 e3                                      mov r0, #0xc
007d3830  01 20 42 e2                                      sub r2, r2, #1
007d3834  02 a0 6a e0                                      rsb sl, sl, r2
007d3838  90 3a 20 e0                                      mla r0, r0, sl, r3
007d383c  07 10 a0 e1                                      mov r1, r7
007d3840  bd 0f ff eb                                      bl #0x79773c
007d3844  07 00 a0 e1                                      mov r0, r7
007d3848  35 0e ff eb                                      bl #0x797124
007d384c  2c ff ff ea                                      b #0x7d3504
007d3850  7c 70 8d e2                                      add r7, sp, #0x7c
007d3854  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
007d3858  07 00 a0 e1                                      mov r0, r7
007d385c  d3 9c ff eb                                      bl #0x7babb0
007d3860  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d3864  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d3868  0c 00 a0 e3                                      mov r0, #0xc
007d386c  01 20 42 e2                                      sub r2, r2, #1
007d3870  02 20 6a e0                                      rsb r2, sl, r2
007d3874  90 32 20 e0                                      mla r0, r0, r2, r3
007d3878  07 10 a0 e1                                      mov r1, r7
007d387c  ae 0f ff eb                                      bl #0x79773c
007d3880  07 00 a0 e1                                      mov r0, r7
007d3884  26 0e ff eb                                      bl #0x797124
007d3888  01 a0 8a e2                                      add sl, sl, #1
007d388c  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3890  0f ff ff ea                                      b #0x7d34d4
007d3894  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
007d3898  f8 80 8d e2                                      add r8, sp, #0xf8
007d389c  88 70 8d e2                                      add r7, sp, #0x88
007d38a0  01 10 8f e0                                      add r1, pc, r1
007d38a4  08 00 a0 e1                                      mov r0, r8
007d38a8  73 00 f1 eb                                      bl #0x413a7c
007d38ac  0b 10 a0 e1                                      mov r1, fp
007d38b0  07 00 a0 e1                                      mov r0, r7
007d38b4  bd 9c ff eb                                      bl #0x7babb0
007d38b8  06 00 a0 e1                                      mov r0, r6
007d38bc  08 10 a0 e1                                      mov r1, r8
007d38c0  07 20 a0 e1                                      mov r2, r7
007d38c4  be e6 ff eb                                      bl #0x7cd3c4
007d38c8  07 00 a0 e1                                      mov r0, r7
007d38cc  14 0e ff eb                                      bl #0x797124
007d38d0  d8 3f dd e1                                      ldrsb r3, [sp, #0xf8]
007d38d4  01 00 73 e3                                      cmn r3, #1
007d38d8  1b 00 00 0a                                      beq #0x7d394c
007d38dc  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d38e0  ca fe ff ea                                      b #0x7d3410
007d38e4  94 70 8d e2                                      add r7, sp, #0x94
007d38e8  0b 10 a0 e1                                      mov r1, fp
007d38ec  07 00 a0 e1                                      mov r0, r7
007d38f0  ae 9c ff eb                                      bl #0x7babb0
007d38f4  44 20 96 e5                                      ldr r2, [r6, #0x44]
007d38f8  40 30 96 e5                                      ldr r3, [r6, #0x40]
007d38fc  0c 00 a0 e3                                      mov r0, #0xc
007d3900  02 20 42 e2                                      sub r2, r2, #2
007d3904  90 32 20 e0                                      mla r0, r0, r2, r3
007d3908  07 10 a0 e1                                      mov r1, r7
007d390c  8a 0f ff eb                                      bl #0x79773c
007d3910  07 00 a0 e1                                      mov r0, r7
007d3914  02 0e ff eb                                      bl #0x797124
007d3918  02 a0 a0 e3                                      mov sl, #2
007d391c  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3920  b8 fe ff ea                                      b #0x7d3408
007d3924  00 10 90 e5                                      ldr r1, [r0]
007d3928  01 10 41 e2                                      sub r1, r1, #1
007d392c  00 00 51 e3                                      cmp r1, #0
007d3930  00 10 80 e5                                      str r1, [r0]
007d3934  00 00 00 1a                                      bne #0x7d393c
007d3938  7e fc fd eb                                      bl #0x752b38
007d393c  00 30 a0 e3                                      mov r3, #0
007d3940  74 30 85 e5                                      str r3, [r5, #0x74]
007d3944  78 30 85 e5                                      str r3, [r5, #0x78]
007d3948  6e fe ff ea                                      b #0x7d3308
007d394c  04 01 9d e5                                      ldr r0, [sp, #0x104]
007d3950  00 11 9d e5                                      ldr r1, [sp, #0x100]
007d3954  77 fc fd eb                                      bl #0x752b38
007d3958  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d395c  ab fe ff ea                                      b #0x7d3410
007d3960  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
007d3964  ec 10 9d e5                                      ldr r1, [sp, #0xec]
007d3968  72 fc fd eb                                      bl #0x752b38
007d396c  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3970  d9 fe ff ea                                      b #0x7d34dc
007d3974  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
007d3978  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
007d397c  6d fc fd eb                                      bl #0x752b38
007d3980  b2 37 d5 e1                                      ldrh r3, [r5, #0x72]
007d3984  d8 fe ff ea                                      b #0x7d34ec
007d3988  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
007d398c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007d3990  68 fc fd eb                                      bl #0x752b38
007d3994  2a ff ff ea                                      b #0x7d3644
007d3998  5c ea ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007d399c  98 1a 1c 00 ac 40 00 00 e8 65 13 00 c8 79 13 00  .byte 0x98, 0x1a, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x65, 0x13, 0x00, 0xc8, 0x79, 0x13, 0x00
007d39ac  dc 60 13 00 9c 74 13 00 28 c8 13 00 b8 5e 13 00  .byte 0xdc, 0x60, 0x13, 0x00, 0x9c, 0x74, 0x13, 0x00, 0x28, 0xc8, 0x13, 0x00, 0xb8, 0x5e, 0x13, 0x00
