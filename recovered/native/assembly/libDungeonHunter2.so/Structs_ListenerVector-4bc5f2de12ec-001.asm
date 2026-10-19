; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7c8c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ListenerVector
; alias: _ZN7Structs14ListenerVectorD2Ev
; demangled: Structs::ListenerVector::~ListenerVector()
; decoder-mode: arm
004c7c8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c90, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ListenerVector
; alias: _ZN7Structs14ListenerVectorD1Ev
; demangled: Structs::ListenerVector::~ListenerVector()
; decoder-mode: arm
004c7c90  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c7c94, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ListenerVector
; alias: _ZN7Structs14ListenerVector8finalizeEv
; demangled: Structs::ListenerVector::finalize()
; decoder-mode: arm
004c7c94  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdcc8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ListenerVector
; alias: _ZN7Structs14ListenerVectorD0Ev
; demangled: Structs::ListenerVector::~ListenerVector()
; decoder-mode: arm
004cdcc8  10 40 2d e9                                      push {r4, lr}
004cdccc  00 40 a0 e1                                      mov r4, r0
004cdcd0  ee e7 ff eb                                      bl #0x4c7c90
004cdcd4  04 00 a0 e1                                      mov r0, r4
004cdcd8  d8 09 f9 eb                                      bl #0x310440
004cdcdc  04 00 a0 e1                                      mov r0, r4
004cdce0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dc180, declared_size=300, range_size=300, mode=arm
; class-group: Structs::ListenerVector
; alias: _ZN7Structs14ListenerVector4readEP11IStreamBase
; demangled: Structs::ListenerVector::read(IStreamBase*)
; decoder-mode: arm
004dc180  30 40 2d e9                                      push {r4, r5, lr}
004dc184  00 40 a0 e1                                      mov r4, r0
004dc188  0c d0 4d e2                                      sub sp, sp, #0xc
004dc18c  01 00 a0 e1                                      mov r0, r1
004dc190  01 50 a0 e1                                      mov r5, r1
004dc194  04 10 84 e2                                      add r1, r4, #4
004dc198  eb fd ff eb                                      bl #0x4db94c
004dc19c  01 30 a0 e3                                      mov r3, #1
004dc1a0  00 00 53 e3                                      cmp r3, #0
004dc1a4  04 30 8d e5                                      str r3, [sp, #4]
004dc1a8  0f 00 00 1a                                      bne #0x4dc1ec
004dc1ac  05 30 84 e2                                      add r3, r4, #5
004dc1b0  06 20 84 e2                                      add r2, r4, #6
004dc1b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc1b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc1bc  02 00 53 e1                                      cmp r3, r2
004dc1c0  01 10 20 e0                                      eor r1, r0, r1
004dc1c4  01 10 43 e5                                      strb r1, [r3, #-1]
004dc1c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc1cc  00 10 21 e0                                      eor r1, r1, r0
004dc1d0  01 10 c2 e5                                      strb r1, [r2, #1]
004dc1d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc1d8  01 20 42 e2                                      sub r2, r2, #1
004dc1dc  00 10 21 e0                                      eor r1, r1, r0
004dc1e0  01 10 43 e5                                      strb r1, [r3, #-1]
004dc1e4  01 30 83 e2                                      add r3, r3, #1
004dc1e8  f1 ff ff 3a                                      blo #0x4dc1b4
004dc1ec  05 00 a0 e1                                      mov r0, r5
004dc1f0  08 10 84 e2                                      add r1, r4, #8
004dc1f4  d4 fd ff eb                                      bl #0x4db94c
004dc1f8  01 30 a0 e3                                      mov r3, #1
004dc1fc  00 00 53 e3                                      cmp r3, #0
004dc200  04 30 8d e5                                      str r3, [sp, #4]
004dc204  0f 00 00 1a                                      bne #0x4dc248
004dc208  09 30 84 e2                                      add r3, r4, #9
004dc20c  0a 20 84 e2                                      add r2, r4, #0xa
004dc210  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc214  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc218  03 00 52 e1                                      cmp r2, r3
004dc21c  01 10 20 e0                                      eor r1, r0, r1
004dc220  01 10 43 e5                                      strb r1, [r3, #-1]
004dc224  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc228  00 10 21 e0                                      eor r1, r1, r0
004dc22c  01 10 c2 e5                                      strb r1, [r2, #1]
004dc230  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc234  01 20 42 e2                                      sub r2, r2, #1
004dc238  00 10 21 e0                                      eor r1, r1, r0
004dc23c  01 10 43 e5                                      strb r1, [r3, #-1]
004dc240  01 30 83 e2                                      add r3, r3, #1
004dc244  f1 ff ff 8a                                      bhi #0x4dc210
004dc248  05 00 a0 e1                                      mov r0, r5
004dc24c  0c 10 84 e2                                      add r1, r4, #0xc
004dc250  bd fd ff eb                                      bl #0x4db94c
004dc254  01 30 a0 e3                                      mov r3, #1
004dc258  00 00 53 e3                                      cmp r3, #0
004dc25c  04 30 8d e5                                      str r3, [sp, #4]
004dc260  0f 00 00 1a                                      bne #0x4dc2a4
004dc264  0e 30 84 e2                                      add r3, r4, #0xe
004dc268  0d 40 84 e2                                      add r4, r4, #0xd
004dc26c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004dc270  01 20 54 e5                                      ldrb r2, [r4, #-1]
004dc274  03 00 54 e1                                      cmp r4, r3
004dc278  02 20 21 e0                                      eor r2, r1, r2
004dc27c  01 20 44 e5                                      strb r2, [r4, #-1]
004dc280  01 10 d3 e5                                      ldrb r1, [r3, #1]
004dc284  01 20 22 e0                                      eor r2, r2, r1
004dc288  01 20 c3 e5                                      strb r2, [r3, #1]
004dc28c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004dc290  01 30 43 e2                                      sub r3, r3, #1
004dc294  01 20 22 e0                                      eor r2, r2, r1
004dc298  01 20 44 e5                                      strb r2, [r4, #-1]
004dc29c  01 40 84 e2                                      add r4, r4, #1
004dc2a0  f1 ff ff 3a                                      blo #0x4dc26c
004dc2a4  0c d0 8d e2                                      add sp, sp, #0xc
004dc2a8  30 80 bd e8                                      pop {r4, r5, pc}
