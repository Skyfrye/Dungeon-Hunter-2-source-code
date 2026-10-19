; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a65e8, declared_size=20, range_size=20, mode=thumb
; class-group: s_symbol
; alias: _ZN8s_symbolC1EPKcj
; demangled: s_symbol::s_symbol(char const*, unsigned int)
; alias: _ZN8s_symbolC2EPKcj
; demangled: s_symbol::s_symbol(char const*, unsigned int)
; decoder-mode: thumb
000a65e8  03 4a                                            ldr r2, [pc, #0xc]
000a65ea  c1 60                                            str r1, [r0, #0xc]
000a65ec  7a 44                                            add r2, pc
000a65ee  12 68                                            ldr r2, [r2]
000a65f0  02 f1 08 01                                      add.w r1, r2, #8
000a65f4  01 60                                            str r1, [r0]
000a65f6  70 47                                            bx lr
000a65f8  38 64                                            str r0, [r7, #0x40]
000a65fa  03 00                                            movs r3, r0

; FUNCTION 0x000a68b8, declared_size=12, range_size=12, mode=thumb
; class-group: s_symbol
; alias: _ZN8s_symbol5printEv
; demangled: s_symbol::print()
; decoder-mode: thumb
000a68b8  c1 68                                            ldr r1, [r0, #0xc]
000a68ba  01 a0                                            adr r0, #4
000a68bc  0a f0 74 b9                                      b.w #0xb0ba8
000a68c0  25 73                                            strb r5, [r4, #0xc]
000a68c2  00 00                                            movs r0, r0

; FUNCTION 0x000a6a0e, declared_size=4, range_size=4, mode=thumb
; class-group: s_symbol
; alias: _ZNK8s_symbol9is_symbolEv
; demangled: s_symbol::is_symbol() const
; decoder-mode: thumb
000a6a0e  01 20                                            movs r0, #1
000a6a10  70 47                                            bx lr
