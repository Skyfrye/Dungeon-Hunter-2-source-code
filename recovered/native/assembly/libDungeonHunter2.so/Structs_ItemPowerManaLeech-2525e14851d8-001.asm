; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5b6c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerManaLeech
; alias: _ZN7Structs18ItemPowerManaLeech8finalizeEv
; demangled: Structs::ItemPowerManaLeech::finalize()
; decoder-mode: arm
004d5b6c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5b70  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5b74  00 50 a0 e1                                      mov r5, r0
004d5b78  00 00 53 e3                                      cmp r3, #0
004d5b7c  12 00 00 0a                                      beq #0x4d5bcc
004d5b80  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5b84  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5b88  00 00 53 e1                                      cmp r3, r0
004d5b8c  01 00 00 1a                                      bne #0x4d5b98
004d5b90  08 00 00 ea                                      b #0x4d5bb8
004d5b94  04 00 a0 e1                                      mov r0, r4
004d5b98  10 40 40 e2                                      sub r4, r0, #0x10
004d5b9c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5ba0  04 00 a0 e1                                      mov r0, r4
004d5ba4  0f e0 a0 e1                                      mov lr, pc
004d5ba8  00 f0 93 e5                                      ldr pc, [r3]
004d5bac  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5bb0  04 00 50 e1                                      cmp r0, r4
004d5bb4  f6 ff ff 1a                                      bne #0x4d5b94
004d5bb8  08 00 40 e2                                      sub r0, r0, #8
004d5bbc  1f ea f8 eb                                      bl #0x310440
004d5bc0  00 30 a0 e3                                      mov r3, #0
004d5bc4  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5bc8  10 30 85 e5                                      str r3, [r5, #0x10]
004d5bcc  05 00 a0 e1                                      mov r0, r5
004d5bd0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5bd4  d8 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d74b0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerManaLeech
; alias: _ZN7Structs18ItemPowerManaLeechD1Ev
; demangled: Structs::ItemPowerManaLeech::~ItemPowerManaLeech()
; decoder-mode: arm
004d74b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d74b4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d74b8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d74bc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d74c0  03 30 8f e0                                      add r3, pc, r3
004d74c4  02 20 93 e7                                      ldr r2, [r3, r2]
004d74c8  00 00 51 e3                                      cmp r1, #0
004d74cc  00 50 a0 e1                                      mov r5, r0
004d74d0  08 20 82 e2                                      add r2, r2, #8
004d74d4  00 20 80 e5                                      str r2, [r0]
004d74d8  0f 00 00 0a                                      beq #0x4d751c
004d74dc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d74e0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d74e4  00 00 51 e1                                      cmp r1, r0
004d74e8  01 00 00 1a                                      bne #0x4d74f4
004d74ec  08 00 00 ea                                      b #0x4d7514
004d74f0  04 00 a0 e1                                      mov r0, r4
004d74f4  10 40 40 e2                                      sub r4, r0, #0x10
004d74f8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d74fc  04 00 a0 e1                                      mov r0, r4
004d7500  0f e0 a0 e1                                      mov lr, pc
004d7504  00 f0 93 e5                                      ldr pc, [r3]
004d7508  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d750c  04 00 50 e1                                      cmp r0, r4
004d7510  f6 ff ff 1a                                      bne #0x4d74f0
004d7514  08 00 40 e2                                      sub r0, r0, #8
004d7518  c8 e3 f8 eb                                      bl #0x310440
004d751c  05 00 a0 e1                                      mov r0, r5
004d7520  32 fd ff eb                                      bl #0x4d69f0
004d7524  05 00 a0 e1                                      mov r0, r5
004d7528  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d752c  d0 d5 4b 00 84 18 00 00                          .byte 0xd0, 0xd5, 0x4b, 0x00, 0x84, 0x18, 0x00, 0x00

; FUNCTION 0x004d7534, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerManaLeech
; alias: _ZN7Structs18ItemPowerManaLeechD0Ev
; demangled: Structs::ItemPowerManaLeech::~ItemPowerManaLeech()
; decoder-mode: arm
004d7534  10 40 2d e9                                      push {r4, lr}
004d7538  00 40 a0 e1                                      mov r4, r0
004d753c  db ff ff eb                                      bl #0x4d74b0
004d7540  04 00 a0 e1                                      mov r0, r4
004d7544  bd e3 f8 eb                                      bl #0x310440
004d7548  04 00 a0 e1                                      mov r0, r4
004d754c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7550, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerManaLeech
; alias: _ZN7Structs18ItemPowerManaLeechD2Ev
; demangled: Structs::ItemPowerManaLeech::~ItemPowerManaLeech()
; decoder-mode: arm
004d7550  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7554  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7558  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d755c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7560  03 30 8f e0                                      add r3, pc, r3
004d7564  02 20 93 e7                                      ldr r2, [r3, r2]
004d7568  00 00 51 e3                                      cmp r1, #0
004d756c  00 50 a0 e1                                      mov r5, r0
004d7570  08 20 82 e2                                      add r2, r2, #8
004d7574  00 20 80 e5                                      str r2, [r0]
004d7578  0f 00 00 0a                                      beq #0x4d75bc
004d757c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7580  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7584  00 00 51 e1                                      cmp r1, r0
004d7588  01 00 00 1a                                      bne #0x4d7594
004d758c  08 00 00 ea                                      b #0x4d75b4
004d7590  04 00 a0 e1                                      mov r0, r4
004d7594  10 40 40 e2                                      sub r4, r0, #0x10
004d7598  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d759c  04 00 a0 e1                                      mov r0, r4
004d75a0  0f e0 a0 e1                                      mov lr, pc
004d75a4  00 f0 93 e5                                      ldr pc, [r3]
004d75a8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d75ac  04 00 50 e1                                      cmp r0, r4
004d75b0  f6 ff ff 1a                                      bne #0x4d7590
004d75b4  08 00 40 e2                                      sub r0, r0, #8
004d75b8  a0 e3 f8 eb                                      bl #0x310440
004d75bc  05 00 a0 e1                                      mov r0, r5
004d75c0  0a fd ff eb                                      bl #0x4d69f0
004d75c4  05 00 a0 e1                                      mov r0, r5
004d75c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d75cc  30 d5 4b 00 84 18 00 00                          .byte 0x30, 0xd5, 0x4b, 0x00, 0x84, 0x18, 0x00, 0x00

; FUNCTION 0x004ed17c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerManaLeech
; alias: _ZN7Structs18ItemPowerManaLeech4readEP11IStreamBase
; demangled: Structs::ItemPowerManaLeech::read(IStreamBase*)
; decoder-mode: arm
004ed17c  11 ff ff ea                                      b #0x4ecdc8
