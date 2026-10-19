; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00343a90, declared_size=156, range_size=156, mode=arm
; class-group: short& std::map<int, short, std::less<int>, std::allocator<std::pair<int const, short> > >
; alias: _ZNSt3mapIisSt4lessIiESaISt4pairIKisEEEixIiEERsRKT_
; demangled: short& std::map<int, short, std::less<int>, std::allocator<std::pair<int const, short> > >::operator[]<int>(int const&)
; decoder-mode: arm
00343a90  10 40 2d e9                                      push {r4, lr}
00343a94  04 c0 90 e5                                      ldr ip, [r0, #4]
00343a98  10 d0 4d e2                                      sub sp, sp, #0x10
00343a9c  00 00 5c e3                                      cmp ip, #0
00343aa0  1e 00 00 0a                                      beq #0x343b20
00343aa4  00 40 91 e5                                      ldr r4, [r1]
00343aa8  00 20 a0 e1                                      mov r2, r0
00343aac  00 00 00 ea                                      b #0x343ab4
00343ab0  03 c0 a0 e1                                      mov ip, r3
00343ab4  10 30 9c e5                                      ldr r3, [ip, #0x10]
00343ab8  03 00 54 e1                                      cmp r4, r3
00343abc  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
00343ac0  08 30 9c d5                                      ldrle r3, [ip, #8]
00343ac4  02 c0 a0 c1                                      movgt ip, r2
00343ac8  0c 20 a0 e1                                      mov r2, ip
00343acc  00 00 53 e3                                      cmp r3, #0
00343ad0  f6 ff ff 1a                                      bne #0x343ab0
00343ad4  0c 00 50 e1                                      cmp r0, ip
00343ad8  03 00 00 0a                                      beq #0x343aec
00343adc  10 20 9c e5                                      ldr r2, [ip, #0x10]
00343ae0  0c 30 a0 e1                                      mov r3, ip
00343ae4  04 00 52 e1                                      cmp r2, r4
00343ae8  09 00 00 da                                      ble #0x343b14
00343aec  00 10 a0 e1                                      mov r1, r0
00343af0  0d 30 a0 e1                                      mov r3, sp
00343af4  08 c0 8d e5                                      str ip, [sp, #8]
00343af8  0c 00 8d e2                                      add r0, sp, #0xc
00343afc  00 c0 a0 e3                                      mov ip, #0
00343b00  08 20 8d e2                                      add r2, sp, #8
00343b04  00 40 8d e5                                      str r4, [sp]
00343b08  b4 c0 cd e1                                      strh ip, [sp, #4]
00343b0c  02 ff ff eb                                      bl #0x34371c
00343b10  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00343b14  14 00 83 e2                                      add r0, r3, #0x14
00343b18  10 d0 8d e2                                      add sp, sp, #0x10
00343b1c  10 80 bd e8                                      pop {r4, pc}
00343b20  00 40 91 e5                                      ldr r4, [r1]
00343b24  00 c0 a0 e1                                      mov ip, r0
00343b28  e9 ff ff ea                                      b #0x343ad4
