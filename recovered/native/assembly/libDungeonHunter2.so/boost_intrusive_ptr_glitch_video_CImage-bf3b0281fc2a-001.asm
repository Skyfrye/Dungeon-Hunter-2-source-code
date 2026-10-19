; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00603414, declared_size=52, range_size=52, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::CImage>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video6CImageEEaSEPS3_
; demangled: boost::intrusive_ptr<glitch::video::CImage>::operator=(glitch::video::CImage*)
; decoder-mode: arm
00603414  10 40 2d e9                                      push {r4, lr}
00603418  00 00 51 e3                                      cmp r1, #0
0060341c  04 30 91 15                                      ldrne r3, [r1, #4]
00603420  00 40 a0 e1                                      mov r4, r0
00603424  01 30 83 12                                      addne r3, r3, #1
00603428  04 30 81 15                                      strne r3, [r1, #4]
0060342c  00 00 90 e5                                      ldr r0, [r0]
00603430  00 10 84 e5                                      str r1, [r4]
00603434  00 00 50 e3                                      cmp r0, #0
00603438  00 00 00 0a                                      beq #0x603440
0060343c  50 68 f4 eb                                      bl #0x31d584
00603440  04 00 a0 e1                                      mov r0, r4
00603444  10 80 bd e8                                      pop {r4, pc}
