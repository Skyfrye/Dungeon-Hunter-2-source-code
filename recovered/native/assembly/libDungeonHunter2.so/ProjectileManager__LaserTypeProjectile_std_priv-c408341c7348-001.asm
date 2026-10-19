; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e6418, declared_size=84, range_size=84, mode=arm
; class-group: ProjectileManager::_LaserTypeProjectile* std::priv
; alias: _ZNSt4priv6__copyIPN17ProjectileManager20_LaserTypeProjectileES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: ProjectileManager::_LaserTypeProjectile* std::priv::__copy<ProjectileManager::_LaserTypeProjectile*, ProjectileManager::_LaserTypeProjectile*, int>(ProjectileManager::_LaserTypeProjectile*, ProjectileManager::_LaserTypeProjectile*, ProjectileManager::_LaserTypeProjectile*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003e6418  01 10 60 e0                                      rsb r1, r0, r1
003e641c  c1 11 a0 e1                                      asr r1, r1, #3
003e6420  00 00 51 e3                                      cmp r1, #0
003e6424  30 00 2d e9                                      push {r4, r5}
003e6428  00 30 a0 e1                                      mov r3, r0
003e642c  0b 00 00 da                                      ble #0x3e6460
003e6430  01 40 a0 e1                                      mov r4, r1
003e6434  00 c0 a0 e3                                      mov ip, #0
003e6438  0c 50 93 e7                                      ldr r5, [r3, ip]
003e643c  0c 00 83 e0                                      add r0, r3, ip
003e6440  01 40 54 e2                                      subs r4, r4, #1
003e6444  0c 50 82 e7                                      str r5, [r2, ip]
003e6448  04 50 d0 e5                                      ldrb r5, [r0, #4]
003e644c  0c 00 82 e0                                      add r0, r2, ip
003e6450  08 c0 8c e2                                      add ip, ip, #8
003e6454  04 50 c0 e5                                      strb r5, [r0, #4]
003e6458  f6 ff ff 1a                                      bne #0x3e6438
003e645c  81 21 82 e0                                      add r2, r2, r1, lsl #3
003e6460  02 00 a0 e1                                      mov r0, r2
003e6464  30 00 bd e8                                      pop {r4, r5}
003e6468  1e ff 2f e1                                      bx lr
