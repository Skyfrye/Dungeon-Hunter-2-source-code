; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a1fe8, declared_size=60, range_size=60, mode=arm
; class-group: GameObject** std::vector<GameObject*, std::allocator<GameObject*> >
; alias: _ZNSt6vectorIP10GameObjectSaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: GameObject** std::vector<GameObject*, std::allocator<GameObject*> >::_M_allocate_and_copy<GameObject**>(unsigned int&, GameObject**, GameObject**)
; decoder-mode: arm
004a1fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
004a1fec  08 00 80 e2                                      add r0, r0, #8
004a1ff0  02 40 a0 e1                                      mov r4, r2
004a1ff4  01 20 a0 e1                                      mov r2, r1
004a1ff8  00 10 91 e5                                      ldr r1, [r1]
004a1ffc  03 50 a0 e1                                      mov r5, r3
004a2000  82 b1 fb eb                                      bl #0x38e610
004a2004  05 00 54 e1                                      cmp r4, r5
004a2008  00 60 a0 e1                                      mov r6, r0
004a200c  02 00 00 0a                                      beq #0x4a201c
004a2010  04 10 a0 e1                                      mov r1, r4
004a2014  05 20 64 e0                                      rsb r2, r4, r5
004a2018  12 b2 f9 eb                                      bl #0x30e868
004a201c  06 00 a0 e1                                      mov r0, r6
004a2020  70 80 bd e8                                      pop {r4, r5, r6, pc}
