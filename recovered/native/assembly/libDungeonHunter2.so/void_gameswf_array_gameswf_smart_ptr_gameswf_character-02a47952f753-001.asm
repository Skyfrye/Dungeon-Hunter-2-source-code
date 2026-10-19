; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075581c, declared_size=80, range_size=80, mode=arm
; class-group: void gameswf::array<gameswf::smart_ptr<gameswf::character> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9characterEEEE9push_backIPS2_EEvRKT_
; demangled: void gameswf::array<gameswf::smart_ptr<gameswf::character> >::push_back<gameswf::character*>(gameswf::character* const&)
; decoder-mode: arm
0075581c  70 40 2d e9                                      push {r4, r5, r6, lr}
00755820  04 30 90 e5                                      ldr r3, [r0, #4]
00755824  08 20 90 e5                                      ldr r2, [r0, #8]
00755828  00 40 a0 e1                                      mov r4, r0
0075582c  01 50 83 e2                                      add r5, r3, #1
00755830  02 00 55 e1                                      cmp r5, r2
00755834  01 60 a0 e1                                      mov r6, r1
00755838  07 00 00 ca                                      bgt #0x75585c
0075583c  00 00 96 e5                                      ldr r0, [r6]
00755840  00 20 94 e5                                      ldr r2, [r4]
00755844  00 00 50 e3                                      cmp r0, #0
00755848  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
0075584c  00 00 00 0a                                      beq #0x755854
00755850  03 11 00 eb                                      bl #0x759c64
00755854  04 50 84 e5                                      str r5, [r4, #4]
00755858  70 80 bd e8                                      pop {r4, r5, r6, pc}
0075585c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00755860  ce ff ff eb                                      bl #0x7557a0
00755864  04 30 94 e5                                      ldr r3, [r4, #4]
00755868  f3 ff ff ea                                      b #0x75583c

; FUNCTION 0x0078adc0, declared_size=80, range_size=80, mode=arm
; class-group: void gameswf::array<gameswf::smart_ptr<gameswf::character> >
; alias: _ZN7gameswf5arrayINS_9smart_ptrINS_9characterEEEE9push_backIPNS_19edit_text_characterEEEvRKT_
; demangled: void gameswf::array<gameswf::smart_ptr<gameswf::character> >::push_back<gameswf::edit_text_character*>(gameswf::edit_text_character* const&)
; decoder-mode: arm
0078adc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0078adc4  04 30 90 e5                                      ldr r3, [r0, #4]
0078adc8  08 20 90 e5                                      ldr r2, [r0, #8]
0078adcc  00 40 a0 e1                                      mov r4, r0
0078add0  01 50 83 e2                                      add r5, r3, #1
0078add4  02 00 55 e1                                      cmp r5, r2
0078add8  01 60 a0 e1                                      mov r6, r1
0078addc  07 00 00 ca                                      bgt #0x78ae00
0078ade0  00 00 96 e5                                      ldr r0, [r6]
0078ade4  00 20 94 e5                                      ldr r2, [r4]
0078ade8  00 00 50 e3                                      cmp r0, #0
0078adec  03 01 82 e7                                      str r0, [r2, r3, lsl #2]
0078adf0  00 00 00 0a                                      beq #0x78adf8
0078adf4  9a 3b ff eb                                      bl #0x759c64
0078adf8  04 50 84 e5                                      str r5, [r4, #4]
0078adfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078ae00  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078ae04  65 2a ff eb                                      bl #0x7557a0
0078ae08  04 30 94 e5                                      ldr r3, [r4, #4]
0078ae0c  f3 ff ff ea                                      b #0x78ade0
