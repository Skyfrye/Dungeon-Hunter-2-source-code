; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560544, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CPlaneAttribute
; alias: _ZNK6glitch2io15CPlaneAttribute7getTypeEv
; demangled: glitch::io::CPlaneAttribute::getType() const
; decoder-mode: arm
00560544  12 00 a0 e3                                      mov r0, #0x12
00560548  1e ff 2f e1                                      bx lr

; FUNCTION 0x0056054c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CPlaneAttribute
; alias: _ZNK6glitch2io15CPlaneAttribute13getTypeStringEv
; demangled: glitch::io::CPlaneAttribute::getTypeString() const
; decoder-mode: arm
0056054c  04 00 9f e5                                      ldr r0, [pc, #4]
00560550  00 00 8f e0                                      add r0, pc, r0
00560554  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560558  c8 e8 37 00                                      .byte 0xc8, 0xe8, 0x37, 0x00

; FUNCTION 0x00564ba0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CPlaneAttribute
; alias: _ZN6glitch2io15CPlaneAttributeD1Ev
; demangled: glitch::io::CPlaneAttribute::~CPlaneAttribute()
; decoder-mode: arm
00564ba0  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564ba4  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564ba8  10 40 2d e9                                      push {r4, lr}
00564bac  03 30 8f e0                                      add r3, pc, r3
00564bb0  02 20 93 e7                                      ldr r2, [r3, r2]
00564bb4  00 40 a0 e1                                      mov r4, r0
00564bb8  08 20 82 e2                                      add r2, r2, #8
00564bbc  00 20 80 e5                                      str r2, [r0]
00564bc0  0c 07 f7 eb                                      bl #0x3267f8
00564bc4  04 00 a0 e1                                      mov r0, r4
00564bc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564bcc  e4 fe 42 00 5c 43 00 00                          .byte 0xe4, 0xfe, 0x42, 0x00, 0x5c, 0x43, 0x00, 0x00

; FUNCTION 0x00564d74, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CPlaneAttribute
; alias: _ZN6glitch2io15CPlaneAttributeD0Ev
; demangled: glitch::io::CPlaneAttribute::~CPlaneAttribute()
; decoder-mode: arm
00564d74  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564d78  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564d7c  10 40 2d e9                                      push {r4, lr}
00564d80  03 30 8f e0                                      add r3, pc, r3
00564d84  02 20 93 e7                                      ldr r2, [r3, r2]
00564d88  00 40 a0 e1                                      mov r4, r0
00564d8c  08 20 82 e2                                      add r2, r2, #8
00564d90  00 20 80 e5                                      str r2, [r0]
00564d94  97 06 f7 eb                                      bl #0x3267f8
00564d98  04 00 a0 e1                                      mov r0, r4
00564d9c  43 a5 f6 eb                                      bl #0x30e2b0
00564da0  04 00 a0 e1                                      mov r0, r4
00564da4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564da8  10 fd 42 00 5c 43 00 00                          .byte 0x10, 0xfd, 0x42, 0x00, 0x5c, 0x43, 0x00, 0x00
