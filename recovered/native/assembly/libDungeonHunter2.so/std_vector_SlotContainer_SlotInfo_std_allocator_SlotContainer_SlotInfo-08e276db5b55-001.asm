; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a23e8, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<SlotContainer::SlotInfo, std::allocator<SlotContainer::SlotInfo> >
; alias: _ZNSt6vectorIN13SlotContainer8SlotInfoESaIS1_EED1Ev
; demangled: std::vector<SlotContainer::SlotInfo, std::allocator<SlotContainer::SlotInfo> >::~vector()
; decoder-mode: arm
003a23e8  10 40 2d e9                                      push {r4, lr}
003a23ec  00 40 a0 e1                                      mov r4, r0
003a23f0  00 00 90 e5                                      ldr r0, [r0]
003a23f4  00 00 50 e3                                      cmp r0, #0
003a23f8  0c 00 00 0a                                      beq #0x3a2430
003a23fc  08 30 94 e5                                      ldr r3, [r4, #8]
003a2400  03 30 60 e0                                      rsb r3, r0, r3
003a2404  43 31 a0 e1                                      asr r3, r3, #2
003a2408  83 10 83 e0                                      add r1, r3, r3, lsl #1
003a240c  01 12 81 e0                                      add r1, r1, r1, lsl #4
003a2410  01 14 81 e0                                      add r1, r1, r1, lsl #8
003a2414  01 18 81 e0                                      add r1, r1, r1, lsl #16
003a2418  01 31 83 e0                                      add r3, r3, r1, lsl #2
003a241c  14 10 a0 e3                                      mov r1, #0x14
003a2420  91 03 01 e0                                      mul r1, r1, r3
003a2424  80 00 51 e3                                      cmp r1, #0x80
003a2428  02 00 00 8a                                      bhi #0x3a2438
003a242c  b3 9a 0d eb                                      bl #0x708f00
003a2430  04 00 a0 e1                                      mov r0, r4
003a2434  10 80 bd e8                                      pop {r4, pc}
003a2438  00 b8 fd eb                                      bl #0x310440
003a243c  04 00 a0 e1                                      mov r0, r4
003a2440  10 80 bd e8                                      pop {r4, pc}
