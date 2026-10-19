; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d477c, declared_size=76, range_size=76, mode=arm
; class-group: Structs::BootsRef
; alias: _ZN7Structs8BootsRef8finalizeEv
; demangled: Structs::BootsRef::finalize()
; decoder-mode: arm
004d477c  10 40 2d e9                                      push {r4, lr}
004d4780  00 40 a0 e1                                      mov r4, r0
004d4784  08 00 90 e5                                      ldr r0, [r0, #8]
004d4788  00 00 50 e3                                      cmp r0, #0
004d478c  03 00 00 0a                                      beq #0x4d47a0
004d4790  2a ef f8 eb                                      bl #0x310440
004d4794  00 30 a0 e3                                      mov r3, #0
004d4798  04 30 84 e5                                      str r3, [r4, #4]
004d479c  08 30 84 e5                                      str r3, [r4, #8]
004d47a0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d47a4  00 00 50 e3                                      cmp r0, #0
004d47a8  03 00 00 0a                                      beq #0x4d47bc
004d47ac  23 ef f8 eb                                      bl #0x310440
004d47b0  00 30 a0 e3                                      mov r3, #0
004d47b4  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d47b8  50 30 84 e5                                      str r3, [r4, #0x50]
004d47bc  04 00 a0 e1                                      mov r0, r4
004d47c0  10 40 bd e8                                      pop {r4, lr}
004d47c4  a0 ff ff ea                                      b #0x4d464c

; FUNCTION 0x004d4ff4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::BootsRef
; alias: _ZN7Structs8BootsRefD1Ev
; demangled: Structs::BootsRef::~BootsRef()
; decoder-mode: arm
004d4ff4  10 40 2d e9                                      push {r4, lr}
004d4ff8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4ffc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5000  00 40 a0 e1                                      mov r4, r0
004d5004  03 30 8f e0                                      add r3, pc, r3
004d5008  08 00 90 e5                                      ldr r0, [r0, #8]
004d500c  02 20 93 e7                                      ldr r2, [r3, r2]
004d5010  00 00 50 e3                                      cmp r0, #0
004d5014  08 20 82 e2                                      add r2, r2, #8
004d5018  00 20 84 e5                                      str r2, [r4]
004d501c  00 00 00 0a                                      beq #0x4d5024
004d5020  06 ed f8 eb                                      bl #0x310440
004d5024  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d5028  00 00 50 e3                                      cmp r0, #0
004d502c  00 00 00 0a                                      beq #0x4d5034
004d5030  02 ed f8 eb                                      bl #0x310440
004d5034  04 00 a0 e1                                      mov r0, r4
004d5038  3e ff ff eb                                      bl #0x4d4d38
004d503c  04 00 a0 e1                                      mov r0, r4
004d5040  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5044  8c fa 4b 00 f4 06 00 00                          .byte 0x8c, 0xfa, 0x4b, 0x00, 0xf4, 0x06, 0x00, 0x00

; FUNCTION 0x004d504c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BootsRef
; alias: _ZN7Structs8BootsRefD0Ev
; demangled: Structs::BootsRef::~BootsRef()
; decoder-mode: arm
004d504c  10 40 2d e9                                      push {r4, lr}
004d5050  00 40 a0 e1                                      mov r4, r0
004d5054  e6 ff ff eb                                      bl #0x4d4ff4
004d5058  04 00 a0 e1                                      mov r0, r4
004d505c  f7 ec f8 eb                                      bl #0x310440
004d5060  04 00 a0 e1                                      mov r0, r4
004d5064  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5068, declared_size=88, range_size=88, mode=arm
; class-group: Structs::BootsRef
; alias: _ZN7Structs8BootsRefD2Ev
; demangled: Structs::BootsRef::~BootsRef()
; decoder-mode: arm
004d5068  10 40 2d e9                                      push {r4, lr}
004d506c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d5070  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5074  00 40 a0 e1                                      mov r4, r0
004d5078  03 30 8f e0                                      add r3, pc, r3
004d507c  08 00 90 e5                                      ldr r0, [r0, #8]
004d5080  02 20 93 e7                                      ldr r2, [r3, r2]
004d5084  00 00 50 e3                                      cmp r0, #0
004d5088  08 20 82 e2                                      add r2, r2, #8
004d508c  00 20 84 e5                                      str r2, [r4]
004d5090  00 00 00 0a                                      beq #0x4d5098
004d5094  e9 ec f8 eb                                      bl #0x310440
004d5098  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d509c  00 00 50 e3                                      cmp r0, #0
004d50a0  00 00 00 0a                                      beq #0x4d50a8
004d50a4  e5 ec f8 eb                                      bl #0x310440
004d50a8  04 00 a0 e1                                      mov r0, r4
004d50ac  21 ff ff eb                                      bl #0x4d4d38
004d50b0  04 00 a0 e1                                      mov r0, r4
004d50b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d50b8  18 fa 4b 00 f4 06 00 00                          .byte 0x18, 0xfa, 0x4b, 0x00, 0xf4, 0x06, 0x00, 0x00

; FUNCTION 0x004fa66c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BootsRef
; alias: _ZN7Structs8BootsRef4readEP11IStreamBase
; demangled: Structs::BootsRef::read(IStreamBase*)
; decoder-mode: arm
004fa66c  d1 fd ff ea                                      b #0x4f9db8
