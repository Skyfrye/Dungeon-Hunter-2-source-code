; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e09a4, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt4priv11_Deque_baseIPN14CharProperties8BuffInstESaIS3_EED2Ev
; demangled: std::priv::_Deque_base<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::~_Deque_base()
; decoder-mode: arm
003e09a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003e09a8  00 60 a0 e1                                      mov r6, r0
003e09ac  20 00 90 e5                                      ldr r0, [r0, #0x20]
003e09b0  00 00 50 e3                                      cmp r0, #0
003e09b4  14 00 00 0a                                      beq #0x3e0a0c
003e09b8  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003e09bc  0c 40 96 e5                                      ldr r4, [r6, #0xc]
003e09c0  04 50 85 e2                                      add r5, r5, #4
003e09c4  05 00 54 e1                                      cmp r4, r5
003e09c8  14 00 00 2a                                      bhs #0x3e0a20
003e09cc  00 00 94 e5                                      ldr r0, [r4]
003e09d0  80 10 a0 e3                                      mov r1, #0x80
003e09d4  04 40 84 e2                                      add r4, r4, #4
003e09d8  00 00 50 e3                                      cmp r0, #0
003e09dc  00 00 00 0a                                      beq #0x3e09e4
003e09e0  46 a1 0c eb                                      bl #0x708f00
003e09e4  04 00 55 e1                                      cmp r5, r4
003e09e8  f7 ff ff 8a                                      bhi #0x3e09cc
003e09ec  20 00 96 e5                                      ldr r0, [r6, #0x20]
003e09f0  24 10 96 e5                                      ldr r1, [r6, #0x24]
003e09f4  00 00 50 e3                                      cmp r0, #0
003e09f8  03 00 00 0a                                      beq #0x3e0a0c
003e09fc  01 11 a0 e1                                      lsl r1, r1, #2
003e0a00  80 00 51 e3                                      cmp r1, #0x80
003e0a04  02 00 00 8a                                      bhi #0x3e0a14
003e0a08  3c a1 0c eb                                      bl #0x708f00
003e0a0c  06 00 a0 e1                                      mov r0, r6
003e0a10  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e0a14  89 be fc eb                                      bl #0x310440
003e0a18  06 00 a0 e1                                      mov r0, r6
003e0a1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e0a20  24 10 96 e5                                      ldr r1, [r6, #0x24]
003e0a24  f4 ff ff ea                                      b #0x3e09fc

; FUNCTION 0x003e1818, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_base<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >
; alias: _ZNSt4priv11_Deque_baseIPN14CharProperties8BuffInstESaIS3_EE17_M_initialize_mapEj
; demangled: std::priv::_Deque_base<CharProperties::BuffInst*, std::allocator<CharProperties::BuffInst*> >::_M_initialize_map(unsigned int)
; decoder-mode: arm
003e1818  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e181c  a1 62 a0 e1                                      lsr r6, r1, #5
003e1820  01 50 a0 e1                                      mov r5, r1
003e1824  03 10 86 e2                                      add r1, r6, #3
003e1828  08 00 51 e3                                      cmp r1, #8
003e182c  08 10 a0 33                                      movlo r1, #8
003e1830  00 40 a0 e1                                      mov r4, r0
003e1834  24 10 80 e5                                      str r1, [r0, #0x24]
003e1838  00 20 a0 e3                                      mov r2, #0
003e183c  20 00 80 e2                                      add r0, r0, #0x20
003e1840  21 fc ff eb                                      bl #0x3e08cc
003e1844  24 b0 94 e5                                      ldr fp, [r4, #0x24]
003e1848  01 60 86 e2                                      add r6, r6, #1
003e184c  00 90 a0 e1                                      mov sb, r0
003e1850  0b b0 66 e0                                      rsb fp, r6, fp
003e1854  ab b0 a0 e1                                      lsr fp, fp, #1
003e1858  20 00 84 e5                                      str r0, [r4, #0x20]
003e185c  0b a1 80 e0                                      add sl, r0, fp, lsl #2
003e1860  06 61 8a e0                                      add r6, sl, r6, lsl #2
003e1864  06 00 5a e1                                      cmp sl, r6
003e1868  06 00 00 2a                                      bhs #0x3e1888
003e186c  24 80 84 e2                                      add r8, r4, #0x24
003e1870  0a 70 a0 e1                                      mov r7, sl
003e1874  08 00 a0 e1                                      mov r0, r8
003e1878  de ff ff eb                                      bl #0x3e17f8
003e187c  04 00 87 e4                                      str r0, [r7], #4
003e1880  07 00 56 e1                                      cmp r6, r7
003e1884  fa ff ff 8a                                      bhi #0x3e1874
003e1888  0c a0 84 e5                                      str sl, [r4, #0xc]
003e188c  0b 21 99 e7                                      ldr r2, [sb, fp, lsl #2]
003e1890  04 30 46 e2                                      sub r3, r6, #4
003e1894  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e1898  80 30 82 e2                                      add r3, r2, #0x80
003e189c  0c 00 84 e9                                      stmib r4, {r2, r3}
003e18a0  04 30 16 e5                                      ldr r3, [r6, #-4]
003e18a4  1f 50 05 e2                                      and r5, r5, #0x1f
003e18a8  00 20 84 e5                                      str r2, [r4]
003e18ac  05 51 83 e0                                      add r5, r3, r5, lsl #2
003e18b0  80 20 83 e2                                      add r2, r3, #0x80
003e18b4  10 50 84 e5                                      str r5, [r4, #0x10]
003e18b8  18 20 84 e5                                      str r2, [r4, #0x18]
003e18bc  14 30 84 e5                                      str r3, [r4, #0x14]
003e18c0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
