; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00398768, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZNK7Trigger9IsZonableEv
; demangled: Trigger::IsZonable() const
; decoder-mode: arm
00398768  01 00 a0 e3                                      mov r0, #1
0039876c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00398770, declared_size=36, range_size=36, mode=arm
; class-group: Trigger
; alias: _ZNK7Trigger17IsRemotelyUpdatedEv
; demangled: Trigger::IsRemotelyUpdated() const
; decoder-mode: arm
00398770  bc 33 d0 e5                                      ldrb r3, [r0, #0x3bc]
00398774  00 00 53 e3                                      cmp r3, #0
00398778  00 00 a0 13                                      movne r0, #0
0039877c  1e ff 2f 11                                      bxne lr
00398780  10 31 90 e5                                      ldr r3, [r0, #0x110]
00398784  01 00 73 e3                                      cmn r3, #1
00398788  01 00 a0 13                                      movne r0, #1
0039878c  18 01 d0 05                                      ldrbeq r0, [r0, #0x118]
00398790  1e ff 2f e1                                      bx lr

; FUNCTION 0x00398794, declared_size=24, range_size=24, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger8ActivateEv
; demangled: Trigger::Activate()
; decoder-mode: arm
00398794  b4 33 90 e5                                      ldr r3, [r0, #0x3b4]
00398798  ac 23 90 e5                                      ldr r2, [r0, #0x3ac]
0039879c  01 30 83 e2                                      add r3, r3, #1
003987a0  b8 23 80 e5                                      str r2, [r0, #0x3b8]
003987a4  b4 33 80 e5                                      str r3, [r0, #0x3b4]
003987a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003987ac, declared_size=48, range_size=48, mode=arm
; class-group: Trigger
; alias: _ZNK7Trigger11CanActivateEv
; demangled: Trigger::CanActivate() const
; decoder-mode: arm
003987ac  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
003987b0  00 00 53 e3                                      cmp r3, #0
003987b4  02 00 00 ba                                      blt #0x3987c4
003987b8  b4 23 90 e5                                      ldr r2, [r0, #0x3b4]
003987bc  02 00 53 e1                                      cmp r3, r2
003987c0  03 00 00 da                                      ble #0x3987d4
003987c4  b8 33 90 e5                                      ldr r3, [r0, #0x3b8]
003987c8  00 00 53 e3                                      cmp r3, #0
003987cc  8a 00 d0 d5                                      ldrble r0, [r0, #0x8a]
003987d0  1e ff 2f d1                                      bxle lr
003987d4  00 00 a0 e3                                      mov r0, #0
003987d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003987dc, declared_size=28, range_size=28, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger26InterpretIncomingNetStructEb
; demangled: Trigger::InterpretIncomingNetStruct(bool)
; decoder-mode: arm
003987dc  c0 16 90 e5                                      ldr r1, [r0, #0x6c0]
003987e0  e8 26 90 e5                                      ldr r2, [r0, #0x6e8]
003987e4  10 37 90 e5                                      ldr r3, [r0, #0x710]
003987e8  b8 13 80 e5                                      str r1, [r0, #0x3b8]
003987ec  b4 23 80 e5                                      str r2, [r0, #0x3b4]
003987f0  c0 33 80 e5                                      str r3, [r0, #0x3c0]
003987f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003987f8, declared_size=4, range_size=4, mode=arm
; class-group: Trigger
; alias: _ZNK7Trigger22GetNumPlayerActivatingEv
; demangled: Trigger::GetNumPlayerActivating() const
; decoder-mode: arm
003987f8  b5 cb ff ea                                      b #0x38b6d4

; FUNCTION 0x003987fc, declared_size=60, range_size=60, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger11UpdateTimerEv
; demangled: Trigger::UpdateTimer()
; decoder-mode: arm
003987fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00398800  b8 53 90 e5                                      ldr r5, [r0, #0x3b8]
00398804  24 30 9f e5                                      ldr r3, [pc, #0x24]
00398808  00 40 a0 e1                                      mov r4, r0
0039880c  00 00 55 e3                                      cmp r5, #0
00398810  03 30 8f e0                                      add r3, pc, r3
00398814  04 00 00 da                                      ble #0x39882c
00398818  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039881c  02 00 93 e7                                      ldr r0, [r3, r2]
00398820  91 1b fe eb                                      bl #0x31f66c
00398824  05 00 60 e0                                      rsb r0, r0, r5
00398828  b8 03 84 e5                                      str r0, [r4, #0x3b8]
0039882c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00398830  80 c2 5f 00 f4 37 00 00                          .byte 0x80, 0xc2, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00398838, declared_size=60, range_size=60, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger6UpdateEv
; demangled: Trigger::Update()
; decoder-mode: arm
00398838  10 40 2d e9                                      push {r4, lr}
0039883c  00 40 a0 e1                                      mov r4, r0
00398840  18 fe ff eb                                      bl #0x3980a8
00398844  04 00 a0 e1                                      mov r0, r4
00398848  eb ff ff eb                                      bl #0x3987fc
0039884c  04 00 a0 e1                                      mov r0, r4
00398850  18 cc ff eb                                      bl #0x38b8b8
00398854  37 3e a0 e3                                      mov r3, #0x370
00398858  f3 30 94 e1                                      ldrsh r3, [r4, r3]
0039885c  00 00 53 e3                                      cmp r3, #0
00398860  02 00 00 ba                                      blt #0x398870
00398864  04 00 a0 e1                                      mov r0, r4
00398868  10 40 bd e8                                      pop {r4, lr}
0039886c  6e c9 ff ea                                      b #0x38ae2c
00398870  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00398874, declared_size=4, range_size=4, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger8InitPostEv
; demangled: Trigger::InitPost()
; decoder-mode: arm
00398874  a8 fb ff ea                                      b #0x39771c

; FUNCTION 0x00398904, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZThn36_N7Trigger11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to Trigger::Deserialize(IStreamBase*)
; decoder-mode: arm
00398904  24 00 40 e2                                      sub r0, r0, #0x24
00398908  ff ff ff ea                                      b #0x39890c

; FUNCTION 0x0039890c, declared_size=100, range_size=100, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger11DeserializeEP11IStreamBase
; demangled: Trigger::Deserialize(IStreamBase*)
; decoder-mode: arm
0039890c  70 40 2d e9                                      push {r4, r5, r6, lr}
00398910  50 40 9f e5                                      ldr r4, [pc, #0x50]
00398914  00 50 a0 e1                                      mov r5, r0
00398918  01 60 a0 e1                                      mov r6, r1
0039891c  fe cb ff eb                                      bl #0x38b91c
00398920  44 30 9f e5                                      ldr r3, [pc, #0x44]
00398924  04 40 8f e0                                      add r4, pc, r4
00398928  03 00 94 e7                                      ldr r0, [r4, r3]
0039892c  18 1b fe eb                                      bl #0x31f594
00398930  f3 30 d0 e5                                      ldrb r3, [r0, #0xf3]
00398934  00 00 53 e3                                      cmp r3, #0
00398938  03 00 00 0a                                      beq #0x39894c
0039893c  b0 33 d5 e5                                      ldrb r3, [r5, #0x3b0]
00398940  00 00 53 e3                                      cmp r3, #0
00398944  00 00 00 0a                                      beq #0x39894c
00398948  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039894c  ee 1f 85 e2                                      add r1, r5, #0x3b8
00398950  06 00 a0 e1                                      mov r0, r6
00398954  7f cb ff eb                                      bl #0x38b758
00398958  06 00 a0 e1                                      mov r0, r6
0039895c  ed 1f 85 e2                                      add r1, r5, #0x3b4
00398960  70 40 bd e8                                      pop {r4, r5, r6, lr}
00398964  7b cb ff ea                                      b #0x38b758
; mapping-symbol data/literal pool
00398968  6c c1 5f 00 f4 37 00 00                          .byte 0x6c, 0xc1, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00398970, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZThn36_N7Trigger9SerializeEP11IStreamBase
; demangled: non-virtual thunk to Trigger::Serialize(IStreamBase*)
; decoder-mode: arm
00398970  24 00 40 e2                                      sub r0, r0, #0x24
00398974  ff ff ff ea                                      b #0x398978

; FUNCTION 0x00398978, declared_size=44, range_size=44, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger9SerializeEP11IStreamBase
; demangled: Trigger::Serialize(IStreamBase*)
; decoder-mode: arm
00398978  70 40 2d e9                                      push {r4, r5, r6, lr}
0039897c  00 40 a0 e1                                      mov r4, r0
00398980  01 50 a0 e1                                      mov r5, r1
00398984  16 cc ff eb                                      bl #0x38b9e4
00398988  05 00 a0 e1                                      mov r0, r5
0039898c  ee 1f 84 e2                                      add r1, r4, #0x3b8
00398990  9c cb ff eb                                      bl #0x38b808
00398994  05 00 a0 e1                                      mov r0, r5
00398998  ed 1f 84 e2                                      add r1, r4, #0x3b4
0039899c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003989a0  98 cb ff ea                                      b #0x38b808

; FUNCTION 0x00398a80, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZThn4_N7Trigger17DeclarePropertiesEv
; demangled: non-virtual thunk to Trigger::DeclareProperties()
; decoder-mode: arm
00398a80  04 00 40 e2                                      sub r0, r0, #4
00398a84  ff ff ff ea                                      b #0x398a88

; FUNCTION 0x00398a88, declared_size=212, range_size=212, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger17DeclarePropertiesEv
; demangled: Trigger::DeclareProperties()
; decoder-mode: arm
00398a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00398a8c  08 d0 4d e2                                      sub sp, sp, #8
00398a90  00 50 a0 e1                                      mov r5, r0
00398a94  d7 fc ff eb                                      bl #0x397df8
00398a98  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00398a9c  04 40 85 e2                                      add r4, r5, #4
00398aa0  04 00 a0 e1                                      mov r0, r4
00398aa4  ea 2f 85 e2                                      add r2, r5, #0x3a8
00398aa8  01 10 8f e0                                      add r1, pc, r1
00398aac  01 30 a0 e3                                      mov r3, #1
00398ab0  70 ff ff eb                                      bl #0x398878
00398ab4  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00398ab8  eb 2f 85 e2                                      add r2, r5, #0x3ac
00398abc  00 30 a0 e3                                      mov r3, #0
00398ac0  04 00 a0 e1                                      mov r0, r4
00398ac4  01 10 8f e0                                      add r1, pc, r1
00398ac8  6a ff ff eb                                      bl #0x398878
00398acc  00 10 a0 e3                                      mov r1, #0
00398ad0  24 00 a0 e3                                      mov r0, #0x24
00398ad4  a5 de fd eb                                      bl #0x310570
00398ad8  6c 70 9f e5                                      ldr r7, [pc, #0x6c]
00398adc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00398ae0  6c 80 9f e5                                      ldr r8, [pc, #0x6c]
00398ae4  07 70 8f e0                                      add r7, pc, r7
00398ae8  03 30 97 e7                                      ldr r3, [r7, r3]
00398aec  08 80 8f e0                                      add r8, pc, r8
00398af0  00 60 a0 e1                                      mov r6, r0
00398af4  08 30 83 e2                                      add r3, r3, #8
00398af8  08 10 a0 e1                                      mov r1, r8
00398afc  04 20 8d e2                                      add r2, sp, #4
00398b00  08 30 80 e4                                      str r3, [r0], #8
00398b04  78 ed fd eb                                      bl #0x3140ec
00398b08  48 30 9f e5                                      ldr r3, [pc, #0x48]
00398b0c  3b 5e 85 e2                                      add r5, r5, #0x3b0
00398b10  05 50 64 e0                                      rsb r5, r4, r5
00398b14  03 30 97 e7                                      ldr r3, [r7, r3]
00398b18  04 50 86 e5                                      str r5, [r6, #4]
00398b1c  04 00 a0 e1                                      mov r0, r4
00398b20  08 30 83 e2                                      add r3, r3, #8
00398b24  00 30 86 e5                                      str r3, [r6]
00398b28  00 30 a0 e3                                      mov r3, #0
00398b2c  20 30 c6 e5                                      strb r3, [r6, #0x20]
00398b30  08 10 a0 e1                                      mov r1, r8
00398b34  06 20 a0 e1                                      mov r2, r6
00398b38  69 ec 05 eb                                      bl #0x513ce4
00398b3c  08 d0 8d e2                                      add sp, sp, #8
00398b40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00398b44  d0 9f 52 00 c4 9f 52 00 ac bf 5f 00 30 23 00 00  .byte 0xd0, 0x9f, 0x52, 0x00, 0xc4, 0x9f, 0x52, 0x00, 0xac, 0xbf, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00
00398b54  ac 9f 52 00 4c 3e 00 00                          .byte 0xac, 0x9f, 0x52, 0x00, 0x4c, 0x3e, 0x00, 0x00

; FUNCTION 0x00398bd8, declared_size=460, range_size=460, mode=arm
; class-group: Trigger
; alias: _ZN7Trigger25PopulateOutgoingNetStructEb
; demangled: Trigger::PopulateOutgoingNetStruct(bool)
; decoder-mode: arm
00398bd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00398bdc  b0 41 9f e5                                      ldr r4, [pc, #0x1b0]
00398be0  b0 71 9f e5                                      ldr r7, [pc, #0x1b0]
00398be4  7c d0 4d e2                                      sub sp, sp, #0x7c
00398be8  04 40 8f e0                                      add r4, pc, r4
00398bec  b8 33 90 e5                                      ldr r3, [r0, #0x3b8]
00398bf0  70 20 9d e5                                      ldr r2, [sp, #0x70]
00398bf4  00 50 a0 e1                                      mov r5, r0
00398bf8  07 00 94 e7                                      ldr r0, [r4, r7]
00398bfc  00 10 e0 e3                                      mvn r1, #0
00398c00  02 00 53 e1                                      cmp r3, r2
00398c04  08 00 80 e2                                      add r0, r0, #8
00398c08  00 20 a0 e3                                      mov r2, #0
00398c0c  20 c0 a0 e3                                      mov ip, #0x20
00398c10  00 80 a0 e3                                      mov r8, #0
00398c14  00 90 a0 e3                                      mov sb, #0
00398c18  54 c0 8d e5                                      str ip, [sp, #0x54]
00398c1c  f8 85 cd e1                                      strd r8, sb, [sp, #0x58]
00398c20  64 10 8d e5                                      str r1, [sp, #0x64]
00398c24  6c 20 cd e5                                      strb r2, [sp, #0x6c]
00398c28  50 00 8d e5                                      str r0, [sp, #0x50]
00398c2c  60 10 8d e5                                      str r1, [sp, #0x60]
00398c30  68 20 8d e5                                      str r2, [sp, #0x68]
00398c34  50 a0 8d 02                                      addeq sl, sp, #0x50
00398c38  03 00 00 0a                                      beq #0x398c4c
00398c3c  50 a0 8d e2                                      add sl, sp, #0x50
00398c40  0a 00 a0 e1                                      mov r0, sl
00398c44  70 30 8d e5                                      str r3, [sp, #0x70]
00398c48  cd f0 11 eb                                      bl #0x814f84
00398c4c  48 61 9f e5                                      ldr r6, [pc, #0x148]
00398c50  48 81 9f e5                                      ldr r8, [pc, #0x148]
00398c54  4f 0e 85 e2                                      add r0, r5, #0x4f0
00398c58  06 30 94 e7                                      ldr r3, [r4, r6]
00398c5c  20 10 8a e2                                      add r1, sl, #0x20
00398c60  08 00 80 e2                                      add r0, r0, #8
00398c64  08 30 83 e2                                      add r3, r3, #8
00398c68  50 30 8d e5                                      str r3, [sp, #0x50]
00398c6c  f8 34 95 e5                                      ldr r3, [r5, #0x4f8]
00398c70  0f e0 a0 e1                                      mov lr, pc
00398c74  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00398c78  08 c0 94 e7                                      ldr ip, [r4, r8]
00398c7c  b4 33 95 e5                                      ldr r3, [r5, #0x3b4]
00398c80  48 20 9d e5                                      ldr r2, [sp, #0x48]
00398c84  07 00 94 e7                                      ldr r0, [r4, r7]
00398c88  08 c0 8c e2                                      add ip, ip, #8
00398c8c  02 00 53 e1                                      cmp r3, r2
00398c90  00 10 e0 e3                                      mvn r1, #0
00398c94  00 20 a0 e3                                      mov r2, #0
00398c98  00 a0 a0 e3                                      mov sl, #0
00398c9c  08 00 80 e2                                      add r0, r0, #8
00398ca0  50 c0 8d e5                                      str ip, [sp, #0x50]
00398ca4  00 b0 a0 e3                                      mov fp, #0
00398ca8  20 c0 a0 e3                                      mov ip, #0x20
00398cac  f0 a3 cd e1                                      strd sl, fp, [sp, #0x30]
00398cb0  2c c0 8d e5                                      str ip, [sp, #0x2c]
00398cb4  3c 10 8d e5                                      str r1, [sp, #0x3c]
00398cb8  44 20 cd e5                                      strb r2, [sp, #0x44]
00398cbc  28 00 8d e5                                      str r0, [sp, #0x28]
00398cc0  38 10 8d e5                                      str r1, [sp, #0x38]
00398cc4  40 20 8d e5                                      str r2, [sp, #0x40]
00398cc8  28 a0 8d 02                                      addeq sl, sp, #0x28
00398ccc  03 00 00 0a                                      beq #0x398ce0
00398cd0  28 a0 8d e2                                      add sl, sp, #0x28
00398cd4  0a 00 a0 e1                                      mov r0, sl
00398cd8  48 30 8d e5                                      str r3, [sp, #0x48]
00398cdc  a8 f0 11 eb                                      bl #0x814f84
00398ce0  06 20 94 e7                                      ldr r2, [r4, r6]
00398ce4  20 35 95 e5                                      ldr r3, [r5, #0x520]
00398ce8  20 10 8a e2                                      add r1, sl, #0x20
00398cec  08 20 82 e2                                      add r2, r2, #8
00398cf0  28 20 8d e5                                      str r2, [sp, #0x28]
00398cf4  52 0e 85 e2                                      add r0, r5, #0x520
00398cf8  0f e0 a0 e1                                      mov lr, pc
00398cfc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00398d00  08 c0 94 e7                                      ldr ip, [r4, r8]
00398d04  c0 33 95 e5                                      ldr r3, [r5, #0x3c0]
00398d08  07 00 94 e7                                      ldr r0, [r4, r7]
00398d0c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00398d10  08 c0 8c e2                                      add ip, ip, #8
00398d14  00 10 e0 e3                                      mvn r1, #0
00398d18  02 00 53 e1                                      cmp r3, r2
00398d1c  08 00 80 e2                                      add r0, r0, #8
00398d20  00 20 a0 e3                                      mov r2, #0
00398d24  28 c0 8d e5                                      str ip, [sp, #0x28]
00398d28  00 80 a0 e3                                      mov r8, #0
00398d2c  20 c0 a0 e3                                      mov ip, #0x20
00398d30  00 90 a0 e3                                      mov sb, #0
00398d34  04 c0 8d e5                                      str ip, [sp, #4]
00398d38  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00398d3c  14 10 8d e5                                      str r1, [sp, #0x14]
00398d40  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00398d44  00 00 8d e5                                      str r0, [sp]
00398d48  10 10 8d e5                                      str r1, [sp, #0x10]
00398d4c  18 20 8d e5                                      str r2, [sp, #0x18]
00398d50  0d 70 a0 01                                      moveq r7, sp
00398d54  03 00 00 0a                                      beq #0x398d68
00398d58  0d 00 a0 e1                                      mov r0, sp
00398d5c  0d 70 a0 e1                                      mov r7, sp
00398d60  20 30 8d e5                                      str r3, [sp, #0x20]
00398d64  86 f0 11 eb                                      bl #0x814f84
00398d68  06 30 94 e7                                      ldr r3, [r4, r6]
00398d6c  15 0d 85 e2                                      add r0, r5, #0x540
00398d70  08 00 80 e2                                      add r0, r0, #8
00398d74  08 30 83 e2                                      add r3, r3, #8
00398d78  00 30 8d e5                                      str r3, [sp]
00398d7c  20 10 87 e2                                      add r1, r7, #0x20
00398d80  48 35 95 e5                                      ldr r3, [r5, #0x548]
00398d84  0f e0 a0 e1                                      mov lr, pc
00398d88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00398d8c  7c d0 8d e2                                      add sp, sp, #0x7c
00398d90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00398d94  a8 be 5f 00 84 29 00 00 c8 10 00 00 a8 10 00 00  .byte 0xa8, 0xbe, 0x5f, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00398f44, declared_size=144, range_size=144, mode=arm
; class-group: Trigger
; alias: _ZN7TriggerC1EN10ObjectBase6GO_IDSEbb
; demangled: Trigger::Trigger(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00398f44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00398f48  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00398f4c  00 40 a0 e1                                      mov r4, r0
00398f50  f4 fb ff eb                                      bl #0x397f28
00398f54  74 20 9f e5                                      ldr r2, [pc, #0x74]
00398f58  05 50 8f e0                                      add r5, pc, r5
00398f5c  00 30 a0 e3                                      mov r3, #0
00398f60  02 20 95 e7                                      ldr r2, [r5, r2]
00398f64  01 60 a0 e3                                      mov r6, #1
00398f68  f2 8f 84 e2                                      add r8, r4, #0x3c8
00398f6c  f4 10 82 e2                                      add r1, r2, #0xf4
00398f70  08 00 82 e2                                      add r0, r2, #8
00398f74  e8 20 82 e2                                      add r2, r2, #0xe8
00398f78  c0 33 84 e5                                      str r3, [r4, #0x3c0]
00398f7c  ac 33 84 e5                                      str r3, [r4, #0x3ac]
00398f80  b0 33 c4 e5                                      strb r3, [r4, #0x3b0]
00398f84  b4 33 84 e5                                      str r3, [r4, #0x3b4]
00398f88  b8 33 84 e5                                      str r3, [r4, #0x3b8]
00398f8c  bc 33 c4 e5                                      strb r3, [r4, #0x3bc]
00398f90  05 00 84 e8                                      stm r4, {r0, r2}
00398f94  24 10 84 e5                                      str r1, [r4, #0x24]
00398f98  57 7e 84 e2                                      add r7, r4, #0x570
00398f9c  a8 63 84 e5                                      str r6, [r4, #0x3a8]
00398fa0  08 00 a0 e1                                      mov r0, r8
00398fa4  7e ff ff eb                                      bl #0x398da4
00398fa8  07 00 a0 e1                                      mov r0, r7
00398fac  7c ff ff eb                                      bl #0x398da4
00398fb0  04 30 a0 e3                                      mov r3, #4
00398fb4  00 81 84 e5                                      str r8, [r4, #0x100]
00398fb8  04 71 84 e5                                      str r7, [r4, #0x104]
00398fbc  28 60 c4 e5                                      strb r6, [r4, #0x28]
00398fc0  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
00398fc4  04 00 a0 e1                                      mov r0, r4
00398fc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00398fcc  38 bb 5f 00 f0 16 00 00                          .byte 0x38, 0xbb, 0x5f, 0x00, 0xf0, 0x16, 0x00, 0x00

; FUNCTION 0x00398fd4, declared_size=144, range_size=144, mode=arm
; class-group: Trigger
; alias: _ZN7TriggerC2EN10ObjectBase6GO_IDSEbb
; demangled: Trigger::Trigger(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00398fd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00398fd8  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00398fdc  00 40 a0 e1                                      mov r4, r0
00398fe0  d0 fb ff eb                                      bl #0x397f28
00398fe4  74 20 9f e5                                      ldr r2, [pc, #0x74]
00398fe8  05 50 8f e0                                      add r5, pc, r5
00398fec  00 30 a0 e3                                      mov r3, #0
00398ff0  02 20 95 e7                                      ldr r2, [r5, r2]
00398ff4  01 60 a0 e3                                      mov r6, #1
00398ff8  f2 8f 84 e2                                      add r8, r4, #0x3c8
00398ffc  f4 10 82 e2                                      add r1, r2, #0xf4
00399000  08 00 82 e2                                      add r0, r2, #8
00399004  e8 20 82 e2                                      add r2, r2, #0xe8
00399008  c0 33 84 e5                                      str r3, [r4, #0x3c0]
0039900c  ac 33 84 e5                                      str r3, [r4, #0x3ac]
00399010  b0 33 c4 e5                                      strb r3, [r4, #0x3b0]
00399014  b4 33 84 e5                                      str r3, [r4, #0x3b4]
00399018  b8 33 84 e5                                      str r3, [r4, #0x3b8]
0039901c  bc 33 c4 e5                                      strb r3, [r4, #0x3bc]
00399020  05 00 84 e8                                      stm r4, {r0, r2}
00399024  24 10 84 e5                                      str r1, [r4, #0x24]
00399028  57 7e 84 e2                                      add r7, r4, #0x570
0039902c  a8 63 84 e5                                      str r6, [r4, #0x3a8]
00399030  08 00 a0 e1                                      mov r0, r8
00399034  5a ff ff eb                                      bl #0x398da4
00399038  07 00 a0 e1                                      mov r0, r7
0039903c  58 ff ff eb                                      bl #0x398da4
00399040  04 30 a0 e3                                      mov r3, #4
00399044  00 81 84 e5                                      str r8, [r4, #0x100]
00399048  04 71 84 e5                                      str r7, [r4, #0x104]
0039904c  28 60 c4 e5                                      strb r6, [r4, #0x28]
00399050  f8 30 c4 e5                                      strb r3, [r4, #0xf8]
00399054  04 00 a0 e1                                      mov r0, r4
00399058  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039905c  a8 ba 5f 00 f0 16 00 00                          .byte 0xa8, 0xba, 0x5f, 0x00, 0xf0, 0x16, 0x00, 0x00

; FUNCTION 0x003990e8, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZThn36_N7TriggerD1Ev
; demangled: non-virtual thunk to Trigger::~Trigger()
; decoder-mode: arm
003990e8  24 00 40 e2                                      sub r0, r0, #0x24
003990ec  ff ff ff ea                                      b #0x3990f0

; FUNCTION 0x003990f0, declared_size=256, range_size=256, mode=arm
; class-group: Trigger
; alias: _ZN7TriggerD1Ev
; demangled: Trigger::~Trigger()
; decoder-mode: arm
003990f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003990f4  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
003990f8  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003990fc  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00399100  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
00399104  05 50 8f e0                                      add r5, pc, r5
00399108  8c c6 90 e5                                      ldr ip, [r0, #0x68c]
0039910c  03 30 95 e7                                      ldr r3, [r5, r3]
00399110  06 20 95 e7                                      ldr r2, [r5, r6]
00399114  07 10 95 e7                                      ldr r1, [r5, r7]
00399118  00 40 a0 e1                                      mov r4, r0
0039911c  08 20 82 e2                                      add r2, r2, #8
00399120  f4 00 83 e2                                      add r0, r3, #0xf4
00399124  00 00 5c e3                                      cmp ip, #0
00399128  08 10 81 e2                                      add r1, r1, #8
0039912c  08 c0 83 e2                                      add ip, r3, #8
00399130  e8 30 83 e2                                      add r3, r3, #0xe8
00399134  00 c0 84 e5                                      str ip, [r4]
00399138  04 30 84 e5                                      str r3, [r4, #4]
0039913c  24 00 84 e5                                      str r0, [r4, #0x24]
00399140  a0 26 84 e5                                      str r2, [r4, #0x6a0]
00399144  70 15 84 e5                                      str r1, [r4, #0x570]
00399148  f0 26 84 e5                                      str r2, [r4, #0x6f0]
0039914c  c8 26 84 e5                                      str r2, [r4, #0x6c8]
00399150  57 8e 84 e2                                      add r8, r4, #0x570
00399154  08 00 00 0a                                      beq #0x39917c
00399158  43 af 88 e2                                      add sl, r8, #0x10c
0039915c  0a 00 a0 e1                                      mov r0, sl
00399160  10 11 98 e5                                      ldr r1, [r8, #0x110]
00399164  99 5f ff eb                                      bl #0x370fd0
00399168  00 30 a0 e3                                      mov r3, #0
0039916c  84 a6 84 e5                                      str sl, [r4, #0x684]
00399170  10 31 88 e5                                      str r3, [r8, #0x110]
00399174  88 a6 84 e5                                      str sl, [r4, #0x688]
00399178  8c 36 84 e5                                      str r3, [r4, #0x68c]
0039917c  07 20 95 e7                                      ldr r2, [r5, r7]
00399180  06 30 95 e7                                      ldr r3, [r5, r6]
00399184  e4 14 94 e5                                      ldr r1, [r4, #0x4e4]
00399188  08 20 82 e2                                      add r2, r2, #8
0039918c  08 30 83 e2                                      add r3, r3, #8
00399190  00 00 51 e3                                      cmp r1, #0
00399194  f8 34 84 e5                                      str r3, [r4, #0x4f8]
00399198  c8 23 84 e5                                      str r2, [r4, #0x3c8]
0039919c  48 35 84 e5                                      str r3, [r4, #0x548]
003991a0  20 35 84 e5                                      str r3, [r4, #0x520]
003991a4  f2 5f 84 e2                                      add r5, r4, #0x3c8
003991a8  08 00 00 0a                                      beq #0x3991d0
003991ac  43 6f 85 e2                                      add r6, r5, #0x10c
003991b0  06 00 a0 e1                                      mov r0, r6
003991b4  d8 14 94 e5                                      ldr r1, [r4, #0x4d8]
003991b8  84 5f ff eb                                      bl #0x370fd0
003991bc  00 30 a0 e3                                      mov r3, #0
003991c0  dc 64 84 e5                                      str r6, [r4, #0x4dc]
003991c4  d8 34 84 e5                                      str r3, [r4, #0x4d8]
003991c8  18 61 85 e5                                      str r6, [r5, #0x118]
003991cc  e4 34 84 e5                                      str r3, [r4, #0x4e4]
003991d0  04 00 a0 e1                                      mov r0, r4
003991d4  46 fd ff eb                                      bl #0x3986f4
003991d8  04 00 a0 e1                                      mov r0, r4
003991dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
003991e0  8c b9 5f 00 f0 16 00 00 a8 10 00 00 c4 43 00 00  .byte 0x8c, 0xb9, 0x5f, 0x00, 0xf0, 0x16, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x003991f0, declared_size=8, range_size=8, mode=arm
; class-group: Trigger
; alias: _ZThn36_N7TriggerD0Ev
; demangled: non-virtual thunk to Trigger::~Trigger()
; decoder-mode: arm
003991f0  24 00 40 e2                                      sub r0, r0, #0x24
003991f4  ff ff ff ea                                      b #0x3991f8

; FUNCTION 0x003991f8, declared_size=28, range_size=28, mode=arm
; class-group: Trigger
; alias: _ZN7TriggerD0Ev
; demangled: Trigger::~Trigger()
; decoder-mode: arm
003991f8  10 40 2d e9                                      push {r4, lr}
003991fc  00 40 a0 e1                                      mov r4, r0
00399200  ba ff ff eb                                      bl #0x3990f0
00399204  04 00 a0 e1                                      mov r0, r4
00399208  8c dc fd eb                                      bl #0x310440
0039920c  04 00 a0 e1                                      mov r0, r4
00399210  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00399214, declared_size=256, range_size=256, mode=arm
; class-group: Trigger
; alias: _ZN7TriggerD2Ev
; demangled: Trigger::~Trigger()
; decoder-mode: arm
00399214  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00399218  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
0039921c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00399220  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00399224  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
00399228  05 50 8f e0                                      add r5, pc, r5
0039922c  8c c6 90 e5                                      ldr ip, [r0, #0x68c]
00399230  03 30 95 e7                                      ldr r3, [r5, r3]
00399234  06 20 95 e7                                      ldr r2, [r5, r6]
00399238  07 10 95 e7                                      ldr r1, [r5, r7]
0039923c  00 40 a0 e1                                      mov r4, r0
00399240  08 20 82 e2                                      add r2, r2, #8
00399244  f4 00 83 e2                                      add r0, r3, #0xf4
00399248  00 00 5c e3                                      cmp ip, #0
0039924c  08 10 81 e2                                      add r1, r1, #8
00399250  08 c0 83 e2                                      add ip, r3, #8
00399254  e8 30 83 e2                                      add r3, r3, #0xe8
00399258  00 c0 84 e5                                      str ip, [r4]
0039925c  04 30 84 e5                                      str r3, [r4, #4]
00399260  24 00 84 e5                                      str r0, [r4, #0x24]
00399264  a0 26 84 e5                                      str r2, [r4, #0x6a0]
00399268  70 15 84 e5                                      str r1, [r4, #0x570]
0039926c  f0 26 84 e5                                      str r2, [r4, #0x6f0]
00399270  c8 26 84 e5                                      str r2, [r4, #0x6c8]
00399274  57 8e 84 e2                                      add r8, r4, #0x570
00399278  08 00 00 0a                                      beq #0x3992a0
0039927c  43 af 88 e2                                      add sl, r8, #0x10c
00399280  0a 00 a0 e1                                      mov r0, sl
00399284  10 11 98 e5                                      ldr r1, [r8, #0x110]
00399288  50 5f ff eb                                      bl #0x370fd0
0039928c  00 30 a0 e3                                      mov r3, #0
00399290  84 a6 84 e5                                      str sl, [r4, #0x684]
00399294  10 31 88 e5                                      str r3, [r8, #0x110]
00399298  88 a6 84 e5                                      str sl, [r4, #0x688]
0039929c  8c 36 84 e5                                      str r3, [r4, #0x68c]
003992a0  07 20 95 e7                                      ldr r2, [r5, r7]
003992a4  06 30 95 e7                                      ldr r3, [r5, r6]
003992a8  e4 14 94 e5                                      ldr r1, [r4, #0x4e4]
003992ac  08 20 82 e2                                      add r2, r2, #8
003992b0  08 30 83 e2                                      add r3, r3, #8
003992b4  00 00 51 e3                                      cmp r1, #0
003992b8  f8 34 84 e5                                      str r3, [r4, #0x4f8]
003992bc  c8 23 84 e5                                      str r2, [r4, #0x3c8]
003992c0  48 35 84 e5                                      str r3, [r4, #0x548]
003992c4  20 35 84 e5                                      str r3, [r4, #0x520]
003992c8  f2 5f 84 e2                                      add r5, r4, #0x3c8
003992cc  08 00 00 0a                                      beq #0x3992f4
003992d0  43 6f 85 e2                                      add r6, r5, #0x10c
003992d4  06 00 a0 e1                                      mov r0, r6
003992d8  d8 14 94 e5                                      ldr r1, [r4, #0x4d8]
003992dc  3b 5f ff eb                                      bl #0x370fd0
003992e0  00 30 a0 e3                                      mov r3, #0
003992e4  dc 64 84 e5                                      str r6, [r4, #0x4dc]
003992e8  d8 34 84 e5                                      str r3, [r4, #0x4d8]
003992ec  18 61 85 e5                                      str r6, [r5, #0x118]
003992f0  e4 34 84 e5                                      str r3, [r4, #0x4e4]
003992f4  04 00 a0 e1                                      mov r0, r4
003992f8  fd fc ff eb                                      bl #0x3986f4
003992fc  04 00 a0 e1                                      mov r0, r4
00399300  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00399304  68 b8 5f 00 f0 16 00 00 a8 10 00 00 c4 43 00 00  .byte 0x68, 0xb8, 0x5f, 0x00, 0xf0, 0x16, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00
