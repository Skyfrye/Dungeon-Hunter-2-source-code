; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572524, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CIrrXMLFileReadCallBack
; alias: _ZN6glitch2io23CIrrXMLFileReadCallBackD1Ev
; demangled: glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack()
; decoder-mode: arm
00572524  28 30 9f e5                                      ldr r3, [pc, #0x28]
00572528  28 20 9f e5                                      ldr r2, [pc, #0x28]
0057252c  10 40 2d e9                                      push {r4, lr}
00572530  03 30 8f e0                                      add r3, pc, r3
00572534  02 20 93 e7                                      ldr r2, [r3, r2]
00572538  00 40 a0 e1                                      mov r4, r0
0057253c  04 00 90 e5                                      ldr r0, [r0, #4]
00572540  08 20 82 e2                                      add r2, r2, #8
00572544  00 20 84 e5                                      str r2, [r4]
00572548  0d ac f6 eb                                      bl #0x31d584
0057254c  04 00 a0 e1                                      mov r0, r4
00572550  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00572554  60 25 42 00 88 0f 00 00                          .byte 0x60, 0x25, 0x42, 0x00, 0x88, 0x0f, 0x00, 0x00

; FUNCTION 0x0057255c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CIrrXMLFileReadCallBack
; alias: _ZN6glitch2io23CIrrXMLFileReadCallBack4readEPvi
; demangled: glitch::io::CIrrXMLFileReadCallBack::read(void*, int)
; decoder-mode: arm
0057255c  10 40 2d e9                                      push {r4, lr}
00572560  04 30 90 e5                                      ldr r3, [r0, #4]
00572564  03 00 a0 e1                                      mov r0, r3
00572568  00 30 93 e5                                      ldr r3, [r3]
0057256c  0f e0 a0 e1                                      mov lr, pc
00572570  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00572574  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572578, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CIrrXMLFileReadCallBack
; alias: _ZNK6glitch2io23CIrrXMLFileReadCallBack7getSizeEv
; demangled: glitch::io::CIrrXMLFileReadCallBack::getSize() const
; decoder-mode: arm
00572578  10 40 2d e9                                      push {r4, lr}
0057257c  04 30 90 e5                                      ldr r3, [r0, #4]
00572580  03 00 a0 e1                                      mov r0, r3
00572584  00 30 93 e5                                      ldr r3, [r3]
00572588  0f e0 a0 e1                                      mov lr, pc
0057258c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00572590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005732ac, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CIrrXMLFileReadCallBack
; alias: _ZN6glitch2io23CIrrXMLFileReadCallBackD0Ev
; demangled: glitch::io::CIrrXMLFileReadCallBack::~CIrrXMLFileReadCallBack()
; decoder-mode: arm
005732ac  30 30 9f e5                                      ldr r3, [pc, #0x30]
005732b0  30 20 9f e5                                      ldr r2, [pc, #0x30]
005732b4  10 40 2d e9                                      push {r4, lr}
005732b8  03 30 8f e0                                      add r3, pc, r3
005732bc  02 20 93 e7                                      ldr r2, [r3, r2]
005732c0  00 40 a0 e1                                      mov r4, r0
005732c4  04 00 90 e5                                      ldr r0, [r0, #4]
005732c8  08 20 82 e2                                      add r2, r2, #8
005732cc  00 20 84 e5                                      str r2, [r4]
005732d0  ab a8 f6 eb                                      bl #0x31d584
005732d4  04 00 a0 e1                                      mov r0, r4
005732d8  f4 6b f6 eb                                      bl #0x30e2b0
005732dc  04 00 a0 e1                                      mov r0, r4
005732e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005732e4  d8 17 42 00 88 0f 00 00                          .byte 0xd8, 0x17, 0x42, 0x00, 0x88, 0x0f, 0x00, 0x00
