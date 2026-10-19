; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b7824, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::tu_random
; alias: _ZN7gameswf9tu_random11seed_randomEj
; demangled: gameswf::tu_random::seed_random(unsigned int)
; decoder-mode: arm
007b7824  00 10 a0 e1                                      mov r1, r0
007b7828  04 00 9f e5                                      ldr r0, [pc, #4]
007b782c  00 00 8f e0                                      add r0, pc, r0
007b7830  dc ff ff ea                                      b #0x7b77a8
; mapping-symbol data/literal pool
007b7834  6c 73 27 00                                      .byte 0x6c, 0x73, 0x27, 0x00

; FUNCTION 0x007b7898, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::tu_random
; alias: _ZN7gameswf9tu_random11next_randomEv
; demangled: gameswf::tu_random::next_random()
; decoder-mode: arm
007b7898  04 00 9f e5                                      ldr r0, [pc, #4]
007b789c  00 00 8f e0                                      add r0, pc, r0
007b78a0  e4 ff ff ea                                      b #0x7b7838
; mapping-symbol data/literal pool
007b78a4  fc 72 27 00                                      .byte 0xfc, 0x72, 0x27, 0x00

; FUNCTION 0x007b78c8, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::tu_random
; alias: _ZN7gameswf9tu_random14get_unit_floatEv
; demangled: gameswf::tu_random::get_unit_float()
; decoder-mode: arm
007b78c8  04 00 9f e5                                      ldr r0, [pc, #4]
007b78cc  00 00 8f e0                                      add r0, pc, r0
007b78d0  f4 ff ff ea                                      b #0x7b78a8
; mapping-symbol data/literal pool
007b78d4  cc 72 27 00                                      .byte 0xcc, 0x72, 0x27, 0x00
