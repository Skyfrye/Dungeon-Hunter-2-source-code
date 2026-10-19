; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086fb98, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC87GetTypeEv
; demangled: vox::DecoderMPC8::GetType()
; decoder-mode: arm
0086fb98  03 00 a0 e3                                      mov r0, #3
0086fb9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fba0, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC88GetParamEv
; demangled: vox::DecoderMPC8::GetParam()
; decoder-mode: arm
0086fba0  00 00 a0 e3                                      mov r0, #0
0086fba4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fc78, declared_size=56, range_size=56, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC8C2EPNS_17DecoderMPC8ParamsE
; demangled: vox::DecoderMPC8::DecoderMPC8(vox::DecoderMPC8Params*)
; decoder-mode: arm
0086fc78  28 30 9f e5                                      ldr r3, [pc, #0x28]
0086fc7c  28 20 9f e5                                      ldr r2, [pc, #0x28]
0086fc80  00 00 51 e3                                      cmp r1, #0
0086fc84  03 30 8f e0                                      add r3, pc, r3
0086fc88  02 20 93 e7                                      ldr r2, [r3, r2]
0086fc8c  00 30 e0 03                                      mvneq r3, #0
0086fc90  04 30 80 05                                      streq r3, [r0, #4]
0086fc94  08 20 82 e2                                      add r2, r2, #8
0086fc98  00 20 80 e5                                      str r2, [r0]
0086fc9c  00 30 91 15                                      ldrne r3, [r1]
0086fca0  04 30 80 15                                      strne r3, [r0, #4]
0086fca4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0086fca8  0c 4e 12 00 a4 35 00 00                          .byte 0x0c, 0x4e, 0x12, 0x00, 0xa4, 0x35, 0x00, 0x00

; FUNCTION 0x0086fcb0, declared_size=56, range_size=56, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC8C1EPNS_17DecoderMPC8ParamsE
; demangled: vox::DecoderMPC8::DecoderMPC8(vox::DecoderMPC8Params*)
; decoder-mode: arm
0086fcb0  28 30 9f e5                                      ldr r3, [pc, #0x28]
0086fcb4  28 20 9f e5                                      ldr r2, [pc, #0x28]
0086fcb8  00 00 51 e3                                      cmp r1, #0
0086fcbc  03 30 8f e0                                      add r3, pc, r3
0086fcc0  02 20 93 e7                                      ldr r2, [r3, r2]
0086fcc4  00 30 e0 03                                      mvneq r3, #0
0086fcc8  04 30 80 05                                      streq r3, [r0, #4]
0086fccc  08 20 82 e2                                      add r2, r2, #8
0086fcd0  00 20 80 e5                                      str r2, [r0]
0086fcd4  00 30 91 15                                      ldrne r3, [r1]
0086fcd8  04 30 80 15                                      strne r3, [r0, #4]
0086fcdc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0086fce0  d4 4d 12 00 a4 35 00 00                          .byte 0xd4, 0x4d, 0x12, 0x00, 0xa4, 0x35, 0x00, 0x00

; FUNCTION 0x0086fdc0, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC8D1Ev
; demangled: vox::DecoderMPC8::~DecoderMPC8()
; decoder-mode: arm
0086fdc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fdc4, declared_size=20, range_size=20, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC8D0Ev
; demangled: vox::DecoderMPC8::~DecoderMPC8()
; decoder-mode: arm
0086fdc4  10 40 2d e9                                      push {r4, lr}
0086fdc8  00 40 a0 e1                                      mov r4, r0
0086fdcc  37 79 ea eb                                      bl #0x30e2b0
0086fdd0  04 00 a0 e1                                      mov r0, r4
0086fdd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00870160, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC813DestroyCursorEPNS_22DecoderCursorInterfaceE
; demangled: vox::DecoderMPC8::DestroyCursor(vox::DecoderCursorInterface*)
; decoder-mode: arm
00870160  10 40 2d e9                                      push {r4, lr}
00870164  00 40 51 e2                                      subs r4, r1, #0
00870168  06 00 00 0a                                      beq #0x870188
0087016c  00 30 94 e5                                      ldr r3, [r4]
00870170  04 00 a0 e1                                      mov r0, r4
00870174  0f e0 a0 e1                                      mov lr, pc
00870178  00 f0 93 e5                                      ldr pc, [r3]
0087017c  04 00 a0 e1                                      mov r0, r4
00870180  10 40 bd e8                                      pop {r4, lr}
00870184  ae 80 ea ea                                      b #0x310444
00870188  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008704ac, declared_size=48, range_size=48, mode=arm
; class-group: vox::DecoderMPC8
; alias: _ZN3vox11DecoderMPC815CreateNewCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMPC8::CreateNewCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
008704ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008704b0  00 60 a0 e1                                      mov r6, r0
008704b4  01 50 a0 e1                                      mov r5, r1
008704b8  4c 00 a0 e3                                      mov r0, #0x4c
008704bc  00 10 a0 e3                                      mov r1, #0
008704c0  60 80 ea eb                                      bl #0x310648
008704c4  06 10 a0 e1                                      mov r1, r6
008704c8  00 40 a0 e1                                      mov r4, r0
008704cc  05 20 a0 e1                                      mov r2, r5
008704d0  2d ff ff eb                                      bl #0x87018c
008704d4  04 00 a0 e1                                      mov r0, r4
008704d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
