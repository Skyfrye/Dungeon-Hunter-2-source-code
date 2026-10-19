; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d17e4, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ActivateProjectileTrap
; alias: _ZN7Structs22ActivateProjectileTrap8finalizeEv
; demangled: Structs::ActivateProjectileTrap::finalize()
; decoder-mode: arm
004d17e4  10 40 2d e9                                      push {r4, lr}
004d17e8  00 40 a0 e1                                      mov r4, r0
004d17ec  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d17f0  00 00 50 e3                                      cmp r0, #0
004d17f4  03 00 00 0a                                      beq #0x4d1808
004d17f8  10 fb f8 eb                                      bl #0x310440
004d17fc  00 30 a0 e3                                      mov r3, #0
004d1800  08 30 84 e5                                      str r3, [r4, #8]
004d1804  0c 30 84 e5                                      str r3, [r4, #0xc]
004d1808  04 00 a0 e1                                      mov r0, r4
004d180c  10 40 bd e8                                      pop {r4, lr}
004d1810  14 d5 ff ea                                      b #0x4c6c68

; FUNCTION 0x004d1814, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ActivateProjectileTrap
; alias: _ZN7Structs22ActivateProjectileTrapD1Ev
; demangled: Structs::ActivateProjectileTrap::~ActivateProjectileTrap()
; decoder-mode: arm
004d1814  10 40 2d e9                                      push {r4, lr}
004d1818  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d181c  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1820  00 40 a0 e1                                      mov r4, r0
004d1824  03 30 8f e0                                      add r3, pc, r3
004d1828  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d182c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1830  00 00 50 e3                                      cmp r0, #0
004d1834  08 20 82 e2                                      add r2, r2, #8
004d1838  00 20 84 e5                                      str r2, [r4]
004d183c  00 00 00 0a                                      beq #0x4d1844
004d1840  fe fa f8 eb                                      bl #0x310440
004d1844  04 00 a0 e1                                      mov r0, r4
004d1848  04 d5 ff eb                                      bl #0x4c6c60
004d184c  04 00 a0 e1                                      mov r0, r4
004d1850  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1854  6c 32 4c 00 58 10 00 00                          .byte 0x6c, 0x32, 0x4c, 0x00, 0x58, 0x10, 0x00, 0x00

; FUNCTION 0x004d185c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ActivateProjectileTrap
; alias: _ZN7Structs22ActivateProjectileTrapD0Ev
; demangled: Structs::ActivateProjectileTrap::~ActivateProjectileTrap()
; decoder-mode: arm
004d185c  10 40 2d e9                                      push {r4, lr}
004d1860  00 40 a0 e1                                      mov r4, r0
004d1864  ea ff ff eb                                      bl #0x4d1814
004d1868  04 00 a0 e1                                      mov r0, r4
004d186c  f3 fa f8 eb                                      bl #0x310440
004d1870  04 00 a0 e1                                      mov r0, r4
004d1874  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1878, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ActivateProjectileTrap
; alias: _ZN7Structs22ActivateProjectileTrapD2Ev
; demangled: Structs::ActivateProjectileTrap::~ActivateProjectileTrap()
; decoder-mode: arm
004d1878  10 40 2d e9                                      push {r4, lr}
004d187c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d1880  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d1884  00 40 a0 e1                                      mov r4, r0
004d1888  03 30 8f e0                                      add r3, pc, r3
004d188c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d1890  02 20 93 e7                                      ldr r2, [r3, r2]
004d1894  00 00 50 e3                                      cmp r0, #0
004d1898  08 20 82 e2                                      add r2, r2, #8
004d189c  00 20 84 e5                                      str r2, [r4]
004d18a0  00 00 00 0a                                      beq #0x4d18a8
004d18a4  e5 fa f8 eb                                      bl #0x310440
004d18a8  04 00 a0 e1                                      mov r0, r4
004d18ac  eb d4 ff eb                                      bl #0x4c6c60
004d18b0  04 00 a0 e1                                      mov r0, r4
004d18b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d18b8  08 32 4c 00 58 10 00 00                          .byte 0x08, 0x32, 0x4c, 0x00, 0x58, 0x10, 0x00, 0x00

; FUNCTION 0x00500530, declared_size=192, range_size=192, mode=arm
; class-group: Structs::ActivateProjectileTrap
; alias: _ZN7Structs22ActivateProjectileTrap4readEP11IStreamBase
; demangled: Structs::ActivateProjectileTrap::read(IStreamBase*)
; decoder-mode: arm
00500530  70 40 2d e9                                      push {r4, r5, r6, lr}
00500534  00 40 a0 e1                                      mov r4, r0
00500538  08 d0 4d e2                                      sub sp, sp, #8
0050053c  01 60 a0 e1                                      mov r6, r1
00500540  b8 fc ff eb                                      bl #0x4ff828
00500544  06 00 a0 e1                                      mov r0, r6
00500548  08 10 84 e2                                      add r1, r4, #8
0050054c  13 7b fb eb                                      bl #0x3df1a0
00500550  01 30 a0 e3                                      mov r3, #1
00500554  00 00 53 e3                                      cmp r3, #0
00500558  04 30 8d e5                                      str r3, [sp, #4]
0050055c  0f 00 00 1a                                      bne #0x5005a0
00500560  09 30 84 e2                                      add r3, r4, #9
00500564  0a 20 84 e2                                      add r2, r4, #0xa
00500568  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050056c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00500570  02 00 53 e1                                      cmp r3, r2
00500574  01 10 20 e0                                      eor r1, r0, r1
00500578  01 10 43 e5                                      strb r1, [r3, #-1]
0050057c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00500580  00 10 21 e0                                      eor r1, r1, r0
00500584  01 10 c2 e5                                      strb r1, [r2, #1]
00500588  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050058c  01 20 42 e2                                      sub r2, r2, #1
00500590  00 10 21 e0                                      eor r1, r1, r0
00500594  01 10 43 e5                                      strb r1, [r3, #-1]
00500598  01 30 83 e2                                      add r3, r3, #1
0050059c  f1 ff ff 3a                                      blo #0x500568
005005a0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005005a4  00 00 50 e3                                      cmp r0, #0
005005a8  00 00 00 0a                                      beq #0x5005b0
005005ac  a3 3f f8 eb                                      bl #0x310440
005005b0  08 00 94 e5                                      ldr r0, [r4, #8]
005005b4  01 10 a0 e3                                      mov r1, #1
005005b8  00 50 a0 e3                                      mov r5, #0
005005bc  01 00 80 e0                                      add r0, r0, r1
005005c0  e9 3f f8 eb                                      bl #0x31056c
005005c4  08 20 94 e5                                      ldr r2, [r4, #8]
005005c8  00 10 a0 e1                                      mov r1, r0
005005cc  0c 00 84 e5                                      str r0, [r4, #0xc]
005005d0  05 30 a0 e1                                      mov r3, r5
005005d4  06 00 a0 e1                                      mov r0, r6
005005d8  9d 5b f8 eb                                      bl #0x317454
005005dc  08 30 94 e5                                      ldr r3, [r4, #8]
005005e0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005005e4  03 50 c2 e7                                      strb r5, [r2, r3]
005005e8  08 d0 8d e2                                      add sp, sp, #8
005005ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
