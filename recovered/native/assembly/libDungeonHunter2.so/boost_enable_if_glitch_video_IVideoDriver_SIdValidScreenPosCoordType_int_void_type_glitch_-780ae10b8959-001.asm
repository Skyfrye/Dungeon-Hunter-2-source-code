; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a97e4, declared_size=208, range_size=208, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver16screen2DevicePosIiEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERS6_SA_
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver::screen2DevicePos<int>(int&, int&) const
; decoder-mode: arm
005a97e4  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
005a97e8  3c c1 90 e5                                      ldr ip, [r0, #0x13c]
005a97ec  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a97f0  00 00 5c e3                                      cmp ip, #0
005a97f4  00 30 93 e5                                      ldr r3, [r3]
005a97f8  1a 00 00 0a                                      beq #0x5a9868
005a97fc  2c c0 93 e5                                      ldr ip, [r3, #0x2c]
005a9800  30 40 93 e5                                      ldr r4, [r3, #0x30]
005a9804  24 50 93 e5                                      ldr r5, [r3, #0x24]
005a9808  00 80 91 e5                                      ldr r8, [r1]
005a980c  0c 70 93 e5                                      ldr r7, [r3, #0xc]
005a9810  10 60 93 e5                                      ldr r6, [r3, #0x10]
005a9814  05 50 88 e0                                      add r5, r8, r5
005a9818  00 50 81 e5                                      str r5, [r1]
005a981c  28 50 93 e5                                      ldr r5, [r3, #0x28]
005a9820  00 30 92 e5                                      ldr r3, [r2]
005a9824  07 c0 8c e0                                      add ip, ip, r7
005a9828  06 40 84 e0                                      add r4, r4, r6
005a982c  05 30 83 e0                                      add r3, r3, r5
005a9830  00 30 82 e5                                      str r3, [r2]
005a9834  3c 01 90 e5                                      ldr r0, [r0, #0x13c]
005a9838  02 00 50 e3                                      cmp r0, #2
005a983c  11 00 00 0a                                      beq #0x5a9888
005a9840  03 00 50 e3                                      cmp r0, #3
005a9844  15 00 00 0a                                      beq #0x5a98a0
005a9848  01 00 50 e3                                      cmp r0, #1
005a984c  03 00 00 1a                                      bne #0x5a9860
005a9850  00 70 91 e5                                      ldr r7, [r1]
005a9854  0c c0 67 e0                                      rsb ip, r7, ip
005a9858  00 c0 82 e5                                      str ip, [r2]
005a985c  00 30 81 e5                                      str r3, [r1]
005a9860  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005a9864  1e ff 2f e1                                      bx lr
005a9868  2c c0 93 e5                                      ldr ip, [r3, #0x2c]
005a986c  00 00 5c e3                                      cmp ip, #0
005a9870  30 40 93 15                                      ldrne r4, [r3, #0x30]
005a9874  e2 ff ff 1a                                      bne #0x5a9804
005a9878  30 40 93 e5                                      ldr r4, [r3, #0x30]
005a987c  00 00 54 e3                                      cmp r4, #0
005a9880  f6 ff ff 0a                                      beq #0x5a9860
005a9884  de ff ff ea                                      b #0x5a9804
005a9888  04 40 63 e0                                      rsb r4, r3, r4
005a988c  00 40 82 e5                                      str r4, [r2]
005a9890  00 70 91 e5                                      ldr r7, [r1]
005a9894  0c c0 67 e0                                      rsb ip, r7, ip
005a9898  00 c0 81 e5                                      str ip, [r1]
005a989c  ef ff ff ea                                      b #0x5a9860
005a98a0  00 00 91 e5                                      ldr r0, [r1]
005a98a4  04 40 63 e0                                      rsb r4, r3, r4
005a98a8  00 00 82 e5                                      str r0, [r2]
005a98ac  00 40 81 e5                                      str r4, [r1]
005a98b0  ea ff ff ea                                      b #0x5a9860

; FUNCTION 0x005a98b4, declared_size=220, range_size=220, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver16device2ScreenPosIiEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERS6_SA_
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver::device2ScreenPos<int>(int&, int&) const
; decoder-mode: arm
005a98b4  70 00 2d e9                                      push {r4, r5, r6}
005a98b8  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a98bc  c8 00 90 e5                                      ldr r0, [r0, #0xc8]
005a98c0  00 00 53 e3                                      cmp r3, #0
005a98c4  00 00 90 e5                                      ldr r0, [r0]
005a98c8  0c 00 00 1a                                      bne #0x5a9900
005a98cc  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
005a98d0  00 00 53 e3                                      cmp r3, #0
005a98d4  1c 00 00 0a                                      beq #0x5a994c
005a98d8  00 30 91 e5                                      ldr r3, [r1]
005a98dc  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005a98e0  03 30 6c e0                                      rsb r3, ip, r3
005a98e4  00 30 81 e5                                      str r3, [r1]
005a98e8  28 30 90 e5                                      ldr r3, [r0, #0x28]
005a98ec  00 10 92 e5                                      ldr r1, [r2]
005a98f0  01 30 63 e0                                      rsb r3, r3, r1
005a98f4  00 30 82 e5                                      str r3, [r2]
005a98f8  70 00 bd e8                                      pop {r4, r5, r6}
005a98fc  1e ff 2f e1                                      bx lr
005a9900  0c 60 90 e5                                      ldr r6, [r0, #0xc]
005a9904  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005a9908  30 40 90 e5                                      ldr r4, [r0, #0x30]
005a990c  10 c0 90 e5                                      ldr ip, [r0, #0x10]
005a9910  02 00 53 e3                                      cmp r3, #2
005a9914  05 50 86 e0                                      add r5, r6, r5
005a9918  0c c0 84 e0                                      add ip, r4, ip
005a991c  0e 00 00 0a                                      beq #0x5a995c
005a9920  03 00 53 e3                                      cmp r3, #3
005a9924  13 00 00 0a                                      beq #0x5a9978
005a9928  01 00 53 e3                                      cmp r3, #1
005a992c  e9 ff ff 1a                                      bne #0x5a98d8
005a9930  00 30 92 e5                                      ldr r3, [r2]
005a9934  00 c0 91 e5                                      ldr ip, [r1]
005a9938  05 50 63 e0                                      rsb r5, r3, r5
005a993c  00 50 81 e5                                      str r5, [r1]
005a9940  00 c0 82 e5                                      str ip, [r2]
005a9944  00 30 91 e5                                      ldr r3, [r1]
005a9948  e3 ff ff ea                                      b #0x5a98dc
005a994c  30 30 90 e5                                      ldr r3, [r0, #0x30]
005a9950  00 00 53 e3                                      cmp r3, #0
005a9954  e7 ff ff 0a                                      beq #0x5a98f8
005a9958  de ff ff ea                                      b #0x5a98d8
005a995c  00 40 92 e5                                      ldr r4, [r2]
005a9960  0c c0 64 e0                                      rsb ip, r4, ip
005a9964  00 c0 82 e5                                      str ip, [r2]
005a9968  00 30 91 e5                                      ldr r3, [r1]
005a996c  05 30 63 e0                                      rsb r3, r3, r5
005a9970  00 30 81 e5                                      str r3, [r1]
005a9974  d8 ff ff ea                                      b #0x5a98dc
005a9978  00 40 91 e5                                      ldr r4, [r1]
005a997c  00 30 92 e5                                      ldr r3, [r2]
005a9980  0c c0 64 e0                                      rsb ip, r4, ip
005a9984  00 30 81 e5                                      str r3, [r1]
005a9988  00 c0 82 e5                                      str ip, [r2]
005a998c  d1 ff ff ea                                      b #0x5a98d8

; FUNCTION 0x005a9ce8, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver13screen2DeviceIiEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERNS_4core4rectIS6_EE
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver::screen2Device<int>(glitch::core::rect<int>&) const
; decoder-mode: arm
005a9ce8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a9cec  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a9cf0  0c d0 4d e2                                      sub sp, sp, #0xc
005a9cf4  00 50 a0 e1                                      mov r5, r0
005a9cf8  00 00 53 e3                                      cmp r3, #0
005a9cfc  01 40 a0 e1                                      mov r4, r1
005a9d00  21 00 00 0a                                      beq #0x5a9d8c
005a9d04  00 c0 94 e5                                      ldr ip, [r4]
005a9d08  04 30 94 e5                                      ldr r3, [r4, #4]
005a9d0c  04 70 8d e2                                      add r7, sp, #4
005a9d10  05 00 a0 e1                                      mov r0, r5
005a9d14  0d 10 a0 e1                                      mov r1, sp
005a9d18  07 20 a0 e1                                      mov r2, r7
005a9d1c  00 c0 8d e5                                      str ip, [sp]
005a9d20  04 30 8d e5                                      str r3, [sp, #4]
005a9d24  ae fe ff eb                                      bl #0x5a97e4
005a9d28  06 00 9d e8                                      ldm sp, {r1, r2}
005a9d2c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a9d30  08 c0 94 e5                                      ldr ip, [r4, #8]
005a9d34  06 00 84 e8                                      stm r4, {r1, r2}
005a9d38  07 10 a0 e1                                      mov r1, r7
005a9d3c  0d 20 a0 e1                                      mov r2, sp
005a9d40  05 00 a0 e1                                      mov r0, r5
005a9d44  08 10 8d e8                                      stm sp, {r3, ip}
005a9d48  a5 fe ff eb                                      bl #0x5a97e4
005a9d4c  06 00 9d e8                                      ldm sp, {r1, r2}
005a9d50  0d 60 a0 e1                                      mov r6, sp
005a9d54  08 20 84 e5                                      str r2, [r4, #8]
005a9d58  0c 10 84 e5                                      str r1, [r4, #0xc]
005a9d5c  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005a9d60  02 00 53 e3                                      cmp r3, #2
005a9d64  11 00 00 0a                                      beq #0x5a9db0
005a9d68  03 00 53 e3                                      cmp r3, #3
005a9d6c  16 00 00 0a                                      beq #0x5a9dcc
005a9d70  01 00 53 e3                                      cmp r3, #1
005a9d74  02 00 00 1a                                      bne #0x5a9d84
005a9d78  04 30 94 e5                                      ldr r3, [r4, #4]
005a9d7c  04 10 84 e5                                      str r1, [r4, #4]
005a9d80  0c 30 84 e5                                      str r3, [r4, #0xc]
005a9d84  0c d0 8d e2                                      add sp, sp, #0xc
005a9d88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a9d8c  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a9d90  00 30 93 e5                                      ldr r3, [r3]
005a9d94  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
005a9d98  00 00 52 e3                                      cmp r2, #0
005a9d9c  d8 ff ff 1a                                      bne #0x5a9d04
005a9da0  30 30 93 e5                                      ldr r3, [r3, #0x30]
005a9da4  00 00 53 e3                                      cmp r3, #0
005a9da8  f5 ff ff 0a                                      beq #0x5a9d84
005a9dac  d4 ff ff ea                                      b #0x5a9d04
005a9db0  00 30 94 e5                                      ldr r3, [r4]
005a9db4  04 00 94 e5                                      ldr r0, [r4, #4]
005a9db8  00 20 84 e5                                      str r2, [r4]
005a9dbc  04 10 84 e5                                      str r1, [r4, #4]
005a9dc0  0c 00 84 e5                                      str r0, [r4, #0xc]
005a9dc4  08 30 84 e5                                      str r3, [r4, #8]
005a9dc8  ed ff ff ea                                      b #0x5a9d84
005a9dcc  00 30 94 e5                                      ldr r3, [r4]
005a9dd0  00 20 84 e5                                      str r2, [r4]
005a9dd4  08 30 84 e5                                      str r3, [r4, #8]
005a9dd8  e9 ff ff ea                                      b #0x5a9d84

; FUNCTION 0x005a9ee0, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver
; alias: _ZNK6glitch5video12IVideoDriver13device2ScreenIiEEN5boost9enable_ifINS1_26SIdValidScreenPosCoordTypeIT_EEvE4typeERNS_4core4rectIS6_EE
; demangled: boost::enable_if<glitch::video::IVideoDriver::SIdValidScreenPosCoordType<int>, void>::type glitch::video::IVideoDriver::device2Screen<int>(glitch::core::rect<int>&) const
; decoder-mode: arm
005a9ee0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a9ee4  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
005a9ee8  0c d0 4d e2                                      sub sp, sp, #0xc
005a9eec  00 50 a0 e1                                      mov r5, r0
005a9ef0  00 00 53 e3                                      cmp r3, #0
005a9ef4  01 40 a0 e1                                      mov r4, r1
005a9ef8  22 00 00 0a                                      beq #0x5a9f88
005a9efc  00 c0 94 e5                                      ldr ip, [r4]
005a9f00  04 30 94 e5                                      ldr r3, [r4, #4]
005a9f04  04 70 8d e2                                      add r7, sp, #4
005a9f08  05 00 a0 e1                                      mov r0, r5
005a9f0c  0d 10 a0 e1                                      mov r1, sp
005a9f10  07 20 a0 e1                                      mov r2, r7
005a9f14  00 c0 8d e5                                      str ip, [sp]
005a9f18  04 30 8d e5                                      str r3, [sp, #4]
005a9f1c  64 fe ff eb                                      bl #0x5a98b4
005a9f20  06 00 9d e8                                      ldm sp, {r1, r2}
005a9f24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a9f28  08 c0 94 e5                                      ldr ip, [r4, #8]
005a9f2c  06 00 84 e8                                      stm r4, {r1, r2}
005a9f30  07 10 a0 e1                                      mov r1, r7
005a9f34  0d 20 a0 e1                                      mov r2, sp
005a9f38  05 00 a0 e1                                      mov r0, r5
005a9f3c  08 10 8d e8                                      stm sp, {r3, ip}
005a9f40  5b fe ff eb                                      bl #0x5a98b4
005a9f44  04 10 9d e5                                      ldr r1, [sp, #4]
005a9f48  00 20 9d e5                                      ldr r2, [sp]
005a9f4c  0d 60 a0 e1                                      mov r6, sp
005a9f50  08 10 84 e5                                      str r1, [r4, #8]
005a9f54  0c 20 84 e5                                      str r2, [r4, #0xc]
005a9f58  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
005a9f5c  02 00 53 e3                                      cmp r3, #2
005a9f60  11 00 00 0a                                      beq #0x5a9fac
005a9f64  03 00 53 e3                                      cmp r3, #3
005a9f68  15 00 00 0a                                      beq #0x5a9fc4
005a9f6c  01 00 53 e3                                      cmp r3, #1
005a9f70  02 00 00 1a                                      bne #0x5a9f80
005a9f74  00 30 94 e5                                      ldr r3, [r4]
005a9f78  00 10 84 e5                                      str r1, [r4]
005a9f7c  08 30 84 e5                                      str r3, [r4, #8]
005a9f80  0c d0 8d e2                                      add sp, sp, #0xc
005a9f84  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a9f88  c8 30 90 e5                                      ldr r3, [r0, #0xc8]
005a9f8c  00 30 93 e5                                      ldr r3, [r3]
005a9f90  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
005a9f94  00 00 52 e3                                      cmp r2, #0
005a9f98  d7 ff ff 1a                                      bne #0x5a9efc
005a9f9c  30 30 93 e5                                      ldr r3, [r3, #0x30]
005a9fa0  00 00 53 e3                                      cmp r3, #0
005a9fa4  f5 ff ff 0a                                      beq #0x5a9f80
005a9fa8  d3 ff ff ea                                      b #0x5a9efc
005a9fac  00 30 94 e5                                      ldr r3, [r4]
005a9fb0  04 00 94 e5                                      ldr r0, [r4, #4]
005a9fb4  06 00 84 e8                                      stm r4, {r1, r2}
005a9fb8  0c 00 84 e5                                      str r0, [r4, #0xc]
005a9fbc  08 30 84 e5                                      str r3, [r4, #8]
005a9fc0  ee ff ff ea                                      b #0x5a9f80
005a9fc4  04 30 94 e5                                      ldr r3, [r4, #4]
005a9fc8  04 20 84 e5                                      str r2, [r4, #4]
005a9fcc  0c 30 84 e5                                      str r3, [r4, #0xc]
005a9fd0  ea ff ff ea                                      b #0x5a9f80
