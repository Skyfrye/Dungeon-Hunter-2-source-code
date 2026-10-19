; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b77a8, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::tu_random::generator
; alias: _ZN7gameswf9tu_random9generator11seed_randomEj
; demangled: gameswf::tu_random::generator::seed_random(unsigned int)
; decoder-mode: arm
007b77a8  00 00 51 e3                                      cmp r1, #0
007b77ac  39 30 03 e3                                      movw r3, #0x3039
007b77b0  00 20 a0 e3                                      mov r2, #0
007b77b4  01 30 a0 11                                      movne r3, r1
007b77b8  83 36 23 e0                                      eor r3, r3, r3, lsl #13
007b77bc  a3 38 23 e0                                      eor r3, r3, r3, lsr #17
007b77c0  83 32 23 e0                                      eor r3, r3, r3, lsl #5
007b77c4  02 30 80 e7                                      str r3, [r0, r2]
007b77c8  04 20 82 e2                                      add r2, r2, #4
007b77cc  20 00 52 e3                                      cmp r2, #0x20
007b77d0  f8 ff ff 1a                                      bne #0x7b77b8
007b77d4  c4 37 08 e3                                      movw r3, #0x87c4
007b77d8  05 30 40 e3                                      movt r3, #5
007b77dc  07 20 a0 e3                                      mov r2, #7
007b77e0  24 20 80 e5                                      str r2, [r0, #0x24]
007b77e4  20 30 80 e5                                      str r3, [r0, #0x20]
007b77e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b77ec, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::tu_random::generator
; alias: _ZN7gameswf9tu_random9generatorC1Ev
; demangled: gameswf::tu_random::generator::generator()
; decoder-mode: arm
007b77ec  b1 18 06 e3                                      movw r1, #0x68b1
007b77f0  10 40 2d e9                                      push {r4, lr}
007b77f4  de 1a 43 e3                                      movt r1, #0x3ade
007b77f8  00 40 a0 e1                                      mov r4, r0
007b77fc  e9 ff ff eb                                      bl #0x7b77a8
007b7800  04 00 a0 e1                                      mov r0, r4
007b7804  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b7808, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::tu_random::generator
; alias: _ZN7gameswf9tu_random9generatorC2Ev
; demangled: gameswf::tu_random::generator::generator()
; decoder-mode: arm
007b7808  b1 18 06 e3                                      movw r1, #0x68b1
007b780c  10 40 2d e9                                      push {r4, lr}
007b7810  de 1a 43 e3                                      movt r1, #0x3ade
007b7814  00 40 a0 e1                                      mov r4, r0
007b7818  e2 ff ff eb                                      bl #0x7b77a8
007b781c  04 00 a0 e1                                      mov r0, r4
007b7820  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b7838, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::tu_random::generator
; alias: _ZN7gameswf9tu_random9generator11next_randomEv
; demangled: gameswf::tu_random::generator::next_random()
; decoder-mode: arm
007b7838  04 40 2d e5                                      str r4, [sp, #-4]!
007b783c  24 c0 90 e5                                      ldr ip, [r0, #0x24]
007b7840  00 30 a0 e1                                      mov r3, r0
007b7844  20 00 90 e5                                      ldr r0, [r0, #0x20]
007b7848  01 c0 8c e2                                      add ip, ip, #1
007b784c  07 c0 0c e2                                      and ip, ip, #7
007b7850  24 c0 83 e5                                      str ip, [r3, #0x24]
007b7854  0c 41 93 e7                                      ldr r4, [r3, ip, lsl #2]
007b7858  5e 24 02 e3                                      movw r2, #0x245e
007b785c  b5 2a 42 e3                                      movt r2, #0x2ab5
007b7860  00 10 a0 e3                                      mov r1, #0
007b7864  92 04 a1 e0                                      umlal r0, r1, r2, r4
007b7868  00 40 91 e0                                      adds r4, r1, r0
007b786c  fe 0f 0f e3                                      movw r0, #0xfffe
007b7870  01 40 84 22                                      addhs r4, r4, #1
007b7874  ff 0f 4f e3                                      movt r0, #0xffff
007b7878  01 20 a0 e1                                      mov r2, r1
007b787c  00 00 64 e0                                      rsb r0, r4, r0
007b7880  01 20 81 22                                      addhs r2, r1, #1
007b7884  20 10 83 e5                                      str r1, [r3, #0x20]
007b7888  20 20 83 25                                      strhs r2, [r3, #0x20]
007b788c  0c 01 83 e7                                      str r0, [r3, ip, lsl #2]
007b7890  10 00 bd e8                                      ldm sp!, {r4}
007b7894  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b78a8, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::tu_random::generator
; alias: _ZN7gameswf9tu_random9generator14get_unit_floatEv
; demangled: gameswf::tu_random::generator::get_unit_float()
; decoder-mode: arm
007b78a8  10 40 2d e9                                      push {r4, lr}
007b78ac  e1 ff ff eb                                      bl #0x7b7838
007b78b0  20 04 a0 e1                                      lsr r0, r0, #8
007b78b4  89 5a ed eb                                      bl #0x30e2e0
007b78b8  2d 13 e0 e3                                      mvn r1, #0xb4000000
007b78bc  02 15 41 e2                                      sub r1, r1, #0x800000
007b78c0  f3 5c ed eb                                      bl #0x30ec94
007b78c4  10 80 bd e8                                      pop {r4, pc}
