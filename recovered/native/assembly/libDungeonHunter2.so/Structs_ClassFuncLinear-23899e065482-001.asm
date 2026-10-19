; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56b8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinear
; alias: _ZN7Structs15ClassFuncLinearD2Ev
; demangled: Structs::ClassFuncLinear::~ClassFuncLinear()
; decoder-mode: arm
004c56b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56bc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinear
; alias: _ZN7Structs15ClassFuncLinearD1Ev
; demangled: Structs::ClassFuncLinear::~ClassFuncLinear()
; decoder-mode: arm
004c56bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56c0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ClassFuncLinear
; alias: _ZN7Structs15ClassFuncLinear8finalizeEv
; demangled: Structs::ClassFuncLinear::finalize()
; decoder-mode: arm
004c56c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ceaac, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncLinear
; alias: _ZN7Structs15ClassFuncLinearD0Ev
; demangled: Structs::ClassFuncLinear::~ClassFuncLinear()
; decoder-mode: arm
004ceaac  10 40 2d e9                                      push {r4, lr}
004ceab0  00 40 a0 e1                                      mov r4, r0
004ceab4  00 db ff eb                                      bl #0x4c56bc
004ceab8  04 00 a0 e1                                      mov r0, r4
004ceabc  5f 06 f9 eb                                      bl #0x310440
004ceac0  04 00 a0 e1                                      mov r0, r4
004ceac4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f17f8, declared_size=484, range_size=484, mode=arm
; class-group: Structs::ClassFuncLinear
; alias: _ZN7Structs15ClassFuncLinear4readEP11IStreamBase
; demangled: Structs::ClassFuncLinear::read(IStreamBase*)
; decoder-mode: arm
004f17f8  30 40 2d e9                                      push {r4, r5, lr}
004f17fc  00 40 a0 e1                                      mov r4, r0
004f1800  0c d0 4d e2                                      sub sp, sp, #0xc
004f1804  01 00 a0 e1                                      mov r0, r1
004f1808  01 50 a0 e1                                      mov r5, r1
004f180c  04 10 84 e2                                      add r1, r4, #4
004f1810  1e 9e fd eb                                      bl #0x459090
004f1814  01 30 a0 e3                                      mov r3, #1
004f1818  00 00 53 e3                                      cmp r3, #0
004f181c  04 30 8d e5                                      str r3, [sp, #4]
004f1820  0f 00 00 1a                                      bne #0x4f1864
004f1824  05 30 84 e2                                      add r3, r4, #5
004f1828  06 20 84 e2                                      add r2, r4, #6
004f182c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1830  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1834  03 00 52 e1                                      cmp r2, r3
004f1838  01 10 20 e0                                      eor r1, r0, r1
004f183c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1840  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1844  00 10 21 e0                                      eor r1, r1, r0
004f1848  01 10 c2 e5                                      strb r1, [r2, #1]
004f184c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1850  01 20 42 e2                                      sub r2, r2, #1
004f1854  00 10 21 e0                                      eor r1, r1, r0
004f1858  01 10 43 e5                                      strb r1, [r3, #-1]
004f185c  01 30 83 e2                                      add r3, r3, #1
004f1860  f1 ff ff 8a                                      bhi #0x4f182c
004f1864  05 00 a0 e1                                      mov r0, r5
004f1868  08 10 84 e2                                      add r1, r4, #8
004f186c  07 9e fd eb                                      bl #0x459090
004f1870  01 30 a0 e3                                      mov r3, #1
004f1874  00 00 53 e3                                      cmp r3, #0
004f1878  04 30 8d e5                                      str r3, [sp, #4]
004f187c  0f 00 00 1a                                      bne #0x4f18c0
004f1880  09 30 84 e2                                      add r3, r4, #9
004f1884  0a 20 84 e2                                      add r2, r4, #0xa
004f1888  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f188c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1890  03 00 52 e1                                      cmp r2, r3
004f1894  01 10 20 e0                                      eor r1, r0, r1
004f1898  01 10 43 e5                                      strb r1, [r3, #-1]
004f189c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f18a0  00 10 21 e0                                      eor r1, r1, r0
004f18a4  01 10 c2 e5                                      strb r1, [r2, #1]
004f18a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f18ac  01 20 42 e2                                      sub r2, r2, #1
004f18b0  00 10 21 e0                                      eor r1, r1, r0
004f18b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f18b8  01 30 83 e2                                      add r3, r3, #1
004f18bc  f1 ff ff 8a                                      bhi #0x4f1888
004f18c0  05 00 a0 e1                                      mov r0, r5
004f18c4  0c 10 84 e2                                      add r1, r4, #0xc
004f18c8  f0 9d fd eb                                      bl #0x459090
004f18cc  01 30 a0 e3                                      mov r3, #1
004f18d0  00 00 53 e3                                      cmp r3, #0
004f18d4  04 30 8d e5                                      str r3, [sp, #4]
004f18d8  0f 00 00 1a                                      bne #0x4f191c
004f18dc  0d 30 84 e2                                      add r3, r4, #0xd
004f18e0  0e 20 84 e2                                      add r2, r4, #0xe
004f18e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f18e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f18ec  03 00 52 e1                                      cmp r2, r3
004f18f0  01 10 20 e0                                      eor r1, r0, r1
004f18f4  01 10 43 e5                                      strb r1, [r3, #-1]
004f18f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f18fc  00 10 21 e0                                      eor r1, r1, r0
004f1900  01 10 c2 e5                                      strb r1, [r2, #1]
004f1904  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1908  01 20 42 e2                                      sub r2, r2, #1
004f190c  00 10 21 e0                                      eor r1, r1, r0
004f1910  01 10 43 e5                                      strb r1, [r3, #-1]
004f1914  01 30 83 e2                                      add r3, r3, #1
004f1918  f1 ff ff 8a                                      bhi #0x4f18e4
004f191c  05 00 a0 e1                                      mov r0, r5
004f1920  10 10 84 e2                                      add r1, r4, #0x10
004f1924  d9 9d fd eb                                      bl #0x459090
004f1928  01 30 a0 e3                                      mov r3, #1
004f192c  00 00 53 e3                                      cmp r3, #0
004f1930  04 30 8d e5                                      str r3, [sp, #4]
004f1934  0f 00 00 1a                                      bne #0x4f1978
004f1938  11 30 84 e2                                      add r3, r4, #0x11
004f193c  12 20 84 e2                                      add r2, r4, #0x12
004f1940  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1944  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f1948  03 00 52 e1                                      cmp r2, r3
004f194c  01 10 20 e0                                      eor r1, r0, r1
004f1950  01 10 43 e5                                      strb r1, [r3, #-1]
004f1954  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f1958  00 10 21 e0                                      eor r1, r1, r0
004f195c  01 10 c2 e5                                      strb r1, [r2, #1]
004f1960  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f1964  01 20 42 e2                                      sub r2, r2, #1
004f1968  00 10 21 e0                                      eor r1, r1, r0
004f196c  01 10 43 e5                                      strb r1, [r3, #-1]
004f1970  01 30 83 e2                                      add r3, r3, #1
004f1974  f1 ff ff 8a                                      bhi #0x4f1940
004f1978  05 00 a0 e1                                      mov r0, r5
004f197c  14 10 84 e2                                      add r1, r4, #0x14
004f1980  c2 9d fd eb                                      bl #0x459090
004f1984  01 30 a0 e3                                      mov r3, #1
004f1988  00 00 53 e3                                      cmp r3, #0
004f198c  04 30 8d e5                                      str r3, [sp, #4]
004f1990  0f 00 00 1a                                      bne #0x4f19d4
004f1994  16 30 84 e2                                      add r3, r4, #0x16
004f1998  15 40 84 e2                                      add r4, r4, #0x15
004f199c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f19a0  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f19a4  04 00 53 e1                                      cmp r3, r4
004f19a8  02 20 21 e0                                      eor r2, r1, r2
004f19ac  01 20 44 e5                                      strb r2, [r4, #-1]
004f19b0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f19b4  01 20 22 e0                                      eor r2, r2, r1
004f19b8  01 20 c3 e5                                      strb r2, [r3, #1]
004f19bc  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f19c0  01 30 43 e2                                      sub r3, r3, #1
004f19c4  01 20 22 e0                                      eor r2, r2, r1
004f19c8  01 20 44 e5                                      strb r2, [r4, #-1]
004f19cc  01 40 84 e2                                      add r4, r4, #1
004f19d0  f1 ff ff 8a                                      bhi #0x4f199c
004f19d4  0c d0 8d e2                                      add sp, sp, #0xc
004f19d8  30 80 bd e8                                      pop {r4, r5, pc}
