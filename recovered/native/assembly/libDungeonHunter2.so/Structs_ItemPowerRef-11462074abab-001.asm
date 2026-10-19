; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d573c, declared_size=100, range_size=100, mode=arm
; class-group: Structs::ItemPowerRef
; alias: _ZN7Structs12ItemPowerRef8finalizeEv
; demangled: Structs::ItemPowerRef::finalize()
; decoder-mode: arm
004d573c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5740  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5744  00 50 a0 e1                                      mov r5, r0
004d5748  00 00 53 e3                                      cmp r3, #0
004d574c  12 00 00 0a                                      beq #0x4d579c
004d5750  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5754  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5758  00 00 53 e1                                      cmp r3, r0
004d575c  01 00 00 1a                                      bne #0x4d5768
004d5760  08 00 00 ea                                      b #0x4d5788
004d5764  04 00 a0 e1                                      mov r0, r4
004d5768  10 40 40 e2                                      sub r4, r0, #0x10
004d576c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5770  04 00 a0 e1                                      mov r0, r4
004d5774  0f e0 a0 e1                                      mov lr, pc
004d5778  00 f0 93 e5                                      ldr pc, [r3]
004d577c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5780  04 00 50 e1                                      cmp r0, r4
004d5784  f6 ff ff 1a                                      bne #0x4d5764
004d5788  08 00 40 e2                                      sub r0, r0, #8
004d578c  2b eb f8 eb                                      bl #0x310440
004d5790  00 30 a0 e3                                      mov r3, #0
004d5794  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5798  10 30 85 e5                                      str r3, [r5, #0x10]
004d579c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d6958, declared_size=124, range_size=124, mode=arm
; class-group: Structs::ItemPowerRef
; alias: _ZN7Structs12ItemPowerRefD1Ev
; demangled: Structs::ItemPowerRef::~ItemPowerRef()
; decoder-mode: arm
004d6958  70 40 2d e9                                      push {r4, r5, r6, lr}
004d695c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d6960  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d6964  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6968  03 30 8f e0                                      add r3, pc, r3
004d696c  02 20 93 e7                                      ldr r2, [r3, r2]
004d6970  00 00 51 e3                                      cmp r1, #0
004d6974  00 50 a0 e1                                      mov r5, r0
004d6978  08 20 82 e2                                      add r2, r2, #8
004d697c  00 20 80 e5                                      str r2, [r0]
004d6980  0f 00 00 0a                                      beq #0x4d69c4
004d6984  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6988  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d698c  00 00 51 e1                                      cmp r1, r0
004d6990  01 00 00 1a                                      bne #0x4d699c
004d6994  08 00 00 ea                                      b #0x4d69bc
004d6998  04 00 a0 e1                                      mov r0, r4
004d699c  10 40 40 e2                                      sub r4, r0, #0x10
004d69a0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d69a4  04 00 a0 e1                                      mov r0, r4
004d69a8  0f e0 a0 e1                                      mov lr, pc
004d69ac  00 f0 93 e5                                      ldr pc, [r3]
004d69b0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d69b4  04 00 50 e1                                      cmp r0, r4
004d69b8  f6 ff ff 1a                                      bne #0x4d6998
004d69bc  08 00 40 e2                                      sub r0, r0, #8
004d69c0  9e e6 f8 eb                                      bl #0x310440
004d69c4  05 00 a0 e1                                      mov r0, r5
004d69c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d69cc  28 e1 4b 00 c8 21 00 00                          .byte 0x28, 0xe1, 0x4b, 0x00, 0xc8, 0x21, 0x00, 0x00

; FUNCTION 0x004d69d4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerRef
; alias: _ZN7Structs12ItemPowerRefD0Ev
; demangled: Structs::ItemPowerRef::~ItemPowerRef()
; decoder-mode: arm
004d69d4  10 40 2d e9                                      push {r4, lr}
004d69d8  00 40 a0 e1                                      mov r4, r0
004d69dc  dd ff ff eb                                      bl #0x4d6958
004d69e0  04 00 a0 e1                                      mov r0, r4
004d69e4  95 e6 f8 eb                                      bl #0x310440
004d69e8  04 00 a0 e1                                      mov r0, r4
004d69ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d69f0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::ItemPowerRef
; alias: _ZN7Structs12ItemPowerRefD2Ev
; demangled: Structs::ItemPowerRef::~ItemPowerRef()
; decoder-mode: arm
004d69f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d69f4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d69f8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d69fc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d6a00  03 30 8f e0                                      add r3, pc, r3
004d6a04  02 20 93 e7                                      ldr r2, [r3, r2]
004d6a08  00 00 51 e3                                      cmp r1, #0
004d6a0c  00 50 a0 e1                                      mov r5, r0
004d6a10  08 20 82 e2                                      add r2, r2, #8
004d6a14  00 20 80 e5                                      str r2, [r0]
004d6a18  0f 00 00 0a                                      beq #0x4d6a5c
004d6a1c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d6a20  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d6a24  00 00 51 e1                                      cmp r1, r0
004d6a28  01 00 00 1a                                      bne #0x4d6a34
004d6a2c  08 00 00 ea                                      b #0x4d6a54
004d6a30  04 00 a0 e1                                      mov r0, r4
004d6a34  10 40 40 e2                                      sub r4, r0, #0x10
004d6a38  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6a3c  04 00 a0 e1                                      mov r0, r4
004d6a40  0f e0 a0 e1                                      mov lr, pc
004d6a44  00 f0 93 e5                                      ldr pc, [r3]
004d6a48  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6a4c  04 00 50 e1                                      cmp r0, r4
004d6a50  f6 ff ff 1a                                      bne #0x4d6a30
004d6a54  08 00 40 e2                                      sub r0, r0, #8
004d6a58  78 e6 f8 eb                                      bl #0x310440
004d6a5c  05 00 a0 e1                                      mov r0, r5
004d6a60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d6a64  90 e0 4b 00 c8 21 00 00                          .byte 0x90, 0xe0, 0x4b, 0x00, 0xc8, 0x21, 0x00, 0x00

; FUNCTION 0x004ecdc8, declared_size=912, range_size=912, mode=arm
; class-group: Structs::ItemPowerRef
; alias: _ZN7Structs12ItemPowerRef4readEP11IStreamBase
; demangled: Structs::ItemPowerRef::read(IStreamBase*)
; decoder-mode: arm
004ecdc8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004ecdcc  00 50 a0 e1                                      mov r5, r0
004ecdd0  0c d0 4d e2                                      sub sp, sp, #0xc
004ecdd4  01 00 a0 e1                                      mov r0, r1
004ecdd8  01 60 a0 e1                                      mov r6, r1
004ecddc  04 10 85 e2                                      add r1, r5, #4
004ecde0  05 bb ff eb                                      bl #0x4db9fc
004ecde4  64 73 9f e5                                      ldr r7, [pc, #0x364]
004ecde8  06 00 a0 e1                                      mov r0, r6
004ecdec  08 10 85 e2                                      add r1, r5, #8
004ecdf0  a6 b0 fd eb                                      bl #0x459090
004ecdf4  01 30 a0 e3                                      mov r3, #1
004ecdf8  00 00 53 e3                                      cmp r3, #0
004ecdfc  04 30 8d e5                                      str r3, [sp, #4]
004ece00  07 70 8f e0                                      add r7, pc, r7
004ece04  0f 00 00 1a                                      bne #0x4ece48
004ece08  09 30 85 e2                                      add r3, r5, #9
004ece0c  0a 20 85 e2                                      add r2, r5, #0xa
004ece10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ece14  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ece18  02 00 53 e1                                      cmp r3, r2
004ece1c  01 10 20 e0                                      eor r1, r0, r1
004ece20  01 10 43 e5                                      strb r1, [r3, #-1]
004ece24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ece28  00 10 21 e0                                      eor r1, r1, r0
004ece2c  01 10 c2 e5                                      strb r1, [r2, #1]
004ece30  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ece34  01 20 42 e2                                      sub r2, r2, #1
004ece38  00 10 21 e0                                      eor r1, r1, r0
004ece3c  01 10 43 e5                                      strb r1, [r3, #-1]
004ece40  01 30 83 e2                                      add r3, r3, #1
004ece44  f1 ff ff 3a                                      blo #0x4ece10
004ece48  06 00 a0 e1                                      mov r0, r6
004ece4c  0c 10 85 e2                                      add r1, r5, #0xc
004ece50  d2 c8 fb eb                                      bl #0x3df1a0
004ece54  01 30 a0 e3                                      mov r3, #1
004ece58  00 00 53 e3                                      cmp r3, #0
004ece5c  04 30 8d e5                                      str r3, [sp, #4]
004ece60  0f 00 00 1a                                      bne #0x4ecea4
004ece64  0d 30 85 e2                                      add r3, r5, #0xd
004ece68  0e 20 85 e2                                      add r2, r5, #0xe
004ece6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ece70  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ece74  02 00 53 e1                                      cmp r3, r2
004ece78  01 10 20 e0                                      eor r1, r0, r1
004ece7c  01 10 43 e5                                      strb r1, [r3, #-1]
004ece80  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ece84  00 10 21 e0                                      eor r1, r1, r0
004ece88  01 10 c2 e5                                      strb r1, [r2, #1]
004ece8c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ece90  01 20 42 e2                                      sub r2, r2, #1
004ece94  00 10 21 e0                                      eor r1, r1, r0
004ece98  01 10 43 e5                                      strb r1, [r3, #-1]
004ece9c  01 30 83 e2                                      add r3, r3, #1
004ecea0  f1 ff ff 3a                                      blo #0x4ece6c
004ecea4  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ecea8  00 00 53 e3                                      cmp r3, #0
004eceac  0f 00 00 0a                                      beq #0x4ecef0
004eceb0  04 00 13 e5                                      ldr r0, [r3, #-4]
004eceb4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004eceb8  00 00 53 e1                                      cmp r3, r0
004ecebc  01 00 00 1a                                      bne #0x4ecec8
004ecec0  08 00 00 ea                                      b #0x4ecee8
004ecec4  04 00 a0 e1                                      mov r0, r4
004ecec8  10 40 40 e2                                      sub r4, r0, #0x10
004ececc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004eced0  04 00 a0 e1                                      mov r0, r4
004eced4  0f e0 a0 e1                                      mov lr, pc
004eced8  00 f0 93 e5                                      ldr pc, [r3]
004ecedc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004ecee0  04 00 50 e1                                      cmp r0, r4
004ecee4  f6 ff ff 1a                                      bne #0x4ecec4
004ecee8  08 00 40 e2                                      sub r0, r0, #8
004eceec  53 8d f8 eb                                      bl #0x310440
004ecef0  0c 40 95 e5                                      ldr r4, [r5, #0xc]
004ecef4  01 10 a0 e3                                      mov r1, #1
004ecef8  04 02 a0 e1                                      lsl r0, r4, #4
004ecefc  08 00 80 e2                                      add r0, r0, #8
004ecf00  99 8d f8 eb                                      bl #0x31056c
004ecf04  10 30 a0 e3                                      mov r3, #0x10
004ecf08  00 00 54 e3                                      cmp r4, #0
004ecf0c  18 00 80 e8                                      stm r0, {r3, r4}
004ecf10  08 30 80 e2                                      add r3, r0, #8
004ecf14  08 00 00 0a                                      beq #0x4ecf3c
004ecf18  34 12 9f e5                                      ldr r1, [pc, #0x234]
004ecf1c  00 20 a0 e3                                      mov r2, #0
004ecf20  01 10 97 e7                                      ldr r1, [r7, r1]
004ecf24  08 10 81 e2                                      add r1, r1, #8
004ecf28  01 20 82 e2                                      add r2, r2, #1
004ecf2c  04 00 52 e1                                      cmp r2, r4
004ecf30  08 10 80 e5                                      str r1, [r0, #8]
004ecf34  10 00 80 e2                                      add r0, r0, #0x10
004ecf38  fa ff ff 1a                                      bne #0x4ecf28
004ecf3c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004ecf40  10 30 85 e5                                      str r3, [r5, #0x10]
004ecf44  00 00 52 e3                                      cmp r2, #0
004ecf48  0b 00 00 0a                                      beq #0x4ecf7c
004ecf4c  00 40 a0 e3                                      mov r4, #0
004ecf50  00 00 00 ea                                      b #0x4ecf58
004ecf54  10 30 95 e5                                      ldr r3, [r5, #0x10]
004ecf58  04 02 83 e0                                      add r0, r3, r4, lsl #4
004ecf5c  06 10 a0 e1                                      mov r1, r6
004ecf60  04 32 93 e7                                      ldr r3, [r3, r4, lsl #4]
004ecf64  0f e0 a0 e1                                      mov lr, pc
004ecf68  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ecf6c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004ecf70  01 40 84 e2                                      add r4, r4, #1
004ecf74  04 00 53 e1                                      cmp r3, r4
004ecf78  f5 ff ff 8a                                      bhi #0x4ecf54
004ecf7c  06 00 a0 e1                                      mov r0, r6
004ecf80  14 10 85 e2                                      add r1, r5, #0x14
004ecf84  41 b0 fd eb                                      bl #0x459090
004ecf88  01 30 a0 e3                                      mov r3, #1
004ecf8c  00 00 53 e3                                      cmp r3, #0
004ecf90  04 30 8d e5                                      str r3, [sp, #4]
004ecf94  0f 00 00 1a                                      bne #0x4ecfd8
004ecf98  15 30 85 e2                                      add r3, r5, #0x15
004ecf9c  16 20 85 e2                                      add r2, r5, #0x16
004ecfa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecfa4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecfa8  02 00 53 e1                                      cmp r3, r2
004ecfac  01 10 20 e0                                      eor r1, r0, r1
004ecfb0  01 10 43 e5                                      strb r1, [r3, #-1]
004ecfb4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecfb8  00 10 21 e0                                      eor r1, r1, r0
004ecfbc  01 10 c2 e5                                      strb r1, [r2, #1]
004ecfc0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecfc4  01 20 42 e2                                      sub r2, r2, #1
004ecfc8  00 10 21 e0                                      eor r1, r1, r0
004ecfcc  01 10 43 e5                                      strb r1, [r3, #-1]
004ecfd0  01 30 83 e2                                      add r3, r3, #1
004ecfd4  f1 ff ff 3a                                      blo #0x4ecfa0
004ecfd8  06 00 a0 e1                                      mov r0, r6
004ecfdc  18 10 85 e2                                      add r1, r5, #0x18
004ecfe0  2a b0 fd eb                                      bl #0x459090
004ecfe4  01 30 a0 e3                                      mov r3, #1
004ecfe8  00 00 53 e3                                      cmp r3, #0
004ecfec  04 30 8d e5                                      str r3, [sp, #4]
004ecff0  0f 00 00 1a                                      bne #0x4ed034
004ecff4  19 30 85 e2                                      add r3, r5, #0x19
004ecff8  1a 20 85 e2                                      add r2, r5, #0x1a
004ecffc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed000  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed004  02 00 53 e1                                      cmp r3, r2
004ed008  01 10 20 e0                                      eor r1, r0, r1
004ed00c  01 10 43 e5                                      strb r1, [r3, #-1]
004ed010  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed014  00 10 21 e0                                      eor r1, r1, r0
004ed018  01 10 c2 e5                                      strb r1, [r2, #1]
004ed01c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed020  01 20 42 e2                                      sub r2, r2, #1
004ed024  00 10 21 e0                                      eor r1, r1, r0
004ed028  01 10 43 e5                                      strb r1, [r3, #-1]
004ed02c  01 30 83 e2                                      add r3, r3, #1
004ed030  f1 ff ff 3a                                      blo #0x4ecffc
004ed034  06 00 a0 e1                                      mov r0, r6
004ed038  1c 10 85 e2                                      add r1, r5, #0x1c
004ed03c  13 b0 fd eb                                      bl #0x459090
004ed040  01 30 a0 e3                                      mov r3, #1
004ed044  00 00 53 e3                                      cmp r3, #0
004ed048  04 30 8d e5                                      str r3, [sp, #4]
004ed04c  0f 00 00 1a                                      bne #0x4ed090
004ed050  1d 30 85 e2                                      add r3, r5, #0x1d
004ed054  1e 20 85 e2                                      add r2, r5, #0x1e
004ed058  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed05c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed060  02 00 53 e1                                      cmp r3, r2
004ed064  01 10 20 e0                                      eor r1, r0, r1
004ed068  01 10 43 e5                                      strb r1, [r3, #-1]
004ed06c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed070  00 10 21 e0                                      eor r1, r1, r0
004ed074  01 10 c2 e5                                      strb r1, [r2, #1]
004ed078  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed07c  01 20 42 e2                                      sub r2, r2, #1
004ed080  00 10 21 e0                                      eor r1, r1, r0
004ed084  01 10 43 e5                                      strb r1, [r3, #-1]
004ed088  01 30 83 e2                                      add r3, r3, #1
004ed08c  f1 ff ff 3a                                      blo #0x4ed058
004ed090  06 00 a0 e1                                      mov r0, r6
004ed094  20 10 85 e2                                      add r1, r5, #0x20
004ed098  fc af fd eb                                      bl #0x459090
004ed09c  01 30 a0 e3                                      mov r3, #1
004ed0a0  00 00 53 e3                                      cmp r3, #0
004ed0a4  04 30 8d e5                                      str r3, [sp, #4]
004ed0a8  0f 00 00 1a                                      bne #0x4ed0ec
004ed0ac  21 30 85 e2                                      add r3, r5, #0x21
004ed0b0  22 20 85 e2                                      add r2, r5, #0x22
004ed0b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed0b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ed0bc  02 00 53 e1                                      cmp r3, r2
004ed0c0  01 10 20 e0                                      eor r1, r0, r1
004ed0c4  01 10 43 e5                                      strb r1, [r3, #-1]
004ed0c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ed0cc  00 10 21 e0                                      eor r1, r1, r0
004ed0d0  01 10 c2 e5                                      strb r1, [r2, #1]
004ed0d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ed0d8  01 20 42 e2                                      sub r2, r2, #1
004ed0dc  00 10 21 e0                                      eor r1, r1, r0
004ed0e0  01 10 43 e5                                      strb r1, [r3, #-1]
004ed0e4  01 30 83 e2                                      add r3, r3, #1
004ed0e8  f1 ff ff 3a                                      blo #0x4ed0b4
004ed0ec  06 00 a0 e1                                      mov r0, r6
004ed0f0  24 10 85 e2                                      add r1, r5, #0x24
004ed0f4  e5 af fd eb                                      bl #0x459090
004ed0f8  01 30 a0 e3                                      mov r3, #1
004ed0fc  00 00 53 e3                                      cmp r3, #0
004ed100  04 30 8d e5                                      str r3, [sp, #4]
004ed104  0f 00 00 1a                                      bne #0x4ed148
004ed108  26 30 85 e2                                      add r3, r5, #0x26
004ed10c  25 50 85 e2                                      add r5, r5, #0x25
004ed110  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed114  01 20 55 e5                                      ldrb r2, [r5, #-1]
004ed118  03 00 55 e1                                      cmp r5, r3
004ed11c  02 20 21 e0                                      eor r2, r1, r2
004ed120  01 20 45 e5                                      strb r2, [r5, #-1]
004ed124  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ed128  01 20 22 e0                                      eor r2, r2, r1
004ed12c  01 20 c3 e5                                      strb r2, [r3, #1]
004ed130  01 10 55 e5                                      ldrb r1, [r5, #-1]
004ed134  01 30 43 e2                                      sub r3, r3, #1
004ed138  01 20 22 e0                                      eor r2, r2, r1
004ed13c  01 20 45 e5                                      strb r2, [r5, #-1]
004ed140  01 50 85 e2                                      add r5, r5, #1
004ed144  f1 ff ff 3a                                      blo #0x4ed110
004ed148  0c d0 8d e2                                      add sp, sp, #0xc
004ed14c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004ed150  90 7c 4a 00 b8 13 00 00                          .byte 0x90, 0x7c, 0x4a, 0x00, 0xb8, 0x13, 0x00, 0x00
