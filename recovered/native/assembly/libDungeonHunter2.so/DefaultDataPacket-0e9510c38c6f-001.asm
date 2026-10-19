; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00849fcc, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket14addQueryStringEPKcs
; demangled: DefaultDataPacket::addQueryString(char const*, short)
; decoder-mode: arm
00849fcc  00 00 a0 e3                                      mov r0, #0
00849fd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849fd4, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket17addShortLenStringEPKcs
; demangled: DefaultDataPacket::addShortLenString(char const*, short)
; decoder-mode: arm
00849fd4  00 00 a0 e3                                      mov r0, #0
00849fd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849fdc, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket17getShortLenStringERPcRs
; demangled: DefaultDataPacket::getShortLenString(char*&, short&)
; decoder-mode: arm
00849fdc  00 00 a0 e3                                      mov r0, #0
00849fe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849fe4, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket21addShortLenWideStringEPKwh
; demangled: DefaultDataPacket::addShortLenWideString(wchar_t const*, unsigned char)
; decoder-mode: arm
00849fe4  00 00 a0 e3                                      mov r0, #0
00849fe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849fec, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket21getShortLenWideStringERPwRh
; demangled: DefaultDataPacket::getShortLenWideString(wchar_t*&, unsigned char&)
; decoder-mode: arm
00849fec  00 00 a0 e3                                      mov r0, #0
00849ff0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849ff4, declared_size=40, range_size=40, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket7addByteEh
; demangled: DefaultDataPacket::addByte(unsigned char)
; decoder-mode: arm
00849ff4  08 20 01 e3                                      movw r2, #0x1008
00849ff8  02 30 90 e7                                      ldr r3, [r0, r2]
00849ffc  01 0a 53 e3                                      cmp r3, #0x1000
0084a000  01 c0 83 b2                                      addlt ip, r3, #1
0084a004  03 30 80 b0                                      addlt r3, r0, r3
0084a008  04 10 c3 b5                                      strblt r1, [r3, #4]
0084a00c  00 00 a0 a3                                      movge r0, #0
0084a010  02 c0 80 b7                                      strlt ip, [r0, r2]
0084a014  01 00 a0 b3                                      movlt r0, #1
0084a018  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a01c, declared_size=68, range_size=68, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket7getByteERh
; demangled: DefaultDataPacket::getByte(unsigned char&)
; decoder-mode: arm
0084a01c  04 40 2d e5                                      str r4, [sp, #-4]!
0084a020  00 30 a0 e1                                      mov r3, r0
0084a024  04 c0 01 e3                                      movw ip, #0x1004
0084a028  08 20 01 e3                                      movw r2, #0x1008
0084a02c  02 00 90 e7                                      ldr r0, [r0, r2]
0084a030  0c 20 93 e7                                      ldr r2, [r3, ip]
0084a034  00 00 52 e1                                      cmp r2, r0
0084a038  02 00 83 b0                                      addlt r0, r3, r2
0084a03c  04 40 d0 b5                                      ldrblt r4, [r0, #4]
0084a040  00 00 a0 a3                                      movge r0, #0
0084a044  01 20 82 b2                                      addlt r2, r2, #1
0084a048  00 40 c1 b5                                      strblt r4, [r1]
0084a04c  00 00 c1 a5                                      strbge r0, [r1]
0084a050  01 00 a0 b3                                      movlt r0, #1
0084a054  0c 20 83 b7                                      strlt r2, [r3, ip]
0084a058  10 00 bd e8                                      ldm sp!, {r4}
0084a05c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a060, declared_size=68, range_size=68, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket8addShortEs
; demangled: DefaultDataPacket::addShort(short)
; decoder-mode: arm
0084a060  30 00 2d e9                                      push {r4, r5}
0084a064  08 20 01 e3                                      movw r2, #0x1008
0084a068  02 30 90 e7                                      ldr r3, [r0, r2]
0084a06c  fe cf 00 e3                                      movw ip, #0xffe
0084a070  0c 00 53 e1                                      cmp r3, ip
0084a074  01 c0 83 d2                                      addle ip, r3, #1
0084a078  01 40 8c d2                                      addle r4, ip, #1
0084a07c  03 30 80 d0                                      addle r3, r0, r3
0084a080  0c c0 80 d0                                      addle ip, r0, ip
0084a084  51 54 e7 d7                                      ubfxle r5, r1, #8, #8
0084a088  04 50 c3 d5                                      strble r5, [r3, #4]
0084a08c  00 00 a0 c3                                      movgt r0, #0
0084a090  04 10 cc d5                                      strble r1, [ip, #4]
0084a094  02 40 80 d7                                      strle r4, [r0, r2]
0084a098  01 00 a0 d3                                      movle r0, #1
0084a09c  30 00 bd e8                                      pop {r4, r5}
0084a0a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a0a4, declared_size=112, range_size=112, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket8getShortERs
; demangled: DefaultDataPacket::getShort(short&)
; decoder-mode: arm
0084a0a4  30 00 2d e9                                      push {r4, r5}
0084a0a8  00 20 a0 e3                                      mov r2, #0
0084a0ac  b0 20 c1 e1                                      strh r2, [r1]
0084a0b0  08 20 01 e3                                      movw r2, #0x1008
0084a0b4  02 c0 90 e7                                      ldr ip, [r0, r2]
0084a0b8  04 20 01 e3                                      movw r2, #0x1004
0084a0bc  00 30 a0 e1                                      mov r3, r0
0084a0c0  02 00 90 e7                                      ldr r0, [r0, r2]
0084a0c4  01 c0 4c e2                                      sub ip, ip, #1
0084a0c8  00 00 5c e1                                      cmp ip, r0
0084a0cc  00 00 a0 d3                                      movle r0, #0
0084a0d0  0d 00 00 da                                      ble #0x84a10c
0084a0d4  00 c0 83 e0                                      add ip, r3, r0
0084a0d8  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a0dc  01 00 80 e2                                      add r0, r0, #1
0084a0e0  00 c0 83 e0                                      add ip, r3, r0
0084a0e4  04 44 a0 e1                                      lsl r4, r4, #8
0084a0e8  b0 40 c1 e1                                      strh r4, [r1]
0084a0ec  02 00 83 e7                                      str r0, [r3, r2]
0084a0f0  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a0f4  b0 50 d1 e1                                      ldrh r5, [r1]
0084a0f8  01 c0 80 e2                                      add ip, r0, #1
0084a0fc  01 00 a0 e3                                      mov r0, #1
0084a100  04 40 85 e1                                      orr r4, r5, r4
0084a104  b0 40 c1 e1                                      strh r4, [r1]
0084a108  02 c0 83 e7                                      str ip, [r3, r2]
0084a10c  30 00 bd e8                                      pop {r4, r5}
0084a110  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a114, declared_size=104, range_size=104, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket6addIntEi
; demangled: DefaultDataPacket::addInt(int)
; decoder-mode: arm
0084a114  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
0084a118  08 20 01 e3                                      movw r2, #0x1008
0084a11c  02 30 90 e7                                      ldr r3, [r0, r2]
0084a120  fc cf 00 e3                                      movw ip, #0xffc
0084a124  0c 00 53 e1                                      cmp r3, ip
0084a128  00 00 a0 c3                                      movgt r0, #0
0084a12c  10 00 00 ca                                      bgt #0x84a174
0084a130  01 50 83 e2                                      add r5, r3, #1
0084a134  01 40 85 e2                                      add r4, r5, #1
0084a138  01 c0 84 e2                                      add ip, r4, #1
0084a13c  01 60 8c e2                                      add r6, ip, #1
0084a140  03 30 80 e0                                      add r3, r0, r3
0084a144  05 50 80 e0                                      add r5, r0, r5
0084a148  04 40 80 e0                                      add r4, r0, r4
0084a14c  0c c0 80 e0                                      add ip, r0, ip
0084a150  21 7c a0 e1                                      lsr r7, r1, #0x18
0084a154  51 88 e7 e7                                      ubfx r8, r1, #0x10, #8
0084a158  51 a4 e7 e7                                      ubfx sl, r1, #8, #8
0084a15c  04 70 c3 e5                                      strb r7, [r3, #4]
0084a160  04 80 c5 e5                                      strb r8, [r5, #4]
0084a164  04 a0 c4 e5                                      strb sl, [r4, #4]
0084a168  04 10 cc e5                                      strb r1, [ip, #4]
0084a16c  02 60 80 e7                                      str r6, [r0, r2]
0084a170  01 00 a0 e3                                      mov r0, #1
0084a174  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
0084a178  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a17c, declared_size=168, range_size=168, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket6getIntERi
; demangled: DefaultDataPacket::getInt(int&)
; decoder-mode: arm
0084a17c  30 00 2d e9                                      push {r4, r5}
0084a180  00 30 a0 e3                                      mov r3, #0
0084a184  00 20 a0 e1                                      mov r2, r0
0084a188  00 30 81 e5                                      str r3, [r1]
0084a18c  08 00 01 e3                                      movw r0, #0x1008
0084a190  00 40 92 e7                                      ldr r4, [r2, r0]
0084a194  04 c0 01 e3                                      movw ip, #0x1004
0084a198  0c 00 92 e7                                      ldr r0, [r2, ip]
0084a19c  03 40 44 e2                                      sub r4, r4, #3
0084a1a0  00 00 54 e1                                      cmp r4, r0
0084a1a4  03 00 a0 d1                                      movle r0, r3
0084a1a8  1b 00 00 da                                      ble #0x84a21c
0084a1ac  00 30 82 e0                                      add r3, r2, r0
0084a1b0  04 40 d3 e5                                      ldrb r4, [r3, #4]
0084a1b4  01 00 80 e2                                      add r0, r0, #1
0084a1b8  00 30 82 e0                                      add r3, r2, r0
0084a1bc  04 4c a0 e1                                      lsl r4, r4, #0x18
0084a1c0  00 40 81 e5                                      str r4, [r1]
0084a1c4  0c 00 82 e7                                      str r0, [r2, ip]
0084a1c8  04 50 d3 e5                                      ldrb r5, [r3, #4]
0084a1cc  00 40 91 e5                                      ldr r4, [r1]
0084a1d0  01 00 80 e2                                      add r0, r0, #1
0084a1d4  00 30 82 e0                                      add r3, r2, r0
0084a1d8  05 48 84 e1                                      orr r4, r4, r5, lsl #16
0084a1dc  00 40 81 e5                                      str r4, [r1]
0084a1e0  0c 00 82 e7                                      str r0, [r2, ip]
0084a1e4  04 50 d3 e5                                      ldrb r5, [r3, #4]
0084a1e8  00 40 91 e5                                      ldr r4, [r1]
0084a1ec  01 00 80 e2                                      add r0, r0, #1
0084a1f0  00 30 82 e0                                      add r3, r2, r0
0084a1f4  05 44 84 e1                                      orr r4, r4, r5, lsl #8
0084a1f8  00 40 81 e5                                      str r4, [r1]
0084a1fc  0c 00 82 e7                                      str r0, [r2, ip]
0084a200  04 40 d3 e5                                      ldrb r4, [r3, #4]
0084a204  00 50 91 e5                                      ldr r5, [r1]
0084a208  01 30 80 e2                                      add r3, r0, #1
0084a20c  01 00 a0 e3                                      mov r0, #1
0084a210  04 40 85 e1                                      orr r4, r5, r4
0084a214  00 40 81 e5                                      str r4, [r1]
0084a218  0c 30 82 e7                                      str r3, [r2, ip]
0084a21c  30 00 bd e8                                      pop {r4, r5}
0084a220  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a224, declared_size=128, range_size=128, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket8addFloatEf
; demangled: DefaultDataPacket::addFloat(float)
; decoder-mode: arm
0084a224  04 40 2d e5                                      str r4, [sp, #-4]!
0084a228  08 30 01 e3                                      movw r3, #0x1008
0084a22c  03 20 90 e7                                      ldr r2, [r0, r3]
0084a230  0c d0 4d e2                                      sub sp, sp, #0xc
0084a234  04 10 8d e5                                      str r1, [sp, #4]
0084a238  fc 1f 00 e3                                      movw r1, #0xffc
0084a23c  01 00 52 e1                                      cmp r2, r1
0084a240  00 00 a0 c3                                      movgt r0, #0
0084a244  13 00 00 ca                                      bgt #0x84a298
0084a248  04 c0 dd e5                                      ldrb ip, [sp, #4]
0084a24c  02 10 80 e0                                      add r1, r0, r2
0084a250  01 20 82 e2                                      add r2, r2, #1
0084a254  04 c0 c1 e5                                      strb ip, [r1, #4]
0084a258  05 c0 dd e5                                      ldrb ip, [sp, #5]
0084a25c  02 10 80 e0                                      add r1, r0, r2
0084a260  03 20 80 e7                                      str r2, [r0, r3]
0084a264  04 c0 c1 e5                                      strb ip, [r1, #4]
0084a268  06 c0 dd e5                                      ldrb ip, [sp, #6]
0084a26c  01 20 82 e2                                      add r2, r2, #1
0084a270  02 10 80 e0                                      add r1, r0, r2
0084a274  03 20 80 e7                                      str r2, [r0, r3]
0084a278  04 c0 c1 e5                                      strb ip, [r1, #4]
0084a27c  07 40 dd e5                                      ldrb r4, [sp, #7]
0084a280  01 20 82 e2                                      add r2, r2, #1
0084a284  02 c0 80 e0                                      add ip, r0, r2
0084a288  01 10 82 e2                                      add r1, r2, #1
0084a28c  04 40 cc e5                                      strb r4, [ip, #4]
0084a290  03 10 80 e7                                      str r1, [r0, r3]
0084a294  01 00 a0 e3                                      mov r0, #1
0084a298  0c d0 8d e2                                      add sp, sp, #0xc
0084a29c  10 00 bd e8                                      ldm sp!, {r4}
0084a2a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a2a4, declared_size=140, range_size=140, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket8getFloatERf
; demangled: DefaultDataPacket::getFloat(float&)
; decoder-mode: arm
0084a2a4  04 40 2d e5                                      str r4, [sp, #-4]!
0084a2a8  00 20 a0 e3                                      mov r2, #0
0084a2ac  00 20 81 e5                                      str r2, [r1]
0084a2b0  08 20 01 e3                                      movw r2, #0x1008
0084a2b4  02 c0 90 e7                                      ldr ip, [r0, r2]
0084a2b8  04 20 01 e3                                      movw r2, #0x1004
0084a2bc  00 30 a0 e1                                      mov r3, r0
0084a2c0  02 00 90 e7                                      ldr r0, [r0, r2]
0084a2c4  03 c0 4c e2                                      sub ip, ip, #3
0084a2c8  00 00 5c e1                                      cmp ip, r0
0084a2cc  00 00 a0 d3                                      movle r0, #0
0084a2d0  14 00 00 da                                      ble #0x84a328
0084a2d4  00 c0 83 e0                                      add ip, r3, r0
0084a2d8  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a2dc  01 00 80 e2                                      add r0, r0, #1
0084a2e0  00 c0 83 e0                                      add ip, r3, r0
0084a2e4  00 40 c1 e5                                      strb r4, [r1]
0084a2e8  02 00 83 e7                                      str r0, [r3, r2]
0084a2ec  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a2f0  01 00 80 e2                                      add r0, r0, #1
0084a2f4  00 c0 83 e0                                      add ip, r3, r0
0084a2f8  01 40 c1 e5                                      strb r4, [r1, #1]
0084a2fc  02 00 83 e7                                      str r0, [r3, r2]
0084a300  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a304  01 00 80 e2                                      add r0, r0, #1
0084a308  00 c0 83 e0                                      add ip, r3, r0
0084a30c  02 40 c1 e5                                      strb r4, [r1, #2]
0084a310  02 00 83 e7                                      str r0, [r3, r2]
0084a314  04 40 dc e5                                      ldrb r4, [ip, #4]
0084a318  01 c0 80 e2                                      add ip, r0, #1
0084a31c  01 00 a0 e3                                      mov r0, #1
0084a320  03 40 c1 e5                                      strb r4, [r1, #3]
0084a324  02 c0 83 e7                                      str ip, [r3, r2]
0084a328  10 00 bd e8                                      ldm sp!, {r4}
0084a32c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a330, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket13getMessageLenEv
; demangled: DefaultDataPacket::getMessageLen()
; decoder-mode: arm
0084a330  08 30 01 e3                                      movw r3, #0x1008
0084a334  03 00 90 e7                                      ldr r0, [r0, r3]
0084a338  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a33c, declared_size=8, range_size=8, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket14getMessageBodyEv
; demangled: DefaultDataPacket::getMessageBody()
; decoder-mode: arm
0084a33c  04 00 80 e2                                      add r0, r0, #4
0084a340  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a344, declared_size=4, range_size=4, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket11packMessageEv
; demangled: DefaultDataPacket::packMessage()
; decoder-mode: arm
0084a344  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a348, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket13getNextPacketEv
; demangled: DefaultDataPacket::getNextPacket()
; decoder-mode: arm
0084a348  0c 30 01 e3                                      movw r3, #0x100c
0084a34c  03 00 90 e7                                      ldr r0, [r0, r3]
0084a350  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a354, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket13setNextPacketEP10DataPacket
; demangled: DefaultDataPacket::setNextPacket(DataPacket*)
; decoder-mode: arm
0084a354  0c 30 01 e3                                      movw r3, #0x100c
0084a358  03 10 80 e7                                      str r1, [r0, r3]
0084a35c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a360, declared_size=28, range_size=28, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket11IsSendByTcpEv
; demangled: DefaultDataPacket::IsSendByTcp()
; decoder-mode: arm
0084a360  10 30 01 e3                                      movw r3, #0x1010
0084a364  03 00 90 e7                                      ldr r0, [r0, r3]
0084a368  01 00 50 e3                                      cmp r0, #1
0084a36c  03 00 50 13                                      cmpne r0, #3
0084a370  00 00 a0 13                                      movne r0, #0
0084a374  01 00 a0 03                                      moveq r0, #1
0084a378  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a37c, declared_size=24, range_size=24, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket11IsSendByUdpEv
; demangled: DefaultDataPacket::IsSendByUdp()
; decoder-mode: arm
0084a37c  10 30 01 e3                                      movw r3, #0x1010
0084a380  03 00 90 e7                                      ldr r0, [r0, r3]
0084a384  02 00 50 e3                                      cmp r0, #2
0084a388  00 00 a0 13                                      movne r0, #0
0084a38c  01 00 a0 03                                      moveq r0, #1
0084a390  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a394, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket11getDataTypeEv
; demangled: DefaultDataPacket::getDataType()
; decoder-mode: arm
0084a394  10 30 01 e3                                      movw r3, #0x1010
0084a398  03 00 90 e7                                      ldr r0, [r0, r3]
0084a39c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a3a0, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket11setDataTypeEi
; demangled: DefaultDataPacket::setDataType(int)
; decoder-mode: arm
0084a3a0  10 30 01 e3                                      movw r3, #0x1010
0084a3a4  03 10 80 e7                                      str r1, [r0, r3]
0084a3a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a3ac, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket7getPortEv
; demangled: DefaultDataPacket::getPort()
; decoder-mode: arm
0084a3ac  18 30 01 e3                                      movw r3, #0x1018
0084a3b0  03 00 90 e7                                      ldr r0, [r0, r3]
0084a3b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a3b8, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket7setPortEi
; demangled: DefaultDataPacket::setPort(int)
; decoder-mode: arm
0084a3b8  18 30 01 e3                                      movw r3, #0x1018
0084a3bc  03 10 80 e7                                      str r1, [r0, r3]
0084a3c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a3c4, declared_size=12, range_size=12, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket5getIPEv
; demangled: DefaultDataPacket::getIP()
; decoder-mode: arm
0084a3c4  14 30 01 e3                                      movw r3, #0x1014
0084a3c8  03 00 90 e7                                      ldr r0, [r0, r3]
0084a3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084a3d0, declared_size=64, range_size=64, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket13String2PacketEPci
; demangled: DefaultDataPacket::String2Packet(char*, int)
; decoder-mode: arm
0084a3d0  10 40 2d e9                                      push {r4, lr}
0084a3d4  01 30 d1 e5                                      ldrb r3, [r1, #1]
0084a3d8  d0 40 d1 e1                                      ldrsb r4, [r1]
0084a3dc  04 44 83 e1                                      orr r4, r3, r4, lsl #8
0084a3e0  01 30 84 e2                                      add r3, r4, #1
0084a3e4  02 00 53 e1                                      cmp r3, r2
0084a3e8  01 00 00 ba                                      blt #0x84a3f4
0084a3ec  00 00 e0 e3                                      mvn r0, #0
0084a3f0  10 80 bd e8                                      pop {r4, pc}
0084a3f4  00 30 90 e5                                      ldr r3, [r0]
0084a3f8  02 10 81 e2                                      add r1, r1, #2
0084a3fc  04 20 a0 e1                                      mov r2, r4
0084a400  0f e0 a0 e1                                      mov lr, pc
0084a404  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0084a408  02 00 84 e2                                      add r0, r4, #2
0084a40c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0084a410, declared_size=80, range_size=80, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket13Packet2StringEPcRi
; demangled: DefaultDataPacket::Packet2String(char*, int&)
; decoder-mode: arm
0084a410  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a414  08 50 01 e3                                      movw r5, #0x1008
0084a418  05 30 90 e7                                      ldr r3, [r0, r5]
0084a41c  00 40 a0 e1                                      mov r4, r0
0084a420  02 60 a0 e1                                      mov r6, r2
0084a424  53 34 e7 e7                                      ubfx r3, r3, #8, #8
0084a428  00 30 c1 e5                                      strb r3, [r1]
0084a42c  05 30 90 e7                                      ldr r3, [r0, r5]
0084a430  02 00 81 e2                                      add r0, r1, #2
0084a434  01 30 c1 e5                                      strb r3, [r1, #1]
0084a438  02 30 a0 e3                                      mov r3, #2
0084a43c  00 30 82 e5                                      str r3, [r2]
0084a440  05 20 94 e7                                      ldr r2, [r4, r5]
0084a444  04 10 84 e2                                      add r1, r4, #4
0084a448  c0 83 ff eb                                      bl #0x82b350
0084a44c  05 30 94 e7                                      ldr r3, [r4, r5]
0084a450  00 20 96 e5                                      ldr r2, [r6]
0084a454  03 30 82 e0                                      add r3, r2, r3
0084a458  00 30 86 e5                                      str r3, [r6]
0084a45c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084a460, declared_size=124, range_size=124, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket9addPacketEP10DataPacket
; demangled: DefaultDataPacket::addPacket(DataPacket*)
; decoder-mode: arm
0084a460  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084a464  00 40 a0 e1                                      mov r4, r0
0084a468  00 30 91 e5                                      ldr r3, [r1]
0084a46c  01 00 a0 e1                                      mov r0, r1
0084a470  01 70 a0 e1                                      mov r7, r1
0084a474  0f e0 a0 e1                                      mov lr, pc
0084a478  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0084a47c  08 50 01 e3                                      movw r5, #0x1008
0084a480  05 20 94 e7                                      ldr r2, [r4, r5]
0084a484  00 60 a0 e1                                      mov r6, r0
0084a488  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0084a48c  01 30 82 e2                                      add r3, r2, #1
0084a490  01 80 83 e2                                      add r8, r3, #1
0084a494  02 20 84 e0                                      add r2, r4, r2
0084a498  03 30 84 e0                                      add r3, r4, r3
0084a49c  04 10 c2 e5                                      strb r1, [r2, #4]
0084a4a0  04 60 c3 e5                                      strb r6, [r3, #4]
0084a4a4  05 80 84 e7                                      str r8, [r4, r5]
0084a4a8  00 30 97 e5                                      ldr r3, [r7]
0084a4ac  07 00 a0 e1                                      mov r0, r7
0084a4b0  0f e0 a0 e1                                      mov lr, pc
0084a4b4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0084a4b8  00 10 a0 e1                                      mov r1, r0
0084a4bc  08 00 84 e0                                      add r0, r4, r8
0084a4c0  06 20 a0 e1                                      mov r2, r6
0084a4c4  04 00 80 e2                                      add r0, r0, #4
0084a4c8  a0 83 ff eb                                      bl #0x82b350
0084a4cc  05 30 94 e7                                      ldr r3, [r4, r5]
0084a4d0  03 60 86 e0                                      add r6, r6, r3
0084a4d4  05 60 84 e7                                      str r6, [r4, r5]
0084a4d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0084a4dc, declared_size=44, range_size=44, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket14setMessageBodyEPhi
; demangled: DefaultDataPacket::setMessageBody(unsigned char*, int)
; decoder-mode: arm
0084a4dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a4e0  00 40 a0 e1                                      mov r4, r0
0084a4e4  04 00 80 e2                                      add r0, r0, #4
0084a4e8  02 50 a0 e1                                      mov r5, r2
0084a4ec  97 83 ff eb                                      bl #0x82b350
0084a4f0  04 30 01 e3                                      movw r3, #0x1004
0084a4f4  00 20 a0 e3                                      mov r2, #0
0084a4f8  03 20 84 e7                                      str r2, [r4, r3]
0084a4fc  08 30 01 e3                                      movw r3, #0x1008
0084a500  03 50 84 e7                                      str r5, [r4, r3]
0084a504  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084a508, declared_size=156, range_size=156, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketC1EP10DataPacket
; demangled: DefaultDataPacket::DefaultDataPacket(DataPacket*)
; decoder-mode: arm
0084a508  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0084a50c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0084a510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084a514  03 30 8f e0                                      add r3, pc, r3
0084a518  02 20 93 e7                                      ldr r2, [r3, r2]
0084a51c  00 50 a0 e3                                      mov r5, #0
0084a520  00 40 a0 e1                                      mov r4, r0
0084a524  08 20 82 e2                                      add r2, r2, #8
0084a528  00 20 80 e5                                      str r2, [r0]
0084a52c  14 20 01 e3                                      movw r2, #0x1014
0084a530  02 50 80 e7                                      str r5, [r0, r2]
0084a534  18 20 01 e3                                      movw r2, #0x1018
0084a538  02 50 80 e7                                      str r5, [r0, r2]
0084a53c  00 20 91 e5                                      ldr r2, [r1]
0084a540  01 00 a0 e1                                      mov r0, r1
0084a544  01 60 a0 e1                                      mov r6, r1
0084a548  0f e0 a0 e1                                      mov lr, pc
0084a54c  74 f0 92 e5                                      ldr pc, [r2, #0x74]
0084a550  10 30 01 e3                                      movw r3, #0x1010
0084a554  03 00 84 e7                                      str r0, [r4, r3]
0084a558  00 30 96 e5                                      ldr r3, [r6]
0084a55c  06 00 a0 e1                                      mov r0, r6
0084a560  0f e0 a0 e1                                      mov lr, pc
0084a564  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0084a568  00 30 96 e5                                      ldr r3, [r6]
0084a56c  00 70 a0 e1                                      mov r7, r0
0084a570  06 00 a0 e1                                      mov r0, r6
0084a574  0f e0 a0 e1                                      mov lr, pc
0084a578  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0084a57c  07 10 a0 e1                                      mov r1, r7
0084a580  00 20 a0 e1                                      mov r2, r0
0084a584  04 00 a0 e1                                      mov r0, r4
0084a588  d3 ff ff eb                                      bl #0x84a4dc
0084a58c  0c 30 01 e3                                      movw r3, #0x100c
0084a590  03 50 84 e7                                      str r5, [r4, r3]
0084a594  04 00 a0 e1                                      mov r0, r4
0084a598  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0084a59c  7c a5 14 00 68 21 00 00                          .byte 0x7c, 0xa5, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00

; FUNCTION 0x0084a5a4, declared_size=156, range_size=156, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketC2EP10DataPacket
; demangled: DefaultDataPacket::DefaultDataPacket(DataPacket*)
; decoder-mode: arm
0084a5a4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0084a5a8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0084a5ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084a5b0  03 30 8f e0                                      add r3, pc, r3
0084a5b4  02 20 93 e7                                      ldr r2, [r3, r2]
0084a5b8  00 50 a0 e3                                      mov r5, #0
0084a5bc  00 40 a0 e1                                      mov r4, r0
0084a5c0  08 20 82 e2                                      add r2, r2, #8
0084a5c4  00 20 80 e5                                      str r2, [r0]
0084a5c8  14 20 01 e3                                      movw r2, #0x1014
0084a5cc  02 50 80 e7                                      str r5, [r0, r2]
0084a5d0  18 20 01 e3                                      movw r2, #0x1018
0084a5d4  02 50 80 e7                                      str r5, [r0, r2]
0084a5d8  00 20 91 e5                                      ldr r2, [r1]
0084a5dc  01 00 a0 e1                                      mov r0, r1
0084a5e0  01 60 a0 e1                                      mov r6, r1
0084a5e4  0f e0 a0 e1                                      mov lr, pc
0084a5e8  74 f0 92 e5                                      ldr pc, [r2, #0x74]
0084a5ec  10 30 01 e3                                      movw r3, #0x1010
0084a5f0  03 00 84 e7                                      str r0, [r4, r3]
0084a5f4  00 30 96 e5                                      ldr r3, [r6]
0084a5f8  06 00 a0 e1                                      mov r0, r6
0084a5fc  0f e0 a0 e1                                      mov lr, pc
0084a600  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0084a604  00 30 96 e5                                      ldr r3, [r6]
0084a608  00 70 a0 e1                                      mov r7, r0
0084a60c  06 00 a0 e1                                      mov r0, r6
0084a610  0f e0 a0 e1                                      mov lr, pc
0084a614  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0084a618  07 10 a0 e1                                      mov r1, r7
0084a61c  00 20 a0 e1                                      mov r2, r0
0084a620  04 00 a0 e1                                      mov r0, r4
0084a624  ac ff ff eb                                      bl #0x84a4dc
0084a628  0c 30 01 e3                                      movw r3, #0x100c
0084a62c  03 50 84 e7                                      str r5, [r4, r3]
0084a630  04 00 a0 e1                                      mov r0, r4
0084a634  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0084a638  e0 a4 14 00 68 21 00 00                          .byte 0xe0, 0xa4, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00

; FUNCTION 0x0084a640, declared_size=132, range_size=132, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket20addByteLenWideStringEPKwh
; demangled: DefaultDataPacket::addByteLenWideString(wchar_t const*, unsigned char)
; decoder-mode: arm
0084a640  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a644  08 50 01 e3                                      movw r5, #0x1008
0084a648  05 30 90 e7                                      ldr r3, [r0, r5]
0084a64c  00 40 a0 e1                                      mov r4, r0
0084a650  01 0b 62 e2                                      rsb r0, r2, #0x400
0084a654  00 01 53 e1                                      cmp r3, r0, lsl #2
0084a658  0c 00 00 8a                                      bhi #0x84a690
0084a65c  01 00 83 e2                                      add r0, r3, #1
0084a660  00 00 52 e3                                      cmp r2, #0
0084a664  00 00 51 13                                      cmpne r1, #0
0084a668  03 30 84 e0                                      add r3, r4, r3
0084a66c  04 20 c3 e5                                      strb r2, [r3, #4]
0084a670  02 61 a0 01                                      lsleq r6, r2, #2
0084a674  05 00 84 e7                                      str r0, [r4, r5]
0084a678  06 00 00 1a                                      bne #0x84a698
0084a67c  06 60 80 e0                                      add r6, r0, r6
0084a680  08 30 01 e3                                      movw r3, #0x1008
0084a684  03 60 84 e7                                      str r6, [r4, r3]
0084a688  01 00 a0 e3                                      mov r0, #1
0084a68c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084a690  00 00 a0 e3                                      mov r0, #0
0084a694  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084a698  00 00 84 e0                                      add r0, r4, r0
0084a69c  02 61 a0 e1                                      lsl r6, r2, #2
0084a6a0  06 20 a0 e1                                      mov r2, r6
0084a6a4  04 00 80 e2                                      add r0, r0, #4
0084a6a8  28 83 ff eb                                      bl #0x82b350
0084a6ac  05 00 94 e7                                      ldr r0, [r4, r5]
0084a6b0  08 30 01 e3                                      movw r3, #0x1008
0084a6b4  06 60 80 e0                                      add r6, r0, r6
0084a6b8  03 60 84 e7                                      str r6, [r4, r3]
0084a6bc  01 00 a0 e3                                      mov r0, #1
0084a6c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084a6c4, declared_size=124, range_size=124, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket16addByteLenStringEPKch
; demangled: DefaultDataPacket::addByteLenString(char const*, unsigned char)
; decoder-mode: arm
0084a6c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a6c8  08 60 01 e3                                      movw r6, #0x1008
0084a6cc  06 30 90 e7                                      ldr r3, [r0, r6]
0084a6d0  00 40 a0 e1                                      mov r4, r0
0084a6d4  01 0a 62 e2                                      rsb r0, r2, #0x1000
0084a6d8  00 00 53 e1                                      cmp r3, r0
0084a6dc  02 50 a0 e1                                      mov r5, r2
0084a6e0  0b 00 00 ca                                      bgt #0x84a714
0084a6e4  01 00 83 e2                                      add r0, r3, #1
0084a6e8  00 00 52 e3                                      cmp r2, #0
0084a6ec  00 00 51 13                                      cmpne r1, #0
0084a6f0  03 30 84 e0                                      add r3, r4, r3
0084a6f4  04 20 c3 e5                                      strb r2, [r3, #4]
0084a6f8  06 00 84 e7                                      str r0, [r4, r6]
0084a6fc  06 00 00 1a                                      bne #0x84a71c
0084a700  05 50 80 e0                                      add r5, r0, r5
0084a704  08 30 01 e3                                      movw r3, #0x1008
0084a708  03 50 84 e7                                      str r5, [r4, r3]
0084a70c  01 00 a0 e3                                      mov r0, #1
0084a710  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084a714  00 00 a0 e3                                      mov r0, #0
0084a718  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084a71c  00 00 84 e0                                      add r0, r4, r0
0084a720  04 00 80 e2                                      add r0, r0, #4
0084a724  09 83 ff eb                                      bl #0x82b350
0084a728  06 00 94 e7                                      ldr r0, [r4, r6]
0084a72c  08 30 01 e3                                      movw r3, #0x1008
0084a730  05 50 80 e0                                      add r5, r0, r5
0084a734  03 50 84 e7                                      str r5, [r4, r3]
0084a738  01 00 a0 e3                                      mov r0, #1
0084a73c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084a740, declared_size=76, range_size=76, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketD1Ev
; demangled: DefaultDataPacket::~DefaultDataPacket()
; decoder-mode: arm
0084a740  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a744  38 30 9f e5                                      ldr r3, [pc, #0x38]
0084a748  38 20 9f e5                                      ldr r2, [pc, #0x38]
0084a74c  14 50 01 e3                                      movw r5, #0x1014
0084a750  03 30 8f e0                                      add r3, pc, r3
0084a754  00 40 a0 e1                                      mov r4, r0
0084a758  02 20 93 e7                                      ldr r2, [r3, r2]
0084a75c  05 00 90 e7                                      ldr r0, [r0, r5]
0084a760  08 20 82 e2                                      add r2, r2, #8
0084a764  00 00 50 e3                                      cmp r0, #0
0084a768  00 20 84 e5                                      str r2, [r4]
0084a76c  02 00 00 0a                                      beq #0x84a77c
0084a770  ce 0e eb eb                                      bl #0x30e2b0
0084a774  00 30 a0 e3                                      mov r3, #0
0084a778  05 30 84 e7                                      str r3, [r4, r5]
0084a77c  04 00 a0 e1                                      mov r0, r4
0084a780  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0084a784  40 a3 14 00 68 21 00 00                          .byte 0x40, 0xa3, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00

; FUNCTION 0x0084a78c, declared_size=28, range_size=28, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketD0Ev
; demangled: DefaultDataPacket::~DefaultDataPacket()
; decoder-mode: arm
0084a78c  10 40 2d e9                                      push {r4, lr}
0084a790  00 40 a0 e1                                      mov r4, r0
0084a794  e9 ff ff eb                                      bl #0x84a740
0084a798  04 00 a0 e1                                      mov r0, r4
0084a79c  c3 0e eb eb                                      bl #0x30e2b0
0084a7a0  04 00 a0 e1                                      mov r0, r4
0084a7a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0084a7a8, declared_size=76, range_size=76, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketD2Ev
; demangled: DefaultDataPacket::~DefaultDataPacket()
; decoder-mode: arm
0084a7a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a7ac  38 30 9f e5                                      ldr r3, [pc, #0x38]
0084a7b0  38 20 9f e5                                      ldr r2, [pc, #0x38]
0084a7b4  14 50 01 e3                                      movw r5, #0x1014
0084a7b8  03 30 8f e0                                      add r3, pc, r3
0084a7bc  00 40 a0 e1                                      mov r4, r0
0084a7c0  02 20 93 e7                                      ldr r2, [r3, r2]
0084a7c4  05 00 90 e7                                      ldr r0, [r0, r5]
0084a7c8  08 20 82 e2                                      add r2, r2, #8
0084a7cc  00 00 50 e3                                      cmp r0, #0
0084a7d0  00 20 84 e5                                      str r2, [r4]
0084a7d4  02 00 00 0a                                      beq #0x84a7e4
0084a7d8  b4 0e eb eb                                      bl #0x30e2b0
0084a7dc  00 30 a0 e3                                      mov r3, #0
0084a7e0  05 30 84 e7                                      str r3, [r4, r5]
0084a7e4  04 00 a0 e1                                      mov r0, r4
0084a7e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0084a7ec  d8 a2 14 00 68 21 00 00                          .byte 0xd8, 0xa2, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00

; FUNCTION 0x0084a7f4, declared_size=60, range_size=60, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket5setIPEPc
; demangled: DefaultDataPacket::setIP(char*)
; decoder-mode: arm
0084a7f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0084a7f8  14 50 01 e3                                      movw r5, #0x1014
0084a7fc  00 40 a0 e1                                      mov r4, r0
0084a800  05 00 90 e7                                      ldr r0, [r0, r5]
0084a804  01 60 a0 e1                                      mov r6, r1
0084a808  00 00 50 e3                                      cmp r0, #0
0084a80c  02 00 00 0a                                      beq #0x84a81c
0084a810  a6 0e eb eb                                      bl #0x30e2b0
0084a814  00 30 a0 e3                                      mov r3, #0
0084a818  05 30 84 e7                                      str r3, [r4, r5]
0084a81c  06 00 a0 e1                                      mov r0, r6
0084a820  5e 84 ff eb                                      bl #0x82b9a0
0084a824  14 30 01 e3                                      movw r3, #0x1014
0084a828  03 00 84 e7                                      str r0, [r4, r3]
0084a82c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084a830, declared_size=176, range_size=176, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket20getByteLenWideStringERPwRh
; demangled: DefaultDataPacket::getByteLenWideString(wchar_t*&, unsigned char&)
; decoder-mode: arm
0084a830  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084a834  04 60 01 e3                                      movw r6, #0x1004
0084a838  06 30 90 e7                                      ldr r3, [r0, r6]
0084a83c  02 50 a0 e1                                      mov r5, r2
0084a840  00 40 a0 e1                                      mov r4, r0
0084a844  03 20 80 e0                                      add r2, r0, r3
0084a848  04 20 d2 e5                                      ldrb r2, [r2, #4]
0084a84c  01 30 83 e2                                      add r3, r3, #1
0084a850  01 70 a0 e1                                      mov r7, r1
0084a854  00 20 c5 e5                                      strb r2, [r5]
0084a858  06 30 80 e7                                      str r3, [r0, r6]
0084a85c  08 20 01 e3                                      movw r2, #0x1008
0084a860  02 20 90 e7                                      ldr r2, [r0, r2]
0084a864  00 00 d5 e5                                      ldrb r0, [r5]
0084a868  00 21 42 e0                                      sub r2, r2, r0, lsl #2
0084a86c  02 00 53 e1                                      cmp r3, r2
0084a870  01 00 00 9a                                      bls #0x84a87c
0084a874  00 00 a0 e3                                      mov r0, #0
0084a878  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084a87c  01 00 80 e2                                      add r0, r0, #1
0084a880  00 01 a0 e1                                      lsl r0, r0, #2
0084a884  11 0e eb eb                                      bl #0x30e0d0
0084a888  00 00 87 e5                                      str r0, [r7]
0084a88c  00 20 d5 e5                                      ldrb r2, [r5]
0084a890  00 30 a0 e1                                      mov r3, r0
0084a894  00 00 52 e3                                      cmp r2, #0
0084a898  08 00 00 1a                                      bne #0x84a8c0
0084a89c  00 10 a0 e3                                      mov r1, #0
0084a8a0  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
0084a8a4  04 30 01 e3                                      movw r3, #0x1004
0084a8a8  00 10 d5 e5                                      ldrb r1, [r5]
0084a8ac  03 20 94 e7                                      ldr r2, [r4, r3]
0084a8b0  01 00 a0 e3                                      mov r0, #1
0084a8b4  01 21 82 e0                                      add r2, r2, r1, lsl #2
0084a8b8  03 20 84 e7                                      str r2, [r4, r3]
0084a8bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084a8c0  06 30 94 e7                                      ldr r3, [r4, r6]
0084a8c4  04 10 84 e2                                      add r1, r4, #4
0084a8c8  02 21 a0 e1                                      lsl r2, r2, #2
0084a8cc  03 10 81 e0                                      add r1, r1, r3
0084a8d0  9e 82 ff eb                                      bl #0x82b350
0084a8d4  00 30 97 e5                                      ldr r3, [r7]
0084a8d8  00 20 d5 e5                                      ldrb r2, [r5]
0084a8dc  ee ff ff ea                                      b #0x84a89c

; FUNCTION 0x0084a8e0, declared_size=168, range_size=168, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket16getByteLenStringERPcRh
; demangled: DefaultDataPacket::getByteLenString(char*&, unsigned char&)
; decoder-mode: arm
0084a8e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084a8e4  04 60 01 e3                                      movw r6, #0x1004
0084a8e8  06 30 90 e7                                      ldr r3, [r0, r6]
0084a8ec  02 50 a0 e1                                      mov r5, r2
0084a8f0  00 40 a0 e1                                      mov r4, r0
0084a8f4  03 20 80 e0                                      add r2, r0, r3
0084a8f8  04 20 d2 e5                                      ldrb r2, [r2, #4]
0084a8fc  01 30 83 e2                                      add r3, r3, #1
0084a900  01 70 a0 e1                                      mov r7, r1
0084a904  00 20 c5 e5                                      strb r2, [r5]
0084a908  06 30 80 e7                                      str r3, [r0, r6]
0084a90c  08 20 01 e3                                      movw r2, #0x1008
0084a910  02 20 90 e7                                      ldr r2, [r0, r2]
0084a914  00 00 d5 e5                                      ldrb r0, [r5]
0084a918  02 20 60 e0                                      rsb r2, r0, r2
0084a91c  02 00 53 e1                                      cmp r3, r2
0084a920  01 00 00 da                                      ble #0x84a92c
0084a924  00 00 a0 e3                                      mov r0, #0
0084a928  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084a92c  01 00 80 e2                                      add r0, r0, #1
0084a930  e6 0d eb eb                                      bl #0x30e0d0
0084a934  00 00 87 e5                                      str r0, [r7]
0084a938  00 20 d5 e5                                      ldrb r2, [r5]
0084a93c  00 30 a0 e1                                      mov r3, r0
0084a940  00 00 52 e3                                      cmp r2, #0
0084a944  08 00 00 1a                                      bne #0x84a96c
0084a948  00 10 a0 e3                                      mov r1, #0
0084a94c  02 10 c3 e7                                      strb r1, [r3, r2]
0084a950  04 30 01 e3                                      movw r3, #0x1004
0084a954  00 10 d5 e5                                      ldrb r1, [r5]
0084a958  03 20 94 e7                                      ldr r2, [r4, r3]
0084a95c  01 00 a0 e3                                      mov r0, #1
0084a960  02 20 81 e0                                      add r2, r1, r2
0084a964  03 20 84 e7                                      str r2, [r4, r3]
0084a968  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084a96c  06 30 94 e7                                      ldr r3, [r4, r6]
0084a970  04 10 84 e2                                      add r1, r4, #4
0084a974  03 10 81 e0                                      add r1, r1, r3
0084a978  74 82 ff eb                                      bl #0x82b350
0084a97c  00 30 97 e5                                      ldr r3, [r7]
0084a980  00 20 d5 e5                                      ldrb r2, [r5]
0084a984  ef ff ff ea                                      b #0x84a948

; FUNCTION 0x0084a988, declared_size=116, range_size=116, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketC1Ev
; demangled: DefaultDataPacket::DefaultDataPacket()
; decoder-mode: arm
0084a988  64 30 9f e5                                      ldr r3, [pc, #0x64]
0084a98c  64 20 9f e5                                      ldr r2, [pc, #0x64]
0084a990  10 40 2d e9                                      push {r4, lr}
0084a994  03 30 8f e0                                      add r3, pc, r3
0084a998  02 20 93 e7                                      ldr r2, [r3, r2]
0084a99c  00 40 a0 e1                                      mov r4, r0
0084a9a0  01 c0 a0 e3                                      mov ip, #1
0084a9a4  08 20 82 e2                                      add r2, r2, #8
0084a9a8  10 00 01 e3                                      movw r0, #0x1010
0084a9ac  00 c0 84 e7                                      str ip, [r4, r0]
0084a9b0  00 10 a0 e3                                      mov r1, #0
0084a9b4  00 20 84 e5                                      str r2, [r4]
0084a9b8  14 20 01 e3                                      movw r2, #0x1014
0084a9bc  02 10 84 e7                                      str r1, [r4, r2]
0084a9c0  18 20 01 e3                                      movw r2, #0x1018
0084a9c4  02 10 84 e7                                      str r1, [r4, r2]
0084a9c8  08 20 01 e3                                      movw r2, #0x1008
0084a9cc  02 10 84 e7                                      str r1, [r4, r2]
0084a9d0  04 20 01 e3                                      movw r2, #0x1004
0084a9d4  02 10 84 e7                                      str r1, [r4, r2]
0084a9d8  0c 20 01 e3                                      movw r2, #0x100c
0084a9dc  02 10 84 e7                                      str r1, [r4, r2]
0084a9e0  04 00 84 e2                                      add r0, r4, #4
0084a9e4  01 2a a0 e3                                      mov r2, #0x1000
0084a9e8  5d 82 ff eb                                      bl #0x82b364
0084a9ec  04 00 a0 e1                                      mov r0, r4
0084a9f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084a9f4  fc a0 14 00 68 21 00 00                          .byte 0xfc, 0xa0, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00

; FUNCTION 0x0084a9fc, declared_size=128, range_size=128, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacket9getPacketERP10DataPacket
; demangled: DefaultDataPacket::getPacket(DataPacket*&)
; decoder-mode: arm
0084a9fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084aa00  00 40 a0 e1                                      mov r4, r0
0084aa04  1c 00 01 e3                                      movw r0, #0x101c
0084aa08  01 70 a0 e1                                      mov r7, r1
0084aa0c  9e 0f eb eb                                      bl #0x30e88c
0084aa10  00 60 a0 e1                                      mov r6, r0
0084aa14  04 50 01 e3                                      movw r5, #0x1004
0084aa18  da ff ff eb                                      bl #0x84a988
0084aa1c  00 60 87 e5                                      str r6, [r7]
0084aa20  05 30 94 e7                                      ldr r3, [r4, r5]
0084aa24  01 10 83 e2                                      add r1, r3, #1
0084aa28  03 30 84 e0                                      add r3, r4, r3
0084aa2c  04 60 d3 e5                                      ldrb r6, [r3, #4]
0084aa30  05 10 84 e7                                      str r1, [r4, r5]
0084aa34  01 30 84 e0                                      add r3, r4, r1
0084aa38  04 20 d3 e5                                      ldrb r2, [r3, #4]
0084aa3c  01 10 81 e2                                      add r1, r1, #1
0084aa40  05 10 84 e7                                      str r1, [r4, r5]
0084aa44  00 30 97 e5                                      ldr r3, [r7]
0084aa48  06 64 82 e1                                      orr r6, r2, r6, lsl #8
0084aa4c  76 60 bf e6                                      sxth r6, r6
0084aa50  01 10 84 e0                                      add r1, r4, r1
0084aa54  03 00 a0 e1                                      mov r0, r3
0084aa58  06 20 a0 e1                                      mov r2, r6
0084aa5c  00 30 93 e5                                      ldr r3, [r3]
0084aa60  04 10 81 e2                                      add r1, r1, #4
0084aa64  0f e0 a0 e1                                      mov lr, pc
0084aa68  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0084aa6c  05 30 94 e7                                      ldr r3, [r4, r5]
0084aa70  03 60 86 e0                                      add r6, r6, r3
0084aa74  05 60 84 e7                                      str r6, [r4, r5]
0084aa78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0084aa7c, declared_size=116, range_size=116, mode=arm
; class-group: DefaultDataPacket
; alias: _ZN17DefaultDataPacketC2Ev
; demangled: DefaultDataPacket::DefaultDataPacket()
; decoder-mode: arm
0084aa7c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0084aa80  64 20 9f e5                                      ldr r2, [pc, #0x64]
0084aa84  10 40 2d e9                                      push {r4, lr}
0084aa88  03 30 8f e0                                      add r3, pc, r3
0084aa8c  02 20 93 e7                                      ldr r2, [r3, r2]
0084aa90  00 40 a0 e1                                      mov r4, r0
0084aa94  01 c0 a0 e3                                      mov ip, #1
0084aa98  08 20 82 e2                                      add r2, r2, #8
0084aa9c  10 00 01 e3                                      movw r0, #0x1010
0084aaa0  00 c0 84 e7                                      str ip, [r4, r0]
0084aaa4  00 10 a0 e3                                      mov r1, #0
0084aaa8  00 20 84 e5                                      str r2, [r4]
0084aaac  14 20 01 e3                                      movw r2, #0x1014
0084aab0  02 10 84 e7                                      str r1, [r4, r2]
0084aab4  18 20 01 e3                                      movw r2, #0x1018
0084aab8  02 10 84 e7                                      str r1, [r4, r2]
0084aabc  08 20 01 e3                                      movw r2, #0x1008
0084aac0  02 10 84 e7                                      str r1, [r4, r2]
0084aac4  04 20 01 e3                                      movw r2, #0x1004
0084aac8  02 10 84 e7                                      str r1, [r4, r2]
0084aacc  0c 20 01 e3                                      movw r2, #0x100c
0084aad0  02 10 84 e7                                      str r1, [r4, r2]
0084aad4  04 00 84 e2                                      add r0, r4, #4
0084aad8  01 2a a0 e3                                      mov r2, #0x1000
0084aadc  20 82 ff eb                                      bl #0x82b364
0084aae0  04 00 a0 e1                                      mov r0, r4
0084aae4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084aae8  08 a0 14 00 68 21 00 00                          .byte 0x08, 0xa0, 0x14, 0x00, 0x68, 0x21, 0x00, 0x00
