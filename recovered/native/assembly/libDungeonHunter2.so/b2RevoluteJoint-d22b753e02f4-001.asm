; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f1e84, declared_size=1524, range_size=1524, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2RevoluteJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007f1e84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f1e88  30 60 90 e5                                      ldr r6, [r0, #0x30]
007f1e8c  34 d0 4d e2                                      sub sp, sp, #0x34
007f1e90  14 10 8d e5                                      str r1, [sp, #0x14]
007f1e94  00 40 a0 e1                                      mov r4, r0
007f1e98  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f1e9c  44 00 90 e5                                      ldr r0, [r0, #0x44]
007f1ea0  41 71 ec eb                                      bl #0x30e3ac
007f1ea4  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f1ea8  00 80 a0 e1                                      mov r8, r0
007f1eac  48 00 94 e5                                      ldr r0, [r4, #0x48]
007f1eb0  3d 71 ec eb                                      bl #0x30e3ac
007f1eb4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f1eb8  00 70 a0 e1                                      mov r7, r0
007f1ebc  08 00 a0 e1                                      mov r0, r8
007f1ec0  a9 73 ec eb                                      bl #0x30ed6c
007f1ec4  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f1ec8  00 50 a0 e1                                      mov r5, r0
007f1ecc  07 00 a0 e1                                      mov r0, r7
007f1ed0  a5 73 ec eb                                      bl #0x30ed6c
007f1ed4  00 10 a0 e1                                      mov r1, r0
007f1ed8  05 00 a0 e1                                      mov r0, r5
007f1edc  30 73 ec eb                                      bl #0x30eba4
007f1ee0  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f1ee4  00 b0 a0 e1                                      mov fp, r0
007f1ee8  08 00 a0 e1                                      mov r0, r8
007f1eec  9e 73 ec eb                                      bl #0x30ed6c
007f1ef0  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f1ef4  00 80 a0 e1                                      mov r8, r0
007f1ef8  07 00 a0 e1                                      mov r0, r7
007f1efc  9a 73 ec eb                                      bl #0x30ed6c
007f1f00  00 10 a0 e1                                      mov r1, r0
007f1f04  08 00 a0 e1                                      mov r0, r8
007f1f08  25 73 ec eb                                      bl #0x30eba4
007f1f0c  34 50 94 e5                                      ldr r5, [r4, #0x34]
007f1f10  00 90 a0 e1                                      mov sb, r0
007f1f14  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
007f1f18  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f1f1c  22 71 ec eb                                      bl #0x30e3ac
007f1f20  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f1f24  00 80 a0 e1                                      mov r8, r0
007f1f28  50 00 94 e5                                      ldr r0, [r4, #0x50]
007f1f2c  1e 71 ec eb                                      bl #0x30e3ac
007f1f30  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f1f34  00 70 a0 e1                                      mov r7, r0
007f1f38  08 00 a0 e1                                      mov r0, r8
007f1f3c  8a 73 ec eb                                      bl #0x30ed6c
007f1f40  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f1f44  00 a0 a0 e1                                      mov sl, r0
007f1f48  07 00 a0 e1                                      mov r0, r7
007f1f4c  86 73 ec eb                                      bl #0x30ed6c
007f1f50  00 10 a0 e1                                      mov r1, r0
007f1f54  0a 00 a0 e1                                      mov r0, sl
007f1f58  11 73 ec eb                                      bl #0x30eba4
007f1f5c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f1f60  00 a0 a0 e1                                      mov sl, r0
007f1f64  08 00 a0 e1                                      mov r0, r8
007f1f68  7f 73 ec eb                                      bl #0x30ed6c
007f1f6c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f1f70  00 80 a0 e1                                      mov r8, r0
007f1f74  07 00 a0 e1                                      mov r0, r7
007f1f78  7b 73 ec eb                                      bl #0x30ed6c
007f1f7c  00 10 a0 e1                                      mov r1, r0
007f1f80  08 00 a0 e1                                      mov r0, r8
007f1f84  06 73 ec eb                                      bl #0x30eba4
007f1f88  10 00 8d e5                                      str r0, [sp, #0x10]
007f1f8c  78 20 96 e5                                      ldr r2, [r6, #0x78]
007f1f90  28 20 8d e5                                      str r2, [sp, #0x28]
007f1f94  78 30 95 e5                                      ldr r3, [r5, #0x78]
007f1f98  02 00 a0 e1                                      mov r0, r2
007f1f9c  03 10 a0 e1                                      mov r1, r3
007f1fa0  24 30 8d e5                                      str r3, [sp, #0x24]
007f1fa4  fe 72 ec eb                                      bl #0x30eba4
007f1fa8  80 80 96 e5                                      ldr r8, [r6, #0x80]
007f1fac  09 10 a0 e1                                      mov r1, sb
007f1fb0  0c 00 8d e5                                      str r0, [sp, #0xc]
007f1fb4  08 00 a0 e1                                      mov r0, r8
007f1fb8  6b 73 ec eb                                      bl #0x30ed6c
007f1fbc  09 10 a0 e1                                      mov r1, sb
007f1fc0  69 73 ec eb                                      bl #0x30ed6c
007f1fc4  0b 10 a0 e1                                      mov r1, fp
007f1fc8  00 30 a0 e1                                      mov r3, r0
007f1fcc  02 01 88 e2                                      add r0, r8, #0x80000000
007f1fd0  00 30 8d e5                                      str r3, [sp]
007f1fd4  64 73 ec eb                                      bl #0x30ed6c
007f1fd8  09 10 a0 e1                                      mov r1, sb
007f1fdc  62 73 ec eb                                      bl #0x30ed6c
007f1fe0  0b 10 a0 e1                                      mov r1, fp
007f1fe4  00 20 a0 e1                                      mov r2, r0
007f1fe8  08 00 a0 e1                                      mov r0, r8
007f1fec  80 70 95 e5                                      ldr r7, [r5, #0x80]
007f1ff0  04 20 8d e5                                      str r2, [sp, #4]
007f1ff4  5c 73 ec eb                                      bl #0x30ed6c
007f1ff8  0b 10 a0 e1                                      mov r1, fp
007f1ffc  5a 73 ec eb                                      bl #0x30ed6c
007f2000  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f2004  00 c0 a0 e1                                      mov ip, r0
007f2008  07 00 a0 e1                                      mov r0, r7
007f200c  08 c0 8d e5                                      str ip, [sp, #8]
007f2010  55 73 ec eb                                      bl #0x30ed6c
007f2014  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f2018  53 73 ec eb                                      bl #0x30ed6c
007f201c  0a 10 a0 e1                                      mov r1, sl
007f2020  18 00 8d e5                                      str r0, [sp, #0x18]
007f2024  02 01 87 e2                                      add r0, r7, #0x80000000
007f2028  4f 73 ec eb                                      bl #0x30ed6c
007f202c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f2030  4d 73 ec eb                                      bl #0x30ed6c
007f2034  0a 10 a0 e1                                      mov r1, sl
007f2038  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f203c  07 00 a0 e1                                      mov r0, r7
007f2040  49 73 ec eb                                      bl #0x30ed6c
007f2044  0a 10 a0 e1                                      mov r1, sl
007f2048  47 73 ec eb                                      bl #0x30ed6c
007f204c  00 30 9d e5                                      ldr r3, [sp]
007f2050  20 00 8d e5                                      str r0, [sp, #0x20]
007f2054  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2058  03 10 a0 e1                                      mov r1, r3
007f205c  d0 72 ec eb                                      bl #0x30eba4
007f2060  04 20 9d e5                                      ldr r2, [sp, #4]
007f2064  00 30 a0 e1                                      mov r3, r0
007f2068  00 10 a0 e3                                      mov r1, #0
007f206c  02 00 a0 e1                                      mov r0, r2
007f2070  00 30 8d e5                                      str r3, [sp]
007f2074  ca 72 ec eb                                      bl #0x30eba4
007f2078  08 c0 9d e5                                      ldr ip, [sp, #8]
007f207c  00 20 a0 e1                                      mov r2, r0
007f2080  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2084  0c 10 a0 e1                                      mov r1, ip
007f2088  04 20 8d e5                                      str r2, [sp, #4]
007f208c  c4 72 ec eb                                      bl #0x30eba4
007f2090  00 30 9d e5                                      ldr r3, [sp]
007f2094  00 c0 a0 e1                                      mov ip, r0
007f2098  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f209c  03 10 a0 e1                                      mov r1, r3
007f20a0  08 c0 8d e5                                      str ip, [sp, #8]
007f20a4  be 72 ec eb                                      bl #0x30eba4
007f20a8  04 20 9d e5                                      ldr r2, [sp, #4]
007f20ac  0c 00 8d e5                                      str r0, [sp, #0xc]
007f20b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f20b4  02 10 a0 e1                                      mov r1, r2
007f20b8  b9 72 ec eb                                      bl #0x30eba4
007f20bc  08 c0 9d e5                                      ldr ip, [sp, #8]
007f20c0  00 30 a0 e1                                      mov r3, r0
007f20c4  20 00 9d e5                                      ldr r0, [sp, #0x20]
007f20c8  0c 10 a0 e1                                      mov r1, ip
007f20cc  00 30 8d e5                                      str r3, [sp]
007f20d0  b3 72 ec eb                                      bl #0x30eba4
007f20d4  00 c0 a0 e1                                      mov ip, r0
007f20d8  0c 10 a0 e1                                      mov r1, ip
007f20dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f20e0  08 c0 8d e5                                      str ip, [sp, #8]
007f20e4  20 73 ec eb                                      bl #0x30ed6c
007f20e8  00 30 9d e5                                      ldr r3, [sp]
007f20ec  00 20 a0 e1                                      mov r2, r0
007f20f0  04 20 8d e5                                      str r2, [sp, #4]
007f20f4  03 10 a0 e1                                      mov r1, r3
007f20f8  03 00 a0 e1                                      mov r0, r3
007f20fc  1a 73 ec eb                                      bl #0x30ed6c
007f2100  04 20 9d e5                                      ldr r2, [sp, #4]
007f2104  00 10 a0 e1                                      mov r1, r0
007f2108  02 00 a0 e1                                      mov r0, r2
007f210c  a6 70 ec eb                                      bl #0x30e3ac
007f2110  00 10 a0 e1                                      mov r1, r0
007f2114  fe 05 a0 e3                                      mov r0, #0x3f800000
007f2118  dd 72 ec eb                                      bl #0x30ec94
007f211c  00 30 9d e5                                      ldr r3, [sp]
007f2120  00 20 a0 e1                                      mov r2, r0
007f2124  02 11 80 e2                                      add r1, r0, #0x80000000
007f2128  03 00 a0 e1                                      mov r0, r3
007f212c  04 20 8d e5                                      str r2, [sp, #4]
007f2130  0d 73 ec eb                                      bl #0x30ed6c
007f2134  04 20 9d e5                                      ldr r2, [sp, #4]
007f2138  00 30 a0 e1                                      mov r3, r0
007f213c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2140  02 10 a0 e1                                      mov r1, r2
007f2144  00 30 8d e5                                      str r3, [sp]
007f2148  07 73 ec eb                                      bl #0x30ed6c
007f214c  74 00 84 e5                                      str r0, [r4, #0x74]
007f2150  00 30 9d e5                                      ldr r3, [sp]
007f2154  6c 30 84 e5                                      str r3, [r4, #0x6c]
007f2158  04 20 9d e5                                      ldr r2, [sp, #4]
007f215c  70 30 84 e5                                      str r3, [r4, #0x70]
007f2160  08 c0 9d e5                                      ldr ip, [sp, #8]
007f2164  02 10 a0 e1                                      mov r1, r2
007f2168  0c 00 a0 e1                                      mov r0, ip
007f216c  fe 72 ec eb                                      bl #0x30ed6c
007f2170  07 10 a0 e1                                      mov r1, r7
007f2174  68 00 84 e5                                      str r0, [r4, #0x68]
007f2178  08 00 a0 e1                                      mov r0, r8
007f217c  88 72 ec eb                                      bl #0x30eba4
007f2180  00 10 a0 e1                                      mov r1, r0
007f2184  fe 05 a0 e3                                      mov r0, #0x3f800000
007f2188  c1 72 ec eb                                      bl #0x30ec94
007f218c  7c 30 d4 e5                                      ldrb r3, [r4, #0x7c]
007f2190  78 00 84 e5                                      str r0, [r4, #0x78]
007f2194  00 00 53 e3                                      cmp r3, #0
007f2198  00 30 a0 03                                      moveq r3, #0
007f219c  5c 30 84 05                                      streq r3, [r4, #0x5c]
007f21a0  88 30 d4 e5                                      ldrb r3, [r4, #0x88]
007f21a4  00 00 53 e3                                      cmp r3, #0
007f21a8  00 30 a0 03                                      moveq r3, #0
007f21ac  60 30 84 05                                      streq r3, [r4, #0x60]
007f21b0  1a 00 00 0a                                      beq #0x7f2220
007f21b4  94 20 94 e5                                      ldr r2, [r4, #0x94]
007f21b8  18 20 8d e5                                      str r2, [sp, #0x18]
007f21bc  90 30 94 e5                                      ldr r3, [r4, #0x90]
007f21c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f21c4  0c 30 8d e5                                      str r3, [sp, #0xc]
007f21c8  38 20 95 e5                                      ldr r2, [r5, #0x38]
007f21cc  03 10 a0 e1                                      mov r1, r3
007f21d0  2c 20 8d e5                                      str r2, [sp, #0x2c]
007f21d4  74 70 ec eb                                      bl #0x30e3ac
007f21d8  00 10 a0 e3                                      mov r1, #0
007f21dc  00 00 8d e5                                      str r0, [sp]
007f21e0  44 70 ec eb                                      bl #0x30e2f8
007f21e4  38 20 96 e5                                      ldr r2, [r6, #0x38]
007f21e8  00 30 9d e5                                      ldr r3, [sp]
007f21ec  00 00 50 e3                                      cmp r0, #0
007f21f0  20 20 8d e5                                      str r2, [sp, #0x20]
007f21f4  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
007f21f8  02 31 83 02                                      addeq r3, r3, #0x80000000
007f21fc  36 1a 0f e3                                      movw r1, #0xfa36
007f2200  03 00 a0 e1                                      mov r0, r3
007f2204  8e 1d 43 e3                                      movt r1, #0x3d8e
007f2208  1c 20 8d e5                                      str r2, [sp, #0x1c]
007f220c  3e 71 ec eb                                      bl #0x30e70c
007f2210  00 00 50 e3                                      cmp r0, #0
007f2214  03 30 a0 13                                      movne r3, #3
007f2218  98 30 84 15                                      strne r3, [r4, #0x98]
007f221c  73 00 00 0a                                      beq #0x7f23f0
007f2220  14 20 9d e5                                      ldr r2, [sp, #0x14]
007f2224  10 30 d2 e5                                      ldrb r3, [r2, #0x10]
007f2228  00 00 53 e3                                      cmp r3, #0
007f222c  69 00 00 0a                                      beq #0x7f23d8
007f2230  00 10 92 e5                                      ldr r1, [r2]
007f2234  28 00 9d e5                                      ldr r0, [sp, #0x28]
007f2238  cb 72 ec eb                                      bl #0x30ed6c
007f223c  58 10 94 e5                                      ldr r1, [r4, #0x58]
007f2240  00 00 8d e5                                      str r0, [sp]
007f2244  c8 72 ec eb                                      bl #0x30ed6c
007f2248  00 30 9d e5                                      ldr r3, [sp]
007f224c  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f2250  00 20 a0 e1                                      mov r2, r0
007f2254  03 00 a0 e1                                      mov r0, r3
007f2258  04 20 8d e5                                      str r2, [sp, #4]
007f225c  c2 72 ec eb                                      bl #0x30ed6c
007f2260  00 10 a0 e1                                      mov r1, r0
007f2264  40 00 96 e5                                      ldr r0, [r6, #0x40]
007f2268  4f 70 ec eb                                      bl #0x30e3ac
007f226c  40 00 86 e5                                      str r0, [r6, #0x40]
007f2270  04 20 9d e5                                      ldr r2, [sp, #4]
007f2274  44 00 96 e5                                      ldr r0, [r6, #0x44]
007f2278  02 10 a0 e1                                      mov r1, r2
007f227c  4a 70 ec eb                                      bl #0x30e3ac
007f2280  44 00 86 e5                                      str r0, [r6, #0x44]
007f2284  14 30 9d e5                                      ldr r3, [sp, #0x14]
007f2288  08 00 a0 e1                                      mov r0, r8
007f228c  00 10 93 e5                                      ldr r1, [r3]
007f2290  b5 72 ec eb                                      bl #0x30ed6c
007f2294  60 10 94 e5                                      ldr r1, [r4, #0x60]
007f2298  00 20 a0 e1                                      mov r2, r0
007f229c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007f22a0  04 20 8d e5                                      str r2, [sp, #4]
007f22a4  3e 72 ec eb                                      bl #0x30eba4
007f22a8  58 10 94 e5                                      ldr r1, [r4, #0x58]
007f22ac  00 30 a0 e1                                      mov r3, r0
007f22b0  0b 00 a0 e1                                      mov r0, fp
007f22b4  00 30 8d e5                                      str r3, [sp]
007f22b8  ab 72 ec eb                                      bl #0x30ed6c
007f22bc  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f22c0  00 80 a0 e1                                      mov r8, r0
007f22c4  09 00 a0 e1                                      mov r0, sb
007f22c8  a7 72 ec eb                                      bl #0x30ed6c
007f22cc  00 10 a0 e1                                      mov r1, r0
007f22d0  08 00 a0 e1                                      mov r0, r8
007f22d4  34 70 ec eb                                      bl #0x30e3ac
007f22d8  00 30 9d e5                                      ldr r3, [sp]
007f22dc  00 10 a0 e1                                      mov r1, r0
007f22e0  03 00 a0 e1                                      mov r0, r3
007f22e4  2e 72 ec eb                                      bl #0x30eba4
007f22e8  04 20 9d e5                                      ldr r2, [sp, #4]
007f22ec  00 10 a0 e1                                      mov r1, r0
007f22f0  02 00 a0 e1                                      mov r0, r2
007f22f4  9c 72 ec eb                                      bl #0x30ed6c
007f22f8  00 10 a0 e1                                      mov r1, r0
007f22fc  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f2300  29 70 ec eb                                      bl #0x30e3ac
007f2304  48 00 86 e5                                      str r0, [r6, #0x48]
007f2308  14 20 9d e5                                      ldr r2, [sp, #0x14]
007f230c  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f2310  00 10 92 e5                                      ldr r1, [r2]
007f2314  94 72 ec eb                                      bl #0x30ed6c
007f2318  58 10 94 e5                                      ldr r1, [r4, #0x58]
007f231c  00 80 a0 e1                                      mov r8, r0
007f2320  91 72 ec eb                                      bl #0x30ed6c
007f2324  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f2328  00 60 a0 e1                                      mov r6, r0
007f232c  08 00 a0 e1                                      mov r0, r8
007f2330  8d 72 ec eb                                      bl #0x30ed6c
007f2334  00 10 a0 e1                                      mov r1, r0
007f2338  40 00 95 e5                                      ldr r0, [r5, #0x40]
007f233c  18 72 ec eb                                      bl #0x30eba4
007f2340  06 10 a0 e1                                      mov r1, r6
007f2344  40 00 85 e5                                      str r0, [r5, #0x40]
007f2348  44 00 95 e5                                      ldr r0, [r5, #0x44]
007f234c  14 72 ec eb                                      bl #0x30eba4
007f2350  44 00 85 e5                                      str r0, [r5, #0x44]
007f2354  14 30 9d e5                                      ldr r3, [sp, #0x14]
007f2358  07 00 a0 e1                                      mov r0, r7
007f235c  00 10 93 e5                                      ldr r1, [r3]
007f2360  81 72 ec eb                                      bl #0x30ed6c
007f2364  60 10 94 e5                                      ldr r1, [r4, #0x60]
007f2368  00 60 a0 e1                                      mov r6, r0
007f236c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007f2370  0b 72 ec eb                                      bl #0x30eba4
007f2374  58 10 94 e5                                      ldr r1, [r4, #0x58]
007f2378  00 70 a0 e1                                      mov r7, r0
007f237c  0a 00 a0 e1                                      mov r0, sl
007f2380  79 72 ec eb                                      bl #0x30ed6c
007f2384  54 10 94 e5                                      ldr r1, [r4, #0x54]
007f2388  00 80 a0 e1                                      mov r8, r0
007f238c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f2390  75 72 ec eb                                      bl #0x30ed6c
007f2394  00 10 a0 e1                                      mov r1, r0
007f2398  08 00 a0 e1                                      mov r0, r8
007f239c  02 70 ec eb                                      bl #0x30e3ac
007f23a0  00 10 a0 e1                                      mov r1, r0
007f23a4  07 00 a0 e1                                      mov r0, r7
007f23a8  fd 71 ec eb                                      bl #0x30eba4
007f23ac  00 10 a0 e1                                      mov r1, r0
007f23b0  06 00 a0 e1                                      mov r0, r6
007f23b4  6c 72 ec eb                                      bl #0x30ed6c
007f23b8  00 10 a0 e1                                      mov r1, r0
007f23bc  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f23c0  f7 71 ec eb                                      bl #0x30eba4
007f23c4  48 00 85 e5                                      str r0, [r5, #0x48]
007f23c8  00 30 a0 e3                                      mov r3, #0
007f23cc  64 30 84 e5                                      str r3, [r4, #0x64]
007f23d0  34 d0 8d e2                                      add sp, sp, #0x34
007f23d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f23d8  00 30 a0 e3                                      mov r3, #0
007f23dc  60 30 84 e5                                      str r3, [r4, #0x60]
007f23e0  54 30 84 e5                                      str r3, [r4, #0x54]
007f23e4  58 30 84 e5                                      str r3, [r4, #0x58]
007f23e8  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f23ec  f5 ff ff ea                                      b #0x7f23c8
007f23f0  20 10 9d e5                                      ldr r1, [sp, #0x20]
007f23f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007f23f8  eb 6f ec eb                                      bl #0x30e3ac
007f23fc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007f2400  e9 6f ec eb                                      bl #0x30e3ac
007f2404  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f2408  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f240c  66 71 ec eb                                      bl #0x30e9ac
007f2410  00 00 50 e3                                      cmp r0, #0
007f2414  0b 00 00 1a                                      bne #0x7f2448
007f2418  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f241c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007f2420  23 70 ec eb                                      bl #0x30e4b4
007f2424  00 00 50 e3                                      cmp r0, #0
007f2428  0d 00 00 0a                                      beq #0x7f2464
007f242c  98 30 94 e5                                      ldr r3, [r4, #0x98]
007f2430  02 00 53 e3                                      cmp r3, #2
007f2434  00 30 a0 13                                      movne r3, #0
007f2438  60 30 84 15                                      strne r3, [r4, #0x60]
007f243c  02 30 a0 e3                                      mov r3, #2
007f2440  98 30 84 e5                                      str r3, [r4, #0x98]
007f2444  75 ff ff ea                                      b #0x7f2220
007f2448  98 30 94 e5                                      ldr r3, [r4, #0x98]
007f244c  01 00 53 e3                                      cmp r3, #1
007f2450  00 30 a0 13                                      movne r3, #0
007f2454  60 30 84 15                                      strne r3, [r4, #0x60]
007f2458  01 30 a0 e3                                      mov r3, #1
007f245c  98 30 84 e5                                      str r3, [r4, #0x98]
007f2460  6e ff ff ea                                      b #0x7f2220
007f2464  00 30 a0 e3                                      mov r3, #0
007f2468  98 30 84 e5                                      str r3, [r4, #0x98]
007f246c  00 30 a0 e3                                      mov r3, #0
007f2470  60 30 84 e5                                      str r3, [r4, #0x60]
007f2474  69 ff ff ea                                      b #0x7f2220

; FUNCTION 0x007f2478, declared_size=1416, range_size=1416, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2RevoluteJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007f2478  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f247c  30 40 90 e5                                      ldr r4, [r0, #0x30]
007f2480  14 d0 4d e2                                      sub sp, sp, #0x14
007f2484  00 50 a0 e1                                      mov r5, r0
007f2488  01 70 a0 e1                                      mov r7, r1
007f248c  44 00 90 e5                                      ldr r0, [r0, #0x44]
007f2490  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f2494  c4 6f ec eb                                      bl #0x30e3ac
007f2498  20 10 94 e5                                      ldr r1, [r4, #0x20]
007f249c  00 90 a0 e1                                      mov sb, r0
007f24a0  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f24a4  c0 6f ec eb                                      bl #0x30e3ac
007f24a8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f24ac  00 a0 a0 e1                                      mov sl, r0
007f24b0  09 00 a0 e1                                      mov r0, sb
007f24b4  2c 72 ec eb                                      bl #0x30ed6c
007f24b8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f24bc  00 60 a0 e1                                      mov r6, r0
007f24c0  0a 00 a0 e1                                      mov r0, sl
007f24c4  28 72 ec eb                                      bl #0x30ed6c
007f24c8  00 10 a0 e1                                      mov r1, r0
007f24cc  06 00 a0 e1                                      mov r0, r6
007f24d0  b3 71 ec eb                                      bl #0x30eba4
007f24d4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f24d8  00 80 a0 e1                                      mov r8, r0
007f24dc  09 00 a0 e1                                      mov r0, sb
007f24e0  21 72 ec eb                                      bl #0x30ed6c
007f24e4  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f24e8  00 90 a0 e1                                      mov sb, r0
007f24ec  0a 00 a0 e1                                      mov r0, sl
007f24f0  1d 72 ec eb                                      bl #0x30ed6c
007f24f4  00 10 a0 e1                                      mov r1, r0
007f24f8  09 00 a0 e1                                      mov r0, sb
007f24fc  a8 71 ec eb                                      bl #0x30eba4
007f2500  34 60 95 e5                                      ldr r6, [r5, #0x34]
007f2504  08 00 8d e5                                      str r0, [sp, #8]
007f2508  4c 00 95 e5                                      ldr r0, [r5, #0x4c]
007f250c  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007f2510  a5 6f ec eb                                      bl #0x30e3ac
007f2514  20 10 96 e5                                      ldr r1, [r6, #0x20]
007f2518  00 90 a0 e1                                      mov sb, r0
007f251c  50 00 95 e5                                      ldr r0, [r5, #0x50]
007f2520  a1 6f ec eb                                      bl #0x30e3ac
007f2524  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007f2528  00 a0 a0 e1                                      mov sl, r0
007f252c  09 00 a0 e1                                      mov r0, sb
007f2530  0d 72 ec eb                                      bl #0x30ed6c
007f2534  14 10 96 e5                                      ldr r1, [r6, #0x14]
007f2538  00 b0 a0 e1                                      mov fp, r0
007f253c  0a 00 a0 e1                                      mov r0, sl
007f2540  09 72 ec eb                                      bl #0x30ed6c
007f2544  00 10 a0 e1                                      mov r1, r0
007f2548  0b 00 a0 e1                                      mov r0, fp
007f254c  94 71 ec eb                                      bl #0x30eba4
007f2550  0c 00 8d e5                                      str r0, [sp, #0xc]
007f2554  10 10 96 e5                                      ldr r1, [r6, #0x10]
007f2558  09 00 a0 e1                                      mov r0, sb
007f255c  02 72 ec eb                                      bl #0x30ed6c
007f2560  18 10 96 e5                                      ldr r1, [r6, #0x18]
007f2564  00 90 a0 e1                                      mov sb, r0
007f2568  0a 00 a0 e1                                      mov r0, sl
007f256c  fe 71 ec eb                                      bl #0x30ed6c
007f2570  00 10 a0 e1                                      mov r1, r0
007f2574  09 00 a0 e1                                      mov r0, sb
007f2578  89 71 ec eb                                      bl #0x30eba4
007f257c  48 a0 96 e5                                      ldr sl, [r6, #0x48]
007f2580  00 00 8d e5                                      str r0, [sp]
007f2584  02 11 8a e2                                      add r1, sl, #0x80000000
007f2588  f7 71 ec eb                                      bl #0x30ed6c
007f258c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f2590  00 90 a0 e1                                      mov sb, r0
007f2594  0a 00 a0 e1                                      mov r0, sl
007f2598  f3 71 ec eb                                      bl #0x30ed6c
007f259c  40 10 96 e5                                      ldr r1, [r6, #0x40]
007f25a0  00 a0 a0 e1                                      mov sl, r0
007f25a4  09 00 a0 e1                                      mov r0, sb
007f25a8  7d 71 ec eb                                      bl #0x30eba4
007f25ac  44 10 96 e5                                      ldr r1, [r6, #0x44]
007f25b0  00 90 a0 e1                                      mov sb, r0
007f25b4  0a 00 a0 e1                                      mov r0, sl
007f25b8  79 71 ec eb                                      bl #0x30eba4
007f25bc  40 10 94 e5                                      ldr r1, [r4, #0x40]
007f25c0  00 a0 a0 e1                                      mov sl, r0
007f25c4  09 00 a0 e1                                      mov r0, sb
007f25c8  77 6f ec eb                                      bl #0x30e3ac
007f25cc  44 10 94 e5                                      ldr r1, [r4, #0x44]
007f25d0  00 b0 a0 e1                                      mov fp, r0
007f25d4  0a 00 a0 e1                                      mov r0, sl
007f25d8  73 6f ec eb                                      bl #0x30e3ac
007f25dc  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f25e0  00 30 a0 e1                                      mov r3, r0
007f25e4  08 00 9d e5                                      ldr r0, [sp, #8]
007f25e8  02 11 8a e2                                      add r1, sl, #0x80000000
007f25ec  04 30 8d e5                                      str r3, [sp, #4]
007f25f0  dd 71 ec eb                                      bl #0x30ed6c
007f25f4  08 10 a0 e1                                      mov r1, r8
007f25f8  00 90 a0 e1                                      mov sb, r0
007f25fc  0a 00 a0 e1                                      mov r0, sl
007f2600  d9 71 ec eb                                      bl #0x30ed6c
007f2604  09 10 a0 e1                                      mov r1, sb
007f2608  00 a0 a0 e1                                      mov sl, r0
007f260c  0b 00 a0 e1                                      mov r0, fp
007f2610  65 6f ec eb                                      bl #0x30e3ac
007f2614  04 30 9d e5                                      ldr r3, [sp, #4]
007f2618  00 b0 a0 e1                                      mov fp, r0
007f261c  0a 10 a0 e1                                      mov r1, sl
007f2620  03 00 a0 e1                                      mov r0, r3
007f2624  60 6f ec eb                                      bl #0x30e3ac
007f2628  68 10 95 e5                                      ldr r1, [r5, #0x68]
007f262c  00 90 a0 e1                                      mov sb, r0
007f2630  0b 00 a0 e1                                      mov r0, fp
007f2634  cc 71 ec eb                                      bl #0x30ed6c
007f2638  70 10 95 e5                                      ldr r1, [r5, #0x70]
007f263c  00 30 a0 e1                                      mov r3, r0
007f2640  09 00 a0 e1                                      mov r0, sb
007f2644  04 a0 97 e5                                      ldr sl, [r7, #4]
007f2648  04 30 8d e5                                      str r3, [sp, #4]
007f264c  c6 71 ec eb                                      bl #0x30ed6c
007f2650  04 30 9d e5                                      ldr r3, [sp, #4]
007f2654  00 10 a0 e1                                      mov r1, r0
007f2658  02 a1 8a e2                                      add sl, sl, #0x80000000
007f265c  03 00 a0 e1                                      mov r0, r3
007f2660  4f 71 ec eb                                      bl #0x30eba4
007f2664  6c 10 95 e5                                      ldr r1, [r5, #0x6c]
007f2668  00 30 a0 e1                                      mov r3, r0
007f266c  0b 00 a0 e1                                      mov r0, fp
007f2670  04 30 8d e5                                      str r3, [sp, #4]
007f2674  bc 71 ec eb                                      bl #0x30ed6c
007f2678  74 10 95 e5                                      ldr r1, [r5, #0x74]
007f267c  00 b0 a0 e1                                      mov fp, r0
007f2680  09 00 a0 e1                                      mov r0, sb
007f2684  b8 71 ec eb                                      bl #0x30ed6c
007f2688  00 10 a0 e1                                      mov r1, r0
007f268c  0b 00 a0 e1                                      mov r0, fp
007f2690  43 71 ec eb                                      bl #0x30eba4
007f2694  04 30 9d e5                                      ldr r3, [sp, #4]
007f2698  00 90 a0 e1                                      mov sb, r0
007f269c  0a 00 a0 e1                                      mov r0, sl
007f26a0  03 10 a0 e1                                      mov r1, r3
007f26a4  b0 71 ec eb                                      bl #0x30ed6c
007f26a8  09 10 a0 e1                                      mov r1, sb
007f26ac  00 b0 a0 e1                                      mov fp, r0
007f26b0  0a 00 a0 e1                                      mov r0, sl
007f26b4  ac 71 ec eb                                      bl #0x30ed6c
007f26b8  0b 10 a0 e1                                      mov r1, fp
007f26bc  00 a0 a0 e1                                      mov sl, r0
007f26c0  54 00 95 e5                                      ldr r0, [r5, #0x54]
007f26c4  36 71 ec eb                                      bl #0x30eba4
007f26c8  0a 10 a0 e1                                      mov r1, sl
007f26cc  54 00 85 e5                                      str r0, [r5, #0x54]
007f26d0  58 00 95 e5                                      ldr r0, [r5, #0x58]
007f26d4  32 71 ec eb                                      bl #0x30eba4
007f26d8  58 00 85 e5                                      str r0, [r5, #0x58]
007f26dc  00 90 97 e5                                      ldr sb, [r7]
007f26e0  0b 10 a0 e1                                      mov r1, fp
007f26e4  09 00 a0 e1                                      mov r0, sb
007f26e8  9f 71 ec eb                                      bl #0x30ed6c
007f26ec  0a 10 a0 e1                                      mov r1, sl
007f26f0  00 b0 a0 e1                                      mov fp, r0
007f26f4  09 00 a0 e1                                      mov r0, sb
007f26f8  9b 71 ec eb                                      bl #0x30ed6c
007f26fc  78 90 94 e5                                      ldr sb, [r4, #0x78]
007f2700  00 a0 a0 e1                                      mov sl, r0
007f2704  0b 10 a0 e1                                      mov r1, fp
007f2708  09 00 a0 e1                                      mov r0, sb
007f270c  96 71 ec eb                                      bl #0x30ed6c
007f2710  00 10 a0 e1                                      mov r1, r0
007f2714  40 00 94 e5                                      ldr r0, [r4, #0x40]
007f2718  23 6f ec eb                                      bl #0x30e3ac
007f271c  0a 10 a0 e1                                      mov r1, sl
007f2720  40 00 84 e5                                      str r0, [r4, #0x40]
007f2724  09 00 a0 e1                                      mov r0, sb
007f2728  8f 71 ec eb                                      bl #0x30ed6c
007f272c  00 10 a0 e1                                      mov r1, r0
007f2730  44 00 94 e5                                      ldr r0, [r4, #0x44]
007f2734  1c 6f ec eb                                      bl #0x30e3ac
007f2738  0a 10 a0 e1                                      mov r1, sl
007f273c  44 00 84 e5                                      str r0, [r4, #0x44]
007f2740  08 00 a0 e1                                      mov r0, r8
007f2744  88 71 ec eb                                      bl #0x30ed6c
007f2748  0b 10 a0 e1                                      mov r1, fp
007f274c  00 80 a0 e1                                      mov r8, r0
007f2750  08 00 9d e5                                      ldr r0, [sp, #8]
007f2754  84 71 ec eb                                      bl #0x30ed6c
007f2758  00 10 a0 e1                                      mov r1, r0
007f275c  08 00 a0 e1                                      mov r0, r8
007f2760  11 6f ec eb                                      bl #0x30e3ac
007f2764  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f2768  7f 71 ec eb                                      bl #0x30ed6c
007f276c  00 10 a0 e1                                      mov r1, r0
007f2770  48 00 94 e5                                      ldr r0, [r4, #0x48]
007f2774  0c 6f ec eb                                      bl #0x30e3ac
007f2778  48 00 84 e5                                      str r0, [r4, #0x48]
007f277c  78 80 96 e5                                      ldr r8, [r6, #0x78]
007f2780  0b 10 a0 e1                                      mov r1, fp
007f2784  08 00 a0 e1                                      mov r0, r8
007f2788  77 71 ec eb                                      bl #0x30ed6c
007f278c  00 10 a0 e1                                      mov r1, r0
007f2790  40 00 96 e5                                      ldr r0, [r6, #0x40]
007f2794  02 71 ec eb                                      bl #0x30eba4
007f2798  0a 10 a0 e1                                      mov r1, sl
007f279c  40 00 86 e5                                      str r0, [r6, #0x40]
007f27a0  08 00 a0 e1                                      mov r0, r8
007f27a4  70 71 ec eb                                      bl #0x30ed6c
007f27a8  00 10 a0 e1                                      mov r1, r0
007f27ac  44 00 96 e5                                      ldr r0, [r6, #0x44]
007f27b0  fb 70 ec eb                                      bl #0x30eba4
007f27b4  44 00 86 e5                                      str r0, [r6, #0x44]
007f27b8  0a 10 a0 e1                                      mov r1, sl
007f27bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f27c0  69 71 ec eb                                      bl #0x30ed6c
007f27c4  00 20 9d e5                                      ldr r2, [sp]
007f27c8  00 80 a0 e1                                      mov r8, r0
007f27cc  0b 10 a0 e1                                      mov r1, fp
007f27d0  02 00 a0 e1                                      mov r0, r2
007f27d4  64 71 ec eb                                      bl #0x30ed6c
007f27d8  00 10 a0 e1                                      mov r1, r0
007f27dc  08 00 a0 e1                                      mov r0, r8
007f27e0  f1 6e ec eb                                      bl #0x30e3ac
007f27e4  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f27e8  5f 71 ec eb                                      bl #0x30ed6c
007f27ec  48 10 96 e5                                      ldr r1, [r6, #0x48]
007f27f0  eb 70 ec eb                                      bl #0x30eba4
007f27f4  48 00 86 e5                                      str r0, [r6, #0x48]
007f27f8  7c 30 d5 e5                                      ldrb r3, [r5, #0x7c]
007f27fc  00 80 a0 e1                                      mov r8, r0
007f2800  00 00 53 e3                                      cmp r3, #0
007f2804  32 00 00 0a                                      beq #0x7f28d4
007f2808  98 30 95 e5                                      ldr r3, [r5, #0x98]
007f280c  03 00 53 e3                                      cmp r3, #3
007f2810  2f 00 00 0a                                      beq #0x7f28d4
007f2814  04 00 97 e5                                      ldr r0, [r7, #4]
007f2818  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f281c  5c 90 95 e5                                      ldr sb, [r5, #0x5c]
007f2820  02 01 80 e2                                      add r0, r0, #0x80000000
007f2824  50 71 ec eb                                      bl #0x30ed6c
007f2828  48 10 94 e5                                      ldr r1, [r4, #0x48]
007f282c  00 a0 a0 e1                                      mov sl, r0
007f2830  08 00 a0 e1                                      mov r0, r8
007f2834  dc 6e ec eb                                      bl #0x30e3ac
007f2838  84 10 95 e5                                      ldr r1, [r5, #0x84]
007f283c  da 6e ec eb                                      bl #0x30e3ac
007f2840  00 10 a0 e1                                      mov r1, r0
007f2844  0a 00 a0 e1                                      mov r0, sl
007f2848  47 71 ec eb                                      bl #0x30ed6c
007f284c  09 10 a0 e1                                      mov r1, sb
007f2850  d3 70 ec eb                                      bl #0x30eba4
007f2854  80 a0 95 e5                                      ldr sl, [r5, #0x80]
007f2858  00 b0 a0 e1                                      mov fp, r0
007f285c  0a 10 a0 e1                                      mov r1, sl
007f2860  a9 6f ec eb                                      bl #0x30e70c
007f2864  00 00 50 e3                                      cmp r0, #0
007f2868  02 81 8a e2                                      add r8, sl, #0x80000000
007f286c  0a b0 a0 01                                      moveq fp, sl
007f2870  08 00 a0 e1                                      mov r0, r8
007f2874  0b 10 a0 e1                                      mov r1, fp
007f2878  9e 6e ec eb                                      bl #0x30e2f8
007f287c  00 00 50 e3                                      cmp r0, #0
007f2880  0b 80 a0 01                                      moveq r8, fp
007f2884  09 10 a0 e1                                      mov r1, sb
007f2888  5c 80 85 e5                                      str r8, [r5, #0x5c]
007f288c  08 00 a0 e1                                      mov r0, r8
007f2890  c5 6e ec eb                                      bl #0x30e3ac
007f2894  00 10 97 e5                                      ldr r1, [r7]
007f2898  33 71 ec eb                                      bl #0x30ed6c
007f289c  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f28a0  00 80 a0 e1                                      mov r8, r0
007f28a4  30 71 ec eb                                      bl #0x30ed6c
007f28a8  00 10 a0 e1                                      mov r1, r0
007f28ac  48 00 94 e5                                      ldr r0, [r4, #0x48]
007f28b0  bd 6e ec eb                                      bl #0x30e3ac
007f28b4  48 00 84 e5                                      str r0, [r4, #0x48]
007f28b8  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f28bc  08 00 a0 e1                                      mov r0, r8
007f28c0  29 71 ec eb                                      bl #0x30ed6c
007f28c4  00 10 a0 e1                                      mov r1, r0
007f28c8  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f28cc  b4 70 ec eb                                      bl #0x30eba4
007f28d0  48 00 86 e5                                      str r0, [r6, #0x48]
007f28d4  88 30 d5 e5                                      ldrb r3, [r5, #0x88]
007f28d8  00 00 53 e3                                      cmp r3, #0
007f28dc  26 00 00 0a                                      beq #0x7f297c
007f28e0  98 80 95 e5                                      ldr r8, [r5, #0x98]
007f28e4  00 00 58 e3                                      cmp r8, #0
007f28e8  23 00 00 0a                                      beq #0x7f297c
007f28ec  04 00 97 e5                                      ldr r0, [r7, #4]
007f28f0  78 10 95 e5                                      ldr r1, [r5, #0x78]
007f28f4  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f28f8  02 01 80 e2                                      add r0, r0, #0x80000000
007f28fc  1a 71 ec eb                                      bl #0x30ed6c
007f2900  0a 10 a0 e1                                      mov r1, sl
007f2904  00 90 a0 e1                                      mov sb, r0
007f2908  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f290c  a6 6e ec eb                                      bl #0x30e3ac
007f2910  00 10 a0 e1                                      mov r1, r0
007f2914  09 00 a0 e1                                      mov r0, sb
007f2918  13 71 ec eb                                      bl #0x30ed6c
007f291c  03 00 58 e3                                      cmp r8, #3
007f2920  00 90 a0 e1                                      mov sb, r0
007f2924  2f 00 00 0a                                      beq #0x7f29e8
007f2928  01 00 58 e3                                      cmp r8, #1
007f292c  14 00 00 0a                                      beq #0x7f2984
007f2930  02 00 58 e3                                      cmp r8, #2
007f2934  21 00 00 0a                                      beq #0x7f29c0
007f2938  00 10 97 e5                                      ldr r1, [r7]
007f293c  09 00 a0 e1                                      mov r0, sb
007f2940  09 71 ec eb                                      bl #0x30ed6c
007f2944  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f2948  00 50 a0 e1                                      mov r5, r0
007f294c  06 71 ec eb                                      bl #0x30ed6c
007f2950  00 10 a0 e1                                      mov r1, r0
007f2954  0a 00 a0 e1                                      mov r0, sl
007f2958  93 6e ec eb                                      bl #0x30e3ac
007f295c  48 00 84 e5                                      str r0, [r4, #0x48]
007f2960  80 10 96 e5                                      ldr r1, [r6, #0x80]
007f2964  05 00 a0 e1                                      mov r0, r5
007f2968  ff 70 ec eb                                      bl #0x30ed6c
007f296c  00 10 a0 e1                                      mov r1, r0
007f2970  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f2974  8a 70 ec eb                                      bl #0x30eba4
007f2978  48 00 86 e5                                      str r0, [r6, #0x48]
007f297c  14 d0 8d e2                                      add sp, sp, #0x14
007f2980  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f2984  60 a0 95 e5                                      ldr sl, [r5, #0x60]
007f2988  0a 10 a0 e1                                      mov r1, sl
007f298c  84 70 ec eb                                      bl #0x30eba4
007f2990  00 10 a0 e3                                      mov r1, #0
007f2994  00 80 a0 e1                                      mov r8, r0
007f2998  56 6e ec eb                                      bl #0x30e2f8
007f299c  00 00 50 e3                                      cmp r0, #0
007f29a0  0e 00 00 0a                                      beq #0x7f29e0
007f29a4  0a 10 a0 e1                                      mov r1, sl
007f29a8  60 80 85 e5                                      str r8, [r5, #0x60]
007f29ac  08 00 a0 e1                                      mov r0, r8
007f29b0  7d 6e ec eb                                      bl #0x30e3ac
007f29b4  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f29b8  00 90 a0 e1                                      mov sb, r0
007f29bc  dd ff ff ea                                      b #0x7f2938
007f29c0  60 a0 95 e5                                      ldr sl, [r5, #0x60]
007f29c4  0a 10 a0 e1                                      mov r1, sl
007f29c8  75 70 ec eb                                      bl #0x30eba4
007f29cc  00 10 a0 e3                                      mov r1, #0
007f29d0  00 80 a0 e1                                      mov r8, r0
007f29d4  4c 6f ec eb                                      bl #0x30e70c
007f29d8  00 00 50 e3                                      cmp r0, #0
007f29dc  f0 ff ff 1a                                      bne #0x7f29a4
007f29e0  00 80 a0 e3                                      mov r8, #0
007f29e4  ee ff ff ea                                      b #0x7f29a4
007f29e8  60 00 95 e5                                      ldr r0, [r5, #0x60]
007f29ec  09 10 a0 e1                                      mov r1, sb
007f29f0  6b 70 ec eb                                      bl #0x30eba4
007f29f4  60 00 85 e5                                      str r0, [r5, #0x60]
007f29f8  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007f29fc  cd ff ff ea                                      b #0x7f2938

; FUNCTION 0x007f2a00, declared_size=144, range_size=144, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint10GetAnchor1Ev
; demangled: b2RevoluteJoint::GetAnchor1() const
; decoder-mode: arm
007f2a00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f2a04  30 40 91 e5                                      ldr r4, [r1, #0x30]
007f2a08  44 70 91 e5                                      ldr r7, [r1, #0x44]
007f2a0c  48 60 91 e5                                      ldr r6, [r1, #0x48]
007f2a10  00 50 a0 e1                                      mov r5, r0
007f2a14  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f2a18  07 00 a0 e1                                      mov r0, r7
007f2a1c  d2 70 ec eb                                      bl #0x30ed6c
007f2a20  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f2a24  00 80 a0 e1                                      mov r8, r0
007f2a28  06 00 a0 e1                                      mov r0, r6
007f2a2c  ce 70 ec eb                                      bl #0x30ed6c
007f2a30  00 10 a0 e1                                      mov r1, r0
007f2a34  08 00 a0 e1                                      mov r0, r8
007f2a38  59 70 ec eb                                      bl #0x30eba4
007f2a3c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f2a40  00 80 a0 e1                                      mov r8, r0
007f2a44  07 00 a0 e1                                      mov r0, r7
007f2a48  c7 70 ec eb                                      bl #0x30ed6c
007f2a4c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f2a50  00 70 a0 e1                                      mov r7, r0
007f2a54  06 00 a0 e1                                      mov r0, r6
007f2a58  c3 70 ec eb                                      bl #0x30ed6c
007f2a5c  00 10 a0 e1                                      mov r1, r0
007f2a60  07 00 a0 e1                                      mov r0, r7
007f2a64  4e 70 ec eb                                      bl #0x30eba4
007f2a68  08 10 94 e5                                      ldr r1, [r4, #8]
007f2a6c  4c 70 ec eb                                      bl #0x30eba4
007f2a70  04 10 94 e5                                      ldr r1, [r4, #4]
007f2a74  00 60 a0 e1                                      mov r6, r0
007f2a78  08 00 a0 e1                                      mov r0, r8
007f2a7c  48 70 ec eb                                      bl #0x30eba4
007f2a80  04 60 85 e5                                      str r6, [r5, #4]
007f2a84  00 00 85 e5                                      str r0, [r5]
007f2a88  05 00 a0 e1                                      mov r0, r5
007f2a8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f2a90, declared_size=144, range_size=144, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint10GetAnchor2Ev
; demangled: b2RevoluteJoint::GetAnchor2() const
; decoder-mode: arm
007f2a90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f2a94  34 40 91 e5                                      ldr r4, [r1, #0x34]
007f2a98  4c 70 91 e5                                      ldr r7, [r1, #0x4c]
007f2a9c  50 60 91 e5                                      ldr r6, [r1, #0x50]
007f2aa0  00 50 a0 e1                                      mov r5, r0
007f2aa4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f2aa8  07 00 a0 e1                                      mov r0, r7
007f2aac  ae 70 ec eb                                      bl #0x30ed6c
007f2ab0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f2ab4  00 80 a0 e1                                      mov r8, r0
007f2ab8  06 00 a0 e1                                      mov r0, r6
007f2abc  aa 70 ec eb                                      bl #0x30ed6c
007f2ac0  00 10 a0 e1                                      mov r1, r0
007f2ac4  08 00 a0 e1                                      mov r0, r8
007f2ac8  35 70 ec eb                                      bl #0x30eba4
007f2acc  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f2ad0  00 80 a0 e1                                      mov r8, r0
007f2ad4  07 00 a0 e1                                      mov r0, r7
007f2ad8  a3 70 ec eb                                      bl #0x30ed6c
007f2adc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f2ae0  00 70 a0 e1                                      mov r7, r0
007f2ae4  06 00 a0 e1                                      mov r0, r6
007f2ae8  9f 70 ec eb                                      bl #0x30ed6c
007f2aec  00 10 a0 e1                                      mov r1, r0
007f2af0  07 00 a0 e1                                      mov r0, r7
007f2af4  2a 70 ec eb                                      bl #0x30eba4
007f2af8  08 10 94 e5                                      ldr r1, [r4, #8]
007f2afc  28 70 ec eb                                      bl #0x30eba4
007f2b00  04 10 94 e5                                      ldr r1, [r4, #4]
007f2b04  00 60 a0 e1                                      mov r6, r0
007f2b08  08 00 a0 e1                                      mov r0, r8
007f2b0c  24 70 ec eb                                      bl #0x30eba4
007f2b10  04 60 85 e5                                      str r6, [r5, #4]
007f2b14  00 00 85 e5                                      str r0, [r5]
007f2b18  05 00 a0 e1                                      mov r0, r5
007f2b1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f2b20, declared_size=20, range_size=20, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint16GetReactionForceEv
; demangled: b2RevoluteJoint::GetReactionForce() const
; decoder-mode: arm
007f2b20  54 c0 91 e5                                      ldr ip, [r1, #0x54]
007f2b24  58 20 91 e5                                      ldr r2, [r1, #0x58]
007f2b28  00 c0 80 e5                                      str ip, [r0]
007f2b2c  04 20 80 e5                                      str r2, [r0, #4]
007f2b30  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2b34, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint17GetReactionTorqueEv
; demangled: b2RevoluteJoint::GetReactionTorque() const
; decoder-mode: arm
007f2b34  60 00 90 e5                                      ldr r0, [r0, #0x60]
007f2b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2b3c, declared_size=40, range_size=40, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint13GetJointAngleEv
; demangled: b2RevoluteJoint::GetJointAngle() const
; decoder-mode: arm
007f2b3c  10 40 2d e9                                      push {r4, lr}
007f2b40  30 30 90 e5                                      ldr r3, [r0, #0x30]
007f2b44  34 20 90 e5                                      ldr r2, [r0, #0x34]
007f2b48  00 40 a0 e1                                      mov r4, r0
007f2b4c  38 10 93 e5                                      ldr r1, [r3, #0x38]
007f2b50  38 00 92 e5                                      ldr r0, [r2, #0x38]
007f2b54  14 6e ec eb                                      bl #0x30e3ac
007f2b58  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
007f2b5c  12 6e ec eb                                      bl #0x30e3ac
007f2b60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f2b64, declared_size=28, range_size=28, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint13GetJointSpeedEv
; demangled: b2RevoluteJoint::GetJointSpeed() const
; decoder-mode: arm
007f2b64  10 40 2d e9                                      push {r4, lr}
007f2b68  30 20 90 e5                                      ldr r2, [r0, #0x30]
007f2b6c  34 30 90 e5                                      ldr r3, [r0, #0x34]
007f2b70  48 10 92 e5                                      ldr r1, [r2, #0x48]
007f2b74  48 00 93 e5                                      ldr r0, [r3, #0x48]
007f2b78  0b 6e ec eb                                      bl #0x30e3ac
007f2b7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f2b80, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint14IsMotorEnabledEv
; demangled: b2RevoluteJoint::IsMotorEnabled() const
; decoder-mode: arm
007f2b80  7c 00 d0 e5                                      ldrb r0, [r0, #0x7c]
007f2b84  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2b88, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint11EnableMotorEb
; demangled: b2RevoluteJoint::EnableMotor(bool)
; decoder-mode: arm
007f2b88  7c 10 c0 e5                                      strb r1, [r0, #0x7c]
007f2b8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2b90, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint14GetMotorTorqueEv
; demangled: b2RevoluteJoint::GetMotorTorque() const
; decoder-mode: arm
007f2b90  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
007f2b94  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2b98, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint13SetMotorSpeedEf
; demangled: b2RevoluteJoint::SetMotorSpeed(float)
; decoder-mode: arm
007f2b98  84 10 80 e5                                      str r1, [r0, #0x84]
007f2b9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2ba0, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint17SetMaxMotorTorqueEf
; demangled: b2RevoluteJoint::SetMaxMotorTorque(float)
; decoder-mode: arm
007f2ba0  80 10 80 e5                                      str r1, [r0, #0x80]
007f2ba4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2ba8, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint14IsLimitEnabledEv
; demangled: b2RevoluteJoint::IsLimitEnabled() const
; decoder-mode: arm
007f2ba8  88 00 d0 e5                                      ldrb r0, [r0, #0x88]
007f2bac  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bb0, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint11EnableLimitEb
; demangled: b2RevoluteJoint::EnableLimit(bool)
; decoder-mode: arm
007f2bb0  88 10 c0 e5                                      strb r1, [r0, #0x88]
007f2bb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bb8, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint13GetLowerLimitEv
; demangled: b2RevoluteJoint::GetLowerLimit() const
; decoder-mode: arm
007f2bb8  90 00 90 e5                                      ldr r0, [r0, #0x90]
007f2bbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bc0, declared_size=8, range_size=8, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZNK15b2RevoluteJoint13GetUpperLimitEv
; demangled: b2RevoluteJoint::GetUpperLimit() const
; decoder-mode: arm
007f2bc0  94 00 90 e5                                      ldr r0, [r0, #0x94]
007f2bc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bc8, declared_size=12, range_size=12, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint9SetLimitsEff
; demangled: b2RevoluteJoint::SetLimits(float, float)
; decoder-mode: arm
007f2bc8  94 20 80 e5                                      str r2, [r0, #0x94]
007f2bcc  90 10 80 e5                                      str r1, [r0, #0x90]
007f2bd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bd4, declared_size=4, range_size=4, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJointD1Ev
; demangled: b2RevoluteJoint::~b2RevoluteJoint()
; decoder-mode: arm
007f2bd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007f2bd8, declared_size=20, range_size=20, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJointD0Ev
; demangled: b2RevoluteJoint::~b2RevoluteJoint()
; decoder-mode: arm
007f2bd8  10 40 2d e9                                      push {r4, lr}
007f2bdc  00 40 a0 e1                                      mov r4, r0
007f2be0  b2 6d ec eb                                      bl #0x30e2b0
007f2be4  04 00 a0 e1                                      mov r0, r4
007f2be8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007f2bec, declared_size=1920, range_size=1920, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJoint24SolvePositionConstraintsEv
; demangled: b2RevoluteJoint::SolvePositionConstraints()
; decoder-mode: arm
007f2bec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f2bf0  30 50 90 e5                                      ldr r5, [r0, #0x30]
007f2bf4  2c d0 4d e2                                      sub sp, sp, #0x2c
007f2bf8  00 60 a0 e1                                      mov r6, r0
007f2bfc  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f2c00  44 00 90 e5                                      ldr r0, [r0, #0x44]
007f2c04  e8 6d ec eb                                      bl #0x30e3ac
007f2c08  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f2c0c  00 80 a0 e1                                      mov r8, r0
007f2c10  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f2c14  e4 6d ec eb                                      bl #0x30e3ac
007f2c18  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f2c1c  00 70 a0 e1                                      mov r7, r0
007f2c20  08 00 a0 e1                                      mov r0, r8
007f2c24  50 70 ec eb                                      bl #0x30ed6c
007f2c28  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f2c2c  00 a0 a0 e1                                      mov sl, r0
007f2c30  07 00 a0 e1                                      mov r0, r7
007f2c34  4c 70 ec eb                                      bl #0x30ed6c
007f2c38  00 10 a0 e1                                      mov r1, r0
007f2c3c  0a 00 a0 e1                                      mov r0, sl
007f2c40  d7 6f ec eb                                      bl #0x30eba4
007f2c44  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f2c48  00 90 a0 e1                                      mov sb, r0
007f2c4c  08 00 a0 e1                                      mov r0, r8
007f2c50  45 70 ec eb                                      bl #0x30ed6c
007f2c54  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f2c58  00 80 a0 e1                                      mov r8, r0
007f2c5c  07 00 a0 e1                                      mov r0, r7
007f2c60  41 70 ec eb                                      bl #0x30ed6c
007f2c64  00 10 a0 e1                                      mov r1, r0
007f2c68  08 00 a0 e1                                      mov r0, r8
007f2c6c  cc 6f ec eb                                      bl #0x30eba4
007f2c70  34 40 96 e5                                      ldr r4, [r6, #0x34]
007f2c74  00 a0 a0 e1                                      mov sl, r0
007f2c78  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007f2c7c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f2c80  c9 6d ec eb                                      bl #0x30e3ac
007f2c84  20 10 94 e5                                      ldr r1, [r4, #0x20]
007f2c88  00 b0 a0 e1                                      mov fp, r0
007f2c8c  50 00 96 e5                                      ldr r0, [r6, #0x50]
007f2c90  c5 6d ec eb                                      bl #0x30e3ac
007f2c94  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f2c98  00 70 a0 e1                                      mov r7, r0
007f2c9c  0b 00 a0 e1                                      mov r0, fp
007f2ca0  31 70 ec eb                                      bl #0x30ed6c
007f2ca4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f2ca8  00 80 a0 e1                                      mov r8, r0
007f2cac  07 00 a0 e1                                      mov r0, r7
007f2cb0  2d 70 ec eb                                      bl #0x30ed6c
007f2cb4  00 10 a0 e1                                      mov r1, r0
007f2cb8  08 00 a0 e1                                      mov r0, r8
007f2cbc  b8 6f ec eb                                      bl #0x30eba4
007f2cc0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f2cc4  00 80 a0 e1                                      mov r8, r0
007f2cc8  0b 00 a0 e1                                      mov r0, fp
007f2ccc  26 70 ec eb                                      bl #0x30ed6c
007f2cd0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f2cd4  00 b0 a0 e1                                      mov fp, r0
007f2cd8  07 00 a0 e1                                      mov r0, r7
007f2cdc  22 70 ec eb                                      bl #0x30ed6c
007f2ce0  00 10 a0 e1                                      mov r1, r0
007f2ce4  0b 00 a0 e1                                      mov r0, fp
007f2ce8  ad 6f ec eb                                      bl #0x30eba4
007f2cec  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007f2cf0  00 70 a0 e1                                      mov r7, r0
007f2cf4  09 00 a0 e1                                      mov r0, sb
007f2cf8  a9 6f ec eb                                      bl #0x30eba4
007f2cfc  30 10 95 e5                                      ldr r1, [r5, #0x30]
007f2d00  00 30 a0 e1                                      mov r3, r0
007f2d04  0a 00 a0 e1                                      mov r0, sl
007f2d08  00 30 8d e5                                      str r3, [sp]
007f2d0c  a4 6f ec eb                                      bl #0x30eba4
007f2d10  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007f2d14  00 c0 a0 e1                                      mov ip, r0
007f2d18  08 00 a0 e1                                      mov r0, r8
007f2d1c  08 c0 8d e5                                      str ip, [sp, #8]
007f2d20  9f 6f ec eb                                      bl #0x30eba4
007f2d24  30 10 94 e5                                      ldr r1, [r4, #0x30]
007f2d28  00 b0 a0 e1                                      mov fp, r0
007f2d2c  07 00 a0 e1                                      mov r0, r7
007f2d30  9b 6f ec eb                                      bl #0x30eba4
007f2d34  00 30 9d e5                                      ldr r3, [sp]
007f2d38  00 20 a0 e1                                      mov r2, r0
007f2d3c  0b 00 a0 e1                                      mov r0, fp
007f2d40  03 10 a0 e1                                      mov r1, r3
007f2d44  04 20 8d e5                                      str r2, [sp, #4]
007f2d48  97 6d ec eb                                      bl #0x30e3ac
007f2d4c  04 10 9d e9                                      ldmib sp, {r2, ip}
007f2d50  00 30 a0 e1                                      mov r3, r0
007f2d54  0c 10 a0 e1                                      mov r1, ip
007f2d58  02 00 a0 e1                                      mov r0, r2
007f2d5c  00 30 8d e5                                      str r3, [sp]
007f2d60  91 6d ec eb                                      bl #0x30e3ac
007f2d64  00 30 9d e5                                      ldr r3, [sp]
007f2d68  00 20 a0 e1                                      mov r2, r0
007f2d6c  04 20 8d e5                                      str r2, [sp, #4]
007f2d70  03 10 a0 e1                                      mov r1, r3
007f2d74  03 00 a0 e1                                      mov r0, r3
007f2d78  fb 6f ec eb                                      bl #0x30ed6c
007f2d7c  04 20 9d e5                                      ldr r2, [sp, #4]
007f2d80  00 b0 a0 e1                                      mov fp, r0
007f2d84  02 10 a0 e1                                      mov r1, r2
007f2d88  02 00 a0 e1                                      mov r0, r2
007f2d8c  f6 6f ec eb                                      bl #0x30ed6c
007f2d90  00 10 a0 e1                                      mov r1, r0
007f2d94  0b 00 a0 e1                                      mov r0, fp
007f2d98  81 6f ec eb                                      bl #0x30eba4
007f2d9c  e0 6c ec eb                                      bl #0x30e124
007f2da0  20 00 8d e5                                      str r0, [sp, #0x20]
007f2da4  78 10 94 e5                                      ldr r1, [r4, #0x78]
007f2da8  78 00 95 e5                                      ldr r0, [r5, #0x78]
007f2dac  7c 6f ec eb                                      bl #0x30eba4
007f2db0  0c 00 8d e5                                      str r0, [sp, #0xc]
007f2db4  80 00 95 e5                                      ldr r0, [r5, #0x80]
007f2db8  0a 10 a0 e1                                      mov r1, sl
007f2dbc  ea 6f ec eb                                      bl #0x30ed6c
007f2dc0  0a 10 a0 e1                                      mov r1, sl
007f2dc4  e8 6f ec eb                                      bl #0x30ed6c
007f2dc8  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f2dcc  00 c0 a0 e1                                      mov ip, r0
007f2dd0  08 c0 8d e5                                      str ip, [sp, #8]
007f2dd4  02 01 81 e2                                      add r0, r1, #0x80000000
007f2dd8  09 10 a0 e1                                      mov r1, sb
007f2ddc  e2 6f ec eb                                      bl #0x30ed6c
007f2de0  0a 10 a0 e1                                      mov r1, sl
007f2de4  e0 6f ec eb                                      bl #0x30ed6c
007f2de8  10 00 8d e5                                      str r0, [sp, #0x10]
007f2dec  80 00 95 e5                                      ldr r0, [r5, #0x80]
007f2df0  09 10 a0 e1                                      mov r1, sb
007f2df4  dc 6f ec eb                                      bl #0x30ed6c
007f2df8  09 10 a0 e1                                      mov r1, sb
007f2dfc  da 6f ec eb                                      bl #0x30ed6c
007f2e00  80 b0 94 e5                                      ldr fp, [r4, #0x80]
007f2e04  07 10 a0 e1                                      mov r1, r7
007f2e08  14 00 8d e5                                      str r0, [sp, #0x14]
007f2e0c  0b 00 a0 e1                                      mov r0, fp
007f2e10  d5 6f ec eb                                      bl #0x30ed6c
007f2e14  07 10 a0 e1                                      mov r1, r7
007f2e18  d3 6f ec eb                                      bl #0x30ed6c
007f2e1c  08 10 a0 e1                                      mov r1, r8
007f2e20  18 00 8d e5                                      str r0, [sp, #0x18]
007f2e24  02 01 8b e2                                      add r0, fp, #0x80000000
007f2e28  cf 6f ec eb                                      bl #0x30ed6c
007f2e2c  07 10 a0 e1                                      mov r1, r7
007f2e30  cd 6f ec eb                                      bl #0x30ed6c
007f2e34  08 10 a0 e1                                      mov r1, r8
007f2e38  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f2e3c  0b 00 a0 e1                                      mov r0, fp
007f2e40  c9 6f ec eb                                      bl #0x30ed6c
007f2e44  08 10 a0 e1                                      mov r1, r8
007f2e48  c7 6f ec eb                                      bl #0x30ed6c
007f2e4c  08 c0 9d e5                                      ldr ip, [sp, #8]
007f2e50  24 00 8d e5                                      str r0, [sp, #0x24]
007f2e54  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2e58  0c 10 a0 e1                                      mov r1, ip
007f2e5c  50 6f ec eb                                      bl #0x30eba4
007f2e60  00 10 a0 e3                                      mov r1, #0
007f2e64  00 b0 a0 e1                                      mov fp, r0
007f2e68  10 00 9d e5                                      ldr r0, [sp, #0x10]
007f2e6c  4c 6f ec eb                                      bl #0x30eba4
007f2e70  14 10 9d e5                                      ldr r1, [sp, #0x14]
007f2e74  00 c0 a0 e1                                      mov ip, r0
007f2e78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2e7c  08 c0 8d e5                                      str ip, [sp, #8]
007f2e80  47 6f ec eb                                      bl #0x30eba4
007f2e84  0b 10 a0 e1                                      mov r1, fp
007f2e88  0c 00 8d e5                                      str r0, [sp, #0xc]
007f2e8c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f2e90  43 6f ec eb                                      bl #0x30eba4
007f2e94  08 c0 9d e5                                      ldr ip, [sp, #8]
007f2e98  18 00 8d e5                                      str r0, [sp, #0x18]
007f2e9c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f2ea0  0c 10 a0 e1                                      mov r1, ip
007f2ea4  3e 6f ec eb                                      bl #0x30eba4
007f2ea8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f2eac  00 b0 a0 e1                                      mov fp, r0
007f2eb0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007f2eb4  3a 6f ec eb                                      bl #0x30eba4
007f2eb8  00 c0 a0 e1                                      mov ip, r0
007f2ebc  00 10 a0 e1                                      mov r1, r0
007f2ec0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f2ec4  08 c0 8d e5                                      str ip, [sp, #8]
007f2ec8  a7 6f ec eb                                      bl #0x30ed6c
007f2ecc  0b 10 a0 e1                                      mov r1, fp
007f2ed0  0c 00 8d e5                                      str r0, [sp, #0xc]
007f2ed4  0b 00 a0 e1                                      mov r0, fp
007f2ed8  a3 6f ec eb                                      bl #0x30ed6c
007f2edc  00 10 a0 e1                                      mov r1, r0
007f2ee0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f2ee4  30 6d ec eb                                      bl #0x30e3ac
007f2ee8  00 30 9d e5                                      ldr r3, [sp]
007f2eec  04 20 9d e5                                      ldr r2, [sp, #4]
007f2ef0  00 10 a0 e1                                      mov r1, r0
007f2ef4  02 31 83 e2                                      add r3, r3, #0x80000000
007f2ef8  02 21 82 e2                                      add r2, r2, #0x80000000
007f2efc  fe 05 a0 e3                                      mov r0, #0x3f800000
007f2f00  14 20 8d e5                                      str r2, [sp, #0x14]
007f2f04  10 30 8d e5                                      str r3, [sp, #0x10]
007f2f08  61 6f ec eb                                      bl #0x30ec94
007f2f0c  08 c0 9d e5                                      ldr ip, [sp, #8]
007f2f10  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f2f14  1c 00 8d e5                                      str r0, [sp, #0x1c]
007f2f18  0c 00 a0 e1                                      mov r0, ip
007f2f1c  92 6f ec eb                                      bl #0x30ed6c
007f2f20  14 10 9d e5                                      ldr r1, [sp, #0x14]
007f2f24  00 30 a0 e1                                      mov r3, r0
007f2f28  0b 00 a0 e1                                      mov r0, fp
007f2f2c  00 30 8d e5                                      str r3, [sp]
007f2f30  8d 6f ec eb                                      bl #0x30ed6c
007f2f34  00 30 9d e5                                      ldr r3, [sp]
007f2f38  00 10 a0 e1                                      mov r1, r0
007f2f3c  03 00 a0 e1                                      mov r0, r3
007f2f40  19 6d ec eb                                      bl #0x30e3ac
007f2f44  00 10 a0 e1                                      mov r1, r0
007f2f48  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f2f4c  86 6f ec eb                                      bl #0x30ed6c
007f2f50  14 10 9d e5                                      ldr r1, [sp, #0x14]
007f2f54  0c 00 8d e5                                      str r0, [sp, #0xc]
007f2f58  18 00 9d e5                                      ldr r0, [sp, #0x18]
007f2f5c  82 6f ec eb                                      bl #0x30ed6c
007f2f60  10 10 9d e5                                      ldr r1, [sp, #0x10]
007f2f64  00 30 a0 e1                                      mov r3, r0
007f2f68  0b 00 a0 e1                                      mov r0, fp
007f2f6c  00 30 8d e5                                      str r3, [sp]
007f2f70  7d 6f ec eb                                      bl #0x30ed6c
007f2f74  00 30 9d e5                                      ldr r3, [sp]
007f2f78  00 10 a0 e1                                      mov r1, r0
007f2f7c  03 00 a0 e1                                      mov r0, r3
007f2f80  09 6d ec eb                                      bl #0x30e3ac
007f2f84  00 10 a0 e1                                      mov r1, r0
007f2f88  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007f2f8c  76 6f ec eb                                      bl #0x30ed6c
007f2f90  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f2f94  00 b0 a0 e1                                      mov fp, r0
007f2f98  78 00 95 e5                                      ldr r0, [r5, #0x78]
007f2f9c  72 6f ec eb                                      bl #0x30ed6c
007f2fa0  00 10 a0 e1                                      mov r1, r0
007f2fa4  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007f2fa8  ff 6c ec eb                                      bl #0x30e3ac
007f2fac  0b 10 a0 e1                                      mov r1, fp
007f2fb0  2c 00 85 e5                                      str r0, [r5, #0x2c]
007f2fb4  78 00 95 e5                                      ldr r0, [r5, #0x78]
007f2fb8  6b 6f ec eb                                      bl #0x30ed6c
007f2fbc  00 10 a0 e1                                      mov r1, r0
007f2fc0  30 00 95 e5                                      ldr r0, [r5, #0x30]
007f2fc4  f8 6c ec eb                                      bl #0x30e3ac
007f2fc8  0b 10 a0 e1                                      mov r1, fp
007f2fcc  30 00 85 e5                                      str r0, [r5, #0x30]
007f2fd0  09 00 a0 e1                                      mov r0, sb
007f2fd4  64 6f ec eb                                      bl #0x30ed6c
007f2fd8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f2fdc  00 90 a0 e1                                      mov sb, r0
007f2fe0  0a 00 a0 e1                                      mov r0, sl
007f2fe4  60 6f ec eb                                      bl #0x30ed6c
007f2fe8  00 10 a0 e1                                      mov r1, r0
007f2fec  09 00 a0 e1                                      mov r0, sb
007f2ff0  ed 6c ec eb                                      bl #0x30e3ac
007f2ff4  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f2ff8  5b 6f ec eb                                      bl #0x30ed6c
007f2ffc  00 10 a0 e1                                      mov r1, r0
007f3000  38 00 95 e5                                      ldr r0, [r5, #0x38]
007f3004  e8 6c ec eb                                      bl #0x30e3ac
007f3008  38 00 85 e5                                      str r0, [r5, #0x38]
007f300c  78 a0 94 e5                                      ldr sl, [r4, #0x78]
007f3010  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f3014  0a 00 a0 e1                                      mov r0, sl
007f3018  53 6f ec eb                                      bl #0x30ed6c
007f301c  00 10 a0 e1                                      mov r1, r0
007f3020  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007f3024  de 6e ec eb                                      bl #0x30eba4
007f3028  0b 10 a0 e1                                      mov r1, fp
007f302c  2c 00 84 e5                                      str r0, [r4, #0x2c]
007f3030  0a 00 a0 e1                                      mov r0, sl
007f3034  4c 6f ec eb                                      bl #0x30ed6c
007f3038  00 10 a0 e1                                      mov r1, r0
007f303c  30 00 94 e5                                      ldr r0, [r4, #0x30]
007f3040  d7 6e ec eb                                      bl #0x30eba4
007f3044  0b 10 a0 e1                                      mov r1, fp
007f3048  30 00 84 e5                                      str r0, [r4, #0x30]
007f304c  08 00 a0 e1                                      mov r0, r8
007f3050  45 6f ec eb                                      bl #0x30ed6c
007f3054  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007f3058  00 80 a0 e1                                      mov r8, r0
007f305c  07 00 a0 e1                                      mov r0, r7
007f3060  41 6f ec eb                                      bl #0x30ed6c
007f3064  00 10 a0 e1                                      mov r1, r0
007f3068  08 00 a0 e1                                      mov r0, r8
007f306c  ce 6c ec eb                                      bl #0x30e3ac
007f3070  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f3074  3c 6f ec eb                                      bl #0x30ed6c
007f3078  00 10 a0 e1                                      mov r1, r0
007f307c  38 00 94 e5                                      ldr r0, [r4, #0x38]
007f3080  c7 6e ec eb                                      bl #0x30eba4
007f3084  38 00 84 e5                                      str r0, [r4, #0x38]
007f3088  05 00 a0 e1                                      mov r0, r5
007f308c  62 d1 ff eb                                      bl #0x7e761c
007f3090  04 00 a0 e1                                      mov r0, r4
007f3094  60 d1 ff eb                                      bl #0x7e761c
007f3098  88 30 d6 e5                                      ldrb r3, [r6, #0x88]
007f309c  00 00 53 e3                                      cmp r3, #0
007f30a0  02 00 00 0a                                      beq #0x7f30b0
007f30a4  98 80 96 e5                                      ldr r8, [r6, #0x98]
007f30a8  00 00 58 e3                                      cmp r8, #0
007f30ac  10 00 00 1a                                      bne #0x7f30f4
007f30b0  00 70 a0 e3                                      mov r7, #0
007f30b4  0a 17 0d e3                                      movw r1, #0xd70a
007f30b8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007f30bc  a3 1b 43 e3                                      movt r1, #0x3ba3
007f30c0  39 6e ec eb                                      bl #0x30e9ac
007f30c4  00 00 50 e3                                      cmp r0, #0
007f30c8  07 00 00 0a                                      beq #0x7f30ec
007f30cc  36 1a 0f e3                                      movw r1, #0xfa36
007f30d0  07 00 a0 e1                                      mov r0, r7
007f30d4  0e 1d 43 e3                                      movt r1, #0x3d0e
007f30d8  33 6e ec eb                                      bl #0x30e9ac
007f30dc  00 00 50 e3                                      cmp r0, #0
007f30e0  00 00 a0 e3                                      mov r0, #0
007f30e4  01 00 a0 13                                      movne r0, #1
007f30e8  70 00 ef e6                                      uxtb r0, r0
007f30ec  2c d0 8d e2                                      add sp, sp, #0x2c
007f30f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007f30f4  38 a0 95 e5                                      ldr sl, [r5, #0x38]
007f30f8  38 00 94 e5                                      ldr r0, [r4, #0x38]
007f30fc  0a 10 a0 e1                                      mov r1, sl
007f3100  a9 6c ec eb                                      bl #0x30e3ac
007f3104  8c 10 96 e5                                      ldr r1, [r6, #0x8c]
007f3108  a7 6c ec eb                                      bl #0x30e3ac
007f310c  03 00 58 e3                                      cmp r8, #3
007f3110  00 70 a0 e1                                      mov r7, r0
007f3114  18 00 00 0a                                      beq #0x7f317c
007f3118  01 00 58 e3                                      cmp r8, #1
007f311c  2a 00 00 0a                                      beq #0x7f31cc
007f3120  02 00 58 e3                                      cmp r8, #2
007f3124  00 60 a0 13                                      movne r6, #0
007f3128  06 70 a0 11                                      movne r7, r6
007f312c  54 00 00 0a                                      beq #0x7f3284
007f3130  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f3134  06 00 a0 e1                                      mov r0, r6
007f3138  0b 6f ec eb                                      bl #0x30ed6c
007f313c  00 10 a0 e1                                      mov r1, r0
007f3140  0a 00 a0 e1                                      mov r0, sl
007f3144  98 6c ec eb                                      bl #0x30e3ac
007f3148  38 00 85 e5                                      str r0, [r5, #0x38]
007f314c  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f3150  06 00 a0 e1                                      mov r0, r6
007f3154  04 6f ec eb                                      bl #0x30ed6c
007f3158  00 10 a0 e1                                      mov r1, r0
007f315c  38 00 94 e5                                      ldr r0, [r4, #0x38]
007f3160  8f 6e ec eb                                      bl #0x30eba4
007f3164  38 00 84 e5                                      str r0, [r4, #0x38]
007f3168  05 00 a0 e1                                      mov r0, r5
007f316c  2a d1 ff eb                                      bl #0x7e761c
007f3170  04 00 a0 e1                                      mov r0, r4
007f3174  28 d1 ff eb                                      bl #0x7e761c
007f3178  cd ff ff ea                                      b #0x7f30b4
007f317c  36 1a 0f e3                                      movw r1, #0xfa36
007f3180  0e 1e 43 e3                                      movt r1, #0x3e0e
007f3184  60 6d ec eb                                      bl #0x30e70c
007f3188  00 00 50 e3                                      cmp r0, #0
007f318c  34 00 00 0a                                      beq #0x7f3264
007f3190  36 1a 0f e3                                      movw r1, #0xfa36
007f3194  07 00 a0 e1                                      mov r0, r7
007f3198  0e 1e 4b e3                                      movt r1, #0xbe0e
007f319c  5a 6d ec eb                                      bl #0x30e70c
007f31a0  00 00 50 e3                                      cmp r0, #0
007f31a4  65 00 00 0a                                      beq #0x7f3340
007f31a8  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f31ac  36 1a 0f e3                                      movw r1, #0xfa36
007f31b0  0e 1e 4b e3                                      movt r1, #0xbe0e
007f31b4  02 01 80 e2                                      add r0, r0, #0x80000000
007f31b8  eb 6e ec eb                                      bl #0x30ed6c
007f31bc  36 7a 0f e3                                      movw r7, #0xfa36
007f31c0  0e 7e 43 e3                                      movt r7, #0x3e0e
007f31c4  00 60 a0 e1                                      mov r6, r0
007f31c8  d8 ff ff ea                                      b #0x7f3130
007f31cc  90 10 96 e5                                      ldr r1, [r6, #0x90]
007f31d0  75 6c ec eb                                      bl #0x30e3ac
007f31d4  02 71 80 e2                                      add r7, r0, #0x80000000
007f31d8  00 80 a0 e1                                      mov r8, r0
007f31dc  00 10 a0 e3                                      mov r1, #0
007f31e0  07 00 a0 e1                                      mov r0, r7
007f31e4  48 6d ec eb                                      bl #0x30e70c
007f31e8  36 1a 0f e3                                      movw r1, #0xfa36
007f31ec  00 00 50 e3                                      cmp r0, #0
007f31f0  0e 1d 43 e3                                      movt r1, #0x3d0e
007f31f4  08 00 a0 e1                                      mov r0, r8
007f31f8  00 70 a0 13                                      movne r7, #0
007f31fc  68 6e ec eb                                      bl #0x30eba4
007f3200  00 10 a0 e3                                      mov r1, #0
007f3204  00 80 a0 e1                                      mov r8, r0
007f3208  3f 6d ec eb                                      bl #0x30e70c
007f320c  00 00 50 e3                                      cmp r0, #0
007f3210  00 80 a0 03                                      moveq r8, #0
007f3214  41 00 00 1a                                      bne #0x7f3320
007f3218  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f321c  64 a0 96 e5                                      ldr sl, [r6, #0x64]
007f3220  08 10 a0 e1                                      mov r1, r8
007f3224  02 01 80 e2                                      add r0, r0, #0x80000000
007f3228  cf 6e ec eb                                      bl #0x30ed6c
007f322c  0a 10 a0 e1                                      mov r1, sl
007f3230  5b 6e ec eb                                      bl #0x30eba4
007f3234  00 10 a0 e3                                      mov r1, #0
007f3238  00 80 a0 e1                                      mov r8, r0
007f323c  2d 6c ec eb                                      bl #0x30e2f8
007f3240  00 00 50 e3                                      cmp r0, #0
007f3244  33 00 00 0a                                      beq #0x7f3318
007f3248  64 80 86 e5                                      str r8, [r6, #0x64]
007f324c  0a 10 a0 e1                                      mov r1, sl
007f3250  08 00 a0 e1                                      mov r0, r8
007f3254  54 6c ec eb                                      bl #0x30e3ac
007f3258  38 a0 95 e5                                      ldr sl, [r5, #0x38]
007f325c  00 60 a0 e1                                      mov r6, r0
007f3260  b2 ff ff ea                                      b #0x7f3130
007f3264  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f3268  36 1a 0f e3                                      movw r1, #0xfa36
007f326c  0e 1e 43 e3                                      movt r1, #0x3e0e
007f3270  02 01 80 e2                                      add r0, r0, #0x80000000
007f3274  01 70 a0 e1                                      mov r7, r1
007f3278  bb 6e ec eb                                      bl #0x30ed6c
007f327c  00 60 a0 e1                                      mov r6, r0
007f3280  aa ff ff ea                                      b #0x7f3130
007f3284  94 10 96 e5                                      ldr r1, [r6, #0x94]
007f3288  47 6c ec eb                                      bl #0x30e3ac
007f328c  00 10 a0 e3                                      mov r1, #0
007f3290  00 80 a0 e1                                      mov r8, r0
007f3294  1c 6d ec eb                                      bl #0x30e70c
007f3298  36 1a 0f e3                                      movw r1, #0xfa36
007f329c  00 00 50 e3                                      cmp r0, #0
007f32a0  0e 1d 43 e3                                      movt r1, #0x3d0e
007f32a4  08 00 a0 e1                                      mov r0, r8
007f32a8  08 70 a0 01                                      moveq r7, r8
007f32ac  00 70 a0 13                                      movne r7, #0
007f32b0  3d 6c ec eb                                      bl #0x30e3ac
007f32b4  36 1a 0f e3                                      movw r1, #0xfa36
007f32b8  0e 1e 43 e3                                      movt r1, #0x3e0e
007f32bc  00 80 a0 e1                                      mov r8, r0
007f32c0  11 6d ec eb                                      bl #0x30e70c
007f32c4  00 00 50 e3                                      cmp r0, #0
007f32c8  36 8a 0f 03                                      movweq r8, #0xfa36
007f32cc  0e 8e 43 03                                      movteq r8, #0x3e0e
007f32d0  04 00 00 0a                                      beq #0x7f32e8
007f32d4  08 00 a0 e1                                      mov r0, r8
007f32d8  00 10 a0 e3                                      mov r1, #0
007f32dc  0a 6d ec eb                                      bl #0x30e70c
007f32e0  00 00 50 e3                                      cmp r0, #0
007f32e4  00 80 a0 13                                      movne r8, #0
007f32e8  78 00 96 e5                                      ldr r0, [r6, #0x78]
007f32ec  64 a0 96 e5                                      ldr sl, [r6, #0x64]
007f32f0  08 10 a0 e1                                      mov r1, r8
007f32f4  02 01 80 e2                                      add r0, r0, #0x80000000
007f32f8  9b 6e ec eb                                      bl #0x30ed6c
007f32fc  0a 10 a0 e1                                      mov r1, sl
007f3300  27 6e ec eb                                      bl #0x30eba4
007f3304  00 10 a0 e3                                      mov r1, #0
007f3308  00 80 a0 e1                                      mov r8, r0
007f330c  fe 6c ec eb                                      bl #0x30e70c
007f3310  00 00 50 e3                                      cmp r0, #0
007f3314  cb ff ff 1a                                      bne #0x7f3248
007f3318  00 80 a0 e3                                      mov r8, #0
007f331c  c9 ff ff ea                                      b #0x7f3248
007f3320  36 1a 0f e3                                      movw r1, #0xfa36
007f3324  08 00 a0 e1                                      mov r0, r8
007f3328  0e 1e 4b e3                                      movt r1, #0xbe0e
007f332c  f6 6c ec eb                                      bl #0x30e70c
007f3330  00 00 50 e3                                      cmp r0, #0
007f3334  36 8a 0f 13                                      movwne r8, #0xfa36
007f3338  0e 8e 4b 13                                      movtne r8, #0xbe0e
007f333c  b5 ff ff ea                                      b #0x7f3218
007f3340  78 10 96 e5                                      ldr r1, [r6, #0x78]
007f3344  07 00 a0 e1                                      mov r0, r7
007f3348  02 11 81 e2                                      add r1, r1, #0x80000000
007f334c  86 6e ec eb                                      bl #0x30ed6c
007f3350  00 10 a0 e3                                      mov r1, #0
007f3354  00 60 a0 e1                                      mov r6, r0
007f3358  07 00 a0 e1                                      mov r0, r7
007f335c  e5 6b ec eb                                      bl #0x30e2f8
007f3360  00 00 50 e3                                      cmp r0, #0
007f3364  02 71 87 02                                      addeq r7, r7, #0x80000000
007f3368  70 ff ff ea                                      b #0x7f3130

; FUNCTION 0x007f336c, declared_size=168, range_size=168, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJointC1EPK18b2RevoluteJointDef
; demangled: b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJointDef const*)
; decoder-mode: arm
007f336c  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3370  94 60 9f e5                                      ldr r6, [pc, #0x94]
007f3374  00 40 a0 e1                                      mov r4, r0
007f3378  01 50 a0 e1                                      mov r5, r1
007f337c  97 df ff eb                                      bl #0x7eb1e0
007f3380  88 20 9f e5                                      ldr r2, [pc, #0x88]
007f3384  06 60 8f e0                                      add r6, pc, r6
007f3388  00 30 a0 e3                                      mov r3, #0
007f338c  02 20 96 e7                                      ldr r2, [r6, r2]
007f3390  04 00 a0 e1                                      mov r0, r4
007f3394  08 20 82 e2                                      add r2, r2, #8
007f3398  00 20 84 e5                                      str r2, [r4]
007f339c  14 20 95 e5                                      ldr r2, [r5, #0x14]
007f33a0  44 20 84 e5                                      str r2, [r4, #0x44]
007f33a4  18 20 95 e5                                      ldr r2, [r5, #0x18]
007f33a8  48 20 84 e5                                      str r2, [r4, #0x48]
007f33ac  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007f33b0  4c 20 84 e5                                      str r2, [r4, #0x4c]
007f33b4  20 20 95 e5                                      ldr r2, [r5, #0x20]
007f33b8  50 20 84 e5                                      str r2, [r4, #0x50]
007f33bc  24 20 95 e5                                      ldr r2, [r5, #0x24]
007f33c0  64 30 84 e5                                      str r3, [r4, #0x64]
007f33c4  54 30 84 e5                                      str r3, [r4, #0x54]
007f33c8  8c 20 84 e5                                      str r2, [r4, #0x8c]
007f33cc  58 30 84 e5                                      str r3, [r4, #0x58]
007f33d0  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f33d4  60 30 84 e5                                      str r3, [r4, #0x60]
007f33d8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007f33dc  90 30 84 e5                                      str r3, [r4, #0x90]
007f33e0  30 30 95 e5                                      ldr r3, [r5, #0x30]
007f33e4  94 30 84 e5                                      str r3, [r4, #0x94]
007f33e8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007f33ec  80 30 84 e5                                      str r3, [r4, #0x80]
007f33f0  38 30 95 e5                                      ldr r3, [r5, #0x38]
007f33f4  84 30 84 e5                                      str r3, [r4, #0x84]
007f33f8  28 30 d5 e5                                      ldrb r3, [r5, #0x28]
007f33fc  88 30 c4 e5                                      strb r3, [r4, #0x88]
007f3400  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
007f3404  7c 30 c4 e5                                      strb r3, [r4, #0x7c]
007f3408  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007f340c  0c 17 1a 00 f4 3c 00 00                          .byte 0x0c, 0x17, 0x1a, 0x00, 0xf4, 0x3c, 0x00, 0x00

; FUNCTION 0x007f3414, declared_size=168, range_size=168, mode=arm
; class-group: b2RevoluteJoint
; alias: _ZN15b2RevoluteJointC2EPK18b2RevoluteJointDef
; demangled: b2RevoluteJoint::b2RevoluteJoint(b2RevoluteJointDef const*)
; decoder-mode: arm
007f3414  70 40 2d e9                                      push {r4, r5, r6, lr}
007f3418  94 60 9f e5                                      ldr r6, [pc, #0x94]
007f341c  00 40 a0 e1                                      mov r4, r0
007f3420  01 50 a0 e1                                      mov r5, r1
007f3424  6d df ff eb                                      bl #0x7eb1e0
007f3428  88 20 9f e5                                      ldr r2, [pc, #0x88]
007f342c  06 60 8f e0                                      add r6, pc, r6
007f3430  00 30 a0 e3                                      mov r3, #0
007f3434  02 20 96 e7                                      ldr r2, [r6, r2]
007f3438  04 00 a0 e1                                      mov r0, r4
007f343c  08 20 82 e2                                      add r2, r2, #8
007f3440  00 20 84 e5                                      str r2, [r4]
007f3444  14 20 95 e5                                      ldr r2, [r5, #0x14]
007f3448  44 20 84 e5                                      str r2, [r4, #0x44]
007f344c  18 20 95 e5                                      ldr r2, [r5, #0x18]
007f3450  48 20 84 e5                                      str r2, [r4, #0x48]
007f3454  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007f3458  4c 20 84 e5                                      str r2, [r4, #0x4c]
007f345c  20 20 95 e5                                      ldr r2, [r5, #0x20]
007f3460  50 20 84 e5                                      str r2, [r4, #0x50]
007f3464  24 20 95 e5                                      ldr r2, [r5, #0x24]
007f3468  64 30 84 e5                                      str r3, [r4, #0x64]
007f346c  54 30 84 e5                                      str r3, [r4, #0x54]
007f3470  8c 20 84 e5                                      str r2, [r4, #0x8c]
007f3474  58 30 84 e5                                      str r3, [r4, #0x58]
007f3478  5c 30 84 e5                                      str r3, [r4, #0x5c]
007f347c  60 30 84 e5                                      str r3, [r4, #0x60]
007f3480  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007f3484  90 30 84 e5                                      str r3, [r4, #0x90]
007f3488  30 30 95 e5                                      ldr r3, [r5, #0x30]
007f348c  94 30 84 e5                                      str r3, [r4, #0x94]
007f3490  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007f3494  80 30 84 e5                                      str r3, [r4, #0x80]
007f3498  38 30 95 e5                                      ldr r3, [r5, #0x38]
007f349c  84 30 84 e5                                      str r3, [r4, #0x84]
007f34a0  28 30 d5 e5                                      ldrb r3, [r5, #0x28]
007f34a4  88 30 c4 e5                                      strb r3, [r4, #0x88]
007f34a8  34 30 d5 e5                                      ldrb r3, [r5, #0x34]
007f34ac  7c 30 c4 e5                                      strb r3, [r4, #0x7c]
007f34b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007f34b4  64 16 1a 00 f4 3c 00 00                          .byte 0x64, 0x16, 0x1a, 0x00, 0xf4, 0x3c, 0x00, 0x00
