; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e32b0, declared_size=148, range_size=148, mode=arm
; class-group: b2AABB
; alias: _ZNK6b2AABB7IsValidEv
; demangled: b2AABB::IsValid() const
; decoder-mode: arm
007e32b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007e32b4  00 50 90 e5                                      ldr r5, [r0]
007e32b8  00 40 a0 e1                                      mov r4, r0
007e32bc  08 00 90 e5                                      ldr r0, [r0, #8]
007e32c0  05 10 a0 e1                                      mov r1, r5
007e32c4  38 ac ec eb                                      bl #0x30e3ac
007e32c8  00 10 a0 e3                                      mov r1, #0
007e32cc  78 ac ec eb                                      bl #0x30e4b4
007e32d0  00 00 50 e3                                      cmp r0, #0
007e32d4  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007e32d8  04 10 94 e5                                      ldr r1, [r4, #4]
007e32dc  09 00 00 0a                                      beq #0x7e3308
007e32e0  06 00 a0 e1                                      mov r0, r6
007e32e4  30 ac ec eb                                      bl #0x30e3ac
007e32e8  00 10 a0 e3                                      mov r1, #0
007e32ec  70 ac ec eb                                      bl #0x30e4b4
007e32f0  00 00 50 e3                                      cmp r0, #0
007e32f4  03 00 00 0a                                      beq #0x7e3308
007e32f8  05 00 a0 e1                                      mov r0, r5
007e32fc  cf ac ec eb                                      bl #0x30e640
007e3300  00 00 50 e3                                      cmp r0, #0
007e3304  01 00 00 1a                                      bne #0x7e3310
007e3308  00 00 a0 e3                                      mov r0, #0
007e330c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e3310  04 00 94 e5                                      ldr r0, [r4, #4]
007e3314  c9 ac ec eb                                      bl #0x30e640
007e3318  00 00 50 e3                                      cmp r0, #0
007e331c  f9 ff ff 0a                                      beq #0x7e3308
007e3320  08 00 94 e5                                      ldr r0, [r4, #8]
007e3324  c5 ac ec eb                                      bl #0x30e640
007e3328  00 00 50 e3                                      cmp r0, #0
007e332c  f5 ff ff 0a                                      beq #0x7e3308
007e3330  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007e3334  c1 ac ec eb                                      bl #0x30e640
007e3338  00 00 50 e2                                      subs r0, r0, #0
007e333c  01 00 a0 13                                      movne r0, #1
007e3340  70 80 bd e8                                      pop {r4, r5, r6, pc}
