; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00317e14, declared_size=48, range_size=48, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_threadC2Ei
; demangled: updateJob_thread::updateJob_thread(int)
; decoder-mode: arm
00317e14  20 30 9f e5                                      ldr r3, [pc, #0x20]
00317e18  20 c0 9f e5                                      ldr ip, [pc, #0x20]
00317e1c  0c 10 80 e5                                      str r1, [r0, #0xc]
00317e20  03 30 8f e0                                      add r3, pc, r3
00317e24  0c c0 93 e7                                      ldr ip, [r3, ip]
00317e28  01 10 a0 e3                                      mov r1, #1
00317e2c  08 10 c0 e5                                      strb r1, [r0, #8]
00317e30  08 c0 8c e2                                      add ip, ip, #8
00317e34  00 c0 80 e5                                      str ip, [r0]
00317e38  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00317e3c  70 cc 67 00 28 1f 00 00                          .byte 0x70, 0xcc, 0x67, 0x00, 0x28, 0x1f, 0x00, 0x00

; FUNCTION 0x00317e44, declared_size=48, range_size=48, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_threadC1Ei
; demangled: updateJob_thread::updateJob_thread(int)
; decoder-mode: arm
00317e44  20 30 9f e5                                      ldr r3, [pc, #0x20]
00317e48  20 c0 9f e5                                      ldr ip, [pc, #0x20]
00317e4c  0c 10 80 e5                                      str r1, [r0, #0xc]
00317e50  03 30 8f e0                                      add r3, pc, r3
00317e54  0c c0 93 e7                                      ldr ip, [r3, ip]
00317e58  01 10 a0 e3                                      mov r1, #1
00317e5c  08 10 c0 e5                                      strb r1, [r0, #8]
00317e60  08 c0 8c e2                                      add ip, ip, #8
00317e64  00 c0 80 e5                                      str ip, [r0]
00317e68  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00317e6c  40 cc 67 00 28 1f 00 00                          .byte 0x40, 0xcc, 0x67, 0x00, 0x28, 0x1f, 0x00, 0x00

; FUNCTION 0x00317e74, declared_size=4, range_size=4, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_threadD2Ev
; demangled: updateJob_thread::~updateJob_thread()
; decoder-mode: arm
00317e74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e78, declared_size=4, range_size=4, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_threadD1Ev
; demangled: updateJob_thread::~updateJob_thread()
; decoder-mode: arm
00317e78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e7c, declared_size=4, range_size=4, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread3RunEv
; demangled: updateJob_thread::Run()
; decoder-mode: arm
00317e7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e80, declared_size=8, range_size=8, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread6KernelEv
; demangled: updateJob_thread::Kernel()
; decoder-mode: arm
00317e80  01 00 a0 e3                                      mov r0, #1
00317e84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e88, declared_size=8, range_size=8, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread7PrepareEv
; demangled: updateJob_thread::Prepare()
; decoder-mode: arm
00317e88  01 00 a0 e3                                      mov r0, #1
00317e8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e90, declared_size=8, range_size=8, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread22IsCurrectThreadRunningEv
; demangled: updateJob_thread::IsCurrectThreadRunning()
; decoder-mode: arm
00317e90  01 00 a0 e3                                      mov r0, #1
00317e94  1e ff 2f e1                                      bx lr

; FUNCTION 0x00317e98, declared_size=96, range_size=96, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread6Start2Ev
; demangled: updateJob_thread::Start2()
; decoder-mode: arm
00317e98  04 e0 2d e5                                      str lr, [sp, #-4]!
00317e9c  04 20 90 e5                                      ldr r2, [r0, #4]
00317ea0  0c d0 4d e2                                      sub sp, sp, #0xc
00317ea4  00 30 a0 e1                                      mov r3, r0
00317ea8  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
00317eac  08 00 8d e2                                      add r0, sp, #8
00317eb0  04 20 20 e5                                      str r2, [r0, #-4]!
00317eb4  34 20 9f e5                                      ldr r2, [pc, #0x34]
00317eb8  0c c0 8f e0                                      add ip, pc, ip
00317ebc  00 10 a0 e3                                      mov r1, #0
00317ec0  02 20 9c e7                                      ldr r2, [ip, r2]
00317ec4  45 d8 ff eb                                      bl #0x30dfe0
00317ec8  00 00 50 e3                                      cmp r0, #0
00317ecc  01 00 00 1a                                      bne #0x317ed8
00317ed0  0c d0 8d e2                                      add sp, sp, #0xc
00317ed4  00 80 bd e8                                      ldm sp!, {pc}
00317ed8  14 00 9f e5                                      ldr r0, [pc, #0x14]
00317edc  00 00 8f e0                                      add r0, pc, r0
00317ee0  8b 30 00 eb                                      bl #0x324114
00317ee4  00 00 e0 e3                                      mvn r0, #0
00317ee8  f8 ff ff ea                                      b #0x317ed0
; mapping-symbol data/literal pool
00317eec  d8 cb 67 00 7c 39 00 00 1c 68 5a 00              .byte 0xd8, 0xcb, 0x67, 0x00, 0x7c, 0x39, 0x00, 0x00, 0x1c, 0x68, 0x5a, 0x00

; FUNCTION 0x00317ef8, declared_size=96, range_size=96, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread5StartEv
; demangled: updateJob_thread::Start()
; decoder-mode: arm
00317ef8  04 e0 2d e5                                      str lr, [sp, #-4]!
00317efc  04 20 90 e5                                      ldr r2, [r0, #4]
00317f00  0c d0 4d e2                                      sub sp, sp, #0xc
00317f04  00 30 a0 e1                                      mov r3, r0
00317f08  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
00317f0c  08 00 8d e2                                      add r0, sp, #8
00317f10  04 20 20 e5                                      str r2, [r0, #-4]!
00317f14  34 20 9f e5                                      ldr r2, [pc, #0x34]
00317f18  0c c0 8f e0                                      add ip, pc, ip
00317f1c  00 10 a0 e3                                      mov r1, #0
00317f20  02 20 9c e7                                      ldr r2, [ip, r2]
00317f24  2d d8 ff eb                                      bl #0x30dfe0
00317f28  00 00 50 e3                                      cmp r0, #0
00317f2c  01 00 00 1a                                      bne #0x317f38
00317f30  0c d0 8d e2                                      add sp, sp, #0xc
00317f34  00 80 bd e8                                      ldm sp!, {pc}
00317f38  14 00 9f e5                                      ldr r0, [pc, #0x14]
00317f3c  00 00 8f e0                                      add r0, pc, r0
00317f40  73 30 00 eb                                      bl #0x324114
00317f44  00 00 e0 e3                                      mvn r0, #0
00317f48  f8 ff ff ea                                      b #0x317f30
; mapping-symbol data/literal pool
00317f4c  78 cb 67 00 f4 38 00 00 d4 67 5a 00              .byte 0x78, 0xcb, 0x67, 0x00, 0xf4, 0x38, 0x00, 0x00, 0xd4, 0x67, 0x5a, 0x00

; FUNCTION 0x00317f58, declared_size=28, range_size=28, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread4StopEv
; demangled: updateJob_thread::Stop()
; decoder-mode: arm
00317f58  10 00 9f e5                                      ldr r0, [pc, #0x10]
00317f5c  10 40 2d e9                                      push {r4, lr}
00317f60  00 00 8f e0                                      add r0, pc, r0
00317f64  6a 30 00 eb                                      bl #0x324114
00317f68  01 00 a0 e3                                      mov r0, #1
00317f6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00317f70  c8 67 5a 00                                      .byte 0xc8, 0x67, 0x5a, 0x00

; FUNCTION 0x00317f74, declared_size=28, range_size=28, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_thread6FinishEv
; demangled: updateJob_thread::Finish()
; decoder-mode: arm
00317f74  10 00 9f e5                                      ldr r0, [pc, #0x10]
00317f78  10 40 2d e9                                      push {r4, lr}
00317f7c  00 00 8f e0                                      add r0, pc, r0
00317f80  63 30 00 eb                                      bl #0x324114
00317f84  01 00 a0 e3                                      mov r0, #1
00317f88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00317f8c  cc 67 5a 00                                      .byte 0xcc, 0x67, 0x5a, 0x00

; FUNCTION 0x00317fcc, declared_size=28, range_size=28, mode=arm
; class-group: updateJob_thread
; alias: _ZN16updateJob_threadD0Ev
; demangled: updateJob_thread::~updateJob_thread()
; decoder-mode: arm
00317fcc  10 40 2d e9                                      push {r4, lr}
00317fd0  00 40 a0 e1                                      mov r4, r0
00317fd4  a7 ff ff eb                                      bl #0x317e78
00317fd8  04 00 a0 e1                                      mov r0, r4
00317fdc  17 e1 ff eb                                      bl #0x310440
00317fe0  04 00 a0 e1                                      mov r0, r4
00317fe4  10 80 bd e8                                      pop {r4, pc}
