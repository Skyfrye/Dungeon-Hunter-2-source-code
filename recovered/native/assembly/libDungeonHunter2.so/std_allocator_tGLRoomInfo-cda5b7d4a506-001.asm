; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081cc54, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<tGLRoomInfo*>
; alias: _ZNSaIP11tGLRoomInfoE11_M_allocateEjRj
; demangled: std::allocator<tGLRoomInfo*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0081cc54  10 40 2d e9                                      push {r4, lr}
0081cc58  07 01 71 e3                                      cmn r1, #0xc0000001
0081cc5c  08 d0 4d e2                                      sub sp, sp, #8
0081cc60  02 40 a0 e1                                      mov r4, r2
0081cc64  10 00 00 8a                                      bhi #0x81ccac
0081cc68  00 00 51 e3                                      cmp r1, #0
0081cc6c  01 00 a0 01                                      moveq r0, r1
0081cc70  01 00 00 1a                                      bne #0x81cc7c
0081cc74  08 d0 8d e2                                      add sp, sp, #8
0081cc78  10 80 bd e8                                      pop {r4, pc}
0081cc7c  01 01 a0 e1                                      lsl r0, r1, #2
0081cc80  80 00 50 e3                                      cmp r0, #0x80
0081cc84  04 00 8d e5                                      str r0, [sp, #4]
0081cc88  05 00 00 8a                                      bhi #0x81cca4
0081cc8c  04 00 8d e2                                      add r0, sp, #4
0081cc90  a0 85 02 eb                                      bl #0x8be318
0081cc94  04 30 9d e5                                      ldr r3, [sp, #4]
0081cc98  23 31 a0 e1                                      lsr r3, r3, #2
0081cc9c  00 30 84 e5                                      str r3, [r4]
0081cca0  f3 ff ff ea                                      b #0x81cc74
0081cca4  ea cd eb eb                                      bl #0x310454
0081cca8  f9 ff ff ea                                      b #0x81cc94
0081ccac  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0081ccb0  00 00 8f e0                                      add r0, pc, r0
0081ccb4  02 c5 eb eb                                      bl #0x30e0c4
0081ccb8  01 00 a0 e3                                      mov r0, #1
0081ccbc  61 c4 eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0081ccc0  c0 17 0a 00                                      .byte 0xc0, 0x17, 0x0a, 0x00
