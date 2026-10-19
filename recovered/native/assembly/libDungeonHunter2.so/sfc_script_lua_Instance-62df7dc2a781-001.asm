; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031a9f0, declared_size=48, range_size=48, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceC2EP9lua_State
; demangled: sfc::script::lua::Instance::Instance(lua_State*)
; decoder-mode: arm
0031a9f0  20 30 9f e5                                      ldr r3, [pc, #0x20]
0031a9f4  20 c0 9f e5                                      ldr ip, [pc, #0x20]
0031a9f8  04 10 80 e5                                      str r1, [r0, #4]
0031a9fc  03 30 8f e0                                      add r3, pc, r3
0031aa00  0c c0 93 e7                                      ldr ip, [r3, ip]
0031aa04  00 10 a0 e3                                      mov r1, #0
0031aa08  08 10 c0 e5                                      strb r1, [r0, #8]
0031aa0c  08 c0 8c e2                                      add ip, ip, #8
0031aa10  00 c0 80 e5                                      str ip, [r0]
0031aa14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031aa18  94 a0 67 00 18 40 00 00                          .byte 0x94, 0xa0, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00

; FUNCTION 0x0031aa20, declared_size=48, range_size=48, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceC1EP9lua_State
; demangled: sfc::script::lua::Instance::Instance(lua_State*)
; decoder-mode: arm
0031aa20  20 30 9f e5                                      ldr r3, [pc, #0x20]
0031aa24  20 c0 9f e5                                      ldr ip, [pc, #0x20]
0031aa28  04 10 80 e5                                      str r1, [r0, #4]
0031aa2c  03 30 8f e0                                      add r3, pc, r3
0031aa30  0c c0 93 e7                                      ldr ip, [r3, ip]
0031aa34  00 10 a0 e3                                      mov r1, #0
0031aa38  08 10 c0 e5                                      strb r1, [r0, #8]
0031aa3c  08 c0 8c e2                                      add ip, ip, #8
0031aa40  00 c0 80 e5                                      str ip, [r0]
0031aa44  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031aa48  64 a0 67 00 18 40 00 00                          .byte 0x64, 0xa0, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00

; FUNCTION 0x0031aa50, declared_size=4, range_size=4, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance9includeIOEv
; demangled: sfc::script::lua::Instance::includeIO()
; decoder-mode: arm
0031aa50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031aa54, declared_size=4, range_size=4, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance14includePackageEv
; demangled: sfc::script::lua::Instance::includePackage()
; decoder-mode: arm
0031aa54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031aa78, declared_size=156, range_size=156, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance6pCall_EjRNS1_12ReturnValuesE
; demangled: sfc::script::lua::Instance::pCall_(unsigned int, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0031aa78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031aa7c  00 40 a0 e1                                      mov r4, r0
0031aa80  04 00 90 e5                                      ldr r0, [r0, #4]
0031aa84  02 50 a0 e1                                      mov r5, r2
0031aa88  01 70 a0 e1                                      mov r7, r1
0031aa8c  a6 c1 14 eb                                      bl #0x84b12c
0031aa90  04 60 94 e5                                      ldr r6, [r4, #4]
0031aa94  00 30 a0 e3                                      mov r3, #0
0031aa98  07 10 a0 e1                                      mov r1, r7
0031aa9c  00 20 e0 e3                                      mvn r2, #0
0031aaa0  00 80 a0 e1                                      mov r8, r0
0031aaa4  06 00 a0 e1                                      mov r0, r6
0031aaa8  68 c4 14 eb                                      bl #0x84bc50
0031aaac  06 10 a0 e1                                      mov r1, r6
0031aab0  00 20 a0 e1                                      mov r2, r0
0031aab4  04 00 85 e2                                      add r0, r5, #4
0031aab8  7b ff ff eb                                      bl #0x31a8ac
0031aabc  08 30 95 e5                                      ldr r3, [r5, #8]
0031aac0  00 00 53 e3                                      cmp r3, #0
0031aac4  00 00 00 0a                                      beq #0x31aacc
0031aac8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031aacc  04 00 94 e5                                      ldr r0, [r4, #4]
0031aad0  95 c1 14 eb                                      bl #0x84b12c
0031aad4  08 70 67 e0                                      rsb r7, r7, r8
0031aad8  01 70 67 e2                                      rsb r7, r7, #1
0031aadc  00 70 87 e0                                      add r7, r7, r0
0031aae0  00 00 57 e3                                      cmp r7, #0
0031aae4  06 00 00 da                                      ble #0x31ab04
0031aae8  00 60 67 e2                                      rsb r6, r7, #0
0031aaec  06 20 a0 e1                                      mov r2, r6
0031aaf0  05 00 a0 e1                                      mov r0, r5
0031aaf4  04 10 94 e5                                      ldr r1, [r4, #4]
0031aaf8  6b 02 00 eb                                      bl #0x31b4ac
0031aafc  01 60 96 e2                                      adds r6, r6, #1
0031ab00  f9 ff ff 1a                                      bne #0x31aaec
0031ab04  04 00 94 e5                                      ldr r0, [r4, #4]
0031ab08  07 10 e0 e1                                      mvn r1, r7
0031ab0c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0031ab10  8a c1 14 ea                                      b #0x84b140

; FUNCTION 0x0031ab14, declared_size=56, range_size=56, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance5pCallEPKcRNS1_12ReturnValuesE
; demangled: sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0031ab14  70 40 2d e9                                      push {r4, r5, r6, lr}
0031ab18  01 30 a0 e1                                      mov r3, r1
0031ab1c  27 1c e0 e3                                      mvn r1, #0x2700
0031ab20  00 40 a0 e1                                      mov r4, r0
0031ab24  02 50 a0 e1                                      mov r5, r2
0031ab28  11 10 41 e2                                      sub r1, r1, #0x11
0031ab2c  03 20 a0 e1                                      mov r2, r3
0031ab30  04 00 90 e5                                      ldr r0, [r0, #4]
0031ab34  ac c5 14 eb                                      bl #0x84c1ec
0031ab38  04 00 a0 e1                                      mov r0, r4
0031ab3c  05 20 a0 e1                                      mov r2, r5
0031ab40  00 10 a0 e3                                      mov r1, #0
0031ab44  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031ab48  ca ff ff ea                                      b #0x31aa78

; FUNCTION 0x0031ab4c, declared_size=156, range_size=156, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance5pCallERKNS1_9ArgumentsERNS1_12ReturnValuesE
; demangled: sfc::script::lua::Instance::pCall(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0031ab4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031ab50  04 30 91 e5                                      ldr r3, [r1, #4]
0031ab54  00 40 a0 e1                                      mov r4, r0
0031ab58  02 80 a0 e1                                      mov r8, r2
0031ab5c  05 00 93 e8                                      ldm r3, {r0, r2}
0031ab60  01 50 a0 e1                                      mov r5, r1
0031ab64  02 30 60 e0                                      rsb r3, r0, r2
0031ab68  43 32 a0 e1                                      asr r3, r3, #4
0031ab6c  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031ab70  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031ab74  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031ab78  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031ab7c  82 11 83 e0                                      add r1, r3, r2, lsl #3
0031ab80  00 10 61 e2                                      rsb r1, r1, #0
0031ab84  00 00 51 e3                                      cmp r1, #0
0031ab88  12 00 00 0a                                      beq #0x31abd8
0031ab8c  00 60 a0 e3                                      mov r6, #0
0031ab90  06 70 a0 e1                                      mov r7, r6
0031ab94  06 00 80 e0                                      add r0, r0, r6
0031ab98  04 10 94 e5                                      ldr r1, [r4, #4]
0031ab9c  c8 07 00 eb                                      bl #0x31cac4
0031aba0  04 20 95 e5                                      ldr r2, [r5, #4]
0031aba4  01 70 87 e2                                      add r7, r7, #1
0031aba8  70 60 86 e2                                      add r6, r6, #0x70
0031abac  09 00 92 e8                                      ldm r2, {r0, r3}
0031abb0  03 30 60 e0                                      rsb r3, r0, r3
0031abb4  43 32 a0 e1                                      asr r3, r3, #4
0031abb8  83 11 83 e0                                      add r1, r3, r3, lsl #3
0031abbc  01 13 81 e0                                      add r1, r1, r1, lsl #6
0031abc0  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031abc4  81 17 81 e0                                      add r1, r1, r1, lsl #15
0031abc8  81 11 83 e0                                      add r1, r3, r1, lsl #3
0031abcc  00 10 61 e2                                      rsb r1, r1, #0
0031abd0  01 00 57 e1                                      cmp r7, r1
0031abd4  ee ff ff 3a                                      blo #0x31ab94
0031abd8  04 00 a0 e1                                      mov r0, r4
0031abdc  08 20 a0 e1                                      mov r2, r8
0031abe0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0031abe4  a3 ff ff ea                                      b #0x31aa78

; FUNCTION 0x0031abe8, declared_size=60, range_size=60, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance5pCallEPKcRKNS1_9ArgumentsERNS1_12ReturnValuesE
; demangled: sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0031abe8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031abec  00 40 a0 e1                                      mov r4, r0
0031abf0  01 00 a0 e1                                      mov r0, r1
0031abf4  27 1c e0 e3                                      mvn r1, #0x2700
0031abf8  02 50 a0 e1                                      mov r5, r2
0031abfc  11 10 41 e2                                      sub r1, r1, #0x11
0031ac00  00 20 a0 e1                                      mov r2, r0
0031ac04  04 00 94 e5                                      ldr r0, [r4, #4]
0031ac08  03 60 a0 e1                                      mov r6, r3
0031ac0c  76 c5 14 eb                                      bl #0x84c1ec
0031ac10  04 00 a0 e1                                      mov r0, r4
0031ac14  05 10 a0 e1                                      mov r1, r5
0031ac18  06 20 a0 e1                                      mov r2, r6
0031ac1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031ac20  c9 ff ff ea                                      b #0x31ab4c

; FUNCTION 0x0031ac24, declared_size=208, range_size=208, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance8execFileER11IFileStreamRNS1_12ReturnValuesE
; demangled: sfc::script::lua::Instance::execFile(IFileStream&, sfc::script::lua::ReturnValues&)
; decoder-mode: arm
0031ac24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031ac28  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0031ac2c  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
0031ac30  41 de 4d e2                                      sub sp, sp, #0x410
0031ac34  04 40 8f e0                                      add r4, pc, r4
0031ac38  08 30 94 e7                                      ldr r3, [r4, r8]
0031ac3c  08 d0 4d e2                                      sub sp, sp, #8
0031ac40  04 70 90 e5                                      ldr r7, [r0, #4]
0031ac44  00 c0 93 e5                                      ldr ip, [r3]
0031ac48  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0031ac4c  04 10 8d e5                                      str r1, [sp, #4]
0031ac50  14 c4 8d e5                                      str ip, [sp, #0x414]
0031ac54  03 10 94 e7                                      ldr r1, [r4, r3]
0031ac58  00 c0 a0 e3                                      mov ip, #0
0031ac5c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0031ac60  08 c0 8d e5                                      str ip, [sp, #8]
0031ac64  18 c0 8d e2                                      add ip, sp, #0x18
0031ac68  02 50 a0 e1                                      mov r5, r2
0031ac6c  04 c0 4c e2                                      sub ip, ip, #4
0031ac70  08 20 8d e2                                      add r2, sp, #8
0031ac74  00 60 a0 e1                                      mov r6, r0
0031ac78  08 20 42 e2                                      sub r2, r2, #8
0031ac7c  03 30 8f e0                                      add r3, pc, r3
0031ac80  0c c0 8d e5                                      str ip, [sp, #0xc]
0031ac84  07 00 a0 e1                                      mov r0, r7
0031ac88  01 cb a0 e3                                      mov ip, #0x400
0031ac8c  10 c0 8d e5                                      str ip, [sp, #0x10]
0031ac90  00 60 8d e5                                      str r6, [sp]
0031ac94  c8 c3 14 eb                                      bl #0x84bbbc
0031ac98  00 20 a0 e1                                      mov r2, r0
0031ac9c  07 10 a0 e1                                      mov r1, r7
0031aca0  04 00 85 e2                                      add r0, r5, #4
0031aca4  00 ff ff eb                                      bl #0x31a8ac
0031aca8  08 10 95 e5                                      ldr r1, [r5, #8]
0031acac  00 00 51 e3                                      cmp r1, #0
0031acb0  02 00 00 1a                                      bne #0x31acc0
0031acb4  06 00 a0 e1                                      mov r0, r6
0031acb8  05 20 a0 e1                                      mov r2, r5
0031acbc  6d ff ff eb                                      bl #0x31aa78
0031acc0  08 30 94 e7                                      ldr r3, [r4, r8]
0031acc4  14 24 9d e5                                      ldr r2, [sp, #0x414]
0031acc8  00 30 93 e5                                      ldr r3, [r3]
0031accc  03 00 52 e1                                      cmp r2, r3
0031acd0  02 00 00 1a                                      bne #0x31ace0
0031acd4  18 d0 8d e2                                      add sp, sp, #0x18
0031acd8  01 db 8d e2                                      add sp, sp, #0x400
0031acdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031ace0  8a cd ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031ace4  5c 9e 67 00 ac 40 00 00 54 09 00 00 ec 3b 5a 00  .byte 0x5c, 0x9e, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x09, 0x00, 0x00, 0xec, 0x3b, 0x5a, 0x00

; FUNCTION 0x0031acf4, declared_size=244, range_size=244, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance8loadFileER12StreamBuffer
; demangled: sfc::script::lua::Instance::loadFile(StreamBuffer&)
; decoder-mode: arm
0031acf4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031acf8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0031acfc  d8 80 9f e5                                      ldr r8, [pc, #0xd8]
0031ad00  41 de 4d e2                                      sub sp, sp, #0x410
0031ad04  04 40 8f e0                                      add r4, pc, r4
0031ad08  08 30 94 e7                                      ldr r3, [r4, r8]
0031ad0c  0c d0 4d e2                                      sub sp, sp, #0xc
0031ad10  01 60 a0 e1                                      mov r6, r1
0031ad14  00 30 93 e5                                      ldr r3, [r3]
0031ad18  02 a0 a0 e1                                      mov sl, r2
0031ad1c  00 50 a0 e1                                      mov r5, r0
0031ad20  14 34 8d e5                                      str r3, [sp, #0x414]
0031ad24  b6 fe ff eb                                      bl #0x31a804
0031ad28  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0031ad2c  04 70 96 e5                                      ldr r7, [r6, #4]
0031ad30  00 c0 a0 e3                                      mov ip, #0
0031ad34  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0031ad38  04 c0 8d e5                                      str ip, [sp, #4]
0031ad3c  18 c0 8d e2                                      add ip, sp, #0x18
0031ad40  02 10 94 e7                                      ldr r1, [r4, r2]
0031ad44  04 c0 4c e2                                      sub ip, ip, #4
0031ad48  08 20 8d e2                                      add r2, sp, #8
0031ad4c  03 30 8f e0                                      add r3, pc, r3
0031ad50  08 20 42 e2                                      sub r2, r2, #8
0031ad54  0c c0 8d e5                                      str ip, [sp, #0xc]
0031ad58  07 00 a0 e1                                      mov r0, r7
0031ad5c  01 cb a0 e3                                      mov ip, #0x400
0031ad60  10 c0 8d e5                                      str ip, [sp, #0x10]
0031ad64  08 a0 8d e5                                      str sl, [sp, #8]
0031ad68  00 60 8d e5                                      str r6, [sp]
0031ad6c  92 c3 14 eb                                      bl #0x84bbbc
0031ad70  07 10 a0 e1                                      mov r1, r7
0031ad74  00 20 a0 e1                                      mov r2, r0
0031ad78  05 00 a0 e1                                      mov r0, r5
0031ad7c  ca fe ff eb                                      bl #0x31a8ac
0031ad80  04 10 95 e5                                      ldr r1, [r5, #4]
0031ad84  00 00 51 e3                                      cmp r1, #0
0031ad88  08 00 00 1a                                      bne #0x31adb0
0031ad8c  04 60 96 e5                                      ldr r6, [r6, #4]
0031ad90  01 20 a0 e1                                      mov r2, r1
0031ad94  01 30 a0 e1                                      mov r3, r1
0031ad98  06 00 a0 e1                                      mov r0, r6
0031ad9c  ab c3 14 eb                                      bl #0x84bc50
0031ada0  06 10 a0 e1                                      mov r1, r6
0031ada4  00 20 a0 e1                                      mov r2, r0
0031ada8  05 00 a0 e1                                      mov r0, r5
0031adac  be fe ff eb                                      bl #0x31a8ac
0031adb0  08 30 94 e7                                      ldr r3, [r4, r8]
0031adb4  14 24 9d e5                                      ldr r2, [sp, #0x414]
0031adb8  05 00 a0 e1                                      mov r0, r5
0031adbc  00 30 93 e5                                      ldr r3, [r3]
0031adc0  03 00 52 e1                                      cmp r2, r3
0031adc4  02 00 00 1a                                      bne #0x31add4
0031adc8  1c d0 8d e2                                      add sp, sp, #0x1c
0031adcc  01 db 8d e2                                      add sp, sp, #0x400
0031add0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0031add4  4d cd ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031add8  8c 9d 67 00 ac 40 00 00 54 09 00 00 1c 3b 5a 00  .byte 0x8c, 0x9d, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x09, 0x00, 0x00, 0x1c, 0x3b, 0x5a, 0x00

; FUNCTION 0x0031ade8, declared_size=240, range_size=240, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance8loadFileER11IFileStream
; demangled: sfc::script::lua::Instance::loadFile(IFileStream&)
; decoder-mode: arm
0031ade8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031adec  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0031adf0  d4 80 9f e5                                      ldr r8, [pc, #0xd4]
0031adf4  41 de 4d e2                                      sub sp, sp, #0x410
0031adf8  04 40 8f e0                                      add r4, pc, r4
0031adfc  08 30 94 e7                                      ldr r3, [r4, r8]
0031ae00  0c d0 4d e2                                      sub sp, sp, #0xc
0031ae04  01 60 a0 e1                                      mov r6, r1
0031ae08  00 30 93 e5                                      ldr r3, [r3]
0031ae0c  02 a0 a0 e1                                      mov sl, r2
0031ae10  00 50 a0 e1                                      mov r5, r0
0031ae14  14 34 8d e5                                      str r3, [sp, #0x414]
0031ae18  79 fe ff eb                                      bl #0x31a804
0031ae1c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0031ae20  04 70 96 e5                                      ldr r7, [r6, #4]
0031ae24  00 c0 a0 e3                                      mov ip, #0
0031ae28  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0031ae2c  08 c0 8d e5                                      str ip, [sp, #8]
0031ae30  18 c0 8d e2                                      add ip, sp, #0x18
0031ae34  02 10 94 e7                                      ldr r1, [r4, r2]
0031ae38  04 c0 4c e2                                      sub ip, ip, #4
0031ae3c  08 20 8d e2                                      add r2, sp, #8
0031ae40  03 30 8f e0                                      add r3, pc, r3
0031ae44  08 20 42 e2                                      sub r2, r2, #8
0031ae48  0c c0 8d e5                                      str ip, [sp, #0xc]
0031ae4c  07 00 a0 e1                                      mov r0, r7
0031ae50  01 cb a0 e3                                      mov ip, #0x400
0031ae54  10 c0 8d e5                                      str ip, [sp, #0x10]
0031ae58  40 04 8d e8                                      stm sp, {r6, sl}
0031ae5c  56 c3 14 eb                                      bl #0x84bbbc
0031ae60  07 10 a0 e1                                      mov r1, r7
0031ae64  00 20 a0 e1                                      mov r2, r0
0031ae68  05 00 a0 e1                                      mov r0, r5
0031ae6c  8e fe ff eb                                      bl #0x31a8ac
0031ae70  04 10 95 e5                                      ldr r1, [r5, #4]
0031ae74  00 00 51 e3                                      cmp r1, #0
0031ae78  08 00 00 1a                                      bne #0x31aea0
0031ae7c  04 60 96 e5                                      ldr r6, [r6, #4]
0031ae80  01 20 a0 e1                                      mov r2, r1
0031ae84  01 30 a0 e1                                      mov r3, r1
0031ae88  06 00 a0 e1                                      mov r0, r6
0031ae8c  6f c3 14 eb                                      bl #0x84bc50
0031ae90  06 10 a0 e1                                      mov r1, r6
0031ae94  00 20 a0 e1                                      mov r2, r0
0031ae98  05 00 a0 e1                                      mov r0, r5
0031ae9c  82 fe ff eb                                      bl #0x31a8ac
0031aea0  08 30 94 e7                                      ldr r3, [r4, r8]
0031aea4  14 24 9d e5                                      ldr r2, [sp, #0x414]
0031aea8  05 00 a0 e1                                      mov r0, r5
0031aeac  00 30 93 e5                                      ldr r3, [r3]
0031aeb0  03 00 52 e1                                      cmp r2, r3
0031aeb4  02 00 00 1a                                      bne #0x31aec4
0031aeb8  1c d0 8d e2                                      add sp, sp, #0x1c
0031aebc  01 db 8d e2                                      add sp, sp, #0x400
0031aec0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0031aec4  11 cd ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031aec8  98 9c 67 00 ac 40 00 00 54 09 00 00 28 3a 5a 00  .byte 0x98, 0x9c, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x09, 0x00, 0x00, 0x28, 0x3a, 0x5a, 0x00

; FUNCTION 0x0031aed8, declared_size=48, range_size=48, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance9setGlobalEPKcRKNS1_5ValueE
; demangled: sfc::script::lua::Instance::setGlobal(char const*, sfc::script::lua::Value const&)
; decoder-mode: arm
0031aed8  70 40 2d e9                                      push {r4, r5, r6, lr}
0031aedc  00 40 a0 e1                                      mov r4, r0
0031aee0  01 50 a0 e1                                      mov r5, r1
0031aee4  02 00 a0 e1                                      mov r0, r2
0031aee8  04 10 94 e5                                      ldr r1, [r4, #4]
0031aeec  f4 06 00 eb                                      bl #0x31cac4
0031aef0  04 00 94 e5                                      ldr r0, [r4, #4]
0031aef4  27 1c e0 e3                                      mvn r1, #0x2700
0031aef8  11 10 41 e2                                      sub r1, r1, #0x11
0031aefc  05 20 a0 e1                                      mov r2, r5
0031af00  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031af04  5d c4 14 ea                                      b #0x84c080

; FUNCTION 0x0031af08, declared_size=180, range_size=180, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance16registerFunctionEPKcPFiP9lua_StateERKNS1_9ArgumentsE
; demangled: sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*), sfc::script::lua::Arguments const&)
; decoder-mode: arm
0031af08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0031af0c  03 50 a0 e1                                      mov r5, r3
0031af10  04 30 93 e5                                      ldr r3, [r3, #4]
0031af14  00 40 a0 e1                                      mov r4, r0
0031af18  01 60 a0 e1                                      mov r6, r1
0031af1c  03 00 93 e8                                      ldm r3, {r0, r1}
0031af20  02 a0 a0 e1                                      mov sl, r2
0031af24  01 10 60 e0                                      rsb r1, r0, r1
0031af28  41 12 a0 e1                                      asr r1, r1, #4
0031af2c  81 21 81 e0                                      add r2, r1, r1, lsl #3
0031af30  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031af34  82 21 81 e0                                      add r2, r1, r2, lsl #3
0031af38  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031af3c  82 21 81 e0                                      add r2, r1, r2, lsl #3
0031af40  00 20 62 e2                                      rsb r2, r2, #0
0031af44  00 00 52 e3                                      cmp r2, #0
0031af48  12 00 00 0a                                      beq #0x31af98
0031af4c  00 70 a0 e3                                      mov r7, #0
0031af50  07 80 a0 e1                                      mov r8, r7
0031af54  07 00 80 e0                                      add r0, r0, r7
0031af58  04 10 94 e5                                      ldr r1, [r4, #4]
0031af5c  d8 06 00 eb                                      bl #0x31cac4
0031af60  04 10 95 e5                                      ldr r1, [r5, #4]
0031af64  01 80 88 e2                                      add r8, r8, #1
0031af68  70 70 87 e2                                      add r7, r7, #0x70
0031af6c  09 00 91 e8                                      ldm r1, {r0, r3}
0031af70  03 30 60 e0                                      rsb r3, r0, r3
0031af74  43 32 a0 e1                                      asr r3, r3, #4
0031af78  83 21 83 e0                                      add r2, r3, r3, lsl #3
0031af7c  02 23 82 e0                                      add r2, r2, r2, lsl #6
0031af80  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031af84  82 27 82 e0                                      add r2, r2, r2, lsl #15
0031af88  82 21 83 e0                                      add r2, r3, r2, lsl #3
0031af8c  00 20 62 e2                                      rsb r2, r2, #0
0031af90  02 00 58 e1                                      cmp r8, r2
0031af94  ee ff ff 3a                                      blo #0x31af54
0031af98  0a 10 a0 e1                                      mov r1, sl
0031af9c  04 00 94 e5                                      ldr r0, [r4, #4]
0031afa0  4d c3 14 eb                                      bl #0x84bcdc
0031afa4  04 00 94 e5                                      ldr r0, [r4, #4]
0031afa8  27 1c e0 e3                                      mvn r1, #0x2700
0031afac  11 10 41 e2                                      sub r1, r1, #0x11
0031afb0  06 20 a0 e1                                      mov r2, r6
0031afb4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0031afb8  30 c4 14 ea                                      b #0x84c080

; FUNCTION 0x0031afbc, declared_size=52, range_size=52, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance16registerFunctionEPKcPFiP9lua_StateE
; demangled: sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*))
; decoder-mode: arm
0031afbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0031afc0  00 40 a0 e1                                      mov r4, r0
0031afc4  01 50 a0 e1                                      mov r5, r1
0031afc8  04 00 90 e5                                      ldr r0, [r0, #4]
0031afcc  02 10 a0 e1                                      mov r1, r2
0031afd0  00 20 a0 e3                                      mov r2, #0
0031afd4  40 c3 14 eb                                      bl #0x84bcdc
0031afd8  04 00 94 e5                                      ldr r0, [r4, #4]
0031afdc  27 1c e0 e3                                      mvn r1, #0x2700
0031afe0  11 10 41 e2                                      sub r1, r1, #0x11
0031afe4  05 20 a0 e1                                      mov r2, r5
0031afe8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0031afec  23 c4 14 ea                                      b #0x84c080

; FUNCTION 0x0031aff0, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance12includeDebugEv
; demangled: sfc::script::lua::Instance::includeDebug()
; decoder-mode: arm
0031aff0  04 00 90 e5                                      ldr r0, [r0, #4]
0031aff4  4a cf 14 ea                                      b #0x84ed24

; FUNCTION 0x0031aff8, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance12includeTableEv
; demangled: sfc::script::lua::Instance::includeTable()
; decoder-mode: arm
0031aff8  04 00 90 e5                                      ldr r0, [r0, #4]
0031affc  5c 00 15 ea                                      b #0x85b174

; FUNCTION 0x0031b000, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance11includeMathEv
; demangled: sfc::script::lua::Instance::includeMath()
; decoder-mode: arm
0031b000  04 00 90 e5                                      ldr r0, [r0, #4]
0031b004  8b e3 14 ea                                      b #0x853e38

; FUNCTION 0x0031b008, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance13includeStringEv
; demangled: sfc::script::lua::Instance::includeString()
; decoder-mode: arm
0031b008  04 00 90 e5                                      ldr r0, [r0, #4]
0031b00c  32 fc 14 ea                                      b #0x85a0dc

; FUNCTION 0x0031b010, declared_size=8, range_size=8, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance11includeBaseEv
; demangled: sfc::script::lua::Instance::includeBase()
; decoder-mode: arm
0031b010  04 00 90 e5                                      ldr r0, [r0, #4]
0031b014  f8 ca 14 ea                                      b #0x84dbfc

; FUNCTION 0x0031b018, declared_size=360, range_size=360, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8Instance12_chunkReaderEP9lua_StatePvPj
; demangled: sfc::script::lua::Instance::_chunkReader(lua_State*, void*, unsigned int*)
; decoder-mode: arm
0031b018  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0031b01c  04 30 91 e5                                      ldr r3, [r1, #4]
0031b020  01 40 a0 e1                                      mov r4, r1
0031b024  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
0031b028  00 00 53 e3                                      cmp r3, #0
0031b02c  0c d0 4d e2                                      sub sp, sp, #0xc
0031b030  02 60 a0 e1                                      mov r6, r2
0031b034  01 10 8f e0                                      add r1, pc, r1
0031b038  0e 00 00 1a                                      bne #0x31b078
0031b03c  08 50 94 e5                                      ldr r5, [r4, #8]
0031b040  00 00 55 e3                                      cmp r5, #0
0031b044  27 00 00 1a                                      bne #0x31b0e8
0031b048  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0031b04c  03 30 91 e7                                      ldr r3, [r1, r3]
0031b050  00 30 93 e5                                      ldr r3, [r3]
0031b054  02 00 53 e3                                      cmp r3, #2
0031b058  00 50 85 05                                      streq r5, [r5]
0031b05c  05 00 a0 01                                      moveq r0, r5
0031b060  02 00 00 0a                                      beq #0x31b070
0031b064  01 00 53 e3                                      cmp r3, #1
0031b068  30 00 00 0a                                      beq #0x31b130
0031b06c  00 00 a0 e3                                      mov r0, #0
0031b070  0c d0 8d e2                                      add sp, sp, #0xc
0031b074  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0031b078  03 00 a0 e1                                      mov r0, r3
0031b07c  00 30 93 e5                                      ldr r3, [r3]
0031b080  0f e0 a0 e1                                      mov lr, pc
0031b084  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0031b088  04 30 94 e5                                      ldr r3, [r4, #4]
0031b08c  00 50 a0 e1                                      mov r5, r0
0031b090  01 70 a0 e1                                      mov r7, r1
0031b094  03 00 a0 e1                                      mov r0, r3
0031b098  00 30 93 e5                                      ldr r3, [r3]
0031b09c  0f e0 a0 e1                                      mov lr, pc
0031b0a0  08 f0 93 e5                                      ldr pc, [r3, #8]
0031b0a4  00 00 55 e1                                      cmp r5, r0
0031b0a8  0a 00 00 0a                                      beq #0x31b0d8
0031b0ac  04 30 94 e5                                      ldr r3, [r4, #4]
0031b0b0  03 00 a0 e1                                      mov r0, r3
0031b0b4  00 c0 93 e5                                      ldr ip, [r3]
0031b0b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0031b0bc  10 20 94 e5                                      ldr r2, [r4, #0x10]
0031b0c0  00 30 a0 e3                                      mov r3, #0
0031b0c4  0f e0 a0 e1                                      mov lr, pc
0031b0c8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0031b0cc  00 00 86 e5                                      str r0, [r6]
0031b0d0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0031b0d4  e5 ff ff ea                                      b #0x31b070
0031b0d8  01 00 57 e1                                      cmp r7, r1
0031b0dc  f2 ff ff 1a                                      bne #0x31b0ac
0031b0e0  00 00 a0 e3                                      mov r0, #0
0031b0e4  e1 ff ff ea                                      b #0x31b070
0031b0e8  00 30 95 e5                                      ldr r3, [r5]
0031b0ec  05 00 a0 e1                                      mov r0, r5
0031b0f0  0f e0 a0 e1                                      mov lr, pc
0031b0f4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0031b0f8  08 30 94 e5                                      ldr r3, [r4, #8]
0031b0fc  00 50 a0 e1                                      mov r5, r0
0031b100  01 70 a0 e1                                      mov r7, r1
0031b104  03 00 a0 e1                                      mov r0, r3
0031b108  00 30 93 e5                                      ldr r3, [r3]
0031b10c  0f e0 a0 e1                                      mov lr, pc
0031b110  08 f0 93 e5                                      ldr pc, [r3, #8]
0031b114  00 00 55 e1                                      cmp r5, r0
0031b118  08 30 94 15                                      ldrne r3, [r4, #8]
0031b11c  e3 ff ff 1a                                      bne #0x31b0b0
0031b120  01 00 57 e1                                      cmp r7, r1
0031b124  d0 ff ff 0a                                      beq #0x31b06c
0031b128  08 30 94 e5                                      ldr r3, [r4, #8]
0031b12c  df ff ff ea                                      b #0x31b0b0
0031b130  38 00 9f e5                                      ldr r0, [pc, #0x38]
0031b134  38 20 9f e5                                      ldr r2, [pc, #0x38]
0031b138  38 30 9f e5                                      ldr r3, [pc, #0x38]
0031b13c  00 00 91 e7                                      ldr r0, [r1, r0]
0031b140  34 10 9f e5                                      ldr r1, [pc, #0x34]
0031b144  5e c0 a0 e3                                      mov ip, #0x5e
0031b148  a8 00 80 e2                                      add r0, r0, #0xa8
0031b14c  01 10 8f e0                                      add r1, pc, r1
0031b150  02 20 8f e0                                      add r2, pc, r2
0031b154  03 30 8f e0                                      add r3, pc, r3
0031b158  00 c0 8d e5                                      str ip, [sp]
0031b15c  a8 cb ff eb                                      bl #0x30e004
0031b160  05 00 a0 e1                                      mov r0, r5
0031b164  c1 ff ff ea                                      b #0x31b070
; mapping-symbol data/literal pool
0031b168  5c 9a 67 00 c0 39 00 00 c0 19 00 00 28 37 5a 00  .byte 0x5c, 0x9a, 0x67, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x37, 0x5a, 0x00
0031b178  44 37 5a 00 8c 32 5a 00                          .byte 0x44, 0x37, 0x5a, 0x00, 0x8c, 0x32, 0x5a, 0x00

; FUNCTION 0x0031b180, declared_size=68, range_size=68, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceD1Ev
; demangled: sfc::script::lua::Instance::~Instance()
; decoder-mode: arm
0031b180  10 40 2d e9                                      push {r4, lr}
0031b184  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b188  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b18c  08 10 d0 e5                                      ldrb r1, [r0, #8]
0031b190  03 30 8f e0                                      add r3, pc, r3
0031b194  02 20 93 e7                                      ldr r2, [r3, r2]
0031b198  00 00 51 e3                                      cmp r1, #0
0031b19c  00 40 a0 e1                                      mov r4, r0
0031b1a0  08 20 82 e2                                      add r2, r2, #8
0031b1a4  00 20 80 e5                                      str r2, [r0]
0031b1a8  01 00 00 0a                                      beq #0x31b1b4
0031b1ac  04 00 90 e5                                      ldr r0, [r0, #4]
0031b1b0  f1 f1 14 eb                                      bl #0x85797c
0031b1b4  04 00 a0 e1                                      mov r0, r4
0031b1b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b1bc  00 99 67 00 18 40 00 00                          .byte 0x00, 0x99, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00

; FUNCTION 0x0031b1c4, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceD0Ev
; demangled: sfc::script::lua::Instance::~Instance()
; decoder-mode: arm
0031b1c4  10 40 2d e9                                      push {r4, lr}
0031b1c8  00 40 a0 e1                                      mov r4, r0
0031b1cc  eb ff ff eb                                      bl #0x31b180
0031b1d0  04 00 a0 e1                                      mov r0, r4
0031b1d4  99 d4 ff eb                                      bl #0x310440
0031b1d8  04 00 a0 e1                                      mov r0, r4
0031b1dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031b1e0, declared_size=68, range_size=68, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceD2Ev
; demangled: sfc::script::lua::Instance::~Instance()
; decoder-mode: arm
0031b1e0  10 40 2d e9                                      push {r4, lr}
0031b1e4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b1e8  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b1ec  08 10 d0 e5                                      ldrb r1, [r0, #8]
0031b1f0  03 30 8f e0                                      add r3, pc, r3
0031b1f4  02 20 93 e7                                      ldr r2, [r3, r2]
0031b1f8  00 00 51 e3                                      cmp r1, #0
0031b1fc  00 40 a0 e1                                      mov r4, r0
0031b200  08 20 82 e2                                      add r2, r2, #8
0031b204  00 20 80 e5                                      str r2, [r0]
0031b208  01 00 00 0a                                      beq #0x31b214
0031b20c  04 00 90 e5                                      ldr r0, [r0, #4]
0031b210  d9 f1 14 eb                                      bl #0x85797c
0031b214  04 00 a0 e1                                      mov r0, r4
0031b218  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b21c  a0 98 67 00 18 40 00 00                          .byte 0xa0, 0x98, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00

; FUNCTION 0x0031b268, declared_size=64, range_size=64, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceC1Ev
; demangled: sfc::script::lua::Instance::Instance()
; decoder-mode: arm
0031b268  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b26c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b270  01 10 a0 e3                                      mov r1, #1
0031b274  03 30 8f e0                                      add r3, pc, r3
0031b278  02 20 93 e7                                      ldr r2, [r3, r2]
0031b27c  10 40 2d e9                                      push {r4, lr}
0031b280  08 20 82 e2                                      add r2, r2, #8
0031b284  08 10 c0 e5                                      strb r1, [r0, #8]
0031b288  00 20 80 e5                                      str r2, [r0]
0031b28c  00 40 a0 e1                                      mov r4, r0
0031b290  e3 ff ff eb                                      bl #0x31b224
0031b294  04 00 84 e5                                      str r0, [r4, #4]
0031b298  04 00 a0 e1                                      mov r0, r4
0031b29c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b2a0  1c 98 67 00 18 40 00 00                          .byte 0x1c, 0x98, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00

; FUNCTION 0x0031b2a8, declared_size=64, range_size=64, mode=arm
; class-group: sfc::script::lua::Instance
; alias: _ZN3sfc6script3lua8InstanceC2Ev
; demangled: sfc::script::lua::Instance::Instance()
; decoder-mode: arm
0031b2a8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0031b2ac  30 20 9f e5                                      ldr r2, [pc, #0x30]
0031b2b0  01 10 a0 e3                                      mov r1, #1
0031b2b4  03 30 8f e0                                      add r3, pc, r3
0031b2b8  02 20 93 e7                                      ldr r2, [r3, r2]
0031b2bc  10 40 2d e9                                      push {r4, lr}
0031b2c0  08 20 82 e2                                      add r2, r2, #8
0031b2c4  08 10 c0 e5                                      strb r1, [r0, #8]
0031b2c8  00 20 80 e5                                      str r2, [r0]
0031b2cc  00 40 a0 e1                                      mov r4, r0
0031b2d0  d3 ff ff eb                                      bl #0x31b224
0031b2d4  04 00 84 e5                                      str r0, [r4, #4]
0031b2d8  04 00 a0 e1                                      mov r0, r4
0031b2dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031b2e0  dc 97 67 00 18 40 00 00                          .byte 0xdc, 0x97, 0x67, 0x00, 0x18, 0x40, 0x00, 0x00
