; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e1eac, declared_size=252, range_size=252, mode=arm
; class-group: std::deque<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >
; alias: _ZNSt5dequeISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEESaIS6_EEC1ERKS8_
; demangled: std::deque<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >::deque(std::deque<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > > const&)
; decoder-mode: arm
005e1eac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e1eb0  7c d0 4d e2                                      sub sp, sp, #0x7c
005e1eb4  01 50 a0 e1                                      mov r5, r1
005e1eb8  64 c0 8d e2                                      add ip, sp, #0x64
005e1ebc  00 40 a0 e1                                      mov r4, r0
005e1ec0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005e1ec4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005e1ec8  0c 10 a0 e1                                      mov r1, ip
005e1ecc  10 00 85 e2                                      add r0, r5, #0x10
005e1ed0  05 fe ff eb                                      bl #0x5e16ec
005e1ed4  00 60 a0 e3                                      mov r6, #0
005e1ed8  00 10 a0 e1                                      mov r1, r0
005e1edc  00 60 84 e5                                      str r6, [r4]
005e1ee0  04 00 a0 e1                                      mov r0, r4
005e1ee4  04 60 84 e5                                      str r6, [r4, #4]
005e1ee8  08 60 84 e5                                      str r6, [r4, #8]
005e1eec  0c 60 84 e5                                      str r6, [r4, #0xc]
005e1ef0  10 60 84 e5                                      str r6, [r4, #0x10]
005e1ef4  14 60 84 e5                                      str r6, [r4, #0x14]
005e1ef8  18 60 84 e5                                      str r6, [r4, #0x18]
005e1efc  1c 60 84 e5                                      str r6, [r4, #0x1c]
005e1f00  20 60 84 e5                                      str r6, [r4, #0x20]
005e1f04  24 60 84 e5                                      str r6, [r4, #0x24]
005e1f08  bc ff ff eb                                      bl #0x5e1e00
005e1f0c  0c 70 95 e5                                      ldr r7, [r5, #0xc]
005e1f10  10 c0 95 e5                                      ldr ip, [r5, #0x10]
005e1f14  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
005e1f18  18 90 95 e5                                      ldr sb, [r5, #0x18]
005e1f1c  14 e0 95 e5                                      ldr lr, [r5, #0x14]
005e1f20  01 05 95 e8                                      ldm r5, {r0, r8, sl}
005e1f24  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e1f28  08 20 94 e5                                      ldr r2, [r4, #8]
005e1f2c  04 30 94 e5                                      ldr r3, [r4, #4]
005e1f30  00 50 94 e5                                      ldr r5, [r4]
005e1f34  4c 90 8d e5                                      str sb, [sp, #0x4c]
005e1f38  48 e0 8d e5                                      str lr, [sp, #0x48]
005e1f3c  44 c0 8d e5                                      str ip, [sp, #0x44]
005e1f40  50 b0 8d e5                                      str fp, [sp, #0x50]
005e1f44  30 10 8d e5                                      str r1, [sp, #0x30]
005e1f48  2c 20 8d e5                                      str r2, [sp, #0x2c]
005e1f4c  28 30 8d e5                                      str r3, [sp, #0x28]
005e1f50  24 50 8d e5                                      str r5, [sp, #0x24]
005e1f54  04 c0 8d e2                                      add ip, sp, #4
005e1f58  44 90 8d e2                                      add sb, sp, #0x44
005e1f5c  54 00 8d e5                                      str r0, [sp, #0x54]
005e1f60  5c a0 8d e5                                      str sl, [sp, #0x5c]
005e1f64  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
005e1f68  58 80 8d e5                                      str r8, [sp, #0x58]
005e1f6c  60 70 8d e5                                      str r7, [sp, #0x60]
005e1f70  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005e1f74  24 30 8d e2                                      add r3, sp, #0x24
005e1f78  54 e0 8d e2                                      add lr, sp, #0x54
005e1f7c  14 30 8d e5                                      str r3, [sp, #0x14]
005e1f80  74 30 8d e2                                      add r3, sp, #0x74
005e1f84  18 30 8d e5                                      str r3, [sp, #0x18]
005e1f88  34 00 8d e2                                      add r0, sp, #0x34
005e1f8c  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
005e1f90  1c 60 8d e5                                      str r6, [sp, #0x1c]
005e1f94  00 70 8d e5                                      str r7, [sp]
005e1f98  e4 fd ff eb                                      bl #0x5e1730
005e1f9c  04 00 a0 e1                                      mov r0, r4
005e1fa0  7c d0 8d e2                                      add sp, sp, #0x7c
005e1fa4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005e1fa8, declared_size=396, range_size=396, mode=arm
; class-group: std::deque<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >
; alias: _ZNSt5dequeISt4pairIPKcN6glitch5video23E_SHADER_PARAMETER_TYPEEESaIS6_EE18_M_push_back_aux_vERKS6_
; demangled: std::deque<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE>, std::allocator<std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> > >::_M_push_back_aux_v(std::pair<char const*, glitch::video::E_SHADER_PARAMETER_TYPE> const&)
; decoder-mode: arm
005e1fa8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e1fac  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
005e1fb0  20 20 90 e5                                      ldr r2, [r0, #0x20]
005e1fb4  24 30 90 e5                                      ldr r3, [r0, #0x24]
005e1fb8  01 50 a0 e1                                      mov r5, r1
005e1fbc  0a 10 62 e0                                      rsb r1, r2, sl
005e1fc0  41 11 43 e0                                      sub r1, r3, r1, asr #2
005e1fc4  01 00 51 e3                                      cmp r1, #1
005e1fc8  00 40 a0 e1                                      mov r4, r0
005e1fcc  10 00 00 9a                                      bls #0x5e2014
005e1fd0  24 00 84 e2                                      add r0, r4, #0x24
005e1fd4  84 fe ff eb                                      bl #0x5e19ec
005e1fd8  04 00 8a e5                                      str r0, [sl, #4]
005e1fdc  00 20 95 e5                                      ldr r2, [r5]
005e1fe0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e1fe4  00 20 83 e5                                      str r2, [r3]
005e1fe8  04 20 95 e5                                      ldr r2, [r5, #4]
005e1fec  04 20 83 e5                                      str r2, [r3, #4]
005e1ff0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005e1ff4  04 20 83 e2                                      add r2, r3, #4
005e1ff8  1c 20 84 e5                                      str r2, [r4, #0x1c]
005e1ffc  04 30 93 e5                                      ldr r3, [r3, #4]
005e2000  80 20 83 e2                                      add r2, r3, #0x80
005e2004  10 30 84 e5                                      str r3, [r4, #0x10]
005e2008  18 20 84 e5                                      str r2, [r4, #0x18]
005e200c  14 30 84 e5                                      str r3, [r4, #0x14]
005e2010  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e2014  0c 10 90 e5                                      ldr r1, [r0, #0xc]
005e2018  0a 70 61 e0                                      rsb r7, r1, sl
005e201c  47 71 a0 e1                                      asr r7, r7, #2
005e2020  01 70 87 e2                                      add r7, r7, #1
005e2024  01 90 87 e2                                      add sb, r7, #1
005e2028  89 00 53 e1                                      cmp r3, sb, lsl #1
005e202c  0a 00 00 9a                                      bls #0x5e205c
005e2030  03 60 69 e0                                      rsb r6, sb, r3
005e2034  a6 60 a0 e1                                      lsr r6, r6, #1
005e2038  06 61 82 e0                                      add r6, r2, r6, lsl #2
005e203c  06 00 51 e1                                      cmp r1, r6
005e2040  2e 00 00 9a                                      bls #0x5e2100
005e2044  04 20 8a e2                                      add r2, sl, #4
005e2048  01 20 52 e0                                      subs r2, r2, r1
005e204c  1e 00 00 0a                                      beq #0x5e20cc
005e2050  06 00 a0 e1                                      mov r0, r6
005e2054  b7 af f4 eb                                      bl #0x30df38
005e2058  1b 00 00 ea                                      b #0x5e20cc
005e205c  00 00 53 e3                                      cmp r3, #0
005e2060  03 20 a0 11                                      movne r2, r3
005e2064  01 20 a0 03                                      moveq r2, #1
005e2068  02 80 83 e2                                      add r8, r3, #2
005e206c  02 80 88 e0                                      add r8, r8, r2
005e2070  08 10 a0 e1                                      mov r1, r8
005e2074  00 20 a0 e3                                      mov r2, #0
005e2078  20 00 80 e2                                      add r0, r0, #0x20
005e207c  47 ff ff eb                                      bl #0x5e1da0
005e2080  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005e2084  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005e2088  08 60 69 e0                                      rsb r6, sb, r8
005e208c  a6 60 a0 e1                                      lsr r6, r6, #1
005e2090  04 20 82 e2                                      add r2, r2, #4
005e2094  01 20 52 e0                                      subs r2, r2, r1
005e2098  00 a0 a0 e1                                      mov sl, r0
005e209c  06 61 80 e0                                      add r6, r0, r6, lsl #2
005e20a0  20 00 00 1a                                      bne #0x5e2128
005e20a4  20 00 94 e5                                      ldr r0, [r4, #0x20]
005e20a8  24 10 94 e5                                      ldr r1, [r4, #0x24]
005e20ac  00 00 50 e3                                      cmp r0, #0
005e20b0  03 00 00 0a                                      beq #0x5e20c4
005e20b4  01 11 a0 e1                                      lsl r1, r1, #2
005e20b8  80 00 51 e3                                      cmp r1, #0x80
005e20bc  17 00 00 8a                                      bhi #0x5e2120
005e20c0  8e 9b 04 eb                                      bl #0x708f00
005e20c4  20 a0 84 e5                                      str sl, [r4, #0x20]
005e20c8  24 80 84 e5                                      str r8, [r4, #0x24]
005e20cc  0c 60 84 e5                                      str r6, [r4, #0xc]
005e20d0  00 30 96 e5                                      ldr r3, [r6]
005e20d4  01 70 47 e2                                      sub r7, r7, #1
005e20d8  07 a1 86 e0                                      add sl, r6, r7, lsl #2
005e20dc  80 20 83 e2                                      add r2, r3, #0x80
005e20e0  08 20 84 e5                                      str r2, [r4, #8]
005e20e4  04 30 84 e5                                      str r3, [r4, #4]
005e20e8  1c a0 84 e5                                      str sl, [r4, #0x1c]
005e20ec  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
005e20f0  80 20 83 e2                                      add r2, r3, #0x80
005e20f4  18 20 84 e5                                      str r2, [r4, #0x18]
005e20f8  14 30 84 e5                                      str r3, [r4, #0x14]
005e20fc  b3 ff ff ea                                      b #0x5e1fd0
005e2100  04 20 8a e2                                      add r2, sl, #4
005e2104  02 20 61 e0                                      rsb r2, r1, r2
005e2108  00 00 52 e3                                      cmp r2, #0
005e210c  ee ff ff da                                      ble #0x5e20cc
005e2110  07 01 86 e0                                      add r0, r6, r7, lsl #2
005e2114  00 00 62 e0                                      rsb r0, r2, r0
005e2118  86 af f4 eb                                      bl #0x30df38
005e211c  ea ff ff ea                                      b #0x5e20cc
005e2120  62 b0 f4 eb                                      bl #0x30e2b0
005e2124  e6 ff ff ea                                      b #0x5e20c4
005e2128  06 00 a0 e1                                      mov r0, r6
005e212c  81 af f4 eb                                      bl #0x30df38
005e2130  db ff ff ea                                      b #0x5e20a4
