; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00339564, declared_size=20, range_size=20, mode=arm
; class-group: std::queue<SubtitleEntry*, std::deque<SubtitleEntry*, std::allocator<SubtitleEntry*> > >
; alias: _ZNSt5queueIP13SubtitleEntrySt5dequeIS1_SaIS1_EEED1Ev
; demangled: std::queue<SubtitleEntry*, std::deque<SubtitleEntry*, std::allocator<SubtitleEntry*> > >::~queue()
; decoder-mode: arm
00339564  10 40 2d e9                                      push {r4, lr}
00339568  00 40 a0 e1                                      mov r4, r0
0033956c  db ff ff eb                                      bl #0x3394e0
00339570  04 00 a0 e1                                      mov r0, r4
00339574  10 80 bd e8                                      pop {r4, pc}
