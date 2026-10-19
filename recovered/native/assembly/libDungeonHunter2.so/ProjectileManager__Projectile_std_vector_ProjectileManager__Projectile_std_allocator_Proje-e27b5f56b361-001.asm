; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e67d8, declared_size=88, range_size=88, mode=arm
; class-group: ProjectileManager::_Projectile* std::vector<ProjectileManager::_Projectile, std::allocator<ProjectileManager::_Projectile> >
; alias: _ZNSt6vectorIN17ProjectileManager11_ProjectileESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: ProjectileManager::_Projectile* std::vector<ProjectileManager::_Projectile, std::allocator<ProjectileManager::_Projectile> >::_M_allocate_and_copy<ProjectileManager::_Projectile*>(unsigned int&, ProjectileManager::_Projectile*, ProjectileManager::_Projectile*)
; decoder-mode: arm
003e67d8  70 40 2d e9                                      push {r4, r5, r6, lr}
003e67dc  02 40 a0 e1                                      mov r4, r2
003e67e0  03 50 a0 e1                                      mov r5, r3
003e67e4  05 50 64 e0                                      rsb r5, r4, r5
003e67e8  01 20 a0 e1                                      mov r2, r1
003e67ec  08 00 80 e2                                      add r0, r0, #8
003e67f0  00 10 91 e5                                      ldr r1, [r1]
003e67f4  c5 51 a0 e1                                      asr r5, r5, #3
003e67f8  da ff ff eb                                      bl #0x3e6768
003e67fc  00 00 55 e3                                      cmp r5, #0
003e6800  09 00 00 da                                      ble #0x3e682c
003e6804  00 10 a0 e3                                      mov r1, #0
003e6808  04 20 a0 e1                                      mov r2, r4
003e680c  01 c0 b2 e7                                      ldr ip, [r2, r1]!
003e6810  00 30 a0 e1                                      mov r3, r0
003e6814  01 50 55 e2                                      subs r5, r5, #1
003e6818  01 c0 a3 e7                                      str ip, [r3, r1]!
003e681c  04 20 d2 e5                                      ldrb r2, [r2, #4]
003e6820  08 10 81 e2                                      add r1, r1, #8
003e6824  04 20 c3 e5                                      strb r2, [r3, #4]
003e6828  f6 ff ff 1a                                      bne #0x3e6808
003e682c  70 80 bd e8                                      pop {r4, r5, r6, pc}
