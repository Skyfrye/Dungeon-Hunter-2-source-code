; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e5524, declared_size=136, range_size=136, mode=arm
; class-group: b2Vec2
; alias: _ZN6b2Vec29NormalizeEv
; demangled: b2Vec2::Normalize()
; decoder-mode: arm
007e5524  70 40 2d e9                                      push {r4, r5, r6, lr}
007e5528  00 40 a0 e1                                      mov r4, r0
007e552c  00 00 90 e5                                      ldr r0, [r0]
007e5530  04 60 94 e5                                      ldr r6, [r4, #4]
007e5534  00 10 a0 e1                                      mov r1, r0
007e5538  0b a6 ec eb                                      bl #0x30ed6c
007e553c  06 10 a0 e1                                      mov r1, r6
007e5540  00 50 a0 e1                                      mov r5, r0
007e5544  06 00 a0 e1                                      mov r0, r6
007e5548  07 a6 ec eb                                      bl #0x30ed6c
007e554c  00 10 a0 e1                                      mov r1, r0
007e5550  05 00 a0 e1                                      mov r0, r5
007e5554  92 a5 ec eb                                      bl #0x30eba4
007e5558  f1 a2 ec eb                                      bl #0x30e124
007e555c  0d 13 a0 e3                                      mov r1, #0x34000000
007e5560  00 50 a0 e1                                      mov r5, r0
007e5564  68 a4 ec eb                                      bl #0x30e70c
007e5568  00 00 50 e3                                      cmp r0, #0
007e556c  00 50 a0 13                                      movne r5, #0
007e5570  0b 00 00 1a                                      bne #0x7e55a4
007e5574  05 10 a0 e1                                      mov r1, r5
007e5578  fe 05 a0 e3                                      mov r0, #0x3f800000
007e557c  c4 a5 ec eb                                      bl #0x30ec94
007e5580  00 10 a0 e1                                      mov r1, r0
007e5584  00 60 a0 e1                                      mov r6, r0
007e5588  00 00 94 e5                                      ldr r0, [r4]
007e558c  f6 a5 ec eb                                      bl #0x30ed6c
007e5590  06 10 a0 e1                                      mov r1, r6
007e5594  00 00 84 e5                                      str r0, [r4]
007e5598  04 00 94 e5                                      ldr r0, [r4, #4]
007e559c  f2 a5 ec eb                                      bl #0x30ed6c
007e55a0  04 00 84 e5                                      str r0, [r4, #4]
007e55a4  05 00 a0 e1                                      mov r0, r5
007e55a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
