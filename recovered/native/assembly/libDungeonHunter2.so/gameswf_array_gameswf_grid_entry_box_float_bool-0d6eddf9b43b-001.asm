; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b1f8c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::grid_entry_box<float, bool>*>
; alias: _ZN7gameswf5arrayIPNS_14grid_entry_boxIfbEEE7reserveEi
; demangled: gameswf::array<gameswf::grid_entry_box<float, bool>*>::reserve(int)
; decoder-mode: arm
007b1f8c  10 40 2d e9                                      push {r4, lr}
007b1f90  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b1f94  00 40 a0 e1                                      mov r4, r0
007b1f98  00 00 53 e3                                      cmp r3, #0
007b1f9c  0f 00 00 1a                                      bne #0x7b1fe0
007b1fa0  00 00 51 e3                                      cmp r1, #0
007b1fa4  08 20 90 e5                                      ldr r2, [r0, #8]
007b1fa8  08 10 80 e5                                      str r1, [r0, #8]
007b1fac  0c 00 00 1a                                      bne #0x7b1fe4
007b1fb0  00 00 90 e5                                      ldr r0, [r0]
007b1fb4  00 00 50 e3                                      cmp r0, #0
007b1fb8  01 00 00 0a                                      beq #0x7b1fc4
007b1fbc  02 11 a0 e1                                      lsl r1, r2, #2
007b1fc0  dc 82 fe eb                                      bl #0x752b38
007b1fc4  00 30 a0 e3                                      mov r3, #0
007b1fc8  00 30 84 e5                                      str r3, [r4]
007b1fcc  10 80 bd e8                                      pop {r4, pc}
007b1fd0  01 01 a0 e1                                      lsl r0, r1, #2
007b1fd4  0c 10 a0 e1                                      mov r1, ip
007b1fd8  ef 82 fe eb                                      bl #0x752b9c
007b1fdc  00 00 84 e5                                      str r0, [r4]
007b1fe0  10 80 bd e8                                      pop {r4, pc}
007b1fe4  00 c0 90 e5                                      ldr ip, [r0]
007b1fe8  00 00 5c e3                                      cmp ip, #0
007b1fec  f7 ff ff 0a                                      beq #0x7b1fd0
007b1ff0  0c 00 a0 e1                                      mov r0, ip
007b1ff4  01 11 a0 e1                                      lsl r1, r1, #2
007b1ff8  02 21 a0 e1                                      lsl r2, r2, #2
007b1ffc  ea 82 fe eb                                      bl #0x752bac
007b2000  00 00 84 e5                                      str r0, [r4]
007b2004  10 80 bd e8                                      pop {r4, pc}
