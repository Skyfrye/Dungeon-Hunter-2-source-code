; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00888718, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFile7GetTypeEv
; demangled: vox::StreamCFile::GetType()
; decoder-mode: arm
00888718  01 00 a0 e3                                      mov r0, #1
0088871c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008887e4, declared_size=76, range_size=76, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFileD1Ev
; demangled: vox::StreamCFile::~StreamCFile()
; decoder-mode: arm
008887e4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
008887e8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
008887ec  10 40 2d e9                                      push {r4, lr}
008887f0  03 30 8f e0                                      add r3, pc, r3
008887f4  02 20 93 e7                                      ldr r2, [r3, r2]
008887f8  00 10 a0 e1                                      mov r1, r0
008887fc  00 40 a0 e1                                      mov r4, r0
00888800  08 20 82 e2                                      add r2, r2, #8
00888804  08 20 81 e4                                      str r2, [r1], #8
00888808  14 00 91 e5                                      ldr r0, [r1, #0x14]
0088880c  01 00 50 e1                                      cmp r0, r1
00888810  02 00 00 0a                                      beq #0x888820
00888814  00 00 50 e3                                      cmp r0, #0
00888818  00 00 00 0a                                      beq #0x888820
0088881c  08 1f ea eb                                      bl #0x310444
00888820  04 00 a0 e1                                      mov r0, r4
00888824  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888828  a0 c2 10 00 30 38 00 00                          .byte 0xa0, 0xc2, 0x10, 0x00, 0x30, 0x38, 0x00, 0x00

; FUNCTION 0x00888830, declared_size=44, range_size=44, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFile13DestroyCursorEPNS_21StreamCursorInterfaceE
; demangled: vox::StreamCFile::DestroyCursor(vox::StreamCursorInterface*)
; decoder-mode: arm
00888830  10 40 2d e9                                      push {r4, lr}
00888834  00 40 51 e2                                      subs r4, r1, #0
00888838  06 00 00 0a                                      beq #0x888858
0088883c  00 30 94 e5                                      ldr r3, [r4]
00888840  04 00 a0 e1                                      mov r0, r4
00888844  0f e0 a0 e1                                      mov lr, pc
00888848  00 f0 93 e5                                      ldr pc, [r3]
0088884c  04 00 a0 e1                                      mov r0, r4
00888850  10 40 bd e8                                      pop {r4, lr}
00888854  fa 1e ea ea                                      b #0x310444
00888858  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00888a60, declared_size=140, range_size=140, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFile4InitEv
; demangled: vox::StreamCFile::Init()
; decoder-mode: arm
00888a60  70 40 2d e9                                      push {r4, r5, r6, lr}
00888a64  00 50 a0 e3                                      mov r5, #0
00888a68  04 50 80 e5                                      str r5, [r0, #4]
00888a6c  00 40 a0 e1                                      mov r4, r0
00888a70  cb 2e 00 eb                                      bl #0x8945a4
00888a74  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00888a78  18 20 94 e5                                      ldr r2, [r4, #0x18]
00888a7c  20 00 84 e5                                      str r0, [r4, #0x20]
00888a80  01 00 52 e1                                      cmp r2, r1
00888a84  17 00 00 0a                                      beq #0x888ae8
00888a88  05 00 50 e1                                      cmp r0, r5
00888a8c  15 00 00 0a                                      beq #0x888ae8
00888a90  00 30 90 e5                                      ldr r3, [r0]
00888a94  06 20 a0 e3                                      mov r2, #6
00888a98  0f e0 a0 e1                                      mov lr, pc
00888a9c  08 f0 93 e5                                      ldr pc, [r3, #8]
00888aa0  00 60 50 e2                                      subs r6, r0, #0
00888aa4  0f 00 00 0a                                      beq #0x888ae8
00888aa8  05 10 a0 e1                                      mov r1, r5
00888aac  02 20 a0 e3                                      mov r2, #2
00888ab0  00 30 96 e5                                      ldr r3, [r6]
00888ab4  0f e0 a0 e1                                      mov lr, pc
00888ab8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00888abc  00 30 96 e5                                      ldr r3, [r6]
00888ac0  06 00 a0 e1                                      mov r0, r6
00888ac4  0f e0 a0 e1                                      mov lr, pc
00888ac8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00888acc  20 30 94 e5                                      ldr r3, [r4, #0x20]
00888ad0  04 00 84 e5                                      str r0, [r4, #4]
00888ad4  06 10 a0 e1                                      mov r1, r6
00888ad8  03 00 a0 e1                                      mov r0, r3
00888adc  00 30 93 e5                                      ldr r3, [r3]
00888ae0  0f e0 a0 e1                                      mov lr, pc
00888ae4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00888ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00888aec, declared_size=132, range_size=132, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFile15CreateNewCursorEv
; demangled: vox::StreamCFile::CreateNewCursor()
; decoder-mode: arm
00888aec  70 40 2d e9                                      push {r4, r5, r6, lr}
00888af0  04 30 90 e5                                      ldr r3, [r0, #4]
00888af4  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
00888af8  00 50 a0 e1                                      mov r5, r0
00888afc  00 00 53 e3                                      cmp r3, #0
00888b00  04 40 8f e0                                      add r4, pc, r4
00888b04  15 00 00 da                                      ble #0x888b60
00888b08  00 10 a0 e3                                      mov r1, #0
00888b0c  1c 00 08 e3                                      movw r0, #0x801c
00888b10  cc 1e ea eb                                      bl #0x310648
00888b14  50 20 9f e5                                      ldr r2, [pc, #0x50]
00888b18  00 30 a0 e3                                      mov r3, #0
00888b1c  18 10 08 e3                                      movw r1, #0x8018
00888b20  02 20 94 e7                                      ldr r2, [r4, r2]
00888b24  01 30 80 e7                                      str r3, [r0, r1]
00888b28  04 50 80 e5                                      str r5, [r0, #4]
00888b2c  08 20 82 e2                                      add r2, r2, #8
00888b30  00 20 80 e5                                      str r2, [r0]
00888b34  00 20 e0 e3                                      mvn r2, #0
00888b38  0c 20 80 e5                                      str r2, [r0, #0xc]
00888b3c  10 20 08 e3                                      movw r2, #0x8010
00888b40  02 30 80 e7                                      str r3, [r0, r2]
00888b44  14 20 08 e3                                      movw r2, #0x8014
00888b48  02 30 80 e7                                      str r3, [r0, r2]
00888b4c  00 60 a0 e1                                      mov r6, r0
00888b50  08 30 80 e5                                      str r3, [r0, #8]
00888b54  f3 fe ff eb                                      bl #0x888728
00888b58  06 00 a0 e1                                      mov r0, r6
00888b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00888b60  00 00 a0 e3                                      mov r0, #0
00888b64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00888b68  90 bf 10 00 00 12 00 00                          .byte 0x90, 0xbf, 0x10, 0x00, 0x00, 0x12, 0x00, 0x00

; FUNCTION 0x00888c34, declared_size=128, range_size=128, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFileC2EPKc
; demangled: vox::StreamCFile::StreamCFile(char const*)
; decoder-mode: arm
00888c34  70 30 9f e5                                      ldr r3, [pc, #0x70]
00888c38  70 20 9f e5                                      ldr r2, [pc, #0x70]
00888c3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00888c40  03 30 8f e0                                      add r3, pc, r3
00888c44  02 20 93 e7                                      ldr r2, [r3, r2]
00888c48  00 50 a0 e1                                      mov r5, r0
00888c4c  00 60 a0 e3                                      mov r6, #0
00888c50  08 20 82 e2                                      add r2, r2, #8
00888c54  04 60 80 e5                                      str r6, [r0, #4]
00888c58  08 20 85 e4                                      str r2, [r5], #8
00888c5c  00 40 a0 e1                                      mov r4, r0
00888c60  18 50 80 e5                                      str r5, [r0, #0x18]
00888c64  1c 50 80 e5                                      str r5, [r0, #0x1c]
00888c68  05 00 a0 e1                                      mov r0, r5
00888c6c  01 70 a0 e1                                      mov r7, r1
00888c70  ee ff ff eb                                      bl #0x888c30
00888c74  18 30 94 e5                                      ldr r3, [r4, #0x18]
00888c78  06 00 57 e1                                      cmp r7, r6
00888c7c  00 60 c3 e5                                      strb r6, [r3]
00888c80  07 00 00 0a                                      beq #0x888ca4
00888c84  07 00 a0 e1                                      mov r0, r7
00888c88  71 14 ea eb                                      bl #0x30de54
00888c8c  07 10 a0 e1                                      mov r1, r7
00888c90  00 20 87 e0                                      add r2, r7, r0
00888c94  05 00 a0 e1                                      mov r0, r5
00888c98  b4 ff ff eb                                      bl #0x888b70
00888c9c  04 00 a0 e1                                      mov r0, r4
00888ca0  6e ff ff eb                                      bl #0x888a60
00888ca4  04 00 a0 e1                                      mov r0, r4
00888ca8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00888cac  50 be 10 00 30 38 00 00                          .byte 0x50, 0xbe, 0x10, 0x00, 0x30, 0x38, 0x00, 0x00

; FUNCTION 0x00888d64, declared_size=84, range_size=84, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFileD0Ev
; demangled: vox::StreamCFile::~StreamCFile()
; decoder-mode: arm
00888d64  44 30 9f e5                                      ldr r3, [pc, #0x44]
00888d68  44 20 9f e5                                      ldr r2, [pc, #0x44]
00888d6c  10 40 2d e9                                      push {r4, lr}
00888d70  03 30 8f e0                                      add r3, pc, r3
00888d74  02 20 93 e7                                      ldr r2, [r3, r2]
00888d78  00 10 a0 e1                                      mov r1, r0
00888d7c  00 40 a0 e1                                      mov r4, r0
00888d80  08 20 82 e2                                      add r2, r2, #8
00888d84  08 20 81 e4                                      str r2, [r1], #8
00888d88  14 00 91 e5                                      ldr r0, [r1, #0x14]
00888d8c  01 00 50 e1                                      cmp r0, r1
00888d90  02 00 00 0a                                      beq #0x888da0
00888d94  00 00 50 e3                                      cmp r0, #0
00888d98  00 00 00 0a                                      beq #0x888da0
00888d9c  a8 1d ea eb                                      bl #0x310444
00888da0  04 00 a0 e1                                      mov r0, r4
00888da4  41 15 ea eb                                      bl #0x30e2b0
00888da8  04 00 a0 e1                                      mov r0, r4
00888dac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888db0  20 bd 10 00 30 38 00 00                          .byte 0x20, 0xbd, 0x10, 0x00, 0x30, 0x38, 0x00, 0x00

; FUNCTION 0x00888f18, declared_size=128, range_size=128, mode=arm
; class-group: vox::StreamCFile
; alias: _ZN3vox11StreamCFileC1EPKc
; demangled: vox::StreamCFile::StreamCFile(char const*)
; decoder-mode: arm
00888f18  70 30 9f e5                                      ldr r3, [pc, #0x70]
00888f1c  70 20 9f e5                                      ldr r2, [pc, #0x70]
00888f20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00888f24  03 30 8f e0                                      add r3, pc, r3
00888f28  02 20 93 e7                                      ldr r2, [r3, r2]
00888f2c  00 50 a0 e1                                      mov r5, r0
00888f30  00 60 a0 e3                                      mov r6, #0
00888f34  08 20 82 e2                                      add r2, r2, #8
00888f38  04 60 80 e5                                      str r6, [r0, #4]
00888f3c  08 20 85 e4                                      str r2, [r5], #8
00888f40  00 40 a0 e1                                      mov r4, r0
00888f44  18 50 80 e5                                      str r5, [r0, #0x18]
00888f48  1c 50 80 e5                                      str r5, [r0, #0x1c]
00888f4c  05 00 a0 e1                                      mov r0, r5
00888f50  01 70 a0 e1                                      mov r7, r1
00888f54  35 ff ff eb                                      bl #0x888c30
00888f58  18 30 94 e5                                      ldr r3, [r4, #0x18]
00888f5c  06 00 57 e1                                      cmp r7, r6
00888f60  00 60 c3 e5                                      strb r6, [r3]
00888f64  07 00 00 0a                                      beq #0x888f88
00888f68  07 00 a0 e1                                      mov r0, r7
00888f6c  b8 13 ea eb                                      bl #0x30de54
00888f70  07 10 a0 e1                                      mov r1, r7
00888f74  00 20 87 e0                                      add r2, r7, r0
00888f78  05 00 a0 e1                                      mov r0, r5
00888f7c  fb fe ff eb                                      bl #0x888b70
00888f80  04 00 a0 e1                                      mov r0, r4
00888f84  b5 fe ff eb                                      bl #0x888a60
00888f88  04 00 a0 e1                                      mov r0, r4
00888f8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00888f90  6c bb 10 00 30 38 00 00                          .byte 0x6c, 0xbb, 0x10, 0x00, 0x30, 0x38, 0x00, 0x00
