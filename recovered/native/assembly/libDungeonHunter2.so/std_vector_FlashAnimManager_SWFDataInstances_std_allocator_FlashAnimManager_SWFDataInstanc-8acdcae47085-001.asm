; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004140cc, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<FlashAnimManager::SWFDataInstances, std::allocator<FlashAnimManager::SWFDataInstances> >
; alias: _ZNSt6vectorIN16FlashAnimManager16SWFDataInstancesESaIS1_EED1Ev
; demangled: std::vector<FlashAnimManager::SWFDataInstances, std::allocator<FlashAnimManager::SWFDataInstances> >::~vector()
; decoder-mode: arm
004140cc  10 40 2d e9                                      push {r4, lr}
004140d0  00 40 a0 e1                                      mov r4, r0
004140d4  00 00 90 e5                                      ldr r0, [r0]
004140d8  00 00 50 e3                                      cmp r0, #0
004140dc  0c 00 00 0a                                      beq #0x414114
004140e0  08 30 94 e5                                      ldr r3, [r4, #8]
004140e4  03 30 60 e0                                      rsb r3, r0, r3
004140e8  c3 32 a0 e1                                      asr r3, r3, #5
004140ec  03 11 83 e0                                      add r1, r3, r3, lsl #2
004140f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
004140f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
004140f8  01 18 81 e0                                      add r1, r1, r1, lsl #16
004140fc  81 30 83 e0                                      add r3, r3, r1, lsl #1
00414100  60 10 a0 e3                                      mov r1, #0x60
00414104  91 03 01 e0                                      mul r1, r1, r3
00414108  80 00 51 e3                                      cmp r1, #0x80
0041410c  02 00 00 8a                                      bhi #0x41411c
00414110  7a d3 0b eb                                      bl #0x708f00
00414114  04 00 a0 e1                                      mov r0, r4
00414118  10 80 bd e8                                      pop {r4, pc}
0041411c  c7 f0 fb eb                                      bl #0x310440
00414120  04 00 a0 e1                                      mov r0, r4
00414124  10 80 bd e8                                      pop {r4, pc}
