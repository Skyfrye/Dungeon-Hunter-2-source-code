; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd2a0, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<CharAISkillScript*>
; alias: _ZNSaIP17CharAISkillScriptE11_M_allocateEjRj
; demangled: std::allocator<CharAISkillScript*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003cd2a0  10 40 2d e9                                      push {r4, lr}
003cd2a4  07 01 71 e3                                      cmn r1, #0xc0000001
003cd2a8  08 d0 4d e2                                      sub sp, sp, #8
003cd2ac  02 40 a0 e1                                      mov r4, r2
003cd2b0  10 00 00 8a                                      bhi #0x3cd2f8
003cd2b4  00 00 51 e3                                      cmp r1, #0
003cd2b8  01 00 a0 01                                      moveq r0, r1
003cd2bc  01 00 00 1a                                      bne #0x3cd2c8
003cd2c0  08 d0 8d e2                                      add sp, sp, #8
003cd2c4  10 80 bd e8                                      pop {r4, pc}
003cd2c8  01 01 a0 e1                                      lsl r0, r1, #2
003cd2cc  80 00 50 e3                                      cmp r0, #0x80
003cd2d0  04 00 8d e5                                      str r0, [sp, #4]
003cd2d4  05 00 00 8a                                      bhi #0x3cd2f0
003cd2d8  04 00 8d e2                                      add r0, sp, #4
003cd2dc  f7 ee 0c eb                                      bl #0x708ec0
003cd2e0  04 30 9d e5                                      ldr r3, [sp, #4]
003cd2e4  23 31 a0 e1                                      lsr r3, r3, #2
003cd2e8  00 30 84 e5                                      str r3, [r4]
003cd2ec  f3 ff ff ea                                      b #0x3cd2c0
003cd2f0  57 0c fd eb                                      bl #0x310454
003cd2f4  f9 ff ff ea                                      b #0x3cd2e0
003cd2f8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003cd2fc  00 00 8f e0                                      add r0, pc, r0
003cd300  6f 03 fd eb                                      bl #0x30e0c4
003cd304  01 00 a0 e3                                      mov r0, #1
003cd308  ce 02 fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003cd30c  74 11 4f 00                                      .byte 0x74, 0x11, 0x4f, 0x00
