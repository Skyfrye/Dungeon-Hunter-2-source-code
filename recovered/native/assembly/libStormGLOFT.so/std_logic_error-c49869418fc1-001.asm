; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000adc84, declared_size=44, range_size=44, mode=thumb
; class-group: std::logic_error
; alias: _ZNSt11logic_errorD1Ev
; demangled: std::logic_error::~logic_error()
; alias: _ZNSt11logic_errorD2Ev
; demangled: std::logic_error::~logic_error()
; alias: _ZNSt11range_errorD1Ev
; demangled: std::range_error::~range_error()
; alias: _ZNSt11range_errorD2Ev
; demangled: std::range_error::~range_error()
; alias: _ZNSt12domain_errorD1Ev
; demangled: std::domain_error::~domain_error()
; alias: _ZNSt12domain_errorD2Ev
; demangled: std::domain_error::~domain_error()
; alias: _ZNSt12length_errorD1Ev
; demangled: std::length_error::~length_error()
; alias: _ZNSt12length_errorD2Ev
; demangled: std::length_error::~length_error()
; alias: _ZNSt12out_of_rangeD1Ev
; demangled: std::out_of_range::~out_of_range()
; alias: _ZNSt12out_of_rangeD2Ev
; demangled: std::out_of_range::~out_of_range()
; alias: _ZNSt13runtime_errorD1Ev
; demangled: std::runtime_error::~runtime_error()
; alias: _ZNSt13runtime_errorD2Ev
; demangled: std::runtime_error::~runtime_error()
; alias: _ZNSt14overflow_errorD1Ev
; demangled: std::overflow_error::~overflow_error()
; alias: _ZNSt14overflow_errorD2Ev
; demangled: std::overflow_error::~overflow_error()
; alias: _ZNSt15underflow_errorD1Ev
; demangled: std::underflow_error::~underflow_error()
; alias: _ZNSt15underflow_errorD2Ev
; demangled: std::underflow_error::~underflow_error()
; alias: _ZNSt16invalid_argumentD1Ev
; demangled: std::invalid_argument::~invalid_argument()
; alias: _ZNSt16invalid_argumentD2Ev
; demangled: std::invalid_argument::~invalid_argument()
; alias: _ZNSt17__Named_exceptionD1Ev
; demangled: std::__Named_exception::~__Named_exception()
; alias: _ZNSt17__Named_exceptionD2Ev
; demangled: std::__Named_exception::~__Named_exception()
; decoder-mode: thumb
000adc84  d0 b5                                            push {r4, r6, r7, lr}
000adc86  02 af                                            add r7, sp, #8
000adc88  04 46                                            mov r4, r0
000adc8a  08 48                                            ldr r0, [pc, #0x20]
000adc8c  78 44                                            add r0, pc
000adc8e  01 68                                            ldr r1, [r0]
000adc90  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adc94  08 31                                            adds r1, #8
000adc96  21 60                                            str r1, [r4]
000adc98  21 1d                                            adds r1, r4, #4
000adc9a  88 42                                            cmp r0, r1
000adc9c  18 bf                                            it ne
000adc9e  84 f7 ce e9                                      blxne #0x3203c
000adca2  20 46                                            mov r0, r4
000adca4  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000adca8  01 f0 3a b8                                      b.w #0xaed20
000adcac  e8 ed 02 00                                      stcl p0, c0, [r8, #8]!

; FUNCTION 0x000adce8, declared_size=48, range_size=48, mode=thumb
; class-group: std::logic_error
; alias: _ZNSt11logic_errorD0Ev
; demangled: std::logic_error::~logic_error()
; decoder-mode: thumb
000adce8  d0 b5                                            push {r4, r6, r7, lr}
000adcea  02 af                                            add r7, sp, #8
000adcec  04 46                                            mov r4, r0
000adcee  09 48                                            ldr r0, [pc, #0x24]
000adcf0  78 44                                            add r0, pc
000adcf2  01 68                                            ldr r1, [r0]
000adcf4  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adcf8  08 31                                            adds r1, #8
000adcfa  21 60                                            str r1, [r4]
000adcfc  21 1d                                            adds r1, r4, #4
000adcfe  88 42                                            cmp r0, r1
000add00  18 bf                                            it ne
000add02  84 f7 9c e9                                      blxne #0x3203c
000add06  20 46                                            mov r0, r4
000add08  01 f0 0a f8                                      bl #0xaed20
000add0c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000add10  03 f0 22 b8                                      b.w #0xb0d58
000add14  84 ed 02 00                                      stc p0, c0, [r4, #8]
