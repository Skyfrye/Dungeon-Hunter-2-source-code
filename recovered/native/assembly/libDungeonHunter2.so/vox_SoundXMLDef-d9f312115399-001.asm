; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889e98, declared_size=88, range_size=88, mode=arm
; class-group: vox::SoundXMLDef
; alias: _ZN3vox11SoundXMLDefD1Ev
; demangled: vox::SoundXMLDef::~SoundXMLDef()
; decoder-mode: arm
00889e98  10 40 2d e9                                      push {r4, lr}
00889e9c  00 40 a0 e1                                      mov r4, r0
00889ea0  08 00 90 e5                                      ldr r0, [r0, #8]
00889ea4  00 00 50 e3                                      cmp r0, #0
00889ea8  00 00 00 0a                                      beq #0x889eb0
00889eac  64 19 ea eb                                      bl #0x310444
00889eb0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00889eb4  00 00 50 e3                                      cmp r0, #0
00889eb8  00 00 00 0a                                      beq #0x889ec0
00889ebc  60 19 ea eb                                      bl #0x310444
00889ec0  40 00 94 e5                                      ldr r0, [r4, #0x40]
00889ec4  00 00 50 e3                                      cmp r0, #0
00889ec8  06 00 00 0a                                      beq #0x889ee8
00889ecc  00 30 90 e5                                      ldr r3, [r0]
00889ed0  00 00 53 e3                                      cmp r3, #0
00889ed4  02 00 00 0a                                      beq #0x889ee4
00889ed8  03 00 a0 e1                                      mov r0, r3
00889edc  58 19 ea eb                                      bl #0x310444
00889ee0  40 00 94 e5                                      ldr r0, [r4, #0x40]
00889ee4  56 19 ea eb                                      bl #0x310444
00889ee8  04 00 a0 e1                                      mov r0, r4
00889eec  10 80 bd e8                                      pop {r4, pc}
