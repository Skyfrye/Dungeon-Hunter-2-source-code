; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4600, declared_size=76, range_size=76, mode=arm
; class-group: Structs::JewelryRef
; alias: _ZN7Structs10JewelryRef8finalizeEv
; demangled: Structs::JewelryRef::finalize()
; decoder-mode: arm
004d4600  10 40 2d e9                                      push {r4, lr}
004d4604  00 40 a0 e1                                      mov r4, r0
004d4608  08 00 90 e5                                      ldr r0, [r0, #8]
004d460c  00 00 50 e3                                      cmp r0, #0
004d4610  03 00 00 0a                                      beq #0x4d4624
004d4614  89 ef f8 eb                                      bl #0x310440
004d4618  00 30 a0 e3                                      mov r3, #0
004d461c  04 30 84 e5                                      str r3, [r4, #4]
004d4620  08 30 84 e5                                      str r3, [r4, #8]
004d4624  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4628  00 00 50 e3                                      cmp r0, #0
004d462c  03 00 00 0a                                      beq #0x4d4640
004d4630  82 ef f8 eb                                      bl #0x310440
004d4634  00 30 a0 e3                                      mov r3, #0
004d4638  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d463c  50 30 84 e5                                      str r3, [r4, #0x50]
004d4640  04 00 a0 e1                                      mov r0, r4
004d4644  10 40 bd e8                                      pop {r4, lr}
004d4648  a9 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d4bf8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::JewelryRef
; alias: _ZN7Structs10JewelryRefD1Ev
; demangled: Structs::JewelryRef::~JewelryRef()
; decoder-mode: arm
004d4bf8  10 40 2d e9                                      push {r4, lr}
004d4bfc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4c00  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4c04  00 40 a0 e1                                      mov r4, r0
004d4c08  03 30 8f e0                                      add r3, pc, r3
004d4c0c  08 00 90 e5                                      ldr r0, [r0, #8]
004d4c10  02 20 93 e7                                      ldr r2, [r3, r2]
004d4c14  00 00 50 e3                                      cmp r0, #0
004d4c18  08 20 82 e2                                      add r2, r2, #8
004d4c1c  00 20 84 e5                                      str r2, [r4]
004d4c20  00 00 00 0a                                      beq #0x4d4c28
004d4c24  05 ee f8 eb                                      bl #0x310440
004d4c28  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4c2c  00 00 50 e3                                      cmp r0, #0
004d4c30  00 00 00 0a                                      beq #0x4d4c38
004d4c34  01 ee f8 eb                                      bl #0x310440
004d4c38  04 00 a0 e1                                      mov r0, r4
004d4c3c  44 ff ff eb                                      bl #0x4d4954
004d4c40  04 00 a0 e1                                      mov r0, r4
004d4c44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4c48  88 fe 4b 00 14 11 00 00                          .byte 0x88, 0xfe, 0x4b, 0x00, 0x14, 0x11, 0x00, 0x00

; FUNCTION 0x004d4c50, declared_size=28, range_size=28, mode=arm
; class-group: Structs::JewelryRef
; alias: _ZN7Structs10JewelryRefD0Ev
; demangled: Structs::JewelryRef::~JewelryRef()
; decoder-mode: arm
004d4c50  10 40 2d e9                                      push {r4, lr}
004d4c54  00 40 a0 e1                                      mov r4, r0
004d4c58  e6 ff ff eb                                      bl #0x4d4bf8
004d4c5c  04 00 a0 e1                                      mov r0, r4
004d4c60  f6 ed f8 eb                                      bl #0x310440
004d4c64  04 00 a0 e1                                      mov r0, r4
004d4c68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4c6c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::JewelryRef
; alias: _ZN7Structs10JewelryRefD2Ev
; demangled: Structs::JewelryRef::~JewelryRef()
; decoder-mode: arm
004d4c6c  10 40 2d e9                                      push {r4, lr}
004d4c70  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4c74  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4c78  00 40 a0 e1                                      mov r4, r0
004d4c7c  03 30 8f e0                                      add r3, pc, r3
004d4c80  08 00 90 e5                                      ldr r0, [r0, #8]
004d4c84  02 20 93 e7                                      ldr r2, [r3, r2]
004d4c88  00 00 50 e3                                      cmp r0, #0
004d4c8c  08 20 82 e2                                      add r2, r2, #8
004d4c90  00 20 84 e5                                      str r2, [r4]
004d4c94  00 00 00 0a                                      beq #0x4d4c9c
004d4c98  e8 ed f8 eb                                      bl #0x310440
004d4c9c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4ca0  00 00 50 e3                                      cmp r0, #0
004d4ca4  00 00 00 0a                                      beq #0x4d4cac
004d4ca8  e4 ed f8 eb                                      bl #0x310440
004d4cac  04 00 a0 e1                                      mov r0, r4
004d4cb0  27 ff ff eb                                      bl #0x4d4954
004d4cb4  04 00 a0 e1                                      mov r0, r4
004d4cb8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4cbc  14 fe 4b 00 14 11 00 00                          .byte 0x14, 0xfe, 0x4b, 0x00, 0x14, 0x11, 0x00, 0x00

; FUNCTION 0x004f9510, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::JewelryRef
; alias: _ZN7Structs10JewelryRef4readEP11IStreamBase
; demangled: Structs::JewelryRef::read(IStreamBase*)
; decoder-mode: arm
004f9510  70 40 2d e9                                      push {r4, r5, r6, lr}
004f9514  00 40 a0 e1                                      mov r4, r0
004f9518  08 d0 4d e2                                      sub sp, sp, #8
004f951c  01 50 a0 e1                                      mov r5, r1
004f9520  d5 cb ff eb                                      bl #0x4ec47c
004f9524  05 00 a0 e1                                      mov r0, r5
004f9528  44 10 84 e2                                      add r1, r4, #0x44
004f952c  d7 7e fd eb                                      bl #0x459090
004f9530  01 30 a0 e3                                      mov r3, #1
004f9534  00 00 53 e3                                      cmp r3, #0
004f9538  04 30 8d e5                                      str r3, [sp, #4]
004f953c  0f 00 00 1a                                      bne #0x4f9580
004f9540  45 30 84 e2                                      add r3, r4, #0x45
004f9544  46 20 84 e2                                      add r2, r4, #0x46
004f9548  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f954c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9550  02 00 53 e1                                      cmp r3, r2
004f9554  01 10 20 e0                                      eor r1, r0, r1
004f9558  01 10 43 e5                                      strb r1, [r3, #-1]
004f955c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9560  00 10 21 e0                                      eor r1, r1, r0
004f9564  01 10 c2 e5                                      strb r1, [r2, #1]
004f9568  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f956c  01 20 42 e2                                      sub r2, r2, #1
004f9570  00 10 21 e0                                      eor r1, r1, r0
004f9574  01 10 43 e5                                      strb r1, [r3, #-1]
004f9578  01 30 83 e2                                      add r3, r3, #1
004f957c  f1 ff ff 3a                                      blo #0x4f9548
004f9580  05 00 a0 e1                                      mov r0, r5
004f9584  48 10 84 e2                                      add r1, r4, #0x48
004f9588  c0 7e fd eb                                      bl #0x459090
004f958c  01 30 a0 e3                                      mov r3, #1
004f9590  00 00 53 e3                                      cmp r3, #0
004f9594  04 30 8d e5                                      str r3, [sp, #4]
004f9598  0f 00 00 1a                                      bne #0x4f95dc
004f959c  49 30 84 e2                                      add r3, r4, #0x49
004f95a0  4a 20 84 e2                                      add r2, r4, #0x4a
004f95a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f95a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f95ac  02 00 53 e1                                      cmp r3, r2
004f95b0  01 10 20 e0                                      eor r1, r0, r1
004f95b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f95b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f95bc  00 10 21 e0                                      eor r1, r1, r0
004f95c0  01 10 c2 e5                                      strb r1, [r2, #1]
004f95c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f95c8  01 20 42 e2                                      sub r2, r2, #1
004f95cc  00 10 21 e0                                      eor r1, r1, r0
004f95d0  01 10 43 e5                                      strb r1, [r3, #-1]
004f95d4  01 30 83 e2                                      add r3, r3, #1
004f95d8  f1 ff ff 3a                                      blo #0x4f95a4
004f95dc  05 00 a0 e1                                      mov r0, r5
004f95e0  4c 10 84 e2                                      add r1, r4, #0x4c
004f95e4  ed 96 fb eb                                      bl #0x3df1a0
004f95e8  01 30 a0 e3                                      mov r3, #1
004f95ec  00 00 53 e3                                      cmp r3, #0
004f95f0  04 30 8d e5                                      str r3, [sp, #4]
004f95f4  0f 00 00 1a                                      bne #0x4f9638
004f95f8  4d 30 84 e2                                      add r3, r4, #0x4d
004f95fc  4e 20 84 e2                                      add r2, r4, #0x4e
004f9600  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9604  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9608  02 00 53 e1                                      cmp r3, r2
004f960c  01 10 20 e0                                      eor r1, r0, r1
004f9610  01 10 43 e5                                      strb r1, [r3, #-1]
004f9614  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9618  00 10 21 e0                                      eor r1, r1, r0
004f961c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9620  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9624  01 20 42 e2                                      sub r2, r2, #1
004f9628  00 10 21 e0                                      eor r1, r1, r0
004f962c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9630  01 30 83 e2                                      add r3, r3, #1
004f9634  f1 ff ff 3a                                      blo #0x4f9600
004f9638  50 00 94 e5                                      ldr r0, [r4, #0x50]
004f963c  00 00 50 e3                                      cmp r0, #0
004f9640  00 00 00 0a                                      beq #0x4f9648
004f9644  7d 5b f8 eb                                      bl #0x310440
004f9648  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004f964c  01 10 a0 e3                                      mov r1, #1
004f9650  00 60 a0 e3                                      mov r6, #0
004f9654  01 00 80 e0                                      add r0, r0, r1
004f9658  c3 5b f8 eb                                      bl #0x31056c
004f965c  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004f9660  00 10 a0 e1                                      mov r1, r0
004f9664  50 00 84 e5                                      str r0, [r4, #0x50]
004f9668  06 30 a0 e1                                      mov r3, r6
004f966c  05 00 a0 e1                                      mov r0, r5
004f9670  77 77 f8 eb                                      bl #0x317454
004f9674  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004f9678  50 20 94 e5                                      ldr r2, [r4, #0x50]
004f967c  05 00 a0 e1                                      mov r0, r5
004f9680  54 10 84 e2                                      add r1, r4, #0x54
004f9684  03 60 c2 e7                                      strb r6, [r2, r3]
004f9688  80 7e fd eb                                      bl #0x459090
004f968c  01 30 a0 e3                                      mov r3, #1
004f9690  06 00 53 e1                                      cmp r3, r6
004f9694  04 30 8d e5                                      str r3, [sp, #4]
004f9698  0f 00 00 1a                                      bne #0x4f96dc
004f969c  55 30 84 e2                                      add r3, r4, #0x55
004f96a0  56 20 84 e2                                      add r2, r4, #0x56
004f96a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f96a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f96ac  02 00 53 e1                                      cmp r3, r2
004f96b0  01 10 20 e0                                      eor r1, r0, r1
004f96b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f96b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f96bc  00 10 21 e0                                      eor r1, r1, r0
004f96c0  01 10 c2 e5                                      strb r1, [r2, #1]
004f96c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f96c8  01 20 42 e2                                      sub r2, r2, #1
004f96cc  00 10 21 e0                                      eor r1, r1, r0
004f96d0  01 10 43 e5                                      strb r1, [r3, #-1]
004f96d4  01 30 83 e2                                      add r3, r3, #1
004f96d8  f1 ff ff 3a                                      blo #0x4f96a4
004f96dc  05 00 a0 e1                                      mov r0, r5
004f96e0  58 10 84 e2                                      add r1, r4, #0x58
004f96e4  69 7e fd eb                                      bl #0x459090
004f96e8  01 30 a0 e3                                      mov r3, #1
004f96ec  00 00 53 e3                                      cmp r3, #0
004f96f0  04 30 8d e5                                      str r3, [sp, #4]
004f96f4  0f 00 00 1a                                      bne #0x4f9738
004f96f8  59 30 84 e2                                      add r3, r4, #0x59
004f96fc  5a 20 84 e2                                      add r2, r4, #0x5a
004f9700  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9704  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9708  02 00 53 e1                                      cmp r3, r2
004f970c  01 10 20 e0                                      eor r1, r0, r1
004f9710  01 10 43 e5                                      strb r1, [r3, #-1]
004f9714  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9718  00 10 21 e0                                      eor r1, r1, r0
004f971c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9720  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9724  01 20 42 e2                                      sub r2, r2, #1
004f9728  00 10 21 e0                                      eor r1, r1, r0
004f972c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9730  01 30 83 e2                                      add r3, r3, #1
004f9734  f1 ff ff 3a                                      blo #0x4f9700
004f9738  05 00 a0 e1                                      mov r0, r5
004f973c  5c 10 84 e2                                      add r1, r4, #0x5c
004f9740  52 7e fd eb                                      bl #0x459090
004f9744  01 30 a0 e3                                      mov r3, #1
004f9748  00 00 53 e3                                      cmp r3, #0
004f974c  04 30 8d e5                                      str r3, [sp, #4]
004f9750  0f 00 00 1a                                      bne #0x4f9794
004f9754  5d 30 84 e2                                      add r3, r4, #0x5d
004f9758  5e 20 84 e2                                      add r2, r4, #0x5e
004f975c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9760  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9764  02 00 53 e1                                      cmp r3, r2
004f9768  01 10 20 e0                                      eor r1, r0, r1
004f976c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9770  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9774  00 10 21 e0                                      eor r1, r1, r0
004f9778  01 10 c2 e5                                      strb r1, [r2, #1]
004f977c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9780  01 20 42 e2                                      sub r2, r2, #1
004f9784  00 10 21 e0                                      eor r1, r1, r0
004f9788  01 10 43 e5                                      strb r1, [r3, #-1]
004f978c  01 30 83 e2                                      add r3, r3, #1
004f9790  f1 ff ff 3a                                      blo #0x4f975c
004f9794  05 00 a0 e1                                      mov r0, r5
004f9798  60 10 84 e2                                      add r1, r4, #0x60
004f979c  3b 7e fd eb                                      bl #0x459090
004f97a0  01 30 a0 e3                                      mov r3, #1
004f97a4  00 00 53 e3                                      cmp r3, #0
004f97a8  04 30 8d e5                                      str r3, [sp, #4]
004f97ac  0f 00 00 1a                                      bne #0x4f97f0
004f97b0  61 30 84 e2                                      add r3, r4, #0x61
004f97b4  62 20 84 e2                                      add r2, r4, #0x62
004f97b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f97bc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f97c0  02 00 53 e1                                      cmp r3, r2
004f97c4  01 10 20 e0                                      eor r1, r0, r1
004f97c8  01 10 43 e5                                      strb r1, [r3, #-1]
004f97cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f97d0  00 10 21 e0                                      eor r1, r1, r0
004f97d4  01 10 c2 e5                                      strb r1, [r2, #1]
004f97d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f97dc  01 20 42 e2                                      sub r2, r2, #1
004f97e0  00 10 21 e0                                      eor r1, r1, r0
004f97e4  01 10 43 e5                                      strb r1, [r3, #-1]
004f97e8  01 30 83 e2                                      add r3, r3, #1
004f97ec  f1 ff ff 3a                                      blo #0x4f97b8
004f97f0  05 00 a0 e1                                      mov r0, r5
004f97f4  64 10 84 e2                                      add r1, r4, #0x64
004f97f8  24 7e fd eb                                      bl #0x459090
004f97fc  01 30 a0 e3                                      mov r3, #1
004f9800  00 00 53 e3                                      cmp r3, #0
004f9804  04 30 8d e5                                      str r3, [sp, #4]
004f9808  0f 00 00 1a                                      bne #0x4f984c
004f980c  65 30 84 e2                                      add r3, r4, #0x65
004f9810  66 20 84 e2                                      add r2, r4, #0x66
004f9814  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9818  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f981c  02 00 53 e1                                      cmp r3, r2
004f9820  01 10 20 e0                                      eor r1, r0, r1
004f9824  01 10 43 e5                                      strb r1, [r3, #-1]
004f9828  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f982c  00 10 21 e0                                      eor r1, r1, r0
004f9830  01 10 c2 e5                                      strb r1, [r2, #1]
004f9834  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9838  01 20 42 e2                                      sub r2, r2, #1
004f983c  00 10 21 e0                                      eor r1, r1, r0
004f9840  01 10 43 e5                                      strb r1, [r3, #-1]
004f9844  01 30 83 e2                                      add r3, r3, #1
004f9848  f1 ff ff 3a                                      blo #0x4f9814
004f984c  05 00 a0 e1                                      mov r0, r5
004f9850  68 10 84 e2                                      add r1, r4, #0x68
004f9854  0d 7e fd eb                                      bl #0x459090
004f9858  01 30 a0 e3                                      mov r3, #1
004f985c  00 00 53 e3                                      cmp r3, #0
004f9860  04 30 8d e5                                      str r3, [sp, #4]
004f9864  0f 00 00 1a                                      bne #0x4f98a8
004f9868  69 30 84 e2                                      add r3, r4, #0x69
004f986c  6a 20 84 e2                                      add r2, r4, #0x6a
004f9870  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9874  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9878  02 00 53 e1                                      cmp r3, r2
004f987c  01 10 20 e0                                      eor r1, r0, r1
004f9880  01 10 43 e5                                      strb r1, [r3, #-1]
004f9884  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9888  00 10 21 e0                                      eor r1, r1, r0
004f988c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9890  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9894  01 20 42 e2                                      sub r2, r2, #1
004f9898  00 10 21 e0                                      eor r1, r1, r0
004f989c  01 10 43 e5                                      strb r1, [r3, #-1]
004f98a0  01 30 83 e2                                      add r3, r3, #1
004f98a4  f1 ff ff 3a                                      blo #0x4f9870
004f98a8  05 00 a0 e1                                      mov r0, r5
004f98ac  6c 10 84 e2                                      add r1, r4, #0x6c
004f98b0  f6 7d fd eb                                      bl #0x459090
004f98b4  01 30 a0 e3                                      mov r3, #1
004f98b8  00 00 53 e3                                      cmp r3, #0
004f98bc  04 30 8d e5                                      str r3, [sp, #4]
004f98c0  0f 00 00 1a                                      bne #0x4f9904
004f98c4  6d 30 84 e2                                      add r3, r4, #0x6d
004f98c8  6e 20 84 e2                                      add r2, r4, #0x6e
004f98cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f98d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f98d4  02 00 53 e1                                      cmp r3, r2
004f98d8  01 10 20 e0                                      eor r1, r0, r1
004f98dc  01 10 43 e5                                      strb r1, [r3, #-1]
004f98e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f98e4  00 10 21 e0                                      eor r1, r1, r0
004f98e8  01 10 c2 e5                                      strb r1, [r2, #1]
004f98ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f98f0  01 20 42 e2                                      sub r2, r2, #1
004f98f4  00 10 21 e0                                      eor r1, r1, r0
004f98f8  01 10 43 e5                                      strb r1, [r3, #-1]
004f98fc  01 30 83 e2                                      add r3, r3, #1
004f9900  f1 ff ff 3a                                      blo #0x4f98cc
004f9904  05 00 a0 e1                                      mov r0, r5
004f9908  70 10 84 e2                                      add r1, r4, #0x70
004f990c  df 7d fd eb                                      bl #0x459090
004f9910  01 30 a0 e3                                      mov r3, #1
004f9914  00 00 53 e3                                      cmp r3, #0
004f9918  04 30 8d e5                                      str r3, [sp, #4]
004f991c  0f 00 00 1a                                      bne #0x4f9960
004f9920  71 30 84 e2                                      add r3, r4, #0x71
004f9924  72 20 84 e2                                      add r2, r4, #0x72
004f9928  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f992c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9930  02 00 53 e1                                      cmp r3, r2
004f9934  01 10 20 e0                                      eor r1, r0, r1
004f9938  01 10 43 e5                                      strb r1, [r3, #-1]
004f993c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9940  00 10 21 e0                                      eor r1, r1, r0
004f9944  01 10 c2 e5                                      strb r1, [r2, #1]
004f9948  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f994c  01 20 42 e2                                      sub r2, r2, #1
004f9950  00 10 21 e0                                      eor r1, r1, r0
004f9954  01 10 43 e5                                      strb r1, [r3, #-1]
004f9958  01 30 83 e2                                      add r3, r3, #1
004f995c  f1 ff ff 3a                                      blo #0x4f9928
004f9960  05 00 a0 e1                                      mov r0, r5
004f9964  74 10 84 e2                                      add r1, r4, #0x74
004f9968  c8 7d fd eb                                      bl #0x459090
004f996c  01 30 a0 e3                                      mov r3, #1
004f9970  00 00 53 e3                                      cmp r3, #0
004f9974  04 30 8d e5                                      str r3, [sp, #4]
004f9978  0f 00 00 1a                                      bne #0x4f99bc
004f997c  75 30 84 e2                                      add r3, r4, #0x75
004f9980  76 20 84 e2                                      add r2, r4, #0x76
004f9984  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9988  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f998c  02 00 53 e1                                      cmp r3, r2
004f9990  01 10 20 e0                                      eor r1, r0, r1
004f9994  01 10 43 e5                                      strb r1, [r3, #-1]
004f9998  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f999c  00 10 21 e0                                      eor r1, r1, r0
004f99a0  01 10 c2 e5                                      strb r1, [r2, #1]
004f99a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f99a8  01 20 42 e2                                      sub r2, r2, #1
004f99ac  00 10 21 e0                                      eor r1, r1, r0
004f99b0  01 10 43 e5                                      strb r1, [r3, #-1]
004f99b4  01 30 83 e2                                      add r3, r3, #1
004f99b8  f1 ff ff 3a                                      blo #0x4f9984
004f99bc  05 00 a0 e1                                      mov r0, r5
004f99c0  78 10 84 e2                                      add r1, r4, #0x78
004f99c4  b1 7d fd eb                                      bl #0x459090
004f99c8  01 30 a0 e3                                      mov r3, #1
004f99cc  00 00 53 e3                                      cmp r3, #0
004f99d0  04 30 8d e5                                      str r3, [sp, #4]
004f99d4  0f 00 00 1a                                      bne #0x4f9a18
004f99d8  79 30 84 e2                                      add r3, r4, #0x79
004f99dc  7a 20 84 e2                                      add r2, r4, #0x7a
004f99e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f99e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f99e8  02 00 53 e1                                      cmp r3, r2
004f99ec  01 10 20 e0                                      eor r1, r0, r1
004f99f0  01 10 43 e5                                      strb r1, [r3, #-1]
004f99f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f99f8  00 10 21 e0                                      eor r1, r1, r0
004f99fc  01 10 c2 e5                                      strb r1, [r2, #1]
004f9a00  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9a04  01 20 42 e2                                      sub r2, r2, #1
004f9a08  00 10 21 e0                                      eor r1, r1, r0
004f9a0c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9a10  01 30 83 e2                                      add r3, r3, #1
004f9a14  f1 ff ff 3a                                      blo #0x4f99e0
004f9a18  05 00 a0 e1                                      mov r0, r5
004f9a1c  7c 10 84 e2                                      add r1, r4, #0x7c
004f9a20  9a 7d fd eb                                      bl #0x459090
004f9a24  01 30 a0 e3                                      mov r3, #1
004f9a28  00 00 53 e3                                      cmp r3, #0
004f9a2c  04 30 8d e5                                      str r3, [sp, #4]
004f9a30  0f 00 00 1a                                      bne #0x4f9a74
004f9a34  7d 30 84 e2                                      add r3, r4, #0x7d
004f9a38  7e 20 84 e2                                      add r2, r4, #0x7e
004f9a3c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9a40  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9a44  02 00 53 e1                                      cmp r3, r2
004f9a48  01 10 20 e0                                      eor r1, r0, r1
004f9a4c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9a50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9a54  00 10 21 e0                                      eor r1, r1, r0
004f9a58  01 10 c2 e5                                      strb r1, [r2, #1]
004f9a5c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9a60  01 20 42 e2                                      sub r2, r2, #1
004f9a64  00 10 21 e0                                      eor r1, r1, r0
004f9a68  01 10 43 e5                                      strb r1, [r3, #-1]
004f9a6c  01 30 83 e2                                      add r3, r3, #1
004f9a70  f1 ff ff 3a                                      blo #0x4f9a3c
004f9a74  05 00 a0 e1                                      mov r0, r5
004f9a78  80 10 84 e2                                      add r1, r4, #0x80
004f9a7c  83 7d fd eb                                      bl #0x459090
004f9a80  01 30 a0 e3                                      mov r3, #1
004f9a84  00 00 53 e3                                      cmp r3, #0
004f9a88  04 30 8d e5                                      str r3, [sp, #4]
004f9a8c  0f 00 00 1a                                      bne #0x4f9ad0
004f9a90  81 30 84 e2                                      add r3, r4, #0x81
004f9a94  82 20 84 e2                                      add r2, r4, #0x82
004f9a98  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9a9c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9aa0  02 00 53 e1                                      cmp r3, r2
004f9aa4  01 10 20 e0                                      eor r1, r0, r1
004f9aa8  01 10 43 e5                                      strb r1, [r3, #-1]
004f9aac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9ab0  00 10 21 e0                                      eor r1, r1, r0
004f9ab4  01 10 c2 e5                                      strb r1, [r2, #1]
004f9ab8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9abc  01 20 42 e2                                      sub r2, r2, #1
004f9ac0  00 10 21 e0                                      eor r1, r1, r0
004f9ac4  01 10 43 e5                                      strb r1, [r3, #-1]
004f9ac8  01 30 83 e2                                      add r3, r3, #1
004f9acc  f1 ff ff 3a                                      blo #0x4f9a98
004f9ad0  05 00 a0 e1                                      mov r0, r5
004f9ad4  84 10 84 e2                                      add r1, r4, #0x84
004f9ad8  6c 7d fd eb                                      bl #0x459090
004f9adc  01 30 a0 e3                                      mov r3, #1
004f9ae0  00 00 53 e3                                      cmp r3, #0
004f9ae4  04 30 8d e5                                      str r3, [sp, #4]
004f9ae8  0f 00 00 1a                                      bne #0x4f9b2c
004f9aec  85 30 84 e2                                      add r3, r4, #0x85
004f9af0  86 20 84 e2                                      add r2, r4, #0x86
004f9af4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9af8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9afc  02 00 53 e1                                      cmp r3, r2
004f9b00  01 10 20 e0                                      eor r1, r0, r1
004f9b04  01 10 43 e5                                      strb r1, [r3, #-1]
004f9b08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9b0c  00 10 21 e0                                      eor r1, r1, r0
004f9b10  01 10 c2 e5                                      strb r1, [r2, #1]
004f9b14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9b18  01 20 42 e2                                      sub r2, r2, #1
004f9b1c  00 10 21 e0                                      eor r1, r1, r0
004f9b20  01 10 43 e5                                      strb r1, [r3, #-1]
004f9b24  01 30 83 e2                                      add r3, r3, #1
004f9b28  f1 ff ff 3a                                      blo #0x4f9af4
004f9b2c  05 00 a0 e1                                      mov r0, r5
004f9b30  88 10 84 e2                                      add r1, r4, #0x88
004f9b34  55 7d fd eb                                      bl #0x459090
004f9b38  01 30 a0 e3                                      mov r3, #1
004f9b3c  00 00 53 e3                                      cmp r3, #0
004f9b40  04 30 8d e5                                      str r3, [sp, #4]
004f9b44  0f 00 00 1a                                      bne #0x4f9b88
004f9b48  89 30 84 e2                                      add r3, r4, #0x89
004f9b4c  8a 20 84 e2                                      add r2, r4, #0x8a
004f9b50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9b54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9b58  02 00 53 e1                                      cmp r3, r2
004f9b5c  01 10 20 e0                                      eor r1, r0, r1
004f9b60  01 10 43 e5                                      strb r1, [r3, #-1]
004f9b64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9b68  00 10 21 e0                                      eor r1, r1, r0
004f9b6c  01 10 c2 e5                                      strb r1, [r2, #1]
004f9b70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9b74  01 20 42 e2                                      sub r2, r2, #1
004f9b78  00 10 21 e0                                      eor r1, r1, r0
004f9b7c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9b80  01 30 83 e2                                      add r3, r3, #1
004f9b84  f1 ff ff 3a                                      blo #0x4f9b50
004f9b88  05 00 a0 e1                                      mov r0, r5
004f9b8c  8c 10 84 e2                                      add r1, r4, #0x8c
004f9b90  3e 7d fd eb                                      bl #0x459090
004f9b94  01 30 a0 e3                                      mov r3, #1
004f9b98  00 00 53 e3                                      cmp r3, #0
004f9b9c  04 30 8d e5                                      str r3, [sp, #4]
004f9ba0  0f 00 00 1a                                      bne #0x4f9be4
004f9ba4  8d 30 84 e2                                      add r3, r4, #0x8d
004f9ba8  8e 20 84 e2                                      add r2, r4, #0x8e
004f9bac  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9bb0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9bb4  02 00 53 e1                                      cmp r3, r2
004f9bb8  01 10 20 e0                                      eor r1, r0, r1
004f9bbc  01 10 43 e5                                      strb r1, [r3, #-1]
004f9bc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9bc4  00 10 21 e0                                      eor r1, r1, r0
004f9bc8  01 10 c2 e5                                      strb r1, [r2, #1]
004f9bcc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9bd0  01 20 42 e2                                      sub r2, r2, #1
004f9bd4  00 10 21 e0                                      eor r1, r1, r0
004f9bd8  01 10 43 e5                                      strb r1, [r3, #-1]
004f9bdc  01 30 83 e2                                      add r3, r3, #1
004f9be0  f1 ff ff 3a                                      blo #0x4f9bac
004f9be4  05 00 a0 e1                                      mov r0, r5
004f9be8  90 10 84 e2                                      add r1, r4, #0x90
004f9bec  27 7d fd eb                                      bl #0x459090
004f9bf0  01 30 a0 e3                                      mov r3, #1
004f9bf4  00 00 53 e3                                      cmp r3, #0
004f9bf8  04 30 8d e5                                      str r3, [sp, #4]
004f9bfc  0f 00 00 1a                                      bne #0x4f9c40
004f9c00  91 30 84 e2                                      add r3, r4, #0x91
004f9c04  92 20 84 e2                                      add r2, r4, #0x92
004f9c08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9c0c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9c10  02 00 53 e1                                      cmp r3, r2
004f9c14  01 10 20 e0                                      eor r1, r0, r1
004f9c18  01 10 43 e5                                      strb r1, [r3, #-1]
004f9c1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9c20  00 10 21 e0                                      eor r1, r1, r0
004f9c24  01 10 c2 e5                                      strb r1, [r2, #1]
004f9c28  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9c2c  01 20 42 e2                                      sub r2, r2, #1
004f9c30  00 10 21 e0                                      eor r1, r1, r0
004f9c34  01 10 43 e5                                      strb r1, [r3, #-1]
004f9c38  01 30 83 e2                                      add r3, r3, #1
004f9c3c  f1 ff ff 3a                                      blo #0x4f9c08
004f9c40  05 00 a0 e1                                      mov r0, r5
004f9c44  94 10 84 e2                                      add r1, r4, #0x94
004f9c48  10 7d fd eb                                      bl #0x459090
004f9c4c  01 30 a0 e3                                      mov r3, #1
004f9c50  00 00 53 e3                                      cmp r3, #0
004f9c54  04 30 8d e5                                      str r3, [sp, #4]
004f9c58  0f 00 00 1a                                      bne #0x4f9c9c
004f9c5c  95 30 84 e2                                      add r3, r4, #0x95
004f9c60  96 20 84 e2                                      add r2, r4, #0x96
004f9c64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9c68  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9c6c  02 00 53 e1                                      cmp r3, r2
004f9c70  01 10 20 e0                                      eor r1, r0, r1
004f9c74  01 10 43 e5                                      strb r1, [r3, #-1]
004f9c78  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9c7c  00 10 21 e0                                      eor r1, r1, r0
004f9c80  01 10 c2 e5                                      strb r1, [r2, #1]
004f9c84  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9c88  01 20 42 e2                                      sub r2, r2, #1
004f9c8c  00 10 21 e0                                      eor r1, r1, r0
004f9c90  01 10 43 e5                                      strb r1, [r3, #-1]
004f9c94  01 30 83 e2                                      add r3, r3, #1
004f9c98  f1 ff ff 3a                                      blo #0x4f9c64
004f9c9c  05 00 a0 e1                                      mov r0, r5
004f9ca0  98 10 84 e2                                      add r1, r4, #0x98
004f9ca4  f9 7c fd eb                                      bl #0x459090
004f9ca8  01 30 a0 e3                                      mov r3, #1
004f9cac  00 00 53 e3                                      cmp r3, #0
004f9cb0  04 30 8d e5                                      str r3, [sp, #4]
004f9cb4  0f 00 00 1a                                      bne #0x4f9cf8
004f9cb8  99 30 84 e2                                      add r3, r4, #0x99
004f9cbc  9a 20 84 e2                                      add r2, r4, #0x9a
004f9cc0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9cc4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9cc8  02 00 53 e1                                      cmp r3, r2
004f9ccc  01 10 20 e0                                      eor r1, r0, r1
004f9cd0  01 10 43 e5                                      strb r1, [r3, #-1]
004f9cd4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9cd8  00 10 21 e0                                      eor r1, r1, r0
004f9cdc  01 10 c2 e5                                      strb r1, [r2, #1]
004f9ce0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9ce4  01 20 42 e2                                      sub r2, r2, #1
004f9ce8  00 10 21 e0                                      eor r1, r1, r0
004f9cec  01 10 43 e5                                      strb r1, [r3, #-1]
004f9cf0  01 30 83 e2                                      add r3, r3, #1
004f9cf4  f1 ff ff 3a                                      blo #0x4f9cc0
004f9cf8  05 00 a0 e1                                      mov r0, r5
004f9cfc  9c 10 84 e2                                      add r1, r4, #0x9c
004f9d00  e2 7c fd eb                                      bl #0x459090
004f9d04  01 30 a0 e3                                      mov r3, #1
004f9d08  00 00 53 e3                                      cmp r3, #0
004f9d0c  04 30 8d e5                                      str r3, [sp, #4]
004f9d10  0f 00 00 1a                                      bne #0x4f9d54
004f9d14  9d 30 84 e2                                      add r3, r4, #0x9d
004f9d18  9e 20 84 e2                                      add r2, r4, #0x9e
004f9d1c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9d20  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f9d24  02 00 53 e1                                      cmp r3, r2
004f9d28  01 10 20 e0                                      eor r1, r0, r1
004f9d2c  01 10 43 e5                                      strb r1, [r3, #-1]
004f9d30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f9d34  00 10 21 e0                                      eor r1, r1, r0
004f9d38  01 10 c2 e5                                      strb r1, [r2, #1]
004f9d3c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f9d40  01 20 42 e2                                      sub r2, r2, #1
004f9d44  00 10 21 e0                                      eor r1, r1, r0
004f9d48  01 10 43 e5                                      strb r1, [r3, #-1]
004f9d4c  01 30 83 e2                                      add r3, r3, #1
004f9d50  f1 ff ff 3a                                      blo #0x4f9d1c
004f9d54  05 00 a0 e1                                      mov r0, r5
004f9d58  a0 10 84 e2                                      add r1, r4, #0xa0
004f9d5c  cb 7c fd eb                                      bl #0x459090
004f9d60  01 30 a0 e3                                      mov r3, #1
004f9d64  00 00 53 e3                                      cmp r3, #0
004f9d68  04 30 8d e5                                      str r3, [sp, #4]
004f9d6c  0f 00 00 1a                                      bne #0x4f9db0
004f9d70  a2 30 84 e2                                      add r3, r4, #0xa2
004f9d74  a1 40 84 e2                                      add r4, r4, #0xa1
004f9d78  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f9d7c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f9d80  03 00 54 e1                                      cmp r4, r3
004f9d84  02 20 21 e0                                      eor r2, r1, r2
004f9d88  01 20 44 e5                                      strb r2, [r4, #-1]
004f9d8c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f9d90  01 20 22 e0                                      eor r2, r2, r1
004f9d94  01 20 c3 e5                                      strb r2, [r3, #1]
004f9d98  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f9d9c  01 30 43 e2                                      sub r3, r3, #1
004f9da0  01 20 22 e0                                      eor r2, r2, r1
004f9da4  01 20 44 e5                                      strb r2, [r4, #-1]
004f9da8  01 40 84 e2                                      add r4, r4, #1
004f9dac  f1 ff ff 3a                                      blo #0x4f9d78
004f9db0  08 d0 8d e2                                      add sp, sp, #8
004f9db4  70 80 bd e8                                      pop {r4, r5, r6, pc}
