; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a6894, declared_size=12, range_size=12, mode=thumb
; class-group: s_int
; alias: _ZN5s_int5printEv
; demangled: s_int::print()
; decoder-mode: thumb
000a6894  c1 68                                            ldr r1, [r0, #0xc]
000a6896  01 a0                                            adr r0, #4
000a6898  0a f0 86 b9                                      b.w #0xb0ba8
000a689c  25 64                                            str r5, [r4, #0x40]
000a689e  00 00                                            movs r0, r0

; FUNCTION 0x000a69f4, declared_size=4, range_size=4, mode=thumb
; class-group: s_int
; alias: _ZNK5s_int6is_intEv
; demangled: s_int::is_int() const
; decoder-mode: thumb
000a69f4  01 20                                            movs r0, #1
000a69f6  70 47                                            bx lr

; FUNCTION 0x000a69f8, declared_size=14, range_size=14, mode=thumb
; class-group: s_int
; alias: _ZN5s_int6fvalueEv
; demangled: s_int::fvalue()
; decoder-mode: thumb
000a69f8  90 ed 03 0a                                      vldr s0, [r0, #0xc]
000a69fc  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
000a6a00  10 ee 10 0a                                      vmov r0, s0
000a6a04  70 47                                            bx lr
