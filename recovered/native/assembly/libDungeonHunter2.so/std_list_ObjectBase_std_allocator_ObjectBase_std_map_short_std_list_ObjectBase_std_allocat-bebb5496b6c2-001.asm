; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003452ac, declared_size=200, range_size=200, mode=arm
; class-group: std::list<ObjectBase*, std::allocator<ObjectBase*> >& std::map<short, std::list<ObjectBase*, std::allocator<ObjectBase*> >, std::less<short>, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >
; alias: _ZNSt3mapIsSt4listIP10ObjectBaseSaIS2_EESt4lessIsESaISt4pairIKsS4_EEEixIiEERS4_RKT_
; demangled: std::list<ObjectBase*, std::allocator<ObjectBase*> >& std::map<short, std::list<ObjectBase*, std::allocator<ObjectBase*> >, std::less<short>, std::allocator<std::pair<short const, std::list<ObjectBase*, std::allocator<ObjectBase*> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
003452ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003452b0  04 c0 90 e5                                      ldr ip, [r0, #4]
003452b4  20 d0 4d e2                                      sub sp, sp, #0x20
003452b8  00 00 5c e3                                      cmp ip, #0
003452bc  29 00 00 0a                                      beq #0x345368
003452c0  b0 40 d1 e1                                      ldrh r4, [r1]
003452c4  00 20 a0 e1                                      mov r2, r0
003452c8  74 10 bf e6                                      sxth r1, r4
003452cc  00 00 00 ea                                      b #0x3452d4
003452d0  03 c0 a0 e1                                      mov ip, r3
003452d4  f0 31 dc e1                                      ldrsh r3, [ip, #0x10]
003452d8  01 00 53 e1                                      cmp r3, r1
003452dc  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
003452e0  08 30 9c a5                                      ldrge r3, [ip, #8]
003452e4  02 c0 a0 b1                                      movlt ip, r2
003452e8  0c 20 a0 e1                                      mov r2, ip
003452ec  00 00 53 e3                                      cmp r3, #0
003452f0  f6 ff ff 1a                                      bne #0x3452d0
003452f4  0c 00 50 e1                                      cmp r0, ip
003452f8  04 00 00 0a                                      beq #0x345310
003452fc  f0 21 dc e1                                      ldrsh r2, [ip, #0x10]
00345300  74 30 bf e6                                      sxth r3, r4
00345304  0c 60 a0 e1                                      mov r6, ip
00345308  03 00 52 e1                                      cmp r2, r3
0034530c  12 00 00 da                                      ble #0x34535c
00345310  20 50 8d e2                                      add r5, sp, #0x20
00345314  bc 41 65 e1                                      strh r4, [r5, #-0x1c]!
00345318  00 10 a0 e1                                      mov r1, r0
0034531c  05 30 a0 e1                                      mov r3, r5
00345320  10 40 8d e2                                      add r4, sp, #0x10
00345324  04 50 85 e2                                      add r5, r5, #4
00345328  18 20 8d e2                                      add r2, sp, #0x18
0034532c  1c 00 8d e2                                      add r0, sp, #0x1c
00345330  18 c0 8d e5                                      str ip, [sp, #0x18]
00345334  10 40 8d e5                                      str r4, [sp, #0x10]
00345338  14 40 8d e5                                      str r4, [sp, #0x14]
0034533c  08 50 8d e5                                      str r5, [sp, #8]
00345340  0c 50 8d e5                                      str r5, [sp, #0xc]
00345344  b1 fa ff eb                                      bl #0x343e10
00345348  05 00 a0 e1                                      mov r0, r5
0034534c  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00345350  c5 ff ff eb                                      bl #0x34526c
00345354  04 00 a0 e1                                      mov r0, r4
00345358  c3 ff ff eb                                      bl #0x34526c
0034535c  14 00 86 e2                                      add r0, r6, #0x14
00345360  20 d0 8d e2                                      add sp, sp, #0x20
00345364  70 80 bd e8                                      pop {r4, r5, r6, pc}
00345368  b0 40 d1 e1                                      ldrh r4, [r1]
0034536c  00 c0 a0 e1                                      mov ip, r0
00345370  df ff ff ea                                      b #0x3452f4
