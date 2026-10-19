; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00570cd0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReaderC2EPNS0_13IIrrXMLReaderIwNS_17IReferenceCountedEEEbPKw
; demangled: glitch::io::CXMLAttributesReader::CXMLAttributesReader(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, bool, wchar_t const*)
; decoder-mode: arm
00570cd0  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00570cd4  30 00 2d e9                                      push {r4, r5}
00570cd8  34 40 9f e5                                      ldr r4, [pc, #0x34]
00570cdc  0c c0 8f e0                                      add ip, pc, ip
00570ce0  0c 30 80 e5                                      str r3, [r0, #0xc]
00570ce4  04 40 9c e7                                      ldr r4, [ip, r4]
00570ce8  08 20 c0 e5                                      strb r2, [r0, #8]
00570cec  04 10 80 e5                                      str r1, [r0, #4]
00570cf0  08 40 84 e2                                      add r4, r4, #8
00570cf4  00 40 80 e5                                      str r4, [r0]
00570cf8  04 30 91 e5                                      ldr r3, [r1, #4]
00570cfc  00 50 a0 e1                                      mov r5, r0
00570d00  01 30 83 e2                                      add r3, r3, #1
00570d04  04 30 81 e5                                      str r3, [r1, #4]
00570d08  30 00 bd e8                                      pop {r4, r5}
00570d0c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00570d10  b4 3d 42 00 e0 0a 00 00                          .byte 0xb4, 0x3d, 0x42, 0x00, 0xe0, 0x0a, 0x00, 0x00

; FUNCTION 0x00570d18, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReaderC1EPNS0_13IIrrXMLReaderIwNS_17IReferenceCountedEEEbPKw
; demangled: glitch::io::CXMLAttributesReader::CXMLAttributesReader(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, bool, wchar_t const*)
; decoder-mode: arm
00570d18  38 c0 9f e5                                      ldr ip, [pc, #0x38]
00570d1c  30 00 2d e9                                      push {r4, r5}
00570d20  34 40 9f e5                                      ldr r4, [pc, #0x34]
00570d24  0c c0 8f e0                                      add ip, pc, ip
00570d28  0c 30 80 e5                                      str r3, [r0, #0xc]
00570d2c  04 40 9c e7                                      ldr r4, [ip, r4]
00570d30  08 20 c0 e5                                      strb r2, [r0, #8]
00570d34  04 10 80 e5                                      str r1, [r0, #4]
00570d38  08 40 84 e2                                      add r4, r4, #8
00570d3c  00 40 80 e5                                      str r4, [r0]
00570d40  04 30 91 e5                                      ldr r3, [r1, #4]
00570d44  00 50 a0 e1                                      mov r5, r0
00570d48  01 30 83 e2                                      add r3, r3, #1
00570d4c  04 30 81 e5                                      str r3, [r1, #4]
00570d50  30 00 bd e8                                      pop {r4, r5}
00570d54  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00570d58  6c 3d 42 00 e0 0a 00 00                          .byte 0x6c, 0x3d, 0x42, 0x00, 0xe0, 0x0a, 0x00, 0x00

; FUNCTION 0x00570d60, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReaderD2Ev
; demangled: glitch::io::CXMLAttributesReader::~CXMLAttributesReader()
; decoder-mode: arm
00570d60  28 30 9f e5                                      ldr r3, [pc, #0x28]
00570d64  28 20 9f e5                                      ldr r2, [pc, #0x28]
00570d68  10 40 2d e9                                      push {r4, lr}
00570d6c  03 30 8f e0                                      add r3, pc, r3
00570d70  02 20 93 e7                                      ldr r2, [r3, r2]
00570d74  00 40 a0 e1                                      mov r4, r0
00570d78  04 00 90 e5                                      ldr r0, [r0, #4]
00570d7c  08 20 82 e2                                      add r2, r2, #8
00570d80  00 20 84 e5                                      str r2, [r4]
00570d84  fe b1 f6 eb                                      bl #0x31d584
00570d88  04 00 a0 e1                                      mov r0, r4
00570d8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00570d90  24 3d 42 00 e0 0a 00 00                          .byte 0x24, 0x3d, 0x42, 0x00, 0xe0, 0x0a, 0x00, 0x00

; FUNCTION 0x00570d98, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReaderD1Ev
; demangled: glitch::io::CXMLAttributesReader::~CXMLAttributesReader()
; decoder-mode: arm
00570d98  28 30 9f e5                                      ldr r3, [pc, #0x28]
00570d9c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00570da0  10 40 2d e9                                      push {r4, lr}
00570da4  03 30 8f e0                                      add r3, pc, r3
00570da8  02 20 93 e7                                      ldr r2, [r3, r2]
00570dac  00 40 a0 e1                                      mov r4, r0
00570db0  04 00 90 e5                                      ldr r0, [r0, #4]
00570db4  08 20 82 e2                                      add r2, r2, #8
00570db8  00 20 84 e5                                      str r2, [r4]
00570dbc  f0 b1 f6 eb                                      bl #0x31d584
00570dc0  04 00 a0 e1                                      mov r0, r4
00570dc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00570dc8  ec 3c 42 00 e0 0a 00 00                          .byte 0xec, 0x3c, 0x42, 0x00, 0xe0, 0x0a, 0x00, 0x00

; FUNCTION 0x00570f4c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReaderD0Ev
; demangled: glitch::io::CXMLAttributesReader::~CXMLAttributesReader()
; decoder-mode: arm
00570f4c  10 40 2d e9                                      push {r4, lr}
00570f50  00 40 a0 e1                                      mov r4, r0
00570f54  8f ff ff eb                                      bl #0x570d98
00570f58  04 00 a0 e1                                      mov r0, r4
00570f5c  d3 74 f6 eb                                      bl #0x30e2b0
00570f60  04 00 a0 e1                                      mov r0, r4
00570f64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057108c, declared_size=2196, range_size=2196, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReader20readAttributeFromXMLEPNS0_11IAttributesE
; demangled: glitch::io::CXMLAttributesReader::readAttributeFromXML(glitch::io::IAttributes*)
; decoder-mode: arm
0057108c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00571090  d0 47 9f e5                                      ldr r4, [pc, #0x7d0]
00571094  d0 97 9f e5                                      ldr sb, [pc, #0x7d0]
00571098  04 30 90 e5                                      ldr r3, [r0, #4]
0057109c  04 40 8f e0                                      add r4, pc, r4
005710a0  09 20 94 e7                                      ldr r2, [r4, sb]
005710a4  81 df 4d e2                                      sub sp, sp, #0x204
005710a8  00 70 a0 e1                                      mov r7, r0
005710ac  00 20 92 e5                                      ldr r2, [r2]
005710b0  03 00 a0 e1                                      mov r0, r3
005710b4  01 80 a0 e1                                      mov r8, r1
005710b8  fc 21 8d e5                                      str r2, [sp, #0x1fc]
005710bc  00 30 93 e5                                      ldr r3, [r3]
005710c0  0f e0 a0 e1                                      mov lr, pc
005710c4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005710c8  52 5f 8d e2                                      add r5, sp, #0x148
005710cc  1b 2e 8d e2                                      add r2, sp, #0x1b0
005710d0  00 10 a0 e1                                      mov r1, r0
005710d4  05 00 a0 e1                                      mov r0, r5
005710d8  87 d3 f6 eb                                      bl #0x325efc
005710dc  04 30 97 e5                                      ldr r3, [r7, #4]
005710e0  88 17 9f e5                                      ldr r1, [pc, #0x788]
005710e4  79 6f 8d e2                                      add r6, sp, #0x1e4
005710e8  03 00 a0 e1                                      mov r0, r3
005710ec  01 10 8f e0                                      add r1, pc, r1
005710f0  00 30 93 e5                                      ldr r3, [r3]
005710f4  0f e0 a0 e1                                      mov lr, pc
005710f8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005710fc  00 10 a0 e1                                      mov r1, r0
00571100  06 00 a0 e1                                      mov r0, r6
00571104  d3 d6 f6 eb                                      bl #0x326c58
00571108  64 17 9f e5                                      ldr r1, [pc, #0x764]
0057110c  05 00 a0 e1                                      mov r0, r5
00571110  01 10 8f e0                                      add r1, pc, r1
00571114  ba 14 ff eb                                      bl #0x536404
00571118  00 a0 50 e2                                      subs sl, r0, #0
0057111c  fe 00 00 1a                                      bne #0x57151c
00571120  50 17 9f e5                                      ldr r1, [pc, #0x750]
00571124  05 00 a0 e1                                      mov r0, r5
00571128  01 10 8f e0                                      add r1, pc, r1
0057112c  b4 14 ff eb                                      bl #0x536404
00571130  00 b0 50 e2                                      subs fp, r0, #0
00571134  db 00 00 1a                                      bne #0x5714a8
00571138  3c 17 9f e5                                      ldr r1, [pc, #0x73c]
0057113c  05 00 a0 e1                                      mov r0, r5
00571140  01 10 8f e0                                      add r1, pc, r1
00571144  ae 14 ff eb                                      bl #0x536404
00571148  00 a0 50 e2                                      subs sl, r0, #0
0057114c  08 01 00 1a                                      bne #0x571574
00571150  28 17 9f e5                                      ldr r1, [pc, #0x728]
00571154  05 00 a0 e1                                      mov r0, r5
00571158  01 10 8f e0                                      add r1, pc, r1
0057115c  a8 14 ff eb                                      bl #0x536404
00571160  00 b0 50 e2                                      subs fp, r0, #0
00571164  f2 00 00 1a                                      bne #0x571534
00571168  14 17 9f e5                                      ldr r1, [pc, #0x714]
0057116c  05 00 a0 e1                                      mov r0, r5
00571170  01 10 8f e0                                      add r1, pc, r1
00571174  a2 14 ff eb                                      bl #0x536404
00571178  00 a0 50 e2                                      subs sl, r0, #0
0057117c  0c 01 00 1a                                      bne #0x5715b4
00571180  00 17 9f e5                                      ldr r1, [pc, #0x700]
00571184  05 00 a0 e1                                      mov r0, r5
00571188  01 10 8f e0                                      add r1, pc, r1
0057118c  9c 14 ff eb                                      bl #0x536404
00571190  00 b0 50 e2                                      subs fp, r0, #0
00571194  18 01 00 1a                                      bne #0x5715fc
00571198  ec 16 9f e5                                      ldr r1, [pc, #0x6ec]
0057119c  05 00 a0 e1                                      mov r0, r5
005711a0  01 10 8f e0                                      add r1, pc, r1
005711a4  96 14 ff eb                                      bl #0x536404
005711a8  00 a0 50 e2                                      subs sl, r0, #0
005711ac  09 01 00 1a                                      bne #0x5715d8
005711b0  d8 16 9f e5                                      ldr r1, [pc, #0x6d8]
005711b4  05 00 a0 e1                                      mov r0, r5
005711b8  01 10 8f e0                                      add r1, pc, r1
005711bc  90 14 ff eb                                      bl #0x536404
005711c0  00 b0 50 e2                                      subs fp, r0, #0
005711c4  15 01 00 1a                                      bne #0x571620
005711c8  c4 16 9f e5                                      ldr r1, [pc, #0x6c4]
005711cc  05 00 a0 e1                                      mov r0, r5
005711d0  01 10 8f e0                                      add r1, pc, r1
005711d4  8a 14 ff eb                                      bl #0x536404
005711d8  00 00 50 e3                                      cmp r0, #0
005711dc  28 01 00 1a                                      bne #0x571684
005711e0  b0 16 9f e5                                      ldr r1, [pc, #0x6b0]
005711e4  05 00 a0 e1                                      mov r0, r5
005711e8  01 10 8f e0                                      add r1, pc, r1
005711ec  84 14 ff eb                                      bl #0x536404
005711f0  00 00 50 e3                                      cmp r0, #0
005711f4  2b 01 00 1a                                      bne #0x5716a8
005711f8  9c 16 9f e5                                      ldr r1, [pc, #0x69c]
005711fc  05 00 a0 e1                                      mov r0, r5
00571200  01 10 8f e0                                      add r1, pc, r1
00571204  7e 14 ff eb                                      bl #0x536404
00571208  00 a0 50 e2                                      subs sl, r0, #0
0057120c  35 01 00 1a                                      bne #0x5716e8
00571210  88 16 9f e5                                      ldr r1, [pc, #0x688]
00571214  05 00 a0 e1                                      mov r0, r5
00571218  01 10 8f e0                                      add r1, pc, r1
0057121c  78 14 ff eb                                      bl #0x536404
00571220  00 b0 50 e2                                      subs fp, r0, #0
00571224  38 01 00 1a                                      bne #0x57170c
00571228  74 16 9f e5                                      ldr r1, [pc, #0x674]
0057122c  05 00 a0 e1                                      mov r0, r5
00571230  01 10 8f e0                                      add r1, pc, r1
00571234  72 14 ff eb                                      bl #0x536404
00571238  00 a0 50 e2                                      subs sl, r0, #0
0057123c  3b 01 00 1a                                      bne #0x571730
00571240  60 16 9f e5                                      ldr r1, [pc, #0x660]
00571244  05 00 a0 e1                                      mov r0, r5
00571248  01 10 8f e0                                      add r1, pc, r1
0057124c  6c 14 ff eb                                      bl #0x536404
00571250  00 b0 50 e2                                      subs fp, r0, #0
00571254  3e 01 00 1a                                      bne #0x571754
00571258  4c 16 9f e5                                      ldr r1, [pc, #0x64c]
0057125c  05 00 a0 e1                                      mov r0, r5
00571260  01 10 8f e0                                      add r1, pc, r1
00571264  66 14 ff eb                                      bl #0x536404
00571268  00 a0 50 e2                                      subs sl, r0, #0
0057126c  41 01 00 1a                                      bne #0x571778
00571270  38 16 9f e5                                      ldr r1, [pc, #0x638]
00571274  05 00 a0 e1                                      mov r0, r5
00571278  01 10 8f e0                                      add r1, pc, r1
0057127c  60 14 ff eb                                      bl #0x536404
00571280  00 b0 50 e2                                      subs fp, r0, #0
00571284  45 01 00 1a                                      bne #0x5717a0
00571288  24 16 9f e5                                      ldr r1, [pc, #0x624]
0057128c  05 00 a0 e1                                      mov r0, r5
00571290  01 10 8f e0                                      add r1, pc, r1
00571294  5a 14 ff eb                                      bl #0x536404
00571298  00 a0 50 e2                                      subs sl, r0, #0
0057129c  48 01 00 1a                                      bne #0x5717c4
005712a0  10 16 9f e5                                      ldr r1, [pc, #0x610]
005712a4  05 00 a0 e1                                      mov r0, r5
005712a8  01 10 8f e0                                      add r1, pc, r1
005712ac  54 14 ff eb                                      bl #0x536404
005712b0  00 b0 50 e2                                      subs fp, r0, #0
005712b4  54 01 00 1a                                      bne #0x57180c
005712b8  fc 15 9f e5                                      ldr r1, [pc, #0x5fc]
005712bc  05 00 a0 e1                                      mov r0, r5
005712c0  01 10 8f e0                                      add r1, pc, r1
005712c4  4e 14 ff eb                                      bl #0x536404
005712c8  00 00 50 e3                                      cmp r0, #0
005712cc  45 01 00 1a                                      bne #0x5717e8
005712d0  e8 15 9f e5                                      ldr r1, [pc, #0x5e8]
005712d4  05 00 a0 e1                                      mov r0, r5
005712d8  01 10 8f e0                                      add r1, pc, r1
005712dc  48 14 ff eb                                      bl #0x536404
005712e0  00 00 50 e3                                      cmp r0, #0
005712e4  56 01 00 1a                                      bne #0x571844
005712e8  d4 15 9f e5                                      ldr r1, [pc, #0x5d4]
005712ec  05 00 a0 e1                                      mov r0, r5
005712f0  01 10 8f e0                                      add r1, pc, r1
005712f4  42 14 ff eb                                      bl #0x536404
005712f8  00 00 50 e3                                      cmp r0, #0
005712fc  4b 01 00 0a                                      beq #0x571830
00571300  04 30 97 e5                                      ldr r3, [r7, #4]
00571304  bc 15 9f e5                                      ldr r1, [pc, #0x5bc]
00571308  00 a0 a0 e3                                      mov sl, #0
0057130c  9c a1 8d e5                                      str sl, [sp, #0x19c]
00571310  a0 a1 8d e5                                      str sl, [sp, #0x1a0]
00571314  a4 a1 8d e5                                      str sl, [sp, #0x1a4]
00571318  01 10 8f e0                                      add r1, pc, r1
0057131c  03 00 a0 e1                                      mov r0, r3
00571320  00 30 93 e5                                      ldr r3, [r3]
00571324  0f e0 a0 e1                                      mov lr, pc
00571328  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0057132c  98 15 9f e5                                      ldr r1, [pc, #0x598]
00571330  01 3c 8d e2                                      add r3, sp, #0x100
00571334  20 00 8d e5                                      str r0, [sp, #0x20]
00571338  01 10 8f e0                                      add r1, pc, r1
0057133c  03 00 a0 e1                                      mov r0, r3
00571340  6b 2f 8d e2                                      add r2, sp, #0x1ac
00571344  10 30 8d e5                                      str r3, [sp, #0x10]
00571348  eb d2 f6 eb                                      bl #0x325efc
0057134c  67 3f 8d e2                                      add r3, sp, #0x19c
00571350  0c 30 8d e5                                      str r3, [sp, #0xc]
00571354  b8 30 8d e2                                      add r3, sp, #0xb8
00571358  14 30 8d e5                                      str r3, [sp, #0x14]
0057135c  70 30 8d e2                                      add r3, sp, #0x70
00571360  1c 30 8d e5                                      str r3, [sp, #0x1c]
00571364  28 30 8d e2                                      add r3, sp, #0x28
00571368  18 30 8d e5                                      str r3, [sp, #0x18]
0057136c  6a 3f 8d e2                                      add r3, sp, #0x1a8
00571370  0a b0 a0 e1                                      mov fp, sl
00571374  08 c0 a0 e1                                      mov ip, r8
00571378  24 30 8d e5                                      str r3, [sp, #0x24]
0057137c  04 a0 a0 e1                                      mov sl, r4
00571380  06 80 a0 e1                                      mov r8, r6
00571384  1c 00 00 ea                                      b #0x5713fc
00571388  0b 10 a0 e1                                      mov r1, fp
0057138c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00571390  08 c0 8d e5                                      str ip, [sp, #8]
00571394  f8 d2 f6 eb                                      bl #0x325f7c
00571398  04 40 97 e5                                      ldr r4, [r7, #4]
0057139c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005713a0  10 10 9d e5                                      ldr r1, [sp, #0x10]
005713a4  00 30 94 e5                                      ldr r3, [r4]
005713a8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005713ac  01 b0 8b e2                                      add fp, fp, #1
005713b0  24 60 93 e5                                      ldr r6, [r3, #0x24]
005713b4  c7 fe ff eb                                      bl #0x570ed8
005713b8  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005713bc  04 00 a0 e1                                      mov r0, r4
005713c0  36 ff 2f e1                                      blx r6
005713c4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005713c8  00 10 a0 e1                                      mov r1, r0
005713cc  18 00 9d e5                                      ldr r0, [sp, #0x18]
005713d0  c9 d2 f6 eb                                      bl #0x325efc
005713d4  18 10 9d e5                                      ldr r1, [sp, #0x18]
005713d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005713dc  59 7f ff eb                                      bl #0x551148
005713e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005713e4  df 43 ff eb                                      bl #0x542368
005713e8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005713ec  dd 43 ff eb                                      bl #0x542368
005713f0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005713f4  db 43 ff eb                                      bl #0x542368
005713f8  08 c0 9d e5                                      ldr ip, [sp, #8]
005713fc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00571400  03 00 5b e1                                      cmp fp, r3
00571404  df ff ff ba                                      blt #0x571388
00571408  00 30 9c e5                                      ldr r3, [ip]
0057140c  f8 b1 9d e5                                      ldr fp, [sp, #0x1f8]
00571410  0a 40 a0 e1                                      mov r4, sl
00571414  19 ae 8d e2                                      add sl, sp, #0x190
00571418  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057141c  08 60 a0 e1                                      mov r6, r8
00571420  0a 00 a0 e1                                      mov r0, sl
00571424  0c 80 a0 e1                                      mov r8, ip
00571428  c4 70 93 e5                                      ldr r7, [r3, #0xc4]
0057142c  92 c6 ff eb                                      bl #0x562e7c
00571430  0b 10 a0 e1                                      mov r1, fp
00571434  0a 20 a0 e1                                      mov r2, sl
00571438  00 30 a0 e3                                      mov r3, #0
0057143c  08 00 a0 e1                                      mov r0, r8
00571440  37 ff 2f e1                                      blx r7
00571444  0a 00 a0 e1                                      mov r0, sl
00571448  ae 7d ff eb                                      bl #0x550b08
0057144c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00571450  c4 43 ff eb                                      bl #0x542368
00571454  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00571458  aa 7d ff eb                                      bl #0x550b08
0057145c  f8 01 9d e5                                      ldr r0, [sp, #0x1f8]
00571460  06 00 50 e1                                      cmp r0, r6
00571464  02 00 00 0a                                      beq #0x571474
00571468  00 00 50 e3                                      cmp r0, #0
0057146c  00 00 00 0a                                      beq #0x571474
00571470  f6 7b f6 eb                                      bl #0x310450
00571474  8c 01 9d e5                                      ldr r0, [sp, #0x18c]
00571478  05 00 50 e1                                      cmp r0, r5
0057147c  02 00 00 0a                                      beq #0x57148c
00571480  00 00 50 e3                                      cmp r0, #0
00571484  00 00 00 0a                                      beq #0x57148c
00571488  f0 7b f6 eb                                      bl #0x310450
0057148c  09 30 94 e7                                      ldr r3, [r4, sb]
00571490  fc 21 9d e5                                      ldr r2, [sp, #0x1fc]
00571494  00 30 93 e5                                      ldr r3, [r3]
00571498  03 00 52 e1                                      cmp r2, r3
0057149c  be 00 00 1a                                      bne #0x57179c
005714a0  81 df 8d e2                                      add sp, sp, #0x204
005714a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005714a8  00 20 98 e5                                      ldr r2, [r8]
005714ac  04 30 97 e5                                      ldr r3, [r7, #4]
005714b0  18 14 9f e5                                      ldr r1, [pc, #0x418]
005714b4  f0 c0 92 e5                                      ldr ip, [r2, #0xf0]
005714b8  03 00 a0 e1                                      mov r0, r3
005714bc  01 10 8f e0                                      add r1, pc, r1
005714c0  00 30 93 e5                                      ldr r3, [r3]
005714c4  08 c0 8d e5                                      str ip, [sp, #8]
005714c8  f8 b1 9d e5                                      ldr fp, [sp, #0x1f8]
005714cc  0f e0 a0 e1                                      mov lr, pc
005714d0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005714d4  73 7f 8d e2                                      add r7, sp, #0x1cc
005714d8  00 10 a0 e1                                      mov r1, r0
005714dc  07 00 a0 e1                                      mov r0, r7
005714e0  dc d5 f6 eb                                      bl #0x326c58
005714e4  08 00 a0 e1                                      mov r0, r8
005714e8  00 a0 8d e5                                      str sl, [sp]
005714ec  0b 10 a0 e1                                      mov r1, fp
005714f0  e0 21 9d e5                                      ldr r2, [sp, #0x1e0]
005714f4  0a 30 a0 e1                                      mov r3, sl
005714f8  08 c0 9d e5                                      ldr ip, [sp, #8]
005714fc  3c ff 2f e1                                      blx ip
00571500  e0 01 9d e5                                      ldr r0, [sp, #0x1e0]
00571504  07 00 50 e1                                      cmp r0, r7
00571508  d3 ff ff 0a                                      beq #0x57145c
0057150c  00 00 50 e3                                      cmp r0, #0
00571510  d1 ff ff 0a                                      beq #0x57145c
00571514  cd 7b f6 eb                                      bl #0x310450
00571518  cf ff ff ea                                      b #0x57145c
0057151c  08 00 a0 e1                                      mov r0, r8
00571520  00 30 98 e5                                      ldr r3, [r8]
00571524  f8 11 9d e5                                      ldr r1, [sp, #0x1f8]
00571528  0f e0 a0 e1                                      mov lr, pc
0057152c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00571530  c9 ff ff ea                                      b #0x57145c
00571534  04 30 97 e5                                      ldr r3, [r7, #4]
00571538  00 20 98 e5                                      ldr r2, [r8]
0057153c  90 13 9f e5                                      ldr r1, [pc, #0x390]
00571540  03 00 a0 e1                                      mov r0, r3
00571544  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571548  00 30 93 e5                                      ldr r3, [r3]
0057154c  34 b1 92 e5                                      ldr fp, [r2, #0x134]
00571550  01 10 8f e0                                      add r1, pc, r1
00571554  0f e0 a0 e1                                      mov lr, pc
00571558  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057155c  07 10 a0 e1                                      mov r1, r7
00571560  00 20 a0 e1                                      mov r2, r0
00571564  0a 30 a0 e1                                      mov r3, sl
00571568  08 00 a0 e1                                      mov r0, r8
0057156c  3b ff 2f e1                                      blx fp
00571570  b9 ff ff ea                                      b #0x57145c
00571574  04 30 97 e5                                      ldr r3, [r7, #4]
00571578  00 20 98 e5                                      ldr r2, [r8]
0057157c  54 13 9f e5                                      ldr r1, [pc, #0x354]
00571580  03 00 a0 e1                                      mov r0, r3
00571584  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571588  00 30 93 e5                                      ldr r3, [r3]
0057158c  1c a1 92 e5                                      ldr sl, [r2, #0x11c]
00571590  01 10 8f e0                                      add r1, pc, r1
00571594  0f e0 a0 e1                                      mov lr, pc
00571598  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057159c  07 10 a0 e1                                      mov r1, r7
005715a0  00 20 a0 e1                                      mov r2, r0
005715a4  0b 30 a0 e1                                      mov r3, fp
005715a8  08 00 a0 e1                                      mov r0, r8
005715ac  3a ff 2f e1                                      blx sl
005715b0  a9 ff ff ea                                      b #0x57145c
005715b4  04 30 97 e5                                      ldr r3, [r7, #4]
005715b8  00 20 98 e5                                      ldr r2, [r8]
005715bc  18 13 9f e5                                      ldr r1, [pc, #0x318]
005715c0  03 00 a0 e1                                      mov r0, r3
005715c4  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
005715c8  01 10 8f e0                                      add r1, pc, r1
005715cc  00 30 93 e5                                      ldr r3, [r3]
005715d0  68 a0 92 e5                                      ldr sl, [r2, #0x68]
005715d4  ee ff ff ea                                      b #0x571594
005715d8  04 30 97 e5                                      ldr r3, [r7, #4]
005715dc  00 20 98 e5                                      ldr r2, [r8]
005715e0  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
005715e4  03 00 a0 e1                                      mov r0, r3
005715e8  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
005715ec  01 10 8f e0                                      add r1, pc, r1
005715f0  00 30 93 e5                                      ldr r3, [r3]
005715f4  dc a0 92 e5                                      ldr sl, [r2, #0xdc]
005715f8  e5 ff ff ea                                      b #0x571594
005715fc  04 30 97 e5                                      ldr r3, [r7, #4]
00571600  00 20 98 e5                                      ldr r2, [r8]
00571604  d8 12 9f e5                                      ldr r1, [pc, #0x2d8]
00571608  03 00 a0 e1                                      mov r0, r3
0057160c  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571610  01 10 8f e0                                      add r1, pc, r1
00571614  00 30 93 e5                                      ldr r3, [r3]
00571618  50 b0 92 e5                                      ldr fp, [r2, #0x50]
0057161c  cc ff ff ea                                      b #0x571554
00571620  00 20 98 e5                                      ldr r2, [r8]
00571624  04 30 97 e5                                      ldr r3, [r7, #4]
00571628  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
0057162c  7c c0 92 e5                                      ldr ip, [r2, #0x7c]
00571630  03 00 a0 e1                                      mov r0, r3
00571634  01 10 8f e0                                      add r1, pc, r1
00571638  00 30 93 e5                                      ldr r3, [r3]
0057163c  08 c0 8d e5                                      str ip, [sp, #8]
00571640  f8 b1 9d e5                                      ldr fp, [sp, #0x1f8]
00571644  0f e0 a0 e1                                      mov lr, pc
00571648  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057164c  6d 7f 8d e2                                      add r7, sp, #0x1b4
00571650  00 10 a0 e1                                      mov r1, r0
00571654  07 00 a0 e1                                      mov r0, r7
00571658  7e d5 f6 eb                                      bl #0x326c58
0057165c  08 00 a0 e1                                      mov r0, r8
00571660  0b 10 a0 e1                                      mov r1, fp
00571664  0a 30 a0 e1                                      mov r3, sl
00571668  c8 21 9d e5                                      ldr r2, [sp, #0x1c8]
0057166c  08 c0 9d e5                                      ldr ip, [sp, #8]
00571670  3c ff 2f e1                                      blx ip
00571674  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
00571678  07 00 50 e1                                      cmp r0, r7
0057167c  a2 ff ff 1a                                      bne #0x57150c
00571680  75 ff ff ea                                      b #0x57145c
00571684  04 30 97 e5                                      ldr r3, [r7, #4]
00571688  00 20 98 e5                                      ldr r2, [r8]
0057168c  58 12 9f e5                                      ldr r1, [pc, #0x258]
00571690  03 00 a0 e1                                      mov r0, r3
00571694  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571698  01 10 8f e0                                      add r1, pc, r1
0057169c  00 30 93 e5                                      ldr r3, [r3]
005716a0  b4 a2 92 e5                                      ldr sl, [r2, #0x2b4]
005716a4  ba ff ff ea                                      b #0x571594
005716a8  04 30 97 e5                                      ldr r3, [r7, #4]
005716ac  00 20 98 e5                                      ldr r2, [r8]
005716b0  38 12 9f e5                                      ldr r1, [pc, #0x238]
005716b4  03 00 a0 e1                                      mov r0, r3
005716b8  f8 a1 9d e5                                      ldr sl, [sp, #0x1f8]
005716bc  00 30 93 e5                                      ldr r3, [r3]
005716c0  ac 71 92 e5                                      ldr r7, [r2, #0x1ac]
005716c4  01 10 8f e0                                      add r1, pc, r1
005716c8  0f e0 a0 e1                                      mov lr, pc
005716cc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005716d0  0a 10 a0 e1                                      mov r1, sl
005716d4  00 20 a0 e1                                      mov r2, r0
005716d8  00 30 a0 e3                                      mov r3, #0
005716dc  08 00 a0 e1                                      mov r0, r8
005716e0  37 ff 2f e1                                      blx r7
005716e4  5c ff ff ea                                      b #0x57145c
005716e8  04 30 97 e5                                      ldr r3, [r7, #4]
005716ec  00 20 98 e5                                      ldr r2, [r8]
005716f0  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
005716f4  03 00 a0 e1                                      mov r0, r3
005716f8  f8 a1 9d e5                                      ldr sl, [sp, #0x1f8]
005716fc  01 10 8f e0                                      add r1, pc, r1
00571700  00 30 93 e5                                      ldr r3, [r3]
00571704  c4 71 92 e5                                      ldr r7, [r2, #0x1c4]
00571708  ee ff ff ea                                      b #0x5716c8
0057170c  04 30 97 e5                                      ldr r3, [r7, #4]
00571710  00 20 98 e5                                      ldr r2, [r8]
00571714  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
00571718  03 00 a0 e1                                      mov r0, r3
0057171c  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571720  01 10 8f e0                                      add r1, pc, r1
00571724  00 30 93 e5                                      ldr r3, [r3]
00571728  dc b1 92 e5                                      ldr fp, [r2, #0x1dc]
0057172c  88 ff ff ea                                      b #0x571554
00571730  04 30 97 e5                                      ldr r3, [r7, #4]
00571734  00 20 98 e5                                      ldr r2, [r8]
00571738  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0057173c  03 00 a0 e1                                      mov r0, r3
00571740  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571744  01 10 8f e0                                      add r1, pc, r1
00571748  00 30 93 e5                                      ldr r3, [r3]
0057174c  f4 a1 92 e5                                      ldr sl, [r2, #0x1f4]
00571750  8f ff ff ea                                      b #0x571594
00571754  04 30 97 e5                                      ldr r3, [r7, #4]
00571758  00 20 98 e5                                      ldr r2, [r8]
0057175c  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00571760  03 00 a0 e1                                      mov r0, r3
00571764  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571768  01 10 8f e0                                      add r1, pc, r1
0057176c  00 30 93 e5                                      ldr r3, [r3]
00571770  0c b2 92 e5                                      ldr fp, [r2, #0x20c]
00571774  76 ff ff ea                                      b #0x571554
00571778  04 30 97 e5                                      ldr r3, [r7, #4]
0057177c  00 20 98 e5                                      ldr r2, [r8]
00571780  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
00571784  03 00 a0 e1                                      mov r0, r3
00571788  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
0057178c  01 10 8f e0                                      add r1, pc, r1
00571790  00 30 93 e5                                      ldr r3, [r3]
00571794  24 a2 92 e5                                      ldr sl, [r2, #0x224]
00571798  7d ff ff ea                                      b #0x571594
0057179c  db 72 f6 eb                                      bl #0x30e310
005717a0  04 30 97 e5                                      ldr r3, [r7, #4]
005717a4  00 20 98 e5                                      ldr r2, [r8]
005717a8  58 11 9f e5                                      ldr r1, [pc, #0x158]
005717ac  03 00 a0 e1                                      mov r0, r3
005717b0  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
005717b4  01 10 8f e0                                      add r1, pc, r1
005717b8  00 30 93 e5                                      ldr r3, [r3]
005717bc  3c b2 92 e5                                      ldr fp, [r2, #0x23c]
005717c0  63 ff ff ea                                      b #0x571554
005717c4  04 30 97 e5                                      ldr r3, [r7, #4]
005717c8  00 20 98 e5                                      ldr r2, [r8]
005717cc  38 11 9f e5                                      ldr r1, [pc, #0x138]
005717d0  03 00 a0 e1                                      mov r0, r3
005717d4  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
005717d8  01 10 8f e0                                      add r1, pc, r1
005717dc  00 30 93 e5                                      ldr r3, [r3]
005717e0  54 a2 92 e5                                      ldr sl, [r2, #0x254]
005717e4  6a ff ff ea                                      b #0x571594
005717e8  04 30 97 e5                                      ldr r3, [r7, #4]
005717ec  00 20 98 e5                                      ldr r2, [r8]
005717f0  18 11 9f e5                                      ldr r1, [pc, #0x118]
005717f4  03 00 a0 e1                                      mov r0, r3
005717f8  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
005717fc  01 10 8f e0                                      add r1, pc, r1
00571800  00 30 93 e5                                      ldr r3, [r3]
00571804  84 a2 92 e5                                      ldr sl, [r2, #0x284]
00571808  61 ff ff ea                                      b #0x571594
0057180c  04 30 97 e5                                      ldr r3, [r7, #4]
00571810  00 20 98 e5                                      ldr r2, [r8]
00571814  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00571818  03 00 a0 e1                                      mov r0, r3
0057181c  f8 71 9d e5                                      ldr r7, [sp, #0x1f8]
00571820  01 10 8f e0                                      add r1, pc, r1
00571824  00 30 93 e5                                      ldr r3, [r3]
00571828  6c b2 92 e5                                      ldr fp, [r2, #0x26c]
0057182c  48 ff ff ea                                      b #0x571554
00571830  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00571834  05 00 a0 e1                                      mov r0, r5
00571838  01 10 8f e0                                      add r1, pc, r1
0057183c  f0 12 ff eb                                      bl #0x536404
00571840  05 ff ff ea                                      b #0x57145c
00571844  04 30 97 e5                                      ldr r3, [r7, #4]
00571848  00 20 98 e5                                      ldr r2, [r8]
0057184c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00571850  03 00 a0 e1                                      mov r0, r3
00571854  f8 a1 9d e5                                      ldr sl, [sp, #0x1f8]
00571858  01 10 8f e0                                      add r1, pc, r1
0057185c  00 30 93 e5                                      ldr r3, [r3]
00571860  9c 72 92 e5                                      ldr r7, [r2, #0x29c]
00571864  97 ff ff ea                                      b #0x5716c8
; mapping-symbol data/literal pool
00571868  f4 39 42 00 ac 40 00 00 fc d0 36 00 68 da 34 00  .byte 0xf4, 0x39, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0xd0, 0x36, 0x00, 0x68, 0xda, 0x34, 0x00
00571878  70 dd 36 00 48 d9 34 00 10 d9 34 00 98 d8 34 00  .byte 0x70, 0xdd, 0x36, 0x00, 0x48, 0xd9, 0x34, 0x00, 0x10, 0xd9, 0x34, 0x00, 0x98, 0xd8, 0x34, 0x00
00571888  70 d8 34 00 40 d8 34 00 60 d9 34 00 00 dd 36 00  .byte 0x70, 0xd8, 0x34, 0x00, 0x40, 0xd8, 0x34, 0x00, 0x60, 0xd9, 0x34, 0x00, 0x00, 0xdd, 0x36, 0x00
00571898  e0 d8 34 00 f0 d8 34 00 58 db 36 00 68 db 36 00  .byte 0xe0, 0xd8, 0x34, 0x00, 0xf0, 0xd8, 0x34, 0x00, 0x58, 0xdb, 0x36, 0x00, 0x68, 0xdb, 0x36, 0x00
005718a8  68 db 36 00 70 db 36 00 88 db 36 00 88 db 36 00  .byte 0x68, 0xdb, 0x36, 0x00, 0x70, 0xdb, 0x36, 0x00, 0x88, 0xdb, 0x36, 0x00, 0x88, 0xdb, 0x36, 0x00
005718b8  88 db 36 00 98 db 36 00 a0 db 36 00 18 dc 36 00  .byte 0x88, 0xdb, 0x36, 0x00, 0x98, 0xdb, 0x36, 0x00, 0xa0, 0xdb, 0x36, 0x00, 0x18, 0xdc, 0x36, 0x00
005718c8  90 dc 36 00 58 d8 34 00 d4 d6 34 00 40 d6 34 00  .byte 0x90, 0xdc, 0x36, 0x00, 0x58, 0xd8, 0x34, 0x00, 0xd4, 0xd6, 0x34, 0x00, 0x40, 0xd6, 0x34, 0x00
005718d8  00 d6 34 00 c8 d5 34 00 a4 d5 34 00 80 d5 34 00  .byte 0x00, 0xd6, 0x34, 0x00, 0xc8, 0xd5, 0x34, 0x00, 0xa4, 0xd5, 0x34, 0x00, 0x80, 0xd5, 0x34, 0x00
005718e8  5c d5 34 00 f8 d4 34 00 cc d4 34 00 94 d4 34 00  .byte 0x5c, 0xd5, 0x34, 0x00, 0xf8, 0xd4, 0x34, 0x00, 0xcc, 0xd4, 0x34, 0x00, 0x94, 0xd4, 0x34, 0x00
005718f8  70 d4 34 00 4c d4 34 00 28 d4 34 00 04 d4 34 00  .byte 0x70, 0xd4, 0x34, 0x00, 0x4c, 0xd4, 0x34, 0x00, 0x28, 0xd4, 0x34, 0x00, 0x04, 0xd4, 0x34, 0x00
00571908  dc d3 34 00 b8 d3 34 00 94 d3 34 00 70 d3 34 00  .byte 0xdc, 0xd3, 0x34, 0x00, 0xb8, 0xd3, 0x34, 0x00, 0x94, 0xd3, 0x34, 0x00, 0x70, 0xd3, 0x34, 0x00
00571918  78 d6 36 00 38 d3 34 00                          .byte 0x78, 0xd6, 0x36, 0x00, 0x38, 0xd3, 0x34, 0x00

; FUNCTION 0x00571920, declared_size=476, range_size=476, mode=arm
; class-group: glitch::io::CXMLAttributesReader
; alias: _ZN6glitch2io20CXMLAttributesReader4readEPNS0_11IAttributesE
; demangled: glitch::io::CXMLAttributesReader::read(glitch::io::IAttributes*)
; decoder-mode: arm
00571920  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00571924  00 40 a0 e1                                      mov r4, r0
00571928  9c d0 4d e2                                      sub sp, sp, #0x9c
0057192c  00 30 91 e5                                      ldr r3, [r1]
00571930  01 00 a0 e1                                      mov r0, r1
00571934  01 60 a0 e1                                      mov r6, r1
00571938  0f e0 a0 e1                                      mov lr, pc
0057193c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00571940  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
00571944  48 70 8d e2                                      add r7, sp, #0x48
00571948  07 00 a0 e1                                      mov r0, r7
0057194c  01 10 8f e0                                      add r1, pc, r1
00571950  94 20 8d e2                                      add r2, sp, #0x94
00571954  68 d1 f6 eb                                      bl #0x325efc
00571958  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0057195c  00 00 55 e3                                      cmp r5, #0
00571960  05 00 00 0a                                      beq #0x57197c
00571964  05 00 a0 e1                                      mov r0, r5
00571968  c6 74 f6 eb                                      bl #0x30ec88
0057196c  05 10 a0 e1                                      mov r1, r5
00571970  00 21 85 e0                                      add r2, r5, r0, lsl #2
00571974  07 00 a0 e1                                      mov r0, r7
00571978  08 c6 f6 eb                                      bl #0x3231a0
0057197c  08 30 d4 e5                                      ldrb r3, [r4, #8]
00571980  00 00 53 e3                                      cmp r3, #0
00571984  46 00 00 1a                                      bne #0x571aa4
00571988  68 a1 9f e5                                      ldr sl, [pc, #0x168]
0057198c  0d 50 a0 e1                                      mov r5, sp
00571990  90 80 8d e2                                      add r8, sp, #0x90
00571994  0a a0 8f e0                                      add sl, pc, sl
00571998  04 30 94 e5                                      ldr r3, [r4, #4]
0057199c  03 00 a0 e1                                      mov r0, r3
005719a0  00 30 93 e5                                      ldr r3, [r3]
005719a4  0f e0 a0 e1                                      mov lr, pc
005719a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005719ac  00 00 50 e3                                      cmp r0, #0
005719b0  28 00 00 0a                                      beq #0x571a58
005719b4  04 30 94 e5                                      ldr r3, [r4, #4]
005719b8  03 00 a0 e1                                      mov r0, r3
005719bc  00 30 93 e5                                      ldr r3, [r3]
005719c0  0f e0 a0 e1                                      mov lr, pc
005719c4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005719c8  01 00 50 e3                                      cmp r0, #1
005719cc  2b 00 00 0a                                      beq #0x571a80
005719d0  02 00 50 e3                                      cmp r0, #2
005719d4  ef ff ff 1a                                      bne #0x571998
005719d8  04 30 94 e5                                      ldr r3, [r4, #4]
005719dc  03 00 a0 e1                                      mov r0, r3
005719e0  00 30 93 e5                                      ldr r3, [r3]
005719e4  0f e0 a0 e1                                      mov lr, pc
005719e8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005719ec  08 20 a0 e1                                      mov r2, r8
005719f0  00 10 a0 e1                                      mov r1, r0
005719f4  0d 00 a0 e1                                      mov r0, sp
005719f8  3f d1 f6 eb                                      bl #0x325efc
005719fc  07 00 a0 e1                                      mov r0, r7
00571a00  0d 10 a0 e1                                      mov r1, sp
00571a04  29 34 ff eb                                      bl #0x53eab0
00571a08  00 00 50 e3                                      cmp r0, #0
00571a0c  30 00 00 1a                                      bne #0x571ad4
00571a10  0d 00 a0 e1                                      mov r0, sp
00571a14  0a 10 a0 e1                                      mov r1, sl
00571a18  79 12 ff eb                                      bl #0x536404
00571a1c  00 00 50 e3                                      cmp r0, #0
00571a20  1a 00 00 1a                                      bne #0x571a90
00571a24  44 00 9d e5                                      ldr r0, [sp, #0x44]
00571a28  05 00 50 e1                                      cmp r0, r5
00571a2c  d9 ff ff 0a                                      beq #0x571998
00571a30  00 00 50 e3                                      cmp r0, #0
00571a34  d7 ff ff 0a                                      beq #0x571998
00571a38  84 7a f6 eb                                      bl #0x310450
00571a3c  04 30 94 e5                                      ldr r3, [r4, #4]
00571a40  03 00 a0 e1                                      mov r0, r3
00571a44  00 30 93 e5                                      ldr r3, [r3]
00571a48  0f e0 a0 e1                                      mov lr, pc
00571a4c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00571a50  00 00 50 e3                                      cmp r0, #0
00571a54  d6 ff ff 1a                                      bne #0x5719b4
00571a58  01 40 a0 e3                                      mov r4, #1
00571a5c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00571a60  07 00 50 e1                                      cmp r0, r7
00571a64  02 00 00 0a                                      beq #0x571a74
00571a68  00 00 50 e3                                      cmp r0, #0
00571a6c  00 00 00 0a                                      beq #0x571a74
00571a70  76 7a f6 eb                                      bl #0x310450
00571a74  04 00 a0 e1                                      mov r0, r4
00571a78  9c d0 8d e2                                      add sp, sp, #0x9c
00571a7c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00571a80  04 00 a0 e1                                      mov r0, r4
00571a84  06 10 a0 e1                                      mov r1, r6
00571a88  7f fd ff eb                                      bl #0x57108c
00571a8c  c1 ff ff ea                                      b #0x571998
00571a90  00 30 96 e5                                      ldr r3, [r6]
00571a94  06 00 a0 e1                                      mov r0, r6
00571a98  0f e0 a0 e1                                      mov lr, pc
00571a9c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00571aa0  df ff ff ea                                      b #0x571a24
00571aa4  04 30 94 e5                                      ldr r3, [r4, #4]
00571aa8  03 00 a0 e1                                      mov r0, r3
00571aac  00 30 93 e5                                      ldr r3, [r3]
00571ab0  0f e0 a0 e1                                      mov lr, pc
00571ab4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00571ab8  00 10 a0 e1                                      mov r1, r0
00571abc  07 00 a0 e1                                      mov r0, r7
00571ac0  4f 12 ff eb                                      bl #0x536404
00571ac4  00 00 50 e3                                      cmp r0, #0
00571ac8  00 40 a0 01                                      moveq r4, r0
00571acc  ad ff ff 1a                                      bne #0x571988
00571ad0  e1 ff ff ea                                      b #0x571a5c
00571ad4  44 00 9d e5                                      ldr r0, [sp, #0x44]
00571ad8  05 00 50 e1                                      cmp r0, r5
00571adc  dd ff ff 0a                                      beq #0x571a58
00571ae0  00 00 50 e3                                      cmp r0, #0
00571ae4  db ff ff 0a                                      beq #0x571a58
00571ae8  58 7a f6 eb                                      bl #0x310450
00571aec  01 40 a0 e3                                      mov r4, #1
00571af0  d9 ff ff ea                                      b #0x571a5c
; mapping-symbol data/literal pool
00571af4  8c d2 34 00 e4 d1 34 00                          .byte 0x8c, 0xd2, 0x34, 0x00, 0xe4, 0xd1, 0x34, 0x00
