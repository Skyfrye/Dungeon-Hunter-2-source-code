; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050a70c, declared_size=64, range_size=64, mode=arm
; class-group: AssetManager::Texture
; alias: _ZN12AssetManager7TextureD1Ev
; demangled: AssetManager::Texture::~Texture()
; decoder-mode: arm
0050a70c  10 40 2d e9                                      push {r4, lr}
0050a710  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0050a714  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0050a718  00 40 a0 e1                                      mov r4, r0
0050a71c  03 30 8f e0                                      add r3, pc, r3
0050a720  08 00 90 e5                                      ldr r0, [r0, #8]
0050a724  02 20 93 e7                                      ldr r2, [r3, r2]
0050a728  00 00 50 e3                                      cmp r0, #0
0050a72c  08 20 82 e2                                      add r2, r2, #8
0050a730  00 20 84 e5                                      str r2, [r4]
0050a734  00 00 00 0a                                      beq #0x50a73c
0050a738  91 4b f8 eb                                      bl #0x31d584
0050a73c  04 00 a0 e1                                      mov r0, r4
0050a740  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050a744  74 a3 48 00 58 0e 00 00                          .byte 0x74, 0xa3, 0x48, 0x00, 0x58, 0x0e, 0x00, 0x00

; FUNCTION 0x0050a74c, declared_size=72, range_size=72, mode=arm
; class-group: AssetManager::Texture
; alias: _ZN12AssetManager7TextureD0Ev
; demangled: AssetManager::Texture::~Texture()
; decoder-mode: arm
0050a74c  10 40 2d e9                                      push {r4, lr}
0050a750  34 30 9f e5                                      ldr r3, [pc, #0x34]
0050a754  34 20 9f e5                                      ldr r2, [pc, #0x34]
0050a758  00 40 a0 e1                                      mov r4, r0
0050a75c  03 30 8f e0                                      add r3, pc, r3
0050a760  08 00 90 e5                                      ldr r0, [r0, #8]
0050a764  02 20 93 e7                                      ldr r2, [r3, r2]
0050a768  00 00 50 e3                                      cmp r0, #0
0050a76c  08 20 82 e2                                      add r2, r2, #8
0050a770  00 20 84 e5                                      str r2, [r4]
0050a774  00 00 00 0a                                      beq #0x50a77c
0050a778  81 4b f8 eb                                      bl #0x31d584
0050a77c  04 00 a0 e1                                      mov r0, r4
0050a780  2e 17 f8 eb                                      bl #0x310440
0050a784  04 00 a0 e1                                      mov r0, r4
0050a788  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050a78c  34 a3 48 00 58 0e 00 00                          .byte 0x34, 0xa3, 0x48, 0x00, 0x58, 0x0e, 0x00, 0x00
