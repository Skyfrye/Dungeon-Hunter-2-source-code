; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e98d4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::SMapTextureWrite
; alias: _ZN6glitch5video16SMapTextureWriteD1Ev
; demangled: glitch::video::SMapTextureWrite::~SMapTextureWrite()
; decoder-mode: arm
005e98d4  10 40 2d e9                                      push {r4, lr}
005e98d8  04 30 90 e5                                      ldr r3, [r0, #4]
005e98dc  00 40 a0 e1                                      mov r4, r0
005e98e0  00 00 53 e3                                      cmp r3, #0
005e98e4  01 00 00 0a                                      beq #0x5e98f0
005e98e8  00 00 90 e5                                      ldr r0, [r0]
005e98ec  c6 50 00 eb                                      bl #0x5fdc0c
005e98f0  00 00 94 e5                                      ldr r0, [r4]
005e98f4  00 00 50 e3                                      cmp r0, #0
005e98f8  00 00 00 0a                                      beq #0x5e9900
005e98fc  20 cf f4 eb                                      bl #0x31d584
005e9900  04 00 a0 e1                                      mov r0, r4
005e9904  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00607824, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::SMapTextureWrite
; alias: _ZN6glitch5video16SMapTextureWrite5resetERKN5boost13intrusive_ptrINS0_8ITextureEEEhNS0_23E_TEXTURE_CUBE_MAP_FACEENS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::SMapTextureWrite::reset(boost::intrusive_ptr<glitch::video::ITexture> const&, unsigned char, glitch::video::E_TEXTURE_CUBE_MAP_FACE, glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
00607824  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00607828  00 40 a0 e1                                      mov r4, r0
0060782c  04 00 90 e5                                      ldr r0, [r0, #4]
00607830  01 60 a0 e1                                      mov r6, r1
00607834  02 50 a0 e1                                      mov r5, r2
00607838  00 00 50 e3                                      cmp r0, #0
0060783c  03 70 a0 e1                                      mov r7, r3
00607840  01 00 00 0a                                      beq #0x60784c
00607844  00 00 94 e5                                      ldr r0, [r4]
00607848  ef d8 ff eb                                      bl #0x5fdc0c
0060784c  00 30 96 e5                                      ldr r3, [r6]
00607850  00 00 53 e3                                      cmp r3, #0
00607854  04 20 93 15                                      ldrne r2, [r3, #4]
00607858  01 20 82 12                                      addne r2, r2, #1
0060785c  04 20 83 15                                      strne r2, [r3, #4]
00607860  00 00 94 e5                                      ldr r0, [r4]
00607864  00 30 84 e5                                      str r3, [r4]
00607868  00 00 50 e3                                      cmp r0, #0
0060786c  00 00 00 0a                                      beq #0x607874
00607870  43 57 f4 eb                                      bl #0x31d584
00607874  00 00 96 e5                                      ldr r0, [r6]
00607878  00 00 50 e3                                      cmp r0, #0
0060787c  04 00 00 0a                                      beq #0x607894
00607880  18 10 9d e5                                      ldr r1, [sp, #0x18]
00607884  07 20 a0 e1                                      mov r2, r7
00607888  05 30 a0 e1                                      mov r3, r5
0060788c  10 da ff eb                                      bl #0x5fe0d4
00607890  04 00 84 e5                                      str r0, [r4, #4]
00607894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
