; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008939e4, declared_size=4, range_size=4, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterfaceD1Ev
; demangled: vox::FileInterface::~FileInterface()
; decoder-mode: arm
008939e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008939e8, declared_size=8, range_size=8, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterface10GetFilePtrEv
; demangled: vox::FileInterface::GetFilePtr()
; decoder-mode: arm
008939e8  04 00 90 e5                                      ldr r0, [r0, #4]
008939ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x008939fc, declared_size=88, range_size=88, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterface4ReadEPvii
; demangled: vox::FileInterface::Read(void*, int, int)
; decoder-mode: arm
008939fc  10 40 2d e9                                      push {r4, lr}
00893a00  04 c0 90 e5                                      ldr ip, [r0, #4]
00893a04  40 40 9f e5                                      ldr r4, [pc, #0x40]
00893a08  00 00 51 e3                                      cmp r1, #0
00893a0c  00 00 5c 13                                      cmpne ip, #0
00893a10  04 40 8f e0                                      add r4, pc, r4
00893a14  0a 00 00 0a                                      beq #0x893a44
00893a18  30 00 9f e5                                      ldr r0, [pc, #0x30]
00893a1c  00 00 94 e7                                      ldr r0, [r4, r0]
00893a20  00 40 90 e5                                      ldr r4, [r0]
00893a24  00 00 54 e3                                      cmp r4, #0
00893a28  05 00 00 0a                                      beq #0x893a44
00893a2c  01 00 a0 e1                                      mov r0, r1
00893a30  02 10 a0 e1                                      mov r1, r2
00893a34  03 20 a0 e1                                      mov r2, r3
00893a38  0c 30 a0 e1                                      mov r3, ip
00893a3c  34 ff 2f e1                                      blx r4
00893a40  10 80 bd e8                                      pop {r4, pc}
00893a44  00 00 a0 e3                                      mov r0, #0
00893a48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00893a4c  80 10 10 00 78 15 00 00                          .byte 0x80, 0x10, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893a54, declared_size=68, range_size=68, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterface4SeekEiNS_17VoxFileSeekOriginE
; demangled: vox::FileInterface::Seek(int, vox::VoxFileSeekOrigin)
; decoder-mode: arm
00893a54  10 40 2d e9                                      push {r4, lr}
00893a58  04 00 90 e5                                      ldr r0, [r0, #4]
00893a5c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00893a60  00 00 50 e3                                      cmp r0, #0
00893a64  03 30 8f e0                                      add r3, pc, r3
00893a68  01 00 00 1a                                      bne #0x893a74
00893a6c  00 00 e0 e3                                      mvn r0, #0
00893a70  10 80 bd e8                                      pop {r4, pc}
00893a74  18 c0 9f e5                                      ldr ip, [pc, #0x18]
00893a78  0c 30 93 e7                                      ldr r3, [r3, ip]
00893a7c  08 30 93 e5                                      ldr r3, [r3, #8]
00893a80  00 00 53 e3                                      cmp r3, #0
00893a84  f8 ff ff 0a                                      beq #0x893a6c
00893a88  33 ff 2f e1                                      blx r3
00893a8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00893a90  2c 10 10 00 78 15 00 00                          .byte 0x2c, 0x10, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893a98, declared_size=68, range_size=68, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterface4TellEv
; demangled: vox::FileInterface::Tell()
; decoder-mode: arm
00893a98  10 40 2d e9                                      push {r4, lr}
00893a9c  04 00 90 e5                                      ldr r0, [r0, #4]
00893aa0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00893aa4  00 00 50 e3                                      cmp r0, #0
00893aa8  03 30 8f e0                                      add r3, pc, r3
00893aac  01 00 00 1a                                      bne #0x893ab8
00893ab0  00 00 e0 e3                                      mvn r0, #0
00893ab4  10 80 bd e8                                      pop {r4, pc}
00893ab8  18 20 9f e5                                      ldr r2, [pc, #0x18]
00893abc  02 30 93 e7                                      ldr r3, [r3, r2]
00893ac0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00893ac4  00 00 53 e3                                      cmp r3, #0
00893ac8  f8 ff ff 0a                                      beq #0x893ab0
00893acc  33 ff 2f e1                                      blx r3
00893ad0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00893ad4  e8 0f 10 00 78 15 00 00                          .byte 0xe8, 0x0f, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893adc, declared_size=88, range_size=88, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterface5WriteEPKvii
; demangled: vox::FileInterface::Write(void const*, int, int)
; decoder-mode: arm
00893adc  10 40 2d e9                                      push {r4, lr}
00893ae0  04 c0 90 e5                                      ldr ip, [r0, #4]
00893ae4  40 40 9f e5                                      ldr r4, [pc, #0x40]
00893ae8  00 00 51 e3                                      cmp r1, #0
00893aec  00 00 5c 13                                      cmpne ip, #0
00893af0  04 40 8f e0                                      add r4, pc, r4
00893af4  0a 00 00 0a                                      beq #0x893b24
00893af8  30 00 9f e5                                      ldr r0, [pc, #0x30]
00893afc  00 00 94 e7                                      ldr r0, [r4, r0]
00893b00  04 40 90 e5                                      ldr r4, [r0, #4]
00893b04  00 00 54 e3                                      cmp r4, #0
00893b08  05 00 00 0a                                      beq #0x893b24
00893b0c  01 00 a0 e1                                      mov r0, r1
00893b10  02 10 a0 e1                                      mov r1, r2
00893b14  03 20 a0 e1                                      mov r2, r3
00893b18  0c 30 a0 e1                                      mov r3, ip
00893b1c  34 ff 2f e1                                      blx r4
00893b20  10 80 bd e8                                      pop {r4, pc}
00893b24  00 00 a0 e3                                      mov r0, #0
00893b28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00893b2c  a0 0f 10 00 78 15 00 00                          .byte 0xa0, 0x0f, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x00893e60, declared_size=20, range_size=20, mode=arm
; class-group: vox::FileInterface
; alias: _ZN3vox13FileInterfaceD0Ev
; demangled: vox::FileInterface::~FileInterface()
; decoder-mode: arm
00893e60  10 40 2d e9                                      push {r4, lr}
00893e64  00 40 a0 e1                                      mov r4, r0
00893e68  10 e9 e9 eb                                      bl #0x30e2b0
00893e6c  04 00 a0 e1                                      mov r0, r4
00893e70  10 80 bd e8                                      pop {r4, pc}
