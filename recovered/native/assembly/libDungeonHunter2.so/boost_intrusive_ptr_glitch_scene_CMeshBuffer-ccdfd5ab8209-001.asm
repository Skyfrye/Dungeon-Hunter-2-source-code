; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637bac, declared_size=32, range_size=32, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::CMeshBuffer>
; alias: _ZN5boost13intrusive_ptrIN6glitch5scene11CMeshBufferEED1Ev
; demangled: boost::intrusive_ptr<glitch::scene::CMeshBuffer>::~intrusive_ptr()
; decoder-mode: arm
00637bac  10 40 2d e9                                      push {r4, lr}
00637bb0  00 40 a0 e1                                      mov r4, r0
00637bb4  00 00 90 e5                                      ldr r0, [r0]
00637bb8  00 00 50 e3                                      cmp r0, #0
00637bbc  00 00 00 0a                                      beq #0x637bc4
00637bc0  6f 96 f3 eb                                      bl #0x31d584
00637bc4  04 00 a0 e1                                      mov r0, r4
00637bc8  10 80 bd e8                                      pop {r4, pc}
