; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657818, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReader4tellEv
; demangled: glitch::collada::CResFileReader::tell()
; decoder-mode: arm
00657818  10 40 2d e9                                      push {r4, lr}
0065781c  04 30 90 e5                                      ldr r3, [r0, #4]
00657820  03 00 a0 e1                                      mov r0, r3
00657824  00 30 93 e5                                      ldr r3, [r3]
00657828  0f e0 a0 e1                                      mov lr, pc
0065782c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00657830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00657834, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReader4readEPvj
; demangled: glitch::collada::CResFileReader::read(void*, unsigned int)
; decoder-mode: arm
00657834  10 40 2d e9                                      push {r4, lr}
00657838  04 30 90 e5                                      ldr r3, [r0, #4]
0065783c  03 00 a0 e1                                      mov r0, r3
00657840  00 30 93 e5                                      ldr r3, [r3]
00657844  0f e0 a0 e1                                      mov lr, pc
00657848  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0065784c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00657850, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReader4seekElb
; demangled: glitch::collada::CResFileReader::seek(long, bool)
; decoder-mode: arm
00657850  10 40 2d e9                                      push {r4, lr}
00657854  04 30 90 e5                                      ldr r3, [r0, #4]
00657858  03 00 a0 e1                                      mov r0, r3
0065785c  00 30 93 e5                                      ldr r3, [r3]
00657860  0f e0 a0 e1                                      mov lr, pc
00657864  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00657868  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065786c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReader7getSizeEv
; demangled: glitch::collada::CResFileReader::getSize()
; decoder-mode: arm
0065786c  10 40 2d e9                                      push {r4, lr}
00657870  04 30 90 e5                                      ldr r3, [r0, #4]
00657874  03 00 a0 e1                                      mov r0, r3
00657878  00 30 93 e5                                      ldr r3, [r3]
0065787c  0f e0 a0 e1                                      mov lr, pc
00657880  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00657884  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00657888, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReaderD1Ev
; demangled: glitch::collada::CResFileReader::~CResFileReader()
; decoder-mode: arm
00657888  1e ff 2f e1                                      bx lr

; FUNCTION 0x006579e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CResFileReader
; alias: _ZN6glitch7collada14CResFileReaderD0Ev
; demangled: glitch::collada::CResFileReader::~CResFileReader()
; decoder-mode: arm
006579e0  10 40 2d e9                                      push {r4, lr}
006579e4  00 40 a0 e1                                      mov r4, r0
006579e8  30 da f2 eb                                      bl #0x30e2b0
006579ec  04 00 a0 e1                                      mov r0, r4
006579f0  10 80 bd e8                                      pop {r4, pc}
