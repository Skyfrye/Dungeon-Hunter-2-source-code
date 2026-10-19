; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005235cc, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> >, std::allocator<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> > > >
; alias: _ZNSt6vectorISt4pairIN7PFWorld13ExitDirectionEN6glitch4core8vector3dIfEEESaIS7_EED1Ev
; demangled: std::vector<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> >, std::allocator<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> > > >::~vector()
; decoder-mode: arm
005235cc  10 40 2d e9                                      push {r4, lr}
005235d0  00 40 a0 e1                                      mov r4, r0
005235d4  00 00 90 e5                                      ldr r0, [r0]
005235d8  00 00 50 e3                                      cmp r0, #0
005235dc  05 00 00 0a                                      beq #0x5235f8
005235e0  08 10 94 e5                                      ldr r1, [r4, #8]
005235e4  01 10 60 e0                                      rsb r1, r0, r1
005235e8  0f 10 c1 e3                                      bic r1, r1, #0xf
005235ec  80 00 51 e3                                      cmp r1, #0x80
005235f0  02 00 00 8a                                      bhi #0x523600
005235f4  41 96 07 eb                                      bl #0x708f00
005235f8  04 00 a0 e1                                      mov r0, r4
005235fc  10 80 bd e8                                      pop {r4, pc}
00523600  8e b3 f7 eb                                      bl #0x310440
00523604  04 00 a0 e1                                      mov r0, r4
00523608  10 80 bd e8                                      pop {r4, pc}
