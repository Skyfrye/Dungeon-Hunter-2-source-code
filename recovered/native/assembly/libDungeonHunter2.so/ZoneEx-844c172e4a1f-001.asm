; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00397e9c, declared_size=8, range_size=8, mode=arm
; class-group: ZoneEx
; alias: _ZNK6ZoneEx16GetNumCharactersEv
; demangled: ZoneEx::GetNumCharacters() const
; decoder-mode: arm
00397e9c  a0 03 90 e5                                      ldr r0, [r0, #0x3a0]
00397ea0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00397ea4, declared_size=8, range_size=8, mode=arm
; class-group: ZoneEx
; alias: _ZNK6ZoneEx13GetNumPlayersEv
; demangled: ZoneEx::GetNumPlayers() const
; decoder-mode: arm
00397ea4  a4 03 90 e5                                      ldr r0, [r0, #0x3a4]
00397ea8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00397eac, declared_size=20, range_size=20, mode=arm
; class-group: ZoneEx
; alias: _ZNK6ZoneEx13GetNumObjectsEv
; demangled: ZoneEx::GetNumObjects() const
; decoder-mode: arm
00397eac  10 40 2d e9                                      push {r4, lr}
00397eb0  98 43 90 e5                                      ldr r4, [r0, #0x398]
00397eb4  f8 ff ff eb                                      bl #0x397e9c
00397eb8  04 00 60 e0                                      rsb r0, r0, r4
00397ebc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00397ec0, declared_size=104, range_size=104, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneExC1EN10ObjectBase6GO_IDSEbb
; demangled: ZoneEx::ZoneEx(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00397ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
00397ec4  54 50 9f e5                                      ldr r5, [pc, #0x54]
00397ec8  00 40 a0 e1                                      mov r4, r0
00397ecc  73 ff ff eb                                      bl #0x397ca0
00397ed0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00397ed4  05 50 8f e0                                      add r5, pc, r5
00397ed8  00 30 a0 e3                                      mov r3, #0
00397edc  02 20 95 e7                                      ldr r2, [r5, r2]
00397ee0  04 10 a0 e1                                      mov r1, r4
00397ee4  8c 33 84 e5                                      str r3, [r4, #0x38c]
00397ee8  f4 00 82 e2                                      add r0, r2, #0xf4
00397eec  08 c0 82 e2                                      add ip, r2, #8
00397ef0  e8 20 82 e2                                      add r2, r2, #0xe8
00397ef4  24 00 84 e5                                      str r0, [r4, #0x24]
00397ef8  00 c0 84 e5                                      str ip, [r4]
00397efc  04 20 84 e5                                      str r2, [r4, #4]
00397f00  88 33 e1 e5                                      strb r3, [r1, #0x388]!
00397f04  94 13 84 e5                                      str r1, [r4, #0x394]
00397f08  a4 33 84 e5                                      str r3, [r4, #0x3a4]
00397f0c  90 13 84 e5                                      str r1, [r4, #0x390]
00397f10  98 33 84 e5                                      str r3, [r4, #0x398]
00397f14  a0 33 84 e5                                      str r3, [r4, #0x3a0]
00397f18  04 00 a0 e1                                      mov r0, r4
00397f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00397f20  bc cb 5f 00 b4 30 00 00                          .byte 0xbc, 0xcb, 0x5f, 0x00, 0xb4, 0x30, 0x00, 0x00

; FUNCTION 0x00397f28, declared_size=104, range_size=104, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneExC2EN10ObjectBase6GO_IDSEbb
; demangled: ZoneEx::ZoneEx(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00397f28  70 40 2d e9                                      push {r4, r5, r6, lr}
00397f2c  54 50 9f e5                                      ldr r5, [pc, #0x54]
00397f30  00 40 a0 e1                                      mov r4, r0
00397f34  59 ff ff eb                                      bl #0x397ca0
00397f38  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00397f3c  05 50 8f e0                                      add r5, pc, r5
00397f40  00 30 a0 e3                                      mov r3, #0
00397f44  02 20 95 e7                                      ldr r2, [r5, r2]
00397f48  04 10 a0 e1                                      mov r1, r4
00397f4c  8c 33 84 e5                                      str r3, [r4, #0x38c]
00397f50  f4 00 82 e2                                      add r0, r2, #0xf4
00397f54  08 c0 82 e2                                      add ip, r2, #8
00397f58  e8 20 82 e2                                      add r2, r2, #0xe8
00397f5c  24 00 84 e5                                      str r0, [r4, #0x24]
00397f60  00 c0 84 e5                                      str ip, [r4]
00397f64  04 20 84 e5                                      str r2, [r4, #4]
00397f68  88 33 e1 e5                                      strb r3, [r1, #0x388]!
00397f6c  94 13 84 e5                                      str r1, [r4, #0x394]
00397f70  a4 33 84 e5                                      str r3, [r4, #0x3a4]
00397f74  90 13 84 e5                                      str r1, [r4, #0x390]
00397f78  98 33 84 e5                                      str r3, [r4, #0x398]
00397f7c  a0 33 84 e5                                      str r3, [r4, #0x3a0]
00397f80  04 00 a0 e1                                      mov r0, r4
00397f84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00397f88  54 cb 5f 00 b4 30 00 00                          .byte 0x54, 0xcb, 0x5f, 0x00, 0xb4, 0x30, 0x00, 0x00

; FUNCTION 0x003980a8, declared_size=344, range_size=344, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneEx6UpdateEv
; demangled: ZoneEx::Update()
; decoder-mode: arm
003980a8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003980ac  90 53 90 e5                                      ldr r5, [r0, #0x390]
003980b0  0c d0 4d e2                                      sub sp, sp, #0xc
003980b4  00 60 a0 e1                                      mov r6, r0
003980b8  e2 7f 80 e2                                      add r7, r0, #0x388
003980bc  04 80 8d e2                                      add r8, sp, #4
003980c0  05 00 57 e1                                      cmp r7, r5
003980c4  1a 00 00 0a                                      beq #0x398134
003980c8  06 00 a0 e1                                      mov r0, r6
003980cc  10 10 95 e5                                      ldr r1, [r5, #0x10]
003980d0  fc fb ff eb                                      bl #0x3970c8
003980d4  00 00 50 e3                                      cmp r0, #0
003980d8  17 00 00 1a                                      bne #0x39813c
003980dc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
003980e0  00 00 54 e3                                      cmp r4, #0
003980e4  01 00 00 1a                                      bne #0x3980f0
003980e8  36 00 00 ea                                      b #0x3981c8
003980ec  03 40 a0 e1                                      mov r4, r3
003980f0  08 30 94 e5                                      ldr r3, [r4, #8]
003980f4  00 00 53 e3                                      cmp r3, #0
003980f8  fb ff ff 1a                                      bne #0x3980ec
003980fc  10 a0 95 e5                                      ldr sl, [r5, #0x10]
00398100  00 30 9a e5                                      ldr r3, [sl]
00398104  0a 00 a0 e1                                      mov r0, sl
00398108  0f e0 a0 e1                                      mov lr, pc
0039810c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00398110  00 00 50 e3                                      cmp r0, #0
00398114  12 00 00 1a                                      bne #0x398164
00398118  04 50 8d e5                                      str r5, [sp, #4]
0039811c  07 00 a0 e1                                      mov r0, r7
00398120  08 10 a0 e1                                      mov r1, r8
00398124  04 50 a0 e1                                      mov r5, r4
00398128  cf ff ff eb                                      bl #0x39806c
0039812c  05 00 57 e1                                      cmp r7, r5
00398130  e4 ff ff 1a                                      bne #0x3980c8
00398134  0c d0 8d e2                                      add sp, sp, #0xc
00398138  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039813c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00398140  00 00 52 e3                                      cmp r2, #0
00398144  01 00 00 1a                                      bne #0x398150
00398148  11 00 00 ea                                      b #0x398194
0039814c  03 20 a0 e1                                      mov r2, r3
00398150  08 30 92 e5                                      ldr r3, [r2, #8]
00398154  00 00 53 e3                                      cmp r3, #0
00398158  fb ff ff 1a                                      bne #0x39814c
0039815c  02 50 a0 e1                                      mov r5, r2
00398160  d6 ff ff ea                                      b #0x3980c0
00398164  a0 33 96 e5                                      ldr r3, [r6, #0x3a0]
00398168  0a 00 a0 e1                                      mov r0, sl
0039816c  01 30 43 e2                                      sub r3, r3, #1
00398170  a0 33 86 e5                                      str r3, [r6, #0x3a0]
00398174  00 30 9a e5                                      ldr r3, [sl]
00398178  0f e0 a0 e1                                      mov lr, pc
0039817c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00398180  00 00 50 e3                                      cmp r0, #0
00398184  a4 33 96 15                                      ldrne r3, [r6, #0x3a4]
00398188  01 30 43 12                                      subne r3, r3, #1
0039818c  a4 33 86 15                                      strne r3, [r6, #0x3a4]
00398190  e0 ff ff ea                                      b #0x398118
00398194  04 30 95 e5                                      ldr r3, [r5, #4]
00398198  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039819c  01 00 55 e1                                      cmp r5, r1
003981a0  05 00 00 1a                                      bne #0x3981bc
003981a4  03 50 a0 e1                                      mov r5, r3
003981a8  04 30 93 e5                                      ldr r3, [r3, #4]
003981ac  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003981b0  05 00 52 e1                                      cmp r2, r5
003981b4  fa ff ff 0a                                      beq #0x3981a4
003981b8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003981bc  02 00 53 e1                                      cmp r3, r2
003981c0  03 50 a0 11                                      movne r5, r3
003981c4  bd ff ff ea                                      b #0x3980c0
003981c8  04 30 95 e5                                      ldr r3, [r5, #4]
003981cc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003981d0  02 00 55 e1                                      cmp r5, r2
003981d4  05 40 a0 11                                      movne r4, r5
003981d8  05 00 00 1a                                      bne #0x3981f4
003981dc  03 40 a0 e1                                      mov r4, r3
003981e0  04 30 93 e5                                      ldr r3, [r3, #4]
003981e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003981e8  04 00 52 e1                                      cmp r2, r4
003981ec  fa ff ff 0a                                      beq #0x3981dc
003981f0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
003981f4  00 00 53 e1                                      cmp r3, r0
003981f8  03 40 a0 11                                      movne r4, r3
003981fc  be ff ff ea                                      b #0x3980fc

; FUNCTION 0x00398200, declared_size=204, range_size=204, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneEx15OnCollisionEndsEP10GameObject
; demangled: ZoneEx::OnCollisionEnds(GameObject*)
; decoder-mode: arm
00398200  30 40 2d e9                                      push {r4, r5, lr}
00398204  0c d0 4d e2                                      sub sp, sp, #0xc
00398208  00 50 a0 e1                                      mov r5, r0
0039820c  01 40 a0 e1                                      mov r4, r1
00398210  ac fb ff eb                                      bl #0x3970c8
00398214  00 00 50 e3                                      cmp r0, #0
00398218  13 00 00 1a                                      bne #0x39826c
0039821c  8c 33 95 e5                                      ldr r3, [r5, #0x38c]
00398220  00 00 53 e3                                      cmp r3, #0
00398224  10 00 00 0a                                      beq #0x39826c
00398228  e2 0f 85 e2                                      add r0, r5, #0x388
0039822c  00 10 a0 e1                                      mov r1, r0
00398230  00 00 00 ea                                      b #0x398238
00398234  02 30 a0 e1                                      mov r3, r2
00398238  10 20 93 e5                                      ldr r2, [r3, #0x10]
0039823c  02 00 54 e1                                      cmp r4, r2
00398240  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
00398244  08 20 93 95                                      ldrls r2, [r3, #8]
00398248  01 30 a0 81                                      movhi r3, r1
0039824c  03 10 a0 e1                                      mov r1, r3
00398250  00 00 52 e3                                      cmp r2, #0
00398254  f6 ff ff 1a                                      bne #0x398234
00398258  03 00 50 e1                                      cmp r0, r3
0039825c  02 00 00 0a                                      beq #0x39826c
00398260  10 20 93 e5                                      ldr r2, [r3, #0x10]
00398264  02 00 54 e1                                      cmp r4, r2
00398268  01 00 00 2a                                      bhs #0x398274
0039826c  0c d0 8d e2                                      add sp, sp, #0xc
00398270  30 80 bd e8                                      pop {r4, r5, pc}
00398274  08 10 8d e2                                      add r1, sp, #8
00398278  04 30 21 e5                                      str r3, [r1, #-4]!
0039827c  7a ff ff eb                                      bl #0x39806c
00398280  00 30 94 e5                                      ldr r3, [r4]
00398284  04 00 a0 e1                                      mov r0, r4
00398288  0f e0 a0 e1                                      mov lr, pc
0039828c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00398290  00 00 50 e3                                      cmp r0, #0
00398294  f4 ff ff 0a                                      beq #0x39826c
00398298  a0 33 95 e5                                      ldr r3, [r5, #0x3a0]
0039829c  04 00 a0 e1                                      mov r0, r4
003982a0  01 30 43 e2                                      sub r3, r3, #1
003982a4  a0 33 85 e5                                      str r3, [r5, #0x3a0]
003982a8  00 30 94 e5                                      ldr r3, [r4]
003982ac  0f e0 a0 e1                                      mov lr, pc
003982b0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003982b4  00 00 50 e3                                      cmp r0, #0
003982b8  eb ff ff 0a                                      beq #0x39826c
003982bc  a4 33 95 e5                                      ldr r3, [r5, #0x3a4]
003982c0  01 30 43 e2                                      sub r3, r3, #1
003982c4  a4 33 85 e5                                      str r3, [r5, #0x3a4]
003982c8  e7 ff ff ea                                      b #0x39826c

; FUNCTION 0x0039858c, declared_size=144, range_size=144, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneEx17OnCollisionBeginsEP10GameObject
; demangled: ZoneEx::OnCollisionBegins(GameObject*)
; decoder-mode: arm
0039858c  10 40 2d e9                                      push {r4, lr}
00398590  10 d0 4d e2                                      sub sp, sp, #0x10
00398594  04 10 8d e5                                      str r1, [sp, #4]
00398598  00 40 a0 e1                                      mov r4, r0
0039859c  c9 fa ff eb                                      bl #0x3970c8
003985a0  00 00 50 e3                                      cmp r0, #0
003985a4  01 00 00 1a                                      bne #0x3985b0
003985a8  10 d0 8d e2                                      add sp, sp, #0x10
003985ac  10 80 bd e8                                      pop {r4, pc}
003985b0  08 00 8d e2                                      add r0, sp, #8
003985b4  e2 1f 84 e2                                      add r1, r4, #0x388
003985b8  04 20 8d e2                                      add r2, sp, #4
003985bc  92 ff ff eb                                      bl #0x39840c
003985c0  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
003985c4  00 00 53 e3                                      cmp r3, #0
003985c8  f6 ff ff 0a                                      beq #0x3985a8
003985cc  04 30 9d e5                                      ldr r3, [sp, #4]
003985d0  03 00 a0 e1                                      mov r0, r3
003985d4  00 30 93 e5                                      ldr r3, [r3]
003985d8  0f e0 a0 e1                                      mov lr, pc
003985dc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003985e0  00 00 50 e3                                      cmp r0, #0
003985e4  ef ff ff 0a                                      beq #0x3985a8
003985e8  a0 23 94 e5                                      ldr r2, [r4, #0x3a0]
003985ec  04 30 9d e5                                      ldr r3, [sp, #4]
003985f0  01 20 82 e2                                      add r2, r2, #1
003985f4  a0 23 84 e5                                      str r2, [r4, #0x3a0]
003985f8  03 00 a0 e1                                      mov r0, r3
003985fc  00 30 93 e5                                      ldr r3, [r3]
00398600  0f e0 a0 e1                                      mov lr, pc
00398604  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00398608  00 00 50 e3                                      cmp r0, #0
0039860c  a4 33 94 15                                      ldrne r3, [r4, #0x3a4]
00398610  01 30 83 12                                      addne r3, r3, #1
00398614  a4 33 84 15                                      strne r3, [r4, #0x3a4]
00398618  e2 ff ff ea                                      b #0x3985a8

; FUNCTION 0x00398654, declared_size=8, range_size=8, mode=arm
; class-group: ZoneEx
; alias: _ZThn36_N6ZoneExD1Ev
; demangled: non-virtual thunk to ZoneEx::~ZoneEx()
; decoder-mode: arm
00398654  24 00 40 e2                                      sub r0, r0, #0x24
00398658  ff ff ff ea                                      b #0x39865c

; FUNCTION 0x0039865c, declared_size=116, range_size=116, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneExD1Ev
; demangled: ZoneEx::~ZoneEx()
; decoder-mode: arm
0039865c  70 40 2d e9                                      push {r4, r5, r6, lr}
00398660  60 20 9f e5                                      ldr r2, [pc, #0x60]
00398664  60 30 9f e5                                      ldr r3, [pc, #0x60]
00398668  98 13 90 e5                                      ldr r1, [r0, #0x398]
0039866c  02 20 8f e0                                      add r2, pc, r2
00398670  03 30 92 e7                                      ldr r3, [r2, r3]
00398674  00 00 51 e3                                      cmp r1, #0
00398678  00 40 a0 e1                                      mov r4, r0
0039867c  f4 20 83 e2                                      add r2, r3, #0xf4
00398680  08 10 83 e2                                      add r1, r3, #8
00398684  e8 30 83 e2                                      add r3, r3, #0xe8
00398688  0a 00 80 e8                                      stm r0, {r1, r3}
0039868c  24 20 80 e5                                      str r2, [r0, #0x24]
00398690  08 00 00 0a                                      beq #0x3986b8
00398694  e2 5f 80 e2                                      add r5, r0, #0x388
00398698  05 00 a0 e1                                      mov r0, r5
0039869c  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
003986a0  dd ff ff eb                                      bl #0x39861c
003986a4  00 30 a0 e3                                      mov r3, #0
003986a8  94 53 84 e5                                      str r5, [r4, #0x394]
003986ac  98 33 84 e5                                      str r3, [r4, #0x398]
003986b0  90 53 84 e5                                      str r5, [r4, #0x390]
003986b4  8c 33 84 e5                                      str r3, [r4, #0x38c]
003986b8  04 00 a0 e1                                      mov r0, r4
003986bc  40 fd ff eb                                      bl #0x397bc4
003986c0  04 00 a0 e1                                      mov r0, r4
003986c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003986c8  24 c4 5f 00 b4 30 00 00                          .byte 0x24, 0xc4, 0x5f, 0x00, 0xb4, 0x30, 0x00, 0x00

; FUNCTION 0x003986d0, declared_size=8, range_size=8, mode=arm
; class-group: ZoneEx
; alias: _ZThn36_N6ZoneExD0Ev
; demangled: non-virtual thunk to ZoneEx::~ZoneEx()
; decoder-mode: arm
003986d0  24 00 40 e2                                      sub r0, r0, #0x24
003986d4  ff ff ff ea                                      b #0x3986d8

; FUNCTION 0x003986d8, declared_size=28, range_size=28, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneExD0Ev
; demangled: ZoneEx::~ZoneEx()
; decoder-mode: arm
003986d8  10 40 2d e9                                      push {r4, lr}
003986dc  00 40 a0 e1                                      mov r4, r0
003986e0  dd ff ff eb                                      bl #0x39865c
003986e4  04 00 a0 e1                                      mov r0, r4
003986e8  54 df fd eb                                      bl #0x310440
003986ec  04 00 a0 e1                                      mov r0, r4
003986f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003986f4, declared_size=116, range_size=116, mode=arm
; class-group: ZoneEx
; alias: _ZN6ZoneExD2Ev
; demangled: ZoneEx::~ZoneEx()
; decoder-mode: arm
003986f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003986f8  60 20 9f e5                                      ldr r2, [pc, #0x60]
003986fc  60 30 9f e5                                      ldr r3, [pc, #0x60]
00398700  98 13 90 e5                                      ldr r1, [r0, #0x398]
00398704  02 20 8f e0                                      add r2, pc, r2
00398708  03 30 92 e7                                      ldr r3, [r2, r3]
0039870c  00 00 51 e3                                      cmp r1, #0
00398710  00 40 a0 e1                                      mov r4, r0
00398714  f4 20 83 e2                                      add r2, r3, #0xf4
00398718  08 10 83 e2                                      add r1, r3, #8
0039871c  e8 30 83 e2                                      add r3, r3, #0xe8
00398720  0a 00 80 e8                                      stm r0, {r1, r3}
00398724  24 20 80 e5                                      str r2, [r0, #0x24]
00398728  08 00 00 0a                                      beq #0x398750
0039872c  e2 5f 80 e2                                      add r5, r0, #0x388
00398730  05 00 a0 e1                                      mov r0, r5
00398734  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
00398738  b7 ff ff eb                                      bl #0x39861c
0039873c  00 30 a0 e3                                      mov r3, #0
00398740  94 53 84 e5                                      str r5, [r4, #0x394]
00398744  98 33 84 e5                                      str r3, [r4, #0x398]
00398748  90 53 84 e5                                      str r5, [r4, #0x390]
0039874c  8c 33 84 e5                                      str r3, [r4, #0x38c]
00398750  04 00 a0 e1                                      mov r0, r4
00398754  1a fd ff eb                                      bl #0x397bc4
00398758  04 00 a0 e1                                      mov r0, r4
0039875c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00398760  8c c3 5f 00 b4 30 00 00                          .byte 0x8c, 0xc3, 0x5f, 0x00, 0xb4, 0x30, 0x00, 0x00
