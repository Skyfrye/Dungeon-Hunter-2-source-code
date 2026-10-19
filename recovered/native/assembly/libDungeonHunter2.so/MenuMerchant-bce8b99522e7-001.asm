; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00432b38, declared_size=132, range_size=132, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant19DestroyAvatarCameraEv
; demangled: MenuMerchant::DestroyAvatarCamera()
; decoder-mode: arm
00432b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00432b3c  68 40 9f e5                                      ldr r4, [pc, #0x68]
00432b40  68 30 9f e5                                      ldr r3, [pc, #0x68]
00432b44  04 40 8f e0                                      add r4, pc, r4
00432b48  03 50 94 e7                                      ldr r5, [r4, r3]
00432b4c  00 30 95 e5                                      ldr r3, [r5]
00432b50  00 00 53 e3                                      cmp r3, #0
00432b54  13 00 00 0a                                      beq #0x432ba8
00432b58  03 00 a0 e1                                      mov r0, r3
00432b5c  00 30 93 e5                                      ldr r3, [r3]
00432b60  0f e0 a0 e1                                      mov lr, pc
00432b64  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00432b68  00 30 95 e5                                      ldr r3, [r5]
00432b6c  00 20 93 e5                                      ldr r2, [r3]
00432b70  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00432b74  00 00 83 e0                                      add r0, r3, r0
00432b78  81 aa fb eb                                      bl #0x31d584
00432b7c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00432b80  30 20 9f e5                                      ldr r2, [pc, #0x30]
00432b84  00 10 a0 e3                                      mov r1, #0
00432b88  03 30 94 e7                                      ldr r3, [r4, r3]
00432b8c  02 20 94 e7                                      ldr r2, [r4, r2]
00432b90  00 10 85 e5                                      str r1, [r5]
00432b94  10 30 93 e5                                      ldr r3, [r3, #0x10]
00432b98  00 10 92 e5                                      ldr r1, [r2]
00432b9c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00432ba0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00432ba4  45 59 05 ea                                      b #0x5890c0
00432ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00432bac  4c 1f 56 00 54 48 00 00 f4 37 00 00 bc 37 00 00  .byte 0x4c, 0x1f, 0x56, 0x00, 0x54, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xbc, 0x37, 0x00, 0x00

; FUNCTION 0x00432ee8, declared_size=968, range_size=968, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant19RenderCharacterPaneERN7gameswf12render_stateEPv
; demangled: MenuMerchant::RenderCharacterPane(gameswf::render_state&, void*)
; decoder-mode: arm
00432ee8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00432eec  01 00 a0 e1                                      mov r0, r1
00432ef0  5c d0 4d e2                                      sub sp, sp, #0x5c
00432ef4  01 40 a0 e1                                      mov r4, r1
00432ef8  04 50 91 e5                                      ldr r5, [r1, #4]
00432efc  52 bc ff eb                                      bl #0x42204c
00432f00  98 13 9f e5                                      ldr r1, [pc, #0x398]
00432f04  00 20 a0 e1                                      mov r2, r0
00432f08  05 00 a0 e1                                      mov r0, r5
00432f0c  01 10 8f e0                                      add r1, pc, r1
00432f10  db d6 0d eb                                      bl #0x7a8a84
00432f14  88 53 9f e5                                      ldr r5, [pc, #0x388]
00432f18  00 10 a0 e1                                      mov r1, r0
00432f1c  30 00 8d e2                                      add r0, sp, #0x30
00432f20  d5 8e ff eb                                      bl #0x416a7c
00432f24  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
00432f28  05 50 8f e0                                      add r5, pc, r5
00432f2c  04 00 94 e5                                      ldr r0, [r4, #4]
00432f30  03 60 95 e7                                      ldr r6, [r5, r3]
00432f34  10 30 96 e5                                      ldr r3, [r6, #0x10]
00432f38  10 80 93 e5                                      ldr r8, [r3, #0x10]
00432f3c  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
00432f40  04 30 13 e5                                      ldr r3, [r3, #-4]
00432f44  14 20 93 e5                                      ldr r2, [r3, #0x14]
00432f48  20 20 8d e5                                      str r2, [sp, #0x20]
00432f4c  18 20 93 e5                                      ldr r2, [r3, #0x18]
00432f50  24 20 8d e5                                      str r2, [sp, #0x24]
00432f54  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00432f58  28 20 8d e5                                      str r2, [sp, #0x28]
00432f5c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00432f60  2c 30 8d e5                                      str r3, [sp, #0x2c]
00432f64  50 d3 0d eb                                      bl #0x7a7cac
00432f68  72 8d ff eb                                      bl #0x416538
00432f6c  00 70 a0 e1                                      mov r7, r0
00432f70  04 00 94 e5                                      ldr r0, [r4, #4]
00432f74  4c d3 0d eb                                      bl #0x7a7cac
00432f78  7e 8d ff eb                                      bl #0x416578
00432f7c  07 10 a0 e1                                      mov r1, r7
00432f80  00 40 a0 e1                                      mov r4, r0
00432f84  30 00 9d e5                                      ldr r0, [sp, #0x30]
00432f88  41 6f fb eb                                      bl #0x30ec94
00432f8c  4e 6d fb eb                                      bl #0x30e4cc
00432f90  07 10 a0 e1                                      mov r1, r7
00432f94  00 90 a0 e1                                      mov sb, r0
00432f98  34 00 9d e5                                      ldr r0, [sp, #0x34]
00432f9c  3c 6f fb eb                                      bl #0x30ec94
00432fa0  49 6d fb eb                                      bl #0x30e4cc
00432fa4  04 10 a0 e1                                      mov r1, r4
00432fa8  00 70 a0 e1                                      mov r7, r0
00432fac  38 00 9d e5                                      ldr r0, [sp, #0x38]
00432fb0  37 6f fb eb                                      bl #0x30ec94
00432fb4  44 6d fb eb                                      bl #0x30e4cc
00432fb8  04 10 a0 e1                                      mov r1, r4
00432fbc  00 a0 a0 e1                                      mov sl, r0
00432fc0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00432fc4  32 6f fb eb                                      bl #0x30ec94
00432fc8  3f 6d fb eb                                      bl #0x30e4cc
00432fcc  18 70 8d e5                                      str r7, [sp, #0x18]
00432fd0  1c 00 8d e5                                      str r0, [sp, #0x1c]
00432fd4  10 90 8d e5                                      str sb, [sp, #0x10]
00432fd8  14 a0 8d e5                                      str sl, [sp, #0x14]
00432fdc  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
00432fe0  10 10 8d e2                                      add r1, sp, #0x10
00432fe4  04 30 13 e5                                      ldr r3, [r3, #-4]
00432fe8  03 00 a0 e1                                      mov r0, r3
00432fec  00 30 93 e5                                      ldr r3, [r3]
00432ff0  0f e0 a0 e1                                      mov lr, pc
00432ff4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00432ff8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00432ffc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00433000  00 00 63 e0                                      rsb r0, r3, r0
00433004  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
00433008  03 40 95 e7                                      ldr r4, [r5, r3]
0043300c  54 6e fb eb                                      bl #0x30e964
00433010  14 30 9d e5                                      ldr r3, [sp, #0x14]
00433014  00 70 a0 e1                                      mov r7, r0
00433018  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0043301c  00 50 94 e5                                      ldr r5, [r4]
00433020  00 00 63 e0                                      rsb r0, r3, r0
00433024  4e 6e fb eb                                      bl #0x30e964
00433028  00 10 a0 e1                                      mov r1, r0
0043302c  07 00 a0 e1                                      mov r0, r7
00433030  17 6f fb eb                                      bl #0x30ec94
00433034  00 30 95 e5                                      ldr r3, [r5]
00433038  00 10 a0 e1                                      mov r1, r0
0043303c  05 00 a0 e1                                      mov r0, r5
00433040  0f e0 a0 e1                                      mov lr, pc
00433044  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00433048  10 30 96 e5                                      ldr r3, [r6, #0x10]
0043304c  00 10 94 e5                                      ldr r1, [r4]
00433050  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00433054  19 58 05 eb                                      bl #0x5890c0
00433058  06 00 a0 e1                                      mov r0, r6
0043305c  4c b1 fb eb                                      bl #0x31f594
00433060  00 10 a0 e3                                      mov r1, #0
00433064  00 b0 a0 e1                                      mov fp, r0
00433068  01 20 a0 e3                                      mov r2, #1
0043306c  40 00 96 e5                                      ldr r0, [r6, #0x40]
00433070  00 ed fc eb                                      bl #0x36e478
00433074  60 56 90 e5                                      ldr r5, [r0, #0x660]
00433078  00 00 55 e3                                      cmp r5, #0
0043307c  7f 00 00 0a                                      beq #0x433280
00433080  49 0e 85 e2                                      add r0, r5, #0x490
00433084  0c 00 80 e2                                      add r0, r0, #0xc
00433088  ab 5f fe eb                                      bl #0x3caf3c
0043308c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00433090  06 00 a0 e1                                      mov r0, r6
00433094  00 70 a0 e3                                      mov r7, #0
00433098  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
0043309c  0d a0 a0 e1                                      mov sl, sp
004330a0  00 30 94 e5                                      ldr r3, [r4]
004330a4  60 90 93 e5                                      ldr sb, [r3, #0x60]
004330a8  6f b1 fb eb                                      bl #0x31f66c
004330ac  8b 6c fb eb                                      bl #0x30e2e0
004330b0  00 20 a0 e3                                      mov r2, #0
004330b4  00 10 a0 e1                                      mov r1, r0
004330b8  04 00 a0 e1                                      mov r0, r4
004330bc  39 ff 2f e1                                      blx sb
004330c0  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
004330c4  54 02 94 e5                                      ldr r0, [r4, #0x254]
004330c8  08 40 93 e5                                      ldr r4, [r3, #8]
004330cc  fe 6c fb eb                                      bl #0x30e4cc
004330d0  00 10 a0 e1                                      mov r1, r0
004330d4  04 00 a0 e1                                      mov r0, r4
004330d8  62 a4 fc eb                                      bl #0x35c268
004330dc  00 30 94 e5                                      ldr r3, [r4]
004330e0  04 00 a0 e1                                      mov r0, r4
004330e4  0f e0 a0 e1                                      mov lr, pc
004330e8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
004330ec  00 30 94 e5                                      ldr r3, [r4]
004330f0  4c 10 8d e2                                      add r1, sp, #0x4c
004330f4  04 00 a0 e1                                      mov r0, r4
004330f8  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
004330fc  4c 70 8d e5                                      str r7, [sp, #0x4c]
00433100  50 70 8d e5                                      str r7, [sp, #0x50]
00433104  54 70 8d e5                                      str r7, [sp, #0x54]
00433108  33 ff 2f e1                                      blx r3
0043310c  00 30 94 e5                                      ldr r3, [r4]
00433110  04 00 a0 e1                                      mov r0, r4
00433114  0f e0 a0 e1                                      mov lr, pc
00433118  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0043311c  48 70 8d e5                                      str r7, [sp, #0x48]
00433120  40 70 8d e5                                      str r7, [sp, #0x40]
00433124  44 70 8d e5                                      str r7, [sp, #0x44]
00433128  00 30 94 e5                                      ldr r3, [r4]
0043312c  04 00 a0 e1                                      mov r0, r4
00433130  0f e0 a0 e1                                      mov lr, pc
00433134  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00433138  40 10 8d e2                                      add r1, sp, #0x40
0043313c  45 ff ff eb                                      bl #0x432e58
00433140  35 1a 0f e3                                      movw r1, #0xfa35
00433144  40 00 9d e5                                      ldr r0, [sp, #0x40]
00433148  8e 1c 43 e3                                      movt r1, #0x3c8e
0043314c  06 6f fb eb                                      bl #0x30ed6c
00433150  35 1a 0f e3                                      movw r1, #0xfa35
00433154  00 70 a0 e1                                      mov r7, r0
00433158  8e 1c 43 e3                                      movt r1, #0x3c8e
0043315c  44 00 9d e5                                      ldr r0, [sp, #0x44]
00433160  40 70 8d e5                                      str r7, [sp, #0x40]
00433164  00 6f fb eb                                      bl #0x30ed6c
00433168  35 1a 0f e3                                      movw r1, #0xfa35
0043316c  00 90 a0 e1                                      mov sb, r0
00433170  8e 1c 43 e3                                      movt r1, #0x3c8e
00433174  48 00 9d e5                                      ldr r0, [sp, #0x48]
00433178  44 90 8d e5                                      str sb, [sp, #0x44]
0043317c  fa 6e fb eb                                      bl #0x30ed6c
00433180  48 00 8d e5                                      str r0, [sp, #0x48]
00433184  00 c0 94 e5                                      ldr ip, [r4]
00433188  09 20 a0 e1                                      mov r2, sb
0043318c  07 10 a0 e1                                      mov r1, r7
00433190  bf 34 a0 e3                                      mov r3, #0xbf000000
00433194  0d 00 a0 e1                                      mov r0, sp
00433198  9c 70 9c e5                                      ldr r7, [ip, #0x9c]
0043319c  0d a6 fc eb                                      bl #0x35c9d8
004331a0  04 00 a0 e1                                      mov r0, r4
004331a4  0d 10 a0 e1                                      mov r1, sp
004331a8  37 ff 2f e1                                      blx r7
004331ac  00 30 94 e5                                      ldr r3, [r4]
004331b0  04 00 a0 e1                                      mov r0, r4
004331b4  01 10 a0 e3                                      mov r1, #1
004331b8  0f e0 a0 e1                                      mov lr, pc
004331bc  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
004331c0  10 30 96 e5                                      ldr r3, [r6, #0x10]
004331c4  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004331c8  e4 20 93 e5                                      ldr r2, [r3, #0xe4]
004331cc  00 00 52 e3                                      cmp r2, #0
004331d0  04 00 00 0a                                      beq #0x4331e8
004331d4  03 00 a0 e1                                      mov r0, r3
004331d8  04 10 a0 e1                                      mov r1, r4
004331dc  00 30 93 e5                                      ldr r3, [r3]
004331e0  0f e0 a0 e1                                      mov lr, pc
004331e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
004331e8  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
004331ec  20 10 8d e2                                      add r1, sp, #0x20
004331f0  04 30 13 e5                                      ldr r3, [r3, #-4]
004331f4  03 00 a0 e1                                      mov r0, r3
004331f8  00 30 93 e5                                      ldr r3, [r3]
004331fc  0f e0 a0 e1                                      mov lr, pc
00433200  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00433204  05 00 a0 e1                                      mov r0, r5
00433208  16 1e 85 e2                                      add r1, r5, #0x160
0043320c  01 20 a0 e3                                      mov r2, #1
00433210  e7 82 fd eb                                      bl #0x393db4
00433214  e0 32 95 e5                                      ldr r3, [r5, #0x2e0]
00433218  00 00 53 e3                                      cmp r3, #0
0043321c  08 00 00 0a                                      beq #0x433244
00433220  03 00 a0 e1                                      mov r0, r3
00433224  00 30 93 e5                                      ldr r3, [r3]
00433228  0f e0 a0 e1                                      mov lr, pc
0043322c  08 f0 93 e5                                      ldr pc, [r3, #8]
00433230  e0 32 95 e5                                      ldr r3, [r5, #0x2e0]
00433234  03 00 a0 e1                                      mov r0, r3
00433238  00 30 93 e5                                      ldr r3, [r3]
0043323c  0f e0 a0 e1                                      mov lr, pc
00433240  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00433244  28 41 9b e5                                      ldr r4, [fp, #0x128]
00433248  05 10 a0 e1                                      mov r1, r5
0043324c  00 20 a0 e3                                      mov r2, #0
00433250  04 00 a0 e1                                      mov r0, r4
00433254  da 79 ff eb                                      bl #0x4119c4
00433258  04 00 a0 e1                                      mov r0, r4
0043325c  7e 70 ff eb                                      bl #0x40f45c
00433260  04 00 a0 e1                                      mov r0, r4
00433264  00 30 94 e5                                      ldr r3, [r4]
00433268  0f e0 a0 e1                                      mov lr, pc
0043326c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00433270  d8 02 95 e5                                      ldr r0, [r5, #0x2d8]
00433274  b3 fd 00 eb                                      bl #0x472948
00433278  5c d0 8d e2                                      add sp, sp, #0x5c
0043327c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00433280  cc 30 98 e5                                      ldr r3, [r8, #0xcc]
00433284  20 10 8d e2                                      add r1, sp, #0x20
00433288  04 30 13 e5                                      ldr r3, [r3, #-4]
0043328c  03 00 a0 e1                                      mov r0, r3
00433290  00 30 93 e5                                      ldr r3, [r3]
00433294  0f e0 a0 e1                                      mov lr, pc
00433298  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0043329c  f5 ff ff ea                                      b #0x433278
; mapping-symbol data/literal pool
004332a0  2c 86 49 00 68 1b 56 00 f4 37 00 00 54 48 00 00  .byte 0x2c, 0x86, 0x49, 0x00, 0x68, 0x1b, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x54, 0x48, 0x00, 0x00

; FUNCTION 0x004332b0, declared_size=104, range_size=104, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant4HideEv
; demangled: MenuMerchant::Hide()
; decoder-mode: arm
004332b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004332b4  00 40 a0 e1                                      mov r4, r0
004332b8  1e fe ff eb                                      bl #0x432b38
004332bc  04 00 a0 e1                                      mov r0, r4
004332c0  48 40 9f e5                                      ldr r4, [pc, #0x48]
004332c4  0a c6 ff eb                                      bl #0x424af4
004332c8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004332cc  04 40 8f e0                                      add r4, pc, r4
004332d0  00 10 a0 e3                                      mov r1, #0
004332d4  03 50 94 e7                                      ldr r5, [r4, r3]
004332d8  01 20 a0 e3                                      mov r2, #1
004332dc  40 00 95 e5                                      ldr r0, [r5, #0x40]
004332e0  64 ec fc eb                                      bl #0x36e478
004332e4  60 36 90 e5                                      ldr r3, [r0, #0x660]
004332e8  00 00 53 e3                                      cmp r3, #0
004332ec  06 00 00 0a                                      beq #0x43330c
004332f0  40 00 95 e5                                      ldr r0, [r5, #0x40]
004332f4  00 10 a0 e3                                      mov r1, #0
004332f8  01 20 a0 e3                                      mov r2, #1
004332fc  5d ec fc eb                                      bl #0x36e478
00433300  60 06 90 e5                                      ldr r0, [r0, #0x660]
00433304  70 40 bd e8                                      pop {r4, r5, r6, lr}
00433308  66 24 fe ea                                      b #0x3bc4a8
0043330c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00433310  c4 17 56 00 f4 37 00 00                          .byte 0xc4, 0x17, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00433318, declared_size=560, range_size=560, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant18CreateAvatarCameraEv
; demangled: MenuMerchant::CreateAvatarCamera()
; decoder-mode: arm
00433318  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0043331c  14 42 9f e5                                      ldr r4, [pc, #0x214]
00433320  14 72 9f e5                                      ldr r7, [pc, #0x214]
00433324  30 d0 4d e2                                      sub sp, sp, #0x30
00433328  04 40 8f e0                                      add r4, pc, r4
0043332c  07 60 94 e7                                      ldr r6, [r4, r7]
00433330  00 50 96 e5                                      ldr r5, [r6]
00433334  00 00 55 e3                                      cmp r5, #0
00433338  01 00 00 0a                                      beq #0x433344
0043333c  30 d0 8d e2                                      add sp, sp, #0x30
00433340  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00433344  f4 91 9f e5                                      ldr sb, [pc, #0x1f4]
00433348  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
0043334c  00 30 a0 e3                                      mov r3, #0
00433350  09 80 94 e7                                      ldr r8, [r4, sb]
00433354  02 c0 94 e7                                      ldr ip, [r4, r2]
00433358  43 24 a0 e3                                      mov r2, #0x43000000
0043335c  10 00 98 e5                                      ldr r0, [r8, #0x10]
00433360  12 27 82 e2                                      add r2, r2, #0x480000
00433364  05 10 a0 e1                                      mov r1, r5
00433368  1c e0 90 e5                                      ldr lr, [r0, #0x1c]
0043336c  e3 0f a0 e3                                      mov r0, #0x38c
00433370  e4 a0 9e e5                                      ldr sl, [lr, #0xe4]
00433374  31 e3 a0 e3                                      mov lr, #0xc4000000
00433378  12 e7 8e e2                                      add lr, lr, #0x480000
0043337c  00 a0 8c e5                                      str sl, [ip]
00433380  28 e0 8d e5                                      str lr, [sp, #0x28]
00433384  1c 30 8d e5                                      str r3, [sp, #0x1c]
00433388  20 20 8d e5                                      str r2, [sp, #0x20]
0043338c  24 30 8d e5                                      str r3, [sp, #0x24]
00433390  2c 20 8d e5                                      str r2, [sp, #0x2c]
00433394  18 30 8d e5                                      str r3, [sp, #0x18]
00433398  83 03 04 eb                                      bl #0x5341ac
0043339c  24 20 8d e2                                      add r2, sp, #0x24
004333a0  18 30 8d e2                                      add r3, sp, #0x18
004333a4  00 10 e0 e3                                      mvn r1, #0
004333a8  00 a0 a0 e1                                      mov sl, r0
004333ac  00 50 8d e5                                      str r5, [sp]
004333b0  df 40 05 eb                                      bl #0x583734
004333b4  10 30 98 e5                                      ldr r3, [r8, #0x10]
004333b8  00 a0 86 e5                                      str sl, [r6]
004333bc  0a 10 a0 e1                                      mov r1, sl
004333c0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004333c4  04 30 93 e5                                      ldr r3, [r3, #4]
004333c8  03 00 a0 e1                                      mov r0, r3
004333cc  00 30 93 e5                                      ldr r3, [r3]
004333d0  0f e0 a0 e1                                      mov lr, pc
004333d4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
004333d8  40 00 98 e5                                      ldr r0, [r8, #0x40]
004333dc  05 10 a0 e1                                      mov r1, r5
004333e0  01 20 a0 e3                                      mov r2, #1
004333e4  23 ec fc eb                                      bl #0x36e478
004333e8  60 36 90 e5                                      ldr r3, [r0, #0x660]
004333ec  00 00 53 e3                                      cmp r3, #0
004333f0  08 00 00 0a                                      beq #0x433418
004333f4  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
004333f8  00 00 53 e3                                      cmp r3, #0
004333fc  05 00 00 0a                                      beq #0x433418
00433400  08 30 93 e5                                      ldr r3, [r3, #8]
00433404  00 10 96 e5                                      ldr r1, [r6]
00433408  03 00 a0 e1                                      mov r0, r3
0043340c  00 30 93 e5                                      ldr r3, [r3]
00433410  0f e0 a0 e1                                      mov lr, pc
00433414  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00433418  07 50 94 e7                                      ldr r5, [r4, r7]
0043341c  00 30 95 e5                                      ldr r3, [r5]
00433420  00 20 93 e5                                      ldr r2, [r3]
00433424  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00433428  00 00 83 e0                                      add r0, r3, r0
0043342c  54 a8 fb eb                                      bl #0x31d584
00433430  09 40 94 e7                                      ldr r4, [r4, sb]
00433434  00 10 95 e5                                      ldr r1, [r5]
00433438  10 30 94 e5                                      ldr r3, [r4, #0x10]
0043343c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00433440  1e 57 05 eb                                      bl #0x5890c0
00433444  00 00 95 e5                                      ldr r0, [r5]
00433448  fe c5 a0 e3                                      mov ip, #0x3f800000
0043344c  00 20 a0 e3                                      mov r2, #0
00433450  00 30 90 e5                                      ldr r3, [r0]
00433454  0c 10 8d e2                                      add r1, sp, #0xc
00433458  14 31 93 e5                                      ldr r3, [r3, #0x114]
0043345c  14 c0 8d e5                                      str ip, [sp, #0x14]
00433460  10 20 8d e5                                      str r2, [sp, #0x10]
00433464  0c 20 8d e5                                      str r2, [sp, #0xc]
00433468  33 ff 2f e1                                      blx r3
0043346c  00 30 95 e5                                      ldr r3, [r5]
00433470  e9 18 07 e3                                      movw r1, #0x78e9
00433474  d5 1f 43 e3                                      movt r1, #0x3fd5
00433478  03 00 a0 e1                                      mov r0, r3
0043347c  00 30 93 e5                                      ldr r3, [r3]
00433480  0f e0 a0 e1                                      mov lr, pc
00433484  38 f1 93 e5                                      ldr pc, [r3, #0x138]
00433488  00 30 95 e5                                      ldr r3, [r5]
0043348c  1a 1b 0f e3                                      movw r1, #0xfb1a
00433490  0e 1f 43 e3                                      movt r1, #0x3f0e
00433494  03 00 a0 e1                                      mov r0, r3
00433498  00 30 93 e5                                      ldr r3, [r3]
0043349c  0f e0 a0 e1                                      mov lr, pc
004334a0  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
004334a4  00 30 95 e5                                      ldr r3, [r5]
004334a8  41 14 a0 e3                                      mov r1, #0x41000000
004334ac  02 16 81 e2                                      add r1, r1, #0x200000
004334b0  00 20 93 e5                                      ldr r2, [r3]
004334b4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
004334b8  02 30 83 e0                                      add r3, r3, r2
004334bc  04 20 93 e5                                      ldr r2, [r3, #4]
004334c0  01 20 82 e2                                      add r2, r2, #1
004334c4  04 20 83 e5                                      str r2, [r3, #4]
004334c8  00 30 95 e5                                      ldr r3, [r5]
004334cc  03 00 a0 e1                                      mov r0, r3
004334d0  00 30 93 e5                                      ldr r3, [r3]
004334d4  0f e0 a0 e1                                      mov lr, pc
004334d8  30 f1 93 e5                                      ldr pc, [r3, #0x130]
004334dc  00 30 95 e5                                      ldr r3, [r5]
004334e0  11 13 a0 e3                                      mov r1, #0x44000000
004334e4  7a 18 81 e2                                      add r1, r1, #0x7a0000
004334e8  03 00 a0 e1                                      mov r0, r3
004334ec  00 30 93 e5                                      ldr r3, [r3]
004334f0  0f e0 a0 e1                                      mov lr, pc
004334f4  34 f1 93 e5                                      ldr pc, [r3, #0x134]
004334f8  40 00 94 e5                                      ldr r0, [r4, #0x40]
004334fc  00 10 a0 e3                                      mov r1, #0
00433500  01 20 a0 e3                                      mov r2, #1
00433504  db eb fc eb                                      bl #0x36e478
00433508  60 46 90 e5                                      ldr r4, [r0, #0x660]
0043350c  00 00 54 e3                                      cmp r4, #0
00433510  89 ff ff 0a                                      beq #0x43333c
00433514  4f 4e 84 e2                                      add r4, r4, #0x4f0
00433518  0c 40 84 e2                                      add r4, r4, #0xc
0043351c  04 00 a0 e1                                      mov r0, r4
00433520  b2 33 fe eb                                      bl #0x3c03f0
00433524  00 10 50 e2                                      subs r1, r0, #0
00433528  83 ff ff 1a                                      bne #0x43333c
0043352c  04 00 a0 e1                                      mov r0, r4
00433530  32 39 fe eb                                      bl #0x3c1a00
00433534  80 ff ff ea                                      b #0x43333c
; mapping-symbol data/literal pool
00433538  68 17 56 00 54 48 00 00 f4 37 00 00 bc 37 00 00  .byte 0x68, 0x17, 0x56, 0x00, 0x54, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xbc, 0x37, 0x00, 0x00

; FUNCTION 0x00433548, declared_size=12, range_size=12, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant6UpdateEv
; demangled: MenuMerchant::Update()
; decoder-mode: arm
00433548  00 20 a0 e3                                      mov r2, #0
0043354c  c4 20 c0 e5                                      strb r2, [r0, #0xc4]
00433550  a2 ba ff ea                                      b #0x421fe0

; FUNCTION 0x00433554, declared_size=72, range_size=72, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant4ShowEv
; demangled: MenuMerchant::Show()
; decoder-mode: arm
00433554  10 40 2d e9                                      push {r4, lr}
00433558  30 c0 9f e5                                      ldr ip, [pc, #0x30]
0043355c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00433560  30 10 9f e5                                      ldr r1, [pc, #0x30]
00433564  0c c0 8f e0                                      add ip, pc, ip
00433568  03 20 9c e7                                      ldr r2, [ip, r3]
0043356c  00 40 a0 e1                                      mov r4, r0
00433570  00 30 a0 e1                                      mov r3, r0
00433574  01 10 8f e0                                      add r1, pc, r1
00433578  04 00 90 e5                                      ldr r0, [r0, #4]
0043357c  15 d7 0d eb                                      bl #0x7a91d8
00433580  64 ff ff eb                                      bl #0x433318
00433584  04 00 a0 e1                                      mov r0, r4
00433588  10 40 bd e8                                      pop {r4, lr}
0043358c  af c7 ff ea                                      b #0x425450
; mapping-symbol data/literal pool
00433590  2c 15 56 00 f8 35 00 00 c4 7f 49 00              .byte 0x2c, 0x15, 0x56, 0x00, 0xf8, 0x35, 0x00, 0x00, 0xc4, 0x7f, 0x49, 0x00

; FUNCTION 0x0043359c, declared_size=104, range_size=104, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchantD1Ev
; demangled: MenuMerchant::~MenuMerchant()
; decoder-mode: arm
0043359c  54 30 9f e5                                      ldr r3, [pc, #0x54]
004335a0  54 20 9f e5                                      ldr r2, [pc, #0x54]
004335a4  54 10 9f e5                                      ldr r1, [pc, #0x54]
004335a8  03 30 8f e0                                      add r3, pc, r3
004335ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004335b0  02 20 93 e7                                      ldr r2, [r3, r2]
004335b4  01 50 93 e7                                      ldr r5, [r3, r1]
004335b8  00 40 a0 e1                                      mov r4, r0
004335bc  08 20 82 e2                                      add r2, r2, #8
004335c0  00 20 80 e5                                      str r2, [r0]
004335c4  00 20 95 e5                                      ldr r2, [r5]
004335c8  00 00 52 e3                                      cmp r2, #0
004335cc  05 00 00 0a                                      beq #0x4335e8
004335d0  00 30 92 e5                                      ldr r3, [r2]
004335d4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
004335d8  00 00 82 e0                                      add r0, r2, r0
004335dc  e8 a7 fb eb                                      bl #0x31d584
004335e0  00 30 a0 e3                                      mov r3, #0
004335e4  00 30 85 e5                                      str r3, [r5]
004335e8  04 00 a0 e1                                      mov r0, r4
004335ec  e0 bc ff eb                                      bl #0x422974
004335f0  04 00 a0 e1                                      mov r0, r4
004335f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004335f8  e8 14 56 00 70 17 00 00 54 48 00 00              .byte 0xe8, 0x14, 0x56, 0x00, 0x70, 0x17, 0x00, 0x00, 0x54, 0x48, 0x00, 0x00

; FUNCTION 0x00433604, declared_size=28, range_size=28, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchantD0Ev
; demangled: MenuMerchant::~MenuMerchant()
; decoder-mode: arm
00433604  10 40 2d e9                                      push {r4, lr}
00433608  00 40 a0 e1                                      mov r4, r0
0043360c  e2 ff ff eb                                      bl #0x43359c
00433610  04 00 a0 e1                                      mov r0, r4
00433614  89 73 fb eb                                      bl #0x310440
00433618  04 00 a0 e1                                      mov r0, r4
0043361c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00433620, declared_size=104, range_size=104, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchantD2Ev
; demangled: MenuMerchant::~MenuMerchant()
; decoder-mode: arm
00433620  54 30 9f e5                                      ldr r3, [pc, #0x54]
00433624  54 20 9f e5                                      ldr r2, [pc, #0x54]
00433628  54 10 9f e5                                      ldr r1, [pc, #0x54]
0043362c  03 30 8f e0                                      add r3, pc, r3
00433630  70 40 2d e9                                      push {r4, r5, r6, lr}
00433634  02 20 93 e7                                      ldr r2, [r3, r2]
00433638  01 50 93 e7                                      ldr r5, [r3, r1]
0043363c  00 40 a0 e1                                      mov r4, r0
00433640  08 20 82 e2                                      add r2, r2, #8
00433644  00 20 80 e5                                      str r2, [r0]
00433648  00 20 95 e5                                      ldr r2, [r5]
0043364c  00 00 52 e3                                      cmp r2, #0
00433650  05 00 00 0a                                      beq #0x43366c
00433654  00 30 92 e5                                      ldr r3, [r2]
00433658  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0043365c  00 00 82 e0                                      add r0, r2, r0
00433660  c7 a7 fb eb                                      bl #0x31d584
00433664  00 30 a0 e3                                      mov r3, #0
00433668  00 30 85 e5                                      str r3, [r5]
0043366c  04 00 a0 e1                                      mov r0, r4
00433670  bf bc ff eb                                      bl #0x422974
00433674  04 00 a0 e1                                      mov r0, r4
00433678  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0043367c  64 14 56 00 70 17 00 00 54 48 00 00              .byte 0x64, 0x14, 0x56, 0x00, 0x70, 0x17, 0x00, 0x00, 0x54, 0x48, 0x00, 0x00

; FUNCTION 0x00433688, declared_size=76, range_size=76, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchantC1Ev
; demangled: MenuMerchant::MenuMerchant()
; decoder-mode: arm
00433688  38 10 9f e5                                      ldr r1, [pc, #0x38]
0043368c  70 40 2d e9                                      push {r4, r5, r6, lr}
00433690  01 10 8f e0                                      add r1, pc, r1
00433694  30 40 9f e5                                      ldr r4, [pc, #0x30]
00433698  00 50 a0 e1                                      mov r5, r0
0043369c  d7 ce ff eb                                      bl #0x427200
004336a0  28 30 9f e5                                      ldr r3, [pc, #0x28]
004336a4  04 40 8f e0                                      add r4, pc, r4
004336a8  03 30 94 e7                                      ldr r3, [r4, r3]
004336ac  08 30 83 e2                                      add r3, r3, #8
004336b0  00 30 85 e5                                      str r3, [r5]
004336b4  f4 e4 ff eb                                      bl #0x42ca8c
004336b8  05 10 a0 e1                                      mov r1, r5
004336bc  f4 ed ff eb                                      bl #0x42ee94
004336c0  05 00 a0 e1                                      mov r0, r5
004336c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004336c8  38 5b 49 00 ec 13 56 00 70 17 00 00              .byte 0x38, 0x5b, 0x49, 0x00, 0xec, 0x13, 0x56, 0x00, 0x70, 0x17, 0x00, 0x00

; FUNCTION 0x004336d4, declared_size=76, range_size=76, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchantC2Ev
; demangled: MenuMerchant::MenuMerchant()
; decoder-mode: arm
004336d4  38 10 9f e5                                      ldr r1, [pc, #0x38]
004336d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004336dc  01 10 8f e0                                      add r1, pc, r1
004336e0  30 40 9f e5                                      ldr r4, [pc, #0x30]
004336e4  00 50 a0 e1                                      mov r5, r0
004336e8  c4 ce ff eb                                      bl #0x427200
004336ec  28 30 9f e5                                      ldr r3, [pc, #0x28]
004336f0  04 40 8f e0                                      add r4, pc, r4
004336f4  03 30 94 e7                                      ldr r3, [r4, r3]
004336f8  08 30 83 e2                                      add r3, r3, #8
004336fc  00 30 85 e5                                      str r3, [r5]
00433700  e1 e4 ff eb                                      bl #0x42ca8c
00433704  05 10 a0 e1                                      mov r1, r5
00433708  e1 ed ff eb                                      bl #0x42ee94
0043370c  05 00 a0 e1                                      mov r0, r5
00433710  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00433714  ec 5a 49 00 a0 13 56 00 70 17 00 00              .byte 0xec, 0x5a, 0x49, 0x00, 0xa0, 0x13, 0x56, 0x00, 0x70, 0x17, 0x00, 0x00

; FUNCTION 0x00433720, declared_size=132, range_size=132, mode=arm
; class-group: MenuMerchant
; alias: _ZN12MenuMerchant11GetInstanceEv
; demangled: MenuMerchant::GetInstance()
; decoder-mode: arm
00433720  70 40 2d e9                                      push {r4, r5, r6, lr}
00433724  64 50 9f e5                                      ldr r5, [pc, #0x64]
00433728  64 40 9f e5                                      ldr r4, [pc, #0x64]
0043372c  05 50 8f e0                                      add r5, pc, r5
00433730  00 30 95 e5                                      ldr r3, [r5]
00433734  04 40 8f e0                                      add r4, pc, r4
00433738  01 00 13 e3                                      tst r3, #1
0043373c  03 00 00 0a                                      beq #0x433750
00433740  50 00 9f e5                                      ldr r0, [pc, #0x50]
00433744  00 00 8f e0                                      add r0, pc, r0
00433748  04 00 80 e2                                      add r0, r0, #4
0043374c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00433750  05 00 a0 e1                                      mov r0, r5
00433754  04 6c fb eb                                      bl #0x30e76c
00433758  00 00 50 e3                                      cmp r0, #0
0043375c  f7 ff ff 0a                                      beq #0x433740
00433760  04 60 85 e2                                      add r6, r5, #4
00433764  06 00 a0 e1                                      mov r0, r6
00433768  c6 ff ff eb                                      bl #0x433688
0043376c  05 00 a0 e1                                      mov r0, r5
00433770  b1 6c fb eb                                      bl #0x30ea3c
00433774  20 30 9f e5                                      ldr r3, [pc, #0x20]
00433778  06 00 a0 e1                                      mov r0, r6
0043377c  03 10 94 e7                                      ldr r1, [r4, r3]
00433780  18 30 9f e5                                      ldr r3, [pc, #0x18]
00433784  03 20 94 e7                                      ldr r2, [r4, r3]
00433788  dd 6a fb eb                                      bl #0x30e304
0043378c  eb ff ff ea                                      b #0x433740
; mapping-symbol data/literal pool
00433790  90 1b 57 00 5c 13 56 00 78 1b 57 00 44 16 00 00  .byte 0x90, 0x1b, 0x57, 0x00, 0x5c, 0x13, 0x56, 0x00, 0x78, 0x1b, 0x57, 0x00, 0x44, 0x16, 0x00, 0x00
004337a0  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00
