; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031d8d0, declared_size=8, range_size=8, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10GetDataPtrEv
; demangled: CMessage::GetDataPtr()
; decoder-mode: arm
0031d8d0  00 00 a0 e3                                      mov r0, #0
0031d8d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00809998, declared_size=8, range_size=8, mode=arm
; class-group: CMessage
; alias: _ZNK8CMessage11GetDataSizeEv
; demangled: CMessage::GetDataSize() const
; decoder-mode: arm
00809998  00 00 a0 e3                                      mov r0, #0
0080999c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008099a0, declared_size=40, range_size=40, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage28TerminateMessageRegistrationEv
; demangled: CMessage::TerminateMessageRegistration()
; decoder-mode: arm
008099a0  18 10 9f e5                                      ldr r1, [pc, #0x18]
008099a4  18 20 9f e5                                      ldr r2, [pc, #0x18]
008099a8  00 30 a0 e3                                      mov r3, #0
008099ac  01 10 8f e0                                      add r1, pc, r1
008099b0  02 20 91 e7                                      ldr r2, [r1, r2]
008099b4  03 00 a0 e1                                      mov r0, r3
008099b8  00 30 c2 e5                                      strb r3, [r2]
008099bc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008099c0  e4 b0 18 00 1c 26 00 00                          .byte 0xe4, 0xb0, 0x18, 0x00, 0x1c, 0x26, 0x00, 0x00

; FUNCTION 0x008099c8, declared_size=8, range_size=8, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10IsReliableEv
; demangled: CMessage::IsReliable()
; decoder-mode: arm
008099c8  30 00 d0 e5                                      ldrb r0, [r0, #0x30]
008099cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008099d0, declared_size=16, range_size=16, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11AcknowledgeEj
; demangled: CMessage::Acknowledge(unsigned int)
; decoder-mode: arm
008099d0  40 30 90 e5                                      ldr r3, [r0, #0x40]
008099d4  01 30 83 e1                                      orr r3, r3, r1
008099d8  40 30 80 e5                                      str r3, [r0, #0x40]
008099dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008099e0, declared_size=20, range_size=20, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage6IsFromEi
; demangled: CMessage::IsFrom(int)
; decoder-mode: arm
008099e0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
008099e4  01 00 50 e1                                      cmp r0, r1
008099e8  00 00 a0 13                                      movne r0, #0
008099ec  01 00 a0 03                                      moveq r0, #1
008099f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008099f4, declared_size=68, range_size=68, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage9ResetDataEv
; demangled: CMessage::ResetData()
; decoder-mode: arm
008099f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008099f8  00 30 90 e5                                      ldr r3, [r0]
008099fc  00 40 a0 e1                                      mov r4, r0
00809a00  0f e0 a0 e1                                      mov lr, pc
00809a04  00 f0 93 e5                                      ldr pc, [r3]
00809a08  00 50 50 e2                                      subs r5, r0, #0
00809a0c  08 00 00 0a                                      beq #0x809a34
00809a10  04 00 a0 e1                                      mov r0, r4
00809a14  00 30 94 e5                                      ldr r3, [r4]
00809a18  0f e0 a0 e1                                      mov lr, pc
00809a1c  08 f0 93 e5                                      ldr pc, [r3, #8]
00809a20  00 10 a0 e3                                      mov r1, #0
00809a24  00 20 a0 e1                                      mov r2, r0
00809a28  05 00 a0 e1                                      mov r0, r5
00809a2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00809a30  8a 12 ec ea                                      b #0x30e460
00809a34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809a38, declared_size=104, range_size=104, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage29InitializeMessageRegistrationEv
; demangled: CMessage::InitializeMessageRegistration()
; decoder-mode: arm
00809a38  70 40 2d e9                                      push {r4, r5, r6, lr}
00809a3c  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
00809a40  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00809a44  04 40 8f e0                                      add r4, pc, r4
00809a48  03 60 94 e7                                      ldr r6, [r4, r3]
00809a4c  00 50 d6 e5                                      ldrb r5, [r6]
00809a50  00 00 55 e3                                      cmp r5, #0
00809a54  0b 00 00 1a                                      bne #0x809a88
00809a58  38 30 9f e5                                      ldr r3, [pc, #0x38]
00809a5c  05 10 a0 e1                                      mov r1, r5
00809a60  01 29 a0 e3                                      mov r2, #0x4000
00809a64  03 00 94 e7                                      ldr r0, [r4, r3]
00809a68  7c 12 ec eb                                      bl #0x30e460
00809a6c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00809a70  05 10 a0 e1                                      mov r1, r5
00809a74  01 2b a0 e3                                      mov r2, #0x400
00809a78  03 00 94 e7                                      ldr r0, [r4, r3]
00809a7c  77 12 ec eb                                      bl #0x30e460
00809a80  01 30 a0 e3                                      mov r3, #1
00809a84  00 30 c6 e5                                      strb r3, [r6]
00809a88  00 00 a0 e3                                      mov r0, #0
00809a8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00809a90  4c b0 18 00 6c 12 00 00 54 15 00 00 18 1e 00 00  .byte 0x4c, 0xb0, 0x18, 0x00, 0x6c, 0x12, 0x00, 0x00, 0x54, 0x15, 0x00, 0x00, 0x18, 0x1e, 0x00, 0x00

; FUNCTION 0x00809aa0, declared_size=80, range_size=80, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage8ReadDataER12NetBitStream
; demangled: CMessage::ReadData(NetBitStream&)
; decoder-mode: arm
00809aa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00809aa4  00 30 90 e5                                      ldr r3, [r0]
00809aa8  00 40 a0 e1                                      mov r4, r0
00809aac  01 60 a0 e1                                      mov r6, r1
00809ab0  0f e0 a0 e1                                      mov lr, pc
00809ab4  00 f0 93 e5                                      ldr pc, [r3]
00809ab8  00 50 50 e2                                      subs r5, r0, #0
00809abc  05 40 a0 01                                      moveq r4, r5
00809ac0  08 00 00 0a                                      beq #0x809ae8
00809ac4  04 00 a0 e1                                      mov r0, r4
00809ac8  00 30 94 e5                                      ldr r3, [r4]
00809acc  0f e0 a0 e1                                      mov lr, pc
00809ad0  08 f0 93 e5                                      ldr pc, [r3, #8]
00809ad4  00 40 a0 e1                                      mov r4, r0
00809ad8  05 10 a0 e1                                      mov r1, r5
00809adc  06 00 a0 e1                                      mov r0, r6
00809ae0  04 20 a0 e1                                      mov r2, r4
00809ae4  4f 14 00 eb                                      bl #0x80ec28
00809ae8  04 00 a0 e1                                      mov r0, r4
00809aec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809af0, declared_size=32, range_size=32, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10ReadHeaderER12NetBitStream
; demangled: CMessage::ReadHeader(NetBitStream&)
; decoder-mode: arm
00809af0  04 30 80 e2                                      add r3, r0, #4
00809af4  10 40 2d e9                                      push {r4, lr}
00809af8  01 00 a0 e1                                      mov r0, r1
00809afc  10 20 a0 e3                                      mov r2, #0x10
00809b00  03 10 a0 e1                                      mov r1, r3
00809b04  47 14 00 eb                                      bl #0x80ec28
00809b08  10 00 a0 e3                                      mov r0, #0x10
00809b0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00809b10, declared_size=80, range_size=80, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage9WriteDataER12NetBitStream
; demangled: CMessage::WriteData(NetBitStream&)
; decoder-mode: arm
00809b10  70 40 2d e9                                      push {r4, r5, r6, lr}
00809b14  00 30 90 e5                                      ldr r3, [r0]
00809b18  00 40 a0 e1                                      mov r4, r0
00809b1c  01 60 a0 e1                                      mov r6, r1
00809b20  0f e0 a0 e1                                      mov lr, pc
00809b24  00 f0 93 e5                                      ldr pc, [r3]
00809b28  00 50 50 e2                                      subs r5, r0, #0
00809b2c  05 40 a0 01                                      moveq r4, r5
00809b30  08 00 00 0a                                      beq #0x809b58
00809b34  04 00 a0 e1                                      mov r0, r4
00809b38  00 30 94 e5                                      ldr r3, [r4]
00809b3c  0f e0 a0 e1                                      mov lr, pc
00809b40  08 f0 93 e5                                      ldr pc, [r3, #8]
00809b44  00 40 a0 e1                                      mov r4, r0
00809b48  05 10 a0 e1                                      mov r1, r5
00809b4c  06 00 a0 e1                                      mov r0, r6
00809b50  04 20 a0 e1                                      mov r2, r4
00809b54  93 14 00 eb                                      bl #0x80eda8
00809b58  04 00 a0 e1                                      mov r0, r4
00809b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809b60, declared_size=32, range_size=32, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11WriteHeaderER12NetBitStream
; demangled: CMessage::WriteHeader(NetBitStream&)
; decoder-mode: arm
00809b60  04 30 80 e2                                      add r3, r0, #4
00809b64  10 40 2d e9                                      push {r4, lr}
00809b68  01 00 a0 e1                                      mov r0, r1
00809b6c  10 20 a0 e3                                      mov r2, #0x10
00809b70  03 10 a0 e1                                      mov r1, r3
00809b74  8b 14 00 eb                                      bl #0x80eda8
00809b78  10 00 a0 e3                                      mov r0, #0x10
00809b7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00809b80, declared_size=68, range_size=68, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage9SerializeER12NetBitStream
; demangled: CMessage::Serialize(NetBitStream&)
; decoder-mode: arm
00809b80  70 40 2d e9                                      push {r4, r5, r6, lr}
00809b84  00 40 a0 e1                                      mov r4, r0
00809b88  01 50 a0 e1                                      mov r5, r1
00809b8c  08 20 a0 e3                                      mov r2, #8
00809b90  01 00 a0 e1                                      mov r0, r1
00809b94  10 10 d4 e5                                      ldrb r1, [r4, #0x10]
00809b98  52 12 00 eb                                      bl #0x80e4e8
00809b9c  05 10 a0 e1                                      mov r1, r5
00809ba0  04 00 a0 e1                                      mov r0, r4
00809ba4  ed ff ff eb                                      bl #0x809b60
00809ba8  04 00 a0 e1                                      mov r0, r4
00809bac  05 10 a0 e1                                      mov r1, r5
00809bb0  00 30 94 e5                                      ldr r3, [r4]
00809bb4  0f e0 a0 e1                                      mov lr, pc
00809bb8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00809bbc  00 00 a0 e3                                      mov r0, #0
00809bc0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809bc4, declared_size=48, range_size=48, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage5IsForEi
; demangled: CMessage::IsFor(int)
; decoder-mode: arm
00809bc4  70 40 2d e9                                      push {r4, r5, r6, lr}
00809bc8  01 50 a0 e1                                      mov r5, r1
00809bcc  08 40 90 e5                                      ldr r4, [r0, #8]
00809bd0  ed dc ff eb                                      bl #0x800f8c
00809bd4  05 10 a0 e1                                      mov r1, r5
00809bd8  00 30 90 e5                                      ldr r3, [r0]
00809bdc  0f e0 a0 e1                                      mov lr, pc
00809be0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809be4  04 00 10 e1                                      tst r0, r4
00809be8  00 00 a0 03                                      moveq r0, #0
00809bec  01 00 a0 13                                      movne r0, #1
00809bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809bf4, declared_size=40, range_size=40, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11IsForServerEv
; demangled: CMessage::IsForServer()
; decoder-mode: arm
00809bf4  10 40 2d e9                                      push {r4, lr}
00809bf8  00 40 a0 e1                                      mov r4, r0
00809bfc  e2 dc ff eb                                      bl #0x800f8c
00809c00  00 30 90 e5                                      ldr r3, [r0]
00809c04  0f e0 a0 e1                                      mov lr, pc
00809c08  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00809c0c  00 10 a0 e1                                      mov r1, r0
00809c10  04 00 a0 e1                                      mov r0, r4
00809c14  10 40 bd e8                                      pop {r4, lr}
00809c18  e9 ff ff ea                                      b #0x809bc4

; FUNCTION 0x00809c1c, declared_size=40, range_size=40, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage7IsForMeEv
; demangled: CMessage::IsForMe()
; decoder-mode: arm
00809c1c  10 40 2d e9                                      push {r4, lr}
00809c20  00 40 a0 e1                                      mov r4, r0
00809c24  d8 dc ff eb                                      bl #0x800f8c
00809c28  00 30 90 e5                                      ldr r3, [r0]
00809c2c  0f e0 a0 e1                                      mov lr, pc
00809c30  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00809c34  00 10 a0 e1                                      mov r1, r0
00809c38  04 00 a0 e1                                      mov r0, r4
00809c3c  10 40 bd e8                                      pop {r4, lr}
00809c40  df ff ff ea                                      b #0x809bc4

; FUNCTION 0x00809c44, declared_size=40, range_size=40, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage8IsFromMeEv
; demangled: CMessage::IsFromMe()
; decoder-mode: arm
00809c44  10 40 2d e9                                      push {r4, lr}
00809c48  00 40 a0 e1                                      mov r4, r0
00809c4c  ce dc ff eb                                      bl #0x800f8c
00809c50  00 30 90 e5                                      ldr r3, [r0]
00809c54  0f e0 a0 e1                                      mov lr, pc
00809c58  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00809c5c  00 10 a0 e1                                      mov r1, r0
00809c60  04 00 a0 e1                                      mov r0, r4
00809c64  10 40 bd e8                                      pop {r4, lr}
00809c68  5c ff ff ea                                      b #0x8099e0

; FUNCTION 0x00809c6c, declared_size=40, range_size=40, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage12IsFromServerEv
; demangled: CMessage::IsFromServer()
; decoder-mode: arm
00809c6c  10 40 2d e9                                      push {r4, lr}
00809c70  00 40 a0 e1                                      mov r4, r0
00809c74  c4 dc ff eb                                      bl #0x800f8c
00809c78  00 30 90 e5                                      ldr r3, [r0]
00809c7c  0f e0 a0 e1                                      mov lr, pc
00809c80  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00809c84  00 10 a0 e1                                      mov r1, r0
00809c88  04 00 a0 e1                                      mov r0, r4
00809c8c  10 40 bd e8                                      pop {r4, lr}
00809c90  52 ff ff ea                                      b #0x8099e0

; FUNCTION 0x00809c94, declared_size=56, range_size=56, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage7IsLocalEv
; demangled: CMessage::IsLocal()
; decoder-mode: arm
00809c94  10 40 2d e9                                      push {r4, lr}
00809c98  31 30 d0 e5                                      ldrb r3, [r0, #0x31]
00809c9c  00 40 a0 e1                                      mov r4, r0
00809ca0  00 00 53 e3                                      cmp r3, #0
00809ca4  01 00 00 0a                                      beq #0x809cb0
00809ca8  01 00 a0 e3                                      mov r0, #1
00809cac  10 80 bd e8                                      pop {r4, pc}
00809cb0  ed ff ff eb                                      bl #0x809c6c
00809cb4  00 00 50 e3                                      cmp r0, #0
00809cb8  02 00 00 0a                                      beq #0x809cc8
00809cbc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00809cc0  01 00 70 e2                                      rsbs r0, r0, #1
00809cc4  00 00 a0 33                                      movlo r0, #0
00809cc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00809ccc, declared_size=48, range_size=48, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10CreateHashEii
; demangled: CMessage::CreateHash(int, int)
; decoder-mode: arm
00809ccc  70 40 2d e9                                      push {r4, r5, r6, lr}
00809cd0  01 40 a0 e1                                      mov r4, r1
00809cd4  00 50 a0 e1                                      mov r5, r0
00809cd8  ab dc ff eb                                      bl #0x800f8c
00809cdc  05 10 a0 e1                                      mov r1, r5
00809ce0  00 30 90 e5                                      ldr r3, [r0]
00809ce4  0f e0 a0 e1                                      mov lr, pc
00809ce8  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809cec  0f 00 00 e2                                      and r0, r0, #0xf
00809cf0  04 42 80 e0                                      add r4, r0, r4, lsl #4
00809cf4  74 00 ff e6                                      uxth r0, r4
00809cf8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809cfc, declared_size=12, range_size=12, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage7GetHashEv
; demangled: CMessage::GetHash()
; decoder-mode: arm
00809cfc  04 10 90 e5                                      ldr r1, [r0, #4]
00809d00  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00809d04  f0 ff ff ea                                      b #0x809ccc

; FUNCTION 0x00809d08, declared_size=104, range_size=104, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11SetSentFlagEib
; demangled: CMessage::SetSentFlag(int, bool)
; decoder-mode: arm
00809d08  70 40 2d e9                                      push {r4, r5, r6, lr}
00809d0c  38 30 90 e5                                      ldr r3, [r0, #0x38]
00809d10  00 40 a0 e1                                      mov r4, r0
00809d14  01 60 a0 e1                                      mov r6, r1
00809d18  00 00 53 e3                                      cmp r3, #0
00809d1c  02 50 a0 e1                                      mov r5, r2
00809d20  01 00 00 1a                                      bne #0x809d2c
00809d24  48 30 80 e5                                      str r3, [r0, #0x48]
00809d28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00809d2c  96 dc ff eb                                      bl #0x800f8c
00809d30  06 10 a0 e1                                      mov r1, r6
00809d34  00 30 90 e5                                      ldr r3, [r0]
00809d38  0f e0 a0 e1                                      mov lr, pc
00809d3c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809d40  00 00 55 e3                                      cmp r5, #0
00809d44  05 00 00 1a                                      bne #0x809d60
00809d48  48 30 94 e5                                      ldr r3, [r4, #0x48]
00809d4c  00 00 50 e3                                      cmp r0, #0
00809d50  00 00 a0 13                                      movne r0, #0
00809d54  01 00 03 02                                      andeq r0, r3, #1
00809d58  48 00 84 e5                                      str r0, [r4, #0x48]
00809d5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00809d60  48 30 94 e5                                      ldr r3, [r4, #0x48]
00809d64  00 00 83 e1                                      orr r0, r3, r0
00809d68  48 00 84 e5                                      str r0, [r4, #0x48]
00809d6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809d70, declared_size=212, range_size=212, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage18SetDestinationMaskEj
; demangled: CMessage::SetDestinationMask(unsigned int)
; decoder-mode: arm
00809d70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00809d74  00 40 a0 e1                                      mov r4, r0
00809d78  01 60 a0 e1                                      mov r6, r1
00809d7c  82 dc ff eb                                      bl #0x800f8c
00809d80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00809d84  00 50 a0 e1                                      mov r5, r0
00809d88  08 60 84 e5                                      str r6, [r4, #8]
00809d8c  00 00 53 e3                                      cmp r3, #0
00809d90  20 00 00 0a                                      beq #0x809e18
00809d94  04 00 a0 e1                                      mov r0, r4
00809d98  bd ff ff eb                                      bl #0x809c94
00809d9c  00 00 50 e3                                      cmp r0, #0
00809da0  0e 00 00 1a                                      bne #0x809de0
00809da4  33 30 d4 e5                                      ldrb r3, [r4, #0x33]
00809da8  00 00 53 e3                                      cmp r3, #0
00809dac  0c 00 00 1a                                      bne #0x809de4
00809db0  00 30 95 e5                                      ldr r3, [r5]
00809db4  08 60 94 e5                                      ldr r6, [r4, #8]
00809db8  84 70 93 e5                                      ldr r7, [r3, #0x84]
00809dbc  72 dc ff eb                                      bl #0x800f8c
00809dc0  00 30 90 e5                                      ldr r3, [r0]
00809dc4  0f e0 a0 e1                                      mov lr, pc
00809dc8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00809dcc  00 10 a0 e1                                      mov r1, r0
00809dd0  05 00 a0 e1                                      mov r0, r5
00809dd4  37 ff 2f e1                                      blx r7
00809dd8  00 00 c6 e1                                      bic r0, r6, r0
00809ddc  08 00 84 e5                                      str r0, [r4, #8]
00809de0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00809de4  00 30 95 e5                                      ldr r3, [r5]
00809de8  08 60 94 e5                                      ldr r6, [r4, #8]
00809dec  84 70 93 e5                                      ldr r7, [r3, #0x84]
00809df0  65 dc ff eb                                      bl #0x800f8c
00809df4  00 30 90 e5                                      ldr r3, [r0]
00809df8  0f e0 a0 e1                                      mov lr, pc
00809dfc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00809e00  00 10 a0 e1                                      mov r1, r0
00809e04  05 00 a0 e1                                      mov r0, r5
00809e08  37 ff 2f e1                                      blx r7
00809e0c  06 00 80 e1                                      orr r0, r0, r6
00809e10  08 00 84 e5                                      str r0, [r4, #8]
00809e14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00809e18  00 30 90 e5                                      ldr r3, [r0]
00809e1c  84 60 93 e5                                      ldr r6, [r3, #0x84]
00809e20  59 dc ff eb                                      bl #0x800f8c
00809e24  00 30 90 e5                                      ldr r3, [r0]
00809e28  0f e0 a0 e1                                      mov lr, pc
00809e2c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00809e30  00 10 a0 e1                                      mov r1, r0
00809e34  05 00 a0 e1                                      mov r0, r5
00809e38  36 ff 2f e1                                      blx r6
00809e3c  08 00 84 e5                                      str r0, [r4, #8]
00809e40  d3 ff ff ea                                      b #0x809d94

; FUNCTION 0x00809e44, declared_size=48, range_size=48, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage16IsAcknowledgedByEi
; demangled: CMessage::IsAcknowledgedBy(int)
; decoder-mode: arm
00809e44  70 40 2d e9                                      push {r4, r5, r6, lr}
00809e48  01 50 a0 e1                                      mov r5, r1
00809e4c  40 40 90 e5                                      ldr r4, [r0, #0x40]
00809e50  4d dc ff eb                                      bl #0x800f8c
00809e54  05 10 a0 e1                                      mov r1, r5
00809e58  00 30 90 e5                                      ldr r3, [r0]
00809e5c  0f e0 a0 e1                                      mov lr, pc
00809e60  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809e64  04 00 10 e1                                      tst r0, r4
00809e68  00 00 a0 03                                      moveq r0, #0
00809e6c  01 00 a0 13                                      movne r0, #1
00809e70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809e74, declared_size=48, range_size=48, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage17AcknowledgeMemberEi
; demangled: CMessage::AcknowledgeMember(int)
; decoder-mode: arm
00809e74  70 40 2d e9                                      push {r4, r5, r6, lr}
00809e78  00 40 a0 e1                                      mov r4, r0
00809e7c  01 60 a0 e1                                      mov r6, r1
00809e80  40 50 90 e5                                      ldr r5, [r0, #0x40]
00809e84  40 dc ff eb                                      bl #0x800f8c
00809e88  06 10 a0 e1                                      mov r1, r6
00809e8c  00 30 90 e5                                      ldr r3, [r0]
00809e90  0f e0 a0 e1                                      mov lr, pc
00809e94  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809e98  05 00 80 e1                                      orr r0, r0, r5
00809e9c  40 00 84 e5                                      str r0, [r4, #0x40]
00809ea0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809ea4, declared_size=88, range_size=88, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10InitializeEv
; demangled: CMessage::Initialize()
; decoder-mode: arm
00809ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00809ea8  00 40 a0 e1                                      mov r4, r0
00809eac  00 30 90 e5                                      ldr r3, [r0]
00809eb0  0f e0 a0 e1                                      mov lr, pc
00809eb4  04 f0 93 e5                                      ldr pc, [r3, #4]
00809eb8  00 30 94 e5                                      ldr r3, [r4]
00809ebc  04 00 a0 e1                                      mov r0, r4
00809ec0  0f e0 a0 e1                                      mov lr, pc
00809ec4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00809ec8  33 30 d4 e5                                      ldrb r3, [r4, #0x33]
00809ecc  40 50 94 e5                                      ldr r5, [r4, #0x40]
00809ed0  00 00 53 e3                                      cmp r3, #0
00809ed4  00 00 a0 13                                      movne r0, #0
00809ed8  04 00 00 1a                                      bne #0x809ef0
00809edc  2a dc ff eb                                      bl #0x800f8c
00809ee0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00809ee4  00 30 90 e5                                      ldr r3, [r0]
00809ee8  0f e0 a0 e1                                      mov lr, pc
00809eec  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00809ef0  05 50 80 e1                                      orr r5, r0, r5
00809ef4  40 50 84 e5                                      str r5, [r4, #0x40]
00809ef8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809efc, declared_size=56, range_size=56, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage13CreateMessageEib
; demangled: CMessage::CreateMessage(int, bool)
; decoder-mode: arm
00809efc  28 30 9f e5                                      ldr r3, [pc, #0x28]
00809f00  28 20 9f e5                                      ldr r2, [pc, #0x28]
00809f04  10 40 2d e9                                      push {r4, lr}
00809f08  03 30 8f e0                                      add r3, pc, r3
00809f0c  02 20 93 e7                                      ldr r2, [r3, r2]
00809f10  00 31 92 e7                                      ldr r3, [r2, r0, lsl #2]
00809f14  01 00 a0 e1                                      mov r0, r1
00809f18  33 ff 2f e1                                      blx r3
00809f1c  00 40 a0 e1                                      mov r4, r0
00809f20  df ff ff eb                                      bl #0x809ea4
00809f24  04 00 a0 e1                                      mov r0, r4
00809f28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00809f2c  88 ab 18 00 18 1e 00 00                          .byte 0x88, 0xab, 0x18, 0x00, 0x18, 0x1e, 0x00, 0x00

; FUNCTION 0x00809f34, declared_size=68, range_size=68, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11UnserializeER12NetBitStream
; demangled: CMessage::Unserialize(NetBitStream&)
; decoder-mode: arm
00809f34  70 40 2d e9                                      push {r4, r5, r6, lr}
00809f38  08 10 a0 e3                                      mov r1, #8
00809f3c  00 50 a0 e1                                      mov r5, r0
00809f40  87 11 00 eb                                      bl #0x80e564
00809f44  00 10 a0 e3                                      mov r1, #0
00809f48  70 00 af e6                                      sxtb r0, r0
00809f4c  ea ff ff eb                                      bl #0x809efc
00809f50  05 10 a0 e1                                      mov r1, r5
00809f54  00 40 a0 e1                                      mov r4, r0
00809f58  e4 fe ff eb                                      bl #0x809af0
00809f5c  05 10 a0 e1                                      mov r1, r5
00809f60  00 30 94 e5                                      ldr r3, [r4]
00809f64  04 00 a0 e1                                      mov r0, r4
00809f68  0f e0 a0 e1                                      mov lr, pc
00809f6c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00809f70  04 00 a0 e1                                      mov r0, r4
00809f74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00809f78, declared_size=88, range_size=88, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage9DuplicateEv
; demangled: CMessage::Duplicate()
; decoder-mode: arm
00809f78  30 40 2d e9                                      push {r4, r5, lr}
00809f7c  24 d0 4d e2                                      sub sp, sp, #0x24
00809f80  00 30 90 e5                                      ldr r3, [r0]
00809f84  00 50 a0 e1                                      mov r5, r0
00809f88  0f e0 a0 e1                                      mov lr, pc
00809f8c  08 f0 93 e5                                      ldr pc, [r3, #8]
00809f90  10 10 80 e2                                      add r1, r0, #0x10
00809f94  81 10 a0 e1                                      lsl r1, r1, #1
00809f98  0d 00 a0 e1                                      mov r0, sp
00809f9c  59 12 00 eb                                      bl #0x80e908
00809fa0  0d 10 a0 e1                                      mov r1, sp
00809fa4  05 00 a0 e1                                      mov r0, r5
00809fa8  f4 fe ff eb                                      bl #0x809b80
00809fac  0d 00 a0 e1                                      mov r0, sp
00809fb0  df ff ff eb                                      bl #0x809f34
00809fb4  00 50 a0 e1                                      mov r5, r0
00809fb8  0d 00 a0 e1                                      mov r0, sp
00809fbc  f3 11 00 eb                                      bl #0x80e790
00809fc0  0d 40 a0 e1                                      mov r4, sp
00809fc4  05 00 a0 e1                                      mov r0, r5
00809fc8  24 d0 8d e2                                      add sp, sp, #0x24
00809fcc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00809fd0, declared_size=104, range_size=104, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage11MustForwardEv
; demangled: CMessage::MustForward()
; decoder-mode: arm
00809fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00809fd4  00 40 a0 e1                                      mov r4, r0
00809fd8  eb db ff eb                                      bl #0x800f8c
00809fdc  00 60 a0 e1                                      mov r6, r0
00809fe0  3e d1 ff eb                                      bl #0x7fe4e0
00809fe4  00 00 50 e3                                      cmp r0, #0
00809fe8  01 00 00 1a                                      bne #0x809ff4
00809fec  00 00 a0 e3                                      mov r0, #0
00809ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00809ff4  04 00 a0 e1                                      mov r0, r4
00809ff8  25 ff ff eb                                      bl #0x809c94
00809ffc  00 00 50 e3                                      cmp r0, #0
0080a000  f9 ff ff 1a                                      bne #0x809fec
0080a004  00 30 96 e5                                      ldr r3, [r6]
0080a008  06 00 a0 e1                                      mov r0, r6
0080a00c  84 50 93 e5                                      ldr r5, [r3, #0x84]
0080a010  0f e0 a0 e1                                      mov lr, pc
0080a014  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0080a018  00 10 a0 e1                                      mov r1, r0
0080a01c  06 00 a0 e1                                      mov r0, r6
0080a020  35 ff 2f e1                                      blx r5
0080a024  08 30 94 e5                                      ldr r3, [r4, #8]
0080a028  00 30 d3 e1                                      bics r3, r3, r0
0080a02c  00 00 a0 03                                      moveq r0, #0
0080a030  01 00 a0 13                                      movne r0, #1
0080a034  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080a038, declared_size=124, range_size=124, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage13HasBeenSentToEi
; demangled: CMessage::HasBeenSentTo(int)
; decoder-mode: arm
0080a038  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080a03c  01 60 a0 e1                                      mov r6, r1
0080a040  00 50 a0 e1                                      mov r5, r0
0080a044  d0 db ff eb                                      bl #0x800f8c
0080a048  00 30 90 e5                                      ldr r3, [r0]
0080a04c  00 40 a0 e1                                      mov r4, r0
0080a050  84 70 93 e5                                      ldr r7, [r3, #0x84]
0080a054  0f e0 a0 e1                                      mov lr, pc
0080a058  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0080a05c  00 10 a0 e1                                      mov r1, r0
0080a060  04 00 a0 e1                                      mov r0, r4
0080a064  37 ff 2f e1                                      blx r7
0080a068  00 70 a0 e1                                      mov r7, r0
0080a06c  04 00 a0 e1                                      mov r0, r4
0080a070  08 80 95 e5                                      ldr r8, [r5, #8]
0080a074  19 d1 ff eb                                      bl #0x7fe4e0
0080a078  00 00 50 e3                                      cmp r0, #0
0080a07c  00 70 a0 13                                      movne r7, #0
0080a080  48 20 95 e5                                      ldr r2, [r5, #0x48]
0080a084  08 70 87 e1                                      orr r7, r7, r8
0080a088  00 30 94 e5                                      ldr r3, [r4]
0080a08c  07 70 e0 e1                                      mvn r7, r7
0080a090  04 00 a0 e1                                      mov r0, r4
0080a094  06 10 a0 e1                                      mov r1, r6
0080a098  02 40 87 e1                                      orr r4, r7, r2
0080a09c  0f e0 a0 e1                                      mov lr, pc
0080a0a0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0080a0a4  00 00 14 e1                                      tst r4, r0
0080a0a8  00 00 a0 03                                      moveq r0, #0
0080a0ac  01 00 a0 13                                      movne r0, #1
0080a0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080a0b4, declared_size=116, range_size=116, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage14IsAcknowledgedEv
; demangled: CMessage::IsAcknowledged()
; decoder-mode: arm
0080a0b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080a0b8  00 40 a0 e1                                      mov r4, r0
0080a0bc  b2 db ff eb                                      bl #0x800f8c
0080a0c0  00 60 a0 e1                                      mov r6, r0
0080a0c4  05 d1 ff eb                                      bl #0x7fe4e0
0080a0c8  00 00 50 e3                                      cmp r0, #0
0080a0cc  0b 00 00 1a                                      bne #0x80a100
0080a0d0  00 30 96 e5                                      ldr r3, [r6]
0080a0d4  06 00 a0 e1                                      mov r0, r6
0080a0d8  84 50 93 e5                                      ldr r5, [r3, #0x84]
0080a0dc  0f e0 a0 e1                                      mov lr, pc
0080a0e0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0080a0e4  00 10 a0 e1                                      mov r1, r0
0080a0e8  06 00 a0 e1                                      mov r0, r6
0080a0ec  35 ff 2f e1                                      blx r5
0080a0f0  00 10 a0 e1                                      mov r1, r0
0080a0f4  04 00 a0 e1                                      mov r0, r4
0080a0f8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080a0fc  50 ff ff ea                                      b #0x809e44
0080a100  06 00 a0 e1                                      mov r0, r6
0080a104  f4 d7 ff eb                                      bl #0x8000dc
0080a108  08 20 94 e5                                      ldr r2, [r4, #8]
0080a10c  40 30 94 e5                                      ldr r3, [r4, #0x40]
0080a110  02 20 00 e0                                      and r2, r0, r2
0080a114  03 30 02 e0                                      and r3, r2, r3
0080a118  02 00 53 e1                                      cmp r3, r2
0080a11c  00 00 a0 13                                      movne r0, #0
0080a120  01 00 a0 03                                      moveq r0, #1
0080a124  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080a128, declared_size=56, range_size=56, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage9IsExpiredEv
; demangled: CMessage::IsExpired()
; decoder-mode: arm
0080a128  10 40 2d e9                                      push {r4, lr}
0080a12c  34 40 90 e5                                      ldr r4, [r0, #0x34]
0080a130  00 00 54 e3                                      cmp r4, #0
0080a134  01 00 00 1a                                      bne #0x80a140
0080a138  04 00 a0 e1                                      mov r0, r4
0080a13c  10 80 bd e8                                      pop {r4, pc}
0080a140  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0080a144  03 40 84 e0                                      add r4, r4, r3
0080a148  91 cd ff eb                                      bl #0x7fd794
0080a14c  28 00 90 e5                                      ldr r0, [r0, #0x28]
0080a150  00 00 54 e1                                      cmp r4, r0
0080a154  00 00 a0 23                                      movhs r0, #0
0080a158  01 00 a0 33                                      movlo r0, #1
0080a15c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080a160, declared_size=52, range_size=52, mode=arm
; class-group: CMessage
; alias: _ZN8CMessageD1Ev
; demangled: CMessage::~CMessage()
; decoder-mode: arm
0080a160  24 30 9f e5                                      ldr r3, [pc, #0x24]
0080a164  24 20 9f e5                                      ldr r2, [pc, #0x24]
0080a168  10 40 2d e9                                      push {r4, lr}
0080a16c  03 30 8f e0                                      add r3, pc, r3
0080a170  02 20 93 e7                                      ldr r2, [r3, r2]
0080a174  00 40 a0 e1                                      mov r4, r0
0080a178  08 20 82 e2                                      add r2, r2, #8
0080a17c  14 20 80 e4                                      str r2, [r0], #0x14
0080a180  09 26 ec eb                                      bl #0x3139ac
0080a184  04 00 a0 e1                                      mov r0, r4
0080a188  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080a18c  24 a9 18 00 40 46 00 00                          .byte 0x24, 0xa9, 0x18, 0x00, 0x40, 0x46, 0x00, 0x00

; FUNCTION 0x0080a194, declared_size=52, range_size=52, mode=arm
; class-group: CMessage
; alias: _ZN8CMessageD2Ev
; demangled: CMessage::~CMessage()
; decoder-mode: arm
0080a194  24 30 9f e5                                      ldr r3, [pc, #0x24]
0080a198  24 20 9f e5                                      ldr r2, [pc, #0x24]
0080a19c  10 40 2d e9                                      push {r4, lr}
0080a1a0  03 30 8f e0                                      add r3, pc, r3
0080a1a4  02 20 93 e7                                      ldr r2, [r3, r2]
0080a1a8  00 40 a0 e1                                      mov r4, r0
0080a1ac  08 20 82 e2                                      add r2, r2, #8
0080a1b0  14 20 80 e4                                      str r2, [r0], #0x14
0080a1b4  fc 25 ec eb                                      bl #0x3139ac
0080a1b8  04 00 a0 e1                                      mov r0, r4
0080a1bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080a1c0  f0 a8 18 00 40 46 00 00                          .byte 0xf0, 0xa8, 0x18, 0x00, 0x40, 0x46, 0x00, 0x00

; FUNCTION 0x0080a1c8, declared_size=28, range_size=28, mode=arm
; class-group: CMessage
; alias: _ZN8CMessageD0Ev
; demangled: CMessage::~CMessage()
; decoder-mode: arm
0080a1c8  10 40 2d e9                                      push {r4, lr}
0080a1cc  00 40 a0 e1                                      mov r4, r0
0080a1d0  e2 ff ff eb                                      bl #0x80a160
0080a1d4  04 00 a0 e1                                      mov r0, r4
0080a1d8  98 18 ec eb                                      bl #0x310440
0080a1dc  04 00 a0 e1                                      mov r0, r4
0080a1e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080a1e4, declared_size=96, range_size=96, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage10FindTypeIdEPKc
; demangled: CMessage::FindTypeId(char const*)
; decoder-mode: arm
0080a1e4  50 30 9f e5                                      ldr r3, [pc, #0x50]
0080a1e8  50 20 9f e5                                      ldr r2, [pc, #0x50]
0080a1ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0080a1f0  03 30 8f e0                                      add r3, pc, r3
0080a1f4  00 60 a0 e1                                      mov r6, r0
0080a1f8  02 50 93 e7                                      ldr r5, [r3, r2]
0080a1fc  00 40 a0 e3                                      mov r4, #0
0080a200  02 00 00 ea                                      b #0x80a210
0080a204  01 40 84 e2                                      add r4, r4, #1
0080a208  01 0c 54 e3                                      cmp r4, #0x100
0080a20c  07 00 00 0a                                      beq #0x80a230
0080a210  04 03 85 e0                                      add r0, r5, r4, lsl #6
0080a214  06 10 a0 e1                                      mov r1, r6
0080a218  40 20 a0 e3                                      mov r2, #0x40
0080a21c  96 12 ec eb                                      bl #0x30ec7c
0080a220  00 00 50 e3                                      cmp r0, #0
0080a224  f6 ff ff 1a                                      bne #0x80a204
0080a228  04 00 a0 e1                                      mov r0, r4
0080a22c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080a230  00 40 e0 e3                                      mvn r4, #0
0080a234  04 00 a0 e1                                      mov r0, r4
0080a238  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080a23c  a0 a8 18 00 54 15 00 00                          .byte 0xa0, 0xa8, 0x18, 0x00, 0x54, 0x15, 0x00, 0x00

; FUNCTION 0x0080a244, declared_size=24, range_size=24, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage13CreateMessageEPKcb
; demangled: CMessage::CreateMessage(char const*, bool)
; decoder-mode: arm
0080a244  10 40 2d e9                                      push {r4, lr}
0080a248  01 40 a0 e1                                      mov r4, r1
0080a24c  e4 ff ff eb                                      bl #0x80a1e4
0080a250  04 10 a0 e1                                      mov r1, r4
0080a254  10 40 bd e8                                      pop {r4, lr}
0080a258  27 ff ff ea                                      b #0x809efc

; FUNCTION 0x0080a25c, declared_size=140, range_size=140, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage15RegisterTypeStrEPKc
; demangled: CMessage::RegisterTypeStr(char const*)
; decoder-mode: arm
0080a25c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0080a260  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0080a264  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080a268  03 30 8f e0                                      add r3, pc, r3
0080a26c  00 80 a0 e1                                      mov r8, r0
0080a270  02 60 93 e7                                      ldr r6, [r3, r2]
0080a274  00 40 a0 e3                                      mov r4, #0
0080a278  05 00 00 ea                                      b #0x80a294
0080a27c  d6 30 95 e1                                      ldrsb r3, [r5, r6]
0080a280  00 00 53 e3                                      cmp r3, #0
0080a284  0c 00 00 0a                                      beq #0x80a2bc
0080a288  01 40 84 e2                                      add r4, r4, #1
0080a28c  01 0c 54 e3                                      cmp r4, #0x100
0080a290  0f 00 00 0a                                      beq #0x80a2d4
0080a294  04 53 a0 e1                                      lsl r5, r4, #6
0080a298  06 70 85 e0                                      add r7, r5, r6
0080a29c  07 00 a0 e1                                      mov r0, r7
0080a2a0  08 10 a0 e1                                      mov r1, r8
0080a2a4  40 20 a0 e3                                      mov r2, #0x40
0080a2a8  73 12 ec eb                                      bl #0x30ec7c
0080a2ac  00 00 50 e3                                      cmp r0, #0
0080a2b0  f1 ff ff 1a                                      bne #0x80a27c
0080a2b4  04 00 a0 e1                                      mov r0, r4
0080a2b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080a2bc  07 00 a0 e1                                      mov r0, r7
0080a2c0  08 10 a0 e1                                      mov r1, r8
0080a2c4  40 20 a0 e3                                      mov r2, #0x40
0080a2c8  d5 0e ec eb                                      bl #0x30de24
0080a2cc  04 00 a0 e1                                      mov r0, r4
0080a2d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080a2d4  00 40 e0 e3                                      mvn r4, #0
0080a2d8  04 00 a0 e1                                      mov r0, r4
0080a2dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0080a2e0  28 a8 18 00 54 15 00 00                          .byte 0x28, 0xa8, 0x18, 0x00, 0x54, 0x15, 0x00, 0x00

; FUNCTION 0x0080a2e8, declared_size=84, range_size=84, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage19RegisterMessageTypeEPKcPFPS_bE
; demangled: CMessage::RegisterMessageType(char const*, CMessage* (*)(bool))
; decoder-mode: arm
0080a2e8  70 40 2d e9                                      push {r4, r5, r6, lr}
0080a2ec  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
0080a2f0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0080a2f4  01 50 a0 e1                                      mov r5, r1
0080a2f8  04 40 8f e0                                      add r4, pc, r4
0080a2fc  03 30 94 e7                                      ldr r3, [r4, r3]
0080a300  00 30 d3 e5                                      ldrb r3, [r3]
0080a304  00 00 53 e3                                      cmp r3, #0
0080a308  01 00 00 0a                                      beq #0x80a314
0080a30c  00 00 e0 e3                                      mvn r0, #0
0080a310  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080a314  d0 ff ff eb                                      bl #0x80a25c
0080a318  01 00 70 e3                                      cmn r0, #1
0080a31c  02 00 00 0a                                      beq #0x80a32c
0080a320  10 30 9f e5                                      ldr r3, [pc, #0x10]
0080a324  03 30 94 e7                                      ldr r3, [r4, r3]
0080a328  00 51 83 e7                                      str r5, [r3, r0, lsl #2]
0080a32c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080a330  98 a7 18 00 1c 26 00 00 18 1e 00 00              .byte 0x98, 0xa7, 0x18, 0x00, 0x1c, 0x26, 0x00, 0x00, 0x18, 0x1e, 0x00, 0x00

; FUNCTION 0x0080a33c, declared_size=512, range_size=512, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage20SetDefaultPropertiesEv
; demangled: CMessage::SetDefaultProperties()
; decoder-mode: arm
0080a33c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080a340  00 40 a0 e1                                      mov r4, r0
0080a344  24 30 90 e5                                      ldr r3, [r0, #0x24]
0080a348  28 00 90 e5                                      ldr r0, [r0, #0x28]
0080a34c  0c d0 4d e2                                      sub sp, sp, #0xc
0080a350  03 20 60 e0                                      rsb r2, r0, r3
0080a354  16 00 52 e3                                      cmp r2, #0x16
0080a358  1a 00 00 9a                                      bls #0x80a3c8
0080a35c  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
0080a360  17 20 a0 e3                                      mov r2, #0x17
0080a364  01 10 8f e0                                      add r1, pc, r1
0080a368  3e 11 ec eb                                      bl #0x30e868
0080a36c  28 20 94 e5                                      ldr r2, [r4, #0x28]
0080a370  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a374  17 10 82 e2                                      add r1, r2, #0x17
0080a378  03 00 51 e1                                      cmp r1, r3
0080a37c  05 00 00 0a                                      beq #0x80a398
0080a380  00 00 d3 e5                                      ldrb r0, [r3]
0080a384  01 30 63 e0                                      rsb r3, r3, r1
0080a388  17 00 c2 e5                                      strb r0, [r2, #0x17]
0080a38c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0080a390  03 30 81 e0                                      add r3, r1, r3
0080a394  24 30 84 e5                                      str r3, [r4, #0x24]
0080a398  00 30 a0 e3                                      mov r3, #0
0080a39c  01 20 a0 e3                                      mov r2, #1
0080a3a0  64 10 a0 e3                                      mov r1, #0x64
0080a3a4  38 10 84 e5                                      str r1, [r4, #0x38]
0080a3a8  33 20 c4 e5                                      strb r2, [r4, #0x33]
0080a3ac  34 30 84 e5                                      str r3, [r4, #0x34]
0080a3b0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0080a3b4  30 20 c4 e5                                      strb r2, [r4, #0x30]
0080a3b8  31 30 c4 e5                                      strb r3, [r4, #0x31]
0080a3bc  32 30 c4 e5                                      strb r3, [r4, #0x32]
0080a3c0  0c d0 8d e2                                      add sp, sp, #0xc
0080a3c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080a3c8  00 00 52 e3                                      cmp r2, #0
0080a3cc  21 00 00 1a                                      bne #0x80a458
0080a3d0  58 51 9f e5                                      ldr r5, [pc, #0x158]
0080a3d4  05 50 8f e0                                      add r5, pc, r5
0080a3d8  54 21 9f e5                                      ldr r2, [pc, #0x154]
0080a3dc  14 70 84 e2                                      add r7, r4, #0x14
0080a3e0  07 00 50 e1                                      cmp r0, r7
0080a3e4  14 10 94 15                                      ldrne r1, [r4, #0x14]
0080a3e8  02 20 8f e0                                      add r2, pc, r2
0080a3ec  24 10 84 02                                      addeq r1, r4, #0x24
0080a3f0  17 20 82 e2                                      add r2, r2, #0x17
0080a3f4  02 60 65 e0                                      rsb r6, r5, r2
0080a3f8  01 10 63 e0                                      rsb r1, r3, r1
0080a3fc  01 00 56 e1                                      cmp r6, r1
0080a400  20 00 00 2a                                      bhs #0x80a488
0080a404  01 00 85 e2                                      add r0, r5, #1
0080a408  02 00 60 e0                                      rsb r0, r0, r2
0080a40c  00 00 50 e3                                      cmp r0, #0
0080a410  07 00 00 da                                      ble #0x80a434
0080a414  03 20 a0 e1                                      mov r2, r3
0080a418  05 00 80 e0                                      add r0, r0, r5
0080a41c  05 30 a0 e1                                      mov r3, r5
0080a420  01 10 f3 e5                                      ldrb r1, [r3, #1]!
0080a424  00 00 53 e1                                      cmp r3, r0
0080a428  01 10 e2 e5                                      strb r1, [r2, #1]!
0080a42c  fb ff ff 1a                                      bne #0x80a420
0080a430  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a434  00 20 a0 e3                                      mov r2, #0
0080a438  06 20 c3 e7                                      strb r2, [r3, r6]
0080a43c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a440  00 20 d5 e5                                      ldrb r2, [r5]
0080a444  00 20 c3 e5                                      strb r2, [r3]
0080a448  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a44c  06 60 83 e0                                      add r6, r3, r6
0080a450  24 60 84 e5                                      str r6, [r4, #0x24]
0080a454  cf ff ff ea                                      b #0x80a398
0080a458  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0080a45c  05 50 8f e0                                      add r5, pc, r5
0080a460  05 10 a0 e1                                      mov r1, r5
0080a464  ff 10 ec eb                                      bl #0x30e868
0080a468  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a46c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0080a470  17 20 85 e2                                      add r2, r5, #0x17
0080a474  03 10 60 e0                                      rsb r1, r0, r3
0080a478  05 50 81 e0                                      add r5, r1, r5
0080a47c  02 00 55 e1                                      cmp r5, r2
0080a480  d4 ff ff 1a                                      bne #0x80a3d8
0080a484  c3 ff ff ea                                      b #0x80a398
0080a488  06 10 a0 e1                                      mov r1, r6
0080a48c  07 00 a0 e1                                      mov r0, r7
0080a490  c2 18 ec eb                                      bl #0x3107a0
0080a494  08 20 8d e2                                      add r2, sp, #8
0080a498  00 10 a0 e1                                      mov r1, r0
0080a49c  04 00 22 e5                                      str r0, [r2, #-4]!
0080a4a0  28 00 84 e2                                      add r0, r4, #0x28
0080a4a4  68 40 ec eb                                      bl #0x31a64c
0080a4a8  28 10 94 e5                                      ldr r1, [r4, #0x28]
0080a4ac  24 20 94 e5                                      ldr r2, [r4, #0x24]
0080a4b0  00 a0 a0 e1                                      mov sl, r0
0080a4b4  02 20 61 e0                                      rsb r2, r1, r2
0080a4b8  00 00 52 e3                                      cmp r2, #0
0080a4bc  00 80 a0 d1                                      movle r8, r0
0080a4c0  06 00 00 da                                      ble #0x80a4e0
0080a4c4  00 80 a0 e3                                      mov r8, #0
0080a4c8  08 30 d1 e7                                      ldrb r3, [r1, r8]
0080a4cc  08 30 ca e7                                      strb r3, [sl, r8]
0080a4d0  01 80 88 e2                                      add r8, r8, #1
0080a4d4  02 00 58 e1                                      cmp r8, r2
0080a4d8  fa ff ff 1a                                      bne #0x80a4c8
0080a4dc  08 80 8a e0                                      add r8, sl, r8
0080a4e0  00 00 56 e3                                      cmp r6, #0
0080a4e4  06 00 00 da                                      ble #0x80a504
0080a4e8  00 30 a0 e3                                      mov r3, #0
0080a4ec  03 20 d5 e7                                      ldrb r2, [r5, r3]
0080a4f0  03 20 c8 e7                                      strb r2, [r8, r3]
0080a4f4  01 30 83 e2                                      add r3, r3, #1
0080a4f8  06 00 53 e1                                      cmp r3, r6
0080a4fc  fa ff ff 1a                                      bne #0x80a4ec
0080a500  03 80 88 e0                                      add r8, r8, r3
0080a504  00 30 a0 e3                                      mov r3, #0
0080a508  00 30 c8 e5                                      strb r3, [r8]
0080a50c  07 00 a0 e1                                      mov r0, r7
0080a510  25 25 ec eb                                      bl #0x3139ac
0080a514  04 30 9d e5                                      ldr r3, [sp, #4]
0080a518  28 a0 84 e5                                      str sl, [r4, #0x28]
0080a51c  24 80 84 e5                                      str r8, [r4, #0x24]
0080a520  03 a0 8a e0                                      add sl, sl, r3
0080a524  14 a0 84 e5                                      str sl, [r4, #0x14]
0080a528  9a ff ff ea                                      b #0x80a398
; mapping-symbol data/literal pool
0080a52c  a4 1e 10 00 34 1e 10 00 20 1e 10 00 ac 1d 10 00  .byte 0xa4, 0x1e, 0x10, 0x00, 0x34, 0x1e, 0x10, 0x00, 0x20, 0x1e, 0x10, 0x00, 0xac, 0x1d, 0x10, 0x00

; FUNCTION 0x0080a540, declared_size=220, range_size=220, mode=arm
; class-group: CMessage
; alias: _ZN8CMessageC2EPKcb
; demangled: CMessage::CMessage(char const*, bool)
; decoder-mode: arm
0080a540  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080a544  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0080a548  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
0080a54c  00 30 a0 e1                                      mov r3, r0
0080a550  05 50 8f e0                                      add r5, pc, r5
0080a554  0c c0 95 e7                                      ldr ip, [r5, ip]
0080a558  00 40 a0 e1                                      mov r4, r0
0080a55c  01 60 a0 e1                                      mov r6, r1
0080a560  08 c0 8c e2                                      add ip, ip, #8
0080a564  14 c0 83 e4                                      str ip, [r3], #0x14
0080a568  03 00 a0 e1                                      mov r0, r3
0080a56c  24 30 84 e5                                      str r3, [r4, #0x24]
0080a570  28 30 84 e5                                      str r3, [r4, #0x28]
0080a574  02 80 a0 e1                                      mov r8, r2
0080a578  ef ff ff eb                                      bl #0x80a53c
0080a57c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a580  00 70 a0 e3                                      mov r7, #0
0080a584  06 00 a0 e1                                      mov r0, r6
0080a588  00 70 c3 e5                                      strb r7, [r3]
0080a58c  3c 70 c4 e5                                      strb r7, [r4, #0x3c]
0080a590  40 70 84 e5                                      str r7, [r4, #0x40]
0080a594  44 70 84 e5                                      str r7, [r4, #0x44]
0080a598  48 70 84 e5                                      str r7, [r4, #0x48]
0080a59c  4c 70 84 e5                                      str r7, [r4, #0x4c]
0080a5a0  0f ff ff eb                                      bl #0x80a1e4
0080a5a4  04 20 84 e2                                      add r2, r4, #4
0080a5a8  08 30 82 e2                                      add r3, r2, #8
0080a5ac  04 70 84 e5                                      str r7, [r4, #4]
0080a5b0  04 70 82 e5                                      str r7, [r2, #4]
0080a5b4  04 70 83 e4                                      str r7, [r3], #4
0080a5b8  00 70 83 e5                                      str r7, [r3]
0080a5bc  10 00 c4 e5                                      strb r0, [r4, #0x10]
0080a5c0  71 da ff eb                                      bl #0x800f8c
0080a5c4  00 30 90 e5                                      ldr r3, [r0]
0080a5c8  0f e0 a0 e1                                      mov lr, pc
0080a5cc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080a5d0  07 00 58 e1                                      cmp r8, r7
0080a5d4  0c 00 84 e5                                      str r0, [r4, #0xc]
0080a5d8  04 00 00 0a                                      beq #0x80a5f0
0080a5dc  34 30 9f e5                                      ldr r3, [pc, #0x34]
0080a5e0  03 30 95 e7                                      ldr r3, [r5, r3]
0080a5e4  00 80 93 e5                                      ldr r8, [r3]
0080a5e8  01 20 88 e2                                      add r2, r8, #1
0080a5ec  00 20 83 e5                                      str r2, [r3]
0080a5f0  04 80 84 e5                                      str r8, [r4, #4]
0080a5f4  66 cc ff eb                                      bl #0x7fd794
0080a5f8  28 30 90 e5                                      ldr r3, [r0, #0x28]
0080a5fc  04 00 a0 e1                                      mov r0, r4
0080a600  4c 30 84 e5                                      str r3, [r4, #0x4c]
0080a604  4c ff ff eb                                      bl #0x80a33c
0080a608  04 00 a0 e1                                      mov r0, r4
0080a60c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0080a610  40 a5 18 00 40 46 00 00 d4 22 00 00              .byte 0x40, 0xa5, 0x18, 0x00, 0x40, 0x46, 0x00, 0x00, 0xd4, 0x22, 0x00, 0x00

; FUNCTION 0x0080a61c, declared_size=220, range_size=220, mode=arm
; class-group: CMessage
; alias: _ZN8CMessageC1EPKcb
; demangled: CMessage::CMessage(char const*, bool)
; decoder-mode: arm
0080a61c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080a620  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0080a624  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
0080a628  00 30 a0 e1                                      mov r3, r0
0080a62c  05 50 8f e0                                      add r5, pc, r5
0080a630  0c c0 95 e7                                      ldr ip, [r5, ip]
0080a634  00 40 a0 e1                                      mov r4, r0
0080a638  01 60 a0 e1                                      mov r6, r1
0080a63c  08 c0 8c e2                                      add ip, ip, #8
0080a640  14 c0 83 e4                                      str ip, [r3], #0x14
0080a644  03 00 a0 e1                                      mov r0, r3
0080a648  24 30 84 e5                                      str r3, [r4, #0x24]
0080a64c  28 30 84 e5                                      str r3, [r4, #0x28]
0080a650  02 80 a0 e1                                      mov r8, r2
0080a654  b8 ff ff eb                                      bl #0x80a53c
0080a658  24 30 94 e5                                      ldr r3, [r4, #0x24]
0080a65c  00 70 a0 e3                                      mov r7, #0
0080a660  06 00 a0 e1                                      mov r0, r6
0080a664  00 70 c3 e5                                      strb r7, [r3]
0080a668  3c 70 c4 e5                                      strb r7, [r4, #0x3c]
0080a66c  40 70 84 e5                                      str r7, [r4, #0x40]
0080a670  44 70 84 e5                                      str r7, [r4, #0x44]
0080a674  48 70 84 e5                                      str r7, [r4, #0x48]
0080a678  4c 70 84 e5                                      str r7, [r4, #0x4c]
0080a67c  d8 fe ff eb                                      bl #0x80a1e4
0080a680  04 20 84 e2                                      add r2, r4, #4
0080a684  08 30 82 e2                                      add r3, r2, #8
0080a688  04 70 84 e5                                      str r7, [r4, #4]
0080a68c  04 70 82 e5                                      str r7, [r2, #4]
0080a690  04 70 83 e4                                      str r7, [r3], #4
0080a694  00 70 83 e5                                      str r7, [r3]
0080a698  10 00 c4 e5                                      strb r0, [r4, #0x10]
0080a69c  3a da ff eb                                      bl #0x800f8c
0080a6a0  00 30 90 e5                                      ldr r3, [r0]
0080a6a4  0f e0 a0 e1                                      mov lr, pc
0080a6a8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080a6ac  07 00 58 e1                                      cmp r8, r7
0080a6b0  0c 00 84 e5                                      str r0, [r4, #0xc]
0080a6b4  04 00 00 0a                                      beq #0x80a6cc
0080a6b8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0080a6bc  03 30 95 e7                                      ldr r3, [r5, r3]
0080a6c0  00 80 93 e5                                      ldr r8, [r3]
0080a6c4  01 20 88 e2                                      add r2, r8, #1
0080a6c8  00 20 83 e5                                      str r2, [r3]
0080a6cc  04 80 84 e5                                      str r8, [r4, #4]
0080a6d0  2f cc ff eb                                      bl #0x7fd794
0080a6d4  28 30 90 e5                                      ldr r3, [r0, #0x28]
0080a6d8  04 00 a0 e1                                      mov r0, r4
0080a6dc  4c 30 84 e5                                      str r3, [r4, #0x4c]
0080a6e0  15 ff ff eb                                      bl #0x80a33c
0080a6e4  04 00 a0 e1                                      mov r0, r4
0080a6e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0080a6ec  64 a4 18 00 40 46 00 00 d4 22 00 00              .byte 0x64, 0xa4, 0x18, 0x00, 0x40, 0x46, 0x00, 0x00, 0xd4, 0x22, 0x00, 0x00

; FUNCTION 0x0080a6f8, declared_size=24, range_size=24, mode=arm
; class-group: CMessage
; alias: _ZN8CMessage22CompareMsgSendPriorityEPS_S0_
; demangled: CMessage::CompareMsgSendPriority(CMessage*, CMessage*)
; decoder-mode: arm
0080a6f8  38 30 90 e5                                      ldr r3, [r0, #0x38]
0080a6fc  38 00 91 e5                                      ldr r0, [r1, #0x38]
0080a700  00 00 53 e1                                      cmp r3, r0
0080a704  00 00 a0 23                                      movhs r0, #0
0080a708  01 00 a0 33                                      movlo r0, #1
0080a70c  1e ff 2f e1                                      bx lr
