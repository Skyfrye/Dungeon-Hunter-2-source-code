; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041fe84, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::smart_ptr_proxy
; alias: _ZN7gameswf15smart_ptr_proxyaSEPNS_10weak_proxyE
; demangled: gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*)
; decoder-mode: arm
0041fe84  70 40 2d e9                                      push {r4, r5, r6, lr}
0041fe88  00 50 a0 e1                                      mov r5, r0
0041fe8c  00 00 90 e5                                      ldr r0, [r0]
0041fe90  01 40 a0 e1                                      mov r4, r1
0041fe94  00 00 51 e1                                      cmp r1, r0
0041fe98  0b 00 00 0a                                      beq #0x41fecc
0041fe9c  00 00 50 e3                                      cmp r0, #0
0041fea0  04 00 00 0a                                      beq #0x41feb8
0041fea4  00 10 90 e5                                      ldr r1, [r0]
0041fea8  01 10 41 e2                                      sub r1, r1, #1
0041feac  00 00 51 e3                                      cmp r1, #0
0041feb0  00 10 80 e5                                      str r1, [r0]
0041feb4  05 00 00 0a                                      beq #0x41fed0
0041feb8  00 00 54 e3                                      cmp r4, #0
0041febc  00 40 85 e5                                      str r4, [r5]
0041fec0  00 30 94 15                                      ldrne r3, [r4]
0041fec4  01 30 83 12                                      addne r3, r3, #1
0041fec8  00 30 84 15                                      strne r3, [r4]
0041fecc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041fed0  18 cb 0c eb                                      bl #0x752b38
0041fed4  f7 ff ff ea                                      b #0x41feb8

; FUNCTION 0x0043c404, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::smart_ptr_proxy
; alias: _ZN7gameswf15smart_ptr_proxyaSEPNS_10weak_proxyE.clone.14
; demangled: gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*) [clone .clone.14]
; decoder-mode: arm
0043c404  10 40 2d e9                                      push {r4, lr}
0043c408  00 40 a0 e1                                      mov r4, r0
0043c40c  00 00 90 e5                                      ldr r0, [r0]
0043c410  00 00 50 e3                                      cmp r0, #0
0043c414  06 00 00 0a                                      beq #0x43c434
0043c418  00 10 90 e5                                      ldr r1, [r0]
0043c41c  01 10 41 e2                                      sub r1, r1, #1
0043c420  00 00 51 e3                                      cmp r1, #0
0043c424  00 10 80 e5                                      str r1, [r0]
0043c428  02 00 00 0a                                      beq #0x43c438
0043c42c  00 30 a0 e3                                      mov r3, #0
0043c430  00 30 84 e5                                      str r3, [r4]
0043c434  10 80 bd e8                                      pop {r4, pc}
0043c438  be 59 0c eb                                      bl #0x752b38
0043c43c  fa ff ff ea                                      b #0x43c42c

; FUNCTION 0x007c1330, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::smart_ptr_proxy
; alias: _ZN7gameswf15smart_ptr_proxyaSEPNS_10weak_proxyE.clone.1
; demangled: gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*) [clone .clone.1]
; decoder-mode: arm
007c1330  10 40 2d e9                                      push {r4, lr}
007c1334  00 40 a0 e1                                      mov r4, r0
007c1338  00 00 90 e5                                      ldr r0, [r0]
007c133c  00 00 50 e3                                      cmp r0, #0
007c1340  06 00 00 0a                                      beq #0x7c1360
007c1344  00 10 90 e5                                      ldr r1, [r0]
007c1348  01 10 41 e2                                      sub r1, r1, #1
007c134c  00 00 51 e3                                      cmp r1, #0
007c1350  00 10 80 e5                                      str r1, [r0]
007c1354  02 00 00 0a                                      beq #0x7c1364
007c1358  00 30 a0 e3                                      mov r3, #0
007c135c  00 30 84 e5                                      str r3, [r4]
007c1360  10 80 bd e8                                      pop {r4, pc}
007c1364  f3 45 fe eb                                      bl #0x752b38
007c1368  fa ff ff ea                                      b #0x7c1358
