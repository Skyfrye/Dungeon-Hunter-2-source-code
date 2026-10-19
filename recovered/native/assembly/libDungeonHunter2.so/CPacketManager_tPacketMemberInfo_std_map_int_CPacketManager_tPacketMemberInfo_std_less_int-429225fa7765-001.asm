; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00815bfc, declared_size=176, range_size=176, mode=arm
; class-group: CPacketManager::tPacketMemberInfo& std::map<int, CPacketManager::tPacketMemberInfo, std::less<int>, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >
; alias: _ZNSt3mapIiN14CPacketManager17tPacketMemberInfoESt4lessIiESaISt4pairIKiS1_EEEixIiEERS1_RKT_
; demangled: CPacketManager::tPacketMemberInfo& std::map<int, CPacketManager::tPacketMemberInfo, std::less<int>, std::allocator<std::pair<int const, CPacketManager::tPacketMemberInfo> > >::operator[]<int>(int const&)
; decoder-mode: arm
00815bfc  10 40 2d e9                                      push {r4, lr}
00815c00  04 c0 90 e5                                      ldr ip, [r0, #4]
00815c04  20 d0 4d e2                                      sub sp, sp, #0x20
00815c08  00 00 5c e3                                      cmp ip, #0
00815c0c  23 00 00 0a                                      beq #0x815ca0
00815c10  00 40 91 e5                                      ldr r4, [r1]
00815c14  00 20 a0 e1                                      mov r2, r0
00815c18  00 00 00 ea                                      b #0x815c20
00815c1c  03 c0 a0 e1                                      mov ip, r3
00815c20  10 30 9c e5                                      ldr r3, [ip, #0x10]
00815c24  03 00 54 e1                                      cmp r4, r3
00815c28  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00815c2c  08 30 9c d5                                      ldrle r3, [ip, #8]
00815c30  02 c0 a0 c1                                      movgt ip, r2
00815c34  0c 20 a0 e1                                      mov r2, ip
00815c38  00 00 53 e3                                      cmp r3, #0
00815c3c  f6 ff ff 1a                                      bne #0x815c1c
00815c40  0c 00 50 e1                                      cmp r0, ip
00815c44  03 00 00 0a                                      beq #0x815c58
00815c48  10 20 9c e5                                      ldr r2, [ip, #0x10]
00815c4c  0c 30 a0 e1                                      mov r3, ip
00815c50  04 00 52 e1                                      cmp r2, r4
00815c54  0e 00 00 da                                      ble #0x815c94
00815c58  00 e0 a0 e3                                      mov lr, #0
00815c5c  00 10 a0 e1                                      mov r1, r0
00815c60  04 30 8d e2                                      add r3, sp, #4
00815c64  04 40 8d e5                                      str r4, [sp, #4]
00815c68  1c 00 8d e2                                      add r0, sp, #0x1c
00815c6c  18 20 8d e2                                      add r2, sp, #0x18
00815c70  07 40 a0 e3                                      mov r4, #7
00815c74  15 e0 cd e5                                      strb lr, [sp, #0x15]
00815c78  14 40 cd e5                                      strb r4, [sp, #0x14]
00815c7c  08 e0 8d e5                                      str lr, [sp, #8]
00815c80  18 c0 8d e5                                      str ip, [sp, #0x18]
00815c84  10 e0 8d e5                                      str lr, [sp, #0x10]
00815c88  0c e0 8d e5                                      str lr, [sp, #0xc]
00815c8c  fd fe ff eb                                      bl #0x815888
00815c90  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00815c94  14 00 83 e2                                      add r0, r3, #0x14
00815c98  20 d0 8d e2                                      add sp, sp, #0x20
00815c9c  10 80 bd e8                                      pop {r4, pc}
00815ca0  00 40 91 e5                                      ldr r4, [r1]
00815ca4  00 c0 a0 e1                                      mov ip, r0
00815ca8  e4 ff ff ea                                      b #0x815c40
