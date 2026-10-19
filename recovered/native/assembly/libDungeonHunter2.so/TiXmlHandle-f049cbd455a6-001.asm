; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483a48, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle9ToElementEv
; demangled: TiXmlHandle::ToElement() const
; decoder-mode: arm
00483a48  10 40 2d e9                                      push {r4, lr}
00483a4c  00 30 90 e5                                      ldr r3, [r0]
00483a50  00 40 a0 e1                                      mov r4, r0
00483a54  00 00 53 e3                                      cmp r3, #0
00483a58  01 00 00 1a                                      bne #0x483a64
00483a5c  00 00 a0 e3                                      mov r0, #0
00483a60  10 80 bd e8                                      pop {r4, pc}
00483a64  03 00 a0 e1                                      mov r0, r3
00483a68  00 30 93 e5                                      ldr r3, [r3]
00483a6c  0f e0 a0 e1                                      mov lr, pc
00483a70  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00483a74  00 00 50 e3                                      cmp r0, #0
00483a78  f7 ff ff 0a                                      beq #0x483a5c
00483a7c  00 30 94 e5                                      ldr r3, [r4]
00483a80  03 00 a0 e1                                      mov r0, r3
00483a84  00 30 93 e5                                      ldr r3, [r3]
00483a88  0f e0 a0 e1                                      mov lr, pc
00483a8c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00483a90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005147cc, declared_size=40, range_size=40, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle10FirstChildEv
; demangled: TiXmlHandle::FirstChild() const
; decoder-mode: arm
005147cc  00 30 91 e5                                      ldr r3, [r1]
005147d0  00 00 53 e3                                      cmp r3, #0
005147d4  03 00 00 0a                                      beq #0x5147e8
005147d8  18 30 93 e5                                      ldr r3, [r3, #0x18]
005147dc  00 00 53 e3                                      cmp r3, #0
005147e0  00 30 80 15                                      strne r3, [r0]
005147e4  1e ff 2f 11                                      bxne lr
005147e8  00 30 a0 e3                                      mov r3, #0
005147ec  00 30 80 e5                                      str r3, [r0]
005147f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005147f4, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle17FirstChildElementEv
; demangled: TiXmlHandle::FirstChildElement() const
; decoder-mode: arm
005147f4  00 30 91 e5                                      ldr r3, [r1]
005147f8  10 40 2d e9                                      push {r4, lr}
005147fc  00 00 53 e3                                      cmp r3, #0
00514800  00 40 a0 e1                                      mov r4, r0
00514804  06 00 00 0a                                      beq #0x514824
00514808  03 00 a0 e1                                      mov r0, r3
0051480c  ff fe ff eb                                      bl #0x514410
00514810  00 00 50 e3                                      cmp r0, #0
00514814  00 00 84 15                                      strne r0, [r4]
00514818  01 00 00 0a                                      beq #0x514824
0051481c  04 00 a0 e1                                      mov r0, r4
00514820  10 80 bd e8                                      pop {r4, pc}
00514824  00 30 a0 e3                                      mov r3, #0
00514828  00 30 84 e5                                      str r3, [r4]
0051482c  04 00 a0 e1                                      mov r0, r4
00514830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514834, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle5ChildEi
; demangled: TiXmlHandle::Child(int) const
; decoder-mode: arm
00514834  00 30 91 e5                                      ldr r3, [r1]
00514838  00 00 53 e3                                      cmp r3, #0
0051483c  0c 00 00 0a                                      beq #0x514874
00514840  18 30 93 e5                                      ldr r3, [r3, #0x18]
00514844  00 00 53 e3                                      cmp r3, #0
00514848  00 00 52 13                                      cmpne r2, #0
0051484c  05 00 00 da                                      ble #0x514868
00514850  00 10 a0 e3                                      mov r1, #0
00514854  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
00514858  01 10 81 e2                                      add r1, r1, #1
0051485c  00 00 53 e3                                      cmp r3, #0
00514860  01 00 52 11                                      cmpne r2, r1
00514864  fa ff ff ca                                      bgt #0x514854
00514868  00 00 53 e3                                      cmp r3, #0
0051486c  00 30 80 15                                      strne r3, [r0]
00514870  1e ff 2f 11                                      bxne lr
00514874  00 30 a0 e3                                      mov r3, #0
00514878  00 30 80 e5                                      str r3, [r0]
0051487c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514880, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle12ChildElementEi
; demangled: TiXmlHandle::ChildElement(int) const
; decoder-mode: arm
00514880  00 30 91 e5                                      ldr r3, [r1]
00514884  70 40 2d e9                                      push {r4, r5, r6, lr}
00514888  00 00 53 e3                                      cmp r3, #0
0051488c  00 40 a0 e1                                      mov r4, r0
00514890  02 60 a0 e1                                      mov r6, r2
00514894  0f 00 00 0a                                      beq #0x5148d8
00514898  03 00 a0 e1                                      mov r0, r3
0051489c  db fe ff eb                                      bl #0x514410
005148a0  00 00 50 e3                                      cmp r0, #0
005148a4  00 00 56 13                                      cmpne r6, #0
005148a8  05 00 00 da                                      ble #0x5148c4
005148ac  00 50 a0 e3                                      mov r5, #0
005148b0  eb fe ff eb                                      bl #0x514464
005148b4  01 50 85 e2                                      add r5, r5, #1
005148b8  00 00 50 e3                                      cmp r0, #0
005148bc  05 00 56 11                                      cmpne r6, r5
005148c0  fa ff ff ca                                      bgt #0x5148b0
005148c4  00 00 50 e3                                      cmp r0, #0
005148c8  00 00 84 15                                      strne r0, [r4]
005148cc  01 00 00 0a                                      beq #0x5148d8
005148d0  04 00 a0 e1                                      mov r0, r4
005148d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005148d8  00 30 a0 e3                                      mov r3, #0
005148dc  00 30 84 e5                                      str r3, [r4]
005148e0  04 00 a0 e1                                      mov r0, r4
005148e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514dd8, declared_size=116, range_size=116, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle5ChildEPKci
; demangled: TiXmlHandle::Child(char const*, int) const
; decoder-mode: arm
00514dd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00514ddc  00 10 91 e5                                      ldr r1, [r1]
00514de0  00 40 a0 e1                                      mov r4, r0
00514de4  02 50 a0 e1                                      mov r5, r2
00514de8  00 00 51 e3                                      cmp r1, #0
00514dec  03 70 a0 e1                                      mov r7, r3
00514df0  11 00 00 0a                                      beq #0x514e3c
00514df4  01 00 a0 e1                                      mov r0, r1
00514df8  02 10 a0 e1                                      mov r1, r2
00514dfc  e5 ff ff eb                                      bl #0x514d98
00514e00  00 00 50 e3                                      cmp r0, #0
00514e04  00 00 57 13                                      cmpne r7, #0
00514e08  06 00 00 da                                      ble #0x514e28
00514e0c  00 60 a0 e3                                      mov r6, #0
00514e10  05 10 a0 e1                                      mov r1, r5
00514e14  ab ff ff eb                                      bl #0x514cc8
00514e18  01 60 86 e2                                      add r6, r6, #1
00514e1c  00 00 50 e3                                      cmp r0, #0
00514e20  06 00 57 11                                      cmpne r7, r6
00514e24  f9 ff ff ca                                      bgt #0x514e10
00514e28  00 00 50 e3                                      cmp r0, #0
00514e2c  00 00 84 15                                      strne r0, [r4]
00514e30  01 00 00 0a                                      beq #0x514e3c
00514e34  04 00 a0 e1                                      mov r0, r4
00514e38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00514e3c  00 30 a0 e3                                      mov r3, #0
00514e40  00 30 84 e5                                      str r3, [r4]
00514e44  04 00 a0 e1                                      mov r0, r4
00514e48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00514e4c, declared_size=68, range_size=68, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle10FirstChildEPKc
; demangled: TiXmlHandle::FirstChild(char const*) const
; decoder-mode: arm
00514e4c  10 40 2d e9                                      push {r4, lr}
00514e50  00 30 91 e5                                      ldr r3, [r1]
00514e54  00 40 a0 e1                                      mov r4, r0
00514e58  00 00 53 e3                                      cmp r3, #0
00514e5c  07 00 00 0a                                      beq #0x514e80
00514e60  03 00 a0 e1                                      mov r0, r3
00514e64  02 10 a0 e1                                      mov r1, r2
00514e68  ca ff ff eb                                      bl #0x514d98
00514e6c  00 00 50 e3                                      cmp r0, #0
00514e70  00 00 84 15                                      strne r0, [r4]
00514e74  01 00 00 0a                                      beq #0x514e80
00514e78  04 00 a0 e1                                      mov r0, r4
00514e7c  10 80 bd e8                                      pop {r4, pc}
00514e80  00 30 a0 e3                                      mov r3, #0
00514e84  00 30 84 e5                                      str r3, [r4]
00514e88  04 00 a0 e1                                      mov r0, r4
00514e8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514eec, declared_size=116, range_size=116, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle12ChildElementEPKci
; demangled: TiXmlHandle::ChildElement(char const*, int) const
; decoder-mode: arm
00514eec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00514ef0  00 10 91 e5                                      ldr r1, [r1]
00514ef4  00 40 a0 e1                                      mov r4, r0
00514ef8  02 50 a0 e1                                      mov r5, r2
00514efc  00 00 51 e3                                      cmp r1, #0
00514f00  03 70 a0 e1                                      mov r7, r3
00514f04  11 00 00 0a                                      beq #0x514f50
00514f08  01 00 a0 e1                                      mov r0, r1
00514f0c  02 10 a0 e1                                      mov r1, r2
00514f10  de ff ff eb                                      bl #0x514e90
00514f14  00 00 50 e3                                      cmp r0, #0
00514f18  00 00 57 13                                      cmpne r7, #0
00514f1c  06 00 00 da                                      ble #0x514f3c
00514f20  00 60 a0 e3                                      mov r6, #0
00514f24  05 10 a0 e1                                      mov r1, r5
00514f28  76 ff ff eb                                      bl #0x514d08
00514f2c  01 60 86 e2                                      add r6, r6, #1
00514f30  00 00 50 e3                                      cmp r0, #0
00514f34  06 00 57 11                                      cmpne r7, r6
00514f38  f9 ff ff ca                                      bgt #0x514f24
00514f3c  00 00 50 e3                                      cmp r0, #0
00514f40  00 00 84 15                                      strne r0, [r4]
00514f44  01 00 00 0a                                      beq #0x514f50
00514f48  04 00 a0 e1                                      mov r0, r4
00514f4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00514f50  00 30 a0 e3                                      mov r3, #0
00514f54  00 30 84 e5                                      str r3, [r4]
00514f58  04 00 a0 e1                                      mov r0, r4
00514f5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00514f60, declared_size=68, range_size=68, mode=arm
; class-group: TiXmlHandle
; alias: _ZNK11TiXmlHandle17FirstChildElementEPKc
; demangled: TiXmlHandle::FirstChildElement(char const*) const
; decoder-mode: arm
00514f60  10 40 2d e9                                      push {r4, lr}
00514f64  00 30 91 e5                                      ldr r3, [r1]
00514f68  00 40 a0 e1                                      mov r4, r0
00514f6c  00 00 53 e3                                      cmp r3, #0
00514f70  07 00 00 0a                                      beq #0x514f94
00514f74  03 00 a0 e1                                      mov r0, r3
00514f78  02 10 a0 e1                                      mov r1, r2
00514f7c  c3 ff ff eb                                      bl #0x514e90
00514f80  00 00 50 e3                                      cmp r0, #0
00514f84  00 00 84 15                                      strne r0, [r4]
00514f88  01 00 00 0a                                      beq #0x514f94
00514f8c  04 00 a0 e1                                      mov r0, r4
00514f90  10 80 bd e8                                      pop {r4, pc}
00514f94  00 30 a0 e3                                      mov r3, #0
00514f98  00 30 84 e5                                      str r3, [r4]
00514f9c  04 00 a0 e1                                      mov r0, r4
00514fa0  10 80 bd e8                                      pop {r4, pc}
