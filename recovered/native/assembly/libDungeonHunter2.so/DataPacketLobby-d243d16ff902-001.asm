; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008491f8, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby16addByteLenStringEPKch
; demangled: DataPacketLobby::addByteLenString(char const*, unsigned char)
; decoder-mode: arm
008491f8  00 00 a0 e3                                      mov r0, #0
008491fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849200, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby16getByteLenStringERPcRh
; demangled: DataPacketLobby::getByteLenString(char*&, unsigned char&)
; decoder-mode: arm
00849200  00 00 a0 e3                                      mov r0, #0
00849204  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849208, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby20addByteLenWideStringEPKwh
; demangled: DataPacketLobby::addByteLenWideString(wchar_t const*, unsigned char)
; decoder-mode: arm
00849208  00 00 a0 e3                                      mov r0, #0
0084920c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849210, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby20getByteLenWideStringERPwRh
; demangled: DataPacketLobby::getByteLenWideString(wchar_t*&, unsigned char&)
; decoder-mode: arm
00849210  00 00 a0 e3                                      mov r0, #0
00849214  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849218, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby21addShortLenWideStringEPKwh
; demangled: DataPacketLobby::addShortLenWideString(wchar_t const*, unsigned char)
; decoder-mode: arm
00849218  00 00 a0 e3                                      mov r0, #0
0084921c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849220, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby21getShortLenWideStringERPwRh
; demangled: DataPacketLobby::getShortLenWideString(wchar_t*&, unsigned char&)
; decoder-mode: arm
00849220  00 00 a0 e3                                      mov r0, #0
00849224  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849228, declared_size=72, range_size=72, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11InitMessageEi
; demangled: DataPacketLobby::InitMessage(int)
; decoder-mode: arm
00849228  70 40 2d e9                                      push {r4, r5, r6, lr}
0084922c  00 40 a0 e1                                      mov r4, r0
00849230  01 50 a0 e1                                      mov r5, r1
00849234  00 30 90 e5                                      ldr r3, [r0]
00849238  01 10 a0 e3                                      mov r1, #1
0084923c  0f e0 a0 e1                                      mov lr, pc
00849240  08 f0 93 e5                                      ldr pc, [r3, #8]
00849244  00 30 94 e5                                      ldr r3, [r4]
00849248  02 10 a0 e3                                      mov r1, #2
0084924c  04 00 a0 e1                                      mov r0, r4
00849250  0f e0 a0 e1                                      mov lr, pc
00849254  08 f0 93 e5                                      ldr pc, [r3, #8]
00849258  04 00 a0 e1                                      mov r0, r4
0084925c  05 10 a0 e1                                      mov r1, r5
00849260  00 30 94 e5                                      ldr r3, [r4]
00849264  0f e0 a0 e1                                      mov lr, pc
00849268  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084926c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849270, declared_size=20, range_size=20, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby14InitMMOMessageEs
; demangled: DataPacketLobby::InitMMOMessage(short)
; decoder-mode: arm
00849270  10 40 2d e9                                      push {r4, lr}
00849274  00 30 90 e5                                      ldr r3, [r0]
00849278  0f e0 a0 e1                                      mov lr, pc
0084927c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00849280  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00849284, declared_size=44, range_size=44, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby14GetMessageTypeEv
; demangled: DataPacketLobby::GetMessageType()
; decoder-mode: arm
00849284  04 e0 2d e5                                      str lr, [sp, #-4]!
00849288  0c d0 4d e2                                      sub sp, sp, #0xc
0084928c  08 10 8d e2                                      add r1, sp, #8
00849290  00 30 a0 e3                                      mov r3, #0
00849294  04 30 21 e5                                      str r3, [r1, #-4]!
00849298  00 30 90 e5                                      ldr r3, [r0]
0084929c  0f e0 a0 e1                                      mov lr, pc
008492a0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008492a4  04 00 9d e5                                      ldr r0, [sp, #4]
008492a8  0c d0 8d e2                                      add sp, sp, #0xc
008492ac  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x008492b0, declared_size=44, range_size=44, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby17GetMMOMessageTypeEv
; demangled: DataPacketLobby::GetMMOMessageType()
; decoder-mode: arm
008492b0  04 e0 2d e5                                      str lr, [sp, #-4]!
008492b4  0c d0 4d e2                                      sub sp, sp, #0xc
008492b8  08 10 8d e2                                      add r1, sp, #8
008492bc  00 30 a0 e3                                      mov r3, #0
008492c0  b2 30 61 e1                                      strh r3, [r1, #-2]!
008492c4  00 30 90 e5                                      ldr r3, [r0]
008492c8  0f e0 a0 e1                                      mov lr, pc
008492cc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
008492d0  f6 00 dd e1                                      ldrsh r0, [sp, #6]
008492d4  0c d0 8d e2                                      add sp, sp, #0xc
008492d8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x008492dc, declared_size=28, range_size=28, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby10WillBeFullEi
; demangled: DataPacketLobby::WillBeFull(int)
; decoder-mode: arm
008492dc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
008492e0  04 30 90 e5                                      ldr r3, [r0, #4]
008492e4  02 20 81 e0                                      add r2, r1, r2
008492e8  03 00 52 e1                                      cmp r2, r3
008492ec  00 00 a0 d3                                      movle r0, #0
008492f0  01 00 a0 c3                                      movgt r0, #1
008492f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008492f8, declared_size=60, range_size=60, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7getByteERh
; demangled: DataPacketLobby::getByte(unsigned char&)
; decoder-mode: arm
008492f8  04 40 2d e5                                      str r4, [sp, #-4]!
008492fc  00 30 a0 e1                                      mov r3, r0
00849300  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00849304  10 00 90 e5                                      ldr r0, [r0, #0x10]
00849308  00 00 52 e1                                      cmp r2, r0
0084930c  08 40 93 b5                                      ldrlt r4, [r3, #8]
00849310  01 c0 82 b2                                      addlt ip, r2, #1
00849314  00 00 a0 a3                                      movge r0, #0
00849318  02 20 d4 b7                                      ldrblt r2, [r4, r2]
0084931c  00 00 c1 a5                                      strbge r0, [r1]
00849320  01 00 a0 b3                                      movlt r0, #1
00849324  00 20 c1 b5                                      strblt r2, [r1]
00849328  0c c0 83 b5                                      strlt ip, [r3, #0xc]
0084932c  10 00 bd e8                                      ldm sp!, {r4}
00849330  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849334, declared_size=104, range_size=104, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby8getShortERs
; demangled: DataPacketLobby::getShort(short&)
; decoder-mode: arm
00849334  30 00 2d e9                                      push {r4, r5}
00849338  00 20 a0 e3                                      mov r2, #0
0084933c  b0 20 c1 e1                                      strh r2, [r1]
00849340  00 30 a0 e1                                      mov r3, r0
00849344  10 00 90 e5                                      ldr r0, [r0, #0x10]
00849348  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0084934c  01 00 40 e2                                      sub r0, r0, #1
00849350  02 00 50 e1                                      cmp r0, r2
00849354  00 00 a0 d3                                      movle r0, #0
00849358  0d 00 00 da                                      ble #0x849394
0084935c  08 00 93 e5                                      ldr r0, [r3, #8]
00849360  01 c0 82 e2                                      add ip, r2, #1
00849364  01 40 8c e2                                      add r4, ip, #1
00849368  02 20 d0 e7                                      ldrb r2, [r0, r2]
0084936c  01 00 a0 e3                                      mov r0, #1
00849370  02 24 a0 e1                                      lsl r2, r2, #8
00849374  b0 20 c1 e1                                      strh r2, [r1]
00849378  08 50 93 e5                                      ldr r5, [r3, #8]
0084937c  0c c0 83 e5                                      str ip, [r3, #0xc]
00849380  b0 20 d1 e1                                      ldrh r2, [r1]
00849384  0c c0 d5 e7                                      ldrb ip, [r5, ip]
00849388  02 20 8c e1                                      orr r2, ip, r2
0084938c  b0 20 c1 e1                                      strh r2, [r1]
00849390  0c 40 83 e5                                      str r4, [r3, #0xc]
00849394  30 00 bd e8                                      pop {r4, r5}
00849398  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084939c, declared_size=160, range_size=160, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby6getIntERi
; demangled: DataPacketLobby::getInt(int&)
; decoder-mode: arm
0084939c  70 00 2d e9                                      push {r4, r5, r6}
008493a0  00 30 a0 e3                                      mov r3, #0
008493a4  00 30 81 e5                                      str r3, [r1]
008493a8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
008493ac  00 20 a0 e1                                      mov r2, r0
008493b0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
008493b4  03 c0 4c e2                                      sub ip, ip, #3
008493b8  00 00 5c e1                                      cmp ip, r0
008493bc  03 00 a0 d1                                      movle r0, r3
008493c0  1b 00 00 da                                      ble #0x849434
008493c4  08 c0 92 e5                                      ldr ip, [r2, #8]
008493c8  01 30 80 e2                                      add r3, r0, #1
008493cc  01 40 83 e2                                      add r4, r3, #1
008493d0  00 00 dc e7                                      ldrb r0, [ip, r0]
008493d4  01 c0 84 e2                                      add ip, r4, #1
008493d8  01 50 8c e2                                      add r5, ip, #1
008493dc  00 0c a0 e1                                      lsl r0, r0, #0x18
008493e0  00 00 81 e5                                      str r0, [r1]
008493e4  08 00 92 e5                                      ldr r0, [r2, #8]
008493e8  0c 30 82 e5                                      str r3, [r2, #0xc]
008493ec  00 60 91 e5                                      ldr r6, [r1]
008493f0  03 30 d0 e7                                      ldrb r3, [r0, r3]
008493f4  01 00 a0 e3                                      mov r0, #1
008493f8  03 38 86 e1                                      orr r3, r6, r3, lsl #16
008493fc  00 30 81 e5                                      str r3, [r1]
00849400  08 60 92 e5                                      ldr r6, [r2, #8]
00849404  0c 40 82 e5                                      str r4, [r2, #0xc]
00849408  00 30 91 e5                                      ldr r3, [r1]
0084940c  04 40 d6 e7                                      ldrb r4, [r6, r4]
00849410  04 34 83 e1                                      orr r3, r3, r4, lsl #8
00849414  00 30 81 e5                                      str r3, [r1]
00849418  08 30 92 e5                                      ldr r3, [r2, #8]
0084941c  0c c0 82 e5                                      str ip, [r2, #0xc]
00849420  00 40 91 e5                                      ldr r4, [r1]
00849424  0c 30 d3 e7                                      ldrb r3, [r3, ip]
00849428  03 30 84 e1                                      orr r3, r4, r3
0084942c  00 30 81 e5                                      str r3, [r1]
00849430  0c 50 82 e5                                      str r5, [r2, #0xc]
00849434  70 00 bd e8                                      pop {r4, r5, r6}
00849438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084943c, declared_size=132, range_size=132, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby8getFloatERf
; demangled: DataPacketLobby::getFloat(float&)
; decoder-mode: arm
0084943c  70 00 2d e9                                      push {r4, r5, r6}
00849440  00 20 a0 e3                                      mov r2, #0
00849444  00 20 81 e5                                      str r2, [r1]
00849448  00 30 a0 e1                                      mov r3, r0
0084944c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00849450  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00849454  03 00 40 e2                                      sub r0, r0, #3
00849458  02 00 50 e1                                      cmp r0, r2
0084945c  00 00 a0 d3                                      movle r0, #0
00849460  14 00 00 da                                      ble #0x8494b8
00849464  08 00 93 e5                                      ldr r0, [r3, #8]
00849468  01 40 82 e2                                      add r4, r2, #1
0084946c  01 c0 84 e2                                      add ip, r4, #1
00849470  02 00 d0 e7                                      ldrb r0, [r0, r2]
00849474  01 20 8c e2                                      add r2, ip, #1
00849478  01 50 82 e2                                      add r5, r2, #1
0084947c  00 00 c1 e5                                      strb r0, [r1]
00849480  08 60 93 e5                                      ldr r6, [r3, #8]
00849484  0c 40 83 e5                                      str r4, [r3, #0xc]
00849488  01 00 a0 e3                                      mov r0, #1
0084948c  04 40 d6 e7                                      ldrb r4, [r6, r4]
00849490  01 40 c1 e5                                      strb r4, [r1, #1]
00849494  08 40 93 e5                                      ldr r4, [r3, #8]
00849498  0c c0 83 e5                                      str ip, [r3, #0xc]
0084949c  0c c0 d4 e7                                      ldrb ip, [r4, ip]
008494a0  02 c0 c1 e5                                      strb ip, [r1, #2]
008494a4  08 c0 93 e5                                      ldr ip, [r3, #8]
008494a8  0c 20 83 e5                                      str r2, [r3, #0xc]
008494ac  02 20 dc e7                                      ldrb r2, [ip, r2]
008494b0  03 20 c1 e5                                      strb r2, [r1, #3]
008494b4  0c 50 83 e5                                      str r5, [r3, #0xc]
008494b8  70 00 bd e8                                      pop {r4, r5, r6}
008494bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008494c0, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby13getMessageLenEv
; demangled: DataPacketLobby::getMessageLen()
; decoder-mode: arm
008494c0  10 00 90 e5                                      ldr r0, [r0, #0x10]
008494c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008494c8, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby14getMessageBodyEv
; demangled: DataPacketLobby::getMessageBody()
; decoder-mode: arm
008494c8  08 00 90 e5                                      ldr r0, [r0, #8]
008494cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008494d0, declared_size=44, range_size=44, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11packMessageEv
; demangled: DataPacketLobby::packMessage()
; decoder-mode: arm
008494d0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008494d4  08 20 90 e5                                      ldr r2, [r0, #8]
008494d8  02 10 43 e2                                      sub r1, r3, #2
008494dc  51 14 e7 e7                                      ubfx r1, r1, #8, #8
008494e0  10 30 80 e5                                      str r3, [r0, #0x10]
008494e4  00 10 c2 e5                                      strb r1, [r2]
008494e8  10 20 90 e5                                      ldr r2, [r0, #0x10]
008494ec  08 30 90 e5                                      ldr r3, [r0, #8]
008494f0  02 20 42 e2                                      sub r2, r2, #2
008494f4  01 20 c3 e5                                      strb r2, [r3, #1]
008494f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008494fc, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby13getNextPacketEv
; demangled: DataPacketLobby::getNextPacket()
; decoder-mode: arm
008494fc  14 00 90 e5                                      ldr r0, [r0, #0x14]
00849500  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849504, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby13setNextPacketEP10DataPacket
; demangled: DataPacketLobby::setNextPacket(DataPacket*)
; decoder-mode: arm
00849504  14 10 80 e5                                      str r1, [r0, #0x14]
00849508  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084950c, declared_size=24, range_size=24, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11IsSendByTcpEv
; demangled: DataPacketLobby::IsSendByTcp()
; decoder-mode: arm
0084950c  18 00 90 e5                                      ldr r0, [r0, #0x18]
00849510  01 00 50 e3                                      cmp r0, #1
00849514  03 00 50 13                                      cmpne r0, #3
00849518  00 00 a0 13                                      movne r0, #0
0084951c  01 00 a0 03                                      moveq r0, #1
00849520  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849524, declared_size=20, range_size=20, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11IsSendByUdpEv
; demangled: DataPacketLobby::IsSendByUdp()
; decoder-mode: arm
00849524  18 00 90 e5                                      ldr r0, [r0, #0x18]
00849528  02 00 50 e3                                      cmp r0, #2
0084952c  00 00 a0 13                                      movne r0, #0
00849530  01 00 a0 03                                      moveq r0, #1
00849534  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849538, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11getDataTypeEv
; demangled: DataPacketLobby::getDataType()
; decoder-mode: arm
00849538  18 00 90 e5                                      ldr r0, [r0, #0x18]
0084953c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849540, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby11setDataTypeEi
; demangled: DataPacketLobby::setDataType(int)
; decoder-mode: arm
00849540  18 10 80 e5                                      str r1, [r0, #0x18]
00849544  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849548, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7getPortEv
; demangled: DataPacketLobby::getPort()
; decoder-mode: arm
00849548  20 00 90 e5                                      ldr r0, [r0, #0x20]
0084954c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849550, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7setPortEi
; demangled: DataPacketLobby::setPort(int)
; decoder-mode: arm
00849550  20 10 80 e5                                      str r1, [r0, #0x20]
00849554  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849558, declared_size=8, range_size=8, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby5getIPEv
; demangled: DataPacketLobby::getIP()
; decoder-mode: arm
00849558  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0084955c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00849560, declared_size=88, range_size=88, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby13String2PacketEPci
; demangled: DataPacketLobby::String2Packet(char*, int)
; decoder-mode: arm
00849560  70 40 2d e9                                      push {r4, r5, r6, lr}
00849564  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00849568  01 50 8c e2                                      add r5, ip, #1
0084956c  0c 40 d1 e7                                      ldrb r4, [r1, ip]
00849570  0c 50 80 e5                                      str r5, [r0, #0xc]
00849574  05 c0 d1 e7                                      ldrb ip, [r1, r5]
00849578  01 50 85 e2                                      add r5, r5, #1
0084957c  0c 50 80 e5                                      str r5, [r0, #0xc]
00849580  04 44 8c e1                                      orr r4, ip, r4, lsl #8
00849584  74 40 bf e6                                      sxth r4, r4
00849588  01 c0 84 e2                                      add ip, r4, #1
0084958c  02 00 5c e1                                      cmp ip, r2
00849590  01 00 00 ba                                      blt #0x84959c
00849594  00 00 e0 e3                                      mvn r0, #0
00849598  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084959c  00 30 90 e5                                      ldr r3, [r0]
008495a0  02 10 81 e2                                      add r1, r1, #2
008495a4  04 20 a0 e1                                      mov r2, r4
008495a8  0f e0 a0 e1                                      mov lr, pc
008495ac  68 f0 93 e5                                      ldr pc, [r3, #0x68]
008495b0  02 00 84 e2                                      add r0, r4, #2
008495b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008495b8, declared_size=72, range_size=72, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby13Packet2StringEPcRi
; demangled: DataPacketLobby::Packet2String(char*, int&)
; decoder-mode: arm
008495b8  70 40 2d e9                                      push {r4, r5, r6, lr}
008495bc  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
008495c0  00 40 a0 e1                                      mov r4, r0
008495c4  02 50 a0 e1                                      mov r5, r2
008495c8  00 30 c1 e5                                      strb r3, [r1]
008495cc  10 30 90 e5                                      ldr r3, [r0, #0x10]
008495d0  02 00 81 e2                                      add r0, r1, #2
008495d4  01 30 c1 e5                                      strb r3, [r1, #1]
008495d8  02 30 a0 e3                                      mov r3, #2
008495dc  00 30 82 e5                                      str r3, [r2]
008495e0  10 20 94 e5                                      ldr r2, [r4, #0x10]
008495e4  08 10 94 e5                                      ldr r1, [r4, #8]
008495e8  58 87 ff eb                                      bl #0x82b350
008495ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
008495f0  00 20 95 e5                                      ldr r2, [r5]
008495f4  03 30 82 e0                                      add r3, r2, r3
008495f8  00 30 85 e5                                      str r3, [r5]
008495fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849600, declared_size=36, range_size=36, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby14setMessageBodyEPhi
; demangled: DataPacketLobby::setMessageBody(unsigned char*, int)
; decoder-mode: arm
00849600  70 40 2d e9                                      push {r4, r5, r6, lr}
00849604  00 40 a0 e1                                      mov r4, r0
00849608  08 00 90 e5                                      ldr r0, [r0, #8]
0084960c  02 50 a0 e1                                      mov r5, r2
00849610  4e 87 ff eb                                      bl #0x82b350
00849614  00 30 a0 e3                                      mov r3, #0
00849618  0c 30 84 e5                                      str r3, [r4, #0xc]
0084961c  10 50 84 e5                                      str r5, [r4, #0x10]
00849620  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849624, declared_size=96, range_size=96, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyD1Ev
; demangled: DataPacketLobby::~DataPacketLobby()
; decoder-mode: arm
00849624  10 40 2d e9                                      push {r4, lr}
00849628  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0084962c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00849630  00 40 a0 e1                                      mov r4, r0
00849634  03 30 8f e0                                      add r3, pc, r3
00849638  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0084963c  02 20 93 e7                                      ldr r2, [r3, r2]
00849640  00 00 50 e3                                      cmp r0, #0
00849644  08 20 82 e2                                      add r2, r2, #8
00849648  00 20 84 e5                                      str r2, [r4]
0084964c  02 00 00 0a                                      beq #0x84965c
00849650  16 13 eb eb                                      bl #0x30e2b0
00849654  00 30 a0 e3                                      mov r3, #0
00849658  1c 30 84 e5                                      str r3, [r4, #0x1c]
0084965c  08 00 94 e5                                      ldr r0, [r4, #8]
00849660  00 00 50 e3                                      cmp r0, #0
00849664  02 00 00 0a                                      beq #0x849674
00849668  10 13 eb eb                                      bl #0x30e2b0
0084966c  00 30 a0 e3                                      mov r3, #0
00849670  08 30 84 e5                                      str r3, [r4, #8]
00849674  04 00 a0 e1                                      mov r0, r4
00849678  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084967c  5c b4 14 00 60 3e 00 00                          .byte 0x5c, 0xb4, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00

; FUNCTION 0x00849684, declared_size=28, range_size=28, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyD0Ev
; demangled: DataPacketLobby::~DataPacketLobby()
; decoder-mode: arm
00849684  10 40 2d e9                                      push {r4, lr}
00849688  00 40 a0 e1                                      mov r4, r0
0084968c  e4 ff ff eb                                      bl #0x849624
00849690  04 00 a0 e1                                      mov r0, r4
00849694  05 13 eb eb                                      bl #0x30e2b0
00849698  04 00 a0 e1                                      mov r0, r4
0084969c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008496b4, declared_size=96, range_size=96, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyD2Ev
; demangled: DataPacketLobby::~DataPacketLobby()
; decoder-mode: arm
008496b4  10 40 2d e9                                      push {r4, lr}
008496b8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
008496bc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
008496c0  00 40 a0 e1                                      mov r4, r0
008496c4  03 30 8f e0                                      add r3, pc, r3
008496c8  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
008496cc  02 20 93 e7                                      ldr r2, [r3, r2]
008496d0  00 00 50 e3                                      cmp r0, #0
008496d4  08 20 82 e2                                      add r2, r2, #8
008496d8  00 20 84 e5                                      str r2, [r4]
008496dc  02 00 00 0a                                      beq #0x8496ec
008496e0  f2 12 eb eb                                      bl #0x30e2b0
008496e4  00 30 a0 e3                                      mov r3, #0
008496e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
008496ec  08 00 94 e5                                      ldr r0, [r4, #8]
008496f0  00 00 50 e3                                      cmp r0, #0
008496f4  02 00 00 0a                                      beq #0x849704
008496f8  ec 12 eb eb                                      bl #0x30e2b0
008496fc  00 30 a0 e3                                      mov r3, #0
00849700  08 30 84 e5                                      str r3, [r4, #8]
00849704  04 00 a0 e1                                      mov r0, r4
00849708  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0084970c  cc b3 14 00 60 3e 00 00                          .byte 0xcc, 0xb3, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00

; FUNCTION 0x00849714, declared_size=52, range_size=52, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby5setIPEPc
; demangled: DataPacketLobby::setIP(char*)
; decoder-mode: arm
00849714  70 40 2d e9                                      push {r4, r5, r6, lr}
00849718  00 40 a0 e1                                      mov r4, r0
0084971c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00849720  01 50 a0 e1                                      mov r5, r1
00849724  00 00 50 e3                                      cmp r0, #0
00849728  02 00 00 0a                                      beq #0x849738
0084972c  df 12 eb eb                                      bl #0x30e2b0
00849730  00 30 a0 e3                                      mov r3, #0
00849734  1c 30 84 e5                                      str r3, [r4, #0x1c]
00849738  05 00 a0 e1                                      mov r0, r5
0084973c  97 88 ff eb                                      bl #0x82b9a0
00849740  1c 00 84 e5                                      str r0, [r4, #0x1c]
00849744  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849748, declared_size=196, range_size=196, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby17getShortLenStringERPcRs
; demangled: DataPacketLobby::getShortLenString(char*&, short&)
; decoder-mode: arm
00849748  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0084974c  00 60 a0 e3                                      mov r6, #0
00849750  b0 60 c2 e1                                      strh r6, [r2]
00849754  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00849758  02 50 a0 e1                                      mov r5, r2
0084975c  08 20 90 e5                                      ldr r2, [r0, #8]
00849760  00 40 a0 e1                                      mov r4, r0
00849764  01 70 a0 e1                                      mov r7, r1
00849768  03 20 d2 e7                                      ldrb r2, [r2, r3]
0084976c  01 10 83 e2                                      add r1, r3, #1
00849770  01 30 81 e2                                      add r3, r1, #1
00849774  02 24 a0 e1                                      lsl r2, r2, #8
00849778  b0 20 c5 e1                                      strh r2, [r5]
0084977c  08 00 90 e5                                      ldr r0, [r0, #8]
00849780  0c 10 84 e5                                      str r1, [r4, #0xc]
00849784  b0 20 d5 e1                                      ldrh r2, [r5]
00849788  01 10 d0 e7                                      ldrb r1, [r0, r1]
0084978c  02 20 81 e1                                      orr r2, r1, r2
00849790  b0 20 c5 e1                                      strh r2, [r5]
00849794  0c 30 84 e5                                      str r3, [r4, #0xc]
00849798  b0 00 d5 e1                                      ldrh r0, [r5]
0084979c  10 10 94 e5                                      ldr r1, [r4, #0x10]
008497a0  70 20 bf e6                                      sxth r2, r0
008497a4  01 10 62 e0                                      rsb r1, r2, r1
008497a8  01 00 53 e1                                      cmp r3, r1
008497ac  14 00 00 ca                                      bgt #0x849804
008497b0  00 00 50 e3                                      cmp r0, #0
008497b4  01 00 00 1a                                      bne #0x8497c0
008497b8  00 00 87 e5                                      str r0, [r7]
008497bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008497c0  01 00 82 e2                                      add r0, r2, #1
008497c4  41 12 eb eb                                      bl #0x30e0d0
008497c8  00 00 87 e5                                      str r0, [r7]
008497cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008497d0  08 10 94 e5                                      ldr r1, [r4, #8]
008497d4  f0 20 d5 e1                                      ldrsh r2, [r5]
008497d8  03 10 81 e0                                      add r1, r1, r3
008497dc  db 86 ff eb                                      bl #0x82b350
008497e0  00 20 97 e5                                      ldr r2, [r7]
008497e4  f0 30 d5 e1                                      ldrsh r3, [r5]
008497e8  01 00 a0 e3                                      mov r0, #1
008497ec  03 60 c2 e7                                      strb r6, [r2, r3]
008497f0  f0 30 d5 e1                                      ldrsh r3, [r5]
008497f4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008497f8  03 30 82 e0                                      add r3, r2, r3
008497fc  0c 30 84 e5                                      str r3, [r4, #0xc]
00849800  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00849804  00 00 a0 e3                                      mov r0, #0
00849808  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0084980c, declared_size=176, range_size=176, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7getBlobERPcRs
; demangled: DataPacketLobby::getBlob(char*&, short&)
; decoder-mode: arm
0084980c  70 40 2d e9                                      push {r4, r5, r6, lr}
00849810  01 60 a0 e1                                      mov r6, r1
00849814  00 30 90 e5                                      ldr r3, [r0]
00849818  02 10 a0 e1                                      mov r1, r2
0084981c  02 40 a0 e1                                      mov r4, r2
00849820  00 50 a0 e1                                      mov r5, r0
00849824  0f e0 a0 e1                                      mov lr, pc
00849828  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0084982c  00 00 50 e3                                      cmp r0, #0
00849830  07 00 00 0a                                      beq #0x849854
00849834  f0 00 d4 e1                                      ldrsh r0, [r4]
00849838  00 00 50 e3                                      cmp r0, #0
0084983c  04 00 00 ba                                      blt #0x849854
00849840  04 30 95 e5                                      ldr r3, [r5, #4]
00849844  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00849848  03 30 60 e0                                      rsb r3, r0, r3
0084984c  03 00 52 e1                                      cmp r2, r3
00849850  03 00 00 da                                      ble #0x849864
00849854  00 00 a0 e3                                      mov r0, #0
00849858  00 00 86 e5                                      str r0, [r6]
0084985c  b0 00 c4 e1                                      strh r0, [r4]
00849860  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849864  01 00 80 e2                                      add r0, r0, #1
00849868  18 12 eb eb                                      bl #0x30e0d0
0084986c  00 00 86 e5                                      str r0, [r6]
00849870  f0 30 d4 e1                                      ldrsh r3, [r4]
00849874  00 20 a0 e3                                      mov r2, #0
00849878  03 20 c0 e7                                      strb r2, [r0, r3]
0084987c  f0 20 d4 e1                                      ldrsh r2, [r4]
00849880  00 00 52 e3                                      cmp r2, #0
00849884  0a 00 00 da                                      ble #0x8498b4
00849888  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0084988c  08 10 95 e5                                      ldr r1, [r5, #8]
00849890  00 00 96 e5                                      ldr r0, [r6]
00849894  03 10 81 e0                                      add r1, r1, r3
00849898  ac 86 ff eb                                      bl #0x82b350
0084989c  f0 30 d4 e1                                      ldrsh r3, [r4]
008498a0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
008498a4  01 00 a0 e3                                      mov r0, #1
008498a8  03 30 82 e0                                      add r3, r2, r3
008498ac  0c 30 85 e5                                      str r3, [r5, #0xc]
008498b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008498b4  01 00 a0 e3                                      mov r0, #1
008498b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008498bc, declared_size=104, range_size=104, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby18AllocateMoreMomeryEv
; demangled: DataPacketLobby::AllocateMoreMomery()
; decoder-mode: arm
008498bc  70 40 2d e9                                      push {r4, r5, r6, lr}
008498c0  04 50 90 e5                                      ldr r5, [r0, #4]
008498c4  00 40 a0 e1                                      mov r4, r0
008498c8  85 50 a0 e1                                      lsl r5, r5, #1
008498cc  05 00 a0 e1                                      mov r0, r5
008498d0  fe 11 eb eb                                      bl #0x30e0d0
008498d4  00 60 50 e2                                      subs r6, r0, #0
008498d8  0f 00 00 0a                                      beq #0x84991c
008498dc  00 10 a0 e3                                      mov r1, #0
008498e0  05 20 a0 e1                                      mov r2, r5
008498e4  9e 86 ff eb                                      bl #0x82b364
008498e8  06 00 a0 e1                                      mov r0, r6
008498ec  08 10 94 e5                                      ldr r1, [r4, #8]
008498f0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008498f4  95 86 ff eb                                      bl #0x82b350
008498f8  08 00 94 e5                                      ldr r0, [r4, #8]
008498fc  00 00 50 e3                                      cmp r0, #0
00849900  02 00 00 0a                                      beq #0x849910
00849904  69 12 eb eb                                      bl #0x30e2b0
00849908  00 30 a0 e3                                      mov r3, #0
0084990c  08 30 84 e5                                      str r3, [r4, #8]
00849910  60 00 84 e9                                      stmib r4, {r5, r6}
00849914  01 00 a0 e3                                      mov r0, #1
00849918  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084991c  06 00 a0 e1                                      mov r0, r6
00849920  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849924, declared_size=180, range_size=180, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby9addPacketEP10DataPacket
; demangled: DataPacketLobby::addPacket(DataPacket*)
; decoder-mode: arm
00849924  70 40 2d e9                                      push {r4, r5, r6, lr}
00849928  00 40 a0 e1                                      mov r4, r0
0084992c  00 30 91 e5                                      ldr r3, [r1]
00849930  01 00 a0 e1                                      mov r0, r1
00849934  01 60 a0 e1                                      mov r6, r1
00849938  0f e0 a0 e1                                      mov lr, pc
0084993c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00849940  00 50 a0 e1                                      mov r5, r0
00849944  05 10 a0 e1                                      mov r1, r5
00849948  04 00 a0 e1                                      mov r0, r4
0084994c  62 fe ff eb                                      bl #0x8492dc
00849950  00 00 50 e3                                      cmp r0, #0
00849954  03 00 00 0a                                      beq #0x849968
00849958  04 00 a0 e1                                      mov r0, r4
0084995c  d6 ff ff eb                                      bl #0x8498bc
00849960  00 00 50 e3                                      cmp r0, #0
00849964  16 00 00 0a                                      beq #0x8499c4
00849968  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0084996c  08 10 94 e5                                      ldr r1, [r4, #8]
00849970  55 04 e7 e7                                      ubfx r0, r5, #8, #8
00849974  01 30 82 e2                                      add r3, r2, #1
00849978  02 00 c1 e7                                      strb r0, [r1, r2]
0084997c  08 10 94 e5                                      ldr r1, [r4, #8]
00849980  01 20 83 e2                                      add r2, r3, #1
00849984  06 00 a0 e1                                      mov r0, r6
00849988  03 50 c1 e7                                      strb r5, [r1, r3]
0084998c  08 10 94 e5                                      ldr r1, [r4, #8]
00849990  0c 20 84 e5                                      str r2, [r4, #0xc]
00849994  00 30 96 e5                                      ldr r3, [r6]
00849998  02 60 81 e0                                      add r6, r1, r2
0084999c  0f e0 a0 e1                                      mov lr, pc
008499a0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
008499a4  05 20 a0 e1                                      mov r2, r5
008499a8  00 10 a0 e1                                      mov r1, r0
008499ac  06 00 a0 e1                                      mov r0, r6
008499b0  66 86 ff eb                                      bl #0x82b350
008499b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008499b8  05 50 83 e0                                      add r5, r3, r5
008499bc  0c 50 84 e5                                      str r5, [r4, #0xc]
008499c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008499c4  08 00 9f e5                                      ldr r0, [pc, #8]
008499c8  00 00 8f e0                                      add r0, pc, r0
008499cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008499d0  6b 87 ff ea                                      b #0x82b784
; mapping-symbol data/literal pool
008499d4  78 5b 0c 00                                      .byte 0x78, 0x5b, 0x0c, 0x00

; FUNCTION 0x008499d8, declared_size=144, range_size=144, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby17addShortLenStringEPKcs
; demangled: DataPacketLobby::addShortLenString(char const*, short)
; decoder-mode: arm
008499d8  00 00 51 e3                                      cmp r1, #0
008499dc  00 00 52 13                                      cmpne r2, #0
008499e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008499e4  02 40 a0 e1                                      mov r4, r2
008499e8  01 60 a0 e1                                      mov r6, r1
008499ec  00 50 a0 e1                                      mov r5, r0
008499f0  01 00 00 1a                                      bne #0x8499fc
008499f4  00 00 a0 e3                                      mov r0, #0
008499f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008499fc  02 10 a0 e1                                      mov r1, r2
00849a00  35 fe ff eb                                      bl #0x8492dc
00849a04  00 00 50 e3                                      cmp r0, #0
00849a08  03 00 00 0a                                      beq #0x849a1c
00849a0c  05 00 a0 e1                                      mov r0, r5
00849a10  a9 ff ff eb                                      bl #0x8498bc
00849a14  00 00 50 e3                                      cmp r0, #0
00849a18  f5 ff ff 0a                                      beq #0x8499f4
00849a1c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00849a20  08 10 95 e5                                      ldr r1, [r5, #8]
00849a24  54 04 e7 e7                                      ubfx r0, r4, #8, #8
00849a28  01 20 83 e2                                      add r2, r3, #1
00849a2c  03 00 c1 e7                                      strb r0, [r1, r3]
00849a30  08 00 95 e5                                      ldr r0, [r5, #8]
00849a34  01 30 82 e2                                      add r3, r2, #1
00849a38  06 10 a0 e1                                      mov r1, r6
00849a3c  02 40 c0 e7                                      strb r4, [r0, r2]
00849a40  08 00 95 e5                                      ldr r0, [r5, #8]
00849a44  0c 30 85 e5                                      str r3, [r5, #0xc]
00849a48  04 20 a0 e1                                      mov r2, r4
00849a4c  03 00 80 e0                                      add r0, r0, r3
00849a50  3e 86 ff eb                                      bl #0x82b350
00849a54  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00849a58  01 00 a0 e3                                      mov r0, #1
00849a5c  04 40 83 e0                                      add r4, r3, r4
00849a60  0c 40 85 e5                                      str r4, [r5, #0xc]
00849a64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849a68, declared_size=112, range_size=112, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby14addQueryStringEPKcs
; demangled: DataPacketLobby::addQueryString(char const*, short)
; decoder-mode: arm
00849a68  00 00 51 e3                                      cmp r1, #0
00849a6c  00 00 52 13                                      cmpne r2, #0
00849a70  70 40 2d e9                                      push {r4, r5, r6, lr}
00849a74  02 40 a0 e1                                      mov r4, r2
00849a78  01 60 a0 e1                                      mov r6, r1
00849a7c  00 50 a0 e1                                      mov r5, r0
00849a80  01 00 00 1a                                      bne #0x849a8c
00849a84  00 00 a0 e3                                      mov r0, #0
00849a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849a8c  02 10 a0 e1                                      mov r1, r2
00849a90  11 fe ff eb                                      bl #0x8492dc
00849a94  00 00 50 e3                                      cmp r0, #0
00849a98  03 00 00 0a                                      beq #0x849aac
00849a9c  05 00 a0 e1                                      mov r0, r5
00849aa0  85 ff ff eb                                      bl #0x8498bc
00849aa4  00 00 50 e3                                      cmp r0, #0
00849aa8  f5 ff ff 0a                                      beq #0x849a84
00849aac  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00849ab0  08 00 95 e5                                      ldr r0, [r5, #8]
00849ab4  04 20 a0 e1                                      mov r2, r4
00849ab8  06 10 a0 e1                                      mov r1, r6
00849abc  03 00 80 e0                                      add r0, r0, r3
00849ac0  22 86 ff eb                                      bl #0x82b350
00849ac4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00849ac8  01 00 a0 e3                                      mov r0, #1
00849acc  04 40 83 e0                                      add r4, r3, r4
00849ad0  0c 40 85 e5                                      str r4, [r5, #0xc]
00849ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849ad8, declared_size=148, range_size=148, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7addBlobEPcs
; demangled: DataPacketLobby::addBlob(char*, short)
; decoder-mode: arm
00849ad8  01 30 71 e2                                      rsbs r3, r1, #1
00849adc  00 30 a0 33                                      movlo r3, #0
00849ae0  a2 3f 93 e1                                      orrs r3, r3, r2, lsr #31
00849ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
00849ae8  02 50 a0 e1                                      mov r5, r2
00849aec  01 60 a0 e1                                      mov r6, r1
00849af0  02 10 a0 13                                      movne r1, #2
00849af4  02 10 85 02                                      addeq r1, r5, #2
00849af8  00 50 a0 13                                      movne r5, #0
00849afc  00 40 a0 e1                                      mov r4, r0
00849b00  f5 fd ff eb                                      bl #0x8492dc
00849b04  00 00 50 e3                                      cmp r0, #0
00849b08  03 00 00 0a                                      beq #0x849b1c
00849b0c  04 00 a0 e1                                      mov r0, r4
00849b10  69 ff ff eb                                      bl #0x8498bc
00849b14  00 00 50 e3                                      cmp r0, #0
00849b18  10 00 00 0a                                      beq #0x849b60
00849b1c  00 30 94 e5                                      ldr r3, [r4]
00849b20  04 00 a0 e1                                      mov r0, r4
00849b24  05 10 a0 e1                                      mov r1, r5
00849b28  0f e0 a0 e1                                      mov lr, pc
00849b2c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00849b30  00 00 55 e3                                      cmp r5, #0
00849b34  0a 00 00 0a                                      beq #0x849b64
00849b38  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00849b3c  08 00 94 e5                                      ldr r0, [r4, #8]
00849b40  05 20 a0 e1                                      mov r2, r5
00849b44  06 10 a0 e1                                      mov r1, r6
00849b48  03 00 80 e0                                      add r0, r0, r3
00849b4c  ff 85 ff eb                                      bl #0x82b350
00849b50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00849b54  01 00 a0 e3                                      mov r0, #1
00849b58  05 50 83 e0                                      add r5, r3, r5
00849b5c  0c 50 84 e5                                      str r5, [r4, #0xc]
00849b60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849b64  01 00 a0 e3                                      mov r0, #1
00849b68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849b6c, declared_size=144, range_size=144, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby8addFloatEf
; demangled: DataPacketLobby::addFloat(float)
; decoder-mode: arm
00849b6c  10 40 2d e9                                      push {r4, lr}
00849b70  08 d0 4d e2                                      sub sp, sp, #8
00849b74  04 10 8d e5                                      str r1, [sp, #4]
00849b78  04 10 a0 e3                                      mov r1, #4
00849b7c  00 40 a0 e1                                      mov r4, r0
00849b80  d5 fd ff eb                                      bl #0x8492dc
00849b84  00 00 50 e3                                      cmp r0, #0
00849b88  16 00 00 1a                                      bne #0x849be8
00849b8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00849b90  04 c0 dd e5                                      ldrb ip, [sp, #4]
00849b94  08 00 94 e5                                      ldr r0, [r4, #8]
00849b98  01 10 83 e2                                      add r1, r3, #1
00849b9c  01 20 81 e2                                      add r2, r1, #1
00849ba0  03 c0 c0 e7                                      strb ip, [r0, r3]
00849ba4  05 c0 dd e5                                      ldrb ip, [sp, #5]
00849ba8  08 00 94 e5                                      ldr r0, [r4, #8]
00849bac  0c 10 84 e5                                      str r1, [r4, #0xc]
00849bb0  01 30 82 e2                                      add r3, r2, #1
00849bb4  01 c0 c0 e7                                      strb ip, [r0, r1]
00849bb8  06 c0 dd e5                                      ldrb ip, [sp, #6]
00849bbc  08 00 94 e5                                      ldr r0, [r4, #8]
00849bc0  0c 20 84 e5                                      str r2, [r4, #0xc]
00849bc4  01 10 83 e2                                      add r1, r3, #1
00849bc8  02 c0 c0 e7                                      strb ip, [r0, r2]
00849bcc  07 c0 dd e5                                      ldrb ip, [sp, #7]
00849bd0  08 20 94 e5                                      ldr r2, [r4, #8]
00849bd4  01 00 a0 e3                                      mov r0, #1
00849bd8  03 c0 c2 e7                                      strb ip, [r2, r3]
00849bdc  0c 10 84 e5                                      str r1, [r4, #0xc]
00849be0  08 d0 8d e2                                      add sp, sp, #8
00849be4  10 80 bd e8                                      pop {r4, pc}
00849be8  04 00 a0 e1                                      mov r0, r4
00849bec  32 ff ff eb                                      bl #0x8498bc
00849bf0  00 00 50 e3                                      cmp r0, #0
00849bf4  e4 ff ff 1a                                      bne #0x849b8c
00849bf8  f8 ff ff ea                                      b #0x849be0

; FUNCTION 0x00849bfc, declared_size=124, range_size=124, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby6addIntEi
; demangled: DataPacketLobby::addInt(int)
; decoder-mode: arm
00849bfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00849c00  01 50 a0 e1                                      mov r5, r1
00849c04  04 10 a0 e3                                      mov r1, #4
00849c08  00 40 a0 e1                                      mov r4, r0
00849c0c  b2 fd ff eb                                      bl #0x8492dc
00849c10  00 00 50 e3                                      cmp r0, #0
00849c14  12 00 00 1a                                      bne #0x849c64
00849c18  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00849c1c  08 10 94 e5                                      ldr r1, [r4, #8]
00849c20  25 0c a0 e1                                      lsr r0, r5, #0x18
00849c24  01 30 82 e2                                      add r3, r2, #1
00849c28  02 00 c1 e7                                      strb r0, [r1, r2]
00849c2c  08 10 94 e5                                      ldr r1, [r4, #8]
00849c30  55 08 e7 e7                                      ubfx r0, r5, #0x10, #8
00849c34  01 20 83 e2                                      add r2, r3, #1
00849c38  03 00 c1 e7                                      strb r0, [r1, r3]
00849c3c  08 10 94 e5                                      ldr r1, [r4, #8]
00849c40  55 04 e7 e7                                      ubfx r0, r5, #8, #8
00849c44  01 30 82 e2                                      add r3, r2, #1
00849c48  02 00 c1 e7                                      strb r0, [r1, r2]
00849c4c  08 10 94 e5                                      ldr r1, [r4, #8]
00849c50  01 20 83 e2                                      add r2, r3, #1
00849c54  01 00 a0 e3                                      mov r0, #1
00849c58  03 50 c1 e7                                      strb r5, [r1, r3]
00849c5c  0c 20 84 e5                                      str r2, [r4, #0xc]
00849c60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849c64  04 00 a0 e1                                      mov r0, r4
00849c68  13 ff ff eb                                      bl #0x8498bc
00849c6c  00 00 50 e3                                      cmp r0, #0
00849c70  e8 ff ff 1a                                      bne #0x849c18
00849c74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849c78, declared_size=92, range_size=92, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby8addShortEs
; demangled: DataPacketLobby::addShort(short)
; decoder-mode: arm
00849c78  70 40 2d e9                                      push {r4, r5, r6, lr}
00849c7c  01 50 a0 e1                                      mov r5, r1
00849c80  02 10 a0 e3                                      mov r1, #2
00849c84  00 40 a0 e1                                      mov r4, r0
00849c88  93 fd ff eb                                      bl #0x8492dc
00849c8c  00 00 50 e3                                      cmp r0, #0
00849c90  0a 00 00 1a                                      bne #0x849cc0
00849c94  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00849c98  08 10 94 e5                                      ldr r1, [r4, #8]
00849c9c  55 04 e7 e7                                      ubfx r0, r5, #8, #8
00849ca0  01 30 82 e2                                      add r3, r2, #1
00849ca4  02 00 c1 e7                                      strb r0, [r1, r2]
00849ca8  08 10 94 e5                                      ldr r1, [r4, #8]
00849cac  01 20 83 e2                                      add r2, r3, #1
00849cb0  01 00 a0 e3                                      mov r0, #1
00849cb4  03 50 c1 e7                                      strb r5, [r1, r3]
00849cb8  0c 20 84 e5                                      str r2, [r4, #0xc]
00849cbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849cc0  04 00 a0 e1                                      mov r0, r4
00849cc4  fc fe ff eb                                      bl #0x8498bc
00849cc8  00 00 50 e3                                      cmp r0, #0
00849ccc  f0 ff ff 1a                                      bne #0x849c94
00849cd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849cd4, declared_size=76, range_size=76, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby7addByteEh
; demangled: DataPacketLobby::addByte(unsigned char)
; decoder-mode: arm
00849cd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00849cd8  01 50 a0 e1                                      mov r5, r1
00849cdc  01 10 a0 e3                                      mov r1, #1
00849ce0  00 40 a0 e1                                      mov r4, r0
00849ce4  7c fd ff eb                                      bl #0x8492dc
00849ce8  00 00 50 e3                                      cmp r0, #0
00849cec  06 00 00 1a                                      bne #0x849d0c
00849cf0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00849cf4  08 10 94 e5                                      ldr r1, [r4, #8]
00849cf8  01 00 a0 e3                                      mov r0, #1
00849cfc  00 20 83 e0                                      add r2, r3, r0
00849d00  03 50 c1 e7                                      strb r5, [r1, r3]
00849d04  0c 20 84 e5                                      str r2, [r4, #0xc]
00849d08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00849d0c  04 00 a0 e1                                      mov r0, r4
00849d10  e9 fe ff eb                                      bl #0x8498bc
00849d14  00 00 50 e3                                      cmp r0, #0
00849d18  f4 ff ff 1a                                      bne #0x849cf0
00849d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849d20, declared_size=172, range_size=172, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyC1EP10DataPacket
; demangled: DataPacketLobby::DataPacketLobby(DataPacket*)
; decoder-mode: arm
00849d20  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00849d24  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00849d28  70 40 2d e9                                      push {r4, r5, r6, lr}
00849d2c  03 30 8f e0                                      add r3, pc, r3
00849d30  02 20 93 e7                                      ldr r2, [r3, r2]
00849d34  00 60 a0 e3                                      mov r6, #0
00849d38  1c 60 80 e5                                      str r6, [r0, #0x1c]
00849d3c  08 20 82 e2                                      add r2, r2, #8
00849d40  20 60 80 e5                                      str r6, [r0, #0x20]
00849d44  14 60 80 e5                                      str r6, [r0, #0x14]
00849d48  00 20 80 e5                                      str r2, [r0]
00849d4c  00 40 a0 e1                                      mov r4, r0
00849d50  00 20 91 e5                                      ldr r2, [r1]
00849d54  01 00 a0 e1                                      mov r0, r1
00849d58  01 50 a0 e1                                      mov r5, r1
00849d5c  0f e0 a0 e1                                      mov lr, pc
00849d60  74 f0 92 e5                                      ldr pc, [r2, #0x74]
00849d64  01 3a a0 e3                                      mov r3, #0x1000
00849d68  04 30 84 e5                                      str r3, [r4, #4]
00849d6c  18 00 84 e5                                      str r0, [r4, #0x18]
00849d70  03 00 a0 e1                                      mov r0, r3
00849d74  d5 10 eb eb                                      bl #0x30e0d0
00849d78  06 10 a0 e1                                      mov r1, r6
00849d7c  04 20 94 e5                                      ldr r2, [r4, #4]
00849d80  08 00 84 e5                                      str r0, [r4, #8]
00849d84  76 85 ff eb                                      bl #0x82b364
00849d88  00 30 95 e5                                      ldr r3, [r5]
00849d8c  05 00 a0 e1                                      mov r0, r5
00849d90  0f e0 a0 e1                                      mov lr, pc
00849d94  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00849d98  00 30 95 e5                                      ldr r3, [r5]
00849d9c  00 60 a0 e1                                      mov r6, r0
00849da0  05 00 a0 e1                                      mov r0, r5
00849da4  0f e0 a0 e1                                      mov lr, pc
00849da8  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00849dac  06 10 a0 e1                                      mov r1, r6
00849db0  00 20 a0 e1                                      mov r2, r0
00849db4  04 00 a0 e1                                      mov r0, r4
00849db8  10 fe ff eb                                      bl #0x849600
00849dbc  04 00 a0 e1                                      mov r0, r4
00849dc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00849dc4  64 ad 14 00 60 3e 00 00                          .byte 0x64, 0xad, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00

; FUNCTION 0x00849dcc, declared_size=172, range_size=172, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyC2EP10DataPacket
; demangled: DataPacketLobby::DataPacketLobby(DataPacket*)
; decoder-mode: arm
00849dcc  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00849dd0  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00849dd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00849dd8  03 30 8f e0                                      add r3, pc, r3
00849ddc  02 20 93 e7                                      ldr r2, [r3, r2]
00849de0  00 60 a0 e3                                      mov r6, #0
00849de4  1c 60 80 e5                                      str r6, [r0, #0x1c]
00849de8  08 20 82 e2                                      add r2, r2, #8
00849dec  20 60 80 e5                                      str r6, [r0, #0x20]
00849df0  14 60 80 e5                                      str r6, [r0, #0x14]
00849df4  00 20 80 e5                                      str r2, [r0]
00849df8  00 40 a0 e1                                      mov r4, r0
00849dfc  00 20 91 e5                                      ldr r2, [r1]
00849e00  01 00 a0 e1                                      mov r0, r1
00849e04  01 50 a0 e1                                      mov r5, r1
00849e08  0f e0 a0 e1                                      mov lr, pc
00849e0c  74 f0 92 e5                                      ldr pc, [r2, #0x74]
00849e10  01 3a a0 e3                                      mov r3, #0x1000
00849e14  04 30 84 e5                                      str r3, [r4, #4]
00849e18  18 00 84 e5                                      str r0, [r4, #0x18]
00849e1c  03 00 a0 e1                                      mov r0, r3
00849e20  aa 10 eb eb                                      bl #0x30e0d0
00849e24  06 10 a0 e1                                      mov r1, r6
00849e28  04 20 94 e5                                      ldr r2, [r4, #4]
00849e2c  08 00 84 e5                                      str r0, [r4, #8]
00849e30  4b 85 ff eb                                      bl #0x82b364
00849e34  00 30 95 e5                                      ldr r3, [r5]
00849e38  05 00 a0 e1                                      mov r0, r5
00849e3c  0f e0 a0 e1                                      mov lr, pc
00849e40  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00849e44  00 30 95 e5                                      ldr r3, [r5]
00849e48  00 60 a0 e1                                      mov r6, r0
00849e4c  05 00 a0 e1                                      mov r0, r5
00849e50  0f e0 a0 e1                                      mov lr, pc
00849e54  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00849e58  06 10 a0 e1                                      mov r1, r6
00849e5c  00 20 a0 e1                                      mov r2, r0
00849e60  04 00 a0 e1                                      mov r0, r4
00849e64  e5 fd ff eb                                      bl #0x849600
00849e68  04 00 a0 e1                                      mov r0, r4
00849e6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00849e70  b8 ac 14 00 60 3e 00 00                          .byte 0xb8, 0xac, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00

; FUNCTION 0x00849e78, declared_size=112, range_size=112, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyC1Ev
; demangled: DataPacketLobby::DataPacketLobby()
; decoder-mode: arm
00849e78  60 30 9f e5                                      ldr r3, [pc, #0x60]
00849e7c  60 20 9f e5                                      ldr r2, [pc, #0x60]
00849e80  70 40 2d e9                                      push {r4, r5, r6, lr}
00849e84  03 30 8f e0                                      add r3, pc, r3
00849e88  02 20 93 e7                                      ldr r2, [r3, r2]
00849e8c  00 40 a0 e1                                      mov r4, r0
00849e90  00 50 a0 e3                                      mov r5, #0
00849e94  08 20 82 e2                                      add r2, r2, #8
00849e98  00 20 84 e5                                      str r2, [r4]
00849e9c  02 20 a0 e3                                      mov r2, #2
00849ea0  0c 20 84 e5                                      str r2, [r4, #0xc]
00849ea4  01 0a a0 e3                                      mov r0, #0x1000
00849ea8  01 20 a0 e3                                      mov r2, #1
00849eac  18 20 84 e5                                      str r2, [r4, #0x18]
00849eb0  1c 50 84 e5                                      str r5, [r4, #0x1c]
00849eb4  20 50 84 e5                                      str r5, [r4, #0x20]
00849eb8  10 50 84 e5                                      str r5, [r4, #0x10]
00849ebc  14 50 84 e5                                      str r5, [r4, #0x14]
00849ec0  04 00 84 e5                                      str r0, [r4, #4]
00849ec4  81 10 eb eb                                      bl #0x30e0d0
00849ec8  05 10 a0 e1                                      mov r1, r5
00849ecc  08 00 84 e5                                      str r0, [r4, #8]
00849ed0  04 20 94 e5                                      ldr r2, [r4, #4]
00849ed4  22 85 ff eb                                      bl #0x82b364
00849ed8  04 00 a0 e1                                      mov r0, r4
00849edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00849ee0  0c ac 14 00 60 3e 00 00                          .byte 0x0c, 0xac, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00

; FUNCTION 0x00849ee8, declared_size=116, range_size=116, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobby9getPacketERP10DataPacket
; demangled: DataPacketLobby::getPacket(DataPacket*&)
; decoder-mode: arm
00849ee8  70 40 2d e9                                      push {r4, r5, r6, lr}
00849eec  00 40 a0 e1                                      mov r4, r0
00849ef0  24 00 a0 e3                                      mov r0, #0x24
00849ef4  01 60 a0 e1                                      mov r6, r1
00849ef8  63 12 eb eb                                      bl #0x30e88c
00849efc  00 50 a0 e1                                      mov r5, r0
00849f00  dc ff ff eb                                      bl #0x849e78
00849f04  00 50 86 e5                                      str r5, [r6]
00849f08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00849f0c  08 20 94 e5                                      ldr r2, [r4, #8]
00849f10  01 30 81 e2                                      add r3, r1, #1
00849f14  01 50 d2 e7                                      ldrb r5, [r2, r1]
00849f18  0c 30 84 e5                                      str r3, [r4, #0xc]
00849f1c  03 00 d2 e7                                      ldrb r0, [r2, r3]
00849f20  01 10 83 e2                                      add r1, r3, #1
00849f24  0c 10 84 e5                                      str r1, [r4, #0xc]
00849f28  00 30 96 e5                                      ldr r3, [r6]
00849f2c  05 54 80 e1                                      orr r5, r0, r5, lsl #8
00849f30  75 50 bf e6                                      sxth r5, r5
00849f34  01 10 82 e0                                      add r1, r2, r1
00849f38  03 00 a0 e1                                      mov r0, r3
00849f3c  05 20 a0 e1                                      mov r2, r5
00849f40  00 30 93 e5                                      ldr r3, [r3]
00849f44  0f e0 a0 e1                                      mov lr, pc
00849f48  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00849f4c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00849f50  05 50 83 e0                                      add r5, r3, r5
00849f54  0c 50 84 e5                                      str r5, [r4, #0xc]
00849f58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00849f5c, declared_size=112, range_size=112, mode=arm
; class-group: DataPacketLobby
; alias: _ZN15DataPacketLobbyC2Ev
; demangled: DataPacketLobby::DataPacketLobby()
; decoder-mode: arm
00849f5c  60 30 9f e5                                      ldr r3, [pc, #0x60]
00849f60  60 20 9f e5                                      ldr r2, [pc, #0x60]
00849f64  70 40 2d e9                                      push {r4, r5, r6, lr}
00849f68  03 30 8f e0                                      add r3, pc, r3
00849f6c  02 20 93 e7                                      ldr r2, [r3, r2]
00849f70  00 40 a0 e1                                      mov r4, r0
00849f74  00 50 a0 e3                                      mov r5, #0
00849f78  08 20 82 e2                                      add r2, r2, #8
00849f7c  00 20 84 e5                                      str r2, [r4]
00849f80  02 20 a0 e3                                      mov r2, #2
00849f84  0c 20 84 e5                                      str r2, [r4, #0xc]
00849f88  01 0a a0 e3                                      mov r0, #0x1000
00849f8c  01 20 a0 e3                                      mov r2, #1
00849f90  18 20 84 e5                                      str r2, [r4, #0x18]
00849f94  1c 50 84 e5                                      str r5, [r4, #0x1c]
00849f98  20 50 84 e5                                      str r5, [r4, #0x20]
00849f9c  10 50 84 e5                                      str r5, [r4, #0x10]
00849fa0  14 50 84 e5                                      str r5, [r4, #0x14]
00849fa4  04 00 84 e5                                      str r0, [r4, #4]
00849fa8  48 10 eb eb                                      bl #0x30e0d0
00849fac  05 10 a0 e1                                      mov r1, r5
00849fb0  08 00 84 e5                                      str r0, [r4, #8]
00849fb4  04 20 94 e5                                      ldr r2, [r4, #4]
00849fb8  e9 84 ff eb                                      bl #0x82b364
00849fbc  04 00 a0 e1                                      mov r0, r4
00849fc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00849fc4  28 ab 14 00 60 3e 00 00                          .byte 0x28, 0xab, 0x14, 0x00, 0x60, 0x3e, 0x00, 0x00
