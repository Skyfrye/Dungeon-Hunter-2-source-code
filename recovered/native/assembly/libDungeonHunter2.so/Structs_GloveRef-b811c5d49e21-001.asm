; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4730, declared_size=76, range_size=76, mode=arm
; class-group: Structs::GloveRef
; alias: _ZN7Structs8GloveRef8finalizeEv
; demangled: Structs::GloveRef::finalize()
; decoder-mode: arm
004d4730  10 40 2d e9                                      push {r4, lr}
004d4734  00 40 a0 e1                                      mov r4, r0
004d4738  08 00 90 e5                                      ldr r0, [r0, #8]
004d473c  00 00 50 e3                                      cmp r0, #0
004d4740  03 00 00 0a                                      beq #0x4d4754
004d4744  3d ef f8 eb                                      bl #0x310440
004d4748  00 30 a0 e3                                      mov r3, #0
004d474c  04 30 84 e5                                      str r3, [r4, #4]
004d4750  08 30 84 e5                                      str r3, [r4, #8]
004d4754  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4758  00 00 50 e3                                      cmp r0, #0
004d475c  03 00 00 0a                                      beq #0x4d4770
004d4760  36 ef f8 eb                                      bl #0x310440
004d4764  00 30 a0 e3                                      mov r3, #0
004d4768  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d476c  50 30 84 e5                                      str r3, [r4, #0x50]
004d4770  04 00 a0 e1                                      mov r0, r4
004d4774  10 40 bd e8                                      pop {r4, lr}
004d4778  b3 ff ff ea                                      b #0x4d464c

; FUNCTION 0x004d4f28, declared_size=88, range_size=88, mode=arm
; class-group: Structs::GloveRef
; alias: _ZN7Structs8GloveRefD1Ev
; demangled: Structs::GloveRef::~GloveRef()
; decoder-mode: arm
004d4f28  10 40 2d e9                                      push {r4, lr}
004d4f2c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4f30  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4f34  00 40 a0 e1                                      mov r4, r0
004d4f38  03 30 8f e0                                      add r3, pc, r3
004d4f3c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4f40  02 20 93 e7                                      ldr r2, [r3, r2]
004d4f44  00 00 50 e3                                      cmp r0, #0
004d4f48  08 20 82 e2                                      add r2, r2, #8
004d4f4c  00 20 84 e5                                      str r2, [r4]
004d4f50  00 00 00 0a                                      beq #0x4d4f58
004d4f54  39 ed f8 eb                                      bl #0x310440
004d4f58  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4f5c  00 00 50 e3                                      cmp r0, #0
004d4f60  00 00 00 0a                                      beq #0x4d4f68
004d4f64  35 ed f8 eb                                      bl #0x310440
004d4f68  04 00 a0 e1                                      mov r0, r4
004d4f6c  71 ff ff eb                                      bl #0x4d4d38
004d4f70  04 00 a0 e1                                      mov r0, r4
004d4f74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4f78  58 fb 4b 00 58 27 00 00                          .byte 0x58, 0xfb, 0x4b, 0x00, 0x58, 0x27, 0x00, 0x00

; FUNCTION 0x004d4f80, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GloveRef
; alias: _ZN7Structs8GloveRefD0Ev
; demangled: Structs::GloveRef::~GloveRef()
; decoder-mode: arm
004d4f80  10 40 2d e9                                      push {r4, lr}
004d4f84  00 40 a0 e1                                      mov r4, r0
004d4f88  e6 ff ff eb                                      bl #0x4d4f28
004d4f8c  04 00 a0 e1                                      mov r0, r4
004d4f90  2a ed f8 eb                                      bl #0x310440
004d4f94  04 00 a0 e1                                      mov r0, r4
004d4f98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4f9c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::GloveRef
; alias: _ZN7Structs8GloveRefD2Ev
; demangled: Structs::GloveRef::~GloveRef()
; decoder-mode: arm
004d4f9c  10 40 2d e9                                      push {r4, lr}
004d4fa0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4fa4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4fa8  00 40 a0 e1                                      mov r4, r0
004d4fac  03 30 8f e0                                      add r3, pc, r3
004d4fb0  08 00 90 e5                                      ldr r0, [r0, #8]
004d4fb4  02 20 93 e7                                      ldr r2, [r3, r2]
004d4fb8  00 00 50 e3                                      cmp r0, #0
004d4fbc  08 20 82 e2                                      add r2, r2, #8
004d4fc0  00 20 84 e5                                      str r2, [r4]
004d4fc4  00 00 00 0a                                      beq #0x4d4fcc
004d4fc8  1c ed f8 eb                                      bl #0x310440
004d4fcc  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4fd0  00 00 50 e3                                      cmp r0, #0
004d4fd4  00 00 00 0a                                      beq #0x4d4fdc
004d4fd8  18 ed f8 eb                                      bl #0x310440
004d4fdc  04 00 a0 e1                                      mov r0, r4
004d4fe0  54 ff ff eb                                      bl #0x4d4d38
004d4fe4  04 00 a0 e1                                      mov r0, r4
004d4fe8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4fec  e4 fa 4b 00 58 27 00 00                          .byte 0xe4, 0xfa, 0x4b, 0x00, 0x58, 0x27, 0x00, 0x00

; FUNCTION 0x004fa668, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GloveRef
; alias: _ZN7Structs8GloveRef4readEP11IStreamBase
; demangled: Structs::GloveRef::read(IStreamBase*)
; decoder-mode: arm
004fa668  d2 fd ff ea                                      b #0x4f9db8
