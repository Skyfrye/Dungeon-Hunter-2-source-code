; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b2b4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::COnDemandReader
; alias: _ZN6glitch7collada15COnDemandReaderD1Ev
; demangled: glitch::collada::COnDemandReader::~COnDemandReader()
; decoder-mode: arm
0060b2b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060b2b8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::COnDemandReader
; alias: _ZN6glitch7collada15COnDemandReader4readEiiPv
; demangled: glitch::collada::COnDemandReader::read(int, int, void*)
; decoder-mode: arm
0060b2b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b2bc  04 c0 90 e5                                      ldr ip, [r0, #4]
0060b2c0  00 40 a0 e1                                      mov r4, r0
0060b2c4  01 50 a0 e1                                      mov r5, r1
0060b2c8  0c 00 a0 e1                                      mov r0, ip
0060b2cc  02 10 a0 e1                                      mov r1, r2
0060b2d0  00 c0 9c e5                                      ldr ip, [ip]
0060b2d4  00 20 a0 e3                                      mov r2, #0
0060b2d8  03 60 a0 e1                                      mov r6, r3
0060b2dc  0f e0 a0 e1                                      mov lr, pc
0060b2e0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0060b2e4  04 30 94 e5                                      ldr r3, [r4, #4]
0060b2e8  06 10 a0 e1                                      mov r1, r6
0060b2ec  05 20 a0 e1                                      mov r2, r5
0060b2f0  03 00 a0 e1                                      mov r0, r3
0060b2f4  00 30 93 e5                                      ldr r3, [r3]
0060b2f8  0f e0 a0 e1                                      mov lr, pc
0060b2fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060b300  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060b304, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::COnDemandReader
; alias: _ZN6glitch7collada15COnDemandReader4readEiiPvPFviiS2_S2_ES2_
; demangled: glitch::collada::COnDemandReader::read(int, int, void*, void (*)(int, int, void*, void*), void*)
; decoder-mode: arm
0060b304  70 40 2d e9                                      push {r4, r5, r6, lr}
0060b308  04 c0 90 e5                                      ldr ip, [r0, #4]
0060b30c  00 40 a0 e1                                      mov r4, r0
0060b310  01 50 a0 e1                                      mov r5, r1
0060b314  0c 00 a0 e1                                      mov r0, ip
0060b318  02 10 a0 e1                                      mov r1, r2
0060b31c  00 c0 9c e5                                      ldr ip, [ip]
0060b320  00 20 a0 e3                                      mov r2, #0
0060b324  03 60 a0 e1                                      mov r6, r3
0060b328  0f e0 a0 e1                                      mov lr, pc
0060b32c  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0060b330  04 30 94 e5                                      ldr r3, [r4, #4]
0060b334  06 10 a0 e1                                      mov r1, r6
0060b338  05 20 a0 e1                                      mov r2, r5
0060b33c  03 00 a0 e1                                      mov r0, r3
0060b340  00 30 93 e5                                      ldr r3, [r3]
0060b344  0f e0 a0 e1                                      mov lr, pc
0060b348  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060b34c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060b644, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::COnDemandReader
; alias: _ZN6glitch7collada15COnDemandReaderD0Ev
; demangled: glitch::collada::COnDemandReader::~COnDemandReader()
; decoder-mode: arm
0060b644  10 40 2d e9                                      push {r4, lr}
0060b648  00 40 a0 e1                                      mov r4, r0
0060b64c  17 0b f4 eb                                      bl #0x30e2b0
0060b650  04 00 a0 e1                                      mov r0, r4
0060b654  10 80 bd e8                                      pop {r4, pc}
