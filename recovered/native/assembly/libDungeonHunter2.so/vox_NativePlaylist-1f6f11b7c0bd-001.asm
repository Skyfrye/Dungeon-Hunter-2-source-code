; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00881e4c, declared_size=80, range_size=80, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistC2EPNS_13PlaylistInfosE
; demangled: vox::NativePlaylist::NativePlaylist(vox::PlaylistInfos*)
; decoder-mode: arm
00881e4c  01 20 a0 e3                                      mov r2, #1
00881e50  00 20 c0 e5                                      strb r2, [r0]
00881e54  00 c0 91 e5                                      ldr ip, [r1]
00881e58  00 20 a0 e3                                      mov r2, #0
00881e5c  04 c0 80 e5                                      str ip, [r0, #4]
00881e60  04 10 91 e5                                      ldr r1, [r1, #4]
00881e64  38 20 80 e5                                      str r2, [r0, #0x38]
00881e68  0c 20 80 e5                                      str r2, [r0, #0xc]
00881e6c  20 10 80 e5                                      str r1, [r0, #0x20]
00881e70  08 10 80 e5                                      str r1, [r0, #8]
00881e74  10 20 80 e5                                      str r2, [r0, #0x10]
00881e78  18 20 80 e5                                      str r2, [r0, #0x18]
00881e7c  1c 20 80 e5                                      str r2, [r0, #0x1c]
00881e80  24 20 80 e5                                      str r2, [r0, #0x24]
00881e84  28 20 80 e5                                      str r2, [r0, #0x28]
00881e88  2c 20 80 e5                                      str r2, [r0, #0x2c]
00881e8c  30 20 80 e5                                      str r2, [r0, #0x30]
00881e90  34 20 80 e5                                      str r2, [r0, #0x34]
00881e94  14 10 80 e5                                      str r1, [r0, #0x14]
00881e98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881e9c, declared_size=80, range_size=80, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistC1EPNS_13PlaylistInfosE
; demangled: vox::NativePlaylist::NativePlaylist(vox::PlaylistInfos*)
; decoder-mode: arm
00881e9c  01 20 a0 e3                                      mov r2, #1
00881ea0  00 20 c0 e5                                      strb r2, [r0]
00881ea4  00 c0 91 e5                                      ldr ip, [r1]
00881ea8  00 20 a0 e3                                      mov r2, #0
00881eac  04 c0 80 e5                                      str ip, [r0, #4]
00881eb0  04 10 91 e5                                      ldr r1, [r1, #4]
00881eb4  38 20 80 e5                                      str r2, [r0, #0x38]
00881eb8  0c 20 80 e5                                      str r2, [r0, #0xc]
00881ebc  20 10 80 e5                                      str r1, [r0, #0x20]
00881ec0  08 10 80 e5                                      str r1, [r0, #8]
00881ec4  10 20 80 e5                                      str r2, [r0, #0x10]
00881ec8  18 20 80 e5                                      str r2, [r0, #0x18]
00881ecc  1c 20 80 e5                                      str r2, [r0, #0x1c]
00881ed0  24 20 80 e5                                      str r2, [r0, #0x24]
00881ed4  28 20 80 e5                                      str r2, [r0, #0x28]
00881ed8  2c 20 80 e5                                      str r2, [r0, #0x2c]
00881edc  30 20 80 e5                                      str r2, [r0, #0x30]
00881ee0  34 20 80 e5                                      str r2, [r0, #0x34]
00881ee4  14 10 80 e5                                      str r1, [r0, #0x14]
00881ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881eec, declared_size=16, range_size=16, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist17GetCurrentElementEv
; demangled: vox::NativePlaylist::GetCurrentElement()
; decoder-mode: arm
00881eec  30 30 90 e5                                      ldr r3, [r0, #0x30]
00881ef0  10 20 90 e5                                      ldr r2, [r0, #0x10]
00881ef4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00881ef8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881efc, declared_size=8, range_size=8, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist18GetCurrentPositionEv
; demangled: vox::NativePlaylist::GetCurrentPosition()
; decoder-mode: arm
00881efc  10 00 90 e5                                      ldr r0, [r0, #0x10]
00881f00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881f04, declared_size=60, range_size=60, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist8GetStateEPNS_13PlaylistStateE
; demangled: vox::NativePlaylist::GetState(vox::PlaylistState*)
; decoder-mode: arm
00881f04  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00881f08  24 20 80 e2                                      add r2, r0, #0x24
00881f0c  00 30 81 e5                                      str r3, [r1]
00881f10  10 30 90 e5                                      ldr r3, [r0, #0x10]
00881f14  04 30 81 e5                                      str r3, [r1, #4]
00881f18  14 30 90 e5                                      ldr r3, [r0, #0x14]
00881f1c  08 30 81 e5                                      str r3, [r1, #8]
00881f20  18 30 90 e5                                      ldr r3, [r0, #0x18]
00881f24  0c 30 81 e5                                      str r3, [r1, #0xc]
00881f28  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00881f2c  10 30 81 e5                                      str r3, [r1, #0x10]
00881f30  20 30 90 e5                                      ldr r3, [r0, #0x20]
00881f34  18 20 81 e5                                      str r2, [r1, #0x18]
00881f38  14 30 81 e5                                      str r3, [r1, #0x14]
00881f3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00881f40, declared_size=56, range_size=56, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist18GetPlaylistElementEi
; demangled: vox::NativePlaylist::GetPlaylistElement(int)
; decoder-mode: arm
00881f40  14 30 90 e5                                      ldr r3, [r0, #0x14]
00881f44  00 00 53 e3                                      cmp r3, #0
00881f48  01 00 00 1a                                      bne #0x881f54
00881f4c  00 00 a0 e3                                      mov r0, #0
00881f50  1e ff 2f e1                                      bx lr
00881f54  00 00 51 e3                                      cmp r1, #0
00881f58  fb ff ff ba                                      blt #0x881f4c
00881f5c  34 20 90 e5                                      ldr r2, [r0, #0x34]
00881f60  30 30 90 e5                                      ldr r3, [r0, #0x30]
00881f64  02 20 63 e0                                      rsb r2, r3, r2
00881f68  42 01 51 e1                                      cmp r1, r2, asr #2
00881f6c  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
00881f70  1e ff 2f b1                                      bxlt lr
00881f74  f4 ff ff ea                                      b #0x881f4c

; FUNCTION 0x00881f78, declared_size=548, range_size=548, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist18GetPlaylistElementEv
; demangled: vox::NativePlaylist::GetPlaylistElement()
; decoder-mode: arm
00881f78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00881f7c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00881f80  28 60 90 e5                                      ldr r6, [r0, #0x28]
00881f84  14 20 90 e5                                      ldr r2, [r0, #0x14]
00881f88  00 40 a0 e1                                      mov r4, r0
00881f8c  06 60 63 e0                                      rsb r6, r3, r6
00881f90  00 00 52 e3                                      cmp r2, #0
00881f94  46 61 a0 e1                                      asr r6, r6, #2
00881f98  01 00 00 1a                                      bne #0x881fa4
00881f9c  00 00 a0 e3                                      mov r0, #0
00881fa0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00881fa4  04 50 90 e5                                      ldr r5, [r0, #4]
00881fa8  00 00 55 e3                                      cmp r5, #0
00881fac  00 70 a0 13                                      movne r7, #0
00881fb0  00 00 e0 13                                      mvnne r0, #0
00881fb4  07 80 a0 11                                      movne r8, r7
00881fb8  3f 00 00 0a                                      beq #0x8820bc
00881fbc  06 00 57 e1                                      cmp r7, r6
00881fc0  00 30 a0 a3                                      movge r3, #0
00881fc4  01 30 a0 b3                                      movlt r3, #1
00881fc8  01 00 70 e3                                      cmn r0, #1
00881fcc  00 30 a0 13                                      movne r3, #0
00881fd0  00 00 53 e3                                      cmp r3, #0
00881fd4  68 00 00 0a                                      beq #0x88217c
00881fd8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00881fdc  24 30 94 e5                                      ldr r3, [r4, #0x24]
00881fe0  01 70 87 e2                                      add r7, r7, #1
00881fe4  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00881fe8  03 00 a0 e1                                      mov r0, r3
00881fec  00 30 93 e5                                      ldr r3, [r3]
00881ff0  0f e0 a0 e1                                      mov lr, pc
00881ff4  08 f0 93 e5                                      ldr pc, [r3, #8]
00881ff8  06 00 57 e1                                      cmp r7, r6
00881ffc  01 00 70 03                                      cmneq r0, #1
00882000  2a 00 00 1a                                      bne #0x8820b0
00882004  24 30 94 e5                                      ldr r3, [r4, #0x24]
00882008  28 20 94 e5                                      ldr r2, [r4, #0x28]
0088200c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00882010  02 20 63 e0                                      rsb r2, r3, r2
00882014  20 10 84 e5                                      str r1, [r4, #0x20]
00882018  22 21 b0 e1                                      lsrs r2, r2, #2
0088201c  01 10 41 e2                                      sub r1, r1, #1
00882020  14 10 84 e5                                      str r1, [r4, #0x14]
00882024  0d 00 00 0a                                      beq #0x882060
00882028  00 50 a0 e3                                      mov r5, #0
0088202c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00882030  01 10 a0 e3                                      mov r1, #1
00882034  01 50 85 e0                                      add r5, r5, r1
00882038  03 00 a0 e1                                      mov r0, r3
0088203c  00 30 93 e5                                      ldr r3, [r3]
00882040  0f e0 a0 e1                                      mov lr, pc
00882044  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00882048  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088204c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00882050  02 20 63 e0                                      rsb r2, r3, r2
00882054  42 01 55 e1                                      cmp r5, r2, asr #2
00882058  f3 ff ff 3a                                      blo #0x88202c
0088205c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00882060  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00882064  00 00 51 e3                                      cmp r1, #0
00882068  0c 80 84 e5                                      str r8, [r4, #0xc]
0088206c  18 20 84 e5                                      str r2, [r4, #0x18]
00882070  08 10 a0 01                                      moveq r1, r8
00882074  00 20 a0 e3                                      mov r2, #0
00882078  00 00 e0 03                                      mvneq r0, #0
0088207c  06 00 00 1a                                      bne #0x88209c
00882080  01 30 82 e2                                      add r3, r2, #1
00882084  06 00 53 e1                                      cmp r3, r6
00882088  03 20 a0 b1                                      movlt r2, r3
0088208c  08 20 a0 a1                                      movge r2, r8
00882090  18 10 84 e5                                      str r1, [r4, #0x18]
00882094  0c 20 84 e5                                      str r2, [r4, #0xc]
00882098  c7 ff ff ea                                      b #0x881fbc
0088209c  00 30 93 e5                                      ldr r3, [r3]
008820a0  03 00 a0 e1                                      mov r0, r3
008820a4  00 30 93 e5                                      ldr r3, [r3]
008820a8  0f e0 a0 e1                                      mov lr, pc
008820ac  08 f0 93 e5                                      ldr pc, [r3, #8]
008820b0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008820b4  02 10 a0 e1                                      mov r1, r2
008820b8  f0 ff ff ea                                      b #0x882080
008820bc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008820c0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
008820c4  03 00 a0 e1                                      mov r0, r3
008820c8  00 30 93 e5                                      ldr r3, [r3]
008820cc  0f e0 a0 e1                                      mov lr, pc
008820d0  08 f0 93 e5                                      ldr pc, [r3, #8]
008820d4  01 00 70 e3                                      cmn r0, #1
008820d8  27 00 00 1a                                      bne #0x88217c
008820dc  28 00 94 e5                                      ldr r0, [r4, #0x28]
008820e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
008820e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
008820e8  00 00 63 e0                                      rsb r0, r3, r0
008820ec  01 20 81 e2                                      add r2, r1, #1
008820f0  40 01 a0 e1                                      asr r0, r0, #2
008820f4  00 00 52 e1                                      cmp r2, r0
008820f8  18 10 84 e5                                      str r1, [r4, #0x18]
008820fc  0c 20 84 e5                                      str r2, [r4, #0xc]
00882100  14 00 00 ba                                      blt #0x882158
00882104  14 10 94 e5                                      ldr r1, [r4, #0x14]
00882108  00 00 50 e3                                      cmp r0, #0
0088210c  0c 50 84 e5                                      str r5, [r4, #0xc]
00882110  20 10 84 e5                                      str r1, [r4, #0x20]
00882114  01 10 41 e2                                      sub r1, r1, #1
00882118  14 10 84 e5                                      str r1, [r4, #0x14]
0088211c  03 20 a0 e1                                      mov r2, r3
00882120  0d 00 00 0a                                      beq #0x88215c
00882124  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
00882128  01 10 a0 e3                                      mov r1, #1
0088212c  01 50 85 e0                                      add r5, r5, r1
00882130  03 00 a0 e1                                      mov r0, r3
00882134  00 30 93 e5                                      ldr r3, [r3]
00882138  0f e0 a0 e1                                      mov lr, pc
0088213c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00882140  24 30 94 e5                                      ldr r3, [r4, #0x24]
00882144  28 10 94 e5                                      ldr r1, [r4, #0x28]
00882148  03 20 a0 e1                                      mov r2, r3
0088214c  01 10 63 e0                                      rsb r1, r3, r1
00882150  41 01 55 e1                                      cmp r5, r1, asr #2
00882154  f2 ff ff 3a                                      blo #0x882124
00882158  14 10 94 e5                                      ldr r1, [r4, #0x14]
0088215c  00 00 51 e3                                      cmp r1, #0
00882160  8d ff ff 0a                                      beq #0x881f9c
00882164  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00882168  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0088216c  03 00 a0 e1                                      mov r0, r3
00882170  00 30 93 e5                                      ldr r3, [r3]
00882174  0f e0 a0 e1                                      mov lr, pc
00882178  08 f0 93 e5                                      ldr pc, [r3, #8]
0088217c  00 00 50 e3                                      cmp r0, #0
00882180  85 ff ff ba                                      blt #0x881f9c
00882184  10 20 94 e5                                      ldr r2, [r4, #0x10]
00882188  30 30 94 e5                                      ldr r3, [r4, #0x30]
0088218c  10 00 84 e5                                      str r0, [r4, #0x10]
00882190  1c 20 84 e5                                      str r2, [r4, #0x1c]
00882194  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
00882198  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088219c, declared_size=8, range_size=8, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist7IsValidEv
; demangled: vox::NativePlaylist::IsValid()
; decoder-mode: arm
0088219c  00 00 d0 e5                                      ldrb r0, [r0]
008821a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008821a4, declared_size=324, range_size=324, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist17PeekAtNextElementEv
; demangled: vox::NativePlaylist::PeekAtNextElement()
; decoder-mode: arm
008821a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008821a8  14 80 90 e5                                      ldr r8, [r0, #0x14]
008821ac  24 30 90 e5                                      ldr r3, [r0, #0x24]
008821b0  28 60 90 e5                                      ldr r6, [r0, #0x28]
008821b4  00 00 58 e3                                      cmp r8, #0
008821b8  00 40 a0 e1                                      mov r4, r0
008821bc  06 60 63 e0                                      rsb r6, r3, r6
008821c0  0c 50 90 e5                                      ldr r5, [r0, #0xc]
008821c4  46 61 a0 e1                                      asr r6, r6, #2
008821c8  01 00 00 1a                                      bne #0x8821d4
008821cc  00 00 a0 e3                                      mov r0, #0
008821d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008821d4  04 70 90 e5                                      ldr r7, [r0, #4]
008821d8  00 00 57 e3                                      cmp r7, #0
008821dc  00 70 a0 13                                      movne r7, #0
008821e0  00 00 e0 13                                      mvnne r0, #0
008821e4  02 00 00 1a                                      bne #0x8821f4
008821e8  21 00 00 ea                                      b #0x882274
008821ec  05 00 56 e1                                      cmp r6, r5
008821f0  00 50 a0 d3                                      movle r5, #0
008821f4  06 00 57 e1                                      cmp r7, r6
008821f8  00 30 a0 a3                                      movge r3, #0
008821fc  01 30 a0 b3                                      movlt r3, #1
00882200  01 00 70 e3                                      cmn r0, #1
00882204  00 10 a0 e3                                      mov r1, #0
00882208  00 30 a0 13                                      movne r3, #0
0088220c  01 00 53 e1                                      cmp r3, r1
00882210  01 70 87 e2                                      add r7, r7, #1
00882214  2a 00 00 0a                                      beq #0x8822c4
00882218  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088221c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00882220  01 50 85 e2                                      add r5, r5, #1
00882224  03 00 a0 e1                                      mov r0, r3
00882228  00 30 93 e5                                      ldr r3, [r3]
0088222c  0f e0 a0 e1                                      mov lr, pc
00882230  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00882234  06 00 57 e1                                      cmp r7, r6
00882238  01 00 70 03                                      cmneq r0, #1
0088223c  ea ff ff 1a                                      bne #0x8821ec
00882240  01 80 58 e2                                      subs r8, r8, #1
00882244  01 50 a0 03                                      moveq r5, #1
00882248  00 00 e0 03                                      mvneq r0, #0
0088224c  e6 ff ff 0a                                      beq #0x8821ec
00882250  24 30 94 e5                                      ldr r3, [r4, #0x24]
00882254  00 10 a0 e3                                      mov r1, #0
00882258  01 50 a0 e3                                      mov r5, #1
0088225c  00 30 93 e5                                      ldr r3, [r3]
00882260  03 00 a0 e1                                      mov r0, r3
00882264  00 30 93 e5                                      ldr r3, [r3]
00882268  0f e0 a0 e1                                      mov lr, pc
0088226c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00882270  dd ff ff ea                                      b #0x8821ec
00882274  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00882278  07 10 a0 e1                                      mov r1, r7
0088227c  03 00 a0 e1                                      mov r0, r3
00882280  00 30 93 e5                                      ldr r3, [r3]
00882284  0f e0 a0 e1                                      mov lr, pc
00882288  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0088228c  01 00 70 e3                                      cmn r0, #1
00882290  0b 00 00 1a                                      bne #0x8822c4
00882294  24 30 94 e5                                      ldr r3, [r4, #0x24]
00882298  28 20 94 e5                                      ldr r2, [r4, #0x28]
0088229c  01 50 85 e2                                      add r5, r5, #1
008822a0  02 20 63 e0                                      rsb r2, r3, r2
008822a4  42 01 55 e1                                      cmp r5, r2, asr #2
008822a8  0a 00 00 aa                                      bge #0x8822d8
008822ac  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
008822b0  01 10 a0 e3                                      mov r1, #1
008822b4  03 00 a0 e1                                      mov r0, r3
008822b8  00 30 93 e5                                      ldr r3, [r3]
008822bc  0f e0 a0 e1                                      mov lr, pc
008822c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008822c4  00 00 50 e3                                      cmp r0, #0
008822c8  bf ff ff ba                                      blt #0x8821cc
008822cc  30 30 94 e5                                      ldr r3, [r4, #0x30]
008822d0  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
008822d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008822d8  01 00 58 e3                                      cmp r8, #1
008822dc  ba ff ff 0a                                      beq #0x8821cc
008822e0  07 50 a0 e1                                      mov r5, r7
008822e4  f0 ff ff ea                                      b #0x8822ac

; FUNCTION 0x008822e8, declared_size=120, range_size=120, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist5ResetEv
; demangled: vox::NativePlaylist::Reset()
; decoder-mode: arm
008822e8  70 40 2d e9                                      push {r4, r5, r6, lr}
008822ec  24 30 90 e5                                      ldr r3, [r0, #0x24]
008822f0  28 60 90 e5                                      ldr r6, [r0, #0x28]
008822f4  00 50 a0 e1                                      mov r5, r0
008822f8  10 10 95 e5                                      ldr r1, [r5, #0x10]
008822fc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00882300  08 20 95 e5                                      ldr r2, [r5, #8]
00882304  06 60 63 e0                                      rsb r6, r3, r6
00882308  46 61 a0 e1                                      asr r6, r6, #2
0088230c  00 40 a0 e3                                      mov r4, #0
00882310  00 00 56 e3                                      cmp r6, #0
00882314  18 00 85 e5                                      str r0, [r5, #0x18]
00882318  1c 10 85 e5                                      str r1, [r5, #0x1c]
0088231c  20 20 85 e5                                      str r2, [r5, #0x20]
00882320  0c 40 85 e5                                      str r4, [r5, #0xc]
00882324  10 40 85 e5                                      str r4, [r5, #0x10]
00882328  14 20 85 e5                                      str r2, [r5, #0x14]
0088232c  01 00 00 ca                                      bgt #0x882338
00882330  09 00 00 ea                                      b #0x88235c
00882334  24 30 95 e5                                      ldr r3, [r5, #0x24]
00882338  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0088233c  00 10 a0 e3                                      mov r1, #0
00882340  01 40 84 e2                                      add r4, r4, #1
00882344  03 00 a0 e1                                      mov r0, r3
00882348  00 30 93 e5                                      ldr r3, [r3]
0088234c  0f e0 a0 e1                                      mov lr, pc
00882350  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00882354  06 00 54 e1                                      cmp r4, r6
00882358  f5 ff ff 1a                                      bne #0x882334
0088235c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00882360, declared_size=172, range_size=172, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist8SetStateERS0_
; demangled: vox::NativePlaylist::SetState(vox::NativePlaylist&)
; decoder-mode: arm
00882360  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00882364  00 30 d1 e5                                      ldrb r3, [r1]
00882368  24 20 90 e5                                      ldr r2, [r0, #0x24]
0088236c  28 70 90 e5                                      ldr r7, [r0, #0x28]
00882370  00 30 c0 e5                                      strb r3, [r0]
00882374  04 30 91 e5                                      ldr r3, [r1, #4]
00882378  07 70 62 e0                                      rsb r7, r2, r7
0088237c  47 71 b0 e1                                      asrs r7, r7, #2
00882380  04 30 80 e5                                      str r3, [r0, #4]
00882384  08 30 91 e5                                      ldr r3, [r1, #8]
00882388  01 60 a0 e1                                      mov r6, r1
0088238c  00 50 a0 e1                                      mov r5, r0
00882390  08 30 80 e5                                      str r3, [r0, #8]
00882394  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00882398  0c 30 80 e5                                      str r3, [r0, #0xc]
0088239c  10 30 91 e5                                      ldr r3, [r1, #0x10]
008823a0  10 30 80 e5                                      str r3, [r0, #0x10]
008823a4  14 30 91 e5                                      ldr r3, [r1, #0x14]
008823a8  14 30 80 e5                                      str r3, [r0, #0x14]
008823ac  18 30 91 e5                                      ldr r3, [r1, #0x18]
008823b0  18 30 80 e5                                      str r3, [r0, #0x18]
008823b4  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
008823b8  1c 30 80 e5                                      str r3, [r0, #0x1c]
008823bc  20 30 91 e5                                      ldr r3, [r1, #0x20]
008823c0  20 30 80 e5                                      str r3, [r0, #0x20]
008823c4  0f 00 00 0a                                      beq #0x882408
008823c8  00 40 a0 e3                                      mov r4, #0
008823cc  00 00 00 ea                                      b #0x8823d4
008823d0  24 20 95 e5                                      ldr r2, [r5, #0x24]
008823d4  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
008823d8  a7 fd ff eb                                      bl #0x881a7c
008823dc  24 30 95 e5                                      ldr r3, [r5, #0x24]
008823e0  24 20 96 e5                                      ldr r2, [r6, #0x24]
008823e4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
008823e8  04 11 92 e7                                      ldr r1, [r2, r4, lsl #2]
008823ec  01 40 84 e2                                      add r4, r4, #1
008823f0  03 00 a0 e1                                      mov r0, r3
008823f4  00 30 93 e5                                      ldr r3, [r3]
008823f8  0f e0 a0 e1                                      mov lr, pc
008823fc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00882400  07 00 54 e1                                      cmp r4, r7
00882404  f1 ff ff 1a                                      bne #0x8823d0
00882408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088240c, declared_size=60, range_size=60, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist18SetToPreviousStateEv
; demangled: vox::NativePlaylist::SetToPreviousState()
; decoder-mode: arm
0088240c  10 40 2d e9                                      push {r4, lr}
00882410  18 20 90 e5                                      ldr r2, [r0, #0x18]
00882414  24 30 90 e5                                      ldr r3, [r0, #0x24]
00882418  00 40 a0 e1                                      mov r4, r0
0088241c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00882420  03 00 a0 e1                                      mov r0, r3
00882424  00 30 93 e5                                      ldr r3, [r3]
00882428  0f e0 a0 e1                                      mov lr, pc
0088242c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00882430  18 10 84 e2                                      add r1, r4, #0x18
00882434  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
00882438  0c 10 84 e5                                      str r1, [r4, #0xc]
0088243c  10 20 84 e5                                      str r2, [r4, #0x10]
00882440  14 30 84 e5                                      str r3, [r4, #0x14]
00882444  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008825b8, declared_size=252, range_size=252, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistD1Ev
; demangled: vox::NativePlaylist::~NativePlaylist()
; decoder-mode: arm
008825b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008825bc  24 30 90 e5                                      ldr r3, [r0, #0x24]
008825c0  28 70 90 e5                                      ldr r7, [r0, #0x28]
008825c4  00 50 a0 e1                                      mov r5, r0
008825c8  07 70 63 e0                                      rsb r7, r3, r7
008825cc  47 71 a0 e1                                      asr r7, r7, #2
008825d0  00 00 57 e3                                      cmp r7, #0
008825d4  1c 00 00 da                                      ble #0x88264c
008825d8  00 40 a0 e3                                      mov r4, #0
008825dc  0e 00 00 ea                                      b #0x88261c
008825e0  24 30 95 e5                                      ldr r3, [r5, #0x24]
008825e4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
008825e8  00 00 53 e3                                      cmp r3, #0
008825ec  03 00 a0 11                                      movne r0, r3
008825f0  05 00 00 0a                                      beq #0x88260c
008825f4  00 30 93 e5                                      ldr r3, [r3]
008825f8  0f e0 a0 e1                                      mov lr, pc
008825fc  00 f0 93 e5                                      ldr pc, [r3]
00882600  24 30 95 e5                                      ldr r3, [r5, #0x24]
00882604  06 00 93 e7                                      ldr r0, [r3, r6]
00882608  8d 37 ea eb                                      bl #0x310444
0088260c  01 40 84 e2                                      add r4, r4, #1
00882610  07 00 54 e1                                      cmp r4, r7
00882614  0c 00 00 0a                                      beq #0x88264c
00882618  24 30 95 e5                                      ldr r3, [r5, #0x24]
0088261c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00882620  15 fd ff eb                                      bl #0x881a7c
00882624  00 00 50 e3                                      cmp r0, #0
00882628  04 61 a0 e1                                      lsl r6, r4, #2
0088262c  eb ff ff 0a                                      beq #0x8825e0
00882630  24 30 95 e5                                      ldr r3, [r5, #0x24]
00882634  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00882638  00 00 53 e2                                      subs r0, r3, #0
0088263c  ec ff ff 1a                                      bne #0x8825f4
00882640  01 40 84 e2                                      add r4, r4, #1
00882644  07 00 54 e1                                      cmp r4, r7
00882648  f2 ff ff 1a                                      bne #0x882618
0088264c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00882650  34 60 95 e5                                      ldr r6, [r5, #0x34]
00882654  06 60 63 e0                                      rsb r6, r3, r6
00882658  46 61 a0 e1                                      asr r6, r6, #2
0088265c  00 00 56 e3                                      cmp r6, #0
00882660  09 00 00 da                                      ble #0x88268c
00882664  00 40 a0 e3                                      mov r4, #0
00882668  00 00 00 ea                                      b #0x882670
0088266c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00882670  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00882674  01 40 84 e2                                      add r4, r4, #1
00882678  00 00 50 e3                                      cmp r0, #0
0088267c  00 00 00 0a                                      beq #0x882684
00882680  6f 37 ea eb                                      bl #0x310444
00882684  06 00 54 e1                                      cmp r4, r6
00882688  f7 ff ff 1a                                      bne #0x88266c
0088268c  30 00 95 e5                                      ldr r0, [r5, #0x30]
00882690  00 00 50 e3                                      cmp r0, #0
00882694  00 00 00 0a                                      beq #0x88269c
00882698  69 37 ea eb                                      bl #0x310444
0088269c  24 00 95 e5                                      ldr r0, [r5, #0x24]
008826a0  00 00 50 e3                                      cmp r0, #0
008826a4  00 00 00 0a                                      beq #0x8826ac
008826a8  65 37 ea eb                                      bl #0x310444
008826ac  05 00 a0 e1                                      mov r0, r5
008826b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088278c, declared_size=252, range_size=252, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistD2Ev
; demangled: vox::NativePlaylist::~NativePlaylist()
; decoder-mode: arm
0088278c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00882790  24 30 90 e5                                      ldr r3, [r0, #0x24]
00882794  28 70 90 e5                                      ldr r7, [r0, #0x28]
00882798  00 50 a0 e1                                      mov r5, r0
0088279c  07 70 63 e0                                      rsb r7, r3, r7
008827a0  47 71 a0 e1                                      asr r7, r7, #2
008827a4  00 00 57 e3                                      cmp r7, #0
008827a8  1c 00 00 da                                      ble #0x882820
008827ac  00 40 a0 e3                                      mov r4, #0
008827b0  0e 00 00 ea                                      b #0x8827f0
008827b4  24 30 95 e5                                      ldr r3, [r5, #0x24]
008827b8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
008827bc  00 00 53 e3                                      cmp r3, #0
008827c0  03 00 a0 11                                      movne r0, r3
008827c4  05 00 00 0a                                      beq #0x8827e0
008827c8  00 30 93 e5                                      ldr r3, [r3]
008827cc  0f e0 a0 e1                                      mov lr, pc
008827d0  00 f0 93 e5                                      ldr pc, [r3]
008827d4  24 30 95 e5                                      ldr r3, [r5, #0x24]
008827d8  06 00 93 e7                                      ldr r0, [r3, r6]
008827dc  18 37 ea eb                                      bl #0x310444
008827e0  01 40 84 e2                                      add r4, r4, #1
008827e4  07 00 54 e1                                      cmp r4, r7
008827e8  0c 00 00 0a                                      beq #0x882820
008827ec  24 30 95 e5                                      ldr r3, [r5, #0x24]
008827f0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
008827f4  a0 fc ff eb                                      bl #0x881a7c
008827f8  00 00 50 e3                                      cmp r0, #0
008827fc  04 61 a0 e1                                      lsl r6, r4, #2
00882800  eb ff ff 0a                                      beq #0x8827b4
00882804  24 30 95 e5                                      ldr r3, [r5, #0x24]
00882808  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0088280c  00 00 53 e2                                      subs r0, r3, #0
00882810  ec ff ff 1a                                      bne #0x8827c8
00882814  01 40 84 e2                                      add r4, r4, #1
00882818  07 00 54 e1                                      cmp r4, r7
0088281c  f2 ff ff 1a                                      bne #0x8827ec
00882820  30 30 95 e5                                      ldr r3, [r5, #0x30]
00882824  34 60 95 e5                                      ldr r6, [r5, #0x34]
00882828  06 60 63 e0                                      rsb r6, r3, r6
0088282c  46 61 a0 e1                                      asr r6, r6, #2
00882830  00 00 56 e3                                      cmp r6, #0
00882834  09 00 00 da                                      ble #0x882860
00882838  00 40 a0 e3                                      mov r4, #0
0088283c  00 00 00 ea                                      b #0x882844
00882840  30 30 95 e5                                      ldr r3, [r5, #0x30]
00882844  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00882848  01 40 84 e2                                      add r4, r4, #1
0088284c  00 00 50 e3                                      cmp r0, #0
00882850  00 00 00 0a                                      beq #0x882858
00882854  fa 36 ea eb                                      bl #0x310444
00882858  06 00 54 e1                                      cmp r4, r6
0088285c  f7 ff ff 1a                                      bne #0x882840
00882860  30 00 95 e5                                      ldr r0, [r5, #0x30]
00882864  00 00 50 e3                                      cmp r0, #0
00882868  00 00 00 0a                                      beq #0x882870
0088286c  f4 36 ea eb                                      bl #0x310444
00882870  24 00 95 e5                                      ldr r0, [r5, #0x24]
00882874  00 00 50 e3                                      cmp r0, #0
00882878  00 00 00 0a                                      beq #0x882880
0088287c  f0 36 ea eb                                      bl #0x310444
00882880  05 00 a0 e1                                      mov r0, r5
00882884  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00882ae0, declared_size=300, range_size=300, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist8SetStateEPNS_13PlaylistStateE
; demangled: vox::NativePlaylist::SetState(vox::PlaylistState*)
; decoder-mode: arm
00882ae0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00882ae4  00 30 91 e5                                      ldr r3, [r1]
00882ae8  28 a0 90 e5                                      ldr sl, [r0, #0x28]
00882aec  24 20 90 e5                                      ldr r2, [r0, #0x24]
00882af0  0c 30 80 e5                                      str r3, [r0, #0xc]
00882af4  04 30 91 e5                                      ldr r3, [r1, #4]
00882af8  0a a0 62 e0                                      rsb sl, r2, sl
00882afc  4a a1 a0 e1                                      asr sl, sl, #2
00882b00  10 30 80 e5                                      str r3, [r0, #0x10]
00882b04  08 30 91 e5                                      ldr r3, [r1, #8]
00882b08  00 00 5a e3                                      cmp sl, #0
00882b0c  4c d0 4d e2                                      sub sp, sp, #0x4c
00882b10  14 30 80 e5                                      str r3, [r0, #0x14]
00882b14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00882b18  01 70 a0 e1                                      mov r7, r1
00882b1c  00 60 a0 e1                                      mov r6, r0
00882b20  18 30 80 e5                                      str r3, [r0, #0x18]
00882b24  10 30 91 e5                                      ldr r3, [r1, #0x10]
00882b28  1c 30 80 e5                                      str r3, [r0, #0x1c]
00882b2c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00882b30  20 30 80 e5                                      str r3, [r0, #0x20]
00882b34  2d 00 00 da                                      ble #0x882bf0
00882b38  c8 b0 9f e5                                      ldr fp, [pc, #0xc8]
00882b3c  00 40 a0 e3                                      mov r4, #0
00882b40  04 80 8d e2                                      add r8, sp, #4
00882b44  0b b0 8f e0                                      add fp, pc, fp
00882b48  30 90 8d e2                                      add sb, sp, #0x30
00882b4c  0d 00 00 ea                                      b #0x882b88
00882b50  09 10 a0 e1                                      mov r1, sb
00882b54  00 30 95 e5                                      ldr r3, [r5]
00882b58  0f e0 a0 e1                                      mov lr, pc
00882b5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00882b60  24 30 96 e5                                      ldr r3, [r6, #0x24]
00882b64  09 10 a0 e1                                      mov r1, sb
00882b68  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00882b6c  01 40 84 e2                                      add r4, r4, #1
00882b70  03 00 a0 e1                                      mov r0, r3
00882b74  00 30 93 e5                                      ldr r3, [r3]
00882b78  0f e0 a0 e1                                      mov lr, pc
00882b7c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00882b80  0a 00 54 e1                                      cmp r4, sl
00882b84  19 00 00 0a                                      beq #0x882bf0
00882b88  18 50 97 e5                                      ldr r5, [r7, #0x18]
00882b8c  00 30 95 e5                                      ldr r3, [r5]
00882b90  04 20 95 e5                                      ldr r2, [r5, #4]
00882b94  02 20 63 e0                                      rsb r2, r3, r2
00882b98  42 01 54 e1                                      cmp r4, r2, asr #2
00882b9c  15 00 00 2a                                      bhs #0x882bf8
00882ba0  04 51 93 e7                                      ldr r5, [r3, r4, lsl #2]
00882ba4  05 00 a0 e1                                      mov r0, r5
00882ba8  b3 fb ff eb                                      bl #0x881a7c
00882bac  00 00 50 e3                                      cmp r0, #0
00882bb0  08 10 a0 e1                                      mov r1, r8
00882bb4  05 00 a0 e1                                      mov r0, r5
00882bb8  e4 ff ff 0a                                      beq #0x882b50
00882bbc  00 30 95 e5                                      ldr r3, [r5]
00882bc0  0f e0 a0 e1                                      mov lr, pc
00882bc4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00882bc8  24 30 96 e5                                      ldr r3, [r6, #0x24]
00882bcc  08 10 a0 e1                                      mov r1, r8
00882bd0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00882bd4  01 40 84 e2                                      add r4, r4, #1
00882bd8  03 00 a0 e1                                      mov r0, r3
00882bdc  00 30 93 e5                                      ldr r3, [r3]
00882be0  0f e0 a0 e1                                      mov lr, pc
00882be4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00882be8  0a 00 54 e1                                      cmp r4, sl
00882bec  e5 ff ff 1a                                      bne #0x882b88
00882bf0  4c d0 8d e2                                      add sp, sp, #0x4c
00882bf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00882bf8  0b 00 a0 e1                                      mov r0, fp
00882bfc  c9 ed 00 eb                                      bl #0x8be328
00882c00  00 30 95 e5                                      ldr r3, [r5]
00882c04  e5 ff ff ea                                      b #0x882ba0
; mapping-symbol data/literal pool
00882c08  24 b9 03 00                                      .byte 0x24, 0xb9, 0x03, 0x00

; FUNCTION 0x008838c4, declared_size=260, range_size=260, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist18AddPlaylistElementEPNS_20PlaylistElementInfosE
; demangled: vox::NativePlaylist::AddPlaylistElement(vox::PlaylistElementInfos*)
; decoder-mode: arm
008838c4  70 40 2d e9                                      push {r4, r5, r6, lr}
008838c8  00 50 a0 e1                                      mov r5, r0
008838cc  10 d0 4d e2                                      sub sp, sp, #0x10
008838d0  01 40 a0 e1                                      mov r4, r1
008838d4  14 00 a0 e3                                      mov r0, #0x14
008838d8  00 10 a0 e3                                      mov r1, #0
008838dc  59 33 ea eb                                      bl #0x310648
008838e0  00 60 a0 e1                                      mov r6, r0
008838e4  d2 f7 ff eb                                      bl #0x881834
008838e8  00 00 56 e3                                      cmp r6, #0
008838ec  0c 60 8d e5                                      str r6, [sp, #0xc]
008838f0  00 60 c5 05                                      strbeq r6, [r5]
008838f4  27 00 00 0a                                      beq #0x883998
008838f8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008838fc  00 30 86 e5                                      str r3, [r6]
00883900  10 20 94 e5                                      ldr r2, [r4, #0x10]
00883904  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00883908  08 20 83 e5                                      str r2, [r3, #8]
0088390c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00883910  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00883914  0c 20 83 e5                                      str r2, [r3, #0xc]
00883918  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088391c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00883920  10 20 83 e5                                      str r2, [r3, #0x10]
00883924  34 10 95 e5                                      ldr r1, [r5, #0x34]
00883928  38 30 95 e5                                      ldr r3, [r5, #0x38]
0088392c  03 00 51 e1                                      cmp r1, r3
00883930  20 00 00 0a                                      beq #0x8839b8
00883934  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00883938  00 30 81 e5                                      str r3, [r1]
0088393c  34 30 95 e5                                      ldr r3, [r5, #0x34]
00883940  04 30 83 e2                                      add r3, r3, #4
00883944  34 30 85 e5                                      str r3, [r5, #0x34]
00883948  08 20 94 e5                                      ldr r2, [r4, #8]
0088394c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00883950  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00883954  48 f8 ff eb                                      bl #0x881a7c
00883958  00 00 50 e3                                      cmp r0, #0
0088395c  0f 00 00 0a                                      beq #0x8839a0
00883960  04 00 94 e5                                      ldr r0, [r4, #4]
00883964  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00883968  08 20 94 e5                                      ldr r2, [r4, #8]
0088396c  24 30 95 e5                                      ldr r3, [r5, #0x24]
00883970  03 00 8d e9                                      stmib sp, {r0, r1}
00883974  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00883978  04 10 8d e2                                      add r1, sp, #4
0088397c  4b ff ff eb                                      bl #0x8836b0
00883980  08 20 94 e5                                      ldr r2, [r4, #8]
00883984  24 30 95 e5                                      ldr r3, [r5, #0x24]
00883988  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
0088398c  3c f8 ff eb                                      bl #0x881a84
00883990  00 00 50 e3                                      cmp r0, #0
00883994  00 00 c5 05                                      strbeq r0, [r5]
00883998  10 d0 8d e2                                      add sp, sp, #0x10
0088399c  70 80 bd e8                                      pop {r4, r5, r6, pc}
008839a0  08 20 94 e5                                      ldr r2, [r4, #8]
008839a4  24 30 95 e5                                      ldr r3, [r5, #0x24]
008839a8  04 10 94 e5                                      ldr r1, [r4, #4]
008839ac  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
008839b0  b1 ff ff eb                                      bl #0x88387c
008839b4  f1 ff ff ea                                      b #0x883980
008839b8  30 00 85 e2                                      add r0, r5, #0x30
008839bc  0c 20 8d e2                                      add r2, sp, #0xc
008839c0  65 ff ff eb                                      bl #0x88375c
008839c4  df ff ff ea                                      b #0x883948

; FUNCTION 0x00883c04, declared_size=160, range_size=160, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylist8AddGroupEPNS_10GroupInfosE
; demangled: vox::NativePlaylist::AddGroup(vox::GroupInfos*)
; decoder-mode: arm
00883c04  70 40 2d e9                                      push {r4, r5, r6, lr}
00883c08  01 60 a0 e1                                      mov r6, r1
00883c0c  08 10 91 e5                                      ldr r1, [r1, #8]
00883c10  08 d0 4d e2                                      sub sp, sp, #8
00883c14  00 40 a0 e1                                      mov r4, r0
00883c18  00 00 51 e3                                      cmp r1, #0
00883c1c  13 00 00 1a                                      bne #0x883c70
00883c20  38 00 a0 e3                                      mov r0, #0x38
00883c24  87 32 ea eb                                      bl #0x310648
00883c28  06 10 a0 e1                                      mov r1, r6
00883c2c  00 50 a0 e1                                      mov r5, r0
00883c30  04 20 94 e5                                      ldr r2, [r4, #4]
00883c34  0e f8 ff eb                                      bl #0x881c74
00883c38  04 50 8d e5                                      str r5, [sp, #4]
00883c3c  00 00 55 e3                                      cmp r5, #0
00883c40  00 50 c4 05                                      strbeq r5, [r4]
00883c44  07 00 00 0a                                      beq #0x883c68
00883c48  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883c4c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00883c50  03 00 51 e1                                      cmp r1, r3
00883c54  0e 00 00 0a                                      beq #0x883c94
00883c58  00 50 81 e5                                      str r5, [r1]
00883c5c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883c60  04 30 83 e2                                      add r3, r3, #4
00883c64  28 30 84 e5                                      str r3, [r4, #0x28]
00883c68  08 d0 8d e2                                      add sp, sp, #8
00883c6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00883c70  00 10 a0 e3                                      mov r1, #0
00883c74  5c 00 a0 e3                                      mov r0, #0x5c
00883c78  72 32 ea eb                                      bl #0x310648
00883c7c  06 10 a0 e1                                      mov r1, r6
00883c80  00 50 a0 e1                                      mov r5, r0
00883c84  04 20 94 e5                                      ldr r2, [r4, #4]
00883c88  ac f7 ff eb                                      bl #0x881b40
00883c8c  04 50 8d e5                                      str r5, [sp, #4]
00883c90  e9 ff ff ea                                      b #0x883c3c
00883c94  24 00 84 e2                                      add r0, r4, #0x24
00883c98  04 20 8d e2                                      add r2, sp, #4
00883c9c  b4 ff ff eb                                      bl #0x883b74
00883ca0  f0 ff ff ea                                      b #0x883c68

; FUNCTION 0x00883cd8, declared_size=468, range_size=468, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistC1ERS0_
; demangled: vox::NativePlaylist::NativePlaylist(vox::NativePlaylist&)
; decoder-mode: arm
00883cd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00883cdc  00 30 a0 e3                                      mov r3, #0
00883ce0  01 20 a0 e3                                      mov r2, #1
00883ce4  38 30 80 e5                                      str r3, [r0, #0x38]
00883ce8  00 20 c0 e5                                      strb r2, [r0]
00883cec  24 30 80 e5                                      str r3, [r0, #0x24]
00883cf0  28 30 80 e5                                      str r3, [r0, #0x28]
00883cf4  2c 30 80 e5                                      str r3, [r0, #0x2c]
00883cf8  30 30 80 e5                                      str r3, [r0, #0x30]
00883cfc  34 30 80 e5                                      str r3, [r0, #0x34]
00883d00  04 30 91 e5                                      ldr r3, [r1, #4]
00883d04  08 d0 4d e2                                      sub sp, sp, #8
00883d08  00 40 a0 e1                                      mov r4, r0
00883d0c  04 30 80 e5                                      str r3, [r0, #4]
00883d10  08 30 91 e5                                      ldr r3, [r1, #8]
00883d14  01 70 a0 e1                                      mov r7, r1
00883d18  08 30 80 e5                                      str r3, [r0, #8]
00883d1c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00883d20  0c 30 80 e5                                      str r3, [r0, #0xc]
00883d24  10 30 91 e5                                      ldr r3, [r1, #0x10]
00883d28  10 30 80 e5                                      str r3, [r0, #0x10]
00883d2c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00883d30  14 30 80 e5                                      str r3, [r0, #0x14]
00883d34  18 30 91 e5                                      ldr r3, [r1, #0x18]
00883d38  18 30 80 e5                                      str r3, [r0, #0x18]
00883d3c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00883d40  1c 30 80 e5                                      str r3, [r0, #0x1c]
00883d44  20 30 91 e5                                      ldr r3, [r1, #0x20]
00883d48  20 30 80 e5                                      str r3, [r0, #0x20]
00883d4c  24 50 91 e5                                      ldr r5, [r1, #0x24]
00883d50  28 60 91 e5                                      ldr r6, [r1, #0x28]
00883d54  06 00 55 e1                                      cmp r5, r6
00883d58  30 00 00 0a                                      beq #0x883e20
00883d5c  24 a0 80 e2                                      add sl, r0, #0x24
00883d60  04 80 8d e2                                      add r8, sp, #4
00883d64  16 00 00 ea                                      b #0x883dc4
00883d68  38 00 a0 e3                                      mov r0, #0x38
00883d6c  35 32 ea eb                                      bl #0x310648
00883d70  00 10 95 e5                                      ldr r1, [r5]
00883d74  00 90 a0 e1                                      mov sb, r0
00883d78  1f ff ff eb                                      bl #0x8839fc
00883d7c  00 00 59 e2                                      subs r0, sb, #0
00883d80  04 90 8d e5                                      str sb, [sp, #4]
00883d84  1b 00 00 0a                                      beq #0x883df8
00883d88  3d f7 ff eb                                      bl #0x881a84
00883d8c  00 00 50 e3                                      cmp r0, #0
00883d90  41 00 00 0a                                      beq #0x883e9c
00883d94  28 10 94 e5                                      ldr r1, [r4, #0x28]
00883d98  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00883d9c  03 00 51 e1                                      cmp r1, r3
00883da0  18 00 00 0a                                      beq #0x883e08
00883da4  04 30 9d e5                                      ldr r3, [sp, #4]
00883da8  04 50 85 e2                                      add r5, r5, #4
00883dac  06 00 55 e1                                      cmp r5, r6
00883db0  00 30 81 e5                                      str r3, [r1]
00883db4  28 30 94 e5                                      ldr r3, [r4, #0x28]
00883db8  04 30 83 e2                                      add r3, r3, #4
00883dbc  28 30 84 e5                                      str r3, [r4, #0x28]
00883dc0  16 00 00 0a                                      beq #0x883e20
00883dc4  00 00 95 e5                                      ldr r0, [r5]
00883dc8  2b f7 ff eb                                      bl #0x881a7c
00883dcc  00 10 50 e2                                      subs r1, r0, #0
00883dd0  e4 ff ff 0a                                      beq #0x883d68
00883dd4  00 10 a0 e3                                      mov r1, #0
00883dd8  5c 00 a0 e3                                      mov r0, #0x5c
00883ddc  19 32 ea eb                                      bl #0x310648
00883de0  00 10 95 e5                                      ldr r1, [r5]
00883de4  00 90 a0 e1                                      mov sb, r0
00883de8  e3 fc ff eb                                      bl #0x88317c
00883dec  00 00 59 e2                                      subs r0, sb, #0
00883df0  04 90 8d e5                                      str sb, [sp, #4]
00883df4  e3 ff ff 1a                                      bne #0x883d88
00883df8  00 90 c4 e5                                      strb sb, [r4]
00883dfc  04 00 a0 e1                                      mov r0, r4
00883e00  08 d0 8d e2                                      add sp, sp, #8
00883e04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00883e08  0a 00 a0 e1                                      mov r0, sl
00883e0c  08 20 a0 e1                                      mov r2, r8
00883e10  04 50 85 e2                                      add r5, r5, #4
00883e14  56 ff ff eb                                      bl #0x883b74
00883e18  06 00 55 e1                                      cmp r5, r6
00883e1c  e8 ff ff 1a                                      bne #0x883dc4
00883e20  34 60 97 e5                                      ldr r6, [r7, #0x34]
00883e24  30 50 97 e5                                      ldr r5, [r7, #0x30]
00883e28  06 00 55 e1                                      cmp r5, r6
00883e2c  f2 ff ff 0a                                      beq #0x883dfc
00883e30  30 80 84 e2                                      add r8, r4, #0x30
00883e34  0d 70 a0 e1                                      mov r7, sp
00883e38  06 00 00 ea                                      b #0x883e58
00883e3c  00 a0 81 e5                                      str sl, [r1]
00883e40  34 30 94 e5                                      ldr r3, [r4, #0x34]
00883e44  04 30 83 e2                                      add r3, r3, #4
00883e48  34 30 84 e5                                      str r3, [r4, #0x34]
00883e4c  04 50 85 e2                                      add r5, r5, #4
00883e50  06 00 55 e1                                      cmp r5, r6
00883e54  e8 ff ff 0a                                      beq #0x883dfc
00883e58  00 10 a0 e3                                      mov r1, #0
00883e5c  14 00 a0 e3                                      mov r0, #0x14
00883e60  f8 31 ea eb                                      bl #0x310648
00883e64  00 10 95 e5                                      ldr r1, [r5]
00883e68  00 a0 a0 e1                                      mov sl, r0
00883e6c  84 f6 ff eb                                      bl #0x881884
00883e70  00 00 5a e3                                      cmp sl, #0
00883e74  00 a0 8d e5                                      str sl, [sp]
00883e78  09 00 00 0a                                      beq #0x883ea4
00883e7c  34 10 94 e5                                      ldr r1, [r4, #0x34]
00883e80  38 30 94 e5                                      ldr r3, [r4, #0x38]
00883e84  03 00 51 e1                                      cmp r1, r3
00883e88  eb ff ff 1a                                      bne #0x883e3c
00883e8c  08 00 a0 e1                                      mov r0, r8
00883e90  0d 20 a0 e1                                      mov r2, sp
00883e94  30 fe ff eb                                      bl #0x88375c
00883e98  eb ff ff ea                                      b #0x883e4c
00883e9c  00 00 c4 e5                                      strb r0, [r4]
00883ea0  d5 ff ff ea                                      b #0x883dfc
00883ea4  00 a0 c4 e5                                      strb sl, [r4]
00883ea8  d3 ff ff ea                                      b #0x883dfc

; FUNCTION 0x00884024, declared_size=468, range_size=468, mode=arm
; class-group: vox::NativePlaylist
; alias: _ZN3vox14NativePlaylistC2ERS0_
; demangled: vox::NativePlaylist::NativePlaylist(vox::NativePlaylist&)
; decoder-mode: arm
00884024  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00884028  00 30 a0 e3                                      mov r3, #0
0088402c  01 20 a0 e3                                      mov r2, #1
00884030  38 30 80 e5                                      str r3, [r0, #0x38]
00884034  00 20 c0 e5                                      strb r2, [r0]
00884038  24 30 80 e5                                      str r3, [r0, #0x24]
0088403c  28 30 80 e5                                      str r3, [r0, #0x28]
00884040  2c 30 80 e5                                      str r3, [r0, #0x2c]
00884044  30 30 80 e5                                      str r3, [r0, #0x30]
00884048  34 30 80 e5                                      str r3, [r0, #0x34]
0088404c  04 30 91 e5                                      ldr r3, [r1, #4]
00884050  08 d0 4d e2                                      sub sp, sp, #8
00884054  00 40 a0 e1                                      mov r4, r0
00884058  04 30 80 e5                                      str r3, [r0, #4]
0088405c  08 30 91 e5                                      ldr r3, [r1, #8]
00884060  01 70 a0 e1                                      mov r7, r1
00884064  08 30 80 e5                                      str r3, [r0, #8]
00884068  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0088406c  0c 30 80 e5                                      str r3, [r0, #0xc]
00884070  10 30 91 e5                                      ldr r3, [r1, #0x10]
00884074  10 30 80 e5                                      str r3, [r0, #0x10]
00884078  14 30 91 e5                                      ldr r3, [r1, #0x14]
0088407c  14 30 80 e5                                      str r3, [r0, #0x14]
00884080  18 30 91 e5                                      ldr r3, [r1, #0x18]
00884084  18 30 80 e5                                      str r3, [r0, #0x18]
00884088  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
0088408c  1c 30 80 e5                                      str r3, [r0, #0x1c]
00884090  20 30 91 e5                                      ldr r3, [r1, #0x20]
00884094  20 30 80 e5                                      str r3, [r0, #0x20]
00884098  24 50 91 e5                                      ldr r5, [r1, #0x24]
0088409c  28 60 91 e5                                      ldr r6, [r1, #0x28]
008840a0  06 00 55 e1                                      cmp r5, r6
008840a4  30 00 00 0a                                      beq #0x88416c
008840a8  24 a0 80 e2                                      add sl, r0, #0x24
008840ac  04 80 8d e2                                      add r8, sp, #4
008840b0  16 00 00 ea                                      b #0x884110
008840b4  38 00 a0 e3                                      mov r0, #0x38
008840b8  62 31 ea eb                                      bl #0x310648
008840bc  00 10 95 e5                                      ldr r1, [r5]
008840c0  00 90 a0 e1                                      mov sb, r0
008840c4  4c fe ff eb                                      bl #0x8839fc
008840c8  00 00 59 e2                                      subs r0, sb, #0
008840cc  04 90 8d e5                                      str sb, [sp, #4]
008840d0  1b 00 00 0a                                      beq #0x884144
008840d4  6a f6 ff eb                                      bl #0x881a84
008840d8  00 00 50 e3                                      cmp r0, #0
008840dc  41 00 00 0a                                      beq #0x8841e8
008840e0  28 10 94 e5                                      ldr r1, [r4, #0x28]
008840e4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
008840e8  03 00 51 e1                                      cmp r1, r3
008840ec  18 00 00 0a                                      beq #0x884154
008840f0  04 30 9d e5                                      ldr r3, [sp, #4]
008840f4  04 50 85 e2                                      add r5, r5, #4
008840f8  06 00 55 e1                                      cmp r5, r6
008840fc  00 30 81 e5                                      str r3, [r1]
00884100  28 30 94 e5                                      ldr r3, [r4, #0x28]
00884104  04 30 83 e2                                      add r3, r3, #4
00884108  28 30 84 e5                                      str r3, [r4, #0x28]
0088410c  16 00 00 0a                                      beq #0x88416c
00884110  00 00 95 e5                                      ldr r0, [r5]
00884114  58 f6 ff eb                                      bl #0x881a7c
00884118  00 10 50 e2                                      subs r1, r0, #0
0088411c  e4 ff ff 0a                                      beq #0x8840b4
00884120  00 10 a0 e3                                      mov r1, #0
00884124  5c 00 a0 e3                                      mov r0, #0x5c
00884128  46 31 ea eb                                      bl #0x310648
0088412c  00 10 95 e5                                      ldr r1, [r5]
00884130  00 90 a0 e1                                      mov sb, r0
00884134  10 fc ff eb                                      bl #0x88317c
00884138  00 00 59 e2                                      subs r0, sb, #0
0088413c  04 90 8d e5                                      str sb, [sp, #4]
00884140  e3 ff ff 1a                                      bne #0x8840d4
00884144  00 90 c4 e5                                      strb sb, [r4]
00884148  04 00 a0 e1                                      mov r0, r4
0088414c  08 d0 8d e2                                      add sp, sp, #8
00884150  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00884154  0a 00 a0 e1                                      mov r0, sl
00884158  08 20 a0 e1                                      mov r2, r8
0088415c  04 50 85 e2                                      add r5, r5, #4
00884160  83 fe ff eb                                      bl #0x883b74
00884164  06 00 55 e1                                      cmp r5, r6
00884168  e8 ff ff 1a                                      bne #0x884110
0088416c  34 60 97 e5                                      ldr r6, [r7, #0x34]
00884170  30 50 97 e5                                      ldr r5, [r7, #0x30]
00884174  06 00 55 e1                                      cmp r5, r6
00884178  f2 ff ff 0a                                      beq #0x884148
0088417c  30 80 84 e2                                      add r8, r4, #0x30
00884180  0d 70 a0 e1                                      mov r7, sp
00884184  06 00 00 ea                                      b #0x8841a4
00884188  00 a0 81 e5                                      str sl, [r1]
0088418c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00884190  04 30 83 e2                                      add r3, r3, #4
00884194  34 30 84 e5                                      str r3, [r4, #0x34]
00884198  04 50 85 e2                                      add r5, r5, #4
0088419c  06 00 55 e1                                      cmp r5, r6
008841a0  e8 ff ff 0a                                      beq #0x884148
008841a4  00 10 a0 e3                                      mov r1, #0
008841a8  14 00 a0 e3                                      mov r0, #0x14
008841ac  25 31 ea eb                                      bl #0x310648
008841b0  00 10 95 e5                                      ldr r1, [r5]
008841b4  00 a0 a0 e1                                      mov sl, r0
008841b8  b1 f5 ff eb                                      bl #0x881884
008841bc  00 00 5a e3                                      cmp sl, #0
008841c0  00 a0 8d e5                                      str sl, [sp]
008841c4  09 00 00 0a                                      beq #0x8841f0
008841c8  34 10 94 e5                                      ldr r1, [r4, #0x34]
008841cc  38 30 94 e5                                      ldr r3, [r4, #0x38]
008841d0  03 00 51 e1                                      cmp r1, r3
008841d4  eb ff ff 1a                                      bne #0x884188
008841d8  08 00 a0 e1                                      mov r0, r8
008841dc  0d 20 a0 e1                                      mov r2, sp
008841e0  5d fd ff eb                                      bl #0x88375c
008841e4  eb ff ff ea                                      b #0x884198
008841e8  00 00 c4 e5                                      strb r0, [r4]
008841ec  d5 ff ff ea                                      b #0x884148
008841f0  00 a0 c4 e5                                      strb sl, [r4]
008841f4  d3 ff ff ea                                      b #0x884148
