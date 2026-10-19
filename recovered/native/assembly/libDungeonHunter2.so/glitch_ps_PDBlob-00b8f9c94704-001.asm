; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069acd8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZN6glitch2ps6PDBlobD1Ev
; demangled: glitch::ps::PDBlob::~PDBlob()
; decoder-mode: arm
0069acd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069acdc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZNK6glitch2ps6PDBlob7getTypeEv
; demangled: glitch::ps::PDBlob::getType() const
; decoder-mode: arm
0069acdc  06 00 a0 e3                                      mov r0, #6
0069ace0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069be10, declared_size=168, range_size=168, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZN6glitch2ps6PDBlobC2ERKNS_4core8vector3dIfEEf
; demangled: glitch::ps::PDBlob::PDBlob(glitch::core::vector3d<float> const&, float)
; decoder-mode: arm
0069be10  98 30 9f e5                                      ldr r3, [pc, #0x98]
0069be14  70 40 2d e9                                      push {r4, r5, r6, lr}
0069be18  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0069be1c  03 30 8f e0                                      add r3, pc, r3
0069be20  00 c0 a0 e3                                      mov ip, #0
0069be24  0e e0 93 e7                                      ldr lr, [r3, lr]
0069be28  0c c0 80 e5                                      str ip, [r0, #0xc]
0069be2c  04 c0 80 e5                                      str ip, [r0, #4]
0069be30  08 e0 8e e2                                      add lr, lr, #8
0069be34  08 c0 80 e5                                      str ip, [r0, #8]
0069be38  00 e0 80 e5                                      str lr, [r0]
0069be3c  01 c0 a0 e1                                      mov ip, r1
0069be40  00 10 91 e5                                      ldr r1, [r1]
0069be44  00 40 a0 e1                                      mov r4, r0
0069be48  02 00 a0 e1                                      mov r0, r2
0069be4c  04 10 84 e5                                      str r1, [r4, #4]
0069be50  04 e0 9c e5                                      ldr lr, [ip, #4]
0069be54  cc 1c 0b e3                                      movw r1, #0xbccc
0069be58  8c 1b 42 e3                                      movt r1, #0x2b8c
0069be5c  08 e0 84 e5                                      str lr, [r4, #8]
0069be60  08 30 9c e5                                      ldr r3, [ip, #8]
0069be64  10 20 84 e5                                      str r2, [r4, #0x10]
0069be68  0c 30 84 e5                                      str r3, [r4, #0xc]
0069be6c  4c cb f1 eb                                      bl #0x30eba4
0069be70  00 10 a0 e1                                      mov r1, r0
0069be74  fe 05 a0 e3                                      mov r0, #0x3f800000
0069be78  85 cb f1 eb                                      bl #0x30ec94
0069be7c  00 10 a0 e1                                      mov r1, r0
0069be80  00 50 a0 e1                                      mov r5, r0
0069be84  b8 cb f1 eb                                      bl #0x30ed6c
0069be88  bf 14 a0 e3                                      mov r1, #0xbf000000
0069be8c  b6 cb f1 eb                                      bl #0x30ed6c
0069be90  2a 12 04 e3                                      movw r1, #0x422a
0069be94  14 00 84 e5                                      str r0, [r4, #0x14]
0069be98  cc 1e 43 e3                                      movt r1, #0x3ecc
0069be9c  05 00 a0 e1                                      mov r0, r5
0069bea0  b1 cb f1 eb                                      bl #0x30ed6c
0069bea4  18 00 84 e5                                      str r0, [r4, #0x18]
0069bea8  04 00 a0 e1                                      mov r0, r4
0069beac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069beb0  74 8c 2f 00 54 0e 00 00                          .byte 0x74, 0x8c, 0x2f, 0x00, 0x54, 0x0e, 0x00, 0x00

; FUNCTION 0x0069beb8, declared_size=168, range_size=168, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZN6glitch2ps6PDBlobC1ERKNS_4core8vector3dIfEEf
; demangled: glitch::ps::PDBlob::PDBlob(glitch::core::vector3d<float> const&, float)
; decoder-mode: arm
0069beb8  98 30 9f e5                                      ldr r3, [pc, #0x98]
0069bebc  70 40 2d e9                                      push {r4, r5, r6, lr}
0069bec0  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0069bec4  03 30 8f e0                                      add r3, pc, r3
0069bec8  00 c0 a0 e3                                      mov ip, #0
0069becc  0e e0 93 e7                                      ldr lr, [r3, lr]
0069bed0  0c c0 80 e5                                      str ip, [r0, #0xc]
0069bed4  04 c0 80 e5                                      str ip, [r0, #4]
0069bed8  08 e0 8e e2                                      add lr, lr, #8
0069bedc  08 c0 80 e5                                      str ip, [r0, #8]
0069bee0  00 e0 80 e5                                      str lr, [r0]
0069bee4  01 c0 a0 e1                                      mov ip, r1
0069bee8  00 10 91 e5                                      ldr r1, [r1]
0069beec  00 40 a0 e1                                      mov r4, r0
0069bef0  02 00 a0 e1                                      mov r0, r2
0069bef4  04 10 84 e5                                      str r1, [r4, #4]
0069bef8  04 e0 9c e5                                      ldr lr, [ip, #4]
0069befc  cc 1c 0b e3                                      movw r1, #0xbccc
0069bf00  8c 1b 42 e3                                      movt r1, #0x2b8c
0069bf04  08 e0 84 e5                                      str lr, [r4, #8]
0069bf08  08 30 9c e5                                      ldr r3, [ip, #8]
0069bf0c  10 20 84 e5                                      str r2, [r4, #0x10]
0069bf10  0c 30 84 e5                                      str r3, [r4, #0xc]
0069bf14  22 cb f1 eb                                      bl #0x30eba4
0069bf18  00 10 a0 e1                                      mov r1, r0
0069bf1c  fe 05 a0 e3                                      mov r0, #0x3f800000
0069bf20  5b cb f1 eb                                      bl #0x30ec94
0069bf24  00 10 a0 e1                                      mov r1, r0
0069bf28  00 50 a0 e1                                      mov r5, r0
0069bf2c  8e cb f1 eb                                      bl #0x30ed6c
0069bf30  bf 14 a0 e3                                      mov r1, #0xbf000000
0069bf34  8c cb f1 eb                                      bl #0x30ed6c
0069bf38  2a 12 04 e3                                      movw r1, #0x422a
0069bf3c  14 00 84 e5                                      str r0, [r4, #0x14]
0069bf40  cc 1e 43 e3                                      movt r1, #0x3ecc
0069bf44  05 00 a0 e1                                      mov r0, r5
0069bf48  87 cb f1 eb                                      bl #0x30ed6c
0069bf4c  18 00 84 e5                                      str r0, [r4, #0x18]
0069bf50  04 00 a0 e1                                      mov r0, r4
0069bf54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069bf58  cc 8b 2f 00 54 0e 00 00                          .byte 0xcc, 0x8b, 0x2f, 0x00, 0x54, 0x0e, 0x00, 0x00

; FUNCTION 0x0069bf60, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZN6glitch2ps6PDBlob9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDBlob::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069bf60  30 c0 91 e5                                      ldr ip, [r1, #0x30]
0069bf64  34 30 91 e5                                      ldr r3, [r1, #0x34]
0069bf68  38 20 91 e5                                      ldr r2, [r1, #0x38]
0069bf6c  04 c0 80 e5                                      str ip, [r0, #4]
0069bf70  08 30 80 e5                                      str r3, [r0, #8]
0069bf74  0c 20 80 e5                                      str r2, [r0, #0xc]
0069bf78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bf7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZNK6glitch2ps6PDBlob4sizeEv
; demangled: glitch::ps::PDBlob::size() const
; decoder-mode: arm
0069bf7c  fe 05 a0 e3                                      mov r0, #0x3f800000
0069bf80  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069c030, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZN6glitch2ps6PDBlobD0Ev
; demangled: glitch::ps::PDBlob::~PDBlob()
; decoder-mode: arm
0069c030  10 40 2d e9                                      push {r4, lr}
0069c034  00 40 a0 e1                                      mov r4, r0
0069c038  9c c8 f1 eb                                      bl #0x30e2b0
0069c03c  04 00 a0 e1                                      mov r0, r4
0069c040  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c044, declared_size=104, range_size=104, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZNK6glitch2ps6PDBlob4copyEv
; demangled: glitch::ps::PDBlob::copy() const
; decoder-mode: arm
0069c044  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c048  00 10 a0 e3                                      mov r1, #0
0069c04c  00 40 a0 e1                                      mov r4, r0
0069c050  1c 00 a0 e3                                      mov r0, #0x1c
0069c054  54 60 fa eb                                      bl #0x5341ac
0069c058  44 50 9f e5                                      ldr r5, [pc, #0x44]
0069c05c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0069c060  05 50 8f e0                                      add r5, pc, r5
0069c064  02 20 95 e7                                      ldr r2, [r5, r2]
0069c068  08 20 82 e2                                      add r2, r2, #8
0069c06c  00 20 80 e5                                      str r2, [r0]
0069c070  04 20 94 e5                                      ldr r2, [r4, #4]
0069c074  04 20 80 e5                                      str r2, [r0, #4]
0069c078  08 20 94 e5                                      ldr r2, [r4, #8]
0069c07c  08 20 80 e5                                      str r2, [r0, #8]
0069c080  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0069c084  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c088  10 20 94 e5                                      ldr r2, [r4, #0x10]
0069c08c  10 20 80 e5                                      str r2, [r0, #0x10]
0069c090  14 20 94 e5                                      ldr r2, [r4, #0x14]
0069c094  14 20 80 e5                                      str r2, [r0, #0x14]
0069c098  18 20 94 e5                                      ldr r2, [r4, #0x18]
0069c09c  18 20 80 e5                                      str r2, [r0, #0x18]
0069c0a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c0a4  30 8a 2f 00 54 0e 00 00                          .byte 0x30, 0x8a, 0x2f, 0x00, 0x54, 0x0e, 0x00, 0x00

; FUNCTION 0x0069c688, declared_size=100, range_size=100, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZNK6glitch2ps6PDBlob8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDBlob::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069c688  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0069c68c  01 50 a0 e1                                      mov r5, r1
0069c690  14 d0 4d e2                                      sub sp, sp, #0x14
0069c694  00 40 a0 e1                                      mov r4, r0
0069c698  02 10 a0 e1                                      mov r1, r2
0069c69c  04 00 8d e2                                      add r0, sp, #4
0069c6a0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0069c6a4  b4 ff ff eb                                      bl #0x69c57c
0069c6a8  08 10 9d e5                                      ldr r1, [sp, #8]
0069c6ac  08 00 95 e5                                      ldr r0, [r5, #8]
0069c6b0  3b c9 f1 eb                                      bl #0x30eba4
0069c6b4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0069c6b8  00 70 a0 e1                                      mov r7, r0
0069c6bc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0069c6c0  37 c9 f1 eb                                      bl #0x30eba4
0069c6c4  04 10 9d e5                                      ldr r1, [sp, #4]
0069c6c8  00 60 a0 e1                                      mov r6, r0
0069c6cc  04 00 95 e5                                      ldr r0, [r5, #4]
0069c6d0  33 c9 f1 eb                                      bl #0x30eba4
0069c6d4  04 70 84 e5                                      str r7, [r4, #4]
0069c6d8  00 00 84 e5                                      str r0, [r4]
0069c6dc  08 60 84 e5                                      str r6, [r4, #8]
0069c6e0  04 00 a0 e1                                      mov r0, r4
0069c6e4  14 d0 8d e2                                      add sp, sp, #0x14
0069c6e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0069df40, declared_size=200, range_size=200, mode=arm
; class-group: glitch::ps::PDBlob
; alias: _ZNK6glitch2ps6PDBlob6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDBlob::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069df40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069df44  00 40 a0 e1                                      mov r4, r0
0069df48  01 50 a0 e1                                      mov r5, r1
0069df4c  00 00 91 e5                                      ldr r0, [r1]
0069df50  04 10 94 e5                                      ldr r1, [r4, #4]
0069df54  14 c1 f1 eb                                      bl #0x30e3ac
0069df58  08 10 94 e5                                      ldr r1, [r4, #8]
0069df5c  00 80 a0 e1                                      mov r8, r0
0069df60  04 00 95 e5                                      ldr r0, [r5, #4]
0069df64  10 c1 f1 eb                                      bl #0x30e3ac
0069df68  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0069df6c  00 70 a0 e1                                      mov r7, r0
0069df70  08 00 95 e5                                      ldr r0, [r5, #8]
0069df74  0c c1 f1 eb                                      bl #0x30e3ac
0069df78  08 10 a0 e1                                      mov r1, r8
0069df7c  00 60 a0 e1                                      mov r6, r0
0069df80  08 00 a0 e1                                      mov r0, r8
0069df84  78 c3 f1 eb                                      bl #0x30ed6c
0069df88  07 10 a0 e1                                      mov r1, r7
0069df8c  00 50 a0 e1                                      mov r5, r0
0069df90  07 00 a0 e1                                      mov r0, r7
0069df94  74 c3 f1 eb                                      bl #0x30ed6c
0069df98  00 10 a0 e1                                      mov r1, r0
0069df9c  05 00 a0 e1                                      mov r0, r5
0069dfa0  ff c2 f1 eb                                      bl #0x30eba4
0069dfa4  06 10 a0 e1                                      mov r1, r6
0069dfa8  00 50 a0 e1                                      mov r5, r0
0069dfac  06 00 a0 e1                                      mov r0, r6
0069dfb0  6d c3 f1 eb                                      bl #0x30ed6c
0069dfb4  00 10 a0 e1                                      mov r1, r0
0069dfb8  05 00 a0 e1                                      mov r0, r5
0069dfbc  f8 c2 f1 eb                                      bl #0x30eba4
0069dfc0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0069dfc4  68 c3 f1 eb                                      bl #0x30ed6c
0069dfc8  25 c3 f1 eb                                      bl #0x30ec64
0069dfcc  18 10 94 e5                                      ldr r1, [r4, #0x18]
0069dfd0  65 c3 f1 eb                                      bl #0x30ed6c
0069dfd4  00 40 a0 e1                                      mov r4, r0
0069dfd8  72 c3 f1 eb                                      bl #0x30eda8
0069dfdc  60 c2 f1 eb                                      bl #0x30e964
0069dfe0  03 12 a0 e3                                      mov r1, #0x30000000
0069dfe4  60 c3 f1 eb                                      bl #0x30ed6c
0069dfe8  00 10 a0 e1                                      mov r1, r0
0069dfec  04 00 a0 e1                                      mov r0, r4
0069dff0  c0 c0 f1 eb                                      bl #0x30e2f8
0069dff4  00 00 50 e3                                      cmp r0, #0
0069dff8  00 00 a0 e3                                      mov r0, #0
0069dffc  01 00 a0 13                                      movne r0, #1
0069e000  01 00 00 e2                                      and r0, r0, #1
0069e004  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
