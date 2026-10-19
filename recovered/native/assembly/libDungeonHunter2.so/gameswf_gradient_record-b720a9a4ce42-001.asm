; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00784370, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::gradient_record
; alias: _ZN7gameswf15gradient_recordC2Ev
; demangled: gameswf::gradient_record::gradient_record()
; decoder-mode: arm
00784370  00 20 e0 e3                                      mvn r2, #0
00784374  00 10 a0 e3                                      mov r1, #0
00784378  04 20 c0 e5                                      strb r2, [r0, #4]
0078437c  00 10 c0 e5                                      strb r1, [r0]
00784380  01 20 c0 e5                                      strb r2, [r0, #1]
00784384  02 20 c0 e5                                      strb r2, [r0, #2]
00784388  03 20 c0 e5                                      strb r2, [r0, #3]
0078438c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00784390, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::gradient_record
; alias: _ZN7gameswf15gradient_recordC1Ev
; demangled: gameswf::gradient_record::gradient_record()
; decoder-mode: arm
00784390  00 20 e0 e3                                      mvn r2, #0
00784394  00 10 a0 e3                                      mov r1, #0
00784398  04 20 c0 e5                                      strb r2, [r0, #4]
0078439c  00 10 c0 e5                                      strb r1, [r0]
007843a0  01 20 c0 e5                                      strb r2, [r0, #1]
007843a4  02 20 c0 e5                                      strb r2, [r0, #2]
007843a8  03 20 c0 e5                                      strb r2, [r0, #3]
007843ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x007849f0, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::gradient_record
; alias: _ZN7gameswf15gradient_record4readEPNS_6streamEi
; demangled: gameswf::gradient_record::read(gameswf::stream*, int)
; decoder-mode: arm
007849f0  70 40 2d e9                                      push {r4, r5, r6, lr}
007849f4  00 60 a0 e1                                      mov r6, r0
007849f8  01 00 a0 e1                                      mov r0, r1
007849fc  01 40 a0 e1                                      mov r4, r1
00784a00  02 50 a0 e1                                      mov r5, r2
00784a04  47 fc ff eb                                      bl #0x783b28
00784a08  01 00 c6 e4                                      strb r0, [r6], #1
00784a0c  06 00 a0 e1                                      mov r0, r6
00784a10  04 10 a0 e1                                      mov r1, r4
00784a14  05 20 a0 e1                                      mov r2, r5
00784a18  70 40 bd e8                                      pop {r4, r5, r6, lr}
00784a1c  a1 47 00 ea                                      b #0x7968a8
