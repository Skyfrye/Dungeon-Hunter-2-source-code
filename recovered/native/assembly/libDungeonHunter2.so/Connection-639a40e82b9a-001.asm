; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008456fc, declared_size=88, range_size=88, mode=arm
; class-group: Connection
; alias: _ZN10Connection21getNextIncomingPacketEv
; demangled: Connection::getNextIncomingPacket()
; decoder-mode: arm
008456fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00845700  2c 60 02 e3                                      movw r6, #0x202c
00845704  06 40 90 e7                                      ldr r4, [r0, r6]
00845708  00 50 a0 e1                                      mov r5, r0
0084570c  00 00 54 e3                                      cmp r4, #0
00845710  0d 00 00 0a                                      beq #0x84574c
00845714  00 30 94 e5                                      ldr r3, [r4]
00845718  04 00 a0 e1                                      mov r0, r4
0084571c  0f e0 a0 e1                                      mov lr, pc
00845720  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00845724  30 30 02 e3                                      movw r3, #0x2030
00845728  03 20 95 e7                                      ldr r2, [r5, r3]
0084572c  06 00 85 e7                                      str r0, [r5, r6]
00845730  00 10 a0 e3                                      mov r1, #0
00845734  02 00 54 e1                                      cmp r4, r2
00845738  03 00 85 07                                      streq r0, [r5, r3]
0084573c  00 30 94 e5                                      ldr r3, [r4]
00845740  04 00 a0 e1                                      mov r0, r4
00845744  0f e0 a0 e1                                      mov lr, pc
00845748  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0084574c  04 00 a0 e1                                      mov r0, r4
00845750  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00845754, declared_size=8, range_size=8, mode=arm
; class-group: Connection
; alias: _ZN10Connection11isConnectedEv
; demangled: Connection::isConnected()
; decoder-mode: arm
00845754  0e 00 d0 e5                                      ldrb r0, [r0, #0xe]
00845758  1e ff 2f e1                                      bx lr

; FUNCTION 0x0084575c, declared_size=8, range_size=8, mode=arm
; class-group: Connection
; alias: _ZN10Connection13set_connectedEb
; demangled: Connection::set_connected(bool)
; decoder-mode: arm
0084575c  0e 10 c0 e5                                      strb r1, [r0, #0xe]
00845760  1e ff 2f e1                                      bx lr

; FUNCTION 0x00845764, declared_size=52, range_size=52, mode=arm
; class-group: Connection
; alias: _ZN10Connection14cleanRetryDataEv
; demangled: Connection::cleanRetryData()
; decoder-mode: arm
00845764  70 40 2d e9                                      push {r4, r5, r6, lr}
00845768  3c 40 02 e3                                      movw r4, #0x203c
0084576c  04 30 90 e7                                      ldr r3, [r0, r4]
00845770  00 50 a0 e1                                      mov r5, r0
00845774  00 00 53 e3                                      cmp r3, #0
00845778  05 00 00 0a                                      beq #0x845794
0084577c  03 00 a0 e1                                      mov r0, r3
00845780  00 30 93 e5                                      ldr r3, [r3]
00845784  0f e0 a0 e1                                      mov lr, pc
00845788  04 f0 93 e5                                      ldr pc, [r3, #4]
0084578c  00 30 a0 e3                                      mov r3, #0
00845790  04 30 85 e7                                      str r3, [r5, r4]
00845794  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00845798, declared_size=12, range_size=12, mode=arm
; class-group: Connection
; alias: _ZN10Connection19getTimeOfLastReqestEv
; demangled: Connection::getTimeOfLastReqest()
; decoder-mode: arm
00845798  38 30 02 e3                                      movw r3, #0x2038
0084579c  03 00 90 e7                                      ldr r0, [r0, r3]
008457a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008457a4, declared_size=120, range_size=120, mode=arm
; class-group: Connection
; alias: _ZN10Connection13saveRetryDataEP10DataPacket
; demangled: Connection::saveRetryData(DataPacket*)
; decoder-mode: arm
008457a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008457a8  00 60 51 e2                                      subs r6, r1, #0
008457ac  00 40 a0 e1                                      mov r4, r0
008457b0  18 00 00 0a                                      beq #0x845818
008457b4  ea ff ff eb                                      bl #0x845764
008457b8  1c 00 01 e3                                      movw r0, #0x101c
008457bc  32 24 eb eb                                      bl #0x30e88c
008457c0  00 70 a0 e1                                      mov r7, r0
008457c4  6f 14 00 eb                                      bl #0x84a988
008457c8  3c 30 02 e3                                      movw r3, #0x203c
008457cc  03 70 84 e7                                      str r7, [r4, r3]
008457d0  00 20 97 e5                                      ldr r2, [r7]
008457d4  00 30 96 e5                                      ldr r3, [r6]
008457d8  06 00 a0 e1                                      mov r0, r6
008457dc  68 50 92 e5                                      ldr r5, [r2, #0x68]
008457e0  0f e0 a0 e1                                      mov lr, pc
008457e4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
008457e8  00 30 96 e5                                      ldr r3, [r6]
008457ec  00 80 a0 e1                                      mov r8, r0
008457f0  06 00 a0 e1                                      mov r0, r6
008457f4  0f e0 a0 e1                                      mov lr, pc
008457f8  60 f0 93 e5                                      ldr pc, [r3, #0x60]
008457fc  08 10 a0 e1                                      mov r1, r8
00845800  00 20 a0 e1                                      mov r2, r0
00845804  07 00 a0 e1                                      mov r0, r7
00845808  35 ff 2f e1                                      blx r5
0084580c  49 96 ff eb                                      bl #0x82b138
00845810  38 30 02 e3                                      movw r3, #0x2038
00845814  03 00 84 e7                                      str r0, [r4, r3]
00845818  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0084581c, declared_size=296, range_size=296, mode=arm
; class-group: Connection
; alias: _ZN10Connection7connectEv
; demangled: Connection::connect()
; decoder-mode: arm
0084581c  70 40 2d e9                                      push {r4, r5, r6, lr}
00845820  04 50 90 e5                                      ldr r5, [r0, #4]
00845824  00 40 a0 e1                                      mov r4, r0
00845828  00 00 55 e3                                      cmp r5, #0
0084582c  0b 00 00 1a                                      bne #0x845860
00845830  1c 30 02 e3                                      movw r3, #0x201c
00845834  03 30 90 e7                                      ldr r3, [r0, r3]
00845838  00 00 53 e3                                      cmp r3, #0
0084583c  03 00 00 0a                                      beq #0x845850
00845840  20 30 02 e3                                      movw r3, #0x2020
00845844  03 30 90 e7                                      ldr r3, [r0, r3]
00845848  00 00 53 e3                                      cmp r3, #0
0084584c  1c 00 00 1a                                      bne #0x8458c4
00845850  03 30 a0 e3                                      mov r3, #3
00845854  04 30 84 e5                                      str r3, [r4, #4]
00845858  00 00 a0 e3                                      mov r0, #0
0084585c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845860  01 00 55 e3                                      cmp r5, #1
00845864  01 00 00 0a                                      beq #0x845870
00845868  00 00 a0 e3                                      mov r0, #0
0084586c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845870  14 60 02 e3                                      movw r6, #0x2014
00845874  06 30 90 e7                                      ldr r3, [r0, r6]
00845878  1c 20 02 e3                                      movw r2, #0x201c
0084587c  02 10 90 e7                                      ldr r1, [r0, r2]
00845880  03 00 a0 e1                                      mov r0, r3
00845884  00 20 a0 e3                                      mov r2, #0
00845888  00 30 93 e5                                      ldr r3, [r3]
0084588c  0f e0 a0 e1                                      mov lr, pc
00845890  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00845894  00 00 50 e3                                      cmp r0, #0
00845898  16 00 00 1a                                      bne #0x8458f8
0084589c  06 20 94 e7                                      ldr r2, [r4, r6]
008458a0  5c 38 92 e5                                      ldr r3, [r2, #0x85c]
008458a4  01 00 53 e3                                      cmp r3, #1
008458a8  ee ff ff 0a                                      beq #0x845868
008458ac  00 00 53 e3                                      cmp r3, #0
008458b0  ec ff ff 0a                                      beq #0x845868
008458b4  03 30 a0 e3                                      mov r3, #3
008458b8  04 30 84 e5                                      str r3, [r4, #4]
008458bc  5c 08 82 e5                                      str r0, [r2, #0x85c]
008458c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008458c4  14 30 02 e3                                      movw r3, #0x2014
008458c8  03 30 90 e7                                      ldr r3, [r0, r3]
008458cc  03 00 a0 e1                                      mov r0, r3
008458d0  00 30 93 e5                                      ldr r3, [r3]
008458d4  0f e0 a0 e1                                      mov lr, pc
008458d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008458dc  00 00 50 e3                                      cmp r0, #0
008458e0  03 30 a0 03                                      moveq r3, #3
008458e4  01 30 a0 13                                      movne r3, #1
008458e8  04 30 84 05                                      streq r3, [r4, #4]
008458ec  04 30 84 15                                      strne r3, [r4, #4]
008458f0  05 00 a0 11                                      movne r0, r5
008458f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008458f8  04 00 a0 e1                                      mov r0, r4
008458fc  00 30 94 e5                                      ldr r3, [r4]
00845900  0e 50 c4 e5                                      strb r5, [r4, #0xe]
00845904  0f e0 a0 e1                                      mov lr, pc
00845908  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0084590c  00 30 94 e5                                      ldr r3, [r4]
00845910  04 00 a0 e1                                      mov r0, r4
00845914  0f e0 a0 e1                                      mov lr, pc
00845918  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0084591c  05 96 ff eb                                      bl #0x82b138
00845920  06 30 94 e7                                      ldr r3, [r4, r6]
00845924  34 20 02 e3                                      movw r2, #0x2034
00845928  02 00 84 e7                                      str r0, [r4, r2]
0084592c  02 20 a0 e3                                      mov r2, #2
00845930  04 20 84 e5                                      str r2, [r4, #4]
00845934  00 20 a0 e3                                      mov r2, #0
00845938  5c 28 83 e5                                      str r2, [r3, #0x85c]
0084593c  05 00 a0 e1                                      mov r0, r5
00845940  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00845944, declared_size=112, range_size=112, mode=arm
; class-group: Connection
; alias: _ZN10Connection17addIncomingPacketEP10DataPacket
; demangled: Connection::addIncomingPacket(DataPacket*)
; decoder-mode: arm
00845944  70 40 2d e9                                      push {r4, r5, r6, lr}
00845948  00 60 51 e2                                      subs r6, r1, #0
0084594c  00 40 a0 e1                                      mov r4, r0
00845950  0d 00 00 0a                                      beq #0x84598c
00845954  2c 30 02 e3                                      movw r3, #0x202c
00845958  03 20 90 e7                                      ldr r2, [r0, r3]
0084595c  00 00 52 e3                                      cmp r2, #0
00845960  0e 00 00 0a                                      beq #0x8459a0
00845964  30 50 02 e3                                      movw r5, #0x2030
00845968  05 30 90 e7                                      ldr r3, [r0, r5]
0084596c  00 00 53 e3                                      cmp r3, #0
00845970  06 00 00 0a                                      beq #0x845990
00845974  03 00 a0 e1                                      mov r0, r3
00845978  00 30 93 e5                                      ldr r3, [r3]
0084597c  0f e0 a0 e1                                      mov lr, pc
00845980  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00845984  05 60 84 e7                                      str r6, [r4, r5]
00845988  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084598c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845990  18 00 9f e5                                      ldr r0, [pc, #0x18]
00845994  00 00 8f e0                                      add r0, pc, r0
00845998  70 40 bd e8                                      pop {r4, r5, r6, lr}
0084599c  78 97 ff ea                                      b #0x82b784
008459a0  30 20 02 e3                                      movw r2, #0x2030
008459a4  02 60 80 e7                                      str r6, [r0, r2]
008459a8  03 60 80 e7                                      str r6, [r0, r3]
008459ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008459b0  dc 98 0c 00                                      .byte 0xdc, 0x98, 0x0c, 0x00

; FUNCTION 0x008459b4, declared_size=156, range_size=156, mode=arm
; class-group: Connection
; alias: _ZN10Connection17addOutgoingPacketEP10DataPacket
; demangled: Connection::addOutgoingPacket(DataPacket*)
; decoder-mode: arm
008459b4  70 40 2d e9                                      push {r4, r5, r6, lr}
008459b8  00 50 51 e2                                      subs r5, r1, #0
008459bc  00 40 a0 e1                                      mov r4, r0
008459c0  10 00 00 0a                                      beq #0x845a08
008459c4  0e 30 d0 e5                                      ldrb r3, [r0, #0xe]
008459c8  00 00 53 e3                                      cmp r3, #0
008459cc  0e 00 00 0a                                      beq #0x845a0c
008459d0  24 30 02 e3                                      movw r3, #0x2024
008459d4  03 20 90 e7                                      ldr r2, [r0, r3]
008459d8  00 00 52 e3                                      cmp r2, #0
008459dc  13 00 00 0a                                      beq #0x845a30
008459e0  28 60 02 e3                                      movw r6, #0x2028
008459e4  06 30 90 e7                                      ldr r3, [r0, r6]
008459e8  00 00 53 e3                                      cmp r3, #0
008459ec  0b 00 00 0a                                      beq #0x845a20
008459f0  03 00 a0 e1                                      mov r0, r3
008459f4  00 30 93 e5                                      ldr r3, [r3]
008459f8  0f e0 a0 e1                                      mov lr, pc
008459fc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00845a00  06 50 84 e7                                      str r5, [r4, r6]
00845a04  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845a08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845a0c  05 00 a0 e1                                      mov r0, r5
00845a10  00 30 95 e5                                      ldr r3, [r5]
00845a14  0f e0 a0 e1                                      mov lr, pc
00845a18  04 f0 93 e5                                      ldr pc, [r3, #4]
00845a1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845a20  24 00 9f e5                                      ldr r0, [pc, #0x24]
00845a24  00 00 8f e0                                      add r0, pc, r0
00845a28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00845a2c  54 97 ff ea                                      b #0x82b784
00845a30  28 20 02 e3                                      movw r2, #0x2028
00845a34  02 50 80 e7                                      str r5, [r0, r2]
00845a38  03 50 80 e7                                      str r5, [r0, r3]
00845a3c  00 30 90 e5                                      ldr r3, [r0]
00845a40  0f e0 a0 e1                                      mov lr, pc
00845a44  08 f0 93 e5                                      ldr pc, [r3, #8]
00845a48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00845a4c  6c 98 0c 00                                      .byte 0x6c, 0x98, 0x0c, 0x00

; FUNCTION 0x00845a50, declared_size=136, range_size=136, mode=arm
; class-group: Connection
; alias: _ZN10Connection13sendRetryDataEv
; demangled: Connection::sendRetryData()
; decoder-mode: arm
00845a50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00845a54  3c 70 02 e3                                      movw r7, #0x203c
00845a58  07 30 90 e7                                      ldr r3, [r0, r7]
00845a5c  00 40 a0 e1                                      mov r4, r0
00845a60  00 00 53 e3                                      cmp r3, #0
00845a64  1a 00 00 0a                                      beq #0x845ad4
00845a68  1c 00 01 e3                                      movw r0, #0x101c
00845a6c  86 23 eb eb                                      bl #0x30e88c
00845a70  00 50 a0 e1                                      mov r5, r0
00845a74  c3 13 00 eb                                      bl #0x84a988
00845a78  07 30 94 e7                                      ldr r3, [r4, r7]
00845a7c  00 20 95 e5                                      ldr r2, [r5]
00845a80  03 00 a0 e1                                      mov r0, r3
00845a84  00 30 93 e5                                      ldr r3, [r3]
00845a88  68 60 92 e5                                      ldr r6, [r2, #0x68]
00845a8c  0f e0 a0 e1                                      mov lr, pc
00845a90  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00845a94  07 30 94 e7                                      ldr r3, [r4, r7]
00845a98  00 80 a0 e1                                      mov r8, r0
00845a9c  03 00 a0 e1                                      mov r0, r3
00845aa0  00 30 93 e5                                      ldr r3, [r3]
00845aa4  0f e0 a0 e1                                      mov lr, pc
00845aa8  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00845aac  08 10 a0 e1                                      mov r1, r8
00845ab0  00 20 a0 e1                                      mov r2, r0
00845ab4  05 00 a0 e1                                      mov r0, r5
00845ab8  36 ff 2f e1                                      blx r6
00845abc  04 00 a0 e1                                      mov r0, r4
00845ac0  05 10 a0 e1                                      mov r1, r5
00845ac4  ba ff ff eb                                      bl #0x8459b4
00845ac8  9a 95 ff eb                                      bl #0x82b138
00845acc  38 30 02 e3                                      movw r3, #0x2038
00845ad0  03 00 84 e7                                      str r0, [r4, r3]
00845ad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00845ad8, declared_size=136, range_size=136, mode=arm
; class-group: Connection
; alias: _ZN10Connection19keepConnectionAliveEv
; demangled: Connection::keepConnectionAlive()
; decoder-mode: arm
00845ad8  70 40 2d e9                                      push {r4, r5, r6, lr}
00845adc  00 50 a0 e1                                      mov r5, r0
00845ae0  94 95 ff eb                                      bl #0x82b138
00845ae4  34 30 02 e3                                      movw r3, #0x2034
00845ae8  03 30 95 e7                                      ldr r3, [r5, r3]
00845aec  10 27 02 e3                                      movw r2, #0x2710
00845af0  00 30 63 e0                                      rsb r3, r3, r0
00845af4  02 00 53 e1                                      cmp r3, r2
00845af8  01 00 00 ca                                      bgt #0x845b04
00845afc  00 00 a0 e3                                      mov r0, #0
00845b00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845b04  1c 00 01 e3                                      movw r0, #0x101c
00845b08  5f 23 eb eb                                      bl #0x30e88c
00845b0c  00 40 a0 e1                                      mov r4, r0
00845b10  9c 13 00 eb                                      bl #0x84a988
00845b14  00 30 94 e5                                      ldr r3, [r4]
00845b18  67 10 a0 e3                                      mov r1, #0x67
00845b1c  04 00 a0 e1                                      mov r0, r4
00845b20  0f e0 a0 e1                                      mov lr, pc
00845b24  08 f0 93 e5                                      ldr pc, [r3, #8]
00845b28  61 10 a0 e3                                      mov r1, #0x61
00845b2c  00 30 94 e5                                      ldr r3, [r4]
00845b30  04 00 a0 e1                                      mov r0, r4
00845b34  0f e0 a0 e1                                      mov lr, pc
00845b38  08 f0 93 e5                                      ldr pc, [r3, #8]
00845b3c  00 30 94 e5                                      ldr r3, [r4]
00845b40  04 00 a0 e1                                      mov r0, r4
00845b44  0f e0 a0 e1                                      mov lr, pc
00845b48  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845b4c  05 00 a0 e1                                      mov r0, r5
00845b50  04 10 a0 e1                                      mov r1, r4
00845b54  96 ff ff eb                                      bl #0x8459b4
00845b58  01 00 a0 e3                                      mov r0, #1
00845b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00845b60, declared_size=172, range_size=172, mode=arm
; class-group: Connection
; alias: _ZN10Connection24sendKickOutPlayerPackageEPc
; demangled: Connection::sendKickOutPlayerPackage(char*)
; decoder-mode: arm
00845b60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00845b64  00 60 51 e2                                      subs r6, r1, #0
00845b68  00 50 a0 e1                                      mov r5, r0
00845b6c  25 00 00 0a                                      beq #0x845c08
00845b70  1c 00 01 e3                                      movw r0, #0x101c
00845b74  44 23 eb eb                                      bl #0x30e88c
00845b78  00 40 a0 e1                                      mov r4, r0
00845b7c  81 13 00 eb                                      bl #0x84a988
00845b80  00 30 94 e5                                      ldr r3, [r4]
00845b84  67 10 a0 e3                                      mov r1, #0x67
00845b88  04 00 a0 e1                                      mov r0, r4
00845b8c  0f e0 a0 e1                                      mov lr, pc
00845b90  08 f0 93 e5                                      ldr pc, [r3, #8]
00845b94  00 30 94 e5                                      ldr r3, [r4]
00845b98  72 10 a0 e3                                      mov r1, #0x72
00845b9c  04 00 a0 e1                                      mov r0, r4
00845ba0  0f e0 a0 e1                                      mov lr, pc
00845ba4  08 f0 93 e5                                      ldr pc, [r3, #8]
00845ba8  6b 10 a0 e3                                      mov r1, #0x6b
00845bac  00 30 94 e5                                      ldr r3, [r4]
00845bb0  04 00 a0 e1                                      mov r0, r4
00845bb4  0f e0 a0 e1                                      mov lr, pc
00845bb8  08 f0 93 e5                                      ldr pc, [r3, #8]
00845bbc  00 30 94 e5                                      ldr r3, [r4]
00845bc0  06 00 a0 e1                                      mov r0, r6
00845bc4  28 70 93 e5                                      ldr r7, [r3, #0x28]
00845bc8  f7 94 ff eb                                      bl #0x82afac
00845bcc  06 10 a0 e1                                      mov r1, r6
00845bd0  70 20 ef e6                                      uxtb r2, r0
00845bd4  04 00 a0 e1                                      mov r0, r4
00845bd8  37 ff 2f e1                                      blx r7
00845bdc  00 30 94 e5                                      ldr r3, [r4]
00845be0  04 00 a0 e1                                      mov r0, r4
00845be4  0f e0 a0 e1                                      mov lr, pc
00845be8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845bec  05 00 a0 e1                                      mov r0, r5
00845bf0  04 10 a0 e1                                      mov r1, r4
00845bf4  ea fe ff eb                                      bl #0x8457a4
00845bf8  05 00 a0 e1                                      mov r0, r5
00845bfc  04 10 a0 e1                                      mov r1, r4
00845c00  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00845c04  6a ff ff ea                                      b #0x8459b4
00845c08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00845c0c, declared_size=152, range_size=152, mode=arm
; class-group: Connection
; alias: _ZN10Connection24sendUpdateSessionPackageEi
; demangled: Connection::sendUpdateSessionPackage(int)
; decoder-mode: arm
00845c0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00845c10  00 50 a0 e1                                      mov r5, r0
00845c14  1c 00 01 e3                                      movw r0, #0x101c
00845c18  01 60 a0 e1                                      mov r6, r1
00845c1c  1a 23 eb eb                                      bl #0x30e88c
00845c20  00 40 a0 e1                                      mov r4, r0
00845c24  57 13 00 eb                                      bl #0x84a988
00845c28  00 30 94 e5                                      ldr r3, [r4]
00845c2c  67 10 a0 e3                                      mov r1, #0x67
00845c30  04 00 a0 e1                                      mov r0, r4
00845c34  0f e0 a0 e1                                      mov lr, pc
00845c38  08 f0 93 e5                                      ldr pc, [r3, #8]
00845c3c  00 30 94 e5                                      ldr r3, [r4]
00845c40  72 10 a0 e3                                      mov r1, #0x72
00845c44  04 00 a0 e1                                      mov r0, r4
00845c48  0f e0 a0 e1                                      mov lr, pc
00845c4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00845c50  00 30 94 e5                                      ldr r3, [r4]
00845c54  65 10 a0 e3                                      mov r1, #0x65
00845c58  04 00 a0 e1                                      mov r0, r4
00845c5c  0f e0 a0 e1                                      mov lr, pc
00845c60  08 f0 93 e5                                      ldr pc, [r3, #8]
00845c64  76 10 ef e6                                      uxtb r1, r6
00845c68  00 30 94 e5                                      ldr r3, [r4]
00845c6c  04 00 a0 e1                                      mov r0, r4
00845c70  0f e0 a0 e1                                      mov lr, pc
00845c74  08 f0 93 e5                                      ldr pc, [r3, #8]
00845c78  00 30 94 e5                                      ldr r3, [r4]
00845c7c  04 00 a0 e1                                      mov r0, r4
00845c80  0f e0 a0 e1                                      mov lr, pc
00845c84  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845c88  05 00 a0 e1                                      mov r0, r5
00845c8c  04 10 a0 e1                                      mov r1, r4
00845c90  c3 fe ff eb                                      bl #0x8457a4
00845c94  05 00 a0 e1                                      mov r0, r5
00845c98  04 10 a0 e1                                      mov r1, r4
00845c9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00845ca0  43 ff ff ea                                      b #0x8459b4

; FUNCTION 0x00845ca4, declared_size=128, range_size=128, mode=arm
; class-group: Connection
; alias: _ZN10Connection21sendFinishGamePackageEv
; demangled: Connection::sendFinishGamePackage()
; decoder-mode: arm
00845ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
00845ca8  00 50 a0 e1                                      mov r5, r0
00845cac  1c 00 01 e3                                      movw r0, #0x101c
00845cb0  f5 22 eb eb                                      bl #0x30e88c
00845cb4  00 40 a0 e1                                      mov r4, r0
00845cb8  32 13 00 eb                                      bl #0x84a988
00845cbc  00 30 94 e5                                      ldr r3, [r4]
00845cc0  67 10 a0 e3                                      mov r1, #0x67
00845cc4  04 00 a0 e1                                      mov r0, r4
00845cc8  0f e0 a0 e1                                      mov lr, pc
00845ccc  08 f0 93 e5                                      ldr pc, [r3, #8]
00845cd0  00 30 94 e5                                      ldr r3, [r4]
00845cd4  72 10 a0 e3                                      mov r1, #0x72
00845cd8  04 00 a0 e1                                      mov r0, r4
00845cdc  0f e0 a0 e1                                      mov lr, pc
00845ce0  08 f0 93 e5                                      ldr pc, [r3, #8]
00845ce4  66 10 a0 e3                                      mov r1, #0x66
00845ce8  00 30 94 e5                                      ldr r3, [r4]
00845cec  04 00 a0 e1                                      mov r0, r4
00845cf0  0f e0 a0 e1                                      mov lr, pc
00845cf4  08 f0 93 e5                                      ldr pc, [r3, #8]
00845cf8  00 30 94 e5                                      ldr r3, [r4]
00845cfc  04 00 a0 e1                                      mov r0, r4
00845d00  0f e0 a0 e1                                      mov lr, pc
00845d04  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845d08  05 00 a0 e1                                      mov r0, r5
00845d0c  04 10 a0 e1                                      mov r1, r4
00845d10  a3 fe ff eb                                      bl #0x8457a4
00845d14  05 00 a0 e1                                      mov r0, r5
00845d18  04 10 a0 e1                                      mov r1, r4
00845d1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00845d20  23 ff ff ea                                      b #0x8459b4

; FUNCTION 0x00845d24, declared_size=128, range_size=128, mode=arm
; class-group: Connection
; alias: _ZN10Connection20sendStartGamePackageEv
; demangled: Connection::sendStartGamePackage()
; decoder-mode: arm
00845d24  70 40 2d e9                                      push {r4, r5, r6, lr}
00845d28  00 50 a0 e1                                      mov r5, r0
00845d2c  1c 00 01 e3                                      movw r0, #0x101c
00845d30  d5 22 eb eb                                      bl #0x30e88c
00845d34  00 40 a0 e1                                      mov r4, r0
00845d38  12 13 00 eb                                      bl #0x84a988
00845d3c  00 30 94 e5                                      ldr r3, [r4]
00845d40  67 10 a0 e3                                      mov r1, #0x67
00845d44  04 00 a0 e1                                      mov r0, r4
00845d48  0f e0 a0 e1                                      mov lr, pc
00845d4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00845d50  00 30 94 e5                                      ldr r3, [r4]
00845d54  72 10 a0 e3                                      mov r1, #0x72
00845d58  04 00 a0 e1                                      mov r0, r4
00845d5c  0f e0 a0 e1                                      mov lr, pc
00845d60  08 f0 93 e5                                      ldr pc, [r3, #8]
00845d64  73 10 a0 e3                                      mov r1, #0x73
00845d68  00 30 94 e5                                      ldr r3, [r4]
00845d6c  04 00 a0 e1                                      mov r0, r4
00845d70  0f e0 a0 e1                                      mov lr, pc
00845d74  08 f0 93 e5                                      ldr pc, [r3, #8]
00845d78  00 30 94 e5                                      ldr r3, [r4]
00845d7c  04 00 a0 e1                                      mov r0, r4
00845d80  0f e0 a0 e1                                      mov lr, pc
00845d84  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845d88  05 00 a0 e1                                      mov r0, r5
00845d8c  04 10 a0 e1                                      mov r1, r4
00845d90  83 fe ff eb                                      bl #0x8457a4
00845d94  05 00 a0 e1                                      mov r0, r5
00845d98  04 10 a0 e1                                      mov r1, r4
00845d9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00845da0  03 ff ff ea                                      b #0x8459b4

; FUNCTION 0x00845da4, declared_size=228, range_size=228, mode=arm
; class-group: Connection
; alias: _ZN10Connection29sendListSessionsByDataPackageEhiPci
; demangled: Connection::sendListSessionsByDataPackage(unsigned char, int, char*, int)
; decoder-mode: arm
00845da4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00845da8  00 40 a0 e1                                      mov r4, r0
00845dac  1c 00 01 e3                                      movw r0, #0x101c
00845db0  02 80 a0 e1                                      mov r8, r2
00845db4  03 60 a0 e1                                      mov r6, r3
00845db8  01 a0 a0 e1                                      mov sl, r1
00845dbc  20 70 9d e5                                      ldr r7, [sp, #0x20]
00845dc0  b1 22 eb eb                                      bl #0x30e88c
00845dc4  00 50 a0 e1                                      mov r5, r0
00845dc8  ee 12 00 eb                                      bl #0x84a988
00845dcc  00 30 95 e5                                      ldr r3, [r5]
00845dd0  67 10 a0 e3                                      mov r1, #0x67
00845dd4  05 00 a0 e1                                      mov r0, r5
00845dd8  0f e0 a0 e1                                      mov lr, pc
00845ddc  08 f0 93 e5                                      ldr pc, [r3, #8]
00845de0  00 30 95 e5                                      ldr r3, [r5]
00845de4  72 10 a0 e3                                      mov r1, #0x72
00845de8  05 00 a0 e1                                      mov r0, r5
00845dec  0f e0 a0 e1                                      mov lr, pc
00845df0  08 f0 93 e5                                      ldr pc, [r3, #8]
00845df4  00 30 95 e5                                      ldr r3, [r5]
00845df8  6c 10 a0 e3                                      mov r1, #0x6c
00845dfc  05 00 a0 e1                                      mov r0, r5
00845e00  0f e0 a0 e1                                      mov lr, pc
00845e04  08 f0 93 e5                                      ldr pc, [r3, #8]
00845e08  0a 10 a0 e1                                      mov r1, sl
00845e0c  00 30 95 e5                                      ldr r3, [r5]
00845e10  05 00 a0 e1                                      mov r0, r5
00845e14  0f e0 a0 e1                                      mov lr, pc
00845e18  08 f0 93 e5                                      ldr pc, [r3, #8]
00845e1c  08 10 a0 e1                                      mov r1, r8
00845e20  00 30 95 e5                                      ldr r3, [r5]
00845e24  05 00 a0 e1                                      mov r0, r5
00845e28  0f e0 a0 e1                                      mov lr, pc
00845e2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00845e30  00 30 95 e5                                      ldr r3, [r5]
00845e34  64 10 a0 e3                                      mov r1, #0x64
00845e38  05 00 a0 e1                                      mov r0, r5
00845e3c  0f e0 a0 e1                                      mov lr, pc
00845e40  08 f0 93 e5                                      ldr pc, [r3, #8]
00845e44  77 20 ef e6                                      uxtb r2, r7
00845e48  06 10 a0 e1                                      mov r1, r6
00845e4c  00 30 95 e5                                      ldr r3, [r5]
00845e50  05 00 a0 e1                                      mov r0, r5
00845e54  0f e0 a0 e1                                      mov lr, pc
00845e58  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00845e5c  00 30 95 e5                                      ldr r3, [r5]
00845e60  05 00 a0 e1                                      mov r0, r5
00845e64  0f e0 a0 e1                                      mov lr, pc
00845e68  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845e6c  04 00 a0 e1                                      mov r0, r4
00845e70  05 10 a0 e1                                      mov r1, r5
00845e74  4a fe ff eb                                      bl #0x8457a4
00845e78  04 00 a0 e1                                      mov r0, r4
00845e7c  05 10 a0 e1                                      mov r1, r5
00845e80  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00845e84  ca fe ff ea                                      b #0x8459b4

; FUNCTION 0x00845e88, declared_size=232, range_size=232, mode=arm
; class-group: Connection
; alias: _ZN10Connection29sendListSessionsByNamePackageEhiPc
; demangled: Connection::sendListSessionsByNamePackage(unsigned char, int, char*)
; decoder-mode: arm
00845e88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00845e8c  00 40 a0 e1                                      mov r4, r0
00845e90  1c 00 01 e3                                      movw r0, #0x101c
00845e94  02 70 a0 e1                                      mov r7, r2
00845e98  03 60 a0 e1                                      mov r6, r3
00845e9c  01 80 a0 e1                                      mov r8, r1
00845ea0  79 22 eb eb                                      bl #0x30e88c
00845ea4  00 50 a0 e1                                      mov r5, r0
00845ea8  b6 12 00 eb                                      bl #0x84a988
00845eac  00 30 95 e5                                      ldr r3, [r5]
00845eb0  67 10 a0 e3                                      mov r1, #0x67
00845eb4  05 00 a0 e1                                      mov r0, r5
00845eb8  0f e0 a0 e1                                      mov lr, pc
00845ebc  08 f0 93 e5                                      ldr pc, [r3, #8]
00845ec0  00 30 95 e5                                      ldr r3, [r5]
00845ec4  72 10 a0 e3                                      mov r1, #0x72
00845ec8  05 00 a0 e1                                      mov r0, r5
00845ecc  0f e0 a0 e1                                      mov lr, pc
00845ed0  08 f0 93 e5                                      ldr pc, [r3, #8]
00845ed4  00 30 95 e5                                      ldr r3, [r5]
00845ed8  6c 10 a0 e3                                      mov r1, #0x6c
00845edc  05 00 a0 e1                                      mov r0, r5
00845ee0  0f e0 a0 e1                                      mov lr, pc
00845ee4  08 f0 93 e5                                      ldr pc, [r3, #8]
00845ee8  08 10 a0 e1                                      mov r1, r8
00845eec  00 30 95 e5                                      ldr r3, [r5]
00845ef0  05 00 a0 e1                                      mov r0, r5
00845ef4  0f e0 a0 e1                                      mov lr, pc
00845ef8  08 f0 93 e5                                      ldr pc, [r3, #8]
00845efc  07 10 a0 e1                                      mov r1, r7
00845f00  00 30 95 e5                                      ldr r3, [r5]
00845f04  05 00 a0 e1                                      mov r0, r5
00845f08  0f e0 a0 e1                                      mov lr, pc
00845f0c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00845f10  6e 10 a0 e3                                      mov r1, #0x6e
00845f14  00 30 95 e5                                      ldr r3, [r5]
00845f18  05 00 a0 e1                                      mov r0, r5
00845f1c  0f e0 a0 e1                                      mov lr, pc
00845f20  08 f0 93 e5                                      ldr pc, [r3, #8]
00845f24  00 30 95 e5                                      ldr r3, [r5]
00845f28  06 00 a0 e1                                      mov r0, r6
00845f2c  28 70 93 e5                                      ldr r7, [r3, #0x28]
00845f30  1d 94 ff eb                                      bl #0x82afac
00845f34  06 10 a0 e1                                      mov r1, r6
00845f38  70 20 ef e6                                      uxtb r2, r0
00845f3c  05 00 a0 e1                                      mov r0, r5
00845f40  37 ff 2f e1                                      blx r7
00845f44  00 30 95 e5                                      ldr r3, [r5]
00845f48  05 00 a0 e1                                      mov r0, r5
00845f4c  0f e0 a0 e1                                      mov lr, pc
00845f50  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00845f54  04 00 a0 e1                                      mov r0, r4
00845f58  05 10 a0 e1                                      mov r1, r5
00845f5c  10 fe ff eb                                      bl #0x8457a4
00845f60  04 00 a0 e1                                      mov r0, r4
00845f64  05 10 a0 e1                                      mov r1, r5
00845f68  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00845f6c  90 fe ff ea                                      b #0x8459b4

; FUNCTION 0x00845f70, declared_size=196, range_size=196, mode=arm
; class-group: Connection
; alias: _ZN10Connection26sendListSessionsAllPackageEhi
; demangled: Connection::sendListSessionsAllPackage(unsigned char, int)
; decoder-mode: arm
00845f70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00845f74  00 40 a0 e1                                      mov r4, r0
00845f78  1c 00 01 e3                                      movw r0, #0x101c
00845f7c  02 60 a0 e1                                      mov r6, r2
00845f80  01 70 a0 e1                                      mov r7, r1
00845f84  40 22 eb eb                                      bl #0x30e88c
00845f88  00 50 a0 e1                                      mov r5, r0
00845f8c  7d 12 00 eb                                      bl #0x84a988
00845f90  00 30 95 e5                                      ldr r3, [r5]
00845f94  67 10 a0 e3                                      mov r1, #0x67
00845f98  05 00 a0 e1                                      mov r0, r5
00845f9c  0f e0 a0 e1                                      mov lr, pc
00845fa0  08 f0 93 e5                                      ldr pc, [r3, #8]
00845fa4  00 30 95 e5                                      ldr r3, [r5]
00845fa8  72 10 a0 e3                                      mov r1, #0x72
00845fac  05 00 a0 e1                                      mov r0, r5
00845fb0  0f e0 a0 e1                                      mov lr, pc
00845fb4  08 f0 93 e5                                      ldr pc, [r3, #8]
00845fb8  00 30 95 e5                                      ldr r3, [r5]
00845fbc  6c 10 a0 e3                                      mov r1, #0x6c
00845fc0  05 00 a0 e1                                      mov r0, r5
00845fc4  0f e0 a0 e1                                      mov lr, pc
00845fc8  08 f0 93 e5                                      ldr pc, [r3, #8]
00845fcc  07 10 a0 e1                                      mov r1, r7
00845fd0  00 30 95 e5                                      ldr r3, [r5]
00845fd4  05 00 a0 e1                                      mov r0, r5
00845fd8  0f e0 a0 e1                                      mov lr, pc
00845fdc  08 f0 93 e5                                      ldr pc, [r3, #8]
00845fe0  06 10 a0 e1                                      mov r1, r6
00845fe4  00 30 95 e5                                      ldr r3, [r5]
00845fe8  05 00 a0 e1                                      mov r0, r5
00845fec  0f e0 a0 e1                                      mov lr, pc
00845ff0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00845ff4  61 10 a0 e3                                      mov r1, #0x61
00845ff8  00 30 95 e5                                      ldr r3, [r5]
00845ffc  05 00 a0 e1                                      mov r0, r5
00846000  0f e0 a0 e1                                      mov lr, pc
00846004  08 f0 93 e5                                      ldr pc, [r3, #8]
00846008  00 30 95 e5                                      ldr r3, [r5]
0084600c  05 00 a0 e1                                      mov r0, r5
00846010  0f e0 a0 e1                                      mov lr, pc
00846014  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846018  04 00 a0 e1                                      mov r0, r4
0084601c  05 10 a0 e1                                      mov r1, r5
00846020  df fd ff eb                                      bl #0x8457a4
00846024  04 00 a0 e1                                      mov r0, r4
00846028  05 10 a0 e1                                      mov r1, r5
0084602c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846030  5f fe ff ea                                      b #0x8459b4

; FUNCTION 0x00846034, declared_size=176, range_size=176, mode=arm
; class-group: Connection
; alias: _ZN10Connection23sendListSessionsPackageEhi
; demangled: Connection::sendListSessionsPackage(unsigned char, int)
; decoder-mode: arm
00846034  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846038  00 40 a0 e1                                      mov r4, r0
0084603c  1c 00 01 e3                                      movw r0, #0x101c
00846040  02 60 a0 e1                                      mov r6, r2
00846044  01 70 a0 e1                                      mov r7, r1
00846048  0f 22 eb eb                                      bl #0x30e88c
0084604c  00 50 a0 e1                                      mov r5, r0
00846050  4c 12 00 eb                                      bl #0x84a988
00846054  00 30 95 e5                                      ldr r3, [r5]
00846058  67 10 a0 e3                                      mov r1, #0x67
0084605c  05 00 a0 e1                                      mov r0, r5
00846060  0f e0 a0 e1                                      mov lr, pc
00846064  08 f0 93 e5                                      ldr pc, [r3, #8]
00846068  00 30 95 e5                                      ldr r3, [r5]
0084606c  72 10 a0 e3                                      mov r1, #0x72
00846070  05 00 a0 e1                                      mov r0, r5
00846074  0f e0 a0 e1                                      mov lr, pc
00846078  08 f0 93 e5                                      ldr pc, [r3, #8]
0084607c  00 30 95 e5                                      ldr r3, [r5]
00846080  6c 10 a0 e3                                      mov r1, #0x6c
00846084  05 00 a0 e1                                      mov r0, r5
00846088  0f e0 a0 e1                                      mov lr, pc
0084608c  08 f0 93 e5                                      ldr pc, [r3, #8]
00846090  07 10 a0 e1                                      mov r1, r7
00846094  00 30 95 e5                                      ldr r3, [r5]
00846098  05 00 a0 e1                                      mov r0, r5
0084609c  0f e0 a0 e1                                      mov lr, pc
008460a0  08 f0 93 e5                                      ldr pc, [r3, #8]
008460a4  06 10 a0 e1                                      mov r1, r6
008460a8  00 30 95 e5                                      ldr r3, [r5]
008460ac  05 00 a0 e1                                      mov r0, r5
008460b0  0f e0 a0 e1                                      mov lr, pc
008460b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008460b8  00 30 95 e5                                      ldr r3, [r5]
008460bc  05 00 a0 e1                                      mov r0, r5
008460c0  0f e0 a0 e1                                      mov lr, pc
008460c4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008460c8  04 00 a0 e1                                      mov r0, r4
008460cc  05 10 a0 e1                                      mov r1, r5
008460d0  b3 fd ff eb                                      bl #0x8457a4
008460d4  04 00 a0 e1                                      mov r0, r4
008460d8  05 10 a0 e1                                      mov r1, r5
008460dc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008460e0  33 fe ff ea                                      b #0x8459b4

; FUNCTION 0x008460e4, declared_size=128, range_size=128, mode=arm
; class-group: Connection
; alias: _ZN10Connection23sendLeaveSessionPackageEv
; demangled: Connection::sendLeaveSessionPackage()
; decoder-mode: arm
008460e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008460e8  00 50 a0 e1                                      mov r5, r0
008460ec  1c 00 01 e3                                      movw r0, #0x101c
008460f0  e5 21 eb eb                                      bl #0x30e88c
008460f4  00 40 a0 e1                                      mov r4, r0
008460f8  22 12 00 eb                                      bl #0x84a988
008460fc  00 30 94 e5                                      ldr r3, [r4]
00846100  67 10 a0 e3                                      mov r1, #0x67
00846104  04 00 a0 e1                                      mov r0, r4
00846108  0f e0 a0 e1                                      mov lr, pc
0084610c  08 f0 93 e5                                      ldr pc, [r3, #8]
00846110  00 30 94 e5                                      ldr r3, [r4]
00846114  72 10 a0 e3                                      mov r1, #0x72
00846118  04 00 a0 e1                                      mov r0, r4
0084611c  0f e0 a0 e1                                      mov lr, pc
00846120  08 f0 93 e5                                      ldr pc, [r3, #8]
00846124  71 10 a0 e3                                      mov r1, #0x71
00846128  00 30 94 e5                                      ldr r3, [r4]
0084612c  04 00 a0 e1                                      mov r0, r4
00846130  0f e0 a0 e1                                      mov lr, pc
00846134  08 f0 93 e5                                      ldr pc, [r3, #8]
00846138  00 30 94 e5                                      ldr r3, [r4]
0084613c  04 00 a0 e1                                      mov r0, r4
00846140  0f e0 a0 e1                                      mov lr, pc
00846144  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846148  05 00 a0 e1                                      mov r0, r5
0084614c  04 10 a0 e1                                      mov r1, r4
00846150  93 fd ff eb                                      bl #0x8457a4
00846154  05 00 a0 e1                                      mov r0, r5
00846158  04 10 a0 e1                                      mov r1, r4
0084615c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00846160  13 fe ff ea                                      b #0x8459b4

; FUNCTION 0x00846164, declared_size=164, range_size=164, mode=arm
; class-group: Connection
; alias: _ZN10Connection22sendJoinSessionPackageEPc
; demangled: Connection::sendJoinSessionPackage(char*)
; decoder-mode: arm
00846164  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846168  00 50 a0 e1                                      mov r5, r0
0084616c  1c 00 01 e3                                      movw r0, #0x101c
00846170  01 60 a0 e1                                      mov r6, r1
00846174  c4 21 eb eb                                      bl #0x30e88c
00846178  00 40 a0 e1                                      mov r4, r0
0084617c  01 12 00 eb                                      bl #0x84a988
00846180  00 30 94 e5                                      ldr r3, [r4]
00846184  67 10 a0 e3                                      mov r1, #0x67
00846188  04 00 a0 e1                                      mov r0, r4
0084618c  0f e0 a0 e1                                      mov lr, pc
00846190  08 f0 93 e5                                      ldr pc, [r3, #8]
00846194  00 30 94 e5                                      ldr r3, [r4]
00846198  72 10 a0 e3                                      mov r1, #0x72
0084619c  04 00 a0 e1                                      mov r0, r4
008461a0  0f e0 a0 e1                                      mov lr, pc
008461a4  08 f0 93 e5                                      ldr pc, [r3, #8]
008461a8  6a 10 a0 e3                                      mov r1, #0x6a
008461ac  00 30 94 e5                                      ldr r3, [r4]
008461b0  04 00 a0 e1                                      mov r0, r4
008461b4  0f e0 a0 e1                                      mov lr, pc
008461b8  08 f0 93 e5                                      ldr pc, [r3, #8]
008461bc  00 30 94 e5                                      ldr r3, [r4]
008461c0  06 00 a0 e1                                      mov r0, r6
008461c4  28 70 93 e5                                      ldr r7, [r3, #0x28]
008461c8  77 93 ff eb                                      bl #0x82afac
008461cc  06 10 a0 e1                                      mov r1, r6
008461d0  70 20 ef e6                                      uxtb r2, r0
008461d4  04 00 a0 e1                                      mov r0, r4
008461d8  37 ff 2f e1                                      blx r7
008461dc  00 30 94 e5                                      ldr r3, [r4]
008461e0  04 00 a0 e1                                      mov r0, r4
008461e4  0f e0 a0 e1                                      mov lr, pc
008461e8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008461ec  05 00 a0 e1                                      mov r0, r5
008461f0  04 10 a0 e1                                      mov r1, r4
008461f4  6a fd ff eb                                      bl #0x8457a4
008461f8  05 00 a0 e1                                      mov r0, r5
008461fc  04 10 a0 e1                                      mov r1, r4
00846200  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846204  ea fd ff ea                                      b #0x8459b4

; FUNCTION 0x00846208, declared_size=128, range_size=128, mode=arm
; class-group: Connection
; alias: _ZN10Connection20sendQuickGamePackageEv
; demangled: Connection::sendQuickGamePackage()
; decoder-mode: arm
00846208  70 40 2d e9                                      push {r4, r5, r6, lr}
0084620c  00 50 a0 e1                                      mov r5, r0
00846210  1c 00 01 e3                                      movw r0, #0x101c
00846214  9c 21 eb eb                                      bl #0x30e88c
00846218  00 40 a0 e1                                      mov r4, r0
0084621c  d9 11 00 eb                                      bl #0x84a988
00846220  00 30 94 e5                                      ldr r3, [r4]
00846224  67 10 a0 e3                                      mov r1, #0x67
00846228  04 00 a0 e1                                      mov r0, r4
0084622c  0f e0 a0 e1                                      mov lr, pc
00846230  08 f0 93 e5                                      ldr pc, [r3, #8]
00846234  00 30 94 e5                                      ldr r3, [r4]
00846238  72 10 a0 e3                                      mov r1, #0x72
0084623c  04 00 a0 e1                                      mov r0, r4
00846240  0f e0 a0 e1                                      mov lr, pc
00846244  08 f0 93 e5                                      ldr pc, [r3, #8]
00846248  75 10 a0 e3                                      mov r1, #0x75
0084624c  00 30 94 e5                                      ldr r3, [r4]
00846250  04 00 a0 e1                                      mov r0, r4
00846254  0f e0 a0 e1                                      mov lr, pc
00846258  08 f0 93 e5                                      ldr pc, [r3, #8]
0084625c  00 30 94 e5                                      ldr r3, [r4]
00846260  04 00 a0 e1                                      mov r0, r4
00846264  0f e0 a0 e1                                      mov lr, pc
00846268  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084626c  05 00 a0 e1                                      mov r0, r5
00846270  04 10 a0 e1                                      mov r1, r4
00846274  4a fd ff eb                                      bl #0x8457a4
00846278  05 00 a0 e1                                      mov r0, r5
0084627c  04 10 a0 e1                                      mov r1, r4
00846280  70 40 bd e8                                      pop {r4, r5, r6, lr}
00846284  ca fd ff ea                                      b #0x8459b4

; FUNCTION 0x00846288, declared_size=220, range_size=220, mode=arm
; class-group: Connection
; alias: _ZN10Connection24sendCreateSessionPackageEPcS0_i
; demangled: Connection::sendCreateSessionPackage(char*, char*, int)
; decoder-mode: arm
00846288  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0084628c  00 50 a0 e1                                      mov r5, r0
00846290  1c 00 01 e3                                      movw r0, #0x101c
00846294  02 40 a0 e1                                      mov r4, r2
00846298  01 a0 a0 e1                                      mov sl, r1
0084629c  03 70 a0 e1                                      mov r7, r3
008462a0  79 21 eb eb                                      bl #0x30e88c
008462a4  00 60 a0 e1                                      mov r6, r0
008462a8  b6 11 00 eb                                      bl #0x84a988
008462ac  67 10 a0 e3                                      mov r1, #0x67
008462b0  00 30 96 e5                                      ldr r3, [r6]
008462b4  06 00 a0 e1                                      mov r0, r6
008462b8  0f e0 a0 e1                                      mov lr, pc
008462bc  08 f0 93 e5                                      ldr pc, [r3, #8]
008462c0  72 10 a0 e3                                      mov r1, #0x72
008462c4  00 30 96 e5                                      ldr r3, [r6]
008462c8  06 00 a0 e1                                      mov r0, r6
008462cc  0f e0 a0 e1                                      mov lr, pc
008462d0  08 f0 93 e5                                      ldr pc, [r3, #8]
008462d4  63 10 a0 e3                                      mov r1, #0x63
008462d8  00 30 96 e5                                      ldr r3, [r6]
008462dc  06 00 a0 e1                                      mov r0, r6
008462e0  0f e0 a0 e1                                      mov lr, pc
008462e4  08 f0 93 e5                                      ldr pc, [r3, #8]
008462e8  00 30 96 e5                                      ldr r3, [r6]
008462ec  0a 00 a0 e1                                      mov r0, sl
008462f0  28 80 93 e5                                      ldr r8, [r3, #0x28]
008462f4  2c 93 ff eb                                      bl #0x82afac
008462f8  0a 10 a0 e1                                      mov r1, sl
008462fc  70 20 ef e6                                      uxtb r2, r0
00846300  06 00 a0 e1                                      mov r0, r6
00846304  38 ff 2f e1                                      blx r8
00846308  00 00 54 e3                                      cmp r4, #0
0084630c  10 00 00 0a                                      beq #0x846354
00846310  77 20 ef e6                                      uxtb r2, r7
00846314  04 10 a0 e1                                      mov r1, r4
00846318  00 30 96 e5                                      ldr r3, [r6]
0084631c  06 00 a0 e1                                      mov r0, r6
00846320  0f e0 a0 e1                                      mov lr, pc
00846324  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00846328  00 30 96 e5                                      ldr r3, [r6]
0084632c  06 00 a0 e1                                      mov r0, r6
00846330  0f e0 a0 e1                                      mov lr, pc
00846334  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846338  05 00 a0 e1                                      mov r0, r5
0084633c  06 10 a0 e1                                      mov r1, r6
00846340  17 fd ff eb                                      bl #0x8457a4
00846344  05 00 a0 e1                                      mov r0, r5
00846348  06 10 a0 e1                                      mov r1, r6
0084634c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00846350  97 fd ff ea                                      b #0x8459b4
00846354  04 40 9f e5                                      ldr r4, [pc, #4]
00846358  04 40 8f e0                                      add r4, pc, r4
0084635c  eb ff ff ea                                      b #0x846310
; mapping-symbol data/literal pool
00846360  d8 b0 07 00                                      .byte 0xd8, 0xb0, 0x07, 0x00

; FUNCTION 0x00846364, declared_size=108, range_size=108, mode=arm
; class-group: Connection
; alias: _ZN10Connection27sendFinishConnectionPackageEv
; demangled: Connection::sendFinishConnectionPackage()
; decoder-mode: arm
00846364  70 40 2d e9                                      push {r4, r5, r6, lr}
00846368  00 50 a0 e1                                      mov r5, r0
0084636c  1c 00 01 e3                                      movw r0, #0x101c
00846370  45 21 eb eb                                      bl #0x30e88c
00846374  00 40 a0 e1                                      mov r4, r0
00846378  82 11 00 eb                                      bl #0x84a988
0084637c  73 10 a0 e3                                      mov r1, #0x73
00846380  00 30 94 e5                                      ldr r3, [r4]
00846384  04 00 a0 e1                                      mov r0, r4
00846388  0f e0 a0 e1                                      mov lr, pc
0084638c  08 f0 93 e5                                      ldr pc, [r3, #8]
00846390  78 10 a0 e3                                      mov r1, #0x78
00846394  00 30 94 e5                                      ldr r3, [r4]
00846398  04 00 a0 e1                                      mov r0, r4
0084639c  0f e0 a0 e1                                      mov lr, pc
008463a0  08 f0 93 e5                                      ldr pc, [r3, #8]
008463a4  00 30 94 e5                                      ldr r3, [r4]
008463a8  04 00 a0 e1                                      mov r0, r4
008463ac  0f e0 a0 e1                                      mov lr, pc
008463b0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
008463b4  05 00 a0 e1                                      mov r0, r5
008463b8  04 10 a0 e1                                      mov r1, r4
008463bc  7c fd ff eb                                      bl #0x8459b4
008463c0  5c 93 ff eb                                      bl #0x82b138
008463c4  38 30 02 e3                                      movw r3, #0x2038
008463c8  03 00 85 e7                                      str r0, [r5, r3]
008463cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008463d0, declared_size=184, range_size=184, mode=arm
; class-group: Connection
; alias: _ZN10Connection16sendLoginPackageEPc
; demangled: Connection::sendLoginPackage(char*)
; decoder-mode: arm
008463d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008463d4  00 60 a0 e1                                      mov r6, r0
008463d8  1c 00 01 e3                                      movw r0, #0x101c
008463dc  01 50 a0 e1                                      mov r5, r1
008463e0  29 21 eb eb                                      bl #0x30e88c
008463e4  00 40 a0 e1                                      mov r4, r0
008463e8  66 11 00 eb                                      bl #0x84a988
008463ec  00 30 94 e5                                      ldr r3, [r4]
008463f0  67 10 a0 e3                                      mov r1, #0x67
008463f4  04 00 a0 e1                                      mov r0, r4
008463f8  0f e0 a0 e1                                      mov lr, pc
008463fc  08 f0 93 e5                                      ldr pc, [r3, #8]
00846400  00 30 94 e5                                      ldr r3, [r4]
00846404  72 10 a0 e3                                      mov r1, #0x72
00846408  04 00 a0 e1                                      mov r0, r4
0084640c  0f e0 a0 e1                                      mov lr, pc
00846410  08 f0 93 e5                                      ldr pc, [r3, #8]
00846414  00 30 94 e5                                      ldr r3, [r4]
00846418  69 10 a0 e3                                      mov r1, #0x69
0084641c  04 00 a0 e1                                      mov r0, r4
00846420  0f e0 a0 e1                                      mov lr, pc
00846424  08 f0 93 e5                                      ldr pc, [r3, #8]
00846428  54 00 9f e5                                      ldr r0, [pc, #0x54]
0084642c  05 10 a0 e1                                      mov r1, r5
00846430  00 00 8f e0                                      add r0, pc, r0
00846434  d2 94 ff eb                                      bl #0x82b784
00846438  00 30 94 e5                                      ldr r3, [r4]
0084643c  05 00 a0 e1                                      mov r0, r5
00846440  28 70 93 e5                                      ldr r7, [r3, #0x28]
00846444  d8 92 ff eb                                      bl #0x82afac
00846448  05 10 a0 e1                                      mov r1, r5
0084644c  70 20 ef e6                                      uxtb r2, r0
00846450  04 00 a0 e1                                      mov r0, r4
00846454  37 ff 2f e1                                      blx r7
00846458  00 30 94 e5                                      ldr r3, [r4]
0084645c  04 00 a0 e1                                      mov r0, r4
00846460  0f e0 a0 e1                                      mov lr, pc
00846464  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846468  06 00 a0 e1                                      mov r0, r6
0084646c  04 10 a0 e1                                      mov r1, r4
00846470  cb fc ff eb                                      bl #0x8457a4
00846474  06 00 a0 e1                                      mov r0, r6
00846478  04 10 a0 e1                                      mov r1, r4
0084647c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846480  4b fd ff ea                                      b #0x8459b4
; mapping-symbol data/literal pool
00846484  80 8e 0c 00                                      .byte 0x80, 0x8e, 0x0c, 0x00

; FUNCTION 0x00846488, declared_size=304, range_size=304, mode=arm
; class-group: Connection
; alias: _ZN10Connection30sendEstablishConnectionPackageEv
; demangled: Connection::sendEstablishConnectionPackage()
; decoder-mode: arm
00846488  70 40 2d e9                                      push {r4, r5, r6, lr}
0084648c  00 30 a0 e3                                      mov r3, #0
00846490  48 20 02 e3                                      movw r2, #0x2048
00846494  02 30 80 e7                                      str r3, [r0, r2]
00846498  44 20 02 e3                                      movw r2, #0x2044
0084649c  02 30 80 e7                                      str r3, [r0, r2]
008464a0  4c 20 02 e3                                      movw r2, #0x204c
008464a4  02 30 80 e7                                      str r3, [r0, r2]
008464a8  81 3d a0 e3                                      mov r3, #0x2040
008464ac  00 50 a0 e1                                      mov r5, r0
008464b0  03 00 90 e7                                      ldr r0, [r0, r3]
008464b4  bd 92 ff eb                                      bl #0x82afb0
008464b8  00 10 a0 e1                                      mov r1, r0
008464bc  00 60 a0 e1                                      mov r6, r0
008464c0  ec 00 9f e5                                      ldr r0, [pc, #0xec]
008464c4  00 00 8f e0                                      add r0, pc, r0
008464c8  ad 94 ff eb                                      bl #0x82b784
008464cc  1c 00 01 e3                                      movw r0, #0x101c
008464d0  ed 20 eb eb                                      bl #0x30e88c
008464d4  00 40 a0 e1                                      mov r4, r0
008464d8  2a 11 00 eb                                      bl #0x84a988
008464dc  00 30 94 e5                                      ldr r3, [r4]
008464e0  73 10 a0 e3                                      mov r1, #0x73
008464e4  04 00 a0 e1                                      mov r0, r4
008464e8  0f e0 a0 e1                                      mov lr, pc
008464ec  08 f0 93 e5                                      ldr pc, [r3, #8]
008464f0  00 30 94 e5                                      ldr r3, [r4]
008464f4  77 10 a0 e3                                      mov r1, #0x77
008464f8  04 00 a0 e1                                      mov r0, r4
008464fc  0f e0 a0 e1                                      mov lr, pc
00846500  08 f0 93 e5                                      ldr pc, [r3, #8]
00846504  06 10 a0 e1                                      mov r1, r6
00846508  00 30 94 e5                                      ldr r3, [r4]
0084650c  04 00 a0 e1                                      mov r0, r4
00846510  0f e0 a0 e1                                      mov lr, pc
00846514  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00846518  00 30 94 e5                                      ldr r3, [r4]
0084651c  04 00 a0 e1                                      mov r0, r4
00846520  0f e0 a0 e1                                      mov lr, pc
00846524  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846528  04 10 a0 e1                                      mov r1, r4
0084652c  05 00 a0 e1                                      mov r0, r5
00846530  1f fd ff eb                                      bl #0x8459b4
00846534  1c 00 01 e3                                      movw r0, #0x101c
00846538  d3 20 eb eb                                      bl #0x30e88c
0084653c  00 40 a0 e1                                      mov r4, r0
00846540  10 11 00 eb                                      bl #0x84a988
00846544  73 10 a0 e3                                      mov r1, #0x73
00846548  00 30 94 e5                                      ldr r3, [r4]
0084654c  04 00 a0 e1                                      mov r0, r4
00846550  0f e0 a0 e1                                      mov lr, pc
00846554  08 f0 93 e5                                      ldr pc, [r3, #8]
00846558  72 10 a0 e3                                      mov r1, #0x72
0084655c  00 30 94 e5                                      ldr r3, [r4]
00846560  04 00 a0 e1                                      mov r0, r4
00846564  0f e0 a0 e1                                      mov lr, pc
00846568  08 f0 93 e5                                      ldr pc, [r3, #8]
0084656c  06 10 a0 e1                                      mov r1, r6
00846570  00 30 94 e5                                      ldr r3, [r4]
00846574  04 00 a0 e1                                      mov r0, r4
00846578  0f e0 a0 e1                                      mov lr, pc
0084657c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00846580  00 30 94 e5                                      ldr r3, [r4]
00846584  04 00 a0 e1                                      mov r0, r4
00846588  0f e0 a0 e1                                      mov lr, pc
0084658c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00846590  04 10 a0 e1                                      mov r1, r4
00846594  05 00 a0 e1                                      mov r0, r5
00846598  05 fd ff eb                                      bl #0x8459b4
0084659c  e5 92 ff eb                                      bl #0x82b138
008465a0  38 30 02 e3                                      movw r3, #0x2038
008465a4  03 00 85 e7                                      str r0, [r5, r3]
008465a8  e2 92 ff eb                                      bl #0x82b138
008465ac  08 00 85 e5                                      str r0, [r5, #8]
008465b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008465b4  1c 8e 0c 00                                      .byte 0x1c, 0x8e, 0x0c, 0x00

; FUNCTION 0x008465b8, declared_size=324, range_size=324, mode=arm
; class-group: Connection
; alias: _ZN10Connection10disconnectEv
; demangled: Connection::disconnect()
; decoder-mode: arm
008465b8  70 40 2d e9                                      push {r4, r5, r6, lr}
008465bc  14 50 02 e3                                      movw r5, #0x2014
008465c0  05 30 90 e7                                      ldr r3, [r0, r5]
008465c4  00 20 a0 e3                                      mov r2, #0
008465c8  00 40 a0 e1                                      mov r4, r0
008465cc  02 00 53 e1                                      cmp r3, r2
008465d0  0e 20 c0 e5                                      strb r2, [r0, #0xe]
008465d4  0d 00 00 0a                                      beq #0x846610
008465d8  03 00 a0 e1                                      mov r0, r3
008465dc  00 30 93 e5                                      ldr r3, [r3]
008465e0  0f e0 a0 e1                                      mov lr, pc
008465e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008465e8  05 30 94 e7                                      ldr r3, [r4, r5]
008465ec  00 00 53 e3                                      cmp r3, #0
008465f0  03 00 00 0a                                      beq #0x846604
008465f4  03 00 a0 e1                                      mov r0, r3
008465f8  00 30 93 e5                                      ldr r3, [r3]
008465fc  0f e0 a0 e1                                      mov lr, pc
00846600  04 f0 93 e5                                      ldr pc, [r3, #4]
00846604  00 20 a0 e3                                      mov r2, #0
00846608  14 30 02 e3                                      movw r3, #0x2014
0084660c  03 20 84 e7                                      str r2, [r4, r3]
00846610  04 00 a0 e1                                      mov r0, r4
00846614  2c 60 02 e3                                      movw r6, #0x202c
00846618  51 fc ff eb                                      bl #0x845764
0084661c  06 50 94 e7                                      ldr r5, [r4, r6]
00846620  00 00 55 e3                                      cmp r5, #0
00846624  0b 00 00 0a                                      beq #0x846658
00846628  00 30 95 e5                                      ldr r3, [r5]
0084662c  05 00 a0 e1                                      mov r0, r5
00846630  0f e0 a0 e1                                      mov lr, pc
00846634  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00846638  06 00 84 e7                                      str r0, [r4, r6]
0084663c  00 30 95 e5                                      ldr r3, [r5]
00846640  05 00 a0 e1                                      mov r0, r5
00846644  0f e0 a0 e1                                      mov lr, pc
00846648  04 f0 93 e5                                      ldr pc, [r3, #4]
0084664c  06 50 94 e7                                      ldr r5, [r4, r6]
00846650  00 00 55 e3                                      cmp r5, #0
00846654  f3 ff ff 1a                                      bne #0x846628
00846658  24 60 02 e3                                      movw r6, #0x2024
0084665c  06 50 94 e7                                      ldr r5, [r4, r6]
00846660  00 30 a0 e3                                      mov r3, #0
00846664  30 20 02 e3                                      movw r2, #0x2030
00846668  02 30 84 e7                                      str r3, [r4, r2]
0084666c  03 00 55 e1                                      cmp r5, r3
00846670  2c 20 02 e3                                      movw r2, #0x202c
00846674  02 30 84 e7                                      str r3, [r4, r2]
00846678  0b 00 00 0a                                      beq #0x8466ac
0084667c  00 30 95 e5                                      ldr r3, [r5]
00846680  05 00 a0 e1                                      mov r0, r5
00846684  0f e0 a0 e1                                      mov lr, pc
00846688  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0084668c  06 00 84 e7                                      str r0, [r4, r6]
00846690  00 30 95 e5                                      ldr r3, [r5]
00846694  05 00 a0 e1                                      mov r0, r5
00846698  0f e0 a0 e1                                      mov lr, pc
0084669c  04 f0 93 e5                                      ldr pc, [r3, #4]
008466a0  06 50 94 e7                                      ldr r5, [r4, r6]
008466a4  00 00 55 e3                                      cmp r5, #0
008466a8  f3 ff ff 1a                                      bne #0x84667c
008466ac  00 50 a0 e3                                      mov r5, #0
008466b0  24 30 02 e3                                      movw r3, #0x2024
008466b4  03 50 84 e7                                      str r5, [r4, r3]
008466b8  28 30 02 e3                                      movw r3, #0x2028
008466bc  03 50 84 e7                                      str r5, [r4, r3]
008466c0  0f 00 84 e2                                      add r0, r4, #0xf
008466c4  05 10 a0 e1                                      mov r1, r5
008466c8  01 20 01 e3                                      movw r2, #0x1001
008466cc  24 93 ff eb                                      bl #0x82b364
008466d0  01 0a 84 e2                                      add r0, r4, #0x1000
008466d4  10 00 80 e2                                      add r0, r0, #0x10
008466d8  05 10 a0 e1                                      mov r1, r5
008466dc  01 20 01 e3                                      movw r2, #0x1001
008466e0  1f 93 ff eb                                      bl #0x82b364
008466e4  34 30 02 e3                                      movw r3, #0x2034
008466e8  08 50 84 e5                                      str r5, [r4, #8]
008466ec  03 50 84 e7                                      str r5, [r4, r3]
008466f0  38 30 02 e3                                      movw r3, #0x2038
008466f4  03 50 84 e7                                      str r5, [r4, r3]
008466f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008466fc, declared_size=672, range_size=672, mode=arm
; class-group: Connection
; alias: _ZN10Connection14receiveDataLenEv
; demangled: Connection::receiveDataLen()
; decoder-mode: arm
008466fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846700  4c 30 02 e3                                      movw r3, #0x204c
00846704  03 10 90 e7                                      ldr r1, [r0, r3]
00846708  00 40 a0 e1                                      mov r4, r0
0084670c  00 00 51 e3                                      cmp r1, #0
00846710  17 00 00 1a                                      bne #0x846774
00846714  44 30 02 e3                                      movw r3, #0x2044
00846718  03 10 90 e7                                      ldr r1, [r0, r3]
0084671c  01 20 a0 e3                                      mov r2, #1
00846720  48 30 02 e3                                      movw r3, #0x2048
00846724  00 00 51 e3                                      cmp r1, #0
00846728  03 20 80 e7                                      str r2, [r0, r3]
0084672c  4c 00 00 0a                                      beq #0x846864
00846730  14 70 02 e3                                      movw r7, #0x2014
00846734  07 30 94 e7                                      ldr r3, [r4, r7]
00846738  00 10 a0 e3                                      mov r1, #0
0084673c  03 00 a0 e1                                      mov r0, r3
00846740  00 30 93 e5                                      ldr r3, [r3]
00846744  0f e0 a0 e1                                      mov lr, pc
00846748  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0084674c  00 00 50 e3                                      cmp r0, #0
00846750  06 00 00 ba                                      blt #0x846770
00846754  07 30 94 e7                                      ldr r3, [r4, r7]
00846758  03 00 a0 e1                                      mov r0, r3
0084675c  00 30 93 e5                                      ldr r3, [r3]
00846760  0f e0 a0 e1                                      mov lr, pc
00846764  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00846768  00 00 50 e3                                      cmp r0, #0
0084676c  40 00 00 1a                                      bne #0x846874
00846770  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00846774  01 00 51 e3                                      cmp r1, #1
00846778  03 00 00 0a                                      beq #0x84678c
0084677c  0c 02 9f e5                                      ldr r0, [pc, #0x20c]
00846780  00 00 8f e0                                      add r0, pc, r0
00846784  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846788  fd 93 ff ea                                      b #0x82b784
0084678c  44 30 02 e3                                      movw r3, #0x2044
00846790  03 10 90 e7                                      ldr r1, [r0, r3]
00846794  0f 50 80 e2                                      add r5, r0, #0xf
00846798  00 00 51 e3                                      cmp r1, #0
0084679c  51 00 00 0a                                      beq #0x8468e8
008467a0  14 80 02 e3                                      movw r8, #0x2014
008467a4  08 30 94 e7                                      ldr r3, [r4, r8]
008467a8  00 10 a0 e3                                      mov r1, #0
008467ac  03 00 a0 e1                                      mov r0, r3
008467b0  00 30 93 e5                                      ldr r3, [r3]
008467b4  0f e0 a0 e1                                      mov lr, pc
008467b8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008467bc  00 00 50 e3                                      cmp r0, #0
008467c0  ea ff ff ba                                      blt #0x846770
008467c4  08 30 94 e7                                      ldr r3, [r4, r8]
008467c8  03 00 a0 e1                                      mov r0, r3
008467cc  00 30 93 e5                                      ldr r3, [r3]
008467d0  0f e0 a0 e1                                      mov lr, pc
008467d4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
008467d8  00 00 50 e3                                      cmp r0, #0
008467dc  e3 ff ff 0a                                      beq #0x846770
008467e0  44 60 02 e3                                      movw r6, #0x2044
008467e4  06 20 94 e7                                      ldr r2, [r4, r6]
008467e8  48 70 02 e3                                      movw r7, #0x2048
008467ec  08 30 94 e7                                      ldr r3, [r4, r8]
008467f0  07 c0 94 e7                                      ldr ip, [r4, r7]
008467f4  02 10 84 e0                                      add r1, r4, r2
008467f8  03 00 a0 e1                                      mov r0, r3
008467fc  0c 20 62 e0                                      rsb r2, r2, ip
00846800  0f 10 81 e2                                      add r1, r1, #0xf
00846804  00 30 93 e5                                      ldr r3, [r3]
00846808  0f e0 a0 e1                                      mov lr, pc
0084680c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00846810  00 00 50 e3                                      cmp r0, #0
00846814  d5 ff ff ba                                      blt #0x846770
00846818  36 00 00 0a                                      beq #0x8468f8
0084681c  06 30 94 e7                                      ldr r3, [r4, r6]
00846820  07 20 94 e7                                      ldr r2, [r4, r7]
00846824  02 00 53 e1                                      cmp r3, r2
00846828  00 30 83 b0                                      addlt r3, r3, r0
0084682c  06 30 84 b7                                      strlt r3, [r4, r6]
00846830  02 00 53 e1                                      cmp r3, r2
00846834  3c 00 00 0a                                      beq #0x84692c
00846838  cc ff ff da                                      ble #0x846770
0084683c  04 00 a0 e1                                      mov r0, r4
00846840  5c ff ff eb                                      bl #0x8465b8
00846844  44 30 02 e3                                      movw r3, #0x2044
00846848  03 20 94 e7                                      ldr r2, [r4, r3]
0084684c  40 01 9f e5                                      ldr r0, [pc, #0x140]
00846850  48 30 02 e3                                      movw r3, #0x2048
00846854  03 10 94 e7                                      ldr r1, [r4, r3]
00846858  00 00 8f e0                                      add r0, pc, r0
0084685c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846860  c7 93 ff ea                                      b #0x82b784
00846864  0f 00 80 e2                                      add r0, r0, #0xf
00846868  01 20 01 e3                                      movw r2, #0x1001
0084686c  bc 92 ff eb                                      bl #0x82b364
00846870  ae ff ff ea                                      b #0x846730
00846874  44 50 02 e3                                      movw r5, #0x2044
00846878  05 20 94 e7                                      ldr r2, [r4, r5]
0084687c  48 60 02 e3                                      movw r6, #0x2048
00846880  07 30 94 e7                                      ldr r3, [r4, r7]
00846884  06 c0 94 e7                                      ldr ip, [r4, r6]
00846888  02 10 84 e0                                      add r1, r4, r2
0084688c  03 00 a0 e1                                      mov r0, r3
00846890  0c 20 62 e0                                      rsb r2, r2, ip
00846894  0f 10 81 e2                                      add r1, r1, #0xf
00846898  00 30 93 e5                                      ldr r3, [r3]
0084689c  0f e0 a0 e1                                      mov lr, pc
008468a0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
008468a4  00 00 50 e3                                      cmp r0, #0
008468a8  b0 ff ff ba                                      blt #0x846770
008468ac  11 00 00 0a                                      beq #0x8468f8
008468b0  05 30 94 e7                                      ldr r3, [r4, r5]
008468b4  06 20 94 e7                                      ldr r2, [r4, r6]
008468b8  02 00 53 e1                                      cmp r3, r2
008468bc  00 30 83 b0                                      addlt r3, r3, r0
008468c0  05 30 84 b7                                      strlt r3, [r4, r5]
008468c4  03 00 52 e1                                      cmp r2, r3
008468c8  0d 00 00 0a                                      beq #0x846904
008468cc  a7 ff ff aa                                      bge #0x846770
008468d0  04 00 a0 e1                                      mov r0, r4
008468d4  37 ff ff eb                                      bl #0x8465b8
008468d8  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
008468dc  00 00 8f e0                                      add r0, pc, r0
008468e0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008468e4  a6 93 ff ea                                      b #0x82b784
008468e8  05 00 a0 e1                                      mov r0, r5
008468ec  01 20 01 e3                                      movw r2, #0x1001
008468f0  9b 92 ff eb                                      bl #0x82b364
008468f4  a9 ff ff ea                                      b #0x8467a0
008468f8  04 00 a0 e1                                      mov r0, r4
008468fc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846900  2c ff ff ea                                      b #0x8465b8
00846904  0f 20 d4 e5                                      ldrb r2, [r4, #0xf]
00846908  4c 30 02 e3                                      movw r3, #0x204c
0084690c  01 10 a0 e3                                      mov r1, #1
00846910  03 10 84 e7                                      str r1, [r4, r3]
00846914  48 30 02 e3                                      movw r3, #0x2048
00846918  03 20 84 e7                                      str r2, [r4, r3]
0084691c  00 20 a0 e3                                      mov r2, #0
00846920  44 30 02 e3                                      movw r3, #0x2044
00846924  03 20 84 e7                                      str r2, [r4, r3]
00846928  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084692c  1c 00 01 e3                                      movw r0, #0x101c
00846930  d5 1f eb eb                                      bl #0x30e88c
00846934  44 70 02 e3                                      movw r7, #0x2044
00846938  00 60 a0 e1                                      mov r6, r0
0084693c  11 10 00 eb                                      bl #0x84a988
00846940  00 30 96 e5                                      ldr r3, [r6]
00846944  07 20 94 e7                                      ldr r2, [r4, r7]
00846948  06 00 a0 e1                                      mov r0, r6
0084694c  05 10 a0 e1                                      mov r1, r5
00846950  0f e0 a0 e1                                      mov lr, pc
00846954  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00846958  04 00 a0 e1                                      mov r0, r4
0084695c  06 10 a0 e1                                      mov r1, r6
00846960  f7 fb ff eb                                      bl #0x845944
00846964  80 20 a0 e3                                      mov r2, #0x80
00846968  05 00 a0 e1                                      mov r0, r5
0084696c  00 10 a0 e3                                      mov r1, #0
00846970  7b 92 ff eb                                      bl #0x82b364
00846974  00 30 a0 e3                                      mov r3, #0
00846978  48 20 02 e3                                      movw r2, #0x2048
0084697c  02 30 84 e7                                      str r3, [r4, r2]
00846980  4c 20 02 e3                                      movw r2, #0x204c
00846984  07 30 84 e7                                      str r3, [r4, r7]
00846988  02 30 84 e7                                      str r3, [r4, r2]
0084698c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00846990  20 8c 0c 00 e8 8a 0c 00 2c 8a 0c 00              .byte 0x20, 0x8c, 0x0c, 0x00, 0xe8, 0x8a, 0x0c, 0x00, 0x2c, 0x8a, 0x0c, 0x00

; FUNCTION 0x0084699c, declared_size=376, range_size=376, mode=arm
; class-group: Connection
; alias: _ZN10Connection8sendDataEv
; demangled: Connection::sendData()
; decoder-mode: arm
0084699c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008469a0  24 50 02 e3                                      movw r5, #0x2024
008469a4  05 30 90 e7                                      ldr r3, [r0, r5]
008469a8  00 40 a0 e1                                      mov r4, r0
008469ac  00 00 53 e3                                      cmp r3, #0
008469b0  47 00 00 0a                                      beq #0x846ad4
008469b4  66 fb ff eb                                      bl #0x845754
008469b8  00 00 50 e3                                      cmp r0, #0
008469bc  45 00 00 0a                                      beq #0x846ad8
008469c0  05 30 94 e7                                      ldr r3, [r4, r5]
008469c4  01 6a 84 e2                                      add r6, r4, #0x1000
008469c8  14 70 02 e3                                      movw r7, #0x2014
008469cc  03 00 a0 e1                                      mov r0, r3
008469d0  00 30 93 e5                                      ldr r3, [r3]
008469d4  0f e0 a0 e1                                      mov lr, pc
008469d8  60 f0 93 e5                                      ldr pc, [r3, #0x60]
008469dc  05 30 94 e7                                      ldr r3, [r4, r5]
008469e0  10 20 01 e3                                      movw r2, #0x1010
008469e4  02 00 c4 e7                                      strb r0, [r4, r2]
008469e8  03 00 a0 e1                                      mov r0, r3
008469ec  00 30 93 e5                                      ldr r3, [r3]
008469f0  0f e0 a0 e1                                      mov lr, pc
008469f4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
008469f8  05 30 94 e7                                      ldr r3, [r4, r5]
008469fc  00 80 a0 e1                                      mov r8, r0
00846a00  03 00 a0 e1                                      mov r0, r3
00846a04  00 30 93 e5                                      ldr r3, [r3]
00846a08  0f e0 a0 e1                                      mov lr, pc
00846a0c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00846a10  08 10 a0 e1                                      mov r1, r8
00846a14  00 20 a0 e1                                      mov r2, r0
00846a18  11 00 86 e2                                      add r0, r6, #0x11
00846a1c  4b 92 ff eb                                      bl #0x82b350
00846a20  07 30 94 e7                                      ldr r3, [r4, r7]
00846a24  01 10 a0 e3                                      mov r1, #1
00846a28  03 00 a0 e1                                      mov r0, r3
00846a2c  00 30 93 e5                                      ldr r3, [r3]
00846a30  0f e0 a0 e1                                      mov lr, pc
00846a34  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00846a38  00 00 50 e3                                      cmp r0, #0
00846a3c  2b 00 00 ba                                      blt #0x846af0
00846a40  07 80 94 e7                                      ldr r8, [r4, r7]
00846a44  05 30 94 e7                                      ldr r3, [r4, r5]
00846a48  00 20 98 e5                                      ldr r2, [r8]
00846a4c  03 00 a0 e1                                      mov r0, r3
00846a50  00 30 93 e5                                      ldr r3, [r3]
00846a54  44 70 92 e5                                      ldr r7, [r2, #0x44]
00846a58  0f e0 a0 e1                                      mov lr, pc
00846a5c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00846a60  10 10 86 e2                                      add r1, r6, #0x10
00846a64  01 20 80 e2                                      add r2, r0, #1
00846a68  08 00 a0 e1                                      mov r0, r8
00846a6c  37 ff 2f e1                                      blx r7
00846a70  00 00 50 e3                                      cmp r0, #0
00846a74  21 00 00 ba                                      blt #0x846b00
00846a78  ae 91 ff eb                                      bl #0x82b138
00846a7c  05 60 94 e7                                      ldr r6, [r4, r5]
00846a80  34 30 02 e3                                      movw r3, #0x2034
00846a84  03 00 84 e7                                      str r0, [r4, r3]
00846a88  00 30 96 e5                                      ldr r3, [r6]
00846a8c  06 00 a0 e1                                      mov r0, r6
00846a90  0f e0 a0 e1                                      mov lr, pc
00846a94  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00846a98  05 00 84 e7                                      str r0, [r4, r5]
00846a9c  00 30 96 e5                                      ldr r3, [r6]
00846aa0  06 00 a0 e1                                      mov r0, r6
00846aa4  0f e0 a0 e1                                      mov lr, pc
00846aa8  04 f0 93 e5                                      ldr pc, [r3, #4]
00846aac  05 30 94 e7                                      ldr r3, [r4, r5]
00846ab0  00 00 53 e3                                      cmp r3, #0
00846ab4  04 00 00 0a                                      beq #0x846acc
00846ab8  04 00 a0 e1                                      mov r0, r4
00846abc  00 30 94 e5                                      ldr r3, [r4]
00846ac0  0f e0 a0 e1                                      mov lr, pc
00846ac4  08 f0 93 e5                                      ldr pc, [r3, #8]
00846ac8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00846acc  28 20 02 e3                                      movw r2, #0x2028
00846ad0  02 30 84 e7                                      str r3, [r4, r2]
00846ad4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00846ad8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00846adc  00 00 8f e0                                      add r0, pc, r0
00846ae0  27 93 ff eb                                      bl #0x82b784
00846ae4  04 00 a0 e1                                      mov r0, r4
00846ae8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846aec  b1 fe ff ea                                      b #0x8465b8
00846af0  18 00 9f e5                                      ldr r0, [pc, #0x18]
00846af4  00 00 8f e0                                      add r0, pc, r0
00846af8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846afc  20 93 ff ea                                      b #0x82b784
00846b00  04 00 a0 e1                                      mov r0, r4
00846b04  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00846b08  aa fe ff ea                                      b #0x8465b8
; mapping-symbol data/literal pool
00846b0c  fc 88 0c 00 0c 89 0c 00                          .byte 0xfc, 0x88, 0x0c, 0x00, 0x0c, 0x89, 0x0c, 0x00

; FUNCTION 0x00846b14, declared_size=156, range_size=156, mode=arm
; class-group: Connection
; alias: _ZN10ConnectionD1Ev
; demangled: Connection::~Connection()
; decoder-mode: arm
00846b14  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00846b18  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00846b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00846b20  03 30 8f e0                                      add r3, pc, r3
00846b24  02 20 93 e7                                      ldr r2, [r3, r2]
00846b28  00 40 a0 e1                                      mov r4, r0
00846b2c  08 20 82 e2                                      add r2, r2, #8
00846b30  00 20 80 e5                                      str r2, [r0]
00846b34  9f fe ff eb                                      bl #0x8465b8
00846b38  1c 30 02 e3                                      movw r3, #0x201c
00846b3c  03 00 94 e7                                      ldr r0, [r4, r3]
00846b40  da 1d eb eb                                      bl #0x30e2b0
00846b44  14 30 02 e3                                      movw r3, #0x2014
00846b48  03 30 94 e7                                      ldr r3, [r4, r3]
00846b4c  00 00 53 e3                                      cmp r3, #0
00846b50  03 00 00 0a                                      beq #0x846b64
00846b54  03 00 a0 e1                                      mov r0, r3
00846b58  00 30 93 e5                                      ldr r3, [r3]
00846b5c  0f e0 a0 e1                                      mov lr, pc
00846b60  04 f0 93 e5                                      ldr pc, [r3, #4]
00846b64  18 50 02 e3                                      movw r5, #0x2018
00846b68  05 30 94 e7                                      ldr r3, [r4, r5]
00846b6c  00 00 53 e3                                      cmp r3, #0
00846b70  05 00 00 0a                                      beq #0x846b8c
00846b74  03 00 a0 e1                                      mov r0, r3
00846b78  00 30 93 e5                                      ldr r3, [r3]
00846b7c  0f e0 a0 e1                                      mov lr, pc
00846b80  04 f0 93 e5                                      ldr pc, [r3, #4]
00846b84  00 30 a0 e3                                      mov r3, #0
00846b88  05 30 84 e7                                      str r3, [r4, r5]
00846b8c  81 5d a0 e3                                      mov r5, #0x2040
00846b90  05 00 94 e7                                      ldr r0, [r4, r5]
00846b94  c5 1d eb eb                                      bl #0x30e2b0
00846b98  00 30 a0 e3                                      mov r3, #0
00846b9c  05 30 84 e7                                      str r3, [r4, r5]
00846ba0  04 00 a0 e1                                      mov r0, r4
00846ba4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00846ba8  70 df 14 00 b4 05 00 00                          .byte 0x70, 0xdf, 0x14, 0x00, 0xb4, 0x05, 0x00, 0x00

; FUNCTION 0x00846bb0, declared_size=28, range_size=28, mode=arm
; class-group: Connection
; alias: _ZN10ConnectionD0Ev
; demangled: Connection::~Connection()
; decoder-mode: arm
00846bb0  10 40 2d e9                                      push {r4, lr}
00846bb4  00 40 a0 e1                                      mov r4, r0
00846bb8  d5 ff ff eb                                      bl #0x846b14
00846bbc  04 00 a0 e1                                      mov r0, r4
00846bc0  ba 1d eb eb                                      bl #0x30e2b0
00846bc4  04 00 a0 e1                                      mov r0, r4
00846bc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00846bcc, declared_size=156, range_size=156, mode=arm
; class-group: Connection
; alias: _ZN10ConnectionD2Ev
; demangled: Connection::~Connection()
; decoder-mode: arm
00846bcc  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00846bd0  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00846bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00846bd8  03 30 8f e0                                      add r3, pc, r3
00846bdc  02 20 93 e7                                      ldr r2, [r3, r2]
00846be0  00 40 a0 e1                                      mov r4, r0
00846be4  08 20 82 e2                                      add r2, r2, #8
00846be8  00 20 80 e5                                      str r2, [r0]
00846bec  71 fe ff eb                                      bl #0x8465b8
00846bf0  1c 30 02 e3                                      movw r3, #0x201c
00846bf4  03 00 94 e7                                      ldr r0, [r4, r3]
00846bf8  ac 1d eb eb                                      bl #0x30e2b0
00846bfc  14 30 02 e3                                      movw r3, #0x2014
00846c00  03 30 94 e7                                      ldr r3, [r4, r3]
00846c04  00 00 53 e3                                      cmp r3, #0
00846c08  03 00 00 0a                                      beq #0x846c1c
00846c0c  03 00 a0 e1                                      mov r0, r3
00846c10  00 30 93 e5                                      ldr r3, [r3]
00846c14  0f e0 a0 e1                                      mov lr, pc
00846c18  04 f0 93 e5                                      ldr pc, [r3, #4]
00846c1c  18 50 02 e3                                      movw r5, #0x2018
00846c20  05 30 94 e7                                      ldr r3, [r4, r5]
00846c24  00 00 53 e3                                      cmp r3, #0
00846c28  05 00 00 0a                                      beq #0x846c44
00846c2c  03 00 a0 e1                                      mov r0, r3
00846c30  00 30 93 e5                                      ldr r3, [r3]
00846c34  0f e0 a0 e1                                      mov lr, pc
00846c38  04 f0 93 e5                                      ldr pc, [r3, #4]
00846c3c  00 30 a0 e3                                      mov r3, #0
00846c40  05 30 84 e7                                      str r3, [r4, r5]
00846c44  81 5d a0 e3                                      mov r5, #0x2040
00846c48  05 00 94 e7                                      ldr r0, [r4, r5]
00846c4c  97 1d eb eb                                      bl #0x30e2b0
00846c50  00 30 a0 e3                                      mov r3, #0
00846c54  05 30 84 e7                                      str r3, [r4, r5]
00846c58  04 00 a0 e1                                      mov r0, r4
00846c5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00846c60  b8 de 14 00 b4 05 00 00                          .byte 0xb8, 0xde, 0x14, 0x00, 0xb4, 0x05, 0x00, 0x00

; FUNCTION 0x00846c68, declared_size=60, range_size=60, mode=arm
; class-group: Connection
; alias: _ZN10Connection7setNameEPc
; demangled: Connection::setName(char*)
; decoder-mode: arm
00846c68  70 40 2d e9                                      push {r4, r5, r6, lr}
00846c6c  81 5d a0 e3                                      mov r5, #0x2040
00846c70  00 40 a0 e1                                      mov r4, r0
00846c74  05 00 90 e7                                      ldr r0, [r0, r5]
00846c78  01 60 a0 e1                                      mov r6, r1
00846c7c  00 00 50 e3                                      cmp r0, #0
00846c80  02 00 00 0a                                      beq #0x846c90
00846c84  89 1d eb eb                                      bl #0x30e2b0
00846c88  00 30 a0 e3                                      mov r3, #0
00846c8c  05 30 84 e7                                      str r3, [r4, r5]
00846c90  06 00 a0 e1                                      mov r0, r6
00846c94  41 93 ff eb                                      bl #0x82b9a0
00846c98  81 3d a0 e3                                      mov r3, #0x2040
00846c9c  03 00 84 e7                                      str r0, [r4, r3]
00846ca0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00846ca4, declared_size=264, range_size=264, mode=arm
; class-group: Connection
; alias: _ZN10ConnectionC1EPci
; demangled: Connection::Connection(char*, int)
; decoder-mode: arm
00846ca4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00846ca8  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
00846cac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846cb0  03 30 8f e0                                      add r3, pc, r3
00846cb4  0c c0 93 e7                                      ldr ip, [r3, ip]
00846cb8  00 40 a0 e1                                      mov r4, r0
00846cbc  00 00 51 e2                                      subs r0, r1, #0
00846cc0  08 c0 8c e2                                      add ip, ip, #8
00846cc4  1c 30 02 03                                      movweq r3, #0x201c
00846cc8  00 c0 84 e5                                      str ip, [r4]
00846ccc  02 70 a0 e1                                      mov r7, r2
00846cd0  03 00 84 07                                      streq r0, [r4, r3]
00846cd4  02 00 00 0a                                      beq #0x846ce4
00846cd8  30 93 ff eb                                      bl #0x82b9a0
00846cdc  1c 30 02 e3                                      movw r3, #0x201c
00846ce0  03 00 84 e7                                      str r0, [r4, r3]
00846ce4  00 50 a0 e3                                      mov r5, #0
00846ce8  20 60 02 e3                                      movw r6, #0x2020
00846cec  24 30 02 e3                                      movw r3, #0x2024
00846cf0  06 70 84 e7                                      str r7, [r4, r6]
00846cf4  03 50 84 e7                                      str r5, [r4, r3]
00846cf8  28 30 02 e3                                      movw r3, #0x2028
00846cfc  03 50 84 e7                                      str r5, [r4, r3]
00846d00  2c 30 02 e3                                      movw r3, #0x202c
00846d04  03 50 84 e7                                      str r5, [r4, r3]
00846d08  30 30 02 e3                                      movw r3, #0x2030
00846d0c  03 50 84 e7                                      str r5, [r4, r3]
00846d10  3c 30 02 e3                                      movw r3, #0x203c
00846d14  03 50 84 e7                                      str r5, [r4, r3]
00846d18  0f 00 84 e2                                      add r0, r4, #0xf
00846d1c  05 10 a0 e1                                      mov r1, r5
00846d20  0e 50 c4 e5                                      strb r5, [r4, #0xe]
00846d24  01 20 01 e3                                      movw r2, #0x1001
00846d28  8d 91 ff eb                                      bl #0x82b364
00846d2c  01 0a 84 e2                                      add r0, r4, #0x1000
00846d30  05 10 a0 e1                                      mov r1, r5
00846d34  10 00 80 e2                                      add r0, r0, #0x10
00846d38  01 20 01 e3                                      movw r2, #0x1001
00846d3c  88 91 ff eb                                      bl #0x82b364
00846d40  34 30 02 e3                                      movw r3, #0x2034
00846d44  03 50 84 e7                                      str r5, [r4, r3]
00846d48  38 30 02 e3                                      movw r3, #0x2038
00846d4c  03 50 84 e7                                      str r5, [r4, r3]
00846d50  08 50 84 e5                                      str r5, [r4, #8]
00846d54  1c 30 02 e3                                      movw r3, #0x201c
00846d58  03 00 94 e7                                      ldr r0, [r4, r3]
00846d5c  06 10 94 e7                                      ldr r1, [r4, r6]
00846d60  05 20 a0 e1                                      mov r2, r5
00846d64  ef a9 ff eb                                      bl #0x831528
00846d68  14 30 02 e3                                      movw r3, #0x2014
00846d6c  03 00 84 e7                                      str r0, [r4, r3]
00846d70  48 30 02 e3                                      movw r3, #0x2048
00846d74  03 50 84 e7                                      str r5, [r4, r3]
00846d78  18 30 02 e3                                      movw r3, #0x2018
00846d7c  03 50 84 e7                                      str r5, [r4, r3]
00846d80  81 3d a0 e3                                      mov r3, #0x2040
00846d84  03 50 84 e7                                      str r5, [r4, r3]
00846d88  44 30 02 e3                                      movw r3, #0x2044
00846d8c  03 50 84 e7                                      str r5, [r4, r3]
00846d90  4c 30 02 e3                                      movw r3, #0x204c
00846d94  03 50 84 e7                                      str r5, [r4, r3]
00846d98  04 00 a0 e1                                      mov r0, r4
00846d9c  04 50 84 e5                                      str r5, [r4, #4]
00846da0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00846da4  e0 dd 14 00 b4 05 00 00                          .byte 0xe0, 0xdd, 0x14, 0x00, 0xb4, 0x05, 0x00, 0x00

; FUNCTION 0x00846dac, declared_size=264, range_size=264, mode=arm
; class-group: Connection
; alias: _ZN10ConnectionC2EPci
; demangled: Connection::Connection(char*, int)
; decoder-mode: arm
00846dac  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00846db0  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
00846db4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00846db8  03 30 8f e0                                      add r3, pc, r3
00846dbc  0c c0 93 e7                                      ldr ip, [r3, ip]
00846dc0  00 40 a0 e1                                      mov r4, r0
00846dc4  00 00 51 e2                                      subs r0, r1, #0
00846dc8  08 c0 8c e2                                      add ip, ip, #8
00846dcc  1c 30 02 03                                      movweq r3, #0x201c
00846dd0  00 c0 84 e5                                      str ip, [r4]
00846dd4  02 70 a0 e1                                      mov r7, r2
00846dd8  03 00 84 07                                      streq r0, [r4, r3]
00846ddc  02 00 00 0a                                      beq #0x846dec
00846de0  ee 92 ff eb                                      bl #0x82b9a0
00846de4  1c 30 02 e3                                      movw r3, #0x201c
00846de8  03 00 84 e7                                      str r0, [r4, r3]
00846dec  00 50 a0 e3                                      mov r5, #0
00846df0  20 60 02 e3                                      movw r6, #0x2020
00846df4  24 30 02 e3                                      movw r3, #0x2024
00846df8  06 70 84 e7                                      str r7, [r4, r6]
00846dfc  03 50 84 e7                                      str r5, [r4, r3]
00846e00  28 30 02 e3                                      movw r3, #0x2028
00846e04  03 50 84 e7                                      str r5, [r4, r3]
00846e08  2c 30 02 e3                                      movw r3, #0x202c
00846e0c  03 50 84 e7                                      str r5, [r4, r3]
00846e10  30 30 02 e3                                      movw r3, #0x2030
00846e14  03 50 84 e7                                      str r5, [r4, r3]
00846e18  3c 30 02 e3                                      movw r3, #0x203c
00846e1c  03 50 84 e7                                      str r5, [r4, r3]
00846e20  0f 00 84 e2                                      add r0, r4, #0xf
00846e24  05 10 a0 e1                                      mov r1, r5
00846e28  0e 50 c4 e5                                      strb r5, [r4, #0xe]
00846e2c  01 20 01 e3                                      movw r2, #0x1001
00846e30  4b 91 ff eb                                      bl #0x82b364
00846e34  01 0a 84 e2                                      add r0, r4, #0x1000
00846e38  05 10 a0 e1                                      mov r1, r5
00846e3c  10 00 80 e2                                      add r0, r0, #0x10
00846e40  01 20 01 e3                                      movw r2, #0x1001
00846e44  46 91 ff eb                                      bl #0x82b364
00846e48  34 30 02 e3                                      movw r3, #0x2034
00846e4c  03 50 84 e7                                      str r5, [r4, r3]
00846e50  38 30 02 e3                                      movw r3, #0x2038
00846e54  03 50 84 e7                                      str r5, [r4, r3]
00846e58  08 50 84 e5                                      str r5, [r4, #8]
00846e5c  1c 30 02 e3                                      movw r3, #0x201c
00846e60  03 00 94 e7                                      ldr r0, [r4, r3]
00846e64  06 10 94 e7                                      ldr r1, [r4, r6]
00846e68  05 20 a0 e1                                      mov r2, r5
00846e6c  ad a9 ff eb                                      bl #0x831528
00846e70  14 30 02 e3                                      movw r3, #0x2014
00846e74  03 00 84 e7                                      str r0, [r4, r3]
00846e78  48 30 02 e3                                      movw r3, #0x2048
00846e7c  03 50 84 e7                                      str r5, [r4, r3]
00846e80  18 30 02 e3                                      movw r3, #0x2018
00846e84  03 50 84 e7                                      str r5, [r4, r3]
00846e88  81 3d a0 e3                                      mov r3, #0x2040
00846e8c  03 50 84 e7                                      str r5, [r4, r3]
00846e90  44 30 02 e3                                      movw r3, #0x2044
00846e94  03 50 84 e7                                      str r5, [r4, r3]
00846e98  4c 30 02 e3                                      movw r3, #0x204c
00846e9c  03 50 84 e7                                      str r5, [r4, r3]
00846ea0  04 00 a0 e1                                      mov r0, r4
00846ea4  04 50 84 e5                                      str r5, [r4, #4]
00846ea8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00846eac  d8 dc 14 00 b4 05 00 00                          .byte 0xd8, 0xdc, 0x14, 0x00, 0xb4, 0x05, 0x00, 0x00
