; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00870504, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWav7GetTypeEv
; demangled: vox::DecoderMSWav::GetType()
; decoder-mode: arm
00870504  01 00 a0 e3                                      mov r0, #1
00870508  1e ff 2f e1                                      bx lr

; FUNCTION 0x0087050c, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWav8GetParamEv
; demangled: vox::DecoderMSWav::GetParam()
; decoder-mode: arm
0087050c  00 00 a0 e3                                      mov r0, #0
00870510  1e ff 2f e1                                      bx lr

; FUNCTION 0x00870514, declared_size=52, range_size=52, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWavC2Ev
; demangled: vox::DecoderMSWav::DecoderMSWav()
; decoder-mode: arm
00870514  24 30 9f e5                                      ldr r3, [pc, #0x24]
00870518  24 10 9f e5                                      ldr r1, [pc, #0x24]
0087051c  01 c0 a0 e3                                      mov ip, #1
00870520  03 30 8f e0                                      add r3, pc, r3
00870524  01 10 93 e7                                      ldr r1, [r3, r1]
00870528  40 c0 c0 e5                                      strb ip, [r0, #0x40]
0087052c  08 10 81 e2                                      add r1, r1, #8
00870530  00 10 80 e5                                      str r1, [r0]
00870534  00 10 a0 e3                                      mov r1, #0
00870538  3c 10 80 e5                                      str r1, [r0, #0x3c]
0087053c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00870540  70 45 12 00 7c 0d 00 00                          .byte 0x70, 0x45, 0x12, 0x00, 0x7c, 0x0d, 0x00, 0x00

; FUNCTION 0x00870548, declared_size=52, range_size=52, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWavC1Ev
; demangled: vox::DecoderMSWav::DecoderMSWav()
; decoder-mode: arm
00870548  24 30 9f e5                                      ldr r3, [pc, #0x24]
0087054c  24 10 9f e5                                      ldr r1, [pc, #0x24]
00870550  01 c0 a0 e3                                      mov ip, #1
00870554  03 30 8f e0                                      add r3, pc, r3
00870558  01 10 93 e7                                      ldr r1, [r3, r1]
0087055c  40 c0 c0 e5                                      strb ip, [r0, #0x40]
00870560  08 10 81 e2                                      add r1, r1, #8
00870564  00 10 80 e5                                      str r1, [r0]
00870568  00 10 a0 e3                                      mov r1, #0
0087056c  3c 10 80 e5                                      str r1, [r0, #0x3c]
00870570  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00870574  3c 45 12 00 7c 0d 00 00                          .byte 0x3c, 0x45, 0x12, 0x00, 0x7c, 0x0d, 0x00, 0x00

; FUNCTION 0x00870a9c, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWav13DestroyCursorEPNS_22DecoderCursorInterfaceE
; demangled: vox::DecoderMSWav::DestroyCursor(vox::DecoderCursorInterface*)
; decoder-mode: arm
00870a9c  10 40 2d e9                                      push {r4, lr}
00870aa0  00 40 51 e2                                      subs r4, r1, #0
00870aa4  06 00 00 0a                                      beq #0x870ac4
00870aa8  00 30 94 e5                                      ldr r3, [r4]
00870aac  04 00 a0 e1                                      mov r0, r4
00870ab0  0f e0 a0 e1                                      mov lr, pc
00870ab4  00 f0 93 e5                                      ldr pc, [r3]
00870ab8  04 00 a0 e1                                      mov r0, r4
00870abc  10 40 bd e8                                      pop {r4, lr}
00870ac0  5f 7e ea ea                                      b #0x310444
00870ac4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00870c68, declared_size=48, range_size=48, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWav15CreateNewCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderMSWav::CreateNewCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
00870c68  70 40 2d e9                                      push {r4, r5, r6, lr}
00870c6c  00 60 a0 e1                                      mov r6, r0
00870c70  01 50 a0 e1                                      mov r5, r1
00870c74  28 00 a0 e3                                      mov r0, #0x28
00870c78  00 10 a0 e3                                      mov r1, #0
00870c7c  71 7e ea eb                                      bl #0x310648
00870c80  06 10 a0 e1                                      mov r1, r6
00870c84  00 40 a0 e1                                      mov r4, r0
00870c88  05 20 a0 e1                                      mov r2, r5
00870c8c  8d ff ff eb                                      bl #0x870ac8
00870c90  04 00 a0 e1                                      mov r0, r4
00870c94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00870f7c, declared_size=128, range_size=128, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWavD2Ev
; demangled: vox::DecoderMSWav::~DecoderMSWav()
; decoder-mode: arm
00870f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00870f80  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00870f84  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00870f88  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00870f8c  03 30 8f e0                                      add r3, pc, r3
00870f90  02 20 93 e7                                      ldr r2, [r3, r2]
00870f94  00 00 55 e3                                      cmp r5, #0
00870f98  00 40 a0 e1                                      mov r4, r0
00870f9c  08 20 82 e2                                      add r2, r2, #8
00870fa0  00 20 80 e5                                      str r2, [r0]
00870fa4  01 20 a0 e3                                      mov r2, #1
00870fa8  40 20 c0 e5                                      strb r2, [r0, #0x40]
00870fac  0e 00 00 0a                                      beq #0x870fec
00870fb0  08 00 95 e5                                      ldr r0, [r5, #8]
00870fb4  00 00 50 e3                                      cmp r0, #0
00870fb8  07 00 00 0a                                      beq #0x870fdc
00870fbc  9d ff ff eb                                      bl #0x870e38
00870fc0  08 00 95 e5                                      ldr r0, [r5, #8]
00870fc4  00 00 50 e3                                      cmp r0, #0
00870fc8  00 00 00 0a                                      beq #0x870fd0
00870fcc  1c 7d ea eb                                      bl #0x310444
00870fd0  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
00870fd4  00 00 55 e3                                      cmp r5, #0
00870fd8  01 00 00 0a                                      beq #0x870fe4
00870fdc  05 00 a0 e1                                      mov r0, r5
00870fe0  17 7d ea eb                                      bl #0x310444
00870fe4  00 30 a0 e3                                      mov r3, #0
00870fe8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00870fec  04 00 a0 e1                                      mov r0, r4
00870ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00870ff4  04 3b 12 00 7c 0d 00 00                          .byte 0x04, 0x3b, 0x12, 0x00, 0x7c, 0x0d, 0x00, 0x00

; FUNCTION 0x00870ffc, declared_size=128, range_size=128, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWavD1Ev
; demangled: vox::DecoderMSWav::~DecoderMSWav()
; decoder-mode: arm
00870ffc  70 40 2d e9                                      push {r4, r5, r6, lr}
00871000  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00871004  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00871008  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
0087100c  03 30 8f e0                                      add r3, pc, r3
00871010  02 20 93 e7                                      ldr r2, [r3, r2]
00871014  00 00 55 e3                                      cmp r5, #0
00871018  00 40 a0 e1                                      mov r4, r0
0087101c  08 20 82 e2                                      add r2, r2, #8
00871020  00 20 80 e5                                      str r2, [r0]
00871024  01 20 a0 e3                                      mov r2, #1
00871028  40 20 c0 e5                                      strb r2, [r0, #0x40]
0087102c  0e 00 00 0a                                      beq #0x87106c
00871030  08 00 95 e5                                      ldr r0, [r5, #8]
00871034  00 00 50 e3                                      cmp r0, #0
00871038  07 00 00 0a                                      beq #0x87105c
0087103c  7d ff ff eb                                      bl #0x870e38
00871040  08 00 95 e5                                      ldr r0, [r5, #8]
00871044  00 00 50 e3                                      cmp r0, #0
00871048  00 00 00 0a                                      beq #0x871050
0087104c  fc 7c ea eb                                      bl #0x310444
00871050  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
00871054  00 00 55 e3                                      cmp r5, #0
00871058  01 00 00 0a                                      beq #0x871064
0087105c  05 00 a0 e1                                      mov r0, r5
00871060  f7 7c ea eb                                      bl #0x310444
00871064  00 30 a0 e3                                      mov r3, #0
00871068  3c 30 84 e5                                      str r3, [r4, #0x3c]
0087106c  04 00 a0 e1                                      mov r0, r4
00871070  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00871074  84 3a 12 00 7c 0d 00 00                          .byte 0x84, 0x3a, 0x12, 0x00, 0x7c, 0x0d, 0x00, 0x00

; FUNCTION 0x0087107c, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderMSWav
; alias: _ZN3vox12DecoderMSWavD0Ev
; demangled: vox::DecoderMSWav::~DecoderMSWav()
; decoder-mode: arm
0087107c  10 40 2d e9                                      push {r4, lr}
00871080  00 40 a0 e1                                      mov r4, r0
00871084  dc ff ff eb                                      bl #0x870ffc
00871088  04 00 a0 e1                                      mov r0, r4
0087108c  87 74 ea eb                                      bl #0x30e2b0
00871090  04 00 a0 e1                                      mov r0, r4
00871094  10 80 bd e8                                      pop {r4, pc}
