; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00386144, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZNK7gameswf8weak_ptrINS_9characterEE11check_proxyEv
; demangled: gameswf::weak_ptr<gameswf::character>::check_proxy() const
; decoder-mode: arm
00386144  10 40 2d e9                                      push {r4, lr}
00386148  04 30 90 e5                                      ldr r3, [r0, #4]
0038614c  00 40 a0 e1                                      mov r4, r0
00386150  00 00 53 e3                                      cmp r3, #0
00386154  0c 00 00 0a                                      beq #0x38618c
00386158  00 00 90 e5                                      ldr r0, [r0]
0038615c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00386160  00 00 53 e3                                      cmp r3, #0
00386164  08 00 00 1a                                      bne #0x38618c
00386168  00 10 90 e5                                      ldr r1, [r0]
0038616c  01 10 41 e2                                      sub r1, r1, #1
00386170  00 00 51 e3                                      cmp r1, #0
00386174  00 10 80 e5                                      str r1, [r0]
00386178  00 00 00 1a                                      bne #0x386180
0038617c  6d 32 0f eb                                      bl #0x752b38
00386180  00 30 a0 e3                                      mov r3, #0
00386184  04 30 84 e5                                      str r3, [r4, #4]
00386188  00 30 84 e5                                      str r3, [r4]
0038618c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00421f74, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZN7gameswf8weak_ptrINS_9characterEEaSEPS1_.clone.13
; demangled: gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*) [clone .clone.13]
; decoder-mode: arm
00421f74  00 10 a0 e3                                      mov r1, #0
00421f78  04 10 80 e5                                      str r1, [r0, #4]
00421f7c  c0 f7 ff ea                                      b #0x41fe84

; FUNCTION 0x00427ba8, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZN7gameswf8weak_ptrINS_9characterEEaSEPS1_
; demangled: gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*)
; decoder-mode: arm
00427ba8  70 40 2d e9                                      push {r4, r5, r6, lr}
00427bac  00 00 51 e3                                      cmp r1, #0
00427bb0  00 50 a0 e1                                      mov r5, r0
00427bb4  04 10 85 e5                                      str r1, [r5, #4]
00427bb8  13 00 00 0a                                      beq #0x427c0c
00427bbc  01 00 a0 e1                                      mov r0, r1
00427bc0  31 cb 0c eb                                      bl #0x75a88c
00427bc4  00 40 a0 e1                                      mov r4, r0
00427bc8  00 00 95 e5                                      ldr r0, [r5]
00427bcc  00 00 54 e1                                      cmp r4, r0
00427bd0  18 00 00 0a                                      beq #0x427c38
00427bd4  00 00 50 e3                                      cmp r0, #0
00427bd8  04 00 00 0a                                      beq #0x427bf0
00427bdc  00 10 90 e5                                      ldr r1, [r0]
00427be0  01 10 41 e2                                      sub r1, r1, #1
00427be4  00 00 51 e3                                      cmp r1, #0
00427be8  00 10 80 e5                                      str r1, [r0]
00427bec  12 00 00 0a                                      beq #0x427c3c
00427bf0  00 00 54 e3                                      cmp r4, #0
00427bf4  00 40 85 e5                                      str r4, [r5]
00427bf8  0e 00 00 0a                                      beq #0x427c38
00427bfc  00 30 94 e5                                      ldr r3, [r4]
00427c00  01 30 83 e2                                      add r3, r3, #1
00427c04  00 30 84 e5                                      str r3, [r4]
00427c08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00427c0c  00 00 90 e5                                      ldr r0, [r0]
00427c10  00 00 50 e3                                      cmp r0, #0
00427c14  07 00 00 0a                                      beq #0x427c38
00427c18  00 30 90 e5                                      ldr r3, [r0]
00427c1c  01 30 43 e2                                      sub r3, r3, #1
00427c20  00 00 53 e3                                      cmp r3, #0
00427c24  00 30 80 e5                                      str r3, [r0]
00427c28  00 00 00 1a                                      bne #0x427c30
00427c2c  c1 ab 0c eb                                      bl #0x752b38
00427c30  00 30 a0 e3                                      mov r3, #0
00427c34  00 30 85 e5                                      str r3, [r5]
00427c38  70 80 bd e8                                      pop {r4, r5, r6, pc}
00427c3c  bd ab 0c eb                                      bl #0x752b38
00427c40  ea ff ff ea                                      b #0x427bf0

; FUNCTION 0x0042da98, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZN7gameswf8weak_ptrINS_9characterEEaSEPS1_.clone.4
; demangled: gameswf::weak_ptr<gameswf::character>::operator=(gameswf::character*) [clone .clone.4]
; decoder-mode: arm
0042da98  00 10 a0 e3                                      mov r1, #0
0042da9c  04 10 80 e5                                      str r1, [r0, #4]
0042daa0  f7 c8 ff ea                                      b #0x41fe84

; FUNCTION 0x004381d0, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZNK7gameswf8weak_ptrINS_9characterEEptEv
; demangled: gameswf::weak_ptr<gameswf::character>::operator->() const
; decoder-mode: arm
004381d0  10 40 2d e9                                      push {r4, lr}
004381d4  00 40 a0 e1                                      mov r4, r0
004381d8  04 00 90 e5                                      ldr r0, [r0, #4]
004381dc  00 00 50 e3                                      cmp r0, #0
004381e0  03 00 00 0a                                      beq #0x4381f4
004381e4  00 30 94 e5                                      ldr r3, [r4]
004381e8  04 20 d3 e5                                      ldrb r2, [r3, #4]
004381ec  00 00 52 e3                                      cmp r2, #0
004381f0  00 00 00 0a                                      beq #0x4381f8
004381f4  10 80 bd e8                                      pop {r4, pc}
004381f8  00 10 93 e5                                      ldr r1, [r3]
004381fc  01 10 41 e2                                      sub r1, r1, #1
00438200  00 00 51 e3                                      cmp r1, #0
00438204  00 10 83 e5                                      str r1, [r3]
00438208  01 00 00 1a                                      bne #0x438214
0043820c  03 00 a0 e1                                      mov r0, r3
00438210  48 6a 0c eb                                      bl #0x752b38
00438214  00 00 a0 e3                                      mov r0, #0
00438218  04 00 84 e5                                      str r0, [r4, #4]
0043821c  00 00 84 e5                                      str r0, [r4]
00438220  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00438224, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::weak_ptr<gameswf::character>
; alias: _ZNK7gameswf8weak_ptrINS_9characterEE7get_ptrEv
; demangled: gameswf::weak_ptr<gameswf::character>::get_ptr() const
; decoder-mode: arm
00438224  10 40 2d e9                                      push {r4, lr}
00438228  00 40 a0 e1                                      mov r4, r0
0043822c  04 00 90 e5                                      ldr r0, [r0, #4]
00438230  00 00 50 e3                                      cmp r0, #0
00438234  03 00 00 0a                                      beq #0x438248
00438238  00 30 94 e5                                      ldr r3, [r4]
0043823c  04 20 d3 e5                                      ldrb r2, [r3, #4]
00438240  00 00 52 e3                                      cmp r2, #0
00438244  00 00 00 0a                                      beq #0x43824c
00438248  10 80 bd e8                                      pop {r4, pc}
0043824c  00 10 93 e5                                      ldr r1, [r3]
00438250  01 10 41 e2                                      sub r1, r1, #1
00438254  00 00 51 e3                                      cmp r1, #0
00438258  00 10 83 e5                                      str r1, [r3]
0043825c  01 00 00 1a                                      bne #0x438268
00438260  03 00 a0 e1                                      mov r0, r3
00438264  33 6a 0c eb                                      bl #0x752b38
00438268  00 00 a0 e3                                      mov r0, #0
0043826c  04 00 84 e5                                      str r0, [r4, #4]
00438270  00 00 84 e5                                      str r0, [r4]
00438274  10 80 bd e8                                      pop {r4, pc}
