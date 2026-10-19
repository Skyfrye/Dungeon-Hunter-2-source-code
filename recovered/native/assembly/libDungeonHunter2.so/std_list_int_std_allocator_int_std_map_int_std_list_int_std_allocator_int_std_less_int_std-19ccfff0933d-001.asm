; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345a8c, declared_size=192, range_size=192, mode=arm
; class-group: std::list<int, std::allocator<int> >& std::map<int, std::list<int, std::allocator<int> >, std::less<int>, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >
; alias: _ZNSt3mapIiSt4listIiSaIiEESt4lessIiESaISt4pairIKiS2_EEEixIiEERS2_RKT_
; demangled: std::list<int, std::allocator<int> >& std::map<int, std::list<int, std::allocator<int> >, std::less<int>, std::allocator<std::pair<int const, std::list<int, std::allocator<int> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
00345a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00345a90  04 c0 90 e5                                      ldr ip, [r0, #4]
00345a94  20 d0 4d e2                                      sub sp, sp, #0x20
00345a98  00 00 5c e3                                      cmp ip, #0
00345a9c  27 00 00 0a                                      beq #0x345b40
00345aa0  00 10 91 e5                                      ldr r1, [r1]
00345aa4  00 20 a0 e1                                      mov r2, r0
00345aa8  00 00 00 ea                                      b #0x345ab0
00345aac  03 c0 a0 e1                                      mov ip, r3
00345ab0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00345ab4  01 00 53 e1                                      cmp r3, r1
00345ab8  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
00345abc  08 30 9c a5                                      ldrge r3, [ip, #8]
00345ac0  02 c0 a0 b1                                      movlt ip, r2
00345ac4  0c 20 a0 e1                                      mov r2, ip
00345ac8  00 00 53 e3                                      cmp r3, #0
00345acc  f6 ff ff 1a                                      bne #0x345aac
00345ad0  0c 00 50 e1                                      cmp r0, ip
00345ad4  03 00 00 0a                                      beq #0x345ae8
00345ad8  10 30 9c e5                                      ldr r3, [ip, #0x10]
00345adc  0c 60 a0 e1                                      mov r6, ip
00345ae0  03 00 51 e1                                      cmp r1, r3
00345ae4  12 00 00 aa                                      bge #0x345b34
00345ae8  20 50 8d e2                                      add r5, sp, #0x20
00345aec  1c 10 25 e5                                      str r1, [r5, #-0x1c]!
00345af0  05 30 a0 e1                                      mov r3, r5
00345af4  00 10 a0 e1                                      mov r1, r0
00345af8  04 50 85 e2                                      add r5, r5, #4
00345afc  10 40 8d e2                                      add r4, sp, #0x10
00345b00  18 20 8d e2                                      add r2, sp, #0x18
00345b04  1c 00 8d e2                                      add r0, sp, #0x1c
00345b08  18 c0 8d e5                                      str ip, [sp, #0x18]
00345b0c  10 40 8d e5                                      str r4, [sp, #0x10]
00345b10  14 40 8d e5                                      str r4, [sp, #0x14]
00345b14  08 50 8d e5                                      str r5, [sp, #8]
00345b18  0c 50 8d e5                                      str r5, [sp, #0xc]
00345b1c  6f fa ff eb                                      bl #0x3444e0
00345b20  05 00 a0 e1                                      mov r0, r5
00345b24  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00345b28  c7 ff ff eb                                      bl #0x345a4c
00345b2c  04 00 a0 e1                                      mov r0, r4
00345b30  c5 ff ff eb                                      bl #0x345a4c
00345b34  14 00 86 e2                                      add r0, r6, #0x14
00345b38  20 d0 8d e2                                      add sp, sp, #0x20
00345b3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00345b40  00 10 91 e5                                      ldr r1, [r1]
00345b44  00 c0 a0 e1                                      mov ip, r0
00345b48  e0 ff ff ea                                      b #0x345ad0
