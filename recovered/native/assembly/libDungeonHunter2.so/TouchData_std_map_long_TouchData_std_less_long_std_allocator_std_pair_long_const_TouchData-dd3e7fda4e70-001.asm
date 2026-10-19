; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00382b34, declared_size=168, range_size=168, mode=arm
; class-group: TouchData& std::map<long, TouchData, std::less<long>, std::allocator<std::pair<long const, TouchData> > >
; alias: _ZNSt3mapIl9TouchDataSt4lessIlESaISt4pairIKlS0_EEEixIlEERS0_RKT_
; demangled: TouchData& std::map<long, TouchData, std::less<long>, std::allocator<std::pair<long const, TouchData> > >::operator[]<long>(long const&)
; decoder-mode: arm
00382b34  10 40 2d e9                                      push {r4, lr}
00382b38  04 c0 90 e5                                      ldr ip, [r0, #4]
00382b3c  18 d0 4d e2                                      sub sp, sp, #0x18
00382b40  00 00 5c e3                                      cmp ip, #0
00382b44  21 00 00 0a                                      beq #0x382bd0
00382b48  00 40 91 e5                                      ldr r4, [r1]
00382b4c  00 20 a0 e1                                      mov r2, r0
00382b50  00 00 00 ea                                      b #0x382b58
00382b54  03 c0 a0 e1                                      mov ip, r3
00382b58  10 30 9c e5                                      ldr r3, [ip, #0x10]
00382b5c  03 00 54 e1                                      cmp r4, r3
00382b60  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00382b64  08 30 9c d5                                      ldrle r3, [ip, #8]
00382b68  02 c0 a0 c1                                      movgt ip, r2
00382b6c  0c 20 a0 e1                                      mov r2, ip
00382b70  00 00 53 e3                                      cmp r3, #0
00382b74  f6 ff ff 1a                                      bne #0x382b54
00382b78  0c 00 50 e1                                      cmp r0, ip
00382b7c  03 00 00 0a                                      beq #0x382b90
00382b80  10 20 9c e5                                      ldr r2, [ip, #0x10]
00382b84  0c 30 a0 e1                                      mov r3, ip
00382b88  04 00 52 e1                                      cmp r2, r4
00382b8c  0c 00 00 da                                      ble #0x382bc4
00382b90  00 10 a0 e1                                      mov r1, r0
00382b94  04 30 8d e2                                      add r3, sp, #4
00382b98  10 c0 8d e5                                      str ip, [sp, #0x10]
00382b9c  14 00 8d e2                                      add r0, sp, #0x14
00382ba0  00 c0 a0 e3                                      mov ip, #0
00382ba4  10 20 8d e2                                      add r2, sp, #0x10
00382ba8  04 40 8d e5                                      str r4, [sp, #4]
00382bac  be c0 cd e1                                      strh ip, [sp, #0xe]
00382bb0  bc c0 cd e1                                      strh ip, [sp, #0xc]
00382bb4  ba c0 cd e1                                      strh ip, [sp, #0xa]
00382bb8  b8 c0 cd e1                                      strh ip, [sp, #8]
00382bbc  ff fe ff eb                                      bl #0x3827c0
00382bc0  14 30 9d e5                                      ldr r3, [sp, #0x14]
00382bc4  14 00 83 e2                                      add r0, r3, #0x14
00382bc8  18 d0 8d e2                                      add sp, sp, #0x18
00382bcc  10 80 bd e8                                      pop {r4, pc}
00382bd0  00 40 91 e5                                      ldr r4, [r1]
00382bd4  00 c0 a0 e1                                      mov ip, r0
00382bd8  e6 ff ff ea                                      b #0x382b78
