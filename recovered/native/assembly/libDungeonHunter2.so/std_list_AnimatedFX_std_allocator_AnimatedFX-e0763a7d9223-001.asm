; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494cbc, declared_size=156, range_size=156, mode=arm
; class-group: std::list<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt4listIP10AnimatedFXSaIS1_EEaSERKS3_
; demangled: std::list<AnimatedFX*, std::allocator<AnimatedFX*> >::operator=(std::list<AnimatedFX*, std::allocator<AnimatedFX*> > const&)
; decoder-mode: arm
00494cbc  30 40 2d e9                                      push {r4, r5, lr}
00494cc0  01 00 50 e1                                      cmp r0, r1
00494cc4  14 d0 4d e2                                      sub sp, sp, #0x14
00494cc8  00 40 a0 e1                                      mov r4, r0
00494ccc  01 30 a0 e1                                      mov r3, r1
00494cd0  13 00 00 0a                                      beq #0x494d24
00494cd4  00 00 90 e5                                      ldr r0, [r0]
00494cd8  00 20 91 e5                                      ldr r2, [r1]
00494cdc  06 00 00 ea                                      b #0x494cfc
00494ce0  02 00 53 e1                                      cmp r3, r2
00494ce4  12 00 00 0a                                      beq #0x494d34
00494ce8  08 c0 92 e5                                      ldr ip, [r2, #8]
00494cec  00 10 90 e5                                      ldr r1, [r0]
00494cf0  00 20 92 e5                                      ldr r2, [r2]
00494cf4  08 c0 80 e5                                      str ip, [r0, #8]
00494cf8  01 00 a0 e1                                      mov r0, r1
00494cfc  00 00 54 e1                                      cmp r4, r0
00494d00  f6 ff ff 1a                                      bne #0x494ce0
00494d04  02 00 53 e1                                      cmp r3, r2
00494d08  05 00 00 0a                                      beq #0x494d24
00494d0c  10 10 8d e2                                      add r1, sp, #0x10
00494d10  08 40 21 e5                                      str r4, [r1, #-8]!
00494d14  0c c0 8d e2                                      add ip, sp, #0xc
00494d18  04 00 a0 e1                                      mov r0, r4
00494d1c  00 c0 8d e5                                      str ip, [sp]
00494d20  b8 ff ff eb                                      bl #0x494c08
00494d24  04 00 a0 e1                                      mov r0, r4
00494d28  14 d0 8d e2                                      add sp, sp, #0x14
00494d2c  30 80 bd e8                                      pop {r4, r5, pc}
00494d30  05 00 a0 e1                                      mov r0, r5
00494d34  00 50 90 e5                                      ldr r5, [r0]
00494d38  04 30 90 e5                                      ldr r3, [r0, #4]
00494d3c  0c 10 a0 e3                                      mov r1, #0xc
00494d40  00 50 83 e5                                      str r5, [r3]
00494d44  04 30 85 e5                                      str r3, [r5, #4]
00494d48  6c d0 09 eb                                      bl #0x708f00
00494d4c  05 00 54 e1                                      cmp r4, r5
00494d50  f6 ff ff 1a                                      bne #0x494d30
00494d54  f2 ff ff ea                                      b #0x494d24
