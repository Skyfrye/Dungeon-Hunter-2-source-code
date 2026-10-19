; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008749dc, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursorD1Ev
; demangled: vox::DecoderRawCursor::~DecoderRawCursor()
; decoder-mode: arm
008749dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008749e0, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor20AllowBufferReferenceEv
; demangled: vox::DecoderRawCursor::AllowBufferReference()
; decoder-mode: arm
008749e0  10 40 2d e9                                      push {r4, lr}
008749e4  18 30 90 e5                                      ldr r3, [r0, #0x18]
008749e8  00 00 53 e3                                      cmp r3, #0
008749ec  04 00 00 0a                                      beq #0x874a04
008749f0  03 00 a0 e1                                      mov r0, r3
008749f4  00 30 93 e5                                      ldr r3, [r3]
008749f8  0f e0 a0 e1                                      mov lr, pc
008749fc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00874a00  10 80 bd e8                                      pop {r4, pc}
00874a04  03 00 a0 e1                                      mov r0, r3
00874a08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874abc, declared_size=100, range_size=100, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderRawCursor::DecoderRawCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00874abc  54 30 9f e5                                      ldr r3, [pc, #0x54]
00874ac0  30 00 2d e9                                      push {r4, r5}
00874ac4  50 40 9f e5                                      ldr r4, [pc, #0x50]
00874ac8  03 30 8f e0                                      add r3, pc, r3
00874acc  00 c0 a0 e1                                      mov ip, r0
00874ad0  04 40 93 e7                                      ldr r4, [r3, r4]
00874ad4  00 00 a0 e3                                      mov r0, #0
00874ad8  14 10 8c e5                                      str r1, [ip, #0x14]
00874adc  08 50 84 e2                                      add r5, r4, #8
00874ae0  0c 40 a0 e1                                      mov r4, ip
00874ae4  18 20 8c e5                                      str r2, [ip, #0x18]
00874ae8  1c 00 cc e5                                      strb r0, [ip, #0x1c]
00874aec  04 00 8c e5                                      str r0, [ip, #4]
00874af0  08 00 8c e5                                      str r0, [ip, #8]
00874af4  0c 00 8c e5                                      str r0, [ip, #0xc]
00874af8  10 00 8c e5                                      str r0, [ip, #0x10]
00874afc  04 10 81 e2                                      add r1, r1, #4
00874b00  04 50 84 e4                                      str r5, [r4], #4
00874b04  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00874b08  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00874b0c  0c 00 a0 e1                                      mov r0, ip
00874b10  30 00 bd e8                                      pop {r4, r5}
00874b14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00874b18  c8 ff 11 00 6c 31 00 00                          .byte 0xc8, 0xff, 0x11, 0x00, 0x6c, 0x31, 0x00, 0x00

; FUNCTION 0x00874b20, declared_size=100, range_size=100, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderRawCursor::DecoderRawCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00874b20  54 30 9f e5                                      ldr r3, [pc, #0x54]
00874b24  30 00 2d e9                                      push {r4, r5}
00874b28  50 40 9f e5                                      ldr r4, [pc, #0x50]
00874b2c  03 30 8f e0                                      add r3, pc, r3
00874b30  00 c0 a0 e1                                      mov ip, r0
00874b34  04 40 93 e7                                      ldr r4, [r3, r4]
00874b38  00 00 a0 e3                                      mov r0, #0
00874b3c  14 10 8c e5                                      str r1, [ip, #0x14]
00874b40  08 50 84 e2                                      add r5, r4, #8
00874b44  0c 40 a0 e1                                      mov r4, ip
00874b48  18 20 8c e5                                      str r2, [ip, #0x18]
00874b4c  1c 00 cc e5                                      strb r0, [ip, #0x1c]
00874b50  04 00 8c e5                                      str r0, [ip, #4]
00874b54  08 00 8c e5                                      str r0, [ip, #8]
00874b58  0c 00 8c e5                                      str r0, [ip, #0xc]
00874b5c  10 00 8c e5                                      str r0, [ip, #0x10]
00874b60  04 10 81 e2                                      add r1, r1, #4
00874b64  04 50 84 e4                                      str r5, [r4], #4
00874b68  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00874b6c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00874b70  0c 00 a0 e1                                      mov r0, ip
00874b74  30 00 bd e8                                      pop {r4, r5}
00874b78  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00874b7c  64 ff 11 00 6c 31 00 00                          .byte 0x64, 0xff, 0x11, 0x00, 0x6c, 0x31, 0x00, 0x00

; FUNCTION 0x00874b84, declared_size=192, range_size=192, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor9DecodeRefERPvi
; demangled: vox::DecoderRawCursor::DecodeRef(void*&, int)
; decoder-mode: arm
00874b84  70 40 2d e9                                      push {r4, r5, r6, lr}
00874b88  18 30 90 e5                                      ldr r3, [r0, #0x18]
00874b8c  00 40 a0 e1                                      mov r4, r0
00874b90  01 60 a0 e1                                      mov r6, r1
00874b94  03 00 a0 e1                                      mov r0, r3
00874b98  00 30 93 e5                                      ldr r3, [r3]
00874b9c  02 50 a0 e1                                      mov r5, r2
00874ba0  0f e0 a0 e1                                      mov lr, pc
00874ba4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00874ba8  00 00 50 e3                                      cmp r0, #0
00874bac  0c 00 00 0a                                      beq #0x874be4
00874bb0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874bb4  05 20 a0 e1                                      mov r2, r5
00874bb8  06 10 a0 e1                                      mov r1, r6
00874bbc  03 00 a0 e1                                      mov r0, r3
00874bc0  00 30 93 e5                                      ldr r3, [r3]
00874bc4  0f e0 a0 e1                                      mov lr, pc
00874bc8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00874bcc  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
00874bd0  00 50 a0 e1                                      mov r5, r0
00874bd4  00 00 53 e3                                      cmp r3, #0
00874bd8  0a 00 00 1a                                      bne #0x874c08
00874bdc  05 00 a0 e1                                      mov r0, r5
00874be0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00874be4  05 20 a0 e1                                      mov r2, r5
00874be8  04 00 a0 e1                                      mov r0, r4
00874bec  00 10 96 e5                                      ldr r1, [r6]
00874bf0  00 30 94 e5                                      ldr r3, [r4]
00874bf4  0f e0 a0 e1                                      mov lr, pc
00874bf8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874bfc  00 50 a0 e1                                      mov r5, r0
00874c00  05 00 a0 e1                                      mov r0, r5
00874c04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00874c08  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874c0c  03 00 a0 e1                                      mov r0, r3
00874c10  00 30 93 e5                                      ldr r3, [r3]
00874c14  0f e0 a0 e1                                      mov lr, pc
00874c18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874c1c  00 00 50 e3                                      cmp r0, #0
00874c20  ed ff ff 0a                                      beq #0x874bdc
00874c24  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874c28  00 10 a0 e3                                      mov r1, #0
00874c2c  01 20 a0 e1                                      mov r2, r1
00874c30  03 00 a0 e1                                      mov r0, r3
00874c34  00 30 93 e5                                      ldr r3, [r3]
00874c38  0f e0 a0 e1                                      mov lr, pc
00874c3c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874c40  e5 ff ff ea                                      b #0x874bdc

; FUNCTION 0x00874c44, declared_size=172, range_size=172, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor6DecodeEPvi
; demangled: vox::DecoderRawCursor::Decode(void*, int)
; decoder-mode: arm
00874c44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00874c48  00 70 52 e2                                      subs r7, r2, #0
00874c4c  00 60 a0 e1                                      mov r6, r0
00874c50  01 80 a0 e1                                      mov r8, r1
00874c54  00 40 a0 d3                                      movle r4, #0
00874c58  22 00 00 da                                      ble #0x874ce8
00874c5c  07 50 a0 e1                                      mov r5, r7
00874c60  00 40 a0 e3                                      mov r4, #0
00874c64  01 00 00 ea                                      b #0x874c70
00874c68  04 00 57 e1                                      cmp r7, r4
00874c6c  1d 00 00 da                                      ble #0x874ce8
00874c70  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874c74  04 10 88 e0                                      add r1, r8, r4
00874c78  05 20 a0 e1                                      mov r2, r5
00874c7c  03 00 a0 e1                                      mov r0, r3
00874c80  00 30 93 e5                                      ldr r3, [r3]
00874c84  0f e0 a0 e1                                      mov lr, pc
00874c88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00874c8c  00 00 50 e3                                      cmp r0, #0
00874c90  14 00 00 da                                      ble #0x874ce8
00874c94  1c 30 d6 e5                                      ldrb r3, [r6, #0x1c]
00874c98  00 40 84 e0                                      add r4, r4, r0
00874c9c  05 50 60 e0                                      rsb r5, r0, r5
00874ca0  00 00 53 e3                                      cmp r3, #0
00874ca4  ef ff ff 0a                                      beq #0x874c68
00874ca8  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874cac  03 00 a0 e1                                      mov r0, r3
00874cb0  00 30 93 e5                                      ldr r3, [r3]
00874cb4  0f e0 a0 e1                                      mov lr, pc
00874cb8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874cbc  00 00 50 e3                                      cmp r0, #0
00874cc0  e8 ff ff 0a                                      beq #0x874c68
00874cc4  18 30 96 e5                                      ldr r3, [r6, #0x18]
00874cc8  00 10 a0 e3                                      mov r1, #0
00874ccc  01 20 a0 e1                                      mov r2, r1
00874cd0  03 00 a0 e1                                      mov r0, r3
00874cd4  00 30 93 e5                                      ldr r3, [r3]
00874cd8  0f e0 a0 e1                                      mov lr, pc
00874cdc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874ce0  00 00 50 e3                                      cmp r0, #0
00874ce4  df ff ff 0a                                      beq #0x874c68
00874ce8  04 00 a0 e1                                      mov r0, r4
00874cec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00874cf0, declared_size=76, range_size=76, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor4SeekEj
; demangled: vox::DecoderRawCursor::Seek(unsigned int)
; decoder-mode: arm
00874cf0  10 40 2d e9                                      push {r4, lr}
00874cf4  10 30 90 e5                                      ldr r3, [r0, #0x10]
00874cf8  01 00 53 e1                                      cmp r3, r1
00874cfc  01 00 00 2a                                      bhs #0x874d08
00874d00  00 00 e0 e3                                      mvn r0, #0
00874d04  10 80 bd e8                                      pop {r4, pc}
00874d08  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00874d0c  04 c0 90 e5                                      ldr ip, [r0, #4]
00874d10  18 30 90 e5                                      ldr r3, [r0, #0x18]
00874d14  c2 21 a0 e1                                      asr r2, r2, #3
00874d18  9c 02 02 e0                                      mul r2, ip, r2
00874d1c  03 00 a0 e1                                      mov r0, r3
00874d20  91 02 01 e0                                      mul r1, r1, r2
00874d24  00 30 93 e5                                      ldr r3, [r3]
00874d28  00 20 a0 e3                                      mov r2, #0
00874d2c  0f e0 a0 e1                                      mov lr, pc
00874d30  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00874d34  00 00 a0 e3                                      mov r0, #0
00874d38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874d3c, declared_size=104, range_size=104, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursor7HasDataEv
; demangled: vox::DecoderRawCursor::HasData()
; decoder-mode: arm
00874d3c  10 40 2d e9                                      push {r4, lr}
00874d40  1c 30 d0 e5                                      ldrb r3, [r0, #0x1c]
00874d44  00 40 a0 e1                                      mov r4, r0
00874d48  00 00 53 e3                                      cmp r3, #0
00874d4c  07 00 00 1a                                      bne #0x874d70
00874d50  18 30 94 e5                                      ldr r3, [r4, #0x18]
00874d54  03 00 a0 e1                                      mov r0, r3
00874d58  00 30 93 e5                                      ldr r3, [r3]
00874d5c  0f e0 a0 e1                                      mov lr, pc
00874d60  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874d64  01 00 20 e2                                      eor r0, r0, #1
00874d68  70 00 ef e6                                      uxtb r0, r0
00874d6c  10 80 bd e8                                      pop {r4, pc}
00874d70  18 30 90 e5                                      ldr r3, [r0, #0x18]
00874d74  03 00 a0 e1                                      mov r0, r3
00874d78  00 30 93 e5                                      ldr r3, [r3]
00874d7c  0f e0 a0 e1                                      mov lr, pc
00874d80  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00874d84  00 00 50 e3                                      cmp r0, #0
00874d88  f0 ff ff 0a                                      beq #0x874d50
00874d8c  00 30 94 e5                                      ldr r3, [r4]
00874d90  04 00 a0 e1                                      mov r0, r4
00874d94  00 10 a0 e3                                      mov r1, #0
00874d98  0f e0 a0 e1                                      mov lr, pc
00874d9c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00874da0  ea ff ff ea                                      b #0x874d50

; FUNCTION 0x00874dbc, declared_size=20, range_size=20, mode=arm
; class-group: vox::DecoderRawCursor
; alias: _ZN3vox16DecoderRawCursorD0Ev
; demangled: vox::DecoderRawCursor::~DecoderRawCursor()
; decoder-mode: arm
00874dbc  10 40 2d e9                                      push {r4, lr}
00874dc0  00 40 a0 e1                                      mov r4, r0
00874dc4  39 65 ea eb                                      bl #0x30e2b0
00874dc8  04 00 a0 e1                                      mov r0, r4
00874dcc  10 80 bd e8                                      pop {r4, pc}
