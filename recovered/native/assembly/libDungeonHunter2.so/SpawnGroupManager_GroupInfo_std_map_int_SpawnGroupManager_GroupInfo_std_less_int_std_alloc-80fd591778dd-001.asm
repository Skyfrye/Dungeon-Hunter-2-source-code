; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e9f84, declared_size=276, range_size=276, mode=arm
; class-group: SpawnGroupManager::GroupInfo& std::map<int, SpawnGroupManager::GroupInfo, std::less<int>, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >
; alias: _ZNSt3mapIiN17SpawnGroupManager9GroupInfoESt4lessIiESaISt4pairIKiS1_EEEixIiEERS1_RKT_
; demangled: SpawnGroupManager::GroupInfo& std::map<int, SpawnGroupManager::GroupInfo, std::less<int>, std::allocator<std::pair<int const, SpawnGroupManager::GroupInfo> > >::operator[]<int>(int const&)
; decoder-mode: arm
003e9f84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e9f88  04 c0 90 e5                                      ldr ip, [r0, #4]
003e9f8c  28 d0 4d e2                                      sub sp, sp, #0x28
003e9f90  00 00 5c e3                                      cmp ip, #0
003e9f94  3c 00 00 0a                                      beq #0x3ea08c
003e9f98  00 10 91 e5                                      ldr r1, [r1]
003e9f9c  00 20 a0 e1                                      mov r2, r0
003e9fa0  00 00 00 ea                                      b #0x3e9fa8
003e9fa4  03 c0 a0 e1                                      mov ip, r3
003e9fa8  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e9fac  01 00 53 e1                                      cmp r3, r1
003e9fb0  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
003e9fb4  08 30 9c a5                                      ldrge r3, [ip, #8]
003e9fb8  02 c0 a0 b1                                      movlt ip, r2
003e9fbc  0c 20 a0 e1                                      mov r2, ip
003e9fc0  00 00 53 e3                                      cmp r3, #0
003e9fc4  f6 ff ff 1a                                      bne #0x3e9fa4
003e9fc8  0c 00 50 e1                                      cmp r0, ip
003e9fcc  03 00 00 0a                                      beq #0x3e9fe0
003e9fd0  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e9fd4  0c 80 a0 e1                                      mov r8, ip
003e9fd8  03 00 51 e1                                      cmp r1, r3
003e9fdc  27 00 00 aa                                      bge #0x3ea080
003e9fe0  28 50 8d e2                                      add r5, sp, #0x28
003e9fe4  24 10 25 e5                                      str r1, [r5, #-0x24]!
003e9fe8  04 60 85 e2                                      add r6, r5, #4
003e9fec  00 e0 a0 e3                                      mov lr, #0
003e9ff0  00 10 a0 e1                                      mov r1, r0
003e9ff4  14 40 8d e2                                      add r4, sp, #0x14
003e9ff8  24 00 8d e2                                      add r0, sp, #0x24
003e9ffc  20 20 8d e2                                      add r2, sp, #0x20
003ea000  05 30 a0 e1                                      mov r3, r5
003ea004  10 e0 8d e5                                      str lr, [sp, #0x10]
003ea008  20 c0 8d e5                                      str ip, [sp, #0x20]
003ea00c  1c e0 8d e5                                      str lr, [sp, #0x1c]
003ea010  14 40 8d e5                                      str r4, [sp, #0x14]
003ea014  18 40 8d e5                                      str r4, [sp, #0x18]
003ea018  08 60 8d e5                                      str r6, [sp, #8]
003ea01c  0c 60 8d e5                                      str r6, [sp, #0xc]
003ea020  fa fe ff eb                                      bl #0x3e9c10
003ea024  08 00 9d e5                                      ldr r0, [sp, #8]
003ea028  24 80 9d e5                                      ldr r8, [sp, #0x24]
003ea02c  06 00 50 e1                                      cmp r0, r6
003ea030  01 00 00 1a                                      bne #0x3ea03c
003ea034  05 00 00 ea                                      b #0x3ea050
003ea038  07 00 a0 e1                                      mov r0, r7
003ea03c  00 70 90 e5                                      ldr r7, [r0]
003ea040  0c 10 a0 e3                                      mov r1, #0xc
003ea044  ad 7b 0c eb                                      bl #0x708f00
003ea048  06 00 57 e1                                      cmp r7, r6
003ea04c  f9 ff ff 1a                                      bne #0x3ea038
003ea050  14 00 9d e5                                      ldr r0, [sp, #0x14]
003ea054  04 00 50 e1                                      cmp r0, r4
003ea058  08 00 00 0a                                      beq #0x3ea080
003ea05c  04 50 85 e2                                      add r5, r5, #4
003ea060  0c 50 8d e5                                      str r5, [sp, #0xc]
003ea064  08 50 8d e5                                      str r5, [sp, #8]
003ea068  00 50 90 e5                                      ldr r5, [r0]
003ea06c  0c 10 a0 e3                                      mov r1, #0xc
003ea070  a2 7b 0c eb                                      bl #0x708f00
003ea074  04 00 55 e1                                      cmp r5, r4
003ea078  05 00 a0 e1                                      mov r0, r5
003ea07c  f9 ff ff 1a                                      bne #0x3ea068
003ea080  14 00 88 e2                                      add r0, r8, #0x14
003ea084  28 d0 8d e2                                      add sp, sp, #0x28
003ea088  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003ea08c  00 10 91 e5                                      ldr r1, [r1]
003ea090  00 c0 a0 e1                                      mov ip, r0
003ea094  cb ff ff ea                                      b #0x3e9fc8
