; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9ee8, declared_size=40, range_size=40, mode=arm
; class-group: Structs::OpenableContainer
; alias: _ZN7Structs17OpenableContainer8finalizeEv
; demangled: Structs::OpenableContainer::finalize()
; decoder-mode: arm
004d9ee8  10 40 2d e9                                      push {r4, lr}
004d9eec  00 40 a0 e1                                      mov r4, r0
004d9ef0  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d9ef4  00 00 50 e3                                      cmp r0, #0
004d9ef8  03 00 00 0a                                      beq #0x4d9f0c
004d9efc  4f d9 f8 eb                                      bl #0x310440
004d9f00  00 30 a0 e3                                      mov r3, #0
004d9f04  14 30 84 e5                                      str r3, [r4, #0x14]
004d9f08  18 30 84 e5                                      str r3, [r4, #0x18]
004d9f0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9f10, declared_size=64, range_size=64, mode=arm
; class-group: Structs::OpenableContainer
; alias: _ZN7Structs17OpenableContainerD1Ev
; demangled: Structs::OpenableContainer::~OpenableContainer()
; decoder-mode: arm
004d9f10  10 40 2d e9                                      push {r4, lr}
004d9f14  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9f18  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9f1c  00 40 a0 e1                                      mov r4, r0
004d9f20  03 30 8f e0                                      add r3, pc, r3
004d9f24  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d9f28  02 20 93 e7                                      ldr r2, [r3, r2]
004d9f2c  00 00 50 e3                                      cmp r0, #0
004d9f30  08 20 82 e2                                      add r2, r2, #8
004d9f34  00 20 84 e5                                      str r2, [r4]
004d9f38  00 00 00 0a                                      beq #0x4d9f40
004d9f3c  3f d9 f8 eb                                      bl #0x310440
004d9f40  04 00 a0 e1                                      mov r0, r4
004d9f44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9f48  70 ab 4b 00 94 19 00 00                          .byte 0x70, 0xab, 0x4b, 0x00, 0x94, 0x19, 0x00, 0x00

; FUNCTION 0x004d9f50, declared_size=28, range_size=28, mode=arm
; class-group: Structs::OpenableContainer
; alias: _ZN7Structs17OpenableContainerD0Ev
; demangled: Structs::OpenableContainer::~OpenableContainer()
; decoder-mode: arm
004d9f50  10 40 2d e9                                      push {r4, lr}
004d9f54  00 40 a0 e1                                      mov r4, r0
004d9f58  ec ff ff eb                                      bl #0x4d9f10
004d9f5c  04 00 a0 e1                                      mov r0, r4
004d9f60  36 d9 f8 eb                                      bl #0x310440
004d9f64  04 00 a0 e1                                      mov r0, r4
004d9f68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9f6c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::OpenableContainer
; alias: _ZN7Structs17OpenableContainerD2Ev
; demangled: Structs::OpenableContainer::~OpenableContainer()
; decoder-mode: arm
004d9f6c  10 40 2d e9                                      push {r4, lr}
004d9f70  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9f74  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9f78  00 40 a0 e1                                      mov r4, r0
004d9f7c  03 30 8f e0                                      add r3, pc, r3
004d9f80  18 00 90 e5                                      ldr r0, [r0, #0x18]
004d9f84  02 20 93 e7                                      ldr r2, [r3, r2]
004d9f88  00 00 50 e3                                      cmp r0, #0
004d9f8c  08 20 82 e2                                      add r2, r2, #8
004d9f90  00 20 84 e5                                      str r2, [r4]
004d9f94  00 00 00 0a                                      beq #0x4d9f9c
004d9f98  28 d9 f8 eb                                      bl #0x310440
004d9f9c  04 00 a0 e1                                      mov r0, r4
004d9fa0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9fa4  14 ab 4b 00 94 19 00 00                          .byte 0x14, 0xab, 0x4b, 0x00, 0x94, 0x19, 0x00, 0x00

; FUNCTION 0x004fdb90, declared_size=752, range_size=752, mode=arm
; class-group: Structs::OpenableContainer
; alias: _ZN7Structs17OpenableContainer4readEP11IStreamBase
; demangled: Structs::OpenableContainer::read(IStreamBase*)
; decoder-mode: arm
004fdb90  70 40 2d e9                                      push {r4, r5, r6, lr}
004fdb94  00 40 a0 e1                                      mov r4, r0
004fdb98  08 d0 4d e2                                      sub sp, sp, #8
004fdb9c  01 00 a0 e1                                      mov r0, r1
004fdba0  01 50 a0 e1                                      mov r5, r1
004fdba4  04 10 84 e2                                      add r1, r4, #4
004fdba8  38 6d fd eb                                      bl #0x459090
004fdbac  01 30 a0 e3                                      mov r3, #1
004fdbb0  00 00 53 e3                                      cmp r3, #0
004fdbb4  04 30 8d e5                                      str r3, [sp, #4]
004fdbb8  0f 00 00 1a                                      bne #0x4fdbfc
004fdbbc  05 30 84 e2                                      add r3, r4, #5
004fdbc0  06 20 84 e2                                      add r2, r4, #6
004fdbc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdbc8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdbcc  02 00 53 e1                                      cmp r3, r2
004fdbd0  01 10 20 e0                                      eor r1, r0, r1
004fdbd4  01 10 43 e5                                      strb r1, [r3, #-1]
004fdbd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdbdc  00 10 21 e0                                      eor r1, r1, r0
004fdbe0  01 10 c2 e5                                      strb r1, [r2, #1]
004fdbe4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdbe8  01 20 42 e2                                      sub r2, r2, #1
004fdbec  00 10 21 e0                                      eor r1, r1, r0
004fdbf0  01 10 43 e5                                      strb r1, [r3, #-1]
004fdbf4  01 30 83 e2                                      add r3, r3, #1
004fdbf8  f1 ff ff 3a                                      blo #0x4fdbc4
004fdbfc  05 00 a0 e1                                      mov r0, r5
004fdc00  08 10 84 e2                                      add r1, r4, #8
004fdc04  21 6d fd eb                                      bl #0x459090
004fdc08  01 30 a0 e3                                      mov r3, #1
004fdc0c  00 00 53 e3                                      cmp r3, #0
004fdc10  04 30 8d e5                                      str r3, [sp, #4]
004fdc14  0f 00 00 1a                                      bne #0x4fdc58
004fdc18  09 30 84 e2                                      add r3, r4, #9
004fdc1c  0a 20 84 e2                                      add r2, r4, #0xa
004fdc20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdc24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdc28  02 00 53 e1                                      cmp r3, r2
004fdc2c  01 10 20 e0                                      eor r1, r0, r1
004fdc30  01 10 43 e5                                      strb r1, [r3, #-1]
004fdc34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdc38  00 10 21 e0                                      eor r1, r1, r0
004fdc3c  01 10 c2 e5                                      strb r1, [r2, #1]
004fdc40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdc44  01 20 42 e2                                      sub r2, r2, #1
004fdc48  00 10 21 e0                                      eor r1, r1, r0
004fdc4c  01 10 43 e5                                      strb r1, [r3, #-1]
004fdc50  01 30 83 e2                                      add r3, r3, #1
004fdc54  f1 ff ff 3a                                      blo #0x4fdc20
004fdc58  0c 10 84 e2                                      add r1, r4, #0xc
004fdc5c  05 00 a0 e1                                      mov r0, r5
004fdc60  0d 77 ff eb                                      bl #0x4db89c
004fdc64  05 00 a0 e1                                      mov r0, r5
004fdc68  10 10 84 e2                                      add r1, r4, #0x10
004fdc6c  07 6d fd eb                                      bl #0x459090
004fdc70  01 30 a0 e3                                      mov r3, #1
004fdc74  00 00 53 e3                                      cmp r3, #0
004fdc78  04 30 8d e5                                      str r3, [sp, #4]
004fdc7c  0f 00 00 1a                                      bne #0x4fdcc0
004fdc80  11 30 84 e2                                      add r3, r4, #0x11
004fdc84  12 20 84 e2                                      add r2, r4, #0x12
004fdc88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdc8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdc90  02 00 53 e1                                      cmp r3, r2
004fdc94  01 10 20 e0                                      eor r1, r0, r1
004fdc98  01 10 43 e5                                      strb r1, [r3, #-1]
004fdc9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdca0  00 10 21 e0                                      eor r1, r1, r0
004fdca4  01 10 c2 e5                                      strb r1, [r2, #1]
004fdca8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdcac  01 20 42 e2                                      sub r2, r2, #1
004fdcb0  00 10 21 e0                                      eor r1, r1, r0
004fdcb4  01 10 43 e5                                      strb r1, [r3, #-1]
004fdcb8  01 30 83 e2                                      add r3, r3, #1
004fdcbc  f1 ff ff 3a                                      blo #0x4fdc88
004fdcc0  05 00 a0 e1                                      mov r0, r5
004fdcc4  14 10 84 e2                                      add r1, r4, #0x14
004fdcc8  34 85 fb eb                                      bl #0x3df1a0
004fdccc  01 30 a0 e3                                      mov r3, #1
004fdcd0  00 00 53 e3                                      cmp r3, #0
004fdcd4  04 30 8d e5                                      str r3, [sp, #4]
004fdcd8  0f 00 00 1a                                      bne #0x4fdd1c
004fdcdc  15 30 84 e2                                      add r3, r4, #0x15
004fdce0  16 20 84 e2                                      add r2, r4, #0x16
004fdce4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdce8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdcec  02 00 53 e1                                      cmp r3, r2
004fdcf0  01 10 20 e0                                      eor r1, r0, r1
004fdcf4  01 10 43 e5                                      strb r1, [r3, #-1]
004fdcf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdcfc  00 10 21 e0                                      eor r1, r1, r0
004fdd00  01 10 c2 e5                                      strb r1, [r2, #1]
004fdd04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdd08  01 20 42 e2                                      sub r2, r2, #1
004fdd0c  00 10 21 e0                                      eor r1, r1, r0
004fdd10  01 10 43 e5                                      strb r1, [r3, #-1]
004fdd14  01 30 83 e2                                      add r3, r3, #1
004fdd18  f1 ff ff 3a                                      blo #0x4fdce4
004fdd1c  18 00 94 e5                                      ldr r0, [r4, #0x18]
004fdd20  00 00 50 e3                                      cmp r0, #0
004fdd24  00 00 00 0a                                      beq #0x4fdd2c
004fdd28  c4 49 f8 eb                                      bl #0x310440
004fdd2c  14 00 94 e5                                      ldr r0, [r4, #0x14]
004fdd30  01 10 a0 e3                                      mov r1, #1
004fdd34  00 60 a0 e3                                      mov r6, #0
004fdd38  01 00 80 e0                                      add r0, r0, r1
004fdd3c  0a 4a f8 eb                                      bl #0x31056c
004fdd40  14 20 94 e5                                      ldr r2, [r4, #0x14]
004fdd44  00 10 a0 e1                                      mov r1, r0
004fdd48  18 00 84 e5                                      str r0, [r4, #0x18]
004fdd4c  06 30 a0 e1                                      mov r3, r6
004fdd50  05 00 a0 e1                                      mov r0, r5
004fdd54  be 65 f8 eb                                      bl #0x317454
004fdd58  14 30 94 e5                                      ldr r3, [r4, #0x14]
004fdd5c  18 20 94 e5                                      ldr r2, [r4, #0x18]
004fdd60  05 00 a0 e1                                      mov r0, r5
004fdd64  1c 10 84 e2                                      add r1, r4, #0x1c
004fdd68  03 60 c2 e7                                      strb r6, [r2, r3]
004fdd6c  c7 6c fd eb                                      bl #0x459090
004fdd70  01 30 a0 e3                                      mov r3, #1
004fdd74  06 00 53 e1                                      cmp r3, r6
004fdd78  04 30 8d e5                                      str r3, [sp, #4]
004fdd7c  0f 00 00 1a                                      bne #0x4fddc0
004fdd80  1d 30 84 e2                                      add r3, r4, #0x1d
004fdd84  1e 20 84 e2                                      add r2, r4, #0x1e
004fdd88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdd8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdd90  02 00 53 e1                                      cmp r3, r2
004fdd94  01 10 20 e0                                      eor r1, r0, r1
004fdd98  01 10 43 e5                                      strb r1, [r3, #-1]
004fdd9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdda0  00 10 21 e0                                      eor r1, r1, r0
004fdda4  01 10 c2 e5                                      strb r1, [r2, #1]
004fdda8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fddac  01 20 42 e2                                      sub r2, r2, #1
004fddb0  00 10 21 e0                                      eor r1, r1, r0
004fddb4  01 10 43 e5                                      strb r1, [r3, #-1]
004fddb8  01 30 83 e2                                      add r3, r3, #1
004fddbc  f1 ff ff 3a                                      blo #0x4fdd88
004fddc0  05 00 a0 e1                                      mov r0, r5
004fddc4  20 10 84 e2                                      add r1, r4, #0x20
004fddc8  b0 6c fd eb                                      bl #0x459090
004fddcc  01 30 a0 e3                                      mov r3, #1
004fddd0  00 00 53 e3                                      cmp r3, #0
004fddd4  04 30 8d e5                                      str r3, [sp, #4]
004fddd8  0f 00 00 1a                                      bne #0x4fde1c
004fdddc  21 30 84 e2                                      add r3, r4, #0x21
004fdde0  22 20 84 e2                                      add r2, r4, #0x22
004fdde4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdde8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fddec  02 00 53 e1                                      cmp r3, r2
004fddf0  01 10 20 e0                                      eor r1, r0, r1
004fddf4  01 10 43 e5                                      strb r1, [r3, #-1]
004fddf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fddfc  00 10 21 e0                                      eor r1, r1, r0
004fde00  01 10 c2 e5                                      strb r1, [r2, #1]
004fde04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fde08  01 20 42 e2                                      sub r2, r2, #1
004fde0c  00 10 21 e0                                      eor r1, r1, r0
004fde10  01 10 43 e5                                      strb r1, [r3, #-1]
004fde14  01 30 83 e2                                      add r3, r3, #1
004fde18  f1 ff ff 3a                                      blo #0x4fdde4
004fde1c  05 00 a0 e1                                      mov r0, r5
004fde20  24 10 84 e2                                      add r1, r4, #0x24
004fde24  99 6c fd eb                                      bl #0x459090
004fde28  01 30 a0 e3                                      mov r3, #1
004fde2c  00 00 53 e3                                      cmp r3, #0
004fde30  04 30 8d e5                                      str r3, [sp, #4]
004fde34  0f 00 00 1a                                      bne #0x4fde78
004fde38  26 30 84 e2                                      add r3, r4, #0x26
004fde3c  25 40 84 e2                                      add r4, r4, #0x25
004fde40  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fde44  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fde48  03 00 54 e1                                      cmp r4, r3
004fde4c  02 20 21 e0                                      eor r2, r1, r2
004fde50  01 20 44 e5                                      strb r2, [r4, #-1]
004fde54  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fde58  01 20 22 e0                                      eor r2, r2, r1
004fde5c  01 20 c3 e5                                      strb r2, [r3, #1]
004fde60  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fde64  01 30 43 e2                                      sub r3, r3, #1
004fde68  01 20 22 e0                                      eor r2, r2, r1
004fde6c  01 20 44 e5                                      strb r2, [r4, #-1]
004fde70  01 40 84 e2                                      add r4, r4, #1
004fde74  f1 ff ff 3a                                      blo #0x4fde40
004fde78  08 d0 8d e2                                      add sp, sp, #8
004fde7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
