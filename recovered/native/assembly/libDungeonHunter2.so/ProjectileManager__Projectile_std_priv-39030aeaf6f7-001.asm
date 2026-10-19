; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e63c4, declared_size=84, range_size=84, mode=arm
; class-group: ProjectileManager::_Projectile* std::priv
; alias: _ZNSt4priv6__copyIPN17ProjectileManager11_ProjectileES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: ProjectileManager::_Projectile* std::priv::__copy<ProjectileManager::_Projectile*, ProjectileManager::_Projectile*, int>(ProjectileManager::_Projectile*, ProjectileManager::_Projectile*, ProjectileManager::_Projectile*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003e63c4  01 10 60 e0                                      rsb r1, r0, r1
003e63c8  c1 11 a0 e1                                      asr r1, r1, #3
003e63cc  00 00 51 e3                                      cmp r1, #0
003e63d0  30 00 2d e9                                      push {r4, r5}
003e63d4  00 30 a0 e1                                      mov r3, r0
003e63d8  0b 00 00 da                                      ble #0x3e640c
003e63dc  01 40 a0 e1                                      mov r4, r1
003e63e0  00 c0 a0 e3                                      mov ip, #0
003e63e4  0c 50 93 e7                                      ldr r5, [r3, ip]
003e63e8  0c 00 83 e0                                      add r0, r3, ip
003e63ec  01 40 54 e2                                      subs r4, r4, #1
003e63f0  0c 50 82 e7                                      str r5, [r2, ip]
003e63f4  04 50 d0 e5                                      ldrb r5, [r0, #4]
003e63f8  0c 00 82 e0                                      add r0, r2, ip
003e63fc  08 c0 8c e2                                      add ip, ip, #8
003e6400  04 50 c0 e5                                      strb r5, [r0, #4]
003e6404  f6 ff ff 1a                                      bne #0x3e63e4
003e6408  81 21 82 e0                                      add r2, r2, r1, lsl #3
003e640c  02 00 a0 e1                                      mov r0, r2
003e6410  30 00 bd e8                                      pop {r4, r5}
003e6414  1e ff 2f e1                                      bx lr
