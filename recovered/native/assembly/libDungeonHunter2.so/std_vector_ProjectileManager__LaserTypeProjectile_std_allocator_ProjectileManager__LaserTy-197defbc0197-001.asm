; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e6870, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<ProjectileManager::_LaserTypeProjectile, std::allocator<ProjectileManager::_LaserTypeProjectile> >
; alias: _ZNSt6vectorIN17ProjectileManager20_LaserTypeProjectileESaIS1_EED1Ev
; demangled: std::vector<ProjectileManager::_LaserTypeProjectile, std::allocator<ProjectileManager::_LaserTypeProjectile> >::~vector()
; decoder-mode: arm
003e6870  10 40 2d e9                                      push {r4, lr}
003e6874  00 40 a0 e1                                      mov r4, r0
003e6878  00 00 90 e5                                      ldr r0, [r0]
003e687c  00 00 50 e3                                      cmp r0, #0
003e6880  05 00 00 0a                                      beq #0x3e689c
003e6884  08 10 94 e5                                      ldr r1, [r4, #8]
003e6888  01 10 60 e0                                      rsb r1, r0, r1
003e688c  07 10 c1 e3                                      bic r1, r1, #7
003e6890  80 00 51 e3                                      cmp r1, #0x80
003e6894  02 00 00 8a                                      bhi #0x3e68a4
003e6898  98 89 0c eb                                      bl #0x708f00
003e689c  04 00 a0 e1                                      mov r0, r4
003e68a0  10 80 bd e8                                      pop {r4, pc}
003e68a4  e5 a6 fc eb                                      bl #0x310440
003e68a8  04 00 a0 e1                                      mov r0, r4
003e68ac  10 80 bd e8                                      pop {r4, pc}
