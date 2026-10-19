; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008749cc, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRaw7GetTypeEv
; demangled: vox::DecoderRaw::GetType()
; decoder-mode: arm
008749cc  00 00 a0 e3                                      mov r0, #0
008749d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008749d4, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRaw8GetParamEv
; demangled: vox::DecoderRaw::GetParam()
; decoder-mode: arm
008749d4  04 00 80 e2                                      add r0, r0, #4
008749d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00874a0c, declared_size=88, range_size=88, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRawC2EPNS_11TrackParamsE
; demangled: vox::DecoderRaw::DecoderRaw(vox::TrackParams*)
; decoder-mode: arm
00874a0c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00874a10  48 20 9f e5                                      ldr r2, [pc, #0x48]
00874a14  04 40 2d e5                                      str r4, [sp, #-4]!
00874a18  03 30 8f e0                                      add r3, pc, r3
00874a1c  02 20 93 e7                                      ldr r2, [r3, r2]
00874a20  00 c0 a0 e1                                      mov ip, r0
00874a24  00 00 51 e3                                      cmp r1, #0
00874a28  00 00 a0 e3                                      mov r0, #0
00874a2c  08 20 82 e2                                      add r2, r2, #8
00874a30  10 00 8c e5                                      str r0, [ip, #0x10]
00874a34  04 00 8c e5                                      str r0, [ip, #4]
00874a38  08 00 8c e5                                      str r0, [ip, #8]
00874a3c  0c 00 8c e5                                      str r0, [ip, #0xc]
00874a40  00 20 8c e5                                      str r2, [ip]
00874a44  04 40 8c 12                                      addne r4, ip, #4
00874a48  0f 00 91 18                                      ldmne r1, {r0, r1, r2, r3}
00874a4c  0f 00 84 18                                      stmne r4, {r0, r1, r2, r3}
00874a50  0c 00 a0 e1                                      mov r0, ip
00874a54  10 00 bd e8                                      ldm sp!, {r4}
00874a58  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00874a5c  78 00 12 00 d8 40 00 00                          .byte 0x78, 0x00, 0x12, 0x00, 0xd8, 0x40, 0x00, 0x00

; FUNCTION 0x00874a64, declared_size=88, range_size=88, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRawC1EPNS_11TrackParamsE
; demangled: vox::DecoderRaw::DecoderRaw(vox::TrackParams*)
; decoder-mode: arm
00874a64  48 30 9f e5                                      ldr r3, [pc, #0x48]
00874a68  48 20 9f e5                                      ldr r2, [pc, #0x48]
00874a6c  04 40 2d e5                                      str r4, [sp, #-4]!
00874a70  03 30 8f e0                                      add r3, pc, r3
00874a74  02 20 93 e7                                      ldr r2, [r3, r2]
00874a78  00 c0 a0 e1                                      mov ip, r0
00874a7c  00 00 51 e3                                      cmp r1, #0
00874a80  00 00 a0 e3                                      mov r0, #0
00874a84  08 20 82 e2                                      add r2, r2, #8
00874a88  10 00 8c e5                                      str r0, [ip, #0x10]
00874a8c  04 00 8c e5                                      str r0, [ip, #4]
00874a90  08 00 8c e5                                      str r0, [ip, #8]
00874a94  0c 00 8c e5                                      str r0, [ip, #0xc]
00874a98  00 20 8c e5                                      str r2, [ip]
00874a9c  04 40 8c 12                                      addne r4, ip, #4
00874aa0  0f 00 91 18                                      ldmne r1, {r0, r1, r2, r3}
00874aa4  0f 00 84 18                                      stmne r4, {r0, r1, r2, r3}
00874aa8  0c 00 a0 e1                                      mov r0, ip
00874aac  10 00 bd e8                                      ldm sp!, {r4}
00874ab0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00874ab4  20 00 12 00 d8 40 00 00                          .byte 0x20, 0x00, 0x12, 0x00, 0xd8, 0x40, 0x00, 0x00

; FUNCTION 0x00874da4, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRawD1Ev
; demangled: vox::DecoderRaw::~DecoderRaw()
; decoder-mode: arm
00874da4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00874da8, declared_size=20, range_size=20, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRawD0Ev
; demangled: vox::DecoderRaw::~DecoderRaw()
; decoder-mode: arm
00874da8  10 40 2d e9                                      push {r4, lr}
00874dac  00 40 a0 e1                                      mov r4, r0
00874db0  3e 65 ea eb                                      bl #0x30e2b0
00874db4  04 00 a0 e1                                      mov r0, r4
00874db8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874dd0, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRaw13DestroyCursorEPNS_22DecoderCursorInterfaceE
; demangled: vox::DecoderRaw::DestroyCursor(vox::DecoderCursorInterface*)
; decoder-mode: arm
00874dd0  10 40 2d e9                                      push {r4, lr}
00874dd4  00 40 51 e2                                      subs r4, r1, #0
00874dd8  06 00 00 0a                                      beq #0x874df8
00874ddc  00 30 94 e5                                      ldr r3, [r4]
00874de0  04 00 a0 e1                                      mov r0, r4
00874de4  0f e0 a0 e1                                      mov lr, pc
00874de8  00 f0 93 e5                                      ldr pc, [r3]
00874dec  04 00 a0 e1                                      mov r0, r4
00874df0  10 40 bd e8                                      pop {r4, lr}
00874df4  92 6d ea ea                                      b #0x310444
00874df8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874dfc, declared_size=48, range_size=48, mode=arm
; class-group: vox::DecoderRaw
; alias: _ZN3vox10DecoderRaw15CreateNewCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderRaw::CreateNewCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
00874dfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00874e00  00 60 a0 e1                                      mov r6, r0
00874e04  01 50 a0 e1                                      mov r5, r1
00874e08  20 00 a0 e3                                      mov r0, #0x20
00874e0c  00 10 a0 e3                                      mov r1, #0
00874e10  0c 6e ea eb                                      bl #0x310648
00874e14  06 10 a0 e1                                      mov r1, r6
00874e18  00 40 a0 e1                                      mov r4, r0
00874e1c  05 20 a0 e1                                      mov r2, r5
00874e20  3e ff ff eb                                      bl #0x874b20
00874e24  04 00 a0 e1                                      mov r0, r4
00874e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
