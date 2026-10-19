; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00454328, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<std::pair<gameswf::character*, glitch::core::vector3d<float> >, std::allocator<std::pair<gameswf::character*, glitch::core::vector3d<float> > > >
; alias: _ZNSt6vectorISt4pairIPN7gameswf9characterEN6glitch4core8vector3dIfEEESaIS8_EED1Ev
; demangled: std::vector<std::pair<gameswf::character*, glitch::core::vector3d<float> >, std::allocator<std::pair<gameswf::character*, glitch::core::vector3d<float> > > >::~vector()
; decoder-mode: arm
00454328  10 40 2d e9                                      push {r4, lr}
0045432c  00 40 a0 e1                                      mov r4, r0
00454330  00 00 90 e5                                      ldr r0, [r0]
00454334  00 00 50 e3                                      cmp r0, #0
00454338  05 00 00 0a                                      beq #0x454354
0045433c  08 10 94 e5                                      ldr r1, [r4, #8]
00454340  01 10 60 e0                                      rsb r1, r0, r1
00454344  0f 10 c1 e3                                      bic r1, r1, #0xf
00454348  80 00 51 e3                                      cmp r1, #0x80
0045434c  02 00 00 8a                                      bhi #0x45435c
00454350  ea d2 0a eb                                      bl #0x708f00
00454354  04 00 a0 e1                                      mov r0, r4
00454358  10 80 bd e8                                      pop {r4, pc}
0045435c  37 f0 fa eb                                      bl #0x310440
00454360  04 00 a0 e1                                      mov r0, r4
00454364  10 80 bd e8                                      pop {r4, pc}
