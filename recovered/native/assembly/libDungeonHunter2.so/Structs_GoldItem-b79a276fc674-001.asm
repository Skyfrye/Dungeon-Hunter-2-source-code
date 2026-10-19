; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4860, declared_size=76, range_size=76, mode=arm
; class-group: Structs::GoldItem
; alias: _ZN7Structs8GoldItem8finalizeEv
; demangled: Structs::GoldItem::finalize()
; decoder-mode: arm
004d4860  10 40 2d e9                                      push {r4, lr}
004d4864  00 40 a0 e1                                      mov r4, r0
004d4868  08 00 90 e5                                      ldr r0, [r0, #8]
004d486c  00 00 50 e3                                      cmp r0, #0
004d4870  03 00 00 0a                                      beq #0x4d4884
004d4874  f1 ee f8 eb                                      bl #0x310440
004d4878  00 30 a0 e3                                      mov r3, #0
004d487c  04 30 84 e5                                      str r3, [r4, #4]
004d4880  08 30 84 e5                                      str r3, [r4, #8]
004d4884  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4888  00 00 50 e3                                      cmp r0, #0
004d488c  03 00 00 0a                                      beq #0x4d48a0
004d4890  ea ee f8 eb                                      bl #0x310440
004d4894  00 30 a0 e3                                      mov r3, #0
004d4898  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d489c  50 30 84 e5                                      str r3, [r4, #0x50]
004d48a0  04 00 a0 e1                                      mov r0, r4
004d48a4  10 40 bd e8                                      pop {r4, lr}
004d48a8  11 ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d5258, declared_size=88, range_size=88, mode=arm
; class-group: Structs::GoldItem
; alias: _ZN7Structs8GoldItemD1Ev
; demangled: Structs::GoldItem::~GoldItem()
; decoder-mode: arm
004d5258  10 40 2d e9                                      push {r4, lr}
004d525c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d5260  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5264  00 40 a0 e1                                      mov r4, r0
004d5268  03 30 8f e0                                      add r3, pc, r3
004d526c  08 00 90 e5                                      ldr r0, [r0, #8]
004d5270  02 20 93 e7                                      ldr r2, [r3, r2]
004d5274  00 00 50 e3                                      cmp r0, #0
004d5278  08 20 82 e2                                      add r2, r2, #8
004d527c  00 20 84 e5                                      str r2, [r4]
004d5280  00 00 00 0a                                      beq #0x4d5288
004d5284  6d ec f8 eb                                      bl #0x310440
004d5288  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d528c  00 00 50 e3                                      cmp r0, #0
004d5290  00 00 00 0a                                      beq #0x4d5298
004d5294  69 ec f8 eb                                      bl #0x310440
004d5298  04 00 a0 e1                                      mov r0, r4
004d529c  ac fd ff eb                                      bl #0x4d4954
004d52a0  04 00 a0 e1                                      mov r0, r4
004d52a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d52a8  28 f8 4b 00 b0 28 00 00                          .byte 0x28, 0xf8, 0x4b, 0x00, 0xb0, 0x28, 0x00, 0x00

; FUNCTION 0x004d52b0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GoldItem
; alias: _ZN7Structs8GoldItemD0Ev
; demangled: Structs::GoldItem::~GoldItem()
; decoder-mode: arm
004d52b0  10 40 2d e9                                      push {r4, lr}
004d52b4  00 40 a0 e1                                      mov r4, r0
004d52b8  e6 ff ff eb                                      bl #0x4d5258
004d52bc  04 00 a0 e1                                      mov r0, r4
004d52c0  5e ec f8 eb                                      bl #0x310440
004d52c4  04 00 a0 e1                                      mov r0, r4
004d52c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d52cc, declared_size=88, range_size=88, mode=arm
; class-group: Structs::GoldItem
; alias: _ZN7Structs8GoldItemD2Ev
; demangled: Structs::GoldItem::~GoldItem()
; decoder-mode: arm
004d52cc  10 40 2d e9                                      push {r4, lr}
004d52d0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d52d4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d52d8  00 40 a0 e1                                      mov r4, r0
004d52dc  03 30 8f e0                                      add r3, pc, r3
004d52e0  08 00 90 e5                                      ldr r0, [r0, #8]
004d52e4  02 20 93 e7                                      ldr r2, [r3, r2]
004d52e8  00 00 50 e3                                      cmp r0, #0
004d52ec  08 20 82 e2                                      add r2, r2, #8
004d52f0  00 20 84 e5                                      str r2, [r4]
004d52f4  00 00 00 0a                                      beq #0x4d52fc
004d52f8  50 ec f8 eb                                      bl #0x310440
004d52fc  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d5300  00 00 50 e3                                      cmp r0, #0
004d5304  00 00 00 0a                                      beq #0x4d530c
004d5308  4c ec f8 eb                                      bl #0x310440
004d530c  04 00 a0 e1                                      mov r0, r4
004d5310  8f fd ff eb                                      bl #0x4d4954
004d5314  04 00 a0 e1                                      mov r0, r4
004d5318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d531c  b4 f7 4b 00 b0 28 00 00                          .byte 0xb4, 0xf7, 0x4b, 0x00, 0xb0, 0x28, 0x00, 0x00

; FUNCTION 0x004fb7c0, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::GoldItem
; alias: _ZN7Structs8GoldItem4readEP11IStreamBase
; demangled: Structs::GoldItem::read(IStreamBase*)
; decoder-mode: arm
004fb7c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004fb7c4  00 40 a0 e1                                      mov r4, r0
004fb7c8  08 d0 4d e2                                      sub sp, sp, #8
004fb7cc  01 50 a0 e1                                      mov r5, r1
004fb7d0  29 c3 ff eb                                      bl #0x4ec47c
004fb7d4  05 00 a0 e1                                      mov r0, r5
004fb7d8  44 10 84 e2                                      add r1, r4, #0x44
004fb7dc  2b 76 fd eb                                      bl #0x459090
004fb7e0  01 30 a0 e3                                      mov r3, #1
004fb7e4  00 00 53 e3                                      cmp r3, #0
004fb7e8  04 30 8d e5                                      str r3, [sp, #4]
004fb7ec  0f 00 00 1a                                      bne #0x4fb830
004fb7f0  45 30 84 e2                                      add r3, r4, #0x45
004fb7f4  46 20 84 e2                                      add r2, r4, #0x46
004fb7f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb7fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb800  02 00 53 e1                                      cmp r3, r2
004fb804  01 10 20 e0                                      eor r1, r0, r1
004fb808  01 10 43 e5                                      strb r1, [r3, #-1]
004fb80c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb810  00 10 21 e0                                      eor r1, r1, r0
004fb814  01 10 c2 e5                                      strb r1, [r2, #1]
004fb818  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb81c  01 20 42 e2                                      sub r2, r2, #1
004fb820  00 10 21 e0                                      eor r1, r1, r0
004fb824  01 10 43 e5                                      strb r1, [r3, #-1]
004fb828  01 30 83 e2                                      add r3, r3, #1
004fb82c  f1 ff ff 3a                                      blo #0x4fb7f8
004fb830  05 00 a0 e1                                      mov r0, r5
004fb834  48 10 84 e2                                      add r1, r4, #0x48
004fb838  14 76 fd eb                                      bl #0x459090
004fb83c  01 30 a0 e3                                      mov r3, #1
004fb840  00 00 53 e3                                      cmp r3, #0
004fb844  04 30 8d e5                                      str r3, [sp, #4]
004fb848  0f 00 00 1a                                      bne #0x4fb88c
004fb84c  49 30 84 e2                                      add r3, r4, #0x49
004fb850  4a 20 84 e2                                      add r2, r4, #0x4a
004fb854  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb858  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb85c  02 00 53 e1                                      cmp r3, r2
004fb860  01 10 20 e0                                      eor r1, r0, r1
004fb864  01 10 43 e5                                      strb r1, [r3, #-1]
004fb868  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb86c  00 10 21 e0                                      eor r1, r1, r0
004fb870  01 10 c2 e5                                      strb r1, [r2, #1]
004fb874  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb878  01 20 42 e2                                      sub r2, r2, #1
004fb87c  00 10 21 e0                                      eor r1, r1, r0
004fb880  01 10 43 e5                                      strb r1, [r3, #-1]
004fb884  01 30 83 e2                                      add r3, r3, #1
004fb888  f1 ff ff 3a                                      blo #0x4fb854
004fb88c  05 00 a0 e1                                      mov r0, r5
004fb890  4c 10 84 e2                                      add r1, r4, #0x4c
004fb894  41 8e fb eb                                      bl #0x3df1a0
004fb898  01 30 a0 e3                                      mov r3, #1
004fb89c  00 00 53 e3                                      cmp r3, #0
004fb8a0  04 30 8d e5                                      str r3, [sp, #4]
004fb8a4  0f 00 00 1a                                      bne #0x4fb8e8
004fb8a8  4d 30 84 e2                                      add r3, r4, #0x4d
004fb8ac  4e 20 84 e2                                      add r2, r4, #0x4e
004fb8b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb8b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb8b8  02 00 53 e1                                      cmp r3, r2
004fb8bc  01 10 20 e0                                      eor r1, r0, r1
004fb8c0  01 10 43 e5                                      strb r1, [r3, #-1]
004fb8c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb8c8  00 10 21 e0                                      eor r1, r1, r0
004fb8cc  01 10 c2 e5                                      strb r1, [r2, #1]
004fb8d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb8d4  01 20 42 e2                                      sub r2, r2, #1
004fb8d8  00 10 21 e0                                      eor r1, r1, r0
004fb8dc  01 10 43 e5                                      strb r1, [r3, #-1]
004fb8e0  01 30 83 e2                                      add r3, r3, #1
004fb8e4  f1 ff ff 3a                                      blo #0x4fb8b0
004fb8e8  50 00 94 e5                                      ldr r0, [r4, #0x50]
004fb8ec  00 00 50 e3                                      cmp r0, #0
004fb8f0  00 00 00 0a                                      beq #0x4fb8f8
004fb8f4  d1 52 f8 eb                                      bl #0x310440
004fb8f8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004fb8fc  01 10 a0 e3                                      mov r1, #1
004fb900  00 60 a0 e3                                      mov r6, #0
004fb904  01 00 80 e0                                      add r0, r0, r1
004fb908  17 53 f8 eb                                      bl #0x31056c
004fb90c  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004fb910  00 10 a0 e1                                      mov r1, r0
004fb914  50 00 84 e5                                      str r0, [r4, #0x50]
004fb918  06 30 a0 e1                                      mov r3, r6
004fb91c  05 00 a0 e1                                      mov r0, r5
004fb920  cb 6e f8 eb                                      bl #0x317454
004fb924  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004fb928  50 20 94 e5                                      ldr r2, [r4, #0x50]
004fb92c  05 00 a0 e1                                      mov r0, r5
004fb930  54 10 84 e2                                      add r1, r4, #0x54
004fb934  03 60 c2 e7                                      strb r6, [r2, r3]
004fb938  d4 75 fd eb                                      bl #0x459090
004fb93c  01 30 a0 e3                                      mov r3, #1
004fb940  06 00 53 e1                                      cmp r3, r6
004fb944  04 30 8d e5                                      str r3, [sp, #4]
004fb948  0f 00 00 1a                                      bne #0x4fb98c
004fb94c  55 30 84 e2                                      add r3, r4, #0x55
004fb950  56 20 84 e2                                      add r2, r4, #0x56
004fb954  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb958  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb95c  02 00 53 e1                                      cmp r3, r2
004fb960  01 10 20 e0                                      eor r1, r0, r1
004fb964  01 10 43 e5                                      strb r1, [r3, #-1]
004fb968  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb96c  00 10 21 e0                                      eor r1, r1, r0
004fb970  01 10 c2 e5                                      strb r1, [r2, #1]
004fb974  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb978  01 20 42 e2                                      sub r2, r2, #1
004fb97c  00 10 21 e0                                      eor r1, r1, r0
004fb980  01 10 43 e5                                      strb r1, [r3, #-1]
004fb984  01 30 83 e2                                      add r3, r3, #1
004fb988  f1 ff ff 3a                                      blo #0x4fb954
004fb98c  05 00 a0 e1                                      mov r0, r5
004fb990  58 10 84 e2                                      add r1, r4, #0x58
004fb994  bd 75 fd eb                                      bl #0x459090
004fb998  01 30 a0 e3                                      mov r3, #1
004fb99c  00 00 53 e3                                      cmp r3, #0
004fb9a0  04 30 8d e5                                      str r3, [sp, #4]
004fb9a4  0f 00 00 1a                                      bne #0x4fb9e8
004fb9a8  59 30 84 e2                                      add r3, r4, #0x59
004fb9ac  5a 20 84 e2                                      add r2, r4, #0x5a
004fb9b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb9b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fb9b8  02 00 53 e1                                      cmp r3, r2
004fb9bc  01 10 20 e0                                      eor r1, r0, r1
004fb9c0  01 10 43 e5                                      strb r1, [r3, #-1]
004fb9c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fb9c8  00 10 21 e0                                      eor r1, r1, r0
004fb9cc  01 10 c2 e5                                      strb r1, [r2, #1]
004fb9d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fb9d4  01 20 42 e2                                      sub r2, r2, #1
004fb9d8  00 10 21 e0                                      eor r1, r1, r0
004fb9dc  01 10 43 e5                                      strb r1, [r3, #-1]
004fb9e0  01 30 83 e2                                      add r3, r3, #1
004fb9e4  f1 ff ff 3a                                      blo #0x4fb9b0
004fb9e8  05 00 a0 e1                                      mov r0, r5
004fb9ec  5c 10 84 e2                                      add r1, r4, #0x5c
004fb9f0  a6 75 fd eb                                      bl #0x459090
004fb9f4  01 30 a0 e3                                      mov r3, #1
004fb9f8  00 00 53 e3                                      cmp r3, #0
004fb9fc  04 30 8d e5                                      str r3, [sp, #4]
004fba00  0f 00 00 1a                                      bne #0x4fba44
004fba04  5d 30 84 e2                                      add r3, r4, #0x5d
004fba08  5e 20 84 e2                                      add r2, r4, #0x5e
004fba0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fba10  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fba14  02 00 53 e1                                      cmp r3, r2
004fba18  01 10 20 e0                                      eor r1, r0, r1
004fba1c  01 10 43 e5                                      strb r1, [r3, #-1]
004fba20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fba24  00 10 21 e0                                      eor r1, r1, r0
004fba28  01 10 c2 e5                                      strb r1, [r2, #1]
004fba2c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fba30  01 20 42 e2                                      sub r2, r2, #1
004fba34  00 10 21 e0                                      eor r1, r1, r0
004fba38  01 10 43 e5                                      strb r1, [r3, #-1]
004fba3c  01 30 83 e2                                      add r3, r3, #1
004fba40  f1 ff ff 3a                                      blo #0x4fba0c
004fba44  05 00 a0 e1                                      mov r0, r5
004fba48  60 10 84 e2                                      add r1, r4, #0x60
004fba4c  8f 75 fd eb                                      bl #0x459090
004fba50  01 30 a0 e3                                      mov r3, #1
004fba54  00 00 53 e3                                      cmp r3, #0
004fba58  04 30 8d e5                                      str r3, [sp, #4]
004fba5c  0f 00 00 1a                                      bne #0x4fbaa0
004fba60  61 30 84 e2                                      add r3, r4, #0x61
004fba64  62 20 84 e2                                      add r2, r4, #0x62
004fba68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fba6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fba70  02 00 53 e1                                      cmp r3, r2
004fba74  01 10 20 e0                                      eor r1, r0, r1
004fba78  01 10 43 e5                                      strb r1, [r3, #-1]
004fba7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fba80  00 10 21 e0                                      eor r1, r1, r0
004fba84  01 10 c2 e5                                      strb r1, [r2, #1]
004fba88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fba8c  01 20 42 e2                                      sub r2, r2, #1
004fba90  00 10 21 e0                                      eor r1, r1, r0
004fba94  01 10 43 e5                                      strb r1, [r3, #-1]
004fba98  01 30 83 e2                                      add r3, r3, #1
004fba9c  f1 ff ff 3a                                      blo #0x4fba68
004fbaa0  05 00 a0 e1                                      mov r0, r5
004fbaa4  64 10 84 e2                                      add r1, r4, #0x64
004fbaa8  78 75 fd eb                                      bl #0x459090
004fbaac  01 30 a0 e3                                      mov r3, #1
004fbab0  00 00 53 e3                                      cmp r3, #0
004fbab4  04 30 8d e5                                      str r3, [sp, #4]
004fbab8  0f 00 00 1a                                      bne #0x4fbafc
004fbabc  65 30 84 e2                                      add r3, r4, #0x65
004fbac0  66 20 84 e2                                      add r2, r4, #0x66
004fbac4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbac8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbacc  02 00 53 e1                                      cmp r3, r2
004fbad0  01 10 20 e0                                      eor r1, r0, r1
004fbad4  01 10 43 e5                                      strb r1, [r3, #-1]
004fbad8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbadc  00 10 21 e0                                      eor r1, r1, r0
004fbae0  01 10 c2 e5                                      strb r1, [r2, #1]
004fbae4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbae8  01 20 42 e2                                      sub r2, r2, #1
004fbaec  00 10 21 e0                                      eor r1, r1, r0
004fbaf0  01 10 43 e5                                      strb r1, [r3, #-1]
004fbaf4  01 30 83 e2                                      add r3, r3, #1
004fbaf8  f1 ff ff 3a                                      blo #0x4fbac4
004fbafc  05 00 a0 e1                                      mov r0, r5
004fbb00  68 10 84 e2                                      add r1, r4, #0x68
004fbb04  61 75 fd eb                                      bl #0x459090
004fbb08  01 30 a0 e3                                      mov r3, #1
004fbb0c  00 00 53 e3                                      cmp r3, #0
004fbb10  04 30 8d e5                                      str r3, [sp, #4]
004fbb14  0f 00 00 1a                                      bne #0x4fbb58
004fbb18  69 30 84 e2                                      add r3, r4, #0x69
004fbb1c  6a 20 84 e2                                      add r2, r4, #0x6a
004fbb20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbb24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbb28  02 00 53 e1                                      cmp r3, r2
004fbb2c  01 10 20 e0                                      eor r1, r0, r1
004fbb30  01 10 43 e5                                      strb r1, [r3, #-1]
004fbb34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbb38  00 10 21 e0                                      eor r1, r1, r0
004fbb3c  01 10 c2 e5                                      strb r1, [r2, #1]
004fbb40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbb44  01 20 42 e2                                      sub r2, r2, #1
004fbb48  00 10 21 e0                                      eor r1, r1, r0
004fbb4c  01 10 43 e5                                      strb r1, [r3, #-1]
004fbb50  01 30 83 e2                                      add r3, r3, #1
004fbb54  f1 ff ff 3a                                      blo #0x4fbb20
004fbb58  05 00 a0 e1                                      mov r0, r5
004fbb5c  6c 10 84 e2                                      add r1, r4, #0x6c
004fbb60  4a 75 fd eb                                      bl #0x459090
004fbb64  01 30 a0 e3                                      mov r3, #1
004fbb68  00 00 53 e3                                      cmp r3, #0
004fbb6c  04 30 8d e5                                      str r3, [sp, #4]
004fbb70  0f 00 00 1a                                      bne #0x4fbbb4
004fbb74  6d 30 84 e2                                      add r3, r4, #0x6d
004fbb78  6e 20 84 e2                                      add r2, r4, #0x6e
004fbb7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbb80  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbb84  02 00 53 e1                                      cmp r3, r2
004fbb88  01 10 20 e0                                      eor r1, r0, r1
004fbb8c  01 10 43 e5                                      strb r1, [r3, #-1]
004fbb90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbb94  00 10 21 e0                                      eor r1, r1, r0
004fbb98  01 10 c2 e5                                      strb r1, [r2, #1]
004fbb9c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbba0  01 20 42 e2                                      sub r2, r2, #1
004fbba4  00 10 21 e0                                      eor r1, r1, r0
004fbba8  01 10 43 e5                                      strb r1, [r3, #-1]
004fbbac  01 30 83 e2                                      add r3, r3, #1
004fbbb0  f1 ff ff 3a                                      blo #0x4fbb7c
004fbbb4  05 00 a0 e1                                      mov r0, r5
004fbbb8  70 10 84 e2                                      add r1, r4, #0x70
004fbbbc  33 75 fd eb                                      bl #0x459090
004fbbc0  01 30 a0 e3                                      mov r3, #1
004fbbc4  00 00 53 e3                                      cmp r3, #0
004fbbc8  04 30 8d e5                                      str r3, [sp, #4]
004fbbcc  0f 00 00 1a                                      bne #0x4fbc10
004fbbd0  71 30 84 e2                                      add r3, r4, #0x71
004fbbd4  72 20 84 e2                                      add r2, r4, #0x72
004fbbd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbbdc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbbe0  02 00 53 e1                                      cmp r3, r2
004fbbe4  01 10 20 e0                                      eor r1, r0, r1
004fbbe8  01 10 43 e5                                      strb r1, [r3, #-1]
004fbbec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbbf0  00 10 21 e0                                      eor r1, r1, r0
004fbbf4  01 10 c2 e5                                      strb r1, [r2, #1]
004fbbf8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbbfc  01 20 42 e2                                      sub r2, r2, #1
004fbc00  00 10 21 e0                                      eor r1, r1, r0
004fbc04  01 10 43 e5                                      strb r1, [r3, #-1]
004fbc08  01 30 83 e2                                      add r3, r3, #1
004fbc0c  f1 ff ff 3a                                      blo #0x4fbbd8
004fbc10  05 00 a0 e1                                      mov r0, r5
004fbc14  74 10 84 e2                                      add r1, r4, #0x74
004fbc18  1c 75 fd eb                                      bl #0x459090
004fbc1c  01 30 a0 e3                                      mov r3, #1
004fbc20  00 00 53 e3                                      cmp r3, #0
004fbc24  04 30 8d e5                                      str r3, [sp, #4]
004fbc28  0f 00 00 1a                                      bne #0x4fbc6c
004fbc2c  75 30 84 e2                                      add r3, r4, #0x75
004fbc30  76 20 84 e2                                      add r2, r4, #0x76
004fbc34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbc38  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbc3c  02 00 53 e1                                      cmp r3, r2
004fbc40  01 10 20 e0                                      eor r1, r0, r1
004fbc44  01 10 43 e5                                      strb r1, [r3, #-1]
004fbc48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbc4c  00 10 21 e0                                      eor r1, r1, r0
004fbc50  01 10 c2 e5                                      strb r1, [r2, #1]
004fbc54  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbc58  01 20 42 e2                                      sub r2, r2, #1
004fbc5c  00 10 21 e0                                      eor r1, r1, r0
004fbc60  01 10 43 e5                                      strb r1, [r3, #-1]
004fbc64  01 30 83 e2                                      add r3, r3, #1
004fbc68  f1 ff ff 3a                                      blo #0x4fbc34
004fbc6c  05 00 a0 e1                                      mov r0, r5
004fbc70  78 10 84 e2                                      add r1, r4, #0x78
004fbc74  05 75 fd eb                                      bl #0x459090
004fbc78  01 30 a0 e3                                      mov r3, #1
004fbc7c  00 00 53 e3                                      cmp r3, #0
004fbc80  04 30 8d e5                                      str r3, [sp, #4]
004fbc84  0f 00 00 1a                                      bne #0x4fbcc8
004fbc88  79 30 84 e2                                      add r3, r4, #0x79
004fbc8c  7a 20 84 e2                                      add r2, r4, #0x7a
004fbc90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbc94  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbc98  02 00 53 e1                                      cmp r3, r2
004fbc9c  01 10 20 e0                                      eor r1, r0, r1
004fbca0  01 10 43 e5                                      strb r1, [r3, #-1]
004fbca4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbca8  00 10 21 e0                                      eor r1, r1, r0
004fbcac  01 10 c2 e5                                      strb r1, [r2, #1]
004fbcb0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbcb4  01 20 42 e2                                      sub r2, r2, #1
004fbcb8  00 10 21 e0                                      eor r1, r1, r0
004fbcbc  01 10 43 e5                                      strb r1, [r3, #-1]
004fbcc0  01 30 83 e2                                      add r3, r3, #1
004fbcc4  f1 ff ff 3a                                      blo #0x4fbc90
004fbcc8  05 00 a0 e1                                      mov r0, r5
004fbccc  7c 10 84 e2                                      add r1, r4, #0x7c
004fbcd0  ee 74 fd eb                                      bl #0x459090
004fbcd4  01 30 a0 e3                                      mov r3, #1
004fbcd8  00 00 53 e3                                      cmp r3, #0
004fbcdc  04 30 8d e5                                      str r3, [sp, #4]
004fbce0  0f 00 00 1a                                      bne #0x4fbd24
004fbce4  7d 30 84 e2                                      add r3, r4, #0x7d
004fbce8  7e 20 84 e2                                      add r2, r4, #0x7e
004fbcec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbcf0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbcf4  02 00 53 e1                                      cmp r3, r2
004fbcf8  01 10 20 e0                                      eor r1, r0, r1
004fbcfc  01 10 43 e5                                      strb r1, [r3, #-1]
004fbd00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbd04  00 10 21 e0                                      eor r1, r1, r0
004fbd08  01 10 c2 e5                                      strb r1, [r2, #1]
004fbd0c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbd10  01 20 42 e2                                      sub r2, r2, #1
004fbd14  00 10 21 e0                                      eor r1, r1, r0
004fbd18  01 10 43 e5                                      strb r1, [r3, #-1]
004fbd1c  01 30 83 e2                                      add r3, r3, #1
004fbd20  f1 ff ff 3a                                      blo #0x4fbcec
004fbd24  05 00 a0 e1                                      mov r0, r5
004fbd28  80 10 84 e2                                      add r1, r4, #0x80
004fbd2c  d7 74 fd eb                                      bl #0x459090
004fbd30  01 30 a0 e3                                      mov r3, #1
004fbd34  00 00 53 e3                                      cmp r3, #0
004fbd38  04 30 8d e5                                      str r3, [sp, #4]
004fbd3c  0f 00 00 1a                                      bne #0x4fbd80
004fbd40  81 30 84 e2                                      add r3, r4, #0x81
004fbd44  82 20 84 e2                                      add r2, r4, #0x82
004fbd48  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbd4c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbd50  02 00 53 e1                                      cmp r3, r2
004fbd54  01 10 20 e0                                      eor r1, r0, r1
004fbd58  01 10 43 e5                                      strb r1, [r3, #-1]
004fbd5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbd60  00 10 21 e0                                      eor r1, r1, r0
004fbd64  01 10 c2 e5                                      strb r1, [r2, #1]
004fbd68  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbd6c  01 20 42 e2                                      sub r2, r2, #1
004fbd70  00 10 21 e0                                      eor r1, r1, r0
004fbd74  01 10 43 e5                                      strb r1, [r3, #-1]
004fbd78  01 30 83 e2                                      add r3, r3, #1
004fbd7c  f1 ff ff 3a                                      blo #0x4fbd48
004fbd80  05 00 a0 e1                                      mov r0, r5
004fbd84  84 10 84 e2                                      add r1, r4, #0x84
004fbd88  c0 74 fd eb                                      bl #0x459090
004fbd8c  01 30 a0 e3                                      mov r3, #1
004fbd90  00 00 53 e3                                      cmp r3, #0
004fbd94  04 30 8d e5                                      str r3, [sp, #4]
004fbd98  0f 00 00 1a                                      bne #0x4fbddc
004fbd9c  85 30 84 e2                                      add r3, r4, #0x85
004fbda0  86 20 84 e2                                      add r2, r4, #0x86
004fbda4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbda8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbdac  02 00 53 e1                                      cmp r3, r2
004fbdb0  01 10 20 e0                                      eor r1, r0, r1
004fbdb4  01 10 43 e5                                      strb r1, [r3, #-1]
004fbdb8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbdbc  00 10 21 e0                                      eor r1, r1, r0
004fbdc0  01 10 c2 e5                                      strb r1, [r2, #1]
004fbdc4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbdc8  01 20 42 e2                                      sub r2, r2, #1
004fbdcc  00 10 21 e0                                      eor r1, r1, r0
004fbdd0  01 10 43 e5                                      strb r1, [r3, #-1]
004fbdd4  01 30 83 e2                                      add r3, r3, #1
004fbdd8  f1 ff ff 3a                                      blo #0x4fbda4
004fbddc  05 00 a0 e1                                      mov r0, r5
004fbde0  88 10 84 e2                                      add r1, r4, #0x88
004fbde4  a9 74 fd eb                                      bl #0x459090
004fbde8  01 30 a0 e3                                      mov r3, #1
004fbdec  00 00 53 e3                                      cmp r3, #0
004fbdf0  04 30 8d e5                                      str r3, [sp, #4]
004fbdf4  0f 00 00 1a                                      bne #0x4fbe38
004fbdf8  89 30 84 e2                                      add r3, r4, #0x89
004fbdfc  8a 20 84 e2                                      add r2, r4, #0x8a
004fbe00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbe04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbe08  02 00 53 e1                                      cmp r3, r2
004fbe0c  01 10 20 e0                                      eor r1, r0, r1
004fbe10  01 10 43 e5                                      strb r1, [r3, #-1]
004fbe14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbe18  00 10 21 e0                                      eor r1, r1, r0
004fbe1c  01 10 c2 e5                                      strb r1, [r2, #1]
004fbe20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbe24  01 20 42 e2                                      sub r2, r2, #1
004fbe28  00 10 21 e0                                      eor r1, r1, r0
004fbe2c  01 10 43 e5                                      strb r1, [r3, #-1]
004fbe30  01 30 83 e2                                      add r3, r3, #1
004fbe34  f1 ff ff 3a                                      blo #0x4fbe00
004fbe38  05 00 a0 e1                                      mov r0, r5
004fbe3c  8c 10 84 e2                                      add r1, r4, #0x8c
004fbe40  92 74 fd eb                                      bl #0x459090
004fbe44  01 30 a0 e3                                      mov r3, #1
004fbe48  00 00 53 e3                                      cmp r3, #0
004fbe4c  04 30 8d e5                                      str r3, [sp, #4]
004fbe50  0f 00 00 1a                                      bne #0x4fbe94
004fbe54  8d 30 84 e2                                      add r3, r4, #0x8d
004fbe58  8e 20 84 e2                                      add r2, r4, #0x8e
004fbe5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbe60  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbe64  02 00 53 e1                                      cmp r3, r2
004fbe68  01 10 20 e0                                      eor r1, r0, r1
004fbe6c  01 10 43 e5                                      strb r1, [r3, #-1]
004fbe70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbe74  00 10 21 e0                                      eor r1, r1, r0
004fbe78  01 10 c2 e5                                      strb r1, [r2, #1]
004fbe7c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbe80  01 20 42 e2                                      sub r2, r2, #1
004fbe84  00 10 21 e0                                      eor r1, r1, r0
004fbe88  01 10 43 e5                                      strb r1, [r3, #-1]
004fbe8c  01 30 83 e2                                      add r3, r3, #1
004fbe90  f1 ff ff 3a                                      blo #0x4fbe5c
004fbe94  05 00 a0 e1                                      mov r0, r5
004fbe98  90 10 84 e2                                      add r1, r4, #0x90
004fbe9c  7b 74 fd eb                                      bl #0x459090
004fbea0  01 30 a0 e3                                      mov r3, #1
004fbea4  00 00 53 e3                                      cmp r3, #0
004fbea8  04 30 8d e5                                      str r3, [sp, #4]
004fbeac  0f 00 00 1a                                      bne #0x4fbef0
004fbeb0  91 30 84 e2                                      add r3, r4, #0x91
004fbeb4  92 20 84 e2                                      add r2, r4, #0x92
004fbeb8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbebc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbec0  02 00 53 e1                                      cmp r3, r2
004fbec4  01 10 20 e0                                      eor r1, r0, r1
004fbec8  01 10 43 e5                                      strb r1, [r3, #-1]
004fbecc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbed0  00 10 21 e0                                      eor r1, r1, r0
004fbed4  01 10 c2 e5                                      strb r1, [r2, #1]
004fbed8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbedc  01 20 42 e2                                      sub r2, r2, #1
004fbee0  00 10 21 e0                                      eor r1, r1, r0
004fbee4  01 10 43 e5                                      strb r1, [r3, #-1]
004fbee8  01 30 83 e2                                      add r3, r3, #1
004fbeec  f1 ff ff 3a                                      blo #0x4fbeb8
004fbef0  05 00 a0 e1                                      mov r0, r5
004fbef4  94 10 84 e2                                      add r1, r4, #0x94
004fbef8  64 74 fd eb                                      bl #0x459090
004fbefc  01 30 a0 e3                                      mov r3, #1
004fbf00  00 00 53 e3                                      cmp r3, #0
004fbf04  04 30 8d e5                                      str r3, [sp, #4]
004fbf08  0f 00 00 1a                                      bne #0x4fbf4c
004fbf0c  95 30 84 e2                                      add r3, r4, #0x95
004fbf10  96 20 84 e2                                      add r2, r4, #0x96
004fbf14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbf18  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbf1c  02 00 53 e1                                      cmp r3, r2
004fbf20  01 10 20 e0                                      eor r1, r0, r1
004fbf24  01 10 43 e5                                      strb r1, [r3, #-1]
004fbf28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbf2c  00 10 21 e0                                      eor r1, r1, r0
004fbf30  01 10 c2 e5                                      strb r1, [r2, #1]
004fbf34  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbf38  01 20 42 e2                                      sub r2, r2, #1
004fbf3c  00 10 21 e0                                      eor r1, r1, r0
004fbf40  01 10 43 e5                                      strb r1, [r3, #-1]
004fbf44  01 30 83 e2                                      add r3, r3, #1
004fbf48  f1 ff ff 3a                                      blo #0x4fbf14
004fbf4c  05 00 a0 e1                                      mov r0, r5
004fbf50  98 10 84 e2                                      add r1, r4, #0x98
004fbf54  4d 74 fd eb                                      bl #0x459090
004fbf58  01 30 a0 e3                                      mov r3, #1
004fbf5c  00 00 53 e3                                      cmp r3, #0
004fbf60  04 30 8d e5                                      str r3, [sp, #4]
004fbf64  0f 00 00 1a                                      bne #0x4fbfa8
004fbf68  99 30 84 e2                                      add r3, r4, #0x99
004fbf6c  9a 20 84 e2                                      add r2, r4, #0x9a
004fbf70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbf74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbf78  02 00 53 e1                                      cmp r3, r2
004fbf7c  01 10 20 e0                                      eor r1, r0, r1
004fbf80  01 10 43 e5                                      strb r1, [r3, #-1]
004fbf84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbf88  00 10 21 e0                                      eor r1, r1, r0
004fbf8c  01 10 c2 e5                                      strb r1, [r2, #1]
004fbf90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbf94  01 20 42 e2                                      sub r2, r2, #1
004fbf98  00 10 21 e0                                      eor r1, r1, r0
004fbf9c  01 10 43 e5                                      strb r1, [r3, #-1]
004fbfa0  01 30 83 e2                                      add r3, r3, #1
004fbfa4  f1 ff ff 3a                                      blo #0x4fbf70
004fbfa8  05 00 a0 e1                                      mov r0, r5
004fbfac  9c 10 84 e2                                      add r1, r4, #0x9c
004fbfb0  36 74 fd eb                                      bl #0x459090
004fbfb4  01 30 a0 e3                                      mov r3, #1
004fbfb8  00 00 53 e3                                      cmp r3, #0
004fbfbc  04 30 8d e5                                      str r3, [sp, #4]
004fbfc0  0f 00 00 1a                                      bne #0x4fc004
004fbfc4  9d 30 84 e2                                      add r3, r4, #0x9d
004fbfc8  9e 20 84 e2                                      add r2, r4, #0x9e
004fbfcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbfd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fbfd4  02 00 53 e1                                      cmp r3, r2
004fbfd8  01 10 20 e0                                      eor r1, r0, r1
004fbfdc  01 10 43 e5                                      strb r1, [r3, #-1]
004fbfe0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fbfe4  00 10 21 e0                                      eor r1, r1, r0
004fbfe8  01 10 c2 e5                                      strb r1, [r2, #1]
004fbfec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fbff0  01 20 42 e2                                      sub r2, r2, #1
004fbff4  00 10 21 e0                                      eor r1, r1, r0
004fbff8  01 10 43 e5                                      strb r1, [r3, #-1]
004fbffc  01 30 83 e2                                      add r3, r3, #1
004fc000  f1 ff ff 3a                                      blo #0x4fbfcc
004fc004  05 00 a0 e1                                      mov r0, r5
004fc008  a0 10 84 e2                                      add r1, r4, #0xa0
004fc00c  1f 74 fd eb                                      bl #0x459090
004fc010  01 30 a0 e3                                      mov r3, #1
004fc014  00 00 53 e3                                      cmp r3, #0
004fc018  04 30 8d e5                                      str r3, [sp, #4]
004fc01c  0f 00 00 1a                                      bne #0x4fc060
004fc020  a2 30 84 e2                                      add r3, r4, #0xa2
004fc024  a1 40 84 e2                                      add r4, r4, #0xa1
004fc028  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fc02c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fc030  03 00 54 e1                                      cmp r4, r3
004fc034  02 20 21 e0                                      eor r2, r1, r2
004fc038  01 20 44 e5                                      strb r2, [r4, #-1]
004fc03c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fc040  01 20 22 e0                                      eor r2, r2, r1
004fc044  01 20 c3 e5                                      strb r2, [r3, #1]
004fc048  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fc04c  01 30 43 e2                                      sub r3, r3, #1
004fc050  01 20 22 e0                                      eor r2, r2, r1
004fc054  01 20 44 e5                                      strb r2, [r4, #-1]
004fc058  01 40 84 e2                                      add r4, r4, #1
004fc05c  f1 ff ff 3a                                      blo #0x4fc028
004fc060  08 d0 8d e2                                      add sp, sp, #8
004fc064  70 80 bd e8                                      pop {r4, r5, r6, pc}
