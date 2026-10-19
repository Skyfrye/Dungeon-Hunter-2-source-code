; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00339124, declared_size=124, range_size=124, mode=arm
; class-group: DataReloaderManager::_MonitoredFiles
; alias: _ZN19DataReloaderManager15_MonitoredFilesD1Ev
; demangled: DataReloaderManager::_MonitoredFiles::~_MonitoredFiles()
; decoder-mode: arm
00339124  10 40 2d e9                                      push {r4, lr}
00339128  1c 30 80 e2                                      add r3, r0, #0x1c
0033912c  00 40 a0 e1                                      mov r4, r0
00339130  14 00 93 e5                                      ldr r0, [r3, #0x14]
00339134  03 00 50 e1                                      cmp r0, r3
00339138  06 00 00 0a                                      beq #0x339158
0033913c  00 00 50 e3                                      cmp r0, #0
00339140  04 00 00 0a                                      beq #0x339158
00339144  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00339148  01 10 60 e0                                      rsb r1, r0, r1
0033914c  80 00 51 e3                                      cmp r1, #0x80
00339150  10 00 00 8a                                      bhi #0x339198
00339154  69 3f 0f eb                                      bl #0x708f00
00339158  04 30 84 e2                                      add r3, r4, #4
0033915c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00339160  03 00 50 e1                                      cmp r0, r3
00339164  06 00 00 0a                                      beq #0x339184
00339168  00 00 50 e3                                      cmp r0, #0
0033916c  04 00 00 0a                                      beq #0x339184
00339170  04 10 94 e5                                      ldr r1, [r4, #4]
00339174  01 10 60 e0                                      rsb r1, r0, r1
00339178  80 00 51 e3                                      cmp r1, #0x80
0033917c  02 00 00 8a                                      bhi #0x33918c
00339180  5e 3f 0f eb                                      bl #0x708f00
00339184  04 00 a0 e1                                      mov r0, r4
00339188  10 80 bd e8                                      pop {r4, pc}
0033918c  ab 5c ff eb                                      bl #0x310440
00339190  04 00 a0 e1                                      mov r0, r4
00339194  10 80 bd e8                                      pop {r4, pc}
00339198  a8 5c ff eb                                      bl #0x310440
0033919c  ed ff ff ea                                      b #0x339158
