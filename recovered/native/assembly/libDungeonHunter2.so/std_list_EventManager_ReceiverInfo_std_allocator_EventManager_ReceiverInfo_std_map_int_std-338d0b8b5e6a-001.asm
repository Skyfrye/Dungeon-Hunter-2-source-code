; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00338c98, declared_size=264, range_size=264, mode=arm
; class-group: std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> >& std::map<int, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> >, std::less<int>, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >
; alias: _ZNSt3mapIiSt4listIN12EventManager12ReceiverInfoESaIS2_EESt4lessIiESaISt4pairIKiS4_EEEixIiEERS4_RKT_
; demangled: std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> >& std::map<int, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> >, std::less<int>, std::allocator<std::pair<int const, std::list<EventManager::ReceiverInfo, std::allocator<EventManager::ReceiverInfo> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
00338c98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00338c9c  04 c0 90 e5                                      ldr ip, [r0, #4]
00338ca0  20 d0 4d e2                                      sub sp, sp, #0x20
00338ca4  00 00 5c e3                                      cmp ip, #0
00338ca8  39 00 00 0a                                      beq #0x338d94
00338cac  00 10 91 e5                                      ldr r1, [r1]
00338cb0  00 20 a0 e1                                      mov r2, r0
00338cb4  00 00 00 ea                                      b #0x338cbc
00338cb8  03 c0 a0 e1                                      mov ip, r3
00338cbc  10 30 9c e5                                      ldr r3, [ip, #0x10]
00338cc0  01 00 53 e1                                      cmp r3, r1
00338cc4  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00338cc8  08 30 9c a5                                      ldrge r3, [ip, #8]
00338ccc  02 c0 a0 b1                                      movlt ip, r2
00338cd0  0c 20 a0 e1                                      mov r2, ip
00338cd4  00 00 53 e3                                      cmp r3, #0
00338cd8  f6 ff ff 1a                                      bne #0x338cb8
00338cdc  0c 00 50 e1                                      cmp r0, ip
00338ce0  03 00 00 0a                                      beq #0x338cf4
00338ce4  10 30 9c e5                                      ldr r3, [ip, #0x10]
00338ce8  0c 80 a0 e1                                      mov r8, ip
00338cec  03 00 51 e1                                      cmp r1, r3
00338cf0  24 00 00 aa                                      bge #0x338d88
00338cf4  20 50 8d e2                                      add r5, sp, #0x20
00338cf8  1c 10 25 e5                                      str r1, [r5, #-0x1c]!
00338cfc  04 60 85 e2                                      add r6, r5, #4
00338d00  00 10 a0 e1                                      mov r1, r0
00338d04  10 40 8d e2                                      add r4, sp, #0x10
00338d08  1c 00 8d e2                                      add r0, sp, #0x1c
00338d0c  18 20 8d e2                                      add r2, sp, #0x18
00338d10  05 30 a0 e1                                      mov r3, r5
00338d14  18 c0 8d e5                                      str ip, [sp, #0x18]
00338d18  10 40 8d e5                                      str r4, [sp, #0x10]
00338d1c  14 40 8d e5                                      str r4, [sp, #0x14]
00338d20  08 60 8d e5                                      str r6, [sp, #8]
00338d24  0c 60 8d e5                                      str r6, [sp, #0xc]
00338d28  fd fe ff eb                                      bl #0x338924
00338d2c  08 00 9d e5                                      ldr r0, [sp, #8]
00338d30  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00338d34  06 00 50 e1                                      cmp r0, r6
00338d38  01 00 00 1a                                      bne #0x338d44
00338d3c  05 00 00 ea                                      b #0x338d58
00338d40  07 00 a0 e1                                      mov r0, r7
00338d44  00 70 90 e5                                      ldr r7, [r0]
00338d48  14 10 a0 e3                                      mov r1, #0x14
00338d4c  6b 40 0f eb                                      bl #0x708f00
00338d50  06 00 57 e1                                      cmp r7, r6
00338d54  f9 ff ff 1a                                      bne #0x338d40
00338d58  10 00 9d e5                                      ldr r0, [sp, #0x10]
00338d5c  04 00 50 e1                                      cmp r0, r4
00338d60  08 00 00 0a                                      beq #0x338d88
00338d64  04 50 85 e2                                      add r5, r5, #4
00338d68  0c 50 8d e5                                      str r5, [sp, #0xc]
00338d6c  08 50 8d e5                                      str r5, [sp, #8]
00338d70  00 50 90 e5                                      ldr r5, [r0]
00338d74  14 10 a0 e3                                      mov r1, #0x14
00338d78  60 40 0f eb                                      bl #0x708f00
00338d7c  04 00 55 e1                                      cmp r5, r4
00338d80  05 00 a0 e1                                      mov r0, r5
00338d84  f9 ff ff 1a                                      bne #0x338d70
00338d88  14 00 88 e2                                      add r0, r8, #0x14
00338d8c  20 d0 8d e2                                      add sp, sp, #0x20
00338d90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00338d94  00 10 91 e5                                      ldr r1, [r1]
00338d98  00 c0 a0 e1                                      mov ip, r0
00338d9c  ce ff ff ea                                      b #0x338cdc
