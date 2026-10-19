; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ad28, declared_size=184, range_size=184, mode=arm
; class-group: int& std::map<char*, int, vox::c8stringcomp, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt3mapIPciN3vox12c8stringcompENS1_10SAllocatorISt4pairIPKciELNS1_10VoxMemHintE0EEEEixIS0_EERiRKT_
; demangled: int& std::map<char*, int, vox::c8stringcomp, vox::SAllocator<std::pair<char const*, int>, (vox::VoxMemHint)0> >::operator[]<char*>(char* const&)
; decoder-mode: arm
0088ad28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088ad2c  04 40 90 e5                                      ldr r4, [r0, #4]
0088ad30  18 d0 4d e2                                      sub sp, sp, #0x18
0088ad34  00 80 a0 e1                                      mov r8, r0
0088ad38  00 00 54 e3                                      cmp r4, #0
0088ad3c  01 60 a0 e1                                      mov r6, r1
0088ad40  00 40 a0 01                                      moveq r4, r0
0088ad44  0e 00 00 0a                                      beq #0x88ad84
0088ad48  14 70 80 e2                                      add r7, r0, #0x14
0088ad4c  00 50 a0 e1                                      mov r5, r0
0088ad50  00 00 00 ea                                      b #0x88ad58
0088ad54  03 40 a0 e1                                      mov r4, r3
0088ad58  10 10 94 e5                                      ldr r1, [r4, #0x10]
0088ad5c  07 00 a0 e1                                      mov r0, r7
0088ad60  00 20 96 e5                                      ldr r2, [r6]
0088ad64  d9 fd ff eb                                      bl #0x88a4d0
0088ad68  00 00 50 e3                                      cmp r0, #0
0088ad6c  0c 30 94 15                                      ldrne r3, [r4, #0xc]
0088ad70  08 30 94 05                                      ldreq r3, [r4, #8]
0088ad74  05 40 a0 11                                      movne r4, r5
0088ad78  04 50 a0 e1                                      mov r5, r4
0088ad7c  00 00 53 e3                                      cmp r3, #0
0088ad80  f3 ff ff 1a                                      bne #0x88ad54
0088ad84  04 00 58 e1                                      cmp r8, r4
0088ad88  06 00 00 0a                                      beq #0x88ada8
0088ad8c  14 00 8d e2                                      add r0, sp, #0x14
0088ad90  00 10 96 e5                                      ldr r1, [r6]
0088ad94  10 20 94 e5                                      ldr r2, [r4, #0x10]
0088ad98  cc fd ff eb                                      bl #0x88a4d0
0088ad9c  00 00 50 e3                                      cmp r0, #0
0088ada0  04 00 a0 e1                                      mov r0, r4
0088ada4  0a 00 00 0a                                      beq #0x88add4
0088ada8  00 c0 96 e5                                      ldr ip, [r6]
0088adac  10 00 8d e2                                      add r0, sp, #0x10
0088adb0  08 10 a0 e1                                      mov r1, r8
0088adb4  04 c0 8d e5                                      str ip, [sp, #4]
0088adb8  0c 20 8d e2                                      add r2, sp, #0xc
0088adbc  00 c0 a0 e3                                      mov ip, #0
0088adc0  04 30 8d e2                                      add r3, sp, #4
0088adc4  08 c0 8d e5                                      str ip, [sp, #8]
0088adc8  0c 40 8d e5                                      str r4, [sp, #0xc]
0088adcc  eb fe ff eb                                      bl #0x88a980
0088add0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0088add4  14 00 80 e2                                      add r0, r0, #0x14
0088add8  18 d0 8d e2                                      add sp, sp, #0x18
0088addc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
