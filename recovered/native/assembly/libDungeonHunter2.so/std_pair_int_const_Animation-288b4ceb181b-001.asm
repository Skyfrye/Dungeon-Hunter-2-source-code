; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00475804, declared_size=120, range_size=120, mode=arm
; class-group: std::pair<int const, Animation>
; alias: _ZNSt4pairIKi9AnimationEC1ERKS2_
; demangled: std::pair<int const, Animation>::pair(std::pair<int const, Animation> const&)
; decoder-mode: arm
00475804  70 40 2d e9                                      push {r4, r5, r6, lr}
00475808  00 30 91 e5                                      ldr r3, [r1]
0047580c  00 40 a0 e1                                      mov r4, r0
00475810  01 50 a0 e1                                      mov r5, r1
00475814  04 30 80 e4                                      str r3, [r0], #4
00475818  14 00 84 e5                                      str r0, [r4, #0x14]
0047581c  18 00 84 e5                                      str r0, [r4, #0x18]
00475820  14 20 95 e5                                      ldr r2, [r5, #0x14]
00475824  18 10 91 e5                                      ldr r1, [r1, #0x18]
00475828  ae 6f fa eb                                      bl #0x3116e8
0047582c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00475830  1c 30 84 e5                                      str r3, [r4, #0x1c]
00475834  20 20 95 e5                                      ldr r2, [r5, #0x20]
00475838  00 00 53 e3                                      cmp r3, #0
0047583c  20 20 84 e5                                      str r2, [r4, #0x20]
00475840  03 00 00 0a                                      beq #0x475854
00475844  04 20 93 e5                                      ldr r2, [r3, #4]
00475848  00 00 52 e3                                      cmp r2, #0
0047584c  01 20 82 12                                      addne r2, r2, #1
00475850  04 20 83 15                                      strne r2, [r3, #4]
00475854  24 30 95 e5                                      ldr r3, [r5, #0x24]
00475858  04 00 a0 e1                                      mov r0, r4
0047585c  24 30 84 e5                                      str r3, [r4, #0x24]
00475860  28 30 95 e5                                      ldr r3, [r5, #0x28]
00475864  28 30 84 e5                                      str r3, [r4, #0x28]
00475868  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0047586c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00475870  30 30 95 e5                                      ldr r3, [r5, #0x30]
00475874  30 30 84 e5                                      str r3, [r4, #0x30]
00475878  70 80 bd e8                                      pop {r4, r5, r6, pc}
