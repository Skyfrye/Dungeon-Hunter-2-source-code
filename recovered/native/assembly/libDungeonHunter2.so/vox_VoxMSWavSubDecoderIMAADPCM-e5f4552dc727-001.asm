; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00875418, declared_size=176, range_size=176, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM7HasDataEv
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::HasData()
; decoder-mode: arm
00875418  10 40 2d e9                                      push {r4, lr}
0087541c  04 30 90 e5                                      ldr r3, [r0, #4]
00875420  00 40 a0 e1                                      mov r4, r0
00875424  00 00 53 e3                                      cmp r3, #0
00875428  1a 00 00 0a                                      beq #0x875498
0087542c  28 30 d0 e5                                      ldrb r3, [r0, #0x28]
00875430  00 00 53 e3                                      cmp r3, #0
00875434  13 00 00 0a                                      beq #0x875488
00875438  64 20 90 e5                                      ldr r2, [r0, #0x64]
0087543c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00875440  03 00 52 e1                                      cmp r2, r3
00875444  0a 00 00 2a                                      bhs #0x875474
00875448  08 30 90 e5                                      ldr r3, [r0, #8]
0087544c  54 20 90 e5                                      ldr r2, [r0, #0x54]
00875450  28 30 93 e5                                      ldr r3, [r3, #0x28]
00875454  03 00 52 e1                                      cmp r2, r3
00875458  03 00 00 3a                                      blo #0x87546c
0087545c  60 20 90 e5                                      ldr r2, [r0, #0x60]
00875460  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
00875464  03 00 52 e1                                      cmp r2, r3
00875468  01 00 00 0a                                      beq #0x875474
0087546c  01 00 a0 e3                                      mov r0, #1
00875470  10 80 bd e8                                      pop {r4, pc}
00875474  00 30 94 e5                                      ldr r3, [r4]
00875478  04 00 a0 e1                                      mov r0, r4
0087547c  00 10 a0 e3                                      mov r1, #0
00875480  0f e0 a0 e1                                      mov lr, pc
00875484  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00875488  64 20 94 e5                                      ldr r2, [r4, #0x64]
0087548c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00875490  03 00 52 e1                                      cmp r2, r3
00875494  01 00 00 3a                                      blo #0x8754a0
00875498  00 00 a0 e3                                      mov r0, #0
0087549c  10 80 bd e8                                      pop {r4, pc}
008754a0  08 30 94 e5                                      ldr r3, [r4, #8]
008754a4  54 20 94 e5                                      ldr r2, [r4, #0x54]
008754a8  28 30 93 e5                                      ldr r3, [r3, #0x28]
008754ac  03 00 52 e1                                      cmp r2, r3
008754b0  ed ff ff 3a                                      blo #0x87546c
008754b4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008754b8  60 00 94 e5                                      ldr r0, [r4, #0x60]
008754bc  03 00 50 e0                                      subs r0, r0, r3
008754c0  01 00 a0 13                                      movne r0, #1
008754c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008754dc, declared_size=92, range_size=92, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCMD1Ev
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM()
; decoder-mode: arm
008754dc  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
008754e0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
008754e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008754e8  03 30 8f e0                                      add r3, pc, r3
008754ec  02 20 93 e7                                      ldr r2, [r3, r2]
008754f0  00 60 a0 e1                                      mov r6, r0
008754f4  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
008754f8  08 20 82 e2                                      add r2, r2, #8
008754fc  00 20 86 e5                                      str r2, [r6]
00875500  cf 6b ea eb                                      bl #0x310444
00875504  68 00 96 e5                                      ldr r0, [r6, #0x68]
00875508  cd 6b ea eb                                      bl #0x310444
0087550c  2a 50 86 e2                                      add r5, r6, #0x2a
00875510  4a 40 86 e2                                      add r4, r6, #0x4a
00875514  04 40 44 e2                                      sub r4, r4, #4
00875518  04 00 a0 e1                                      mov r0, r4
0087551c  d0 82 00 eb                                      bl #0x896064
00875520  05 00 54 e1                                      cmp r4, r5
00875524  fa ff ff 1a                                      bne #0x875514
00875528  06 00 a0 e1                                      mov r0, r6
0087552c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00875530  a8 f5 11 00 f4 13 00 00                          .byte 0xa8, 0xf5, 0x11, 0x00, 0xf4, 0x13, 0x00, 0x00

; FUNCTION 0x00875538, declared_size=28, range_size=28, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCMD0Ev
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM()
; decoder-mode: arm
00875538  10 40 2d e9                                      push {r4, lr}
0087553c  00 40 a0 e1                                      mov r4, r0
00875540  e5 ff ff eb                                      bl #0x8754dc
00875544  04 00 a0 e1                                      mov r0, r4
00875548  58 63 ea eb                                      bl #0x30e2b0
0087554c  04 00 a0 e1                                      mov r0, r4
00875550  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00875554, declared_size=92, range_size=92, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCMD2Ev
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM()
; decoder-mode: arm
00875554  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00875558  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0087555c  70 40 2d e9                                      push {r4, r5, r6, lr}
00875560  03 30 8f e0                                      add r3, pc, r3
00875564  02 20 93 e7                                      ldr r2, [r3, r2]
00875568  00 60 a0 e1                                      mov r6, r0
0087556c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00875570  08 20 82 e2                                      add r2, r2, #8
00875574  00 20 86 e5                                      str r2, [r6]
00875578  b1 6b ea eb                                      bl #0x310444
0087557c  68 00 96 e5                                      ldr r0, [r6, #0x68]
00875580  af 6b ea eb                                      bl #0x310444
00875584  2a 50 86 e2                                      add r5, r6, #0x2a
00875588  4a 40 86 e2                                      add r4, r6, #0x4a
0087558c  04 40 44 e2                                      sub r4, r4, #4
00875590  04 00 a0 e1                                      mov r0, r4
00875594  b2 82 00 eb                                      bl #0x896064
00875598  05 00 54 e1                                      cmp r4, r5
0087559c  fa ff ff 1a                                      bne #0x87558c
008755a0  06 00 a0 e1                                      mov r0, r6
008755a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008755a8  30 f5 11 00 f4 13 00 00                          .byte 0x30, 0xf5, 0x11, 0x00, 0xf4, 0x13, 0x00, 0x00

; FUNCTION 0x008755b0, declared_size=404, range_size=404, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCMC1EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(vox::StreamCursorInterface*, vox::WaveChunk*)
; decoder-mode: arm
008755b0  84 31 9f e5                                      ldr r3, [pc, #0x184]
008755b4  84 c1 9f e5                                      ldr ip, [pc, #0x184]
008755b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008755bc  03 30 8f e0                                      add r3, pc, r3
008755c0  0c c0 93 e7                                      ldr ip, [r3, ip]
008755c4  00 70 a0 e3                                      mov r7, #0
008755c8  00 40 a0 e1                                      mov r4, r0
008755cc  08 c0 8c e2                                      add ip, ip, #8
008755d0  00 50 a0 e1                                      mov r5, r0
008755d4  04 10 80 e5                                      str r1, [r0, #4]
008755d8  02 60 a0 e1                                      mov r6, r2
008755dc  08 20 84 e5                                      str r2, [r4, #8]
008755e0  0c 70 80 e5                                      str r7, [r0, #0xc]
008755e4  10 70 80 e5                                      str r7, [r0, #0x10]
008755e8  14 70 80 e5                                      str r7, [r0, #0x14]
008755ec  18 70 80 e5                                      str r7, [r0, #0x18]
008755f0  1c 70 80 e5                                      str r7, [r0, #0x1c]
008755f4  20 70 80 e5                                      str r7, [r0, #0x20]
008755f8  24 70 80 e5                                      str r7, [r0, #0x24]
008755fc  28 70 c0 e5                                      strb r7, [r0, #0x28]
00875600  2a c0 85 e4                                      str ip, [r5], #0x2a
00875604  07 00 85 e0                                      add r0, r5, r7
00875608  04 70 87 e2                                      add r7, r7, #4
0087560c  8e 82 00 eb                                      bl #0x89604c
00875610  20 00 57 e3                                      cmp r7, #0x20
00875614  fa ff ff 1a                                      bne #0x875604
00875618  00 50 a0 e3                                      mov r5, #0
0087561c  04 00 a0 e1                                      mov r0, r4
00875620  4c 50 84 e5                                      str r5, [r4, #0x4c]
00875624  54 50 84 e5                                      str r5, [r4, #0x54]
00875628  5c 50 84 e5                                      str r5, [r4, #0x5c]
0087562c  60 50 84 e5                                      str r5, [r4, #0x60]
00875630  64 50 84 e5                                      str r5, [r4, #0x64]
00875634  68 50 84 e5                                      str r5, [r4, #0x68]
00875638  8a 82 00 eb                                      bl #0x896068
0087563c  04 30 94 e5                                      ldr r3, [r4, #4]
00875640  03 00 a0 e1                                      mov r0, r3
00875644  00 30 93 e5                                      ldr r3, [r3]
00875648  0f e0 a0 e1                                      mov lr, pc
0087564c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00875650  58 00 84 e5                                      str r0, [r4, #0x58]
00875654  b0 02 d6 e1                                      ldrh r0, [r6, #0x20]
00875658  00 01 a0 e1                                      lsl r0, r0, #2
0087565c  a5 6b ea eb                                      bl #0x3104f8
00875660  05 00 50 e1                                      cmp r0, r5
00875664  4c 00 84 e5                                      str r0, [r4, #0x4c]
00875668  25 00 00 0a                                      beq #0x875704
0087566c  b0 02 d6 e1                                      ldrh r0, [r6, #0x20]
00875670  a0 6b ea eb                                      bl #0x3104f8
00875674  00 00 50 e3                                      cmp r0, #0
00875678  00 70 a0 e1                                      mov r7, r0
0087567c  68 00 84 e5                                      str r0, [r4, #0x68]
00875680  25 00 00 0a                                      beq #0x87571c
00875684  b6 31 d6 e1                                      ldrh r3, [r6, #0x16]
00875688  00 00 53 e3                                      cmp r3, #0
0087568c  16 00 00 0a                                      beq #0x8756ec
00875690  b0 22 d6 e1                                      ldrh r2, [r6, #0x20]
00875694  03 10 a0 e1                                      mov r1, r3
00875698  03 31 42 e0                                      sub r3, r2, r3, lsl #2
0087569c  83 00 a0 e1                                      lsl r0, r3, #1
008756a0  ff 62 ea eb                                      bl #0x30e2a4
008756a4  10 30 a0 e3                                      mov r3, #0x10
008756a8  01 00 80 e2                                      add r0, r0, #1
008756ac  50 00 84 e5                                      str r0, [r4, #0x50]
008756b0  18 30 84 e5                                      str r3, [r4, #0x18]
008756b4  b6 31 d6 e1                                      ldrh r3, [r6, #0x16]
008756b8  10 30 84 e5                                      str r3, [r4, #0x10]
008756bc  18 20 96 e5                                      ldr r2, [r6, #0x18]
008756c0  08 00 53 e3                                      cmp r3, #8
008756c4  14 20 84 e5                                      str r2, [r4, #0x14]
008756c8  34 30 96 e5                                      ldr r3, [r6, #0x34]
008756cc  1c 30 84 e5                                      str r3, [r4, #0x1c]
008756d0  03 00 00 da                                      ble #0x8756e4
008756d4  1c 50 84 e5                                      str r5, [r4, #0x1c]
008756d8  10 50 84 e5                                      str r5, [r4, #0x10]
008756dc  14 50 84 e5                                      str r5, [r4, #0x14]
008756e0  18 50 84 e5                                      str r5, [r4, #0x18]
008756e4  04 00 a0 e1                                      mov r0, r4
008756e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008756ec  1c 30 84 e5                                      str r3, [r4, #0x1c]
008756f0  10 30 84 e5                                      str r3, [r4, #0x10]
008756f4  14 30 84 e5                                      str r3, [r4, #0x14]
008756f8  18 30 84 e5                                      str r3, [r4, #0x18]
008756fc  04 00 a0 e1                                      mov r0, r4
00875700  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00875704  1c 00 84 e5                                      str r0, [r4, #0x1c]
00875708  10 00 84 e5                                      str r0, [r4, #0x10]
0087570c  14 00 84 e5                                      str r0, [r4, #0x14]
00875710  18 00 84 e5                                      str r0, [r4, #0x18]
00875714  04 00 a0 e1                                      mov r0, r4
00875718  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0087571c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00875720  47 6b ea eb                                      bl #0x310444
00875724  1c 70 84 e5                                      str r7, [r4, #0x1c]
00875728  4c 70 84 e5                                      str r7, [r4, #0x4c]
0087572c  10 70 84 e5                                      str r7, [r4, #0x10]
00875730  14 70 84 e5                                      str r7, [r4, #0x14]
00875734  18 70 84 e5                                      str r7, [r4, #0x18]
00875738  e9 ff ff ea                                      b #0x8756e4
; mapping-symbol data/literal pool
0087573c  d4 f4 11 00 f4 13 00 00                          .byte 0xd4, 0xf4, 0x11, 0x00, 0xf4, 0x13, 0x00, 0x00

; FUNCTION 0x00875744, declared_size=404, range_size=404, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCMC2EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(vox::StreamCursorInterface*, vox::WaveChunk*)
; decoder-mode: arm
00875744  84 31 9f e5                                      ldr r3, [pc, #0x184]
00875748  84 c1 9f e5                                      ldr ip, [pc, #0x184]
0087574c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00875750  03 30 8f e0                                      add r3, pc, r3
00875754  0c c0 93 e7                                      ldr ip, [r3, ip]
00875758  00 70 a0 e3                                      mov r7, #0
0087575c  00 40 a0 e1                                      mov r4, r0
00875760  08 c0 8c e2                                      add ip, ip, #8
00875764  00 50 a0 e1                                      mov r5, r0
00875768  04 10 80 e5                                      str r1, [r0, #4]
0087576c  02 60 a0 e1                                      mov r6, r2
00875770  08 20 84 e5                                      str r2, [r4, #8]
00875774  0c 70 80 e5                                      str r7, [r0, #0xc]
00875778  10 70 80 e5                                      str r7, [r0, #0x10]
0087577c  14 70 80 e5                                      str r7, [r0, #0x14]
00875780  18 70 80 e5                                      str r7, [r0, #0x18]
00875784  1c 70 80 e5                                      str r7, [r0, #0x1c]
00875788  20 70 80 e5                                      str r7, [r0, #0x20]
0087578c  24 70 80 e5                                      str r7, [r0, #0x24]
00875790  28 70 c0 e5                                      strb r7, [r0, #0x28]
00875794  2a c0 85 e4                                      str ip, [r5], #0x2a
00875798  07 00 85 e0                                      add r0, r5, r7
0087579c  04 70 87 e2                                      add r7, r7, #4
008757a0  29 82 00 eb                                      bl #0x89604c
008757a4  20 00 57 e3                                      cmp r7, #0x20
008757a8  fa ff ff 1a                                      bne #0x875798
008757ac  00 50 a0 e3                                      mov r5, #0
008757b0  04 00 a0 e1                                      mov r0, r4
008757b4  4c 50 84 e5                                      str r5, [r4, #0x4c]
008757b8  54 50 84 e5                                      str r5, [r4, #0x54]
008757bc  5c 50 84 e5                                      str r5, [r4, #0x5c]
008757c0  60 50 84 e5                                      str r5, [r4, #0x60]
008757c4  64 50 84 e5                                      str r5, [r4, #0x64]
008757c8  68 50 84 e5                                      str r5, [r4, #0x68]
008757cc  25 82 00 eb                                      bl #0x896068
008757d0  04 30 94 e5                                      ldr r3, [r4, #4]
008757d4  03 00 a0 e1                                      mov r0, r3
008757d8  00 30 93 e5                                      ldr r3, [r3]
008757dc  0f e0 a0 e1                                      mov lr, pc
008757e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008757e4  58 00 84 e5                                      str r0, [r4, #0x58]
008757e8  b0 02 d6 e1                                      ldrh r0, [r6, #0x20]
008757ec  00 01 a0 e1                                      lsl r0, r0, #2
008757f0  40 6b ea eb                                      bl #0x3104f8
008757f4  05 00 50 e1                                      cmp r0, r5
008757f8  4c 00 84 e5                                      str r0, [r4, #0x4c]
008757fc  25 00 00 0a                                      beq #0x875898
00875800  b0 02 d6 e1                                      ldrh r0, [r6, #0x20]
00875804  3b 6b ea eb                                      bl #0x3104f8
00875808  00 00 50 e3                                      cmp r0, #0
0087580c  00 70 a0 e1                                      mov r7, r0
00875810  68 00 84 e5                                      str r0, [r4, #0x68]
00875814  25 00 00 0a                                      beq #0x8758b0
00875818  b6 31 d6 e1                                      ldrh r3, [r6, #0x16]
0087581c  00 00 53 e3                                      cmp r3, #0
00875820  16 00 00 0a                                      beq #0x875880
00875824  b0 22 d6 e1                                      ldrh r2, [r6, #0x20]
00875828  03 10 a0 e1                                      mov r1, r3
0087582c  03 31 42 e0                                      sub r3, r2, r3, lsl #2
00875830  83 00 a0 e1                                      lsl r0, r3, #1
00875834  9a 62 ea eb                                      bl #0x30e2a4
00875838  10 30 a0 e3                                      mov r3, #0x10
0087583c  01 00 80 e2                                      add r0, r0, #1
00875840  50 00 84 e5                                      str r0, [r4, #0x50]
00875844  18 30 84 e5                                      str r3, [r4, #0x18]
00875848  b6 31 d6 e1                                      ldrh r3, [r6, #0x16]
0087584c  10 30 84 e5                                      str r3, [r4, #0x10]
00875850  18 20 96 e5                                      ldr r2, [r6, #0x18]
00875854  08 00 53 e3                                      cmp r3, #8
00875858  14 20 84 e5                                      str r2, [r4, #0x14]
0087585c  34 30 96 e5                                      ldr r3, [r6, #0x34]
00875860  1c 30 84 e5                                      str r3, [r4, #0x1c]
00875864  03 00 00 da                                      ble #0x875878
00875868  1c 50 84 e5                                      str r5, [r4, #0x1c]
0087586c  10 50 84 e5                                      str r5, [r4, #0x10]
00875870  14 50 84 e5                                      str r5, [r4, #0x14]
00875874  18 50 84 e5                                      str r5, [r4, #0x18]
00875878  04 00 a0 e1                                      mov r0, r4
0087587c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00875880  1c 30 84 e5                                      str r3, [r4, #0x1c]
00875884  10 30 84 e5                                      str r3, [r4, #0x10]
00875888  14 30 84 e5                                      str r3, [r4, #0x14]
0087588c  18 30 84 e5                                      str r3, [r4, #0x18]
00875890  04 00 a0 e1                                      mov r0, r4
00875894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00875898  1c 00 84 e5                                      str r0, [r4, #0x1c]
0087589c  10 00 84 e5                                      str r0, [r4, #0x10]
008758a0  14 00 84 e5                                      str r0, [r4, #0x14]
008758a4  18 00 84 e5                                      str r0, [r4, #0x18]
008758a8  04 00 a0 e1                                      mov r0, r4
008758ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008758b0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
008758b4  e2 6a ea eb                                      bl #0x310444
008758b8  1c 70 84 e5                                      str r7, [r4, #0x1c]
008758bc  4c 70 84 e5                                      str r7, [r4, #0x4c]
008758c0  10 70 84 e5                                      str r7, [r4, #0x10]
008758c4  14 70 84 e5                                      str r7, [r4, #0x14]
008758c8  18 70 84 e5                                      str r7, [r4, #0x18]
008758cc  e9 ff ff ea                                      b #0x875878
; mapping-symbol data/literal pool
008758d0  40 f3 11 00 f4 13 00 00                          .byte 0x40, 0xf3, 0x11, 0x00, 0xf4, 0x13, 0x00, 0x00

; FUNCTION 0x008758d8, declared_size=860, range_size=860, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM11DecodeBlockEPv
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::DecodeBlock(void*)
; decoder-mode: arm
008758d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008758dc  54 d0 4d e2                                      sub sp, sp, #0x54
008758e0  18 00 8d e5                                      str r0, [sp, #0x18]
008758e4  08 30 90 e5                                      ldr r3, [r0, #8]
008758e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
008758ec  18 e0 9d e5                                      ldr lr, [sp, #0x18]
008758f0  28 c0 93 e5                                      ldr ip, [r3, #0x28]
008758f4  54 00 90 e5                                      ldr r0, [r0, #0x54]
008758f8  68 40 92 e5                                      ldr r4, [r2, #0x68]
008758fc  b0 22 d3 e1                                      ldrh r2, [r3, #0x20]
00875900  04 30 9e e5                                      ldr r3, [lr, #4]
00875904  0c 00 60 e0                                      rsb r0, r0, ip
00875908  02 00 50 e1                                      cmp r0, r2
0087590c  00 20 a0 31                                      movlo r2, r0
00875910  01 50 a0 e1                                      mov r5, r1
00875914  03 00 a0 e1                                      mov r0, r3
00875918  04 10 a0 e1                                      mov r1, r4
0087591c  00 30 93 e5                                      ldr r3, [r3]
00875920  0f e0 a0 e1                                      mov lr, pc
00875924  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00875928  2c 00 8d e5                                      str r0, [sp, #0x2c]
0087592c  b0 10 d4 e1                                      ldrh r1, [r4]
00875930  18 00 9d e5                                      ldr r0, [sp, #0x18]
00875934  ec c2 9f e5                                      ldr ip, [pc, #0x2ec]
00875938  ba 12 c0 e1                                      strh r1, [r0, #0x2a]
0087593c  b2 30 d4 e1                                      ldrh r3, [r4, #2]
00875940  08 20 90 e5                                      ldr r2, [r0, #8]
00875944  0c c0 8f e0                                      add ip, pc, ip
00875948  bc 32 c0 e1                                      strh r3, [r0, #0x2c]
0087594c  b6 01 d2 e1                                      ldrh r0, [r2, #0x16]
00875950  24 c0 8d e5                                      str ip, [sp, #0x24]
00875954  01 00 50 e3                                      cmp r0, #1
00875958  30 50 8d d5                                      strle r5, [sp, #0x30]
0087595c  1a 00 00 da                                      ble #0x8759cc
00875960  18 10 9d e5                                      ldr r1, [sp, #0x18]
00875964  01 30 a0 e3                                      mov r3, #1
00875968  01 c0 a0 e1                                      mov ip, r1
0087596c  03 01 a0 e1                                      lsl r0, r3, #2
00875970  04 20 a0 e1                                      mov r2, r4
00875974  b0 00 b2 e1                                      ldrh r0, [r2, r0]!
00875978  01 30 83 e2                                      add r3, r3, #1
0087597c  be 02 c1 e1                                      strh r0, [r1, #0x2e]
00875980  b2 20 d2 e1                                      ldrh r2, [r2, #2]
00875984  b0 23 c1 e1                                      strh r2, [r1, #0x30]
00875988  08 20 9c e5                                      ldr r2, [ip, #8]
0087598c  04 10 81 e2                                      add r1, r1, #4
00875990  b6 01 d2 e1                                      ldrh r0, [r2, #0x16]
00875994  03 00 50 e1                                      cmp r0, r3
00875998  f3 ff ff ca                                      bgt #0x87596c
0087599c  01 00 50 e3                                      cmp r0, #1
008759a0  30 50 8d e5                                      str r5, [sp, #0x30]
008759a4  08 00 00 da                                      ble #0x8759cc
008759a8  30 60 8d e2                                      add r6, sp, #0x30
008759ac  00 11 86 e0                                      add r1, r6, r0, lsl #2
008759b0  04 30 86 e2                                      add r3, r6, #4
008759b4  00 00 00 ea                                      b #0x8759bc
008759b8  04 50 13 e5                                      ldr r5, [r3, #-4]
008759bc  02 c0 85 e2                                      add ip, r5, #2
008759c0  04 c0 83 e4                                      str ip, [r3], #4
008759c4  01 00 53 e1                                      cmp r3, r1
008759c8  fa ff ff 1a                                      bne #0x8759b8
008759cc  00 00 50 e3                                      cmp r0, #0
008759d0  00 10 a0 01                                      moveq r1, r0
008759d4  10 00 00 0a                                      beq #0x875a1c
008759d8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008759dc  00 30 a0 e3                                      mov r3, #0
008759e0  03 00 a0 e1                                      mov r0, r3
008759e4  30 60 8d e2                                      add r6, sp, #0x30
008759e8  0c 70 a0 e1                                      mov r7, ip
008759ec  03 50 96 e7                                      ldr r5, [r6, r3]
008759f0  ba 12 dc e1                                      ldrh r1, [ip, #0x2a]
008759f4  01 00 80 e2                                      add r0, r0, #1
008759f8  04 c0 8c e2                                      add ip, ip, #4
008759fc  b0 10 c5 e1                                      strh r1, [r5]
00875a00  08 20 97 e5                                      ldr r2, [r7, #8]
00875a04  b6 11 d2 e1                                      ldrh r1, [r2, #0x16]
00875a08  81 50 85 e0                                      add r5, r5, r1, lsl #1
00875a0c  00 00 51 e1                                      cmp r1, r0
00875a10  03 50 86 e7                                      str r5, [r6, r3]
00875a14  04 30 83 e2                                      add r3, r3, #4
00875a18  f3 ff ff ca                                      bgt #0x8759ec
00875a1c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00875a20  01 11 a0 e1                                      lsl r1, r1, #2
00875a24  03 30 61 e0                                      rsb r3, r1, r3
00875a28  00 00 53 e3                                      cmp r3, #0
00875a2c  28 30 8d e5                                      str r3, [sp, #0x28]
00875a30  01 30 a0 d3                                      movle r3, #1
00875a34  20 30 8d d5                                      strle r3, [sp, #0x20]
00875a38  6a 00 00 da                                      ble #0x875be8
00875a3c  02 c1 a0 e3                                      mov ip, #0x80000000
00875a40  01 b0 84 e0                                      add fp, r4, r1
00875a44  4c c8 a0 e1                                      asr ip, ip, #0x10
00875a48  01 00 a0 e3                                      mov r0, #1
00875a4c  00 10 a0 e3                                      mov r1, #0
00875a50  04 c0 8d e5                                      str ip, [sp, #4]
00875a54  20 00 8d e5                                      str r0, [sp, #0x20]
00875a58  1c 10 8d e5                                      str r1, [sp, #0x1c]
00875a5c  b6 a1 d2 e1                                      ldrh sl, [r2, #0x16]
00875a60  00 00 5a e3                                      cmp sl, #0
00875a64  58 00 00 0a                                      beq #0x875bcc
00875a68  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
00875a6c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00875a70  18 90 9d e5                                      ldr sb, [sp, #0x18]
00875a74  00 00 a0 e3                                      mov r0, #0
00875a78  03 80 91 e7                                      ldr r8, [r1, r3]
00875a7c  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
00875a80  30 20 8d e2                                      add r2, sp, #0x30
00875a84  08 00 8d e5                                      str r0, [sp, #8]
00875a88  03 70 91 e7                                      ldr r7, [r1, r3]
00875a8c  0c 00 8d e5                                      str r0, [sp, #0xc]
00875a90  14 20 8d e5                                      str r2, [sp, #0x14]
00875a94  02 60 db e5                                      ldrb r6, [fp, #2]
00875a98  14 00 9d e5                                      ldr r0, [sp, #0x14]
00875a9c  08 c0 9d e5                                      ldr ip, [sp, #8]
00875aa0  01 10 db e5                                      ldrb r1, [fp, #1]
00875aa4  00 20 db e5                                      ldrb r2, [fp]
00875aa8  0c c0 90 e7                                      ldr ip, [r0, ip]
00875aac  03 30 db e5                                      ldrb r3, [fp, #3]
00875ab0  06 68 a0 e1                                      lsl r6, r6, #0x10
00875ab4  01 64 86 e0                                      add r6, r6, r1, lsl #8
00875ab8  02 60 86 e0                                      add r6, r6, r2
00875abc  10 c0 8d e5                                      str ip, [sp, #0x10]
00875ac0  03 6c 86 e0                                      add r6, r6, r3, lsl #24
00875ac4  0c 50 a0 e1                                      mov r5, ip
00875ac8  fa 42 d9 e1                                      ldrsh r4, [sb, #0x2a]
00875acc  2c 00 d9 e5                                      ldrb r0, [sb, #0x2c]
00875ad0  8a a0 a0 e1                                      lsl sl, sl, #1
00875ad4  0f 30 06 e2                                      and r3, r6, #0xf
00875ad8  00 c0 a0 e3                                      mov ip, #0
00875adc  13 00 00 ea                                      b #0x875b30
00875ae0  04 10 9d e5                                      ldr r1, [sp, #4]
00875ae4  04 40 62 e0                                      rsb r4, r2, r4
00875ae8  01 00 54 e1                                      cmp r4, r1
00875aec  01 40 a0 b1                                      movlt r4, r1
00875af0  03 30 d7 e7                                      ldrb r3, [r7, r3]
00875af4  03 00 80 e0                                      add r0, r0, r3
00875af8  70 00 ef e6                                      uxtb r0, r0
00875afc  80 00 10 e3                                      tst r0, #0x80
00875b00  00 00 a0 13                                      movne r0, #0
00875b04  01 00 00 1a                                      bne #0x875b10
00875b08  58 00 50 e3                                      cmp r0, #0x58
00875b0c  58 00 a0 23                                      movhs r0, #0x58
00875b10  01 c0 8c e2                                      add ip, ip, #1
00875b14  74 30 ff e6                                      uxth r3, r4
00875b18  08 00 5c e3                                      cmp ip, #8
00875b1c  b0 30 c5 e1                                      strh r3, [r5]
00875b20  12 00 00 0a                                      beq #0x875b70
00875b24  46 62 a0 e1                                      asr r6, r6, #4
00875b28  0a 50 85 e0                                      add r5, r5, sl
00875b2c  0f 30 06 e2                                      and r3, r6, #0xf
00875b30  80 20 a0 e1                                      lsl r2, r0, #1
00875b34  f2 10 98 e1                                      ldrsh r1, [r8, r2]
00875b38  04 00 13 e3                                      tst r3, #4
00875b3c  c1 21 a0 e1                                      asr r2, r1, #3
00875b40  01 20 82 10                                      addne r2, r2, r1
00875b44  02 00 13 e3                                      tst r3, #2
00875b48  c1 20 82 10                                      addne r2, r2, r1, asr #1
00875b4c  01 00 13 e3                                      tst r3, #1
00875b50  41 21 82 10                                      addne r2, r2, r1, asr #2
00875b54  08 00 13 e3                                      tst r3, #8
00875b58  e0 ff ff 1a                                      bne #0x875ae0
00875b5c  04 40 82 e0                                      add r4, r2, r4
00875b60  ff 2f 07 e3                                      movw r2, #0x7fff
00875b64  02 00 54 e1                                      cmp r4, r2
00875b68  02 40 a0 a1                                      movge r4, r2
00875b6c  df ff ff ea                                      b #0x875af0
00875b70  ba 32 c9 e1                                      strh r3, [sb, #0x2a]
00875b74  2c 00 c9 e5                                      strb r0, [sb, #0x2c]
00875b78  18 30 9d e5                                      ldr r3, [sp, #0x18]
00875b7c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00875b80  10 00 9d e5                                      ldr r0, [sp, #0x10]
00875b84  08 20 93 e5                                      ldr r2, [r3, #8]
00875b88  01 c0 8c e2                                      add ip, ip, #1
00875b8c  0c c0 8d e5                                      str ip, [sp, #0xc]
00875b90  b6 31 d2 e1                                      ldrh r3, [r2, #0x16]
00875b94  08 10 9d e5                                      ldr r1, [sp, #8]
00875b98  04 b0 8b e2                                      add fp, fp, #4
00875b9c  03 a0 a0 e1                                      mov sl, r3
00875ba0  0c 00 5a e1                                      cmp sl, ip
00875ba4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00875ba8  03 32 80 e0                                      add r3, r0, r3, lsl #4
00875bac  04 90 89 e2                                      add sb, sb, #4
00875bb0  01 30 8c e7                                      str r3, [ip, r1]
00875bb4  04 10 81 e2                                      add r1, r1, #4
00875bb8  08 10 8d e5                                      str r1, [sp, #8]
00875bbc  b4 ff ff ca                                      bgt #0x875a94
00875bc0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00875bc4  00 00 81 e0                                      add r0, r1, r0
00875bc8  1c 00 8d e5                                      str r0, [sp, #0x1c]
00875bcc  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00875bd0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00875bd4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00875bd8  08 c0 8c e2                                      add ip, ip, #8
00875bdc  20 c0 8d e5                                      str ip, [sp, #0x20]
00875be0  03 00 51 e1                                      cmp r1, r3
00875be4  9c ff ff ba                                      blt #0x875a5c
00875be8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00875bec  64 30 9c e5                                      ldr r3, [ip, #0x64]
00875bf0  1c 20 9c e5                                      ldr r2, [ip, #0x1c]
00875bf4  54 10 9c e5                                      ldr r1, [ip, #0x54]
00875bf8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00875bfc  03 00 8c e0                                      add r0, ip, r3
00875c00  02 00 50 e1                                      cmp r0, r2
00875c04  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00875c08  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00875c0c  02 30 63 80                                      rsbhi r3, r3, r2
00875c10  00 10 81 e0                                      add r1, r1, r0
00875c14  54 10 8c e5                                      str r1, [ip, #0x54]
00875c18  20 30 8d 85                                      strhi r3, [sp, #0x20]
00875c1c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00875c20  54 d0 8d e2                                      add sp, sp, #0x54
00875c24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00875c28  4c f1 11 00 94 38 00 00 60 21 00 00              .byte 0x4c, 0xf1, 0x11, 0x00, 0x94, 0x38, 0x00, 0x00, 0x60, 0x21, 0x00, 0x00

; FUNCTION 0x00875c34, declared_size=148, range_size=148, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM4SeekEj
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::Seek(unsigned int)
; decoder-mode: arm
00875c34  70 40 2d e9                                      push {r4, r5, r6, lr}
00875c38  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00875c3c  00 40 a0 e1                                      mov r4, r0
00875c40  01 50 a0 e1                                      mov r5, r1
00875c44  01 00 53 e1                                      cmp r3, r1
00875c48  01 00 00 2a                                      bhs #0x875c54
00875c4c  00 00 e0 e3                                      mvn r0, #0
00875c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00875c54  fc ff ff 9a                                      bls #0x875c4c
00875c58  50 10 90 e5                                      ldr r1, [r0, #0x50]
00875c5c  05 00 a0 e1                                      mov r0, r5
00875c60  f9 63 ea eb                                      bl #0x30ec4c
00875c64  08 20 94 e5                                      ldr r2, [r4, #8]
00875c68  00 60 a0 e1                                      mov r6, r0
00875c6c  04 30 94 e5                                      ldr r3, [r4, #4]
00875c70  b0 12 d2 e1                                      ldrh r1, [r2, #0x20]
00875c74  58 c0 94 e5                                      ldr ip, [r4, #0x58]
00875c78  00 20 a0 e3                                      mov r2, #0
00875c7c  91 06 01 e0                                      mul r1, r1, r6
00875c80  03 00 a0 e1                                      mov r0, r3
00875c84  54 10 84 e5                                      str r1, [r4, #0x54]
00875c88  00 30 93 e5                                      ldr r3, [r3]
00875c8c  0c 10 81 e0                                      add r1, r1, ip
00875c90  0f e0 a0 e1                                      mov lr, pc
00875c94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00875c98  50 30 94 e5                                      ldr r3, [r4, #0x50]
00875c9c  04 00 a0 e1                                      mov r0, r4
00875ca0  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00875ca4  93 06 06 e0                                      mul r6, r3, r6
00875ca8  05 50 66 e0                                      rsb r5, r6, r5
00875cac  06 60 85 e0                                      add r6, r5, r6
00875cb0  64 60 84 e5                                      str r6, [r4, #0x64]
00875cb4  60 50 84 e5                                      str r5, [r4, #0x60]
00875cb8  06 ff ff eb                                      bl #0x8758d8
00875cbc  5c 00 84 e5                                      str r0, [r4, #0x5c]
00875cc0  00 00 a0 e3                                      mov r0, #0
00875cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00875cc8, declared_size=348, range_size=348, mode=arm
; class-group: vox::VoxMSWavSubDecoderIMAADPCM
; alias: _ZN3vox26VoxMSWavSubDecoderIMAADPCM6DecodeEPvi
; demangled: vox::VoxMSWavSubDecoderIMAADPCM::Decode(void*, int)
; decoder-mode: arm
00875cc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00875ccc  00 40 a0 e1                                      mov r4, r0
00875cd0  18 00 90 e5                                      ldr r0, [r0, #0x18]
00875cd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00875cd8  01 80 a0 e1                                      mov r8, r1
00875cdc  c0 11 a0 e1                                      asr r1, r0, #3
00875ce0  93 01 01 e0                                      mul r1, r3, r1
00875ce4  02 00 a0 e1                                      mov r0, r2
00875ce8  6d 61 ea eb                                      bl #0x30e2a4
00875cec  00 70 50 e2                                      subs r7, r0, #0
00875cf0  07 60 a0 c1                                      movgt r6, r7
00875cf4  00 a0 a0 c3                                      movgt sl, #0
00875cf8  0a 00 00 ca                                      bgt #0x875d28
00875cfc  46 00 00 ea                                      b #0x875e1c
00875d00  08 30 94 e5                                      ldr r3, [r4, #8]
00875d04  54 c0 94 e5                                      ldr ip, [r4, #0x54]
00875d08  28 30 93 e5                                      ldr r3, [r3, #0x28]
00875d0c  03 00 5c e1                                      cmp ip, r3
00875d10  02 00 00 3a                                      blo #0x875d20
00875d14  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00875d18  03 00 52 e1                                      cmp r2, r3
00875d1c  1f 00 00 0a                                      beq #0x875da0
00875d20  00 00 56 e3                                      cmp r6, #0
00875d24  35 00 00 da                                      ble #0x875e00
00875d28  60 10 94 e5                                      ldr r1, [r4, #0x60]
00875d2c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00875d30  00 00 51 e1                                      cmp r1, r0
00875d34  28 00 00 0a                                      beq #0x875ddc
00875d38  10 20 94 e5                                      ldr r2, [r4, #0x10]
00875d3c  91 02 03 e0                                      mul r3, r1, r2
00875d40  83 30 a0 e1                                      lsl r3, r3, #1
00875d44  00 50 61 e0                                      rsb r5, r1, r0
00875d48  06 00 55 e1                                      cmp r5, r6
00875d4c  06 50 a0 a1                                      movge r5, r6
00875d50  07 00 66 e0                                      rsb r0, r6, r7
00875d54  90 02 00 e0                                      mul r0, r0, r2
00875d58  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00875d5c  92 05 02 e0                                      mul r2, r2, r5
00875d60  03 10 81 e0                                      add r1, r1, r3
00875d64  82 20 a0 e1                                      lsl r2, r2, #1
00875d68  80 00 88 e0                                      add r0, r8, r0, lsl #1
00875d6c  bd 62 ea eb                                      bl #0x30e868
00875d70  64 30 94 e5                                      ldr r3, [r4, #0x64]
00875d74  60 20 94 e5                                      ldr r2, [r4, #0x60]
00875d78  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00875d7c  03 30 85 e0                                      add r3, r5, r3
00875d80  02 20 85 e0                                      add r2, r5, r2
00875d84  0c 00 53 e1                                      cmp r3, ip
00875d88  04 00 a0 e1                                      mov r0, r4
00875d8c  00 10 a0 e3                                      mov r1, #0
00875d90  60 20 84 e5                                      str r2, [r4, #0x60]
00875d94  64 30 84 e5                                      str r3, [r4, #0x64]
00875d98  06 60 65 e0                                      rsb r6, r5, r6
00875d9c  d7 ff ff 3a                                      blo #0x875d00
00875da0  28 30 d4 e5                                      ldrb r3, [r4, #0x28]
00875da4  00 00 53 e3                                      cmp r3, #0
00875da8  04 00 00 0a                                      beq #0x875dc0
00875dac  00 30 94 e5                                      ldr r3, [r4]
00875db0  0f e0 a0 e1                                      mov lr, pc
00875db4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00875db8  00 00 50 e3                                      cmp r0, #0
00875dbc  d7 ff ff 0a                                      beq #0x875d20
00875dc0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00875dc4  10 00 94 e5                                      ldr r0, [r4, #0x10]
00875dc8  07 60 66 e0                                      rsb r6, r6, r7
00875dcc  c3 31 a0 e1                                      asr r3, r3, #3
00875dd0  90 03 03 e0                                      mul r3, r0, r3
00875dd4  96 03 00 e0                                      mul r0, r6, r3
00875dd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00875ddc  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00875de0  04 00 a0 e1                                      mov r0, r4
00875de4  bb fe ff eb                                      bl #0x8758d8
00875de8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00875dec  5c 00 84 e5                                      str r0, [r4, #0x5c]
00875df0  60 a0 84 e5                                      str sl, [r4, #0x60]
00875df4  0a 30 a0 e1                                      mov r3, sl
00875df8  0a 10 a0 e1                                      mov r1, sl
00875dfc  d0 ff ff ea                                      b #0x875d44
00875e00  18 30 94 e5                                      ldr r3, [r4, #0x18]
00875e04  10 00 94 e5                                      ldr r0, [r4, #0x10]
00875e08  07 60 66 e0                                      rsb r6, r6, r7
00875e0c  c3 31 a0 e1                                      asr r3, r3, #3
00875e10  90 03 03 e0                                      mul r3, r0, r3
00875e14  96 03 00 e0                                      mul r0, r6, r3
00875e18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00875e1c  00 00 a0 e3                                      mov r0, #0
00875e20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
