; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00768cc8, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_object>
; alias: _ZN7gameswf9smart_ptrINS_9as_objectEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_object>::set_ref(gameswf::as_object*)
; decoder-mode: arm
00768cc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00768ccc  00 40 a0 e1                                      mov r4, r0
00768cd0  00 00 90 e5                                      ldr r0, [r0]
00768cd4  01 50 a0 e1                                      mov r5, r1
00768cd8  01 00 50 e1                                      cmp r0, r1
00768cdc  08 00 00 0a                                      beq #0x768d04
00768ce0  00 00 50 e3                                      cmp r0, #0
00768ce4  00 00 00 0a                                      beq #0x768cec
00768ce8  54 c5 ff eb                                      bl #0x75a240
00768cec  00 00 55 e3                                      cmp r5, #0
00768cf0  00 50 84 e5                                      str r5, [r4]
00768cf4  02 00 00 0a                                      beq #0x768d04
00768cf8  05 00 a0 e1                                      mov r0, r5
00768cfc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00768d00  d7 c3 ff ea                                      b #0x759c64
00768d04  70 80 bd e8                                      pop {r4, r5, r6, pc}
