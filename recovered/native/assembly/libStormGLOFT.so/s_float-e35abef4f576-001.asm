; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a68a0, declared_size=24, range_size=24, mode=thumb
; class-group: s_float
; alias: _ZN7s_float5printEv
; demangled: s_float::print()
; decoder-mode: thumb
000a68a0  90 ed 03 0a                                      vldr s0, [r0, #0xc]
000a68a4  03 a0                                            adr r0, #0xc
000a68a6  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
000a68aa  53 ec 10 2b                                      vmov r2, r3, d0
000a68ae  0a f0 7b b9                                      b.w #0xb0ba8
000a68b2  00 bf                                            nop
000a68b4  25 66                                            str r5, [r4, #0x60]
000a68b6  00 00                                            movs r0, r0

; FUNCTION 0x000a6a0a, declared_size=4, range_size=4, mode=thumb
; class-group: s_float
; alias: _ZN7s_float6fvalueEv
; demangled: s_float::fvalue()
; decoder-mode: thumb
000a6a0a  c0 68                                            ldr r0, [r0, #0xc]
000a6a0c  70 47                                            bx lr
