; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00754e58, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::display_object_info
; alias: _ZN7gameswf19display_object_info7compareEPKvS2_
; demangled: gameswf::display_object_info::compare(void const*, void const*)
; decoder-mode: arm
00754e58  00 30 90 e5                                      ldr r3, [r0]
00754e5c  00 10 91 e5                                      ldr r1, [r1]
00754e60  b4 29 d3 e1                                      ldrh r2, [r3, #0x94]
00754e64  b4 39 d1 e1                                      ldrh r3, [r1, #0x94]
00754e68  03 00 52 e1                                      cmp r2, r3
00754e6c  00 00 e0 33                                      mvnlo r0, #0
00754e70  1e ff 2f 31                                      bxlo lr
00754e74  00 00 a0 03                                      moveq r0, #0
00754e78  01 00 a0 13                                      movne r0, #1
00754e7c  1e ff 2f e1                                      bx lr
