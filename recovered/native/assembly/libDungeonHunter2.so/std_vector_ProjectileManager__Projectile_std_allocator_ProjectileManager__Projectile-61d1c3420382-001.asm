; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e6830, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<ProjectileManager::_Projectile, std::allocator<ProjectileManager::_Projectile> >
; alias: _ZNSt6vectorIN17ProjectileManager11_ProjectileESaIS1_EED1Ev
; demangled: std::vector<ProjectileManager::_Projectile, std::allocator<ProjectileManager::_Projectile> >::~vector()
; decoder-mode: arm
003e6830  10 40 2d e9                                      push {r4, lr}
003e6834  00 40 a0 e1                                      mov r4, r0
003e6838  00 00 90 e5                                      ldr r0, [r0]
003e683c  00 00 50 e3                                      cmp r0, #0
003e6840  05 00 00 0a                                      beq #0x3e685c
003e6844  08 10 94 e5                                      ldr r1, [r4, #8]
003e6848  01 10 60 e0                                      rsb r1, r0, r1
003e684c  07 10 c1 e3                                      bic r1, r1, #7
003e6850  80 00 51 e3                                      cmp r1, #0x80
003e6854  02 00 00 8a                                      bhi #0x3e6864
003e6858  a8 89 0c eb                                      bl #0x708f00
003e685c  04 00 a0 e1                                      mov r0, r4
003e6860  10 80 bd e8                                      pop {r4, pc}
003e6864  f5 a6 fc eb                                      bl #0x310440
003e6868  04 00 a0 e1                                      mov r0, r4
003e686c  10 80 bd e8                                      pop {r4, pc}
