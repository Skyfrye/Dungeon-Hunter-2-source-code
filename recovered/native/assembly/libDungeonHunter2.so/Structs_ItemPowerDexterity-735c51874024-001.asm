; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6814, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerDexterity
; alias: _ZN7Structs18ItemPowerDexterity8finalizeEv
; demangled: Structs::ItemPowerDexterity::finalize()
; decoder-mode: arm
004d6814  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6818  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d681c  00 50 a0 e1                                      mov r5, r0
004d6820  00 00 53 e3                                      cmp r3, #0
004d6824  12 00 00 0a                                      beq #0x4d6874
004d6828  04 00 13 e5                                      ldr r0, [r3, #-4]
004d682c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6830  00 00 53 e1                                      cmp r3, r0
004d6834  01 00 00 1a                                      bne #0x4d6840
004d6838  08 00 00 ea                                      b #0x4d6860
004d683c  04 00 a0 e1                                      mov r0, r4
004d6840  10 40 40 e2                                      sub r4, r0, #0x10
004d6844  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6848  04 00 a0 e1                                      mov r0, r4
004d684c  0f e0 a0 e1                                      mov lr, pc
004d6850  00 f0 93 e5                                      ldr pc, [r3]
004d6854  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6858  04 00 50 e1                                      cmp r0, r4
004d685c  f6 ff ff 1a                                      bne #0x4d683c
004d6860  08 00 40 e2                                      sub r0, r0, #8
004d6864  f5 e6 f8 eb                                      bl #0x310440
004d6868  00 30 a0 e3                                      mov r3, #0
004d686c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6870  10 30 85 e5                                      str r3, [r5, #0x10]
004d6874  05 00 a0 e1                                      mov r0, r5
004d6878  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d687c  ae fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d96e8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDexterity
; alias: _ZN7Structs18ItemPowerDexterityD1Ev
; demangled: Structs::ItemPowerDexterity::~ItemPowerDexterity()
; decoder-mode: arm
004d96e8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d96ec  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d96f0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d96f4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d96f8  03 30 8f e0                                      add r3, pc, r3
004d96fc  02 20 93 e7                                      ldr r2, [r3, r2]
004d9700  00 00 51 e3                                      cmp r1, #0
004d9704  00 50 a0 e1                                      mov r5, r0
004d9708  08 20 82 e2                                      add r2, r2, #8
004d970c  00 20 80 e5                                      str r2, [r0]
004d9710  0f 00 00 0a                                      beq #0x4d9754
004d9714  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9718  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d971c  00 00 51 e1                                      cmp r1, r0
004d9720  01 00 00 1a                                      bne #0x4d972c
004d9724  08 00 00 ea                                      b #0x4d974c
004d9728  04 00 a0 e1                                      mov r0, r4
004d972c  10 40 40 e2                                      sub r4, r0, #0x10
004d9730  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9734  04 00 a0 e1                                      mov r0, r4
004d9738  0f e0 a0 e1                                      mov lr, pc
004d973c  00 f0 93 e5                                      ldr pc, [r3]
004d9740  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9744  04 00 50 e1                                      cmp r0, r4
004d9748  f6 ff ff 1a                                      bne #0x4d9728
004d974c  08 00 40 e2                                      sub r0, r0, #8
004d9750  3a db f8 eb                                      bl #0x310440
004d9754  05 00 a0 e1                                      mov r0, r5
004d9758  a4 f4 ff eb                                      bl #0x4d69f0
004d975c  05 00 a0 e1                                      mov r0, r5
004d9760  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9764  98 b3 4b 00 f8 48 00 00                          .byte 0x98, 0xb3, 0x4b, 0x00, 0xf8, 0x48, 0x00, 0x00

; FUNCTION 0x004d976c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerDexterity
; alias: _ZN7Structs18ItemPowerDexterityD0Ev
; demangled: Structs::ItemPowerDexterity::~ItemPowerDexterity()
; decoder-mode: arm
004d976c  10 40 2d e9                                      push {r4, lr}
004d9770  00 40 a0 e1                                      mov r4, r0
004d9774  db ff ff eb                                      bl #0x4d96e8
004d9778  04 00 a0 e1                                      mov r0, r4
004d977c  2f db f8 eb                                      bl #0x310440
004d9780  04 00 a0 e1                                      mov r0, r4
004d9784  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9788, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDexterity
; alias: _ZN7Structs18ItemPowerDexterityD2Ev
; demangled: Structs::ItemPowerDexterity::~ItemPowerDexterity()
; decoder-mode: arm
004d9788  70 40 2d e9                                      push {r4, r5, r6, lr}
004d978c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9790  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9794  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9798  03 30 8f e0                                      add r3, pc, r3
004d979c  02 20 93 e7                                      ldr r2, [r3, r2]
004d97a0  00 00 51 e3                                      cmp r1, #0
004d97a4  00 50 a0 e1                                      mov r5, r0
004d97a8  08 20 82 e2                                      add r2, r2, #8
004d97ac  00 20 80 e5                                      str r2, [r0]
004d97b0  0f 00 00 0a                                      beq #0x4d97f4
004d97b4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d97b8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d97bc  00 00 51 e1                                      cmp r1, r0
004d97c0  01 00 00 1a                                      bne #0x4d97cc
004d97c4  08 00 00 ea                                      b #0x4d97ec
004d97c8  04 00 a0 e1                                      mov r0, r4
004d97cc  10 40 40 e2                                      sub r4, r0, #0x10
004d97d0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d97d4  04 00 a0 e1                                      mov r0, r4
004d97d8  0f e0 a0 e1                                      mov lr, pc
004d97dc  00 f0 93 e5                                      ldr pc, [r3]
004d97e0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d97e4  04 00 50 e1                                      cmp r0, r4
004d97e8  f6 ff ff 1a                                      bne #0x4d97c8
004d97ec  08 00 40 e2                                      sub r0, r0, #8
004d97f0  12 db f8 eb                                      bl #0x310440
004d97f4  05 00 a0 e1                                      mov r0, r5
004d97f8  7c f4 ff eb                                      bl #0x4d69f0
004d97fc  05 00 a0 e1                                      mov r0, r5
004d9800  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9804  f8 b2 4b 00 f8 48 00 00                          .byte 0xf8, 0xb2, 0x4b, 0x00, 0xf8, 0x48, 0x00, 0x00

; FUNCTION 0x004ed1f4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerDexterity
; alias: _ZN7Structs18ItemPowerDexterity4readEP11IStreamBase
; demangled: Structs::ItemPowerDexterity::read(IStreamBase*)
; decoder-mode: arm
004ed1f4  f3 fe ff ea                                      b #0x4ecdc8
