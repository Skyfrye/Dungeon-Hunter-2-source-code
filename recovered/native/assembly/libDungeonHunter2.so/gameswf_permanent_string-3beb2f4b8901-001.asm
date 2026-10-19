; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00752e64, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::permanent_string
; alias: _ZN7gameswf16permanent_stringD1Ev
; demangled: gameswf::permanent_string::~permanent_string()
; decoder-mode: arm
00752e64  10 40 2d e9                                      push {r4, lr}
00752e68  d0 30 d0 e1                                      ldrsb r3, [r0]
00752e6c  00 40 a0 e1                                      mov r4, r0
00752e70  01 00 73 e3                                      cmn r3, #1
00752e74  01 00 00 0a                                      beq #0x752e80
00752e78  04 00 a0 e1                                      mov r0, r4
00752e7c  10 80 bd e8                                      pop {r4, pc}
00752e80  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00752e84  08 10 94 e5                                      ldr r1, [r4, #8]
00752e88  2a ff ff eb                                      bl #0x752b38
00752e8c  04 00 a0 e1                                      mov r0, r4
00752e90  10 80 bd e8                                      pop {r4, pc}
