; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ba800, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::tu_string const*>
; alias: _ZN7gameswf5arrayIPKNS_9tu_stringEE7reserveEi
; demangled: gameswf::array<gameswf::tu_string const*>::reserve(int)
; decoder-mode: arm
007ba800  10 40 2d e9                                      push {r4, lr}
007ba804  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007ba808  00 40 a0 e1                                      mov r4, r0
007ba80c  00 00 53 e3                                      cmp r3, #0
007ba810  0f 00 00 1a                                      bne #0x7ba854
007ba814  00 00 51 e3                                      cmp r1, #0
007ba818  08 20 90 e5                                      ldr r2, [r0, #8]
007ba81c  08 10 80 e5                                      str r1, [r0, #8]
007ba820  0c 00 00 1a                                      bne #0x7ba858
007ba824  00 00 90 e5                                      ldr r0, [r0]
007ba828  00 00 50 e3                                      cmp r0, #0
007ba82c  01 00 00 0a                                      beq #0x7ba838
007ba830  02 11 a0 e1                                      lsl r1, r2, #2
007ba834  bf 60 fe eb                                      bl #0x752b38
007ba838  00 30 a0 e3                                      mov r3, #0
007ba83c  00 30 84 e5                                      str r3, [r4]
007ba840  10 80 bd e8                                      pop {r4, pc}
007ba844  01 01 a0 e1                                      lsl r0, r1, #2
007ba848  0c 10 a0 e1                                      mov r1, ip
007ba84c  d2 60 fe eb                                      bl #0x752b9c
007ba850  00 00 84 e5                                      str r0, [r4]
007ba854  10 80 bd e8                                      pop {r4, pc}
007ba858  00 c0 90 e5                                      ldr ip, [r0]
007ba85c  00 00 5c e3                                      cmp ip, #0
007ba860  f7 ff ff 0a                                      beq #0x7ba844
007ba864  0c 00 a0 e1                                      mov r0, ip
007ba868  01 11 a0 e1                                      lsl r1, r1, #2
007ba86c  02 21 a0 e1                                      lsl r2, r2, #2
007ba870  cd 60 fe eb                                      bl #0x752bac
007ba874  00 00 84 e5                                      str r0, [r4]
007ba878  10 80 bd e8                                      pop {r4, pc}
