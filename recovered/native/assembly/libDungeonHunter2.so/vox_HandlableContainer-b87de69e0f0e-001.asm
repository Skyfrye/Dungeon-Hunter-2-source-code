; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863144, declared_size=164, range_size=164, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer4FindEx
; demangled: vox::HandlableContainer::Find(long long)
; decoder-mode: arm
00863144  04 40 2d e5                                      str r4, [sp, #-4]!
00863148  04 10 90 e5                                      ldr r1, [r0, #4]
0086314c  00 00 51 e3                                      cmp r1, #0
00863150  17 00 00 0a                                      beq #0x8631b4
00863154  00 40 a0 e1                                      mov r4, r0
00863158  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0086315c  03 00 5c e1                                      cmp ip, r3
00863160  09 00 00 ba                                      blt #0x86318c
00863164  05 00 00 0a                                      beq #0x863180
00863168  08 c0 91 e5                                      ldr ip, [r1, #8]
0086316c  01 40 a0 e1                                      mov r4, r1
00863170  00 00 5c e3                                      cmp ip, #0
00863174  09 00 00 0a                                      beq #0x8631a0
00863178  0c 10 a0 e1                                      mov r1, ip
0086317c  f5 ff ff ea                                      b #0x863158
00863180  10 c0 91 e5                                      ldr ip, [r1, #0x10]
00863184  02 00 5c e1                                      cmp ip, r2
00863188  f6 ff ff 2a                                      bhs #0x863168
0086318c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00863190  04 10 a0 e1                                      mov r1, r4
00863194  01 40 a0 e1                                      mov r4, r1
00863198  00 00 5c e3                                      cmp ip, #0
0086319c  f5 ff ff 1a                                      bne #0x863178
008631a0  01 00 50 e1                                      cmp r0, r1
008631a4  0d 00 00 0a                                      beq #0x8631e0
008631a8  14 c0 91 e5                                      ldr ip, [r1, #0x14]
008631ac  03 00 5c e1                                      cmp ip, r3
008631b0  05 00 00 da                                      ble #0x8631cc
008631b4  00 10 a0 e1                                      mov r1, r0
008631b8  01 00 50 e1                                      cmp r0, r1
008631bc  18 00 91 15                                      ldrne r0, [r1, #0x18]
008631c0  06 00 00 0a                                      beq #0x8631e0
008631c4  10 00 bd e8                                      ldm sp!, {r4}
008631c8  1e ff 2f e1                                      bx lr
008631cc  f9 ff ff 1a                                      bne #0x8631b8
008631d0  10 30 91 e5                                      ldr r3, [r1, #0x10]
008631d4  02 00 53 e1                                      cmp r3, r2
008631d8  f6 ff ff 9a                                      bls #0x8631b8
008631dc  f4 ff ff ea                                      b #0x8631b4
008631e0  00 00 a0 e3                                      mov r0, #0
008631e4  f6 ff ff ea                                      b #0x8631c4

; FUNCTION 0x008631e8, declared_size=44, range_size=44, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer15GetFreeHandleIdEv
; demangled: vox::HandlableContainer::GetFreeHandleId()
; decoder-mode: arm
008631e8  30 00 2d e9                                      push {r4, r5}
008631ec  01 40 a0 e3                                      mov r4, #1
008631f0  d8 21 c0 e1                                      ldrd r2, r3, [r0, #0x18]
008631f4  00 50 a0 e3                                      mov r5, #0
008631f8  02 40 94 e0                                      adds r4, r4, r2
008631fc  03 50 a5 e0                                      adc r5, r5, r3
00863200  f8 41 c0 e1                                      strd r4, r5, [r0, #0x18]
00863204  03 10 a0 e1                                      mov r1, r3
00863208  02 00 a0 e1                                      mov r0, r2
0086320c  30 00 bd e8                                      pop {r4, r5}
00863210  1e ff 2f e1                                      bx lr

; FUNCTION 0x00863214, declared_size=12, range_size=12, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer5beginEv
; demangled: vox::HandlableContainer::begin()
; decoder-mode: arm
00863214  08 30 91 e5                                      ldr r3, [r1, #8]
00863218  00 30 80 e5                                      str r3, [r0]
0086321c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00863220, declared_size=8, range_size=8, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer3endEv
; demangled: vox::HandlableContainer::end()
; decoder-mode: arm
00863220  00 10 80 e5                                      str r1, [r0]
00863224  1e ff 2f e1                                      bx lr

; FUNCTION 0x00863a0c, declared_size=196, range_size=196, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer5ClearEv
; demangled: vox::HandlableContainer::Clear()
; decoder-mode: arm
00863a0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00863a10  08 50 90 e5                                      ldr r5, [r0, #8]
00863a14  00 40 a0 e1                                      mov r4, r0
00863a18  05 00 54 e1                                      cmp r4, r5
00863a1c  13 00 00 0a                                      beq #0x863a70
00863a20  18 30 95 e5                                      ldr r3, [r5, #0x18]
00863a24  00 00 53 e3                                      cmp r3, #0
00863a28  05 00 00 0a                                      beq #0x863a44
00863a2c  03 00 a0 e1                                      mov r0, r3
00863a30  00 30 93 e5                                      ldr r3, [r3]
00863a34  0f e0 a0 e1                                      mov lr, pc
00863a38  00 f0 93 e5                                      ldr pc, [r3]
00863a3c  18 00 95 e5                                      ldr r0, [r5, #0x18]
00863a40  7f b2 ea eb                                      bl #0x310444
00863a44  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00863a48  00 00 52 e3                                      cmp r2, #0
00863a4c  01 00 00 1a                                      bne #0x863a58
00863a50  11 00 00 ea                                      b #0x863a9c
00863a54  03 20 a0 e1                                      mov r2, r3
00863a58  08 30 92 e5                                      ldr r3, [r2, #8]
00863a5c  00 00 53 e3                                      cmp r3, #0
00863a60  fb ff ff 1a                                      bne #0x863a54
00863a64  02 50 a0 e1                                      mov r5, r2
00863a68  05 00 54 e1                                      cmp r4, r5
00863a6c  eb ff ff 1a                                      bne #0x863a20
00863a70  10 30 94 e5                                      ldr r3, [r4, #0x10]
00863a74  00 00 53 e3                                      cmp r3, #0
00863a78  06 00 00 0a                                      beq #0x863a98
00863a7c  04 00 a0 e1                                      mov r0, r4
00863a80  04 10 94 e5                                      ldr r1, [r4, #4]
00863a84  d3 ff ff eb                                      bl #0x8639d8
00863a88  00 30 a0 e3                                      mov r3, #0
00863a8c  10 30 84 e5                                      str r3, [r4, #0x10]
00863a90  18 00 84 e9                                      stmib r4, {r3, r4}
00863a94  0c 40 84 e5                                      str r4, [r4, #0xc]
00863a98  70 80 bd e8                                      pop {r4, r5, r6, pc}
00863a9c  04 30 95 e5                                      ldr r3, [r5, #4]
00863aa0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00863aa4  01 00 55 e1                                      cmp r5, r1
00863aa8  05 00 00 1a                                      bne #0x863ac4
00863aac  03 50 a0 e1                                      mov r5, r3
00863ab0  04 30 93 e5                                      ldr r3, [r3, #4]
00863ab4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00863ab8  05 00 52 e1                                      cmp r2, r5
00863abc  fa ff ff 0a                                      beq #0x863aac
00863ac0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00863ac4  03 00 52 e1                                      cmp r2, r3
00863ac8  03 50 a0 11                                      movne r5, r3
00863acc  d1 ff ff ea                                      b #0x863a18

; FUNCTION 0x00863ad0, declared_size=60, range_size=60, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainerD1Ev
; demangled: vox::HandlableContainer::~HandlableContainer()
; decoder-mode: arm
00863ad0  10 40 2d e9                                      push {r4, lr}
00863ad4  00 40 a0 e1                                      mov r4, r0
00863ad8  cb ff ff eb                                      bl #0x863a0c
00863adc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00863ae0  00 00 53 e3                                      cmp r3, #0
00863ae4  06 00 00 0a                                      beq #0x863b04
00863ae8  04 00 a0 e1                                      mov r0, r4
00863aec  04 10 94 e5                                      ldr r1, [r4, #4]
00863af0  b8 ff ff eb                                      bl #0x8639d8
00863af4  00 30 a0 e3                                      mov r3, #0
00863af8  10 30 84 e5                                      str r3, [r4, #0x10]
00863afc  18 00 84 e9                                      stmib r4, {r3, r4}
00863b00  0c 40 84 e5                                      str r4, [r4, #0xc]
00863b04  04 00 a0 e1                                      mov r0, r4
00863b08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00863b0c, declared_size=60, range_size=60, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainerD2Ev
; demangled: vox::HandlableContainer::~HandlableContainer()
; decoder-mode: arm
00863b0c  10 40 2d e9                                      push {r4, lr}
00863b10  00 40 a0 e1                                      mov r4, r0
00863b14  bc ff ff eb                                      bl #0x863a0c
00863b18  10 30 94 e5                                      ldr r3, [r4, #0x10]
00863b1c  00 00 53 e3                                      cmp r3, #0
00863b20  06 00 00 0a                                      beq #0x863b40
00863b24  04 00 a0 e1                                      mov r0, r4
00863b28  04 10 94 e5                                      ldr r1, [r4, #4]
00863b2c  a9 ff ff eb                                      bl #0x8639d8
00863b30  00 30 a0 e3                                      mov r3, #0
00863b34  10 30 84 e5                                      str r3, [r4, #0x10]
00863b38  18 00 84 e9                                      stmib r4, {r3, r4}
00863b3c  0c 40 84 e5                                      str r4, [r4, #0xc]
00863b40  04 00 a0 e1                                      mov r0, r4
00863b44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00863b48, declared_size=220, range_size=220, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer5EraseEx
; demangled: vox::HandlableContainer::Erase(long long)
; decoder-mode: arm
00863b48  70 40 2d e9                                      push {r4, r5, r6, lr}
00863b4c  04 50 90 e5                                      ldr r5, [r0, #4]
00863b50  00 40 a0 e1                                      mov r4, r0
00863b54  00 00 55 e3                                      cmp r5, #0
00863b58  16 00 00 0a                                      beq #0x863bb8
00863b5c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00863b60  03 00 51 e1                                      cmp r1, r3
00863b64  09 00 00 ba                                      blt #0x863b90
00863b68  05 00 00 0a                                      beq #0x863b84
00863b6c  08 10 95 e5                                      ldr r1, [r5, #8]
00863b70  05 00 a0 e1                                      mov r0, r5
00863b74  00 00 51 e3                                      cmp r1, #0
00863b78  09 00 00 0a                                      beq #0x863ba4
00863b7c  01 50 a0 e1                                      mov r5, r1
00863b80  f5 ff ff ea                                      b #0x863b5c
00863b84  10 10 95 e5                                      ldr r1, [r5, #0x10]
00863b88  02 00 51 e1                                      cmp r1, r2
00863b8c  f6 ff ff 2a                                      bhs #0x863b6c
00863b90  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00863b94  00 50 a0 e1                                      mov r5, r0
00863b98  05 00 a0 e1                                      mov r0, r5
00863b9c  00 00 51 e3                                      cmp r1, #0
00863ba0  f5 ff ff 1a                                      bne #0x863b7c
00863ba4  05 00 54 e1                                      cmp r4, r5
00863ba8  17 00 00 0a                                      beq #0x863c0c
00863bac  14 10 95 e5                                      ldr r1, [r5, #0x14]
00863bb0  03 00 51 e1                                      cmp r1, r3
00863bb4  15 00 00 da                                      ble #0x863c10
00863bb8  04 50 a0 e1                                      mov r5, r4
00863bbc  05 00 54 e1                                      cmp r4, r5
00863bc0  11 00 00 0a                                      beq #0x863c0c
00863bc4  18 30 95 e5                                      ldr r3, [r5, #0x18]
00863bc8  00 00 53 e3                                      cmp r3, #0
00863bcc  05 00 00 0a                                      beq #0x863be8
00863bd0  03 00 a0 e1                                      mov r0, r3
00863bd4  00 30 93 e5                                      ldr r3, [r3]
00863bd8  0f e0 a0 e1                                      mov lr, pc
00863bdc  00 f0 93 e5                                      ldr pc, [r3]
00863be0  18 00 95 e5                                      ldr r0, [r5, #0x18]
00863be4  16 b2 ea eb                                      bl #0x310444
00863be8  0c 30 84 e2                                      add r3, r4, #0xc
00863bec  04 10 84 e2                                      add r1, r4, #4
00863bf0  08 20 84 e2                                      add r2, r4, #8
00863bf4  05 00 a0 e1                                      mov r0, r5
00863bf8  01 49 eb eb                                      bl #0x336004
00863bfc  10 b2 ea eb                                      bl #0x310444
00863c00  10 30 94 e5                                      ldr r3, [r4, #0x10]
00863c04  01 30 43 e2                                      sub r3, r3, #1
00863c08  10 30 84 e5                                      str r3, [r4, #0x10]
00863c0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00863c10  e9 ff ff 1a                                      bne #0x863bbc
00863c14  10 30 95 e5                                      ldr r3, [r5, #0x10]
00863c18  02 00 53 e1                                      cmp r3, r2
00863c1c  e6 ff ff 9a                                      bls #0x863bbc
00863c20  e4 ff ff ea                                      b #0x863bb8

; FUNCTION 0x008648f4, declared_size=212, range_size=212, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer3AddEPNS_9HandlableE
; demangled: vox::HandlableContainer::Add(vox::Handlable*)
; decoder-mode: arm
008648f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008648f8  00 50 51 e2                                      subs r5, r1, #0
008648fc  18 d0 4d e2                                      sub sp, sp, #0x18
00864900  29 00 00 0a                                      beq #0x8649ac
00864904  04 c0 90 e5                                      ldr ip, [r0, #4]
00864908  08 60 95 e5                                      ldr r6, [r5, #8]
0086490c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00864910  00 00 5c e3                                      cmp ip, #0
00864914  00 c0 a0 01                                      moveq ip, r0
00864918  12 00 00 0a                                      beq #0x864968
0086491c  00 20 a0 e1                                      mov r2, r0
00864920  14 30 9c e5                                      ldr r3, [ip, #0x14]
00864924  04 00 53 e1                                      cmp r3, r4
00864928  09 00 00 ba                                      blt #0x864954
0086492c  05 00 00 0a                                      beq #0x864948
00864930  08 30 9c e5                                      ldr r3, [ip, #8]
00864934  0c 20 a0 e1                                      mov r2, ip
00864938  00 00 53 e3                                      cmp r3, #0
0086493c  09 00 00 0a                                      beq #0x864968
00864940  03 c0 a0 e1                                      mov ip, r3
00864944  f5 ff ff ea                                      b #0x864920
00864948  10 30 9c e5                                      ldr r3, [ip, #0x10]
0086494c  06 00 53 e1                                      cmp r3, r6
00864950  f6 ff ff 2a                                      bhs #0x864930
00864954  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00864958  02 c0 a0 e1                                      mov ip, r2
0086495c  0c 20 a0 e1                                      mov r2, ip
00864960  00 00 53 e3                                      cmp r3, #0
00864964  f5 ff ff 1a                                      bne #0x864940
00864968  0c 00 50 e1                                      cmp r0, ip
0086496c  03 00 00 0a                                      beq #0x864980
00864970  14 20 9c e5                                      ldr r2, [ip, #0x14]
00864974  0c 30 a0 e1                                      mov r3, ip
00864978  04 00 52 e1                                      cmp r2, r4
0086497c  0c 00 00 da                                      ble #0x8649b4
00864980  00 10 a0 e1                                      mov r1, r0
00864984  0d 30 a0 e1                                      mov r3, sp
00864988  00 e0 a0 e3                                      mov lr, #0
0086498c  10 00 8d e2                                      add r0, sp, #0x10
00864990  14 20 8d e2                                      add r2, sp, #0x14
00864994  00 60 8d e5                                      str r6, [sp]
00864998  10 40 8d e9                                      stmib sp, {r4, lr}
0086499c  14 c0 8d e5                                      str ip, [sp, #0x14]
008649a0  df fe ff eb                                      bl #0x864524
008649a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
008649a8  18 50 83 e5                                      str r5, [r3, #0x18]
008649ac  18 d0 8d e2                                      add sp, sp, #0x18
008649b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008649b4  fb ff ff 1a                                      bne #0x8649a8
008649b8  10 20 9c e5                                      ldr r2, [ip, #0x10]
008649bc  06 00 52 e1                                      cmp r2, r6
008649c0  f8 ff ff 9a                                      bls #0x8649a8
008649c4  ed ff ff ea                                      b #0x864980

; FUNCTION 0x008649c8, declared_size=184, range_size=184, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer5MergeEPS0_
; demangled: vox::HandlableContainer::Merge(vox::HandlableContainer*)
; decoder-mode: arm
008649c8  30 40 2d e9                                      push {r4, r5, lr}
008649cc  0c d0 4d e2                                      sub sp, sp, #0xc
008649d0  01 50 a0 e1                                      mov r5, r1
008649d4  00 40 a0 e1                                      mov r4, r0
008649d8  04 00 8d e2                                      add r0, sp, #4
008649dc  0c fa ff eb                                      bl #0x863214
008649e0  0d 00 a0 e1                                      mov r0, sp
008649e4  05 10 a0 e1                                      mov r1, r5
008649e8  0c fa ff eb                                      bl #0x863220
008649ec  09 00 9d e8                                      ldm sp, {r0, r3}
008649f0  03 00 50 e1                                      cmp r0, r3
008649f4  11 00 00 0a                                      beq #0x864a40
008649f8  18 10 93 e5                                      ldr r1, [r3, #0x18]
008649fc  00 00 51 e3                                      cmp r1, #0
00864a00  02 00 00 0a                                      beq #0x864a10
00864a04  04 00 a0 e1                                      mov r0, r4
00864a08  b9 ff ff eb                                      bl #0x8648f4
00864a0c  09 00 9d e8                                      ldm sp, {r0, r3}
00864a10  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00864a14  00 00 52 e3                                      cmp r2, #0
00864a18  01 00 00 1a                                      bne #0x864a24
00864a1c  09 00 00 ea                                      b #0x864a48
00864a20  03 20 a0 e1                                      mov r2, r3
00864a24  08 30 92 e5                                      ldr r3, [r2, #8]
00864a28  00 00 53 e3                                      cmp r3, #0
00864a2c  fb ff ff 1a                                      bne #0x864a20
00864a30  02 30 a0 e1                                      mov r3, r2
00864a34  04 30 8d e5                                      str r3, [sp, #4]
00864a38  03 00 50 e1                                      cmp r0, r3
00864a3c  ed ff ff 1a                                      bne #0x8649f8
00864a40  0c d0 8d e2                                      add sp, sp, #0xc
00864a44  30 80 bd e8                                      pop {r4, r5, pc}
00864a48  04 10 93 e5                                      ldr r1, [r3, #4]
00864a4c  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00864a50  0c 00 53 e1                                      cmp r3, ip
00864a54  05 00 00 1a                                      bne #0x864a70
00864a58  01 30 a0 e1                                      mov r3, r1
00864a5c  04 10 91 e5                                      ldr r1, [r1, #4]
00864a60  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00864a64  03 00 52 e1                                      cmp r2, r3
00864a68  fa ff ff 0a                                      beq #0x864a58
00864a6c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00864a70  02 00 51 e1                                      cmp r1, r2
00864a74  01 30 a0 11                                      movne r3, r1
00864a78  04 30 8d e5                                      str r3, [sp, #4]
00864a7c  ed ff ff ea                                      b #0x864a38

; FUNCTION 0x0086a504, declared_size=204, range_size=204, mode=arm
; class-group: vox::HandlableContainer
; alias: _ZN3vox18HandlableContainer6DetachEx
; demangled: vox::HandlableContainer::Detach(long long)
; decoder-mode: arm
0086a504  70 40 2d e9                                      push {r4, r5, r6, lr}
0086a508  04 c0 90 e5                                      ldr ip, [r0, #4]
0086a50c  00 40 a0 e1                                      mov r4, r0
0086a510  00 00 5c e3                                      cmp ip, #0
0086a514  16 00 00 0a                                      beq #0x86a574
0086a518  14 10 9c e5                                      ldr r1, [ip, #0x14]
0086a51c  03 00 51 e1                                      cmp r1, r3
0086a520  09 00 00 ba                                      blt #0x86a54c
0086a524  05 00 00 0a                                      beq #0x86a540
0086a528  08 10 9c e5                                      ldr r1, [ip, #8]
0086a52c  0c 00 a0 e1                                      mov r0, ip
0086a530  00 00 51 e3                                      cmp r1, #0
0086a534  09 00 00 0a                                      beq #0x86a560
0086a538  01 c0 a0 e1                                      mov ip, r1
0086a53c  f5 ff ff ea                                      b #0x86a518
0086a540  10 10 9c e5                                      ldr r1, [ip, #0x10]
0086a544  02 00 51 e1                                      cmp r1, r2
0086a548  f6 ff ff 2a                                      bhs #0x86a528
0086a54c  0c 10 9c e5                                      ldr r1, [ip, #0xc]
0086a550  00 c0 a0 e1                                      mov ip, r0
0086a554  0c 00 a0 e1                                      mov r0, ip
0086a558  00 00 51 e3                                      cmp r1, #0
0086a55c  f5 ff ff 1a                                      bne #0x86a538
0086a560  0c 00 54 e1                                      cmp r4, ip
0086a564  16 00 00 0a                                      beq #0x86a5c4
0086a568  14 10 9c e5                                      ldr r1, [ip, #0x14]
0086a56c  03 00 51 e1                                      cmp r1, r3
0086a570  0e 00 00 da                                      ble #0x86a5b0
0086a574  04 c0 a0 e1                                      mov ip, r4
0086a578  0c 00 54 e1                                      cmp r4, ip
0086a57c  10 00 00 0a                                      beq #0x86a5c4
0086a580  0c 30 84 e2                                      add r3, r4, #0xc
0086a584  0c 00 a0 e1                                      mov r0, ip
0086a588  04 10 84 e2                                      add r1, r4, #4
0086a58c  08 20 84 e2                                      add r2, r4, #8
0086a590  18 50 9c e5                                      ldr r5, [ip, #0x18]
0086a594  9a 2e eb eb                                      bl #0x336004
0086a598  a9 97 ea eb                                      bl #0x310444
0086a59c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0086a5a0  05 00 a0 e1                                      mov r0, r5
0086a5a4  01 30 43 e2                                      sub r3, r3, #1
0086a5a8  10 30 84 e5                                      str r3, [r4, #0x10]
0086a5ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
0086a5b0  f0 ff ff 1a                                      bne #0x86a578
0086a5b4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0086a5b8  02 00 53 e1                                      cmp r3, r2
0086a5bc  ed ff ff 9a                                      bls #0x86a578
0086a5c0  eb ff ff ea                                      b #0x86a574
0086a5c4  00 50 a0 e3                                      mov r5, #0
0086a5c8  05 00 a0 e1                                      mov r0, r5
0086a5cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
