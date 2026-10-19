; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e65e0, declared_size=88, range_size=88, mode=arm
; class-group: ProjectileManager::_LaserTypeProjectile* std::vector<ProjectileManager::_LaserTypeProjectile, std::allocator<ProjectileManager::_LaserTypeProjectile> >
; alias: _ZNSt6vectorIN17ProjectileManager20_LaserTypeProjectileESaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: ProjectileManager::_LaserTypeProjectile* std::vector<ProjectileManager::_LaserTypeProjectile, std::allocator<ProjectileManager::_LaserTypeProjectile> >::_M_allocate_and_copy<ProjectileManager::_LaserTypeProjectile*>(unsigned int&, ProjectileManager::_LaserTypeProjectile*, ProjectileManager::_LaserTypeProjectile*)
; decoder-mode: arm
003e65e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e65e4  02 40 a0 e1                                      mov r4, r2
003e65e8  03 50 a0 e1                                      mov r5, r3
003e65ec  05 50 64 e0                                      rsb r5, r4, r5
003e65f0  01 20 a0 e1                                      mov r2, r1
003e65f4  08 00 80 e2                                      add r0, r0, #8
003e65f8  00 10 91 e5                                      ldr r1, [r1]
003e65fc  c5 51 a0 e1                                      asr r5, r5, #3
003e6600  da ff ff eb                                      bl #0x3e6570
003e6604  00 00 55 e3                                      cmp r5, #0
003e6608  09 00 00 da                                      ble #0x3e6634
003e660c  00 10 a0 e3                                      mov r1, #0
003e6610  04 20 a0 e1                                      mov r2, r4
003e6614  01 c0 b2 e7                                      ldr ip, [r2, r1]!
003e6618  00 30 a0 e1                                      mov r3, r0
003e661c  01 50 55 e2                                      subs r5, r5, #1
003e6620  01 c0 a3 e7                                      str ip, [r3, r1]!
003e6624  04 20 d2 e5                                      ldrb r2, [r2, #4]
003e6628  08 10 81 e2                                      add r1, r1, #8
003e662c  04 20 c3 e5                                      strb r2, [r3, #4]
003e6630  f6 ff ff 1a                                      bne #0x3e6610
003e6634  70 80 bd e8                                      pop {r4, r5, r6, pc}
