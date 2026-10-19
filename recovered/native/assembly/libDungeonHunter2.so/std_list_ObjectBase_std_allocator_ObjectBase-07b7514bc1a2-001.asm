; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00346474, declared_size=156, range_size=156, mode=arm
; class-group: std::list<ObjectBase*, std::allocator<ObjectBase*> >
; alias: _ZNSt4listIP10ObjectBaseSaIS1_EEaSERKS3_
; demangled: std::list<ObjectBase*, std::allocator<ObjectBase*> >::operator=(std::list<ObjectBase*, std::allocator<ObjectBase*> > const&)
; decoder-mode: arm
00346474  30 40 2d e9                                      push {r4, r5, lr}
00346478  01 00 50 e1                                      cmp r0, r1
0034647c  14 d0 4d e2                                      sub sp, sp, #0x14
00346480  00 40 a0 e1                                      mov r4, r0
00346484  01 30 a0 e1                                      mov r3, r1
00346488  13 00 00 0a                                      beq #0x3464dc
0034648c  00 00 90 e5                                      ldr r0, [r0]
00346490  00 20 91 e5                                      ldr r2, [r1]
00346494  06 00 00 ea                                      b #0x3464b4
00346498  02 00 53 e1                                      cmp r3, r2
0034649c  12 00 00 0a                                      beq #0x3464ec
003464a0  08 c0 92 e5                                      ldr ip, [r2, #8]
003464a4  00 10 90 e5                                      ldr r1, [r0]
003464a8  00 20 92 e5                                      ldr r2, [r2]
003464ac  08 c0 80 e5                                      str ip, [r0, #8]
003464b0  01 00 a0 e1                                      mov r0, r1
003464b4  00 00 54 e1                                      cmp r4, r0
003464b8  f6 ff ff 1a                                      bne #0x346498
003464bc  02 00 53 e1                                      cmp r3, r2
003464c0  05 00 00 0a                                      beq #0x3464dc
003464c4  10 10 8d e2                                      add r1, sp, #0x10
003464c8  08 40 21 e5                                      str r4, [r1, #-8]!
003464cc  0c c0 8d e2                                      add ip, sp, #0xc
003464d0  04 00 a0 e1                                      mov r0, r4
003464d4  00 c0 8d e5                                      str ip, [sp]
003464d8  a5 fb ff eb                                      bl #0x345374
003464dc  04 00 a0 e1                                      mov r0, r4
003464e0  14 d0 8d e2                                      add sp, sp, #0x14
003464e4  30 80 bd e8                                      pop {r4, r5, pc}
003464e8  05 00 a0 e1                                      mov r0, r5
003464ec  00 50 90 e5                                      ldr r5, [r0]
003464f0  04 30 90 e5                                      ldr r3, [r0, #4]
003464f4  0c 10 a0 e3                                      mov r1, #0xc
003464f8  00 50 83 e5                                      str r5, [r3]
003464fc  04 30 85 e5                                      str r3, [r5, #4]
00346500  7e 0a 0f eb                                      bl #0x708f00
00346504  05 00 54 e1                                      cmp r4, r5
00346508  f6 ff ff 1a                                      bne #0x3464e8
0034650c  f2 ff ff ea                                      b #0x3464dc
