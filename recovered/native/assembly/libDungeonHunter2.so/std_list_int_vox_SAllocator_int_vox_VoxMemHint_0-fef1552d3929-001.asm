; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889e00, declared_size=152, range_size=152, mode=arm
; class-group: std::list<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt4listIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEEaSERKS4_
; demangled: std::list<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::operator=(std::list<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00889e00  30 40 2d e9                                      push {r4, r5, lr}
00889e04  01 00 50 e1                                      cmp r0, r1
00889e08  14 d0 4d e2                                      sub sp, sp, #0x14
00889e0c  00 40 a0 e1                                      mov r4, r0
00889e10  01 30 a0 e1                                      mov r3, r1
00889e14  13 00 00 0a                                      beq #0x889e68
00889e18  00 00 90 e5                                      ldr r0, [r0]
00889e1c  00 20 91 e5                                      ldr r2, [r1]
00889e20  06 00 00 ea                                      b #0x889e40
00889e24  02 00 53 e1                                      cmp r3, r2
00889e28  12 00 00 0a                                      beq #0x889e78
00889e2c  08 c0 92 e5                                      ldr ip, [r2, #8]
00889e30  00 10 90 e5                                      ldr r1, [r0]
00889e34  00 20 92 e5                                      ldr r2, [r2]
00889e38  08 c0 80 e5                                      str ip, [r0, #8]
00889e3c  01 00 a0 e1                                      mov r0, r1
00889e40  00 00 54 e1                                      cmp r4, r0
00889e44  f6 ff ff 1a                                      bne #0x889e24
00889e48  02 00 53 e1                                      cmp r3, r2
00889e4c  05 00 00 0a                                      beq #0x889e68
00889e50  10 10 8d e2                                      add r1, sp, #0x10
00889e54  08 40 21 e5                                      str r4, [r1, #-8]!
00889e58  0c c0 8d e2                                      add ip, sp, #0xc
00889e5c  04 00 a0 e1                                      mov r0, r4
00889e60  00 c0 8d e5                                      str ip, [sp]
00889e64  b0 ff ff eb                                      bl #0x889d2c
00889e68  04 00 a0 e1                                      mov r0, r4
00889e6c  14 d0 8d e2                                      add sp, sp, #0x14
00889e70  30 80 bd e8                                      pop {r4, r5, pc}
00889e74  05 00 a0 e1                                      mov r0, r5
00889e78  00 50 90 e5                                      ldr r5, [r0]
00889e7c  04 30 90 e5                                      ldr r3, [r0, #4]
00889e80  00 50 83 e5                                      str r5, [r3]
00889e84  04 30 85 e5                                      str r3, [r5, #4]
00889e88  6d 19 ea eb                                      bl #0x310444
00889e8c  05 00 54 e1                                      cmp r4, r5
00889e90  f7 ff ff 1a                                      bne #0x889e74
00889e94  f3 ff ff ea                                      b #0x889e68
