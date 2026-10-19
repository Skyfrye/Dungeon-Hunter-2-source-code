; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005911a0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>
; alias: _ZN6glitch5video16CPrimitiveStream10SMapBufferIKtE5resetERKS1_NS0_24E_BUFFER_READ_MAP_ACCESSE.clone.2
; demangled: glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>::reset(glitch::video::CPrimitiveStream const&, glitch::video::E_BUFFER_READ_MAP_ACCESS) [clone .clone.2]
; decoder-mode: arm
005911a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005911a4  04 30 90 e5                                      ldr r3, [r0, #4]
005911a8  00 40 a0 e1                                      mov r4, r0
005911ac  01 50 a0 e1                                      mov r5, r1
005911b0  00 00 53 e3                                      cmp r3, #0
005911b4  0c 00 00 0a                                      beq #0x5911ec
005911b8  00 30 90 e5                                      ldr r3, [r0]
005911bc  00 60 93 e5                                      ldr r6, [r3]
005911c0  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005911c4  1f 20 03 e2                                      and r2, r3, #0x1f
005911c8  01 00 52 e3                                      cmp r2, #1
005911cc  0e 00 00 9a                                      bls #0x59120c
005911d0  01 20 42 e2                                      sub r2, r2, #1
005911d4  1f 30 c3 e3                                      bic r3, r3, #0x1f
005911d8  03 30 82 e1                                      orr r3, r2, r3
005911dc  13 30 c6 e5                                      strb r3, [r6, #0x13]
005911e0  00 30 a0 e3                                      mov r3, #0
005911e4  04 30 84 e5                                      str r3, [r4, #4]
005911e8  00 30 84 e5                                      str r3, [r4]
005911ec  00 50 84 e5                                      str r5, [r4]
005911f0  00 00 95 e5                                      ldr r0, [r5]
005911f4  01 10 a0 e3                                      mov r1, #1
005911f8  37 42 00 eb                                      bl #0x5a1adc
005911fc  04 30 95 e5                                      ldr r3, [r5, #4]
00591200  03 30 80 e0                                      add r3, r0, r3
00591204  04 30 84 e5                                      str r3, [r4, #4]
00591208  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059120c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00591210  20 00 13 e3                                      tst r3, #0x20
00591214  02 00 00 1a                                      bne #0x591224
00591218  00 30 a0 e3                                      mov r3, #0
0059121c  13 30 c6 e5                                      strb r3, [r6, #0x13]
00591220  ee ff ff ea                                      b #0x5911e0
00591224  00 30 96 e5                                      ldr r3, [r6]
00591228  06 00 a0 e1                                      mov r0, r6
0059122c  0f e0 a0 e1                                      mov lr, pc
00591230  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00591234  f7 ff ff ea                                      b #0x591218
