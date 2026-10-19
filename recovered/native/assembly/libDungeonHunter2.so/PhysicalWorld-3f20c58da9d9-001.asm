; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034bc30, declared_size=76, range_size=76, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorldC2Ev
; demangled: PhysicalWorld::PhysicalWorld()
; decoder-mode: arm
0034bc30  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0034bc34  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0034bc38  00 c0 a0 e3                                      mov ip, #0
0034bc3c  01 10 8f e0                                      add r1, pc, r1
0034bc40  03 30 91 e7                                      ldr r3, [r1, r3]
0034bc44  30 00 2d e9                                      push {r4, r5}
0034bc48  10 c0 80 e5                                      str ip, [r0, #0x10]
0034bc4c  08 50 83 e2                                      add r5, r3, #8
0034bc50  6c c0 83 e2                                      add ip, r3, #0x6c
0034bc54  38 40 83 e2                                      add r4, r3, #0x38
0034bc58  4c 30 83 e2                                      add r3, r3, #0x4c
0034bc5c  00 50 80 e5                                      str r5, [r0]
0034bc60  04 40 80 e5                                      str r4, [r0, #4]
0034bc64  08 30 80 e5                                      str r3, [r0, #8]
0034bc68  0c c0 80 e5                                      str ip, [r0, #0xc]
0034bc6c  30 00 bd e8                                      pop {r4, r5}
0034bc70  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034bc74  54 8e 64 00 98 2f 00 00                          .byte 0x54, 0x8e, 0x64, 0x00, 0x98, 0x2f, 0x00, 0x00

; FUNCTION 0x0034bc7c, declared_size=76, range_size=76, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorldC1Ev
; demangled: PhysicalWorld::PhysicalWorld()
; decoder-mode: arm
0034bc7c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0034bc80  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0034bc84  00 c0 a0 e3                                      mov ip, #0
0034bc88  01 10 8f e0                                      add r1, pc, r1
0034bc8c  03 30 91 e7                                      ldr r3, [r1, r3]
0034bc90  30 00 2d e9                                      push {r4, r5}
0034bc94  10 c0 80 e5                                      str ip, [r0, #0x10]
0034bc98  08 50 83 e2                                      add r5, r3, #8
0034bc9c  6c c0 83 e2                                      add ip, r3, #0x6c
0034bca0  38 40 83 e2                                      add r4, r3, #0x38
0034bca4  4c 30 83 e2                                      add r3, r3, #0x4c
0034bca8  00 50 80 e5                                      str r5, [r0]
0034bcac  04 40 80 e5                                      str r4, [r0, #4]
0034bcb0  08 30 80 e5                                      str r3, [r0, #8]
0034bcb4  0c c0 80 e5                                      str ip, [r0, #0xc]
0034bcb8  30 00 bd e8                                      pop {r4, r5}
0034bcbc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034bcc0  08 8e 64 00 98 2f 00 00                          .byte 0x08, 0x8e, 0x64, 0x00, 0x98, 0x2f, 0x00, 0x00

; FUNCTION 0x0034bcc8, declared_size=40, range_size=40, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld11destroyBodyERP6b2Body
; demangled: PhysicalWorld::destroyBody(b2Body*&)
; decoder-mode: arm
0034bcc8  10 40 2d e9                                      push {r4, lr}
0034bccc  01 40 a0 e1                                      mov r4, r1
0034bcd0  00 10 91 e5                                      ldr r1, [r1]
0034bcd4  00 00 51 e3                                      cmp r1, #0
0034bcd8  01 00 00 0a                                      beq #0x34bce4
0034bcdc  10 00 90 e5                                      ldr r0, [r0, #0x10]
0034bce0  32 70 12 eb                                      bl #0x7e7db0
0034bce4  00 30 a0 e3                                      mov r3, #0
0034bce8  00 30 84 e5                                      str r3, [r4]
0034bcec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034bcf0, declared_size=24, range_size=24, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld10createBodyEP9b2BodyDef
; demangled: PhysicalWorld::createBody(b2BodyDef*)
; decoder-mode: arm
0034bcf0  00 30 51 e2                                      subs r3, r1, #0
0034bcf4  01 00 00 0a                                      beq #0x34bd00
0034bcf8  10 00 90 e5                                      ldr r0, [r0, #0x10]
0034bcfc  7d 70 12 ea                                      b #0x7e7ef8
0034bd00  03 00 a0 e1                                      mov r0, r3
0034bd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034bd08, declared_size=104, range_size=104, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld6updateEv
; demangled: PhysicalWorld::update()
; decoder-mode: arm
0034bd08  70 40 2d e9                                      push {r4, r5, r6, lr}
0034bd0c  50 40 9f e5                                      ldr r4, [pc, #0x50]
0034bd10  00 60 a0 e1                                      mov r6, r0
0034bd14  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
0034bd18  04 40 8f e0                                      add r4, pc, r4
0034bd1c  04 00 a0 e1                                      mov r0, r4
0034bd20  63 1e ff eb                                      bl #0x3136b4
0034bd24  40 30 9f e5                                      ldr r3, [pc, #0x40]
0034bd28  05 50 8f e0                                      add r5, pc, r5
0034bd2c  03 00 95 e7                                      ldr r0, [r5, r3]
0034bd30  4d 4e ff eb                                      bl #0x31f66c
0034bd34  69 09 ff eb                                      bl #0x30e2e0
0034bd38  6f 12 01 e3                                      movw r1, #0x126f
0034bd3c  83 1a 43 e3                                      movt r1, #0x3a83
0034bd40  09 0c ff eb                                      bl #0x30ed6c
0034bd44  10 50 96 e5                                      ldr r5, [r6, #0x10]
0034bd48  00 10 a0 e1                                      mov r1, r0
0034bd4c  0a 20 a0 e3                                      mov r2, #0xa
0034bd50  05 00 a0 e1                                      mov r0, r5
0034bd54  70 73 12 eb                                      bl #0x7e8b1c
0034bd58  04 00 a0 e1                                      mov r0, r4
0034bd5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034bd60  54 1e ff ea                                      b #0x3136b8
; mapping-symbol data/literal pool
0034bd64  00 49 57 00 68 8d 64 00 f4 37 00 00              .byte 0x00, 0x49, 0x57, 0x00, 0x68, 0x8d, 0x64, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0034be0c, declared_size=352, range_size=352, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld5clearEv
; demangled: PhysicalWorld::clear()
; decoder-mode: arm
0034be0c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034be10  40 71 9f e5                                      ldr r7, [pc, #0x140]
0034be14  40 b1 9f e5                                      ldr fp, [pc, #0x140]
0034be18  10 20 90 e5                                      ldr r2, [r0, #0x10]
0034be1c  07 70 8f e0                                      add r7, pc, r7
0034be20  0b 30 97 e7                                      ldr r3, [r7, fp]
0034be24  5c d0 4d e2                                      sub sp, sp, #0x5c
0034be28  00 00 52 e3                                      cmp r2, #0
0034be2c  00 30 93 e5                                      ldr r3, [r3]
0034be30  00 a0 a0 e1                                      mov sl, r0
0034be34  54 30 8d e5                                      str r3, [sp, #0x54]
0034be38  3e 00 00 0a                                      beq #0x34bf38
0034be3c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0034be40  1c 81 9f e5                                      ldr r8, [pc, #0x11c]
0034be44  3c 50 8d e2                                      add r5, sp, #0x3c
0034be48  03 60 97 e7                                      ldr r6, [r7, r3]
0034be4c  08 80 8f e0                                      add r8, pc, r8
0034be50  24 40 8d e2                                      add r4, sp, #0x24
0034be54  06 00 a0 e1                                      mov r0, r6
0034be58  8a ae ff eb                                      bl #0x337888
0034be5c  08 20 8d e2                                      add r2, sp, #8
0034be60  05 00 a0 e1                                      mov r0, r5
0034be64  08 10 a0 e1                                      mov r1, r8
0034be68  9f 20 ff eb                                      bl #0x3140ec
0034be6c  05 10 a0 e1                                      mov r1, r5
0034be70  06 00 a0 e1                                      mov r0, r6
0034be74  03 af ff eb                                      bl #0x337a88
0034be78  05 00 a0 e1                                      mov r0, r5
0034be7c  ca 1e ff eb                                      bl #0x3139ac
0034be80  06 00 a0 e1                                      mov r0, r6
0034be84  7f ae ff eb                                      bl #0x337888
0034be88  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0034be8c  04 20 8d e2                                      add r2, sp, #4
0034be90  04 00 a0 e1                                      mov r0, r4
0034be94  01 10 8f e0                                      add r1, pc, r1
0034be98  93 20 ff eb                                      bl #0x3140ec
0034be9c  04 10 a0 e1                                      mov r1, r4
0034bea0  06 00 a0 e1                                      mov r0, r6
0034bea4  f7 ae ff eb                                      bl #0x337a88
0034bea8  00 50 a0 e1                                      mov r5, r0
0034beac  04 00 a0 e1                                      mov r0, r4
0034beb0  bd 1e ff eb                                      bl #0x3139ac
0034beb4  00 00 55 e3                                      cmp r5, #0
0034beb8  15 00 00 0a                                      beq #0x34bf14
0034bebc  10 50 9a e5                                      ldr r5, [sl, #0x10]
0034bec0  19 3a a0 e3                                      mov r3, #0x19000
0034bec4  23 3e 83 e2                                      add r3, r3, #0x230
0034bec8  03 40 95 e7                                      ldr r4, [r5, r3]
0034becc  00 00 54 e3                                      cmp r4, #0
0034bed0  10 00 00 0a                                      beq #0x34bf18
0034bed4  0c 50 8d e2                                      add r5, sp, #0xc
0034bed8  0d 90 a0 e1                                      mov sb, sp
0034bedc  06 00 a0 e1                                      mov r0, r6
0034bee0  68 ae ff eb                                      bl #0x337888
0034bee4  0d 20 a0 e1                                      mov r2, sp
0034bee8  08 10 a0 e1                                      mov r1, r8
0034beec  05 00 a0 e1                                      mov r0, r5
0034bef0  7d 20 ff eb                                      bl #0x3140ec
0034bef4  05 10 a0 e1                                      mov r1, r5
0034bef8  06 00 a0 e1                                      mov r0, r6
0034befc  e1 ae ff eb                                      bl #0x337a88
0034bf00  05 00 a0 e1                                      mov r0, r5
0034bf04  a8 1e ff eb                                      bl #0x3139ac
0034bf08  60 40 94 e5                                      ldr r4, [r4, #0x60]
0034bf0c  00 00 54 e3                                      cmp r4, #0
0034bf10  f1 ff ff 1a                                      bne #0x34bedc
0034bf14  10 50 9a e5                                      ldr r5, [sl, #0x10]
0034bf18  00 00 55 e3                                      cmp r5, #0
0034bf1c  05 00 00 0a                                      beq #0x34bf38
0034bf20  05 00 a0 e1                                      mov r0, r5
0034bf24  14 70 12 eb                                      bl #0x7e7f7c
0034bf28  05 00 a0 e1                                      mov r0, r5
0034bf2c  43 11 ff eb                                      bl #0x310440
0034bf30  00 30 a0 e3                                      mov r3, #0
0034bf34  10 30 8a e5                                      str r3, [sl, #0x10]
0034bf38  0b 30 97 e7                                      ldr r3, [r7, fp]
0034bf3c  54 20 9d e5                                      ldr r2, [sp, #0x54]
0034bf40  00 30 93 e5                                      ldr r3, [r3]
0034bf44  03 00 52 e1                                      cmp r2, r3
0034bf48  01 00 00 1a                                      bne #0x34bf54
0034bf4c  5c d0 8d e2                                      add sp, sp, #0x5c
0034bf50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034bf54  ed 08 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034bf58  74 8c 64 00 ac 40 00 00 84 08 00 00 e4 47 57 00  .byte 0x74, 0x8c, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe4, 0x47, 0x57, 0x00
0034bf68  b4 47 57 00                                      .byte 0xb4, 0x47, 0x57, 0x00

; FUNCTION 0x0034bf6c, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn12_N13PhysicalWorldD1Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bf6c  0c 00 40 e2                                      sub r0, r0, #0xc
0034bf70  03 00 00 ea                                      b #0x34bf84

; FUNCTION 0x0034bf74, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorldD1Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bf74  08 00 40 e2                                      sub r0, r0, #8
0034bf78  01 00 00 ea                                      b #0x34bf84

; FUNCTION 0x0034bf7c, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn4_N13PhysicalWorldD1Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bf7c  04 00 40 e2                                      sub r0, r0, #4
0034bf80  ff ff ff ea                                      b #0x34bf84

; FUNCTION 0x0034bf84, declared_size=72, range_size=72, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorldD1Ev
; demangled: PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bf84  38 20 9f e5                                      ldr r2, [pc, #0x38]
0034bf88  38 30 9f e5                                      ldr r3, [pc, #0x38]
0034bf8c  10 40 2d e9                                      push {r4, lr}
0034bf90  02 20 8f e0                                      add r2, pc, r2
0034bf94  03 30 92 e7                                      ldr r3, [r2, r3]
0034bf98  00 40 a0 e1                                      mov r4, r0
0034bf9c  6c 20 83 e2                                      add r2, r3, #0x6c
0034bfa0  08 c0 83 e2                                      add ip, r3, #8
0034bfa4  38 10 83 e2                                      add r1, r3, #0x38
0034bfa8  4c 30 83 e2                                      add r3, r3, #0x4c
0034bfac  00 c0 80 e5                                      str ip, [r0]
0034bfb0  0a 00 80 e9                                      stmib r0, {r1, r3}
0034bfb4  0c 20 80 e5                                      str r2, [r0, #0xc]
0034bfb8  93 ff ff eb                                      bl #0x34be0c
0034bfbc  04 00 a0 e1                                      mov r0, r4
0034bfc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034bfc4  00 8b 64 00 98 2f 00 00                          .byte 0x00, 0x8b, 0x64, 0x00, 0x98, 0x2f, 0x00, 0x00

; FUNCTION 0x0034bfcc, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn12_N13PhysicalWorldD0Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bfcc  0c 00 40 e2                                      sub r0, r0, #0xc
0034bfd0  03 00 00 ea                                      b #0x34bfe4

; FUNCTION 0x0034bfd4, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorldD0Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bfd4  08 00 40 e2                                      sub r0, r0, #8
0034bfd8  01 00 00 ea                                      b #0x34bfe4

; FUNCTION 0x0034bfdc, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn4_N13PhysicalWorldD0Ev
; demangled: non-virtual thunk to PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bfdc  04 00 40 e2                                      sub r0, r0, #4
0034bfe0  ff ff ff ea                                      b #0x34bfe4

; FUNCTION 0x0034bfe4, declared_size=28, range_size=28, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorldD0Ev
; demangled: PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034bfe4  10 40 2d e9                                      push {r4, lr}
0034bfe8  00 40 a0 e1                                      mov r4, r0
0034bfec  e4 ff ff eb                                      bl #0x34bf84
0034bff0  04 00 a0 e1                                      mov r0, r4
0034bff4  11 11 ff eb                                      bl #0x310440
0034bff8  04 00 a0 e1                                      mov r0, r4
0034bffc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0034c000, declared_size=72, range_size=72, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorldD2Ev
; demangled: PhysicalWorld::~PhysicalWorld()
; decoder-mode: arm
0034c000  38 20 9f e5                                      ldr r2, [pc, #0x38]
0034c004  38 30 9f e5                                      ldr r3, [pc, #0x38]
0034c008  10 40 2d e9                                      push {r4, lr}
0034c00c  02 20 8f e0                                      add r2, pc, r2
0034c010  03 30 92 e7                                      ldr r3, [r2, r3]
0034c014  00 40 a0 e1                                      mov r4, r0
0034c018  6c 20 83 e2                                      add r2, r3, #0x6c
0034c01c  08 c0 83 e2                                      add ip, r3, #8
0034c020  38 10 83 e2                                      add r1, r3, #0x38
0034c024  4c 30 83 e2                                      add r3, r3, #0x4c
0034c028  00 c0 80 e5                                      str ip, [r0]
0034c02c  0a 00 80 e9                                      stmib r0, {r1, r3}
0034c030  0c 20 80 e5                                      str r2, [r0, #0xc]
0034c034  74 ff ff eb                                      bl #0x34be0c
0034c038  04 00 a0 e1                                      mov r0, r4
0034c03c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0034c040  84 8a 64 00 98 2f 00 00                          .byte 0x84, 0x8a, 0x64, 0x00, 0x98, 0x2f, 0x00, 0x00

; FUNCTION 0x0034c048, declared_size=276, range_size=276, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld4loadEffff
; demangled: PhysicalWorld::load(float, float, float, float)
; decoder-mode: arm
0034c048  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0034c04c  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0034c050  03 90 a0 e1                                      mov sb, r3
0034c054  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0034c058  05 50 8f e0                                      add r5, pc, r5
0034c05c  38 d0 4d e2                                      sub sp, sp, #0x38
0034c060  03 60 95 e7                                      ldr r6, [r5, r3]
0034c064  00 40 a0 e1                                      mov r4, r0
0034c068  01 a0 a0 e1                                      mov sl, r1
0034c06c  00 30 96 e5                                      ldr r3, [r6]
0034c070  02 80 a0 e1                                      mov r8, r2
0034c074  1c 70 8d e2                                      add r7, sp, #0x1c
0034c078  34 30 8d e5                                      str r3, [sp, #0x34]
0034c07c  62 ff ff eb                                      bl #0x34be0c
0034c080  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0034c084  03 50 95 e7                                      ldr r5, [r5, r3]
0034c088  05 00 a0 e1                                      mov r0, r5
0034c08c  fd ad ff eb                                      bl #0x337888
0034c090  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0034c094  18 20 8d e2                                      add r2, sp, #0x18
0034c098  07 00 a0 e1                                      mov r0, r7
0034c09c  01 10 8f e0                                      add r1, pc, r1
0034c0a0  11 20 ff eb                                      bl #0x3140ec
0034c0a4  07 10 a0 e1                                      mov r1, r7
0034c0a8  05 00 a0 e1                                      mov r0, r5
0034c0ac  75 ae ff eb                                      bl #0x337a88
0034c0b0  07 00 a0 e1                                      mov r0, r7
0034c0b4  3c 1e ff eb                                      bl #0x3139ac
0034c0b8  58 20 9d e5                                      ldr r2, [sp, #0x58]
0034c0bc  19 0a a0 e3                                      mov r0, #0x19000
0034c0c0  00 30 a0 e3                                      mov r3, #0
0034c0c4  00 10 a0 e3                                      mov r1, #0
0034c0c8  9e 0f 80 e2                                      add r0, r0, #0x278
0034c0cc  0c 20 8d e5                                      str r2, [sp, #0xc]
0034c0d0  14 30 8d e5                                      str r3, [sp, #0x14]
0034c0d4  10 30 8d e5                                      str r3, [sp, #0x10]
0034c0d8  00 a0 8d e5                                      str sl, [sp]
0034c0dc  04 80 8d e5                                      str r8, [sp, #4]
0034c0e0  08 90 8d e5                                      str sb, [sp, #8]
0034c0e4  21 11 ff eb                                      bl #0x310570
0034c0e8  10 20 8d e2                                      add r2, sp, #0x10
0034c0ec  01 30 a0 e3                                      mov r3, #1
0034c0f0  00 50 a0 e1                                      mov r5, r0
0034c0f4  0d 10 a0 e1                                      mov r1, sp
0034c0f8  ee 6f 12 eb                                      bl #0x7e80b8
0034c0fc  05 00 a0 e1                                      mov r0, r5
0034c100  04 10 a0 e1                                      mov r1, r4
0034c104  10 50 84 e5                                      str r5, [r4, #0x10]
0034c108  35 69 12 eb                                      bl #0x7e65e4
0034c10c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034c110  04 10 84 e2                                      add r1, r4, #4
0034c114  36 69 12 eb                                      bl #0x7e65f4
0034c118  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034c11c  08 10 84 e2                                      add r1, r4, #8
0034c120  37 69 12 eb                                      bl #0x7e6604
0034c124  0c 10 84 e2                                      add r1, r4, #0xc
0034c128  10 00 94 e5                                      ldr r0, [r4, #0x10]
0034c12c  28 69 12 eb                                      bl #0x7e65d4
0034c130  34 20 9d e5                                      ldr r2, [sp, #0x34]
0034c134  00 30 96 e5                                      ldr r3, [r6]
0034c138  03 00 52 e1                                      cmp r2, r3
0034c13c  01 00 00 1a                                      bne #0x34c148
0034c140  38 d0 8d e2                                      add sp, sp, #0x38
0034c144  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0034c148  70 08 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c14c  38 8a 64 00 ac 40 00 00 84 08 00 00 94 45 57 00  .byte 0x38, 0x8a, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x94, 0x45, 0x57, 0x00

; FUNCTION 0x0034c1e4, declared_size=224, range_size=224, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld19_IsShape1InstigatorEPK14b2ContactPointP18PhysicalBaseObjectS4_
; demangled: PhysicalWorld::_IsShape1Instigator(b2ContactPoint const*, PhysicalBaseObject*, PhysicalBaseObject*)
; decoder-mode: arm
0034c1e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034c1e8  00 30 91 e5                                      ldr r3, [r1]
0034c1ec  00 40 a0 e3                                      mov r4, #0
0034c1f0  08 d0 4d e2                                      sub sp, sp, #8
0034c1f4  0c 60 93 e5                                      ldr r6, [r3, #0xc]
0034c1f8  01 50 a0 e1                                      mov r5, r1
0034c1fc  04 10 a0 e1                                      mov r1, r4
0034c200  74 00 96 e5                                      ldr r0, [r6, #0x74]
0034c204  02 70 a0 e1                                      mov r7, r2
0034c208  3a 08 ff eb                                      bl #0x30e2f8
0034c20c  00 00 50 e3                                      cmp r0, #0
0034c210  20 00 00 0a                                      beq #0x34c298
0034c214  04 10 96 e5                                      ldr r1, [r6, #4]
0034c218  08 00 95 e5                                      ldr r0, [r5, #8]
0034c21c  62 08 ff eb                                      bl #0x30e3ac
0034c220  08 10 96 e5                                      ldr r1, [r6, #8]
0034c224  00 80 a0 e1                                      mov r8, r0
0034c228  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0034c22c  5e 08 ff eb                                      bl #0x30e3ac
0034c230  00 40 8d e5                                      str r4, [sp]
0034c234  04 40 8d e5                                      str r4, [sp, #4]
0034c238  00 30 97 e5                                      ldr r3, [r7]
0034c23c  00 60 a0 e1                                      mov r6, r0
0034c240  0d 10 a0 e1                                      mov r1, sp
0034c244  07 00 a0 e1                                      mov r0, r7
0034c248  0f e0 a0 e1                                      mov lr, pc
0034c24c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0034c250  00 10 9d e5                                      ldr r1, [sp]
0034c254  08 00 a0 e1                                      mov r0, r8
0034c258  c3 0a ff eb                                      bl #0x30ed6c
0034c25c  04 10 9d e5                                      ldr r1, [sp, #4]
0034c260  00 50 a0 e1                                      mov r5, r0
0034c264  06 00 a0 e1                                      mov r0, r6
0034c268  bf 0a ff eb                                      bl #0x30ed6c
0034c26c  00 10 a0 e1                                      mov r1, r0
0034c270  05 00 a0 e1                                      mov r0, r5
0034c274  4a 0a ff eb                                      bl #0x30eba4
0034c278  04 10 a0 e1                                      mov r1, r4
0034c27c  1d 08 ff eb                                      bl #0x30e2f8
0034c280  00 00 50 e3                                      cmp r0, #0
0034c284  00 00 a0 e3                                      mov r0, #0
0034c288  01 00 a0 13                                      movne r0, #1
0034c28c  70 00 ef e6                                      uxtb r0, r0
0034c290  08 d0 8d e2                                      add sp, sp, #8
0034c294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034c298  04 30 95 e5                                      ldr r3, [r5, #4]
0034c29c  04 10 a0 e1                                      mov r1, r4
0034c2a0  00 40 a0 e3                                      mov r4, #0
0034c2a4  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0034c2a8  74 00 93 e5                                      ldr r0, [r3, #0x74]
0034c2ac  11 08 ff eb                                      bl #0x30e2f8
0034c2b0  00 00 50 e3                                      cmp r0, #0
0034c2b4  01 40 a0 13                                      movne r4, #1
0034c2b8  01 40 24 e2                                      eor r4, r4, #1
0034c2bc  74 00 ef e6                                      uxtb r0, r4
0034c2c0  f2 ff ff ea                                      b #0x34c290

; FUNCTION 0x0034c2c4, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn12_N13PhysicalWorld10SayGoodbyeEP7b2Joint
; demangled: non-virtual thunk to PhysicalWorld::SayGoodbye(b2Joint*)
; decoder-mode: arm
0034c2c4  0c 00 40 e2                                      sub r0, r0, #0xc
0034c2c8  ff ff ff ea                                      b #0x34c2cc

; FUNCTION 0x0034c2cc, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld10SayGoodbyeEP7b2Joint
; demangled: PhysicalWorld::SayGoodbye(b2Joint*)
; decoder-mode: arm
0034c2cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034c2d0, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn12_N13PhysicalWorld10SayGoodbyeEP7b2Shape
; demangled: non-virtual thunk to PhysicalWorld::SayGoodbye(b2Shape*)
; decoder-mode: arm
0034c2d0  0c 00 40 e2                                      sub r0, r0, #0xc
0034c2d4  ff ff ff ea                                      b #0x34c2d8

; FUNCTION 0x0034c2d8, declared_size=4, range_size=4, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld10SayGoodbyeEP7b2Shape
; demangled: PhysicalWorld::SayGoodbye(b2Shape*)
; decoder-mode: arm
0034c2d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034c2fc, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn4_N13PhysicalWorld13ShouldCollideEP7b2ShapeS1_
; demangled: non-virtual thunk to PhysicalWorld::ShouldCollide(b2Shape*, b2Shape*)
; decoder-mode: arm
0034c2fc  04 00 40 e2                                      sub r0, r0, #4
0034c300  ff ff ff ea                                      b #0x34c304

; FUNCTION 0x0034c304, declared_size=188, range_size=188, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld13ShouldCollideEP7b2ShapeS1_
; demangled: PhysicalWorld::ShouldCollide(b2Shape*, b2Shape*)
; decoder-mode: arm
0034c304  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034c308  2c 60 91 e5                                      ldr r6, [r1, #0x2c]
0034c30c  2c 70 92 e5                                      ldr r7, [r2, #0x2c]
0034c310  14 d0 4d e2                                      sub sp, sp, #0x14
0034c314  01 40 a0 e1                                      mov r4, r1
0034c318  00 00 57 e3                                      cmp r7, #0
0034c31c  00 00 56 13                                      cmpne r6, #0
0034c320  02 50 a0 e1                                      mov r5, r2
0034c324  21 00 00 0a                                      beq #0x34c3b0
0034c328  f6 22 d1 e1                                      ldrsh r2, [r1, #0x26]
0034c32c  b2 32 d1 e1                                      ldrh r3, [r1, #0x22]
0034c330  b4 82 d1 e1                                      ldrh r8, [r1, #0x24]
0034c334  f6 e2 d5 e1                                      ldrsh lr, [r5, #0x26]
0034c338  b2 02 d5 e1                                      ldrh r0, [r5, #0x22]
0034c33c  b4 12 d5 e1                                      ldrh r1, [r5, #0x24]
0034c340  00 c0 96 e5                                      ldr ip, [r6]
0034c344  00 41 8d e8                                      stm sp, {r8, lr}
0034c348  08 00 8d e5                                      str r0, [sp, #8]
0034c34c  0c 10 8d e5                                      str r1, [sp, #0xc]
0034c350  06 00 a0 e1                                      mov r0, r6
0034c354  07 10 a0 e1                                      mov r1, r7
0034c358  0f e0 a0 e1                                      mov lr, pc
0034c35c  08 f0 9c e5                                      ldr pc, [ip, #8]
0034c360  b4 e2 d5 e1                                      ldrh lr, [r5, #0x24]
0034c364  b4 82 d4 e1                                      ldrh r8, [r4, #0x24]
0034c368  f6 22 d5 e1                                      ldrsh r2, [r5, #0x26]
0034c36c  b2 32 d5 e1                                      ldrh r3, [r5, #0x22]
0034c370  f6 52 d4 e1                                      ldrsh r5, [r4, #0x26]
0034c374  b2 42 d4 e1                                      ldrh r4, [r4, #0x22]
0034c378  00 c0 97 e5                                      ldr ip, [r7]
0034c37c  00 a0 a0 e1                                      mov sl, r0
0034c380  06 10 a0 e1                                      mov r1, r6
0034c384  07 00 a0 e1                                      mov r0, r7
0034c388  00 e0 8d e5                                      str lr, [sp]
0034c38c  04 50 8d e5                                      str r5, [sp, #4]
0034c390  08 40 8d e5                                      str r4, [sp, #8]
0034c394  0c 80 8d e5                                      str r8, [sp, #0xc]
0034c398  0f e0 a0 e1                                      mov lr, pc
0034c39c  08 f0 9c e5                                      ldr pc, [ip, #8]
0034c3a0  00 00 5a e3                                      cmp sl, #0
0034c3a4  00 00 a0 03                                      moveq r0, #0
0034c3a8  14 d0 8d e2                                      add sp, sp, #0x14
0034c3ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034c3b0  04 00 80 e2                                      add r0, r0, #4
0034c3b4  14 d0 8d e2                                      add sp, sp, #0x14
0034c3b8  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0034c3bc  21 72 12 ea                                      b #0x7e8c48

; FUNCTION 0x0034c410, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorld6RemoveEPK14b2ContactPoint
; demangled: non-virtual thunk to PhysicalWorld::Remove(b2ContactPoint const*)
; decoder-mode: arm
0034c410  08 00 40 e2                                      sub r0, r0, #8
0034c414  ff ff ff ea                                      b #0x34c418

; FUNCTION 0x0034c418, declared_size=296, range_size=296, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld6RemoveEPK14b2ContactPoint
; demangled: PhysicalWorld::Remove(b2ContactPoint const*)
; decoder-mode: arm
0034c418  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034c41c  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0034c420  0c 81 9f e5                                      ldr r8, [pc, #0x10c]
0034c424  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0034c428  04 40 8f e0                                      add r4, pc, r4
0034c42c  08 30 94 e7                                      ldr r3, [r4, r8]
0034c430  02 70 94 e7                                      ldr r7, [r4, r2]
0034c434  34 d0 4d e2                                      sub sp, sp, #0x34
0034c438  00 30 93 e5                                      ldr r3, [r3]
0034c43c  00 a0 a0 e1                                      mov sl, r0
0034c440  07 00 a0 e1                                      mov r0, r7
0034c444  2c 30 8d e5                                      str r3, [sp, #0x2c]
0034c448  01 50 a0 e1                                      mov r5, r1
0034c44c  0d ad ff eb                                      bl #0x337888
0034c450  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0034c454  14 60 8d e2                                      add r6, sp, #0x14
0034c458  06 00 a0 e1                                      mov r0, r6
0034c45c  01 10 8f e0                                      add r1, pc, r1
0034c460  16 10 81 e2                                      add r1, r1, #0x16
0034c464  24 60 8d e5                                      str r6, [sp, #0x24]
0034c468  28 60 8d e5                                      str r6, [sp, #0x28]
0034c46c  d3 ff ff eb                                      bl #0x34c3c0
0034c470  06 10 a0 e1                                      mov r1, r6
0034c474  07 00 a0 e1                                      mov r0, r7
0034c478  82 ad ff eb                                      bl #0x337a88
0034c47c  06 00 a0 e1                                      mov r0, r6
0034c480  49 1d ff eb                                      bl #0x3139ac
0034c484  0c 00 95 e8                                      ldm r5, {r2, r3}
0034c488  2c 70 92 e5                                      ldr r7, [r2, #0x2c]
0034c48c  2c 60 93 e5                                      ldr r6, [r3, #0x2c]
0034c490  00 00 56 e3                                      cmp r6, #0
0034c494  00 00 57 13                                      cmpne r7, #0
0034c498  1c 00 00 0a                                      beq #0x34c510
0034c49c  0a 00 a0 e1                                      mov r0, sl
0034c4a0  05 10 a0 e1                                      mov r1, r5
0034c4a4  07 20 a0 e1                                      mov r2, r7
0034c4a8  06 30 a0 e1                                      mov r3, r6
0034c4ac  4c ff ff eb                                      bl #0x34c1e4
0034c4b0  00 10 97 e5                                      ldr r1, [r7]
0034c4b4  08 20 95 e5                                      ldr r2, [r5, #8]
0034c4b8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0034c4bc  00 a0 a0 e1                                      mov sl, r0
0034c4c0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0034c4c4  07 00 a0 e1                                      mov r0, r7
0034c4c8  0c 20 8d e5                                      str r2, [sp, #0xc]
0034c4cc  10 30 8d e5                                      str r3, [sp, #0x10]
0034c4d0  06 10 a0 e1                                      mov r1, r6
0034c4d4  0c 20 8d e2                                      add r2, sp, #0xc
0034c4d8  0a 30 a0 e1                                      mov r3, sl
0034c4dc  3c ff 2f e1                                      blx ip
0034c4e0  00 00 96 e5                                      ldr r0, [r6]
0034c4e4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0034c4e8  08 10 95 e5                                      ldr r1, [r5, #8]
0034c4ec  01 30 2a e2                                      eor r3, sl, #1
0034c4f0  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0034c4f4  73 30 ef e6                                      uxtb r3, r3
0034c4f8  04 10 8d e5                                      str r1, [sp, #4]
0034c4fc  08 20 8d e5                                      str r2, [sp, #8]
0034c500  06 00 a0 e1                                      mov r0, r6
0034c504  07 10 a0 e1                                      mov r1, r7
0034c508  04 20 8d e2                                      add r2, sp, #4
0034c50c  3c ff 2f e1                                      blx ip
0034c510  08 30 94 e7                                      ldr r3, [r4, r8]
0034c514  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0034c518  00 30 93 e5                                      ldr r3, [r3]
0034c51c  03 00 52 e1                                      cmp r2, r3
0034c520  01 00 00 1a                                      bne #0x34c52c
0034c524  34 d0 8d e2                                      add sp, sp, #0x34
0034c528  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034c52c  77 07 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c530  68 86 64 00 ac 40 00 00 84 08 00 00 d4 41 57 00  .byte 0x68, 0x86, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd4, 0x41, 0x57, 0x00

; FUNCTION 0x0034c540, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorld6ResultEPK15b2ContactResult
; demangled: non-virtual thunk to PhysicalWorld::Result(b2ContactResult const*)
; decoder-mode: arm
0034c540  08 00 40 e2                                      sub r0, r0, #8
0034c544  ff ff ff ea                                      b #0x34c548

; FUNCTION 0x0034c548, declared_size=228, range_size=228, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld6ResultEPK15b2ContactResult
; demangled: PhysicalWorld::Result(b2ContactResult const*)
; decoder-mode: arm
0034c548  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0034c54c  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
0034c550  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
0034c554  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
0034c558  04 40 8f e0                                      add r4, pc, r4
0034c55c  07 30 94 e7                                      ldr r3, [r4, r7]
0034c560  02 80 94 e7                                      ldr r8, [r4, r2]
0034c564  20 d0 4d e2                                      sub sp, sp, #0x20
0034c568  00 30 93 e5                                      ldr r3, [r3]
0034c56c  08 00 a0 e1                                      mov r0, r8
0034c570  01 60 a0 e1                                      mov r6, r1
0034c574  1c 30 8d e5                                      str r3, [sp, #0x1c]
0034c578  c2 ac ff eb                                      bl #0x337888
0034c57c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0034c580  04 50 8d e2                                      add r5, sp, #4
0034c584  05 00 a0 e1                                      mov r0, r5
0034c588  01 10 8f e0                                      add r1, pc, r1
0034c58c  16 10 81 e2                                      add r1, r1, #0x16
0034c590  14 50 8d e5                                      str r5, [sp, #0x14]
0034c594  18 50 8d e5                                      str r5, [sp, #0x18]
0034c598  88 ff ff eb                                      bl #0x34c3c0
0034c59c  05 10 a0 e1                                      mov r1, r5
0034c5a0  08 00 a0 e1                                      mov r0, r8
0034c5a4  37 ad ff eb                                      bl #0x337a88
0034c5a8  05 00 a0 e1                                      mov r0, r5
0034c5ac  fe 1c ff eb                                      bl #0x3139ac
0034c5b0  04 20 96 e5                                      ldr r2, [r6, #4]
0034c5b4  00 30 96 e5                                      ldr r3, [r6]
0034c5b8  2c 50 92 e5                                      ldr r5, [r2, #0x2c]
0034c5bc  2c 60 93 e5                                      ldr r6, [r3, #0x2c]
0034c5c0  00 00 55 e3                                      cmp r5, #0
0034c5c4  00 00 56 13                                      cmpne r6, #0
0034c5c8  0b 00 00 0a                                      beq #0x34c5fc
0034c5cc  06 00 a0 e1                                      mov r0, r6
0034c5d0  05 10 a0 e1                                      mov r1, r5
0034c5d4  01 20 a0 e3                                      mov r2, #1
0034c5d8  00 30 96 e5                                      ldr r3, [r6]
0034c5dc  0f e0 a0 e1                                      mov lr, pc
0034c5e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0034c5e4  05 00 a0 e1                                      mov r0, r5
0034c5e8  06 10 a0 e1                                      mov r1, r6
0034c5ec  00 30 95 e5                                      ldr r3, [r5]
0034c5f0  00 20 a0 e3                                      mov r2, #0
0034c5f4  0f e0 a0 e1                                      mov lr, pc
0034c5f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0034c5fc  07 30 94 e7                                      ldr r3, [r4, r7]
0034c600  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0034c604  00 30 93 e5                                      ldr r3, [r3]
0034c608  03 00 52 e1                                      cmp r2, r3
0034c60c  01 00 00 1a                                      bne #0x34c618
0034c610  20 d0 8d e2                                      add sp, sp, #0x20
0034c614  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034c618  3c 07 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c61c  38 85 64 00 ac 40 00 00 84 08 00 00 a8 40 57 00  .byte 0x38, 0x85, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa8, 0x40, 0x57, 0x00

; FUNCTION 0x0034c62c, declared_size=144, range_size=144, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld9ViolationEP6b2Body
; demangled: PhysicalWorld::Violation(b2Body*)
; decoder-mode: arm
0034c62c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0034c630  78 20 9f e5                                      ldr r2, [pc, #0x78]
0034c634  70 40 2d e9                                      push {r4, r5, r6, lr}
0034c638  03 30 8f e0                                      add r3, pc, r3
0034c63c  02 50 93 e7                                      ldr r5, [r3, r2]
0034c640  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0034c644  20 d0 4d e2                                      sub sp, sp, #0x20
0034c648  04 40 8d e2                                      add r4, sp, #4
0034c64c  02 60 93 e7                                      ldr r6, [r3, r2]
0034c650  00 30 95 e5                                      ldr r3, [r5]
0034c654  06 00 a0 e1                                      mov r0, r6
0034c658  1c 30 8d e5                                      str r3, [sp, #0x1c]
0034c65c  89 ac ff eb                                      bl #0x337888
0034c660  50 10 9f e5                                      ldr r1, [pc, #0x50]
0034c664  04 00 a0 e1                                      mov r0, r4
0034c668  14 40 8d e5                                      str r4, [sp, #0x14]
0034c66c  01 10 8f e0                                      add r1, pc, r1
0034c670  16 10 81 e2                                      add r1, r1, #0x16
0034c674  18 40 8d e5                                      str r4, [sp, #0x18]
0034c678  50 ff ff eb                                      bl #0x34c3c0
0034c67c  04 10 a0 e1                                      mov r1, r4
0034c680  06 00 a0 e1                                      mov r0, r6
0034c684  ff ac ff eb                                      bl #0x337a88
0034c688  04 00 a0 e1                                      mov r0, r4
0034c68c  c6 1c ff eb                                      bl #0x3139ac
0034c690  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0034c694  00 30 95 e5                                      ldr r3, [r5]
0034c698  03 00 52 e1                                      cmp r2, r3
0034c69c  01 00 00 1a                                      bne #0x34c6a8
0034c6a0  20 d0 8d e2                                      add sp, sp, #0x20
0034c6a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0034c6a8  18 07 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c6ac  58 84 64 00 ac 40 00 00 84 08 00 00 c4 3f 57 00  .byte 0x58, 0x84, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x3f, 0x57, 0x00

; FUNCTION 0x0034c6bc, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorld3AddEPK14b2ContactPoint
; demangled: non-virtual thunk to PhysicalWorld::Add(b2ContactPoint const*)
; decoder-mode: arm
0034c6bc  08 00 40 e2                                      sub r0, r0, #8
0034c6c0  ff ff ff ea                                      b #0x34c6c4

; FUNCTION 0x0034c6c4, declared_size=296, range_size=296, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld3AddEPK14b2ContactPoint
; demangled: PhysicalWorld::Add(b2ContactPoint const*)
; decoder-mode: arm
0034c6c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034c6c8  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0034c6cc  0c 81 9f e5                                      ldr r8, [pc, #0x10c]
0034c6d0  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0034c6d4  04 40 8f e0                                      add r4, pc, r4
0034c6d8  08 30 94 e7                                      ldr r3, [r4, r8]
0034c6dc  02 70 94 e7                                      ldr r7, [r4, r2]
0034c6e0  34 d0 4d e2                                      sub sp, sp, #0x34
0034c6e4  00 30 93 e5                                      ldr r3, [r3]
0034c6e8  00 a0 a0 e1                                      mov sl, r0
0034c6ec  07 00 a0 e1                                      mov r0, r7
0034c6f0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0034c6f4  01 50 a0 e1                                      mov r5, r1
0034c6f8  62 ac ff eb                                      bl #0x337888
0034c6fc  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0034c700  14 60 8d e2                                      add r6, sp, #0x14
0034c704  06 00 a0 e1                                      mov r0, r6
0034c708  01 10 8f e0                                      add r1, pc, r1
0034c70c  16 10 81 e2                                      add r1, r1, #0x16
0034c710  24 60 8d e5                                      str r6, [sp, #0x24]
0034c714  28 60 8d e5                                      str r6, [sp, #0x28]
0034c718  28 ff ff eb                                      bl #0x34c3c0
0034c71c  06 10 a0 e1                                      mov r1, r6
0034c720  07 00 a0 e1                                      mov r0, r7
0034c724  d7 ac ff eb                                      bl #0x337a88
0034c728  06 00 a0 e1                                      mov r0, r6
0034c72c  9e 1c ff eb                                      bl #0x3139ac
0034c730  0c 00 95 e8                                      ldm r5, {r2, r3}
0034c734  2c 70 92 e5                                      ldr r7, [r2, #0x2c]
0034c738  2c 60 93 e5                                      ldr r6, [r3, #0x2c]
0034c73c  00 00 56 e3                                      cmp r6, #0
0034c740  00 00 57 13                                      cmpne r7, #0
0034c744  1c 00 00 0a                                      beq #0x34c7bc
0034c748  0a 00 a0 e1                                      mov r0, sl
0034c74c  05 10 a0 e1                                      mov r1, r5
0034c750  07 20 a0 e1                                      mov r2, r7
0034c754  06 30 a0 e1                                      mov r3, r6
0034c758  a1 fe ff eb                                      bl #0x34c1e4
0034c75c  00 10 97 e5                                      ldr r1, [r7]
0034c760  08 20 95 e5                                      ldr r2, [r5, #8]
0034c764  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0034c768  00 a0 a0 e1                                      mov sl, r0
0034c76c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0034c770  07 00 a0 e1                                      mov r0, r7
0034c774  0c 20 8d e5                                      str r2, [sp, #0xc]
0034c778  10 30 8d e5                                      str r3, [sp, #0x10]
0034c77c  06 10 a0 e1                                      mov r1, r6
0034c780  0c 20 8d e2                                      add r2, sp, #0xc
0034c784  0a 30 a0 e1                                      mov r3, sl
0034c788  3c ff 2f e1                                      blx ip
0034c78c  00 00 96 e5                                      ldr r0, [r6]
0034c790  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0034c794  08 10 95 e5                                      ldr r1, [r5, #8]
0034c798  01 30 2a e2                                      eor r3, sl, #1
0034c79c  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0034c7a0  73 30 ef e6                                      uxtb r3, r3
0034c7a4  04 10 8d e5                                      str r1, [sp, #4]
0034c7a8  08 20 8d e5                                      str r2, [sp, #8]
0034c7ac  06 00 a0 e1                                      mov r0, r6
0034c7b0  07 10 a0 e1                                      mov r1, r7
0034c7b4  04 20 8d e2                                      add r2, sp, #4
0034c7b8  3c ff 2f e1                                      blx ip
0034c7bc  08 30 94 e7                                      ldr r3, [r4, r8]
0034c7c0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0034c7c4  00 30 93 e5                                      ldr r3, [r3]
0034c7c8  03 00 52 e1                                      cmp r2, r3
0034c7cc  01 00 00 1a                                      bne #0x34c7d8
0034c7d0  34 d0 8d e2                                      add sp, sp, #0x34
0034c7d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034c7d8  cc 06 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c7dc  bc 83 64 00 ac 40 00 00 84 08 00 00 28 3f 57 00  .byte 0xbc, 0x83, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x28, 0x3f, 0x57, 0x00

; FUNCTION 0x0034c7ec, declared_size=8, range_size=8, mode=arm
; class-group: PhysicalWorld
; alias: _ZThn8_N13PhysicalWorld7PersistEPK14b2ContactPoint
; demangled: non-virtual thunk to PhysicalWorld::Persist(b2ContactPoint const*)
; decoder-mode: arm
0034c7ec  08 00 40 e2                                      sub r0, r0, #8
0034c7f0  ff ff ff ea                                      b #0x34c7f4

; FUNCTION 0x0034c7f4, declared_size=296, range_size=296, mode=arm
; class-group: PhysicalWorld
; alias: _ZN13PhysicalWorld7PersistEPK14b2ContactPoint
; demangled: PhysicalWorld::Persist(b2ContactPoint const*)
; decoder-mode: arm
0034c7f4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034c7f8  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0034c7fc  0c 81 9f e5                                      ldr r8, [pc, #0x10c]
0034c800  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0034c804  04 40 8f e0                                      add r4, pc, r4
0034c808  08 30 94 e7                                      ldr r3, [r4, r8]
0034c80c  02 70 94 e7                                      ldr r7, [r4, r2]
0034c810  34 d0 4d e2                                      sub sp, sp, #0x34
0034c814  00 30 93 e5                                      ldr r3, [r3]
0034c818  00 a0 a0 e1                                      mov sl, r0
0034c81c  07 00 a0 e1                                      mov r0, r7
0034c820  2c 30 8d e5                                      str r3, [sp, #0x2c]
0034c824  01 50 a0 e1                                      mov r5, r1
0034c828  16 ac ff eb                                      bl #0x337888
0034c82c  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0034c830  14 60 8d e2                                      add r6, sp, #0x14
0034c834  06 00 a0 e1                                      mov r0, r6
0034c838  01 10 8f e0                                      add r1, pc, r1
0034c83c  16 10 81 e2                                      add r1, r1, #0x16
0034c840  24 60 8d e5                                      str r6, [sp, #0x24]
0034c844  28 60 8d e5                                      str r6, [sp, #0x28]
0034c848  dc fe ff eb                                      bl #0x34c3c0
0034c84c  06 10 a0 e1                                      mov r1, r6
0034c850  07 00 a0 e1                                      mov r0, r7
0034c854  8b ac ff eb                                      bl #0x337a88
0034c858  06 00 a0 e1                                      mov r0, r6
0034c85c  52 1c ff eb                                      bl #0x3139ac
0034c860  0c 00 95 e8                                      ldm r5, {r2, r3}
0034c864  2c 70 92 e5                                      ldr r7, [r2, #0x2c]
0034c868  2c 60 93 e5                                      ldr r6, [r3, #0x2c]
0034c86c  00 00 56 e3                                      cmp r6, #0
0034c870  00 00 57 13                                      cmpne r7, #0
0034c874  1c 00 00 0a                                      beq #0x34c8ec
0034c878  0a 00 a0 e1                                      mov r0, sl
0034c87c  05 10 a0 e1                                      mov r1, r5
0034c880  07 20 a0 e1                                      mov r2, r7
0034c884  06 30 a0 e1                                      mov r3, r6
0034c888  55 fe ff eb                                      bl #0x34c1e4
0034c88c  00 10 97 e5                                      ldr r1, [r7]
0034c890  08 20 95 e5                                      ldr r2, [r5, #8]
0034c894  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0034c898  00 a0 a0 e1                                      mov sl, r0
0034c89c  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0034c8a0  07 00 a0 e1                                      mov r0, r7
0034c8a4  0c 20 8d e5                                      str r2, [sp, #0xc]
0034c8a8  10 30 8d e5                                      str r3, [sp, #0x10]
0034c8ac  06 10 a0 e1                                      mov r1, r6
0034c8b0  0c 20 8d e2                                      add r2, sp, #0xc
0034c8b4  0a 30 a0 e1                                      mov r3, sl
0034c8b8  3c ff 2f e1                                      blx ip
0034c8bc  00 00 96 e5                                      ldr r0, [r6]
0034c8c0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0034c8c4  08 10 95 e5                                      ldr r1, [r5, #8]
0034c8c8  01 30 2a e2                                      eor r3, sl, #1
0034c8cc  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0034c8d0  73 30 ef e6                                      uxtb r3, r3
0034c8d4  04 10 8d e5                                      str r1, [sp, #4]
0034c8d8  08 20 8d e5                                      str r2, [sp, #8]
0034c8dc  06 00 a0 e1                                      mov r0, r6
0034c8e0  07 10 a0 e1                                      mov r1, r7
0034c8e4  04 20 8d e2                                      add r2, sp, #4
0034c8e8  3c ff 2f e1                                      blx ip
0034c8ec  08 30 94 e7                                      ldr r3, [r4, r8]
0034c8f0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0034c8f4  00 30 93 e5                                      ldr r3, [r3]
0034c8f8  03 00 52 e1                                      cmp r2, r3
0034c8fc  01 00 00 1a                                      bne #0x34c908
0034c900  34 d0 8d e2                                      add sp, sp, #0x34
0034c904  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0034c908  80 06 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0034c90c  8c 82 64 00 ac 40 00 00 84 08 00 00 f8 3d 57 00  .byte 0x8c, 0x82, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf8, 0x3d, 0x57, 0x00
