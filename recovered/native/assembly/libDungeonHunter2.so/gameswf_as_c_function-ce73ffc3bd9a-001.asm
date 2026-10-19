; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d27d4, declared_size=36, range_size=36, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZNK7gameswf13as_c_function2isEi
; demangled: gameswf::as_c_function::is(int) const
; decoder-mode: arm
007d27d4  05 00 51 e3                                      cmp r1, #5
007d27d8  04 00 00 0a                                      beq #0x7d27f0
007d27dc  04 00 51 e3                                      cmp r1, #4
007d27e0  02 00 00 0a                                      beq #0x7d27f0
007d27e4  01 00 71 e2                                      rsbs r0, r1, #1
007d27e8  00 00 a0 33                                      movlo r0, #0
007d27ec  1e ff 2f e1                                      bx lr
007d27f0  01 00 a0 e3                                      mov r0, #1
007d27f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d281c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZN7gameswf13as_c_functionclERKNS_7fn_callE
; demangled: gameswf::as_c_function::operator()(gameswf::fn_call const&)
; decoder-mode: arm
007d281c  10 40 2d e9                                      push {r4, lr}
007d2820  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
007d2824  00 00 53 e3                                      cmp r3, #0
007d2828  01 00 00 0a                                      beq #0x7d2834
007d282c  01 00 a0 e1                                      mov r0, r1
007d2830  33 ff 2f e1                                      blx r3
007d2834  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007d28b4, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZN7gameswf13as_c_functionC1EPNS_6playerEPFvRKNS_7fn_callEE
; demangled: gameswf::as_c_function::as_c_function(gameswf::player*, void (*)(gameswf::fn_call const&))
; decoder-mode: arm
007d28b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d28b8  54 40 9f e5                                      ldr r4, [pc, #0x54]
007d28bc  02 60 a0 e1                                      mov r6, r2
007d28c0  00 50 a0 e1                                      mov r5, r0
007d28c4  01 70 a0 e1                                      mov r7, r1
007d28c8  04 65 fe eb                                      bl #0x76bce0
007d28cc  44 30 9f e5                                      ldr r3, [pc, #0x44]
007d28d0  04 40 8f e0                                      add r4, pc, r4
007d28d4  00 10 a0 e3                                      mov r1, #0
007d28d8  03 30 94 e7                                      ldr r3, [r4, r3]
007d28dc  3c 60 85 e5                                      str r6, [r5, #0x3c]
007d28e0  38 10 85 e5                                      str r1, [r5, #0x38]
007d28e4  08 30 83 e2                                      add r3, r3, #8
007d28e8  00 30 85 e5                                      str r3, [r5]
007d28ec  38 00 a0 e3                                      mov r0, #0x38
007d28f0  ac 00 fe eb                                      bl #0x752ba8
007d28f4  00 60 a0 e1                                      mov r6, r0
007d28f8  07 10 a0 e1                                      mov r1, r7
007d28fc  c7 63 fe eb                                      bl #0x76b820
007d2900  38 00 85 e2                                      add r0, r5, #0x38
007d2904  06 10 a0 e1                                      mov r1, r6
007d2908  ee 58 fe eb                                      bl #0x768cc8
007d290c  05 00 a0 e1                                      mov r0, r5
007d2910  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d2914  c0 21 1c 00 f0 1c 00 00                          .byte 0xc0, 0x21, 0x1c, 0x00, 0xf0, 0x1c, 0x00, 0x00

; FUNCTION 0x007d291c, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZN7gameswf13as_c_functionC2EPNS_6playerEPFvRKNS_7fn_callEE
; demangled: gameswf::as_c_function::as_c_function(gameswf::player*, void (*)(gameswf::fn_call const&))
; decoder-mode: arm
007d291c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d2920  54 40 9f e5                                      ldr r4, [pc, #0x54]
007d2924  02 60 a0 e1                                      mov r6, r2
007d2928  00 50 a0 e1                                      mov r5, r0
007d292c  01 70 a0 e1                                      mov r7, r1
007d2930  ea 64 fe eb                                      bl #0x76bce0
007d2934  44 30 9f e5                                      ldr r3, [pc, #0x44]
007d2938  04 40 8f e0                                      add r4, pc, r4
007d293c  00 10 a0 e3                                      mov r1, #0
007d2940  03 30 94 e7                                      ldr r3, [r4, r3]
007d2944  3c 60 85 e5                                      str r6, [r5, #0x3c]
007d2948  38 10 85 e5                                      str r1, [r5, #0x38]
007d294c  08 30 83 e2                                      add r3, r3, #8
007d2950  00 30 85 e5                                      str r3, [r5]
007d2954  38 00 a0 e3                                      mov r0, #0x38
007d2958  92 00 fe eb                                      bl #0x752ba8
007d295c  00 60 a0 e1                                      mov r6, r0
007d2960  07 10 a0 e1                                      mov r1, r7
007d2964  ad 63 fe eb                                      bl #0x76b820
007d2968  38 00 85 e2                                      add r0, r5, #0x38
007d296c  06 10 a0 e1                                      mov r1, r6
007d2970  d4 58 fe eb                                      bl #0x768cc8
007d2974  05 00 a0 e1                                      mov r0, r5
007d2978  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d297c  58 21 1c 00 f0 1c 00 00                          .byte 0x58, 0x21, 0x1c, 0x00, 0xf0, 0x1c, 0x00, 0x00

; FUNCTION 0x007d2984, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZN7gameswf13as_c_functionD0Ev
; demangled: gameswf::as_c_function::~as_c_function()
; decoder-mode: arm
007d2984  10 40 2d e9                                      push {r4, lr}
007d2988  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
007d298c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
007d2990  00 40 a0 e1                                      mov r4, r0
007d2994  03 30 8f e0                                      add r3, pc, r3
007d2998  38 00 90 e5                                      ldr r0, [r0, #0x38]
007d299c  02 20 93 e7                                      ldr r2, [r3, r2]
007d29a0  00 00 50 e3                                      cmp r0, #0
007d29a4  08 20 82 e2                                      add r2, r2, #8
007d29a8  00 20 84 e5                                      str r2, [r4]
007d29ac  00 00 00 0a                                      beq #0x7d29b4
007d29b0  22 1e fe eb                                      bl #0x75a240
007d29b4  04 00 a0 e1                                      mov r0, r4
007d29b8  37 5c fe eb                                      bl #0x769a9c
007d29bc  04 00 a0 e1                                      mov r0, r4
007d29c0  3a ee ec eb                                      bl #0x30e2b0
007d29c4  04 00 a0 e1                                      mov r0, r4
007d29c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007d29cc  fc 20 1c 00 88 27 00 00                          .byte 0xfc, 0x20, 0x1c, 0x00, 0x88, 0x27, 0x00, 0x00

; FUNCTION 0x007d2c44, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::as_c_function
; alias: _ZN7gameswf13as_c_functionD1Ev
; demangled: gameswf::as_c_function::~as_c_function()
; decoder-mode: arm
007d2c44  10 40 2d e9                                      push {r4, lr}
007d2c48  34 30 9f e5                                      ldr r3, [pc, #0x34]
007d2c4c  34 20 9f e5                                      ldr r2, [pc, #0x34]
007d2c50  00 40 a0 e1                                      mov r4, r0
007d2c54  03 30 8f e0                                      add r3, pc, r3
007d2c58  38 00 90 e5                                      ldr r0, [r0, #0x38]
007d2c5c  02 20 93 e7                                      ldr r2, [r3, r2]
007d2c60  00 00 50 e3                                      cmp r0, #0
007d2c64  08 20 82 e2                                      add r2, r2, #8
007d2c68  00 20 84 e5                                      str r2, [r4]
007d2c6c  00 00 00 0a                                      beq #0x7d2c74
007d2c70  72 1d fe eb                                      bl #0x75a240
007d2c74  04 00 a0 e1                                      mov r0, r4
007d2c78  87 5b fe eb                                      bl #0x769a9c
007d2c7c  04 00 a0 e1                                      mov r0, r4
007d2c80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007d2c84  3c 1e 1c 00 88 27 00 00                          .byte 0x3c, 0x1e, 0x1c, 0x00, 0x88, 0x27, 0x00, 0x00
