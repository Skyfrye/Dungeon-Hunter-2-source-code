; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005daf94, declared_size=84, range_size=84, mode=arm
; class-group: glitch::core::SSharedString
; alias: _ZN6glitch4core13SSharedStringaSEPKc
; demangled: glitch::core::SSharedString::operator=(char const*)
; decoder-mode: arm
005daf94  10 40 2d e9                                      push {r4, lr}
005daf98  00 40 a0 e1                                      mov r4, r0
005daf9c  01 00 a0 e1                                      mov r0, r1
005dafa0  01 10 a0 e3                                      mov r1, #1
005dafa4  32 28 03 eb                                      bl #0x6a5074
005dafa8  00 30 50 e2                                      subs r3, r0, #0
005dafac  00 20 93 15                                      ldrne r2, [r3]
005dafb0  01 20 82 12                                      addne r2, r2, #1
005dafb4  00 20 83 15                                      strne r2, [r3]
005dafb8  00 00 94 e5                                      ldr r0, [r4]
005dafbc  00 30 84 e5                                      str r3, [r4]
005dafc0  00 00 50 e3                                      cmp r0, #0
005dafc4  05 00 00 0a                                      beq #0x5dafe0
005dafc8  00 30 90 e5                                      ldr r3, [r0]
005dafcc  01 30 43 e2                                      sub r3, r3, #1
005dafd0  00 00 53 e3                                      cmp r3, #0
005dafd4  00 30 80 e5                                      str r3, [r0]
005dafd8  00 00 00 1a                                      bne #0x5dafe0
005dafdc  6e 27 03 eb                                      bl #0x6a4d9c
005dafe0  04 00 a0 e1                                      mov r0, r4
005dafe4  10 80 bd e8                                      pop {r4, pc}
