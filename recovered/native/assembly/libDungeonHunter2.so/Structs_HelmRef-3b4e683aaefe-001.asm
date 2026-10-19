; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d46e4, declared_size=76, range_size=76, mode=arm
; class-group: Structs::HelmRef
; alias: _ZN7Structs7HelmRef8finalizeEv
; demangled: Structs::HelmRef::finalize()
; decoder-mode: arm
004d46e4  10 40 2d e9                                      push {r4, lr}
004d46e8  00 40 a0 e1                                      mov r4, r0
004d46ec  08 00 90 e5                                      ldr r0, [r0, #8]
004d46f0  00 00 50 e3                                      cmp r0, #0
004d46f4  03 00 00 0a                                      beq #0x4d4708
004d46f8  50 ef f8 eb                                      bl #0x310440
004d46fc  00 30 a0 e3                                      mov r3, #0
004d4700  04 30 84 e5                                      str r3, [r4, #4]
004d4704  08 30 84 e5                                      str r3, [r4, #8]
004d4708  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d470c  00 00 50 e3                                      cmp r0, #0
004d4710  03 00 00 0a                                      beq #0x4d4724
004d4714  49 ef f8 eb                                      bl #0x310440
004d4718  00 30 a0 e3                                      mov r3, #0
004d471c  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d4720  50 30 84 e5                                      str r3, [r4, #0x50]
004d4724  04 00 a0 e1                                      mov r0, r4
004d4728  10 40 bd e8                                      pop {r4, lr}
004d472c  c6 ff ff ea                                      b #0x4d464c

; FUNCTION 0x004d4e5c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::HelmRef
; alias: _ZN7Structs7HelmRefD1Ev
; demangled: Structs::HelmRef::~HelmRef()
; decoder-mode: arm
004d4e5c  10 40 2d e9                                      push {r4, lr}
004d4e60  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4e64  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4e68  00 40 a0 e1                                      mov r4, r0
004d4e6c  03 30 8f e0                                      add r3, pc, r3
004d4e70  08 00 90 e5                                      ldr r0, [r0, #8]
004d4e74  02 20 93 e7                                      ldr r2, [r3, r2]
004d4e78  00 00 50 e3                                      cmp r0, #0
004d4e7c  08 20 82 e2                                      add r2, r2, #8
004d4e80  00 20 84 e5                                      str r2, [r4]
004d4e84  00 00 00 0a                                      beq #0x4d4e8c
004d4e88  6c ed f8 eb                                      bl #0x310440
004d4e8c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4e90  00 00 50 e3                                      cmp r0, #0
004d4e94  00 00 00 0a                                      beq #0x4d4e9c
004d4e98  68 ed f8 eb                                      bl #0x310440
004d4e9c  04 00 a0 e1                                      mov r0, r4
004d4ea0  a4 ff ff eb                                      bl #0x4d4d38
004d4ea4  04 00 a0 e1                                      mov r0, r4
004d4ea8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4eac  24 fc 4b 00 e4 45 00 00                          .byte 0x24, 0xfc, 0x4b, 0x00, 0xe4, 0x45, 0x00, 0x00

; FUNCTION 0x004d4eb4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HelmRef
; alias: _ZN7Structs7HelmRefD0Ev
; demangled: Structs::HelmRef::~HelmRef()
; decoder-mode: arm
004d4eb4  10 40 2d e9                                      push {r4, lr}
004d4eb8  00 40 a0 e1                                      mov r4, r0
004d4ebc  e6 ff ff eb                                      bl #0x4d4e5c
004d4ec0  04 00 a0 e1                                      mov r0, r4
004d4ec4  5d ed f8 eb                                      bl #0x310440
004d4ec8  04 00 a0 e1                                      mov r0, r4
004d4ecc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4ed0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::HelmRef
; alias: _ZN7Structs7HelmRefD2Ev
; demangled: Structs::HelmRef::~HelmRef()
; decoder-mode: arm
004d4ed0  10 40 2d e9                                      push {r4, lr}
004d4ed4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4ed8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4edc  00 40 a0 e1                                      mov r4, r0
004d4ee0  03 30 8f e0                                      add r3, pc, r3
004d4ee4  08 00 90 e5                                      ldr r0, [r0, #8]
004d4ee8  02 20 93 e7                                      ldr r2, [r3, r2]
004d4eec  00 00 50 e3                                      cmp r0, #0
004d4ef0  08 20 82 e2                                      add r2, r2, #8
004d4ef4  00 20 84 e5                                      str r2, [r4]
004d4ef8  00 00 00 0a                                      beq #0x4d4f00
004d4efc  4f ed f8 eb                                      bl #0x310440
004d4f00  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4f04  00 00 50 e3                                      cmp r0, #0
004d4f08  00 00 00 0a                                      beq #0x4d4f10
004d4f0c  4b ed f8 eb                                      bl #0x310440
004d4f10  04 00 a0 e1                                      mov r0, r4
004d4f14  87 ff ff eb                                      bl #0x4d4d38
004d4f18  04 00 a0 e1                                      mov r0, r4
004d4f1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4f20  b0 fb 4b 00 e4 45 00 00                          .byte 0xb0, 0xfb, 0x4b, 0x00, 0xe4, 0x45, 0x00, 0x00

; FUNCTION 0x004fa664, declared_size=4, range_size=4, mode=arm
; class-group: Structs::HelmRef
; alias: _ZN7Structs7HelmRef4readEP11IStreamBase
; demangled: Structs::HelmRef::read(IStreamBase*)
; decoder-mode: arm
004fa664  d3 fd ff ea                                      b #0x4f9db8
