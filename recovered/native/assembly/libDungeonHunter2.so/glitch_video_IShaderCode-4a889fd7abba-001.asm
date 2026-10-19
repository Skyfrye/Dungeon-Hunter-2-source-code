; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e207c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::IShaderCode
; alias: _ZN6glitch5video11IShaderCodeD1Ev
; demangled: glitch::video::IShaderCode::~IShaderCode()
; decoder-mode: arm
006e207c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006e2080  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006e2084  10 40 2d e9                                      push {r4, lr}
006e2088  03 30 8f e0                                      add r3, pc, r3
006e208c  02 20 93 e7                                      ldr r2, [r3, r2]
006e2090  00 10 a0 e1                                      mov r1, r0
006e2094  00 40 a0 e1                                      mov r4, r0
006e2098  08 20 82 e2                                      add r2, r2, #8
006e209c  08 20 81 e4                                      str r2, [r1], #8
006e20a0  14 00 91 e5                                      ldr r0, [r1, #0x14]
006e20a4  01 00 50 e1                                      cmp r0, r1
006e20a8  02 00 00 0a                                      beq #0x6e20b8
006e20ac  00 00 50 e3                                      cmp r0, #0
006e20b0  00 00 00 0a                                      beq #0x6e20b8
006e20b4  e5 b8 f0 eb                                      bl #0x310450
006e20b8  04 00 a0 e1                                      mov r0, r4
006e20bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e20c0  08 2a 2b 00 18 3d 00 00                          .byte 0x08, 0x2a, 0x2b, 0x00, 0x18, 0x3d, 0x00, 0x00

; FUNCTION 0x006e20c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IShaderCode
; alias: _ZN6glitch5video11IShaderCodeD0Ev
; demangled: glitch::video::IShaderCode::~IShaderCode()
; decoder-mode: arm
006e20c8  10 40 2d e9                                      push {r4, lr}
006e20cc  00 40 a0 e1                                      mov r4, r0
006e20d0  e9 ff ff eb                                      bl #0x6e207c
006e20d4  04 00 a0 e1                                      mov r0, r4
006e20d8  74 b0 f0 eb                                      bl #0x30e2b0
006e20dc  04 00 a0 e1                                      mov r0, r4
006e20e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e20e4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::IShaderCode
; alias: _ZN6glitch5video11IShaderCodeD2Ev
; demangled: glitch::video::IShaderCode::~IShaderCode()
; decoder-mode: arm
006e20e4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006e20e8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006e20ec  10 40 2d e9                                      push {r4, lr}
006e20f0  03 30 8f e0                                      add r3, pc, r3
006e20f4  02 20 93 e7                                      ldr r2, [r3, r2]
006e20f8  00 10 a0 e1                                      mov r1, r0
006e20fc  00 40 a0 e1                                      mov r4, r0
006e2100  08 20 82 e2                                      add r2, r2, #8
006e2104  08 20 81 e4                                      str r2, [r1], #8
006e2108  14 00 91 e5                                      ldr r0, [r1, #0x14]
006e210c  01 00 50 e1                                      cmp r0, r1
006e2110  02 00 00 0a                                      beq #0x6e2120
006e2114  00 00 50 e3                                      cmp r0, #0
006e2118  00 00 00 0a                                      beq #0x6e2120
006e211c  cb b8 f0 eb                                      bl #0x310450
006e2120  04 00 a0 e1                                      mov r0, r4
006e2124  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e2128  a0 29 2b 00 18 3d 00 00                          .byte 0xa0, 0x29, 0x2b, 0x00, 0x18, 0x3d, 0x00, 0x00

; FUNCTION 0x006e2130, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::IShaderCode
; alias: _ZN6glitch5video11IShaderCodeC1EPKc
; demangled: glitch::video::IShaderCode::IShaderCode(char const*)
; decoder-mode: arm
006e2130  38 30 9f e5                                      ldr r3, [pc, #0x38]
006e2134  38 20 9f e5                                      ldr r2, [pc, #0x38]
006e2138  10 40 2d e9                                      push {r4, lr}
006e213c  03 30 8f e0                                      add r3, pc, r3
006e2140  02 20 93 e7                                      ldr r2, [r3, r2]
006e2144  00 40 a0 e1                                      mov r4, r0
006e2148  08 d0 4d e2                                      sub sp, sp, #8
006e214c  00 c0 a0 e3                                      mov ip, #0
006e2150  08 20 82 e2                                      add r2, r2, #8
006e2154  04 c0 84 e5                                      str ip, [r4, #4]
006e2158  08 20 80 e4                                      str r2, [r0], #8
006e215c  04 20 8d e2                                      add r2, sp, #4
006e2160  b5 0f f1 eb                                      bl #0x32603c
006e2164  04 00 a0 e1                                      mov r0, r4
006e2168  08 d0 8d e2                                      add sp, sp, #8
006e216c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e2170  54 29 2b 00 18 3d 00 00                          .byte 0x54, 0x29, 0x2b, 0x00, 0x18, 0x3d, 0x00, 0x00

; FUNCTION 0x006e2178, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::IShaderCode
; alias: _ZN6glitch5video11IShaderCodeC2EPKc
; demangled: glitch::video::IShaderCode::IShaderCode(char const*)
; decoder-mode: arm
006e2178  38 30 9f e5                                      ldr r3, [pc, #0x38]
006e217c  38 20 9f e5                                      ldr r2, [pc, #0x38]
006e2180  10 40 2d e9                                      push {r4, lr}
006e2184  03 30 8f e0                                      add r3, pc, r3
006e2188  02 20 93 e7                                      ldr r2, [r3, r2]
006e218c  00 40 a0 e1                                      mov r4, r0
006e2190  08 d0 4d e2                                      sub sp, sp, #8
006e2194  00 c0 a0 e3                                      mov ip, #0
006e2198  08 20 82 e2                                      add r2, r2, #8
006e219c  04 c0 84 e5                                      str ip, [r4, #4]
006e21a0  08 20 80 e4                                      str r2, [r0], #8
006e21a4  04 20 8d e2                                      add r2, sp, #4
006e21a8  a3 0f f1 eb                                      bl #0x32603c
006e21ac  04 00 a0 e1                                      mov r0, r4
006e21b0  08 d0 8d e2                                      add sp, sp, #8
006e21b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e21b8  0c 29 2b 00 18 3d 00 00                          .byte 0x0c, 0x29, 0x2b, 0x00, 0x18, 0x3d, 0x00, 0x00
