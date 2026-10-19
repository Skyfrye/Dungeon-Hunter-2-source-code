; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893480, declared_size=44, range_size=44, mode=arm
; class-group: vox::AccessController
; alias: _ZN3vox16AccessController18ReleaseWriteAccessEv
; demangled: vox::AccessController::ReleaseWriteAccess()
; decoder-mode: arm
00893480  70 40 2d e9                                      push {r4, r5, r6, lr}
00893484  08 50 80 e2                                      add r5, r0, #8
00893488  00 40 a0 e1                                      mov r4, r0
0089348c  05 00 a0 e1                                      mov r0, r5
00893490  f9 ff ff eb                                      bl #0x89347c
00893494  04 30 94 e5                                      ldr r3, [r4, #4]
00893498  05 00 a0 e1                                      mov r0, r5
0089349c  01 30 43 e2                                      sub r3, r3, #1
008934a0  04 30 84 e5                                      str r3, [r4, #4]
008934a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008934a8  f2 ff ff ea                                      b #0x893478

; FUNCTION 0x008934ac, declared_size=112, range_size=112, mode=arm
; class-group: vox::AccessController
; alias: _ZN3vox16AccessController14GetWriteAccessEv
; demangled: vox::AccessController::GetWriteAccess()
; decoder-mode: arm
008934ac  70 40 2d e9                                      push {r4, r5, r6, lr}
008934b0  08 40 80 e2                                      add r4, r0, #8
008934b4  00 50 a0 e1                                      mov r5, r0
008934b8  04 00 a0 e1                                      mov r0, r4
008934bc  ee ff ff eb                                      bl #0x89347c
008934c0  04 30 95 e5                                      ldr r3, [r5, #4]
008934c4  04 00 a0 e1                                      mov r0, r4
008934c8  00 00 53 e3                                      cmp r3, #0
008934cc  02 00 00 1a                                      bne #0x8934dc
008934d0  00 30 95 e5                                      ldr r3, [r5]
008934d4  00 00 53 e3                                      cmp r3, #0
008934d8  0b 00 00 0a                                      beq #0x89350c
008934dc  e5 ff ff eb                                      bl #0x893478
008934e0  fa 0f a0 e3                                      mov r0, #0x3e8
008934e4  e5 ec e9 eb                                      bl #0x30e880
008934e8  04 00 a0 e1                                      mov r0, r4
008934ec  e2 ff ff eb                                      bl #0x89347c
008934f0  04 30 95 e5                                      ldr r3, [r5, #4]
008934f4  04 00 a0 e1                                      mov r0, r4
008934f8  00 00 53 e3                                      cmp r3, #0
008934fc  f6 ff ff 1a                                      bne #0x8934dc
00893500  00 30 95 e5                                      ldr r3, [r5]
00893504  00 00 53 e3                                      cmp r3, #0
00893508  f3 ff ff 1a                                      bne #0x8934dc
0089350c  01 30 a0 e3                                      mov r3, #1
00893510  04 30 85 e5                                      str r3, [r5, #4]
00893514  70 40 bd e8                                      pop {r4, r5, r6, lr}
00893518  d6 ff ff ea                                      b #0x893478

; FUNCTION 0x0089351c, declared_size=44, range_size=44, mode=arm
; class-group: vox::AccessController
; alias: _ZN3vox16AccessController17ReleaseReadAccessEv
; demangled: vox::AccessController::ReleaseReadAccess()
; decoder-mode: arm
0089351c  70 40 2d e9                                      push {r4, r5, r6, lr}
00893520  08 50 80 e2                                      add r5, r0, #8
00893524  00 40 a0 e1                                      mov r4, r0
00893528  05 00 a0 e1                                      mov r0, r5
0089352c  d2 ff ff eb                                      bl #0x89347c
00893530  00 30 94 e5                                      ldr r3, [r4]
00893534  05 00 a0 e1                                      mov r0, r5
00893538  01 30 43 e2                                      sub r3, r3, #1
0089353c  00 30 84 e5                                      str r3, [r4]
00893540  70 40 bd e8                                      pop {r4, r5, r6, lr}
00893544  cb ff ff ea                                      b #0x893478

; FUNCTION 0x00893548, declared_size=72, range_size=72, mode=arm
; class-group: vox::AccessController
; alias: _ZN3vox16AccessController13GetReadAccessEv
; demangled: vox::AccessController::GetReadAccess()
; decoder-mode: arm
00893548  70 40 2d e9                                      push {r4, r5, r6, lr}
0089354c  00 50 a0 e1                                      mov r5, r0
00893550  08 40 80 e2                                      add r4, r0, #8
00893554  04 00 a0 e1                                      mov r0, r4
00893558  c7 ff ff eb                                      bl #0x89347c
0089355c  04 30 95 e5                                      ldr r3, [r5, #4]
00893560  04 00 a0 e1                                      mov r0, r4
00893564  00 00 53 e3                                      cmp r3, #0
00893568  04 00 00 1a                                      bne #0x893580
0089356c  00 30 95 e5                                      ldr r3, [r5]
00893570  01 30 83 e2                                      add r3, r3, #1
00893574  00 30 85 e5                                      str r3, [r5]
00893578  70 40 bd e8                                      pop {r4, r5, r6, lr}
0089357c  bd ff ff ea                                      b #0x893478
00893580  bc ff ff eb                                      bl #0x893478
00893584  fa 0f a0 e3                                      mov r0, #0x3e8
00893588  bc ec e9 eb                                      bl #0x30e880
0089358c  f0 ff ff ea                                      b #0x893554
