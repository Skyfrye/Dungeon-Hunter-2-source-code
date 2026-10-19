; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078ae50, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::text_style
; alias: _ZN7gameswf10text_style12resolve_fontEPNS_20movie_definition_subE
; demangled: gameswf::text_style::resolve_font(gameswf::movie_definition_sub*)
; decoder-mode: arm
0078ae50  70 40 2d e9                                      push {r4, r5, r6, lr}
0078ae54  04 30 90 e5                                      ldr r3, [r0, #4]
0078ae58  00 40 a0 e1                                      mov r4, r0
0078ae5c  00 00 53 e3                                      cmp r3, #0
0078ae60  00 00 00 0a                                      beq #0x78ae68
0078ae64  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078ae68  1e 30 d0 e5                                      ldrb r3, [r0, #0x1e]
0078ae6c  00 00 53 e3                                      cmp r3, #0
0078ae70  fb ff ff 0a                                      beq #0x78ae64
0078ae74  00 50 a0 e1                                      mov r5, r0
0078ae78  00 30 91 e5                                      ldr r3, [r1]
0078ae7c  01 00 a0 e1                                      mov r0, r1
0078ae80  04 10 95 e4                                      ldr r1, [r5], #4
0078ae84  0f e0 a0 e1                                      mov lr, pc
0078ae88  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0078ae8c  00 10 a0 e1                                      mov r1, r0
0078ae90  05 00 a0 e1                                      mov r0, r5
0078ae94  e6 64 ff eb                                      bl #0x764234
0078ae98  04 30 94 e5                                      ldr r3, [r4, #4]
0078ae9c  00 00 53 e3                                      cmp r3, #0
0078aea0  ef ff ff 1a                                      bne #0x78ae64
0078aea4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0078aea8  00 10 94 e5                                      ldr r1, [r4]
0078aeac  00 00 8f e0                                      add r0, pc, r0
0078aeb0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078aeb4  b2 58 ff ea                                      b #0x761184
; mapping-symbol data/literal pool
0078aeb8  cc ef 17 00                                      .byte 0xcc, 0xef, 0x17, 0x00
