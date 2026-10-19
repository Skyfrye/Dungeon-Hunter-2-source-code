; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d208, declared_size=72, range_size=72, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo12IsActivatingEv
; demangled: CNetPlayerInfo::IsActivating()
; decoder-mode: arm
0036d208  78 31 90 e5                                      ldr r3, [r0, #0x178]
0036d20c  00 00 53 e3                                      cmp r3, #0
0036d210  0c 00 00 ba                                      blt #0x36d248
0036d214  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0036d218  00 00 53 e3                                      cmp r3, #0
0036d21c  09 00 00 ba                                      blt #0x36d248
0036d220  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
0036d224  00 00 53 e3                                      cmp r3, #0
0036d228  06 00 00 ba                                      blt #0x36d248
0036d22c  f0 01 90 e5                                      ldr r0, [r0, #0x1f0]
0036d230  01 00 50 e3                                      cmp r0, #1
0036d234  1e ff 2f 01                                      bxeq lr
0036d238  02 00 50 e3                                      cmp r0, #2
0036d23c  00 00 a0 13                                      movne r0, #0
0036d240  01 00 a0 03                                      moveq r0, #1
0036d244  1e ff 2f e1                                      bx lr
0036d248  00 00 a0 e3                                      mov r0, #0
0036d24c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036f40c, declared_size=168, range_size=168, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo8SetStateEc
; demangled: CNetPlayerInfo::SetState(char)
; decoder-mode: arm
0036f40c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036f410  90 40 9f e5                                      ldr r4, [pc, #0x90]
0036f414  90 30 9f e5                                      ldr r3, [pc, #0x90]
0036f418  2c d0 4d e2                                      sub sp, sp, #0x2c
0036f41c  04 40 8f e0                                      add r4, pc, r4
0036f420  20 20 9d e5                                      ldr r2, [sp, #0x20]
0036f424  03 30 94 e7                                      ldr r3, [r4, r3]
0036f428  00 c0 e0 e3                                      mvn ip, #0
0036f42c  02 00 51 e1                                      cmp r1, r2
0036f430  00 60 a0 e3                                      mov r6, #0
0036f434  00 20 a0 e3                                      mov r2, #0
0036f438  08 30 83 e2                                      add r3, r3, #8
0036f43c  08 e0 a0 e3                                      mov lr, #8
0036f440  00 70 a0 e3                                      mov r7, #0
0036f444  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0036f448  04 e0 8d e5                                      str lr, [sp, #4]
0036f44c  14 c0 8d e5                                      str ip, [sp, #0x14]
0036f450  1c 20 cd e5                                      strb r2, [sp, #0x1c]
0036f454  00 30 8d e5                                      str r3, [sp]
0036f458  00 50 a0 e1                                      mov r5, r0
0036f45c  10 c0 8d e5                                      str ip, [sp, #0x10]
0036f460  18 20 8d e5                                      str r2, [sp, #0x18]
0036f464  0d 60 a0 01                                      moveq r6, sp
0036f468  03 00 00 0a                                      beq #0x36f47c
0036f46c  0d 00 a0 e1                                      mov r0, sp
0036f470  0d 60 a0 e1                                      mov r6, sp
0036f474  20 10 8d e5                                      str r1, [sp, #0x20]
0036f478  c1 96 12 eb                                      bl #0x814f84
0036f47c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0036f480  20 32 95 e5                                      ldr r3, [r5, #0x220]
0036f484  22 0e 85 e2                                      add r0, r5, #0x220
0036f488  02 20 94 e7                                      ldr r2, [r4, r2]
0036f48c  20 10 86 e2                                      add r1, r6, #0x20
0036f490  08 20 82 e2                                      add r2, r2, #8
0036f494  00 20 8d e5                                      str r2, [sp]
0036f498  0f e0 a0 e1                                      mov lr, pc
0036f49c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036f4a0  2c d0 8d e2                                      add sp, sp, #0x2c
0036f4a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0036f4a8  74 56 62 00 68 40 00 00 24 10 00 00              .byte 0x74, 0x56, 0x62, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00

; FUNCTION 0x00377448, declared_size=904, range_size=904, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoC2ERKS_
; demangled: CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo const&)
; decoder-mode: arm
00377448  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037744c  4c 63 9f e5                                      ldr r6, [pc, #0x34c]
00377450  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
00377454  00 40 a0 e1                                      mov r4, r0
00377458  06 60 8f e0                                      add r6, pc, r6
0037745c  03 30 96 e7                                      ldr r3, [r6, r3]
00377460  01 50 a0 e1                                      mov r5, r1
00377464  1c d0 4d e2                                      sub sp, sp, #0x1c
00377468  08 30 83 e2                                      add r3, r3, #8
0037746c  01 2c a0 e3                                      mov r2, #0x100
00377470  04 30 80 e4                                      str r3, [r0], #4
00377474  04 10 81 e2                                      add r1, r1, #4
00377478  fa 5c fe eb                                      bl #0x30e868
0037747c  04 31 95 e5                                      ldr r3, [r5, #0x104]
00377480  43 1f 85 e2                                      add r1, r5, #0x10c
00377484  43 0f 84 e2                                      add r0, r4, #0x10c
00377488  04 31 84 e5                                      str r3, [r4, #0x104]
0037748c  08 31 d5 e5                                      ldrb r3, [r5, #0x108]
00377490  10 a3 9f e5                                      ldr sl, [pc, #0x310]
00377494  10 73 9f e5                                      ldr r7, [pc, #0x310]
00377498  08 31 c4 e5                                      strb r3, [r4, #0x108]
0037749c  cb ff ff eb                                      bl #0x3773d0
003774a0  24 11 d5 e5                                      ldrb r1, [r5, #0x124]
003774a4  04 23 9f e5                                      ldr r2, [pc, #0x304]
003774a8  04 33 9f e5                                      ldr r3, [pc, #0x304]
003774ac  24 11 c4 e5                                      strb r1, [r4, #0x124]
003774b0  25 11 d5 e5                                      ldrb r1, [r5, #0x125]
003774b4  02 20 96 e7                                      ldr r2, [r6, r2]
003774b8  03 30 96 e7                                      ldr r3, [r6, r3]
003774bc  25 11 c4 e5                                      strb r1, [r4, #0x125]
003774c0  28 11 95 e5                                      ldr r1, [r5, #0x128]
003774c4  08 30 83 e2                                      add r3, r3, #8
003774c8  08 20 82 e2                                      add r2, r2, #8
003774cc  30 31 84 e5                                      str r3, [r4, #0x130]
003774d0  28 11 84 e5                                      str r1, [r4, #0x128]
003774d4  00 20 84 e5                                      str r2, [r4]
003774d8  34 01 95 e5                                      ldr r0, [r5, #0x134]
003774dc  4e 1f a0 e3                                      mov r1, #0x138
003774e0  d0 22 9f e5                                      ldr r2, [pc, #0x2d0]
003774e4  34 01 84 e5                                      str r0, [r4, #0x134]
003774e8  d1 80 85 e1                                      ldrd r8, sb, [r5, r1]
003774ec  f1 80 84 e1                                      strd r8, sb, [r4, r1]
003774f0  40 01 95 e5                                      ldr r0, [r5, #0x140]
003774f4  c0 12 9f e5                                      ldr r1, [pc, #0x2c0]
003774f8  02 20 96 e7                                      ldr r2, [r6, r2]
003774fc  40 01 84 e5                                      str r0, [r4, #0x140]
00377500  44 01 95 e5                                      ldr r0, [r5, #0x144]
00377504  01 10 96 e7                                      ldr r1, [r6, r1]
00377508  08 20 82 e2                                      add r2, r2, #8
0037750c  44 01 84 e5                                      str r0, [r4, #0x144]
00377510  48 c1 95 e5                                      ldr ip, [r5, #0x148]
00377514  08 10 81 e2                                      add r1, r1, #8
00377518  14 10 8d e5                                      str r1, [sp, #0x14]
0037751c  48 c1 84 e5                                      str ip, [r4, #0x148]
00377520  4c 11 d5 e5                                      ldrb r1, [r5, #0x14c]
00377524  30 21 84 e5                                      str r2, [r4, #0x130]
00377528  16 0e a0 e3                                      mov r0, #0x160
0037752c  4c 11 c4 e5                                      strb r1, [r4, #0x14c]
00377530  50 11 95 e5                                      ldr r1, [r5, #0x150]
00377534  14 80 9d e5                                      ldr r8, [sp, #0x14]
00377538  58 31 84 e5                                      str r3, [r4, #0x158]
0037753c  50 11 84 e5                                      str r1, [r4, #0x150]
00377540  30 81 84 e5                                      str r8, [r4, #0x130]
00377544  5c c1 95 e5                                      ldr ip, [r5, #0x15c]
00377548  62 1f a0 e3                                      mov r1, #0x188
0037754c  6c e2 9f e5                                      ldr lr, [pc, #0x26c]
00377550  5c c1 84 e5                                      str ip, [r4, #0x15c]
00377554  d0 80 85 e1                                      ldrd r8, sb, [r5, r0]
00377558  f0 80 84 e1                                      strd r8, sb, [r4, r0]
0037755c  68 01 95 e5                                      ldr r0, [r5, #0x168]
00377560  0a a0 96 e7                                      ldr sl, [r6, sl]
00377564  58 c2 9f e5                                      ldr ip, [pc, #0x258]
00377568  68 01 84 e5                                      str r0, [r4, #0x168]
0037756c  6c 01 95 e5                                      ldr r0, [r5, #0x16c]
00377570  08 a0 8a e2                                      add sl, sl, #8
00377574  02 bc a0 e3                                      mov fp, #0x200
00377578  6c 01 84 e5                                      str r0, [r4, #0x16c]
0037757c  70 01 95 e5                                      ldr r0, [r5, #0x170]
00377580  70 01 84 e5                                      str r0, [r4, #0x170]
00377584  74 01 d5 e5                                      ldrb r0, [r5, #0x174]
00377588  58 21 84 e5                                      str r2, [r4, #0x158]
0037758c  74 01 c4 e5                                      strb r0, [r4, #0x174]
00377590  78 01 95 e5                                      ldr r0, [r5, #0x178]
00377594  80 31 84 e5                                      str r3, [r4, #0x180]
00377598  58 a1 84 e5                                      str sl, [r4, #0x158]
0037759c  78 01 84 e5                                      str r0, [r4, #0x178]
003775a0  84 01 95 e5                                      ldr r0, [r5, #0x184]
003775a4  84 01 84 e5                                      str r0, [r4, #0x184]
003775a8  d1 80 85 e1                                      ldrd r8, sb, [r5, r1]
003775ac  f1 80 84 e1                                      strd r8, sb, [r4, r1]
003775b0  10 92 9f e5                                      ldr sb, [pc, #0x210]
003775b4  90 11 95 e5                                      ldr r1, [r5, #0x190]
003775b8  9a 0f 84 e2                                      add r0, r4, #0x268
003775bc  10 90 8d e5                                      str sb, [sp, #0x10]
003775c0  90 11 84 e5                                      str r1, [r4, #0x190]
003775c4  94 a1 95 e5                                      ldr sl, [r5, #0x194]
003775c8  1b 9e a0 e3                                      mov sb, #0x1b0
003775cc  9a 1f 85 e2                                      add r1, r5, #0x268
003775d0  94 a1 84 e5                                      str sl, [r4, #0x194]
003775d4  98 a1 95 e5                                      ldr sl, [r5, #0x198]
003775d8  98 a1 84 e5                                      str sl, [r4, #0x198]
003775dc  9c a1 d5 e5                                      ldrb sl, [r5, #0x19c]
003775e0  80 21 84 e5                                      str r2, [r4, #0x180]
003775e4  9c a1 c4 e5                                      strb sl, [r4, #0x19c]
003775e8  a0 a1 95 e5                                      ldr sl, [r5, #0x1a0]
003775ec  14 80 9d e5                                      ldr r8, [sp, #0x14]
003775f0  a8 31 84 e5                                      str r3, [r4, #0x1a8]
003775f4  a0 a1 84 e5                                      str sl, [r4, #0x1a0]
003775f8  80 81 84 e5                                      str r8, [r4, #0x180]
003775fc  ac a1 95 e5                                      ldr sl, [r5, #0x1ac]
00377600  ac a1 84 e5                                      str sl, [r4, #0x1ac]
00377604  1b ae a0 e3                                      mov sl, #0x1b0
00377608  d5 80 89 e1                                      ldrd r8, sb, [sb, r5]
0037760c  fa 80 84 e1                                      strd r8, sb, [r4, sl]
00377610  b8 81 95 e5                                      ldr r8, [r5, #0x1b8]
00377614  07 70 96 e7                                      ldr r7, [r6, r7]
00377618  76 9f a0 e3                                      mov sb, #0x1d8
0037761c  b8 81 84 e5                                      str r8, [r4, #0x1b8]
00377620  bc 81 95 e5                                      ldr r8, [r5, #0x1bc]
00377624  0e e0 96 e7                                      ldr lr, [r6, lr]
00377628  0c c0 96 e7                                      ldr ip, [r6, ip]
0037762c  bc 81 84 e5                                      str r8, [r4, #0x1bc]
00377630  c0 a1 95 e5                                      ldr sl, [r5, #0x1c0]
00377634  08 80 87 e2                                      add r8, r7, #8
00377638  08 e0 8e e2                                      add lr, lr, #8
0037763c  c0 a1 84 e5                                      str sl, [r4, #0x1c0]
00377640  c4 71 d5 e5                                      ldrb r7, [r5, #0x1c4]
00377644  a8 21 84 e5                                      str r2, [r4, #0x1a8]
00377648  76 af a0 e3                                      mov sl, #0x1d8
0037764c  c4 71 c4 e5                                      strb r7, [r4, #0x1c4]
00377650  c8 21 95 e5                                      ldr r2, [r5, #0x1c8]
00377654  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00377658  a8 81 84 e5                                      str r8, [r4, #0x1a8]
0037765c  c8 21 84 e5                                      str r2, [r4, #0x1c8]
00377660  d4 21 95 e5                                      ldr r2, [r5, #0x1d4]
00377664  08 c0 8c e2                                      add ip, ip, #8
00377668  d4 21 84 e5                                      str r2, [r4, #0x1d4]
0037766c  d5 80 89 e1                                      ldrd r8, sb, [sb, r5]
00377670  fa 80 84 e1                                      strd r8, sb, [r4, sl]
00377674  e0 21 95 e5                                      ldr r2, [r5, #0x1e0]
00377678  e0 21 84 e5                                      str r2, [r4, #0x1e0]
0037767c  e4 21 95 e5                                      ldr r2, [r5, #0x1e4]
00377680  e4 21 84 e5                                      str r2, [r4, #0x1e4]
00377684  e8 21 95 e5                                      ldr r2, [r5, #0x1e8]
00377688  e8 21 84 e5                                      str r2, [r4, #0x1e8]
0037768c  ec 21 d5 e5                                      ldrb r2, [r5, #0x1ec]
00377690  d0 e1 84 e5                                      str lr, [r4, #0x1d0]
00377694  ec 21 c4 e5                                      strb r2, [r4, #0x1ec]
00377698  f0 21 95 e5                                      ldr r2, [r5, #0x1f0]
0037769c  d0 c1 84 e5                                      str ip, [r4, #0x1d0]
003776a0  f8 31 84 e5                                      str r3, [r4, #0x1f8]
003776a4  f0 21 84 e5                                      str r2, [r4, #0x1f0]
003776a8  fc 21 95 e5                                      ldr r2, [r5, #0x1fc]
003776ac  fc 21 84 e5                                      str r2, [r4, #0x1fc]
003776b0  db 80 85 e1                                      ldrd r8, sb, [r5, fp]
003776b4  fb 80 84 e1                                      strd r8, sb, [r4, fp]
003776b8  08 22 95 e5                                      ldr r2, [r5, #0x208]
003776bc  08 22 84 e5                                      str r2, [r4, #0x208]
003776c0  0c 22 95 e5                                      ldr r2, [r5, #0x20c]
003776c4  0c 22 84 e5                                      str r2, [r4, #0x20c]
003776c8  10 22 95 e5                                      ldr r2, [r5, #0x210]
003776cc  10 22 84 e5                                      str r2, [r4, #0x210]
003776d0  14 22 d5 e5                                      ldrb r2, [r5, #0x214]
003776d4  f8 e1 84 e5                                      str lr, [r4, #0x1f8]
003776d8  14 22 c4 e5                                      strb r2, [r4, #0x214]
003776dc  18 22 95 e5                                      ldr r2, [r5, #0x218]
003776e0  20 32 84 e5                                      str r3, [r4, #0x220]
003776e4  f8 c1 84 e5                                      str ip, [r4, #0x1f8]
003776e8  18 22 84 e5                                      str r2, [r4, #0x218]
003776ec  24 22 95 e5                                      ldr r2, [r5, #0x224]
003776f0  24 22 84 e5                                      str r2, [r4, #0x224]
003776f4  8a 2f a0 e3                                      mov r2, #0x228
003776f8  d2 80 85 e1                                      ldrd r8, sb, [r5, r2]
003776fc  f2 80 84 e1                                      strd r8, sb, [r4, r2]
00377700  30 22 95 e5                                      ldr r2, [r5, #0x230]
00377704  25 8e a0 e3                                      mov r8, #0x250
00377708  30 22 84 e5                                      str r2, [r4, #0x230]
0037770c  34 22 95 e5                                      ldr r2, [r5, #0x234]
00377710  34 22 84 e5                                      str r2, [r4, #0x234]
00377714  38 22 95 e5                                      ldr r2, [r5, #0x238]
00377718  38 22 84 e5                                      str r2, [r4, #0x238]
0037771c  3c 22 d5 e5                                      ldrb r2, [r5, #0x23c]
00377720  20 e2 84 e5                                      str lr, [r4, #0x220]
00377724  3c 22 c4 e5                                      strb r2, [r4, #0x23c]
00377728  40 22 95 e5                                      ldr r2, [r5, #0x240]
0037772c  20 c2 84 e5                                      str ip, [r4, #0x220]
00377730  48 32 84 e5                                      str r3, [r4, #0x248]
00377734  40 22 84 e5                                      str r2, [r4, #0x240]
00377738  4c 32 95 e5                                      ldr r3, [r5, #0x24c]
0037773c  4c 32 84 e5                                      str r3, [r4, #0x24c]
00377740  d8 20 85 e1                                      ldrd r2, r3, [r5, r8]
00377744  f8 20 84 e1                                      strd r2, r3, [r4, r8]
00377748  58 32 95 e5                                      ldr r3, [r5, #0x258]
0037774c  10 90 9d e5                                      ldr sb, [sp, #0x10]
00377750  58 32 84 e5                                      str r3, [r4, #0x258]
00377754  5c 32 95 e5                                      ldr r3, [r5, #0x25c]
00377758  09 90 96 e7                                      ldr sb, [r6, sb]
0037775c  5c 32 84 e5                                      str r3, [r4, #0x25c]
00377760  60 32 95 e5                                      ldr r3, [r5, #0x260]
00377764  08 20 89 e2                                      add r2, sb, #8
00377768  60 32 84 e5                                      str r3, [r4, #0x260]
0037776c  64 32 d5 e5                                      ldrb r3, [r5, #0x264]
00377770  48 22 84 e5                                      str r2, [r4, #0x248]
00377774  64 32 c4 e5                                      strb r3, [r4, #0x264]
00377778  66 d0 fe eb                                      bl #0x32b918
0037777c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00377780  04 00 a0 e1                                      mov r0, r4
00377784  03 30 96 e7                                      ldr r3, [r6, r3]
00377788  08 30 83 e2                                      add r3, r3, #8
0037778c  48 32 84 e5                                      str r3, [r4, #0x248]
00377790  80 32 95 e5                                      ldr r3, [r5, #0x280]
00377794  80 32 84 e5                                      str r3, [r4, #0x280]
00377798  1c d0 8d e2                                      add sp, sp, #0x1c
0037779c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003777a0  38 d6 61 00 c4 43 00 00 50 15 00 00 3c 35 00 00  .byte 0x38, 0xd6, 0x61, 0x00, 0xc4, 0x43, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00
003777b0  94 24 00 00 a8 10 00 00 84 29 00 00 2c 38 00 00  .byte 0x94, 0x24, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x2c, 0x38, 0x00, 0x00
003777c0  68 40 00 00 24 10 00 00 30 3e 00 00 44 1d 00 00  .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0x44, 0x1d, 0x00, 0x00

; FUNCTION 0x00378708, declared_size=256, range_size=256, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoaSERKS_
; demangled: CNetPlayerInfo::operator=(CNetPlayerInfo const&)
; decoder-mode: arm
00378708  70 40 2d e9                                      push {r4, r5, r6, lr}
0037870c  01 2c a0 e3                                      mov r2, #0x100
00378710  00 40 a0 e1                                      mov r4, r0
00378714  01 50 a0 e1                                      mov r5, r1
00378718  04 00 80 e2                                      add r0, r0, #4
0037871c  04 10 81 e2                                      add r1, r1, #4
00378720  50 58 fe eb                                      bl #0x30e868
00378724  04 31 95 e5                                      ldr r3, [r5, #0x104]
00378728  43 1f 85 e2                                      add r1, r5, #0x10c
0037872c  43 0f 84 e2                                      add r0, r4, #0x10c
00378730  04 31 84 e5                                      str r3, [r4, #0x104]
00378734  08 31 d5 e5                                      ldrb r3, [r5, #0x108]
00378738  08 31 c4 e5                                      strb r3, [r4, #0x108]
0037873c  c7 ff ff eb                                      bl #0x378660
00378740  24 31 d5 e5                                      ldrb r3, [r5, #0x124]
00378744  13 0e 84 e2                                      add r0, r4, #0x130
00378748  15 1e 85 e2                                      add r1, r5, #0x150
0037874c  24 31 c4 e5                                      strb r3, [r4, #0x124]
00378750  25 21 d5 e5                                      ldrb r2, [r5, #0x125]
00378754  30 31 94 e5                                      ldr r3, [r4, #0x130]
00378758  25 21 c4 e5                                      strb r2, [r4, #0x125]
0037875c  28 21 95 e5                                      ldr r2, [r5, #0x128]
00378760  28 21 84 e5                                      str r2, [r4, #0x128]
00378764  0f e0 a0 e1                                      mov lr, pc
00378768  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0037876c  56 0f 84 e2                                      add r0, r4, #0x158
00378770  5e 1f 85 e2                                      add r1, r5, #0x178
00378774  58 31 94 e5                                      ldr r3, [r4, #0x158]
00378778  0f e0 a0 e1                                      mov lr, pc
0037877c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378780  06 0d 84 e2                                      add r0, r4, #0x180
00378784  1a 1e 85 e2                                      add r1, r5, #0x1a0
00378788  80 31 94 e5                                      ldr r3, [r4, #0x180]
0037878c  0f e0 a0 e1                                      mov lr, pc
00378790  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00378794  6a 0f 84 e2                                      add r0, r4, #0x1a8
00378798  72 1f 85 e2                                      add r1, r5, #0x1c8
0037879c  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
003787a0  0f e0 a0 e1                                      mov lr, pc
003787a4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003787a8  1d 0e 84 e2                                      add r0, r4, #0x1d0
003787ac  1f 1e 85 e2                                      add r1, r5, #0x1f0
003787b0  d0 31 94 e5                                      ldr r3, [r4, #0x1d0]
003787b4  0f e0 a0 e1                                      mov lr, pc
003787b8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003787bc  7e 0f 84 e2                                      add r0, r4, #0x1f8
003787c0  86 1f 85 e2                                      add r1, r5, #0x218
003787c4  f8 31 94 e5                                      ldr r3, [r4, #0x1f8]
003787c8  0f e0 a0 e1                                      mov lr, pc
003787cc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003787d0  22 0e 84 e2                                      add r0, r4, #0x220
003787d4  09 1d 85 e2                                      add r1, r5, #0x240
003787d8  20 32 94 e5                                      ldr r3, [r4, #0x220]
003787dc  0f e0 a0 e1                                      mov lr, pc
003787e0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003787e4  92 0f 84 e2                                      add r0, r4, #0x248
003787e8  48 32 94 e5                                      ldr r3, [r4, #0x248]
003787ec  9a 1f 85 e2                                      add r1, r5, #0x268
003787f0  0f e0 a0 e1                                      mov lr, pc
003787f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003787f8  80 32 95 e5                                      ldr r3, [r5, #0x280]
003787fc  04 00 a0 e1                                      mov r0, r4
00378800  80 32 84 e5                                      str r3, [r4, #0x280]
00378804  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004417d8, declared_size=904, range_size=904, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoC1ERKS_
; demangled: CNetPlayerInfo::CNetPlayerInfo(CNetPlayerInfo const&)
; decoder-mode: arm
004417d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004417dc  4c 63 9f e5                                      ldr r6, [pc, #0x34c]
004417e0  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
004417e4  00 40 a0 e1                                      mov r4, r0
004417e8  06 60 8f e0                                      add r6, pc, r6
004417ec  03 30 96 e7                                      ldr r3, [r6, r3]
004417f0  01 50 a0 e1                                      mov r5, r1
004417f4  1c d0 4d e2                                      sub sp, sp, #0x1c
004417f8  08 30 83 e2                                      add r3, r3, #8
004417fc  01 2c a0 e3                                      mov r2, #0x100
00441800  04 30 80 e4                                      str r3, [r0], #4
00441804  04 10 81 e2                                      add r1, r1, #4
00441808  16 34 fb eb                                      bl #0x30e868
0044180c  04 31 95 e5                                      ldr r3, [r5, #0x104]
00441810  43 1f 85 e2                                      add r1, r5, #0x10c
00441814  43 0f 84 e2                                      add r0, r4, #0x10c
00441818  04 31 84 e5                                      str r3, [r4, #0x104]
0044181c  08 31 d5 e5                                      ldrb r3, [r5, #0x108]
00441820  10 a3 9f e5                                      ldr sl, [pc, #0x310]
00441824  10 73 9f e5                                      ldr r7, [pc, #0x310]
00441828  08 31 c4 e5                                      strb r3, [r4, #0x108]
0044182c  e7 d6 fc eb                                      bl #0x3773d0
00441830  24 11 d5 e5                                      ldrb r1, [r5, #0x124]
00441834  04 23 9f e5                                      ldr r2, [pc, #0x304]
00441838  04 33 9f e5                                      ldr r3, [pc, #0x304]
0044183c  24 11 c4 e5                                      strb r1, [r4, #0x124]
00441840  25 11 d5 e5                                      ldrb r1, [r5, #0x125]
00441844  02 20 96 e7                                      ldr r2, [r6, r2]
00441848  03 30 96 e7                                      ldr r3, [r6, r3]
0044184c  25 11 c4 e5                                      strb r1, [r4, #0x125]
00441850  28 11 95 e5                                      ldr r1, [r5, #0x128]
00441854  08 30 83 e2                                      add r3, r3, #8
00441858  08 20 82 e2                                      add r2, r2, #8
0044185c  30 31 84 e5                                      str r3, [r4, #0x130]
00441860  28 11 84 e5                                      str r1, [r4, #0x128]
00441864  00 20 84 e5                                      str r2, [r4]
00441868  34 01 95 e5                                      ldr r0, [r5, #0x134]
0044186c  4e 1f a0 e3                                      mov r1, #0x138
00441870  d0 22 9f e5                                      ldr r2, [pc, #0x2d0]
00441874  34 01 84 e5                                      str r0, [r4, #0x134]
00441878  d1 80 85 e1                                      ldrd r8, sb, [r5, r1]
0044187c  f1 80 84 e1                                      strd r8, sb, [r4, r1]
00441880  40 01 95 e5                                      ldr r0, [r5, #0x140]
00441884  c0 12 9f e5                                      ldr r1, [pc, #0x2c0]
00441888  02 20 96 e7                                      ldr r2, [r6, r2]
0044188c  40 01 84 e5                                      str r0, [r4, #0x140]
00441890  44 01 95 e5                                      ldr r0, [r5, #0x144]
00441894  01 10 96 e7                                      ldr r1, [r6, r1]
00441898  08 20 82 e2                                      add r2, r2, #8
0044189c  44 01 84 e5                                      str r0, [r4, #0x144]
004418a0  48 c1 95 e5                                      ldr ip, [r5, #0x148]
004418a4  08 10 81 e2                                      add r1, r1, #8
004418a8  14 10 8d e5                                      str r1, [sp, #0x14]
004418ac  48 c1 84 e5                                      str ip, [r4, #0x148]
004418b0  4c 11 d5 e5                                      ldrb r1, [r5, #0x14c]
004418b4  30 21 84 e5                                      str r2, [r4, #0x130]
004418b8  16 0e a0 e3                                      mov r0, #0x160
004418bc  4c 11 c4 e5                                      strb r1, [r4, #0x14c]
004418c0  50 11 95 e5                                      ldr r1, [r5, #0x150]
004418c4  14 80 9d e5                                      ldr r8, [sp, #0x14]
004418c8  58 31 84 e5                                      str r3, [r4, #0x158]
004418cc  50 11 84 e5                                      str r1, [r4, #0x150]
004418d0  30 81 84 e5                                      str r8, [r4, #0x130]
004418d4  5c c1 95 e5                                      ldr ip, [r5, #0x15c]
004418d8  62 1f a0 e3                                      mov r1, #0x188
004418dc  6c e2 9f e5                                      ldr lr, [pc, #0x26c]
004418e0  5c c1 84 e5                                      str ip, [r4, #0x15c]
004418e4  d0 80 85 e1                                      ldrd r8, sb, [r5, r0]
004418e8  f0 80 84 e1                                      strd r8, sb, [r4, r0]
004418ec  68 01 95 e5                                      ldr r0, [r5, #0x168]
004418f0  0a a0 96 e7                                      ldr sl, [r6, sl]
004418f4  58 c2 9f e5                                      ldr ip, [pc, #0x258]
004418f8  68 01 84 e5                                      str r0, [r4, #0x168]
004418fc  6c 01 95 e5                                      ldr r0, [r5, #0x16c]
00441900  08 a0 8a e2                                      add sl, sl, #8
00441904  02 bc a0 e3                                      mov fp, #0x200
00441908  6c 01 84 e5                                      str r0, [r4, #0x16c]
0044190c  70 01 95 e5                                      ldr r0, [r5, #0x170]
00441910  70 01 84 e5                                      str r0, [r4, #0x170]
00441914  74 01 d5 e5                                      ldrb r0, [r5, #0x174]
00441918  58 21 84 e5                                      str r2, [r4, #0x158]
0044191c  74 01 c4 e5                                      strb r0, [r4, #0x174]
00441920  78 01 95 e5                                      ldr r0, [r5, #0x178]
00441924  80 31 84 e5                                      str r3, [r4, #0x180]
00441928  58 a1 84 e5                                      str sl, [r4, #0x158]
0044192c  78 01 84 e5                                      str r0, [r4, #0x178]
00441930  84 01 95 e5                                      ldr r0, [r5, #0x184]
00441934  84 01 84 e5                                      str r0, [r4, #0x184]
00441938  d1 80 85 e1                                      ldrd r8, sb, [r5, r1]
0044193c  f1 80 84 e1                                      strd r8, sb, [r4, r1]
00441940  10 92 9f e5                                      ldr sb, [pc, #0x210]
00441944  90 11 95 e5                                      ldr r1, [r5, #0x190]
00441948  9a 0f 84 e2                                      add r0, r4, #0x268
0044194c  10 90 8d e5                                      str sb, [sp, #0x10]
00441950  90 11 84 e5                                      str r1, [r4, #0x190]
00441954  94 a1 95 e5                                      ldr sl, [r5, #0x194]
00441958  1b 9e a0 e3                                      mov sb, #0x1b0
0044195c  9a 1f 85 e2                                      add r1, r5, #0x268
00441960  94 a1 84 e5                                      str sl, [r4, #0x194]
00441964  98 a1 95 e5                                      ldr sl, [r5, #0x198]
00441968  98 a1 84 e5                                      str sl, [r4, #0x198]
0044196c  9c a1 d5 e5                                      ldrb sl, [r5, #0x19c]
00441970  80 21 84 e5                                      str r2, [r4, #0x180]
00441974  9c a1 c4 e5                                      strb sl, [r4, #0x19c]
00441978  a0 a1 95 e5                                      ldr sl, [r5, #0x1a0]
0044197c  14 80 9d e5                                      ldr r8, [sp, #0x14]
00441980  a8 31 84 e5                                      str r3, [r4, #0x1a8]
00441984  a0 a1 84 e5                                      str sl, [r4, #0x1a0]
00441988  80 81 84 e5                                      str r8, [r4, #0x180]
0044198c  ac a1 95 e5                                      ldr sl, [r5, #0x1ac]
00441990  ac a1 84 e5                                      str sl, [r4, #0x1ac]
00441994  1b ae a0 e3                                      mov sl, #0x1b0
00441998  d5 80 89 e1                                      ldrd r8, sb, [sb, r5]
0044199c  fa 80 84 e1                                      strd r8, sb, [r4, sl]
004419a0  b8 81 95 e5                                      ldr r8, [r5, #0x1b8]
004419a4  07 70 96 e7                                      ldr r7, [r6, r7]
004419a8  76 9f a0 e3                                      mov sb, #0x1d8
004419ac  b8 81 84 e5                                      str r8, [r4, #0x1b8]
004419b0  bc 81 95 e5                                      ldr r8, [r5, #0x1bc]
004419b4  0e e0 96 e7                                      ldr lr, [r6, lr]
004419b8  0c c0 96 e7                                      ldr ip, [r6, ip]
004419bc  bc 81 84 e5                                      str r8, [r4, #0x1bc]
004419c0  c0 a1 95 e5                                      ldr sl, [r5, #0x1c0]
004419c4  08 80 87 e2                                      add r8, r7, #8
004419c8  08 e0 8e e2                                      add lr, lr, #8
004419cc  c0 a1 84 e5                                      str sl, [r4, #0x1c0]
004419d0  c4 71 d5 e5                                      ldrb r7, [r5, #0x1c4]
004419d4  a8 21 84 e5                                      str r2, [r4, #0x1a8]
004419d8  76 af a0 e3                                      mov sl, #0x1d8
004419dc  c4 71 c4 e5                                      strb r7, [r4, #0x1c4]
004419e0  c8 21 95 e5                                      ldr r2, [r5, #0x1c8]
004419e4  d0 31 84 e5                                      str r3, [r4, #0x1d0]
004419e8  a8 81 84 e5                                      str r8, [r4, #0x1a8]
004419ec  c8 21 84 e5                                      str r2, [r4, #0x1c8]
004419f0  d4 21 95 e5                                      ldr r2, [r5, #0x1d4]
004419f4  08 c0 8c e2                                      add ip, ip, #8
004419f8  d4 21 84 e5                                      str r2, [r4, #0x1d4]
004419fc  d5 80 89 e1                                      ldrd r8, sb, [sb, r5]
00441a00  fa 80 84 e1                                      strd r8, sb, [r4, sl]
00441a04  e0 21 95 e5                                      ldr r2, [r5, #0x1e0]
00441a08  e0 21 84 e5                                      str r2, [r4, #0x1e0]
00441a0c  e4 21 95 e5                                      ldr r2, [r5, #0x1e4]
00441a10  e4 21 84 e5                                      str r2, [r4, #0x1e4]
00441a14  e8 21 95 e5                                      ldr r2, [r5, #0x1e8]
00441a18  e8 21 84 e5                                      str r2, [r4, #0x1e8]
00441a1c  ec 21 d5 e5                                      ldrb r2, [r5, #0x1ec]
00441a20  d0 e1 84 e5                                      str lr, [r4, #0x1d0]
00441a24  ec 21 c4 e5                                      strb r2, [r4, #0x1ec]
00441a28  f0 21 95 e5                                      ldr r2, [r5, #0x1f0]
00441a2c  d0 c1 84 e5                                      str ip, [r4, #0x1d0]
00441a30  f8 31 84 e5                                      str r3, [r4, #0x1f8]
00441a34  f0 21 84 e5                                      str r2, [r4, #0x1f0]
00441a38  fc 21 95 e5                                      ldr r2, [r5, #0x1fc]
00441a3c  fc 21 84 e5                                      str r2, [r4, #0x1fc]
00441a40  db 80 85 e1                                      ldrd r8, sb, [r5, fp]
00441a44  fb 80 84 e1                                      strd r8, sb, [r4, fp]
00441a48  08 22 95 e5                                      ldr r2, [r5, #0x208]
00441a4c  08 22 84 e5                                      str r2, [r4, #0x208]
00441a50  0c 22 95 e5                                      ldr r2, [r5, #0x20c]
00441a54  0c 22 84 e5                                      str r2, [r4, #0x20c]
00441a58  10 22 95 e5                                      ldr r2, [r5, #0x210]
00441a5c  10 22 84 e5                                      str r2, [r4, #0x210]
00441a60  14 22 d5 e5                                      ldrb r2, [r5, #0x214]
00441a64  f8 e1 84 e5                                      str lr, [r4, #0x1f8]
00441a68  14 22 c4 e5                                      strb r2, [r4, #0x214]
00441a6c  18 22 95 e5                                      ldr r2, [r5, #0x218]
00441a70  20 32 84 e5                                      str r3, [r4, #0x220]
00441a74  f8 c1 84 e5                                      str ip, [r4, #0x1f8]
00441a78  18 22 84 e5                                      str r2, [r4, #0x218]
00441a7c  24 22 95 e5                                      ldr r2, [r5, #0x224]
00441a80  24 22 84 e5                                      str r2, [r4, #0x224]
00441a84  8a 2f a0 e3                                      mov r2, #0x228
00441a88  d2 80 85 e1                                      ldrd r8, sb, [r5, r2]
00441a8c  f2 80 84 e1                                      strd r8, sb, [r4, r2]
00441a90  30 22 95 e5                                      ldr r2, [r5, #0x230]
00441a94  25 8e a0 e3                                      mov r8, #0x250
00441a98  30 22 84 e5                                      str r2, [r4, #0x230]
00441a9c  34 22 95 e5                                      ldr r2, [r5, #0x234]
00441aa0  34 22 84 e5                                      str r2, [r4, #0x234]
00441aa4  38 22 95 e5                                      ldr r2, [r5, #0x238]
00441aa8  38 22 84 e5                                      str r2, [r4, #0x238]
00441aac  3c 22 d5 e5                                      ldrb r2, [r5, #0x23c]
00441ab0  20 e2 84 e5                                      str lr, [r4, #0x220]
00441ab4  3c 22 c4 e5                                      strb r2, [r4, #0x23c]
00441ab8  40 22 95 e5                                      ldr r2, [r5, #0x240]
00441abc  20 c2 84 e5                                      str ip, [r4, #0x220]
00441ac0  48 32 84 e5                                      str r3, [r4, #0x248]
00441ac4  40 22 84 e5                                      str r2, [r4, #0x240]
00441ac8  4c 32 95 e5                                      ldr r3, [r5, #0x24c]
00441acc  4c 32 84 e5                                      str r3, [r4, #0x24c]
00441ad0  d8 20 85 e1                                      ldrd r2, r3, [r5, r8]
00441ad4  f8 20 84 e1                                      strd r2, r3, [r4, r8]
00441ad8  58 32 95 e5                                      ldr r3, [r5, #0x258]
00441adc  10 90 9d e5                                      ldr sb, [sp, #0x10]
00441ae0  58 32 84 e5                                      str r3, [r4, #0x258]
00441ae4  5c 32 95 e5                                      ldr r3, [r5, #0x25c]
00441ae8  09 90 96 e7                                      ldr sb, [r6, sb]
00441aec  5c 32 84 e5                                      str r3, [r4, #0x25c]
00441af0  60 32 95 e5                                      ldr r3, [r5, #0x260]
00441af4  08 20 89 e2                                      add r2, sb, #8
00441af8  60 32 84 e5                                      str r3, [r4, #0x260]
00441afc  64 32 d5 e5                                      ldrb r3, [r5, #0x264]
00441b00  48 22 84 e5                                      str r2, [r4, #0x248]
00441b04  64 32 c4 e5                                      strb r3, [r4, #0x264]
00441b08  82 a7 fb eb                                      bl #0x32b918
00441b0c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00441b10  04 00 a0 e1                                      mov r0, r4
00441b14  03 30 96 e7                                      ldr r3, [r6, r3]
00441b18  08 30 83 e2                                      add r3, r3, #8
00441b1c  48 32 84 e5                                      str r3, [r4, #0x248]
00441b20  80 32 95 e5                                      ldr r3, [r5, #0x280]
00441b24  80 32 84 e5                                      str r3, [r4, #0x280]
00441b28  1c d0 8d e2                                      add sp, sp, #0x1c
00441b2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00441b30  a8 32 55 00 c4 43 00 00 50 15 00 00 3c 35 00 00  .byte 0xa8, 0x32, 0x55, 0x00, 0xc4, 0x43, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00
00441b40  94 24 00 00 a8 10 00 00 84 29 00 00 2c 38 00 00  .byte 0x94, 0x24, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x2c, 0x38, 0x00, 0x00
00441b50  68 40 00 00 24 10 00 00 30 3e 00 00 44 1d 00 00  .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0x44, 0x1d, 0x00, 0x00

; FUNCTION 0x0080f124, declared_size=64, range_size=64, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo8IsActiveEv
; demangled: CNetPlayerInfo::IsActive()
; decoder-mode: arm
0080f124  78 31 90 e5                                      ldr r3, [r0, #0x178]
0080f128  00 00 53 e3                                      cmp r3, #0
0080f12c  0a 00 00 ba                                      blt #0x80f15c
0080f130  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0080f134  00 00 53 e3                                      cmp r3, #0
0080f138  07 00 00 ba                                      blt #0x80f15c
0080f13c  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
0080f140  00 00 53 e3                                      cmp r3, #0
0080f144  04 00 00 ba                                      blt #0x80f15c
0080f148  f0 01 90 e5                                      ldr r0, [r0, #0x1f0]
0080f14c  03 00 50 e3                                      cmp r0, #3
0080f150  00 00 a0 13                                      movne r0, #0
0080f154  01 00 a0 03                                      moveq r0, #1
0080f158  1e ff 2f e1                                      bx lr
0080f15c  00 00 a0 e3                                      mov r0, #0
0080f160  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080f164, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo8IsRemoteEv
; demangled: CNetPlayerInfo::IsRemote()
; decoder-mode: arm
0080f164  10 40 2d e9                                      push {r4, lr}
0080f168  00 30 90 e5                                      ldr r3, [r0]
0080f16c  0f e0 a0 e1                                      mov lr, pc
0080f170  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0080f174  01 00 20 e2                                      eor r0, r0, #1
0080f178  70 00 ef e6                                      uxtb r0, r0
0080f17c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f180, declared_size=32, range_size=32, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo8IsInRoomEv
; demangled: CNetPlayerInfo::IsInRoom()
; decoder-mode: arm
0080f180  10 40 2d e9                                      push {r4, lr}
0080f184  00 40 a0 e1                                      mov r4, r0
0080f188  7f c7 ff eb                                      bl #0x800f8c
0080f18c  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
0080f190  00 30 90 e5                                      ldr r3, [r0]
0080f194  0f e0 a0 e1                                      mov lr, pc
0080f198  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0080f19c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f1a0, declared_size=76, range_size=76, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo9IsLocalToEi
; demangled: CNetPlayerInfo::IsLocalTo(int)
; decoder-mode: arm
0080f1a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0080f1a4  01 40 a0 e1                                      mov r4, r1
0080f1a8  00 50 a0 e1                                      mov r5, r0
0080f1ac  76 c7 ff eb                                      bl #0x800f8c
0080f1b0  00 30 90 e5                                      ldr r3, [r0]
0080f1b4  0f e0 a0 e1                                      mov lr, pc
0080f1b8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0080f1bc  04 00 50 e1                                      cmp r0, r4
0080f1c0  a0 01 95 15                                      ldrne r0, [r5, #0x1a0]
0080f1c4  03 00 00 0a                                      beq #0x80f1d8
0080f1c8  04 00 50 e1                                      cmp r0, r4
0080f1cc  00 00 a0 13                                      movne r0, #0
0080f1d0  01 00 a0 03                                      moveq r0, #1
0080f1d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080f1d8  a0 01 95 e5                                      ldr r0, [r5, #0x1a0]
0080f1dc  00 00 50 e3                                      cmp r0, #0
0080f1e0  f8 ff ff aa                                      bge #0x80f1c8
0080f1e4  01 00 a0 e3                                      mov r0, #1
0080f1e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0080f1ec, declared_size=80, range_size=80, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo7IsLocalEv
; demangled: CNetPlayerInfo::IsLocal()
; decoder-mode: arm
0080f1ec  10 40 2d e9                                      push {r4, lr}
0080f1f0  00 40 a0 e1                                      mov r4, r0
0080f1f4  64 c7 ff eb                                      bl #0x800f8c
0080f1f8  b8 bc ff eb                                      bl #0x7fe4e0
0080f1fc  00 00 50 e3                                      cmp r0, #0
0080f200  a0 41 94 05                                      ldreq r4, [r4, #0x1a0]
0080f204  02 00 00 0a                                      beq #0x80f214
0080f208  a0 41 94 e5                                      ldr r4, [r4, #0x1a0]
0080f20c  00 00 54 e3                                      cmp r4, #0
0080f210  07 00 00 ba                                      blt #0x80f234
0080f214  5c c7 ff eb                                      bl #0x800f8c
0080f218  00 30 90 e5                                      ldr r3, [r0]
0080f21c  0f e0 a0 e1                                      mov lr, pc
0080f220  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080f224  00 00 54 e1                                      cmp r4, r0
0080f228  00 00 a0 13                                      movne r0, #0
0080f22c  01 00 a0 03                                      moveq r0, #1
0080f230  10 80 bd e8                                      pop {r4, pc}
0080f234  01 00 a0 e3                                      mov r0, #1
0080f238  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f23c, declared_size=36, range_size=36, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo6IsHostEv
; demangled: CNetPlayerInfo::IsHost()
; decoder-mode: arm
0080f23c  10 40 2d e9                                      push {r4, lr}
0080f240  00 40 a0 e1                                      mov r4, r0
0080f244  a4 03 00 eb                                      bl #0x8100dc
0080f248  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f24c  70 01 90 e5                                      ldr r0, [r0, #0x170]
0080f250  00 00 53 e1                                      cmp r3, r0
0080f254  00 00 a0 13                                      movne r0, #0
0080f258  01 00 a0 03                                      moveq r0, #1
0080f25c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f260, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo3AddEv
; demangled: CNetPlayerInfo::Add()
; decoder-mode: arm
0080f260  f0 31 90 e5                                      ldr r3, [r0, #0x1f0]
0080f264  01 00 53 e3                                      cmp r3, #1
0080f268  1e ff 2f 01                                      bxeq lr
0080f26c  01 30 a0 e3                                      mov r3, #1
0080f270  f0 31 80 e5                                      str r3, [r0, #0x1f0]
0080f274  1d 0e 80 e2                                      add r0, r0, #0x1d0
0080f278  41 17 00 ea                                      b #0x814f84

; FUNCTION 0x0080f27c, declared_size=100, range_size=100, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo5ResetEv
; demangled: CNetPlayerInfo::Reset()
; decoder-mode: arm
0080f27c  10 40 2d e9                                      push {r4, lr}
0080f280  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0080f284  00 40 a0 e1                                      mov r4, r0
0080f288  01 00 73 e3                                      cmn r3, #1
0080f28c  03 00 00 0a                                      beq #0x80f2a0
0080f290  00 30 e0 e3                                      mvn r3, #0
0080f294  a0 31 80 e5                                      str r3, [r0, #0x1a0]
0080f298  06 0d 80 e2                                      add r0, r0, #0x180
0080f29c  38 17 00 eb                                      bl #0x814f84
0080f2a0  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0080f2a4  01 00 73 e3                                      cmn r3, #1
0080f2a8  03 00 00 0a                                      beq #0x80f2bc
0080f2ac  00 30 e0 e3                                      mvn r3, #0
0080f2b0  c8 31 84 e5                                      str r3, [r4, #0x1c8]
0080f2b4  6a 0f 84 e2                                      add r0, r4, #0x1a8
0080f2b8  31 17 00 eb                                      bl #0x814f84
0080f2bc  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f2c0  00 00 53 e3                                      cmp r3, #0
0080f2c4  04 00 00 0a                                      beq #0x80f2dc
0080f2c8  00 30 a0 e3                                      mov r3, #0
0080f2cc  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f2d0  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080f2d4  10 40 bd e8                                      pop {r4, lr}
0080f2d8  29 17 00 ea                                      b #0x814f84
0080f2dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f2e0, declared_size=148, range_size=148, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo6RemoveEv
; demangled: CNetPlayerInfo::Remove()
; decoder-mode: arm
0080f2e0  10 40 2d e9                                      push {r4, lr}
0080f2e4  00 40 a0 e1                                      mov r4, r0
0080f2e8  27 c7 ff eb                                      bl #0x800f8c
0080f2ec  7b bc ff eb                                      bl #0x7fe4e0
0080f2f0  00 00 50 e3                                      cmp r0, #0
0080f2f4  08 00 00 1a                                      bne #0x80f31c
0080f2f8  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f2fc  06 00 53 e3                                      cmp r3, #6
0080f300  04 00 00 0a                                      beq #0x80f318
0080f304  06 30 a0 e3                                      mov r3, #6
0080f308  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f30c  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080f310  10 40 bd e8                                      pop {r4, lr}
0080f314  1a 17 00 ea                                      b #0x814f84
0080f318  10 80 bd e8                                      pop {r4, pc}
0080f31c  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f320  00 00 53 e3                                      cmp r3, #0
0080f324  03 00 00 0a                                      beq #0x80f338
0080f328  00 30 a0 e3                                      mov r3, #0
0080f32c  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080f330  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f334  12 17 00 eb                                      bl #0x814f84
0080f338  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0080f33c  01 00 73 e3                                      cmn r3, #1
0080f340  03 00 00 0a                                      beq #0x80f354
0080f344  00 30 e0 e3                                      mvn r3, #0
0080f348  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0080f34c  06 0d 84 e2                                      add r0, r4, #0x180
0080f350  0b 17 00 eb                                      bl #0x814f84
0080f354  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0080f358  01 00 73 e3                                      cmn r3, #1
0080f35c  ed ff ff 0a                                      beq #0x80f318
0080f360  00 30 e0 e3                                      mvn r3, #0
0080f364  6a 0f 84 e2                                      add r0, r4, #0x1a8
0080f368  c8 31 84 e5                                      str r3, [r4, #0x1c8]
0080f36c  10 40 bd e8                                      pop {r4, lr}
0080f370  03 17 00 ea                                      b #0x814f84

; FUNCTION 0x0080f374, declared_size=92, range_size=92, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo10DisconnectEv
; demangled: CNetPlayerInfo::Disconnect()
; decoder-mode: arm
0080f374  10 40 2d e9                                      push {r4, lr}
0080f378  00 40 a0 e1                                      mov r4, r0
0080f37c  02 c7 ff eb                                      bl #0x800f8c
0080f380  56 bc ff eb                                      bl #0x7fe4e0
0080f384  00 00 50 e3                                      cmp r0, #0
0080f388  08 00 00 1a                                      bne #0x80f3b0
0080f38c  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f390  05 00 53 e3                                      cmp r3, #5
0080f394  04 00 00 0a                                      beq #0x80f3ac
0080f398  05 30 a0 e3                                      mov r3, #5
0080f39c  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f3a0  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080f3a4  10 40 bd e8                                      pop {r4, lr}
0080f3a8  f5 16 00 ea                                      b #0x814f84
0080f3ac  10 80 bd e8                                      pop {r4, pc}
0080f3b0  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f3b4  04 00 53 e3                                      cmp r3, #4
0080f3b8  fb ff ff 0a                                      beq #0x80f3ac
0080f3bc  04 30 a0 e3                                      mov r3, #4
0080f3c0  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f3c4  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080f3c8  10 40 bd e8                                      pop {r4, lr}
0080f3cc  ec 16 00 ea                                      b #0x814f84

; FUNCTION 0x0080f3d0, declared_size=584, range_size=584, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo6UpdateEv
; demangled: CNetPlayerInfo::Update()
; decoder-mode: arm
0080f3d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0080f3d4  80 22 90 e5                                      ldr r2, [r0, #0x280]
0080f3d8  f0 31 90 e5                                      ldr r3, [r0, #0x1f0]
0080f3dc  10 d0 4d e2                                      sub sp, sp, #0x10
0080f3e0  00 40 a0 e1                                      mov r4, r0
0080f3e4  03 00 52 e1                                      cmp r2, r3
0080f3e8  33 00 00 0a                                      beq #0x80f4bc
0080f3ec  e6 c6 ff eb                                      bl #0x800f8c
0080f3f0  3a bc ff eb                                      bl #0x7fe4e0
0080f3f4  00 00 50 e3                                      cmp r0, #0
0080f3f8  02 00 00 0a                                      beq #0x80f408
0080f3fc  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f400  05 00 53 e3                                      cmp r3, #5
0080f404  44 00 00 0a                                      beq #0x80f51c
0080f408  df c6 ff eb                                      bl #0x800f8c
0080f40c  33 bc ff eb                                      bl #0x7fe4e0
0080f410  00 00 50 e3                                      cmp r0, #0
0080f414  30 00 00 1a                                      bne #0x80f4dc
0080f418  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f41c  01 00 56 e3                                      cmp r6, #1
0080f420  6e 00 00 0a                                      beq #0x80f5e0
0080f424  02 00 56 e3                                      cmp r6, #2
0080f428  58 00 00 0a                                      beq #0x80f590
0080f42c  03 00 56 e3                                      cmp r6, #3
0080f430  48 00 00 0a                                      beq #0x80f558
0080f434  04 00 56 e3                                      cmp r6, #4
0080f438  3a 00 00 0a                                      beq #0x80f528
0080f43c  00 00 56 e3                                      cmp r6, #0
0080f440  19 00 00 1a                                      bne #0x80f4ac
0080f444  80 22 94 e5                                      ldr r2, [r4, #0x280]
0080f448  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f44c  04 00 52 e3                                      cmp r2, #4
0080f450  0c 30 8d e5                                      str r3, [sp, #0xc]
0080f454  0c 50 8d 02                                      addeq r5, sp, #0xc
0080f458  07 00 00 0a                                      beq #0x80f47c
0080f45c  1e 03 00 eb                                      bl #0x8100dc
0080f460  0c 50 8d e2                                      add r5, sp, #0xc
0080f464  03 16 a0 e3                                      mov r1, #0x300000
0080f468  06 0d 80 e2                                      add r0, r0, #0x180
0080f46c  02 10 81 e2                                      add r1, r1, #2
0080f470  05 20 a0 e1                                      mov r2, r5
0080f474  04 30 a0 e3                                      mov r3, #4
0080f478  61 bb ff eb                                      bl #0x7fe204
0080f47c  16 03 00 eb                                      bl #0x8100dc
0080f480  03 16 a0 e3                                      mov r1, #0x300000
0080f484  06 0d 80 e2                                      add r0, r0, #0x180
0080f488  03 10 81 e2                                      add r1, r1, #3
0080f48c  05 20 a0 e1                                      mov r2, r5
0080f490  04 30 a0 e3                                      mov r3, #4
0080f494  5a bb ff eb                                      bl #0x7fe204
0080f498  00 30 94 e5                                      ldr r3, [r4]
0080f49c  04 00 a0 e1                                      mov r0, r4
0080f4a0  0f e0 a0 e1                                      mov lr, pc
0080f4a4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0080f4a8  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f4ac  80 62 84 e5                                      str r6, [r4, #0x280]
0080f4b0  09 03 00 eb                                      bl #0x8100dc
0080f4b4  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
0080f4b8  52 0c 00 eb                                      bl #0x812608
0080f4bc  24 31 d4 e5                                      ldrb r3, [r4, #0x124]
0080f4c0  00 00 53 e3                                      cmp r3, #0
0080f4c4  02 00 00 0a                                      beq #0x80f4d4
0080f4c8  f0 51 94 e5                                      ldr r5, [r4, #0x1f0]
0080f4cc  00 00 55 e3                                      cmp r5, #0
0080f4d0  07 00 00 0a                                      beq #0x80f4f4
0080f4d4  10 d0 8d e2                                      add sp, sp, #0x10
0080f4d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0080f4dc  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f4e0  06 00 56 e3                                      cmp r6, #6
0080f4e4  cc ff ff 1a                                      bne #0x80f41c
0080f4e8  04 00 a0 e1                                      mov r0, r4
0080f4ec  7b ff ff eb                                      bl #0x80f2e0
0080f4f0  c8 ff ff ea                                      b #0x80f418
0080f4f4  00 30 94 e5                                      ldr r3, [r4]
0080f4f8  04 00 a0 e1                                      mov r0, r4
0080f4fc  0f e0 a0 e1                                      mov lr, pc
0080f500  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0080f504  00 00 50 e3                                      cmp r0, #0
0080f508  f1 ff ff 0a                                      beq #0x80f4d4
0080f50c  04 00 a0 e1                                      mov r0, r4
0080f510  05 10 a0 e1                                      mov r1, r5
0080f514  54 10 00 eb                                      bl #0x81366c
0080f518  ed ff ff ea                                      b #0x80f4d4
0080f51c  04 00 a0 e1                                      mov r0, r4
0080f520  93 ff ff eb                                      bl #0x80f374
0080f524  b7 ff ff ea                                      b #0x80f408
0080f528  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f52c  10 50 8d e2                                      add r5, sp, #0x10
0080f530  04 30 25 e5                                      str r3, [r5, #-4]!
0080f534  e8 02 00 eb                                      bl #0x8100dc
0080f538  03 16 a0 e3                                      mov r1, #0x300000
0080f53c  06 30 a0 e1                                      mov r3, r6
0080f540  06 0d 80 e2                                      add r0, r0, #0x180
0080f544  02 10 81 e2                                      add r1, r1, #2
0080f548  05 20 a0 e1                                      mov r2, r5
0080f54c  2c bb ff eb                                      bl #0x7fe204
0080f550  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f554  b8 ff ff ea                                      b #0x80f43c
0080f558  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f55c  10 50 8d e2                                      add r5, sp, #0x10
0080f560  04 30 25 e5                                      str r3, [r5, #-4]!
0080f564  dc 02 00 eb                                      bl #0x8100dc
0080f568  05 20 a0 e1                                      mov r2, r5
0080f56c  04 00 80 e2                                      add r0, r0, #4
0080f570  09 16 a0 e3                                      mov r1, #0x900000
0080f574  04 30 a0 e3                                      mov r3, #4
0080f578  21 bb ff eb                                      bl #0x7fe204
0080f57c  04 00 a0 e1                                      mov r0, r4
0080f580  01 10 a0 e3                                      mov r1, #1
0080f584  38 10 00 eb                                      bl #0x81366c
0080f588  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f58c  a8 ff ff ea                                      b #0x80f434
0080f590  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f594  10 50 8d e2                                      add r5, sp, #0x10
0080f598  04 30 25 e5                                      str r3, [r5, #-4]!
0080f59c  ce 02 00 eb                                      bl #0x8100dc
0080f5a0  09 16 a0 e3                                      mov r1, #0x900000
0080f5a4  05 20 a0 e1                                      mov r2, r5
0080f5a8  04 30 a0 e3                                      mov r3, #4
0080f5ac  01 10 81 e2                                      add r1, r1, #1
0080f5b0  04 00 80 e2                                      add r0, r0, #4
0080f5b4  12 bb ff eb                                      bl #0x7fe204
0080f5b8  04 00 a0 e1                                      mov r0, r4
0080f5bc  01 10 a0 e3                                      mov r1, #1
0080f5c0  29 10 00 eb                                      bl #0x81366c
0080f5c4  10 10 8d e2                                      add r1, sp, #0x10
0080f5c8  03 30 a0 e3                                      mov r3, #3
0080f5cc  0c 30 21 e5                                      str r3, [r1, #-0xc]!
0080f5d0  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f5d4  0b 79 ed eb                                      bl #0x36da08
0080f5d8  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f5dc  92 ff ff ea                                      b #0x80f42c
0080f5e0  00 30 94 e5                                      ldr r3, [r4]
0080f5e4  04 00 a0 e1                                      mov r0, r4
0080f5e8  0f e0 a0 e1                                      mov lr, pc
0080f5ec  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0080f5f0  00 00 50 e3                                      cmp r0, #0
0080f5f4  f0 61 94 05                                      ldreq r6, [r4, #0x1f0]
0080f5f8  89 ff ff 0a                                      beq #0x80f424
0080f5fc  10 10 8d e2                                      add r1, sp, #0x10
0080f600  02 30 a0 e3                                      mov r3, #2
0080f604  08 30 21 e5                                      str r3, [r1, #-8]!
0080f608  1d 0e 84 e2                                      add r0, r4, #0x1d0
0080f60c  fd 78 ed eb                                      bl #0x36da08
0080f610  f0 61 94 e5                                      ldr r6, [r4, #0x1f0]
0080f614  82 ff ff ea                                      b #0x80f424

; FUNCTION 0x0080f618, declared_size=192, range_size=192, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoD1Ev
; demangled: CNetPlayerInfo::~CNetPlayerInfo()
; decoder-mode: arm
0080f618  70 40 2d e9                                      push {r4, r5, r6, lr}
0080f61c  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0080f620  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0080f624  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0080f628  05 50 8f e0                                      add r5, pc, r5
0080f62c  02 20 95 e7                                      ldr r2, [r5, r2]
0080f630  03 30 95 e7                                      ldr r3, [r5, r3]
0080f634  00 40 a0 e1                                      mov r4, r0
0080f638  08 20 82 e2                                      add r2, r2, #8
0080f63c  08 30 83 e2                                      add r3, r3, #8
0080f640  00 20 80 e5                                      str r2, [r0]
0080f644  48 32 80 e5                                      str r3, [r0, #0x248]
0080f648  9a 0f 80 e2                                      add r0, r0, #0x268
0080f64c  00 23 ec eb                                      bl #0x318254
0080f650  78 30 9f e5                                      ldr r3, [pc, #0x78]
0080f654  78 20 9f e5                                      ldr r2, [pc, #0x78]
0080f658  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
0080f65c  03 30 95 e7                                      ldr r3, [r5, r3]
0080f660  02 20 95 e7                                      ldr r2, [r5, r2]
0080f664  00 00 51 e3                                      cmp r1, #0
0080f668  08 30 83 e2                                      add r3, r3, #8
0080f66c  08 20 82 e2                                      add r2, r2, #8
0080f670  30 31 84 e5                                      str r3, [r4, #0x130]
0080f674  00 20 84 e5                                      str r2, [r4]
0080f678  48 32 84 e5                                      str r3, [r4, #0x248]
0080f67c  20 32 84 e5                                      str r3, [r4, #0x220]
0080f680  f8 31 84 e5                                      str r3, [r4, #0x1f8]
0080f684  d0 31 84 e5                                      str r3, [r4, #0x1d0]
0080f688  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0080f68c  80 31 84 e5                                      str r3, [r4, #0x180]
0080f690  58 31 84 e5                                      str r3, [r4, #0x158]
0080f694  08 00 00 0a                                      beq #0x80f6bc
0080f698  43 5f 84 e2                                      add r5, r4, #0x10c
0080f69c  05 00 a0 e1                                      mov r0, r5
0080f6a0  10 11 94 e5                                      ldr r1, [r4, #0x110]
0080f6a4  49 86 ed eb                                      bl #0x370fd0
0080f6a8  00 30 a0 e3                                      mov r3, #0
0080f6ac  18 51 84 e5                                      str r5, [r4, #0x118]
0080f6b0  1c 31 84 e5                                      str r3, [r4, #0x11c]
0080f6b4  14 51 84 e5                                      str r5, [r4, #0x114]
0080f6b8  10 31 84 e5                                      str r3, [r4, #0x110]
0080f6bc  04 00 a0 e1                                      mov r0, r4
0080f6c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080f6c4  68 54 18 00 94 24 00 00 30 3e 00 00 a8 10 00 00  .byte 0x68, 0x54, 0x18, 0x00, 0x94, 0x24, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
0080f6d4  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x0080f6d8, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoD0Ev
; demangled: CNetPlayerInfo::~CNetPlayerInfo()
; decoder-mode: arm
0080f6d8  10 40 2d e9                                      push {r4, lr}
0080f6dc  00 40 a0 e1                                      mov r4, r0
0080f6e0  cc ff ff eb                                      bl #0x80f618
0080f6e4  04 00 a0 e1                                      mov r0, r4
0080f6e8  54 03 ec eb                                      bl #0x310440
0080f6ec  04 00 a0 e1                                      mov r0, r4
0080f6f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0080f6f4, declared_size=192, range_size=192, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoD2Ev
; demangled: CNetPlayerInfo::~CNetPlayerInfo()
; decoder-mode: arm
0080f6f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0080f6f8  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
0080f6fc  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0080f700  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0080f704  05 50 8f e0                                      add r5, pc, r5
0080f708  02 20 95 e7                                      ldr r2, [r5, r2]
0080f70c  03 30 95 e7                                      ldr r3, [r5, r3]
0080f710  00 40 a0 e1                                      mov r4, r0
0080f714  08 20 82 e2                                      add r2, r2, #8
0080f718  08 30 83 e2                                      add r3, r3, #8
0080f71c  00 20 80 e5                                      str r2, [r0]
0080f720  48 32 80 e5                                      str r3, [r0, #0x248]
0080f724  9a 0f 80 e2                                      add r0, r0, #0x268
0080f728  c9 22 ec eb                                      bl #0x318254
0080f72c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0080f730  78 20 9f e5                                      ldr r2, [pc, #0x78]
0080f734  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
0080f738  03 30 95 e7                                      ldr r3, [r5, r3]
0080f73c  02 20 95 e7                                      ldr r2, [r5, r2]
0080f740  00 00 51 e3                                      cmp r1, #0
0080f744  08 30 83 e2                                      add r3, r3, #8
0080f748  08 20 82 e2                                      add r2, r2, #8
0080f74c  30 31 84 e5                                      str r3, [r4, #0x130]
0080f750  00 20 84 e5                                      str r2, [r4]
0080f754  48 32 84 e5                                      str r3, [r4, #0x248]
0080f758  20 32 84 e5                                      str r3, [r4, #0x220]
0080f75c  f8 31 84 e5                                      str r3, [r4, #0x1f8]
0080f760  d0 31 84 e5                                      str r3, [r4, #0x1d0]
0080f764  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0080f768  80 31 84 e5                                      str r3, [r4, #0x180]
0080f76c  58 31 84 e5                                      str r3, [r4, #0x158]
0080f770  08 00 00 0a                                      beq #0x80f798
0080f774  43 5f 84 e2                                      add r5, r4, #0x10c
0080f778  05 00 a0 e1                                      mov r0, r5
0080f77c  10 11 94 e5                                      ldr r1, [r4, #0x110]
0080f780  12 86 ed eb                                      bl #0x370fd0
0080f784  00 30 a0 e3                                      mov r3, #0
0080f788  18 51 84 e5                                      str r5, [r4, #0x118]
0080f78c  1c 31 84 e5                                      str r3, [r4, #0x11c]
0080f790  14 51 84 e5                                      str r5, [r4, #0x114]
0080f794  10 31 84 e5                                      str r3, [r4, #0x110]
0080f798  04 00 a0 e1                                      mov r0, r4
0080f79c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0080f7a0  8c 53 18 00 94 24 00 00 30 3e 00 00 a8 10 00 00  .byte 0x8c, 0x53, 0x18, 0x00, 0x94, 0x24, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
0080f7b0  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x0080f7b4, declared_size=1140, range_size=1140, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoC1Ev
; demangled: CNetPlayerInfo::CNetPlayerInfo()
; decoder-mode: arm
0080f7b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0080f7b8  40 54 9f e5                                      ldr r5, [pc, #0x440]
0080f7bc  40 74 9f e5                                      ldr r7, [pc, #0x440]
0080f7c0  44 d0 4d e2                                      sub sp, sp, #0x44
0080f7c4  05 50 8f e0                                      add r5, pc, r5
0080f7c8  07 30 95 e7                                      ldr r3, [r5, r7]
0080f7cc  00 40 a0 e1                                      mov r4, r0
0080f7d0  30 64 9f e5                                      ldr r6, [pc, #0x430]
0080f7d4  00 30 93 e5                                      ldr r3, [r3]
0080f7d8  00 80 a0 e3                                      mov r8, #0
0080f7dc  00 90 a0 e3                                      mov sb, #0
0080f7e0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0080f7e4  42 10 00 eb                                      bl #0x8138f4
0080f7e8  1c 34 9f e5                                      ldr r3, [pc, #0x41c]
0080f7ec  50 21 94 e5                                      ldr r2, [r4, #0x150]
0080f7f0  06 00 95 e7                                      ldr r0, [r5, r6]
0080f7f4  03 30 95 e7                                      ldr r3, [r5, r3]
0080f7f8  00 00 52 e3                                      cmp r2, #0
0080f7fc  4e cf a0 e3                                      mov ip, #0x138
0080f800  00 20 a0 e3                                      mov r2, #0
0080f804  08 30 83 e2                                      add r3, r3, #8
0080f808  fc 80 84 e1                                      strd r8, sb, [r4, ip]
0080f80c  00 10 e0 e3                                      mvn r1, #0
0080f810  00 30 84 e5                                      str r3, [r4]
0080f814  48 21 84 e5                                      str r2, [r4, #0x148]
0080f818  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
0080f81c  08 00 80 e2                                      add r0, r0, #8
0080f820  11 30 a0 e3                                      mov r3, #0x11
0080f824  13 2e 84 02                                      addeq r2, r4, #0x130
0080f828  34 31 84 e5                                      str r3, [r4, #0x134]
0080f82c  44 11 84 e5                                      str r1, [r4, #0x144]
0080f830  30 01 84 e5                                      str r0, [r4, #0x130]
0080f834  40 11 84 e5                                      str r1, [r4, #0x140]
0080f838  08 20 8d 05                                      streq r2, [sp, #8]
0080f83c  04 00 00 0a                                      beq #0x80f854
0080f840  13 3e 84 e2                                      add r3, r4, #0x130
0080f844  08 30 8d e5                                      str r3, [sp, #8]
0080f848  50 21 84 e5                                      str r2, [r4, #0x150]
0080f84c  08 00 9d e5                                      ldr r0, [sp, #8]
0080f850  cb 15 00 eb                                      bl #0x814f84
0080f854  b4 83 9f e5                                      ldr r8, [pc, #0x3b4]
0080f858  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080f85c  06 10 95 e7                                      ldr r1, [r5, r6]
0080f860  08 00 95 e7                                      ldr r0, [r5, r8]
0080f864  00 00 53 e3                                      cmp r3, #0
0080f868  00 b0 a0 e3                                      mov fp, #0
0080f86c  08 00 80 e2                                      add r0, r0, #8
0080f870  16 ce a0 e3                                      mov ip, #0x160
0080f874  00 a0 a0 e3                                      mov sl, #0
0080f878  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080f87c  00 20 e0 e3                                      mvn r2, #0
0080f880  00 30 a0 e3                                      mov r3, #0
0080f884  30 01 84 e5                                      str r0, [r4, #0x130]
0080f888  08 10 81 e2                                      add r1, r1, #8
0080f88c  08 00 a0 e3                                      mov r0, #8
0080f890  56 bf 84 02                                      addeq fp, r4, #0x158
0080f894  5c 01 84 e5                                      str r0, [r4, #0x15c]
0080f898  6c 21 84 e5                                      str r2, [r4, #0x16c]
0080f89c  58 11 84 e5                                      str r1, [r4, #0x158]
0080f8a0  68 21 84 e5                                      str r2, [r4, #0x168]
0080f8a4  70 31 84 e5                                      str r3, [r4, #0x170]
0080f8a8  74 31 c4 e5                                      strb r3, [r4, #0x174]
0080f8ac  0c b0 8d 05                                      streq fp, [sp, #0xc]
0080f8b0  04 00 00 0a                                      beq #0x80f8c8
0080f8b4  56 2f 84 e2                                      add r2, r4, #0x158
0080f8b8  0c 20 8d e5                                      str r2, [sp, #0xc]
0080f8bc  78 31 84 e5                                      str r3, [r4, #0x178]
0080f8c0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0080f8c4  ae 15 00 eb                                      bl #0x814f84
0080f8c8  44 33 9f e5                                      ldr r3, [pc, #0x344]
0080f8cc  a0 21 94 e5                                      ldr r2, [r4, #0x1a0]
0080f8d0  06 00 95 e7                                      ldr r0, [r5, r6]
0080f8d4  03 30 95 e7                                      ldr r3, [r5, r3]
0080f8d8  00 00 52 e3                                      cmp r2, #0
0080f8dc  00 b0 a0 e3                                      mov fp, #0
0080f8e0  08 30 83 e2                                      add r3, r3, #8
0080f8e4  62 cf a0 e3                                      mov ip, #0x188
0080f8e8  00 a0 a0 e3                                      mov sl, #0
0080f8ec  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080f8f0  00 10 e0 e3                                      mvn r1, #0
0080f8f4  00 20 a0 e3                                      mov r2, #0
0080f8f8  58 31 84 e5                                      str r3, [r4, #0x158]
0080f8fc  08 00 80 e2                                      add r0, r0, #8
0080f900  11 30 a0 e3                                      mov r3, #0x11
0080f904  06 bd 84 02                                      addeq fp, r4, #0x180
0080f908  84 31 84 e5                                      str r3, [r4, #0x184]
0080f90c  94 11 84 e5                                      str r1, [r4, #0x194]
0080f910  80 01 84 e5                                      str r0, [r4, #0x180]
0080f914  90 11 84 e5                                      str r1, [r4, #0x190]
0080f918  98 21 84 e5                                      str r2, [r4, #0x198]
0080f91c  9c 21 c4 e5                                      strb r2, [r4, #0x19c]
0080f920  04 b0 8d 05                                      streq fp, [sp, #4]
0080f924  04 00 00 0a                                      beq #0x80f93c
0080f928  06 3d 84 e2                                      add r3, r4, #0x180
0080f92c  04 30 8d e5                                      str r3, [sp, #4]
0080f930  a0 21 84 e5                                      str r2, [r4, #0x1a0]
0080f934  04 00 9d e5                                      ldr r0, [sp, #4]
0080f938  91 15 00 eb                                      bl #0x814f84
0080f93c  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0080f940  08 00 95 e7                                      ldr r0, [r5, r8]
0080f944  06 10 95 e7                                      ldr r1, [r5, r6]
0080f948  00 00 53 e3                                      cmp r3, #0
0080f94c  08 00 80 e2                                      add r0, r0, #8
0080f950  00 a0 a0 e3                                      mov sl, #0
0080f954  00 b0 a0 e3                                      mov fp, #0
0080f958  1b ce a0 e3                                      mov ip, #0x1b0
0080f95c  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080f960  00 20 e0 e3                                      mvn r2, #0
0080f964  00 30 a0 e3                                      mov r3, #0
0080f968  80 01 84 e5                                      str r0, [r4, #0x180]
0080f96c  08 10 81 e2                                      add r1, r1, #8
0080f970  10 00 a0 e3                                      mov r0, #0x10
0080f974  6a 8f 84 02                                      addeq r8, r4, #0x1a8
0080f978  ac 01 84 e5                                      str r0, [r4, #0x1ac]
0080f97c  bc 21 84 e5                                      str r2, [r4, #0x1bc]
0080f980  a8 11 84 e5                                      str r1, [r4, #0x1a8]
0080f984  b8 21 84 e5                                      str r2, [r4, #0x1b8]
0080f988  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0080f98c  c4 31 c4 e5                                      strb r3, [r4, #0x1c4]
0080f990  14 80 8d 05                                      streq r8, [sp, #0x14]
0080f994  04 00 00 0a                                      beq #0x80f9ac
0080f998  6a 9f 84 e2                                      add sb, r4, #0x1a8
0080f99c  14 90 8d e5                                      str sb, [sp, #0x14]
0080f9a0  c8 31 84 e5                                      str r3, [r4, #0x1c8]
0080f9a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0080f9a8  75 15 00 eb                                      bl #0x814f84
0080f9ac  64 02 9f e5                                      ldr r0, [pc, #0x264]
0080f9b0  64 82 9f e5                                      ldr r8, [pc, #0x264]
0080f9b4  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080f9b8  00 00 95 e7                                      ldr r0, [r5, r0]
0080f9bc  08 10 95 e7                                      ldr r1, [r5, r8]
0080f9c0  00 00 53 e3                                      cmp r3, #0
0080f9c4  00 b0 a0 e3                                      mov fp, #0
0080f9c8  08 00 80 e2                                      add r0, r0, #8
0080f9cc  76 cf a0 e3                                      mov ip, #0x1d8
0080f9d0  00 a0 a0 e3                                      mov sl, #0
0080f9d4  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080f9d8  00 20 e0 e3                                      mvn r2, #0
0080f9dc  00 30 a0 e3                                      mov r3, #0
0080f9e0  a8 01 84 e5                                      str r0, [r4, #0x1a8]
0080f9e4  08 10 81 e2                                      add r1, r1, #8
0080f9e8  08 00 a0 e3                                      mov r0, #8
0080f9ec  1d be 84 02                                      addeq fp, r4, #0x1d0
0080f9f0  d4 01 84 e5                                      str r0, [r4, #0x1d4]
0080f9f4  e4 21 84 e5                                      str r2, [r4, #0x1e4]
0080f9f8  d0 11 84 e5                                      str r1, [r4, #0x1d0]
0080f9fc  e0 21 84 e5                                      str r2, [r4, #0x1e0]
0080fa00  e8 31 84 e5                                      str r3, [r4, #0x1e8]
0080fa04  ec 31 c4 e5                                      strb r3, [r4, #0x1ec]
0080fa08  1c b0 8d 05                                      streq fp, [sp, #0x1c]
0080fa0c  04 00 00 0a                                      beq #0x80fa24
0080fa10  1d 2e 84 e2                                      add r2, r4, #0x1d0
0080fa14  1c 20 8d e5                                      str r2, [sp, #0x1c]
0080fa18  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080fa1c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0080fa20  57 15 00 eb                                      bl #0x814f84
0080fa24  f4 61 9f e5                                      ldr r6, [pc, #0x1f4]
0080fa28  18 32 94 e5                                      ldr r3, [r4, #0x218]
0080fa2c  08 10 95 e7                                      ldr r1, [r5, r8]
0080fa30  06 00 95 e7                                      ldr r0, [r5, r6]
0080fa34  00 00 53 e3                                      cmp r3, #0
0080fa38  00 b0 a0 e3                                      mov fp, #0
0080fa3c  08 00 80 e2                                      add r0, r0, #8
0080fa40  02 cc a0 e3                                      mov ip, #0x200
0080fa44  00 a0 a0 e3                                      mov sl, #0
0080fa48  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fa4c  00 20 e0 e3                                      mvn r2, #0
0080fa50  00 30 a0 e3                                      mov r3, #0
0080fa54  d0 01 84 e5                                      str r0, [r4, #0x1d0]
0080fa58  08 10 81 e2                                      add r1, r1, #8
0080fa5c  08 00 a0 e3                                      mov r0, #8
0080fa60  7e bf 84 02                                      addeq fp, r4, #0x1f8
0080fa64  fc 01 84 e5                                      str r0, [r4, #0x1fc]
0080fa68  0c 22 84 e5                                      str r2, [r4, #0x20c]
0080fa6c  f8 11 84 e5                                      str r1, [r4, #0x1f8]
0080fa70  08 22 84 e5                                      str r2, [r4, #0x208]
0080fa74  10 32 84 e5                                      str r3, [r4, #0x210]
0080fa78  14 32 c4 e5                                      strb r3, [r4, #0x214]
0080fa7c  18 b0 8d 05                                      streq fp, [sp, #0x18]
0080fa80  04 00 00 0a                                      beq #0x80fa98
0080fa84  7e 2f 84 e2                                      add r2, r4, #0x1f8
0080fa88  18 20 8d e5                                      str r2, [sp, #0x18]
0080fa8c  18 32 84 e5                                      str r3, [r4, #0x218]
0080fa90  18 00 9d e5                                      ldr r0, [sp, #0x18]
0080fa94  3a 15 00 eb                                      bl #0x814f84
0080fa98  06 00 95 e7                                      ldr r0, [r5, r6]
0080fa9c  40 32 94 e5                                      ldr r3, [r4, #0x240]
0080faa0  08 10 95 e7                                      ldr r1, [r5, r8]
0080faa4  08 00 80 e2                                      add r0, r0, #8
0080faa8  00 a0 a0 e3                                      mov sl, #0
0080faac  00 b0 a0 e3                                      mov fp, #0
0080fab0  8a cf a0 e3                                      mov ip, #0x228
0080fab4  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fab8  00 00 53 e3                                      cmp r3, #0
0080fabc  00 20 e0 e3                                      mvn r2, #0
0080fac0  00 30 a0 e3                                      mov r3, #0
0080fac4  08 10 81 e2                                      add r1, r1, #8
0080fac8  f8 01 84 e5                                      str r0, [r4, #0x1f8]
0080facc  08 00 a0 e3                                      mov r0, #8
0080fad0  24 02 84 e5                                      str r0, [r4, #0x224]
0080fad4  34 22 84 e5                                      str r2, [r4, #0x234]
0080fad8  20 12 84 e5                                      str r1, [r4, #0x220]
0080fadc  30 22 84 e5                                      str r2, [r4, #0x230]
0080fae0  38 32 84 e5                                      str r3, [r4, #0x238]
0080fae4  3c 32 c4 e5                                      strb r3, [r4, #0x23c]
0080fae8  22 ae 84 02                                      addeq sl, r4, #0x220
0080faec  03 00 00 0a                                      beq #0x80fb00
0080faf0  22 ae 84 e2                                      add sl, r4, #0x220
0080faf4  40 32 84 e5                                      str r3, [r4, #0x240]
0080faf8  0a 00 a0 e1                                      mov r0, sl
0080fafc  20 15 00 eb                                      bl #0x814f84
0080fb00  06 30 95 e7                                      ldr r3, [r5, r6]
0080fb04  18 11 9f e5                                      ldr r1, [pc, #0x118]
0080fb08  24 60 8d e2                                      add r6, sp, #0x24
0080fb0c  08 30 83 e2                                      add r3, r3, #8
0080fb10  01 10 8f e0                                      add r1, pc, r1
0080fb14  20 32 84 e5                                      str r3, [r4, #0x220]
0080fb18  01 20 a0 e1                                      mov r2, r1
0080fb1c  06 00 a0 e1                                      mov r0, r6
0080fb20  92 8f 84 e2                                      add r8, r4, #0x248
0080fb24  34 60 8d e5                                      str r6, [sp, #0x34]
0080fb28  38 60 8d e5                                      str r6, [sp, #0x38]
0080fb2c  ed 06 ec eb                                      bl #0x3116e8
0080fb30  08 00 a0 e1                                      mov r0, r8
0080fb34  06 10 a0 e1                                      mov r1, r6
0080fb38  2b 88 ed eb                                      bl #0x371bec
0080fb3c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0080fb40  06 00 50 e1                                      cmp r0, r6
0080fb44  06 00 00 0a                                      beq #0x80fb64
0080fb48  00 00 50 e3                                      cmp r0, #0
0080fb4c  04 00 00 0a                                      beq #0x80fb64
0080fb50  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080fb54  01 10 60 e0                                      rsb r1, r0, r1
0080fb58  80 00 51 e3                                      cmp r1, #0x80
0080fb5c  24 00 00 8a                                      bhi #0x80fbf4
0080fb60  f4 b9 02 eb                                      bl #0x8be338
0080fb64  00 30 a0 e3                                      mov r3, #0
0080fb68  80 32 84 e5                                      str r3, [r4, #0x280]
0080fb6c  08 10 9d e5                                      ldr r1, [sp, #8]
0080fb70  04 00 a0 e1                                      mov r0, r4
0080fb74  b4 0d 00 eb                                      bl #0x81324c
0080fb78  04 00 a0 e1                                      mov r0, r4
0080fb7c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080fb80  b1 0d 00 eb                                      bl #0x81324c
0080fb84  04 00 a0 e1                                      mov r0, r4
0080fb88  04 10 9d e5                                      ldr r1, [sp, #4]
0080fb8c  ae 0d 00 eb                                      bl #0x81324c
0080fb90  04 00 a0 e1                                      mov r0, r4
0080fb94  14 10 9d e5                                      ldr r1, [sp, #0x14]
0080fb98  ab 0d 00 eb                                      bl #0x81324c
0080fb9c  04 00 a0 e1                                      mov r0, r4
0080fba0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0080fba4  a8 0d 00 eb                                      bl #0x81324c
0080fba8  04 00 a0 e1                                      mov r0, r4
0080fbac  18 10 9d e5                                      ldr r1, [sp, #0x18]
0080fbb0  a5 0d 00 eb                                      bl #0x81324c
0080fbb4  04 00 a0 e1                                      mov r0, r4
0080fbb8  0a 10 a0 e1                                      mov r1, sl
0080fbbc  a2 0d 00 eb                                      bl #0x81324c
0080fbc0  04 00 a0 e1                                      mov r0, r4
0080fbc4  08 10 a0 e1                                      mov r1, r8
0080fbc8  9f 0d 00 eb                                      bl #0x81324c
0080fbcc  04 00 a0 e1                                      mov r0, r4
0080fbd0  a9 fd ff eb                                      bl #0x80f27c
0080fbd4  07 30 95 e7                                      ldr r3, [r5, r7]
0080fbd8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0080fbdc  04 00 a0 e1                                      mov r0, r4
0080fbe0  00 30 93 e5                                      ldr r3, [r3]
0080fbe4  03 00 52 e1                                      cmp r2, r3
0080fbe8  03 00 00 1a                                      bne #0x80fbfc
0080fbec  44 d0 8d e2                                      add sp, sp, #0x44
0080fbf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080fbf4  11 02 ec eb                                      bl #0x310440
0080fbf8  d9 ff ff ea                                      b #0x80fb64
0080fbfc  c3 f9 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0080fc00  cc 52 18 00 ac 40 00 00 84 29 00 00 94 24 00 00  .byte 0xcc, 0x52, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x94, 0x24, 0x00, 0x00
0080fc10  2c 38 00 00 50 15 00 00 3c 35 00 00 68 40 00 00  .byte 0x2c, 0x38, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00
0080fc20  24 10 00 00 f8 bc 0b 00                          .byte 0x24, 0x10, 0x00, 0x00, 0xf8, 0xbc, 0x0b, 0x00

; FUNCTION 0x0080fc28, declared_size=1140, range_size=1140, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfoC2Ev
; demangled: CNetPlayerInfo::CNetPlayerInfo()
; decoder-mode: arm
0080fc28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0080fc2c  40 54 9f e5                                      ldr r5, [pc, #0x440]
0080fc30  40 74 9f e5                                      ldr r7, [pc, #0x440]
0080fc34  44 d0 4d e2                                      sub sp, sp, #0x44
0080fc38  05 50 8f e0                                      add r5, pc, r5
0080fc3c  07 30 95 e7                                      ldr r3, [r5, r7]
0080fc40  00 40 a0 e1                                      mov r4, r0
0080fc44  30 64 9f e5                                      ldr r6, [pc, #0x430]
0080fc48  00 30 93 e5                                      ldr r3, [r3]
0080fc4c  00 80 a0 e3                                      mov r8, #0
0080fc50  00 90 a0 e3                                      mov sb, #0
0080fc54  3c 30 8d e5                                      str r3, [sp, #0x3c]
0080fc58  25 0f 00 eb                                      bl #0x8138f4
0080fc5c  1c 34 9f e5                                      ldr r3, [pc, #0x41c]
0080fc60  50 21 94 e5                                      ldr r2, [r4, #0x150]
0080fc64  06 00 95 e7                                      ldr r0, [r5, r6]
0080fc68  03 30 95 e7                                      ldr r3, [r5, r3]
0080fc6c  00 00 52 e3                                      cmp r2, #0
0080fc70  4e cf a0 e3                                      mov ip, #0x138
0080fc74  00 20 a0 e3                                      mov r2, #0
0080fc78  08 30 83 e2                                      add r3, r3, #8
0080fc7c  fc 80 84 e1                                      strd r8, sb, [r4, ip]
0080fc80  00 10 e0 e3                                      mvn r1, #0
0080fc84  00 30 84 e5                                      str r3, [r4]
0080fc88  48 21 84 e5                                      str r2, [r4, #0x148]
0080fc8c  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
0080fc90  08 00 80 e2                                      add r0, r0, #8
0080fc94  11 30 a0 e3                                      mov r3, #0x11
0080fc98  13 2e 84 02                                      addeq r2, r4, #0x130
0080fc9c  34 31 84 e5                                      str r3, [r4, #0x134]
0080fca0  44 11 84 e5                                      str r1, [r4, #0x144]
0080fca4  30 01 84 e5                                      str r0, [r4, #0x130]
0080fca8  40 11 84 e5                                      str r1, [r4, #0x140]
0080fcac  08 20 8d 05                                      streq r2, [sp, #8]
0080fcb0  04 00 00 0a                                      beq #0x80fcc8
0080fcb4  13 3e 84 e2                                      add r3, r4, #0x130
0080fcb8  08 30 8d e5                                      str r3, [sp, #8]
0080fcbc  50 21 84 e5                                      str r2, [r4, #0x150]
0080fcc0  08 00 9d e5                                      ldr r0, [sp, #8]
0080fcc4  ae 14 00 eb                                      bl #0x814f84
0080fcc8  b4 83 9f e5                                      ldr r8, [pc, #0x3b4]
0080fccc  78 31 94 e5                                      ldr r3, [r4, #0x178]
0080fcd0  06 10 95 e7                                      ldr r1, [r5, r6]
0080fcd4  08 00 95 e7                                      ldr r0, [r5, r8]
0080fcd8  00 00 53 e3                                      cmp r3, #0
0080fcdc  00 b0 a0 e3                                      mov fp, #0
0080fce0  08 00 80 e2                                      add r0, r0, #8
0080fce4  16 ce a0 e3                                      mov ip, #0x160
0080fce8  00 a0 a0 e3                                      mov sl, #0
0080fcec  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fcf0  00 20 e0 e3                                      mvn r2, #0
0080fcf4  00 30 a0 e3                                      mov r3, #0
0080fcf8  30 01 84 e5                                      str r0, [r4, #0x130]
0080fcfc  08 10 81 e2                                      add r1, r1, #8
0080fd00  08 00 a0 e3                                      mov r0, #8
0080fd04  56 bf 84 02                                      addeq fp, r4, #0x158
0080fd08  5c 01 84 e5                                      str r0, [r4, #0x15c]
0080fd0c  6c 21 84 e5                                      str r2, [r4, #0x16c]
0080fd10  58 11 84 e5                                      str r1, [r4, #0x158]
0080fd14  68 21 84 e5                                      str r2, [r4, #0x168]
0080fd18  70 31 84 e5                                      str r3, [r4, #0x170]
0080fd1c  74 31 c4 e5                                      strb r3, [r4, #0x174]
0080fd20  0c b0 8d 05                                      streq fp, [sp, #0xc]
0080fd24  04 00 00 0a                                      beq #0x80fd3c
0080fd28  56 2f 84 e2                                      add r2, r4, #0x158
0080fd2c  0c 20 8d e5                                      str r2, [sp, #0xc]
0080fd30  78 31 84 e5                                      str r3, [r4, #0x178]
0080fd34  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0080fd38  91 14 00 eb                                      bl #0x814f84
0080fd3c  44 33 9f e5                                      ldr r3, [pc, #0x344]
0080fd40  a0 21 94 e5                                      ldr r2, [r4, #0x1a0]
0080fd44  06 00 95 e7                                      ldr r0, [r5, r6]
0080fd48  03 30 95 e7                                      ldr r3, [r5, r3]
0080fd4c  00 00 52 e3                                      cmp r2, #0
0080fd50  00 b0 a0 e3                                      mov fp, #0
0080fd54  08 30 83 e2                                      add r3, r3, #8
0080fd58  62 cf a0 e3                                      mov ip, #0x188
0080fd5c  00 a0 a0 e3                                      mov sl, #0
0080fd60  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fd64  00 10 e0 e3                                      mvn r1, #0
0080fd68  00 20 a0 e3                                      mov r2, #0
0080fd6c  58 31 84 e5                                      str r3, [r4, #0x158]
0080fd70  08 00 80 e2                                      add r0, r0, #8
0080fd74  11 30 a0 e3                                      mov r3, #0x11
0080fd78  06 bd 84 02                                      addeq fp, r4, #0x180
0080fd7c  84 31 84 e5                                      str r3, [r4, #0x184]
0080fd80  94 11 84 e5                                      str r1, [r4, #0x194]
0080fd84  80 01 84 e5                                      str r0, [r4, #0x180]
0080fd88  90 11 84 e5                                      str r1, [r4, #0x190]
0080fd8c  98 21 84 e5                                      str r2, [r4, #0x198]
0080fd90  9c 21 c4 e5                                      strb r2, [r4, #0x19c]
0080fd94  04 b0 8d 05                                      streq fp, [sp, #4]
0080fd98  04 00 00 0a                                      beq #0x80fdb0
0080fd9c  06 3d 84 e2                                      add r3, r4, #0x180
0080fda0  04 30 8d e5                                      str r3, [sp, #4]
0080fda4  a0 21 84 e5                                      str r2, [r4, #0x1a0]
0080fda8  04 00 9d e5                                      ldr r0, [sp, #4]
0080fdac  74 14 00 eb                                      bl #0x814f84
0080fdb0  c8 31 94 e5                                      ldr r3, [r4, #0x1c8]
0080fdb4  08 00 95 e7                                      ldr r0, [r5, r8]
0080fdb8  06 10 95 e7                                      ldr r1, [r5, r6]
0080fdbc  00 00 53 e3                                      cmp r3, #0
0080fdc0  08 00 80 e2                                      add r0, r0, #8
0080fdc4  00 a0 a0 e3                                      mov sl, #0
0080fdc8  00 b0 a0 e3                                      mov fp, #0
0080fdcc  1b ce a0 e3                                      mov ip, #0x1b0
0080fdd0  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fdd4  00 20 e0 e3                                      mvn r2, #0
0080fdd8  00 30 a0 e3                                      mov r3, #0
0080fddc  80 01 84 e5                                      str r0, [r4, #0x180]
0080fde0  08 10 81 e2                                      add r1, r1, #8
0080fde4  10 00 a0 e3                                      mov r0, #0x10
0080fde8  6a 8f 84 02                                      addeq r8, r4, #0x1a8
0080fdec  ac 01 84 e5                                      str r0, [r4, #0x1ac]
0080fdf0  bc 21 84 e5                                      str r2, [r4, #0x1bc]
0080fdf4  a8 11 84 e5                                      str r1, [r4, #0x1a8]
0080fdf8  b8 21 84 e5                                      str r2, [r4, #0x1b8]
0080fdfc  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0080fe00  c4 31 c4 e5                                      strb r3, [r4, #0x1c4]
0080fe04  14 80 8d 05                                      streq r8, [sp, #0x14]
0080fe08  04 00 00 0a                                      beq #0x80fe20
0080fe0c  6a 9f 84 e2                                      add sb, r4, #0x1a8
0080fe10  14 90 8d e5                                      str sb, [sp, #0x14]
0080fe14  c8 31 84 e5                                      str r3, [r4, #0x1c8]
0080fe18  14 00 9d e5                                      ldr r0, [sp, #0x14]
0080fe1c  58 14 00 eb                                      bl #0x814f84
0080fe20  64 02 9f e5                                      ldr r0, [pc, #0x264]
0080fe24  64 82 9f e5                                      ldr r8, [pc, #0x264]
0080fe28  f0 31 94 e5                                      ldr r3, [r4, #0x1f0]
0080fe2c  00 00 95 e7                                      ldr r0, [r5, r0]
0080fe30  08 10 95 e7                                      ldr r1, [r5, r8]
0080fe34  00 00 53 e3                                      cmp r3, #0
0080fe38  00 b0 a0 e3                                      mov fp, #0
0080fe3c  08 00 80 e2                                      add r0, r0, #8
0080fe40  76 cf a0 e3                                      mov ip, #0x1d8
0080fe44  00 a0 a0 e3                                      mov sl, #0
0080fe48  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fe4c  00 20 e0 e3                                      mvn r2, #0
0080fe50  00 30 a0 e3                                      mov r3, #0
0080fe54  a8 01 84 e5                                      str r0, [r4, #0x1a8]
0080fe58  08 10 81 e2                                      add r1, r1, #8
0080fe5c  08 00 a0 e3                                      mov r0, #8
0080fe60  1d be 84 02                                      addeq fp, r4, #0x1d0
0080fe64  d4 01 84 e5                                      str r0, [r4, #0x1d4]
0080fe68  e4 21 84 e5                                      str r2, [r4, #0x1e4]
0080fe6c  d0 11 84 e5                                      str r1, [r4, #0x1d0]
0080fe70  e0 21 84 e5                                      str r2, [r4, #0x1e0]
0080fe74  e8 31 84 e5                                      str r3, [r4, #0x1e8]
0080fe78  ec 31 c4 e5                                      strb r3, [r4, #0x1ec]
0080fe7c  1c b0 8d 05                                      streq fp, [sp, #0x1c]
0080fe80  04 00 00 0a                                      beq #0x80fe98
0080fe84  1d 2e 84 e2                                      add r2, r4, #0x1d0
0080fe88  1c 20 8d e5                                      str r2, [sp, #0x1c]
0080fe8c  f0 31 84 e5                                      str r3, [r4, #0x1f0]
0080fe90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0080fe94  3a 14 00 eb                                      bl #0x814f84
0080fe98  f4 61 9f e5                                      ldr r6, [pc, #0x1f4]
0080fe9c  18 32 94 e5                                      ldr r3, [r4, #0x218]
0080fea0  08 10 95 e7                                      ldr r1, [r5, r8]
0080fea4  06 00 95 e7                                      ldr r0, [r5, r6]
0080fea8  00 00 53 e3                                      cmp r3, #0
0080feac  00 b0 a0 e3                                      mov fp, #0
0080feb0  08 00 80 e2                                      add r0, r0, #8
0080feb4  02 cc a0 e3                                      mov ip, #0x200
0080feb8  00 a0 a0 e3                                      mov sl, #0
0080febc  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080fec0  00 20 e0 e3                                      mvn r2, #0
0080fec4  00 30 a0 e3                                      mov r3, #0
0080fec8  d0 01 84 e5                                      str r0, [r4, #0x1d0]
0080fecc  08 10 81 e2                                      add r1, r1, #8
0080fed0  08 00 a0 e3                                      mov r0, #8
0080fed4  7e bf 84 02                                      addeq fp, r4, #0x1f8
0080fed8  fc 01 84 e5                                      str r0, [r4, #0x1fc]
0080fedc  0c 22 84 e5                                      str r2, [r4, #0x20c]
0080fee0  f8 11 84 e5                                      str r1, [r4, #0x1f8]
0080fee4  08 22 84 e5                                      str r2, [r4, #0x208]
0080fee8  10 32 84 e5                                      str r3, [r4, #0x210]
0080feec  14 32 c4 e5                                      strb r3, [r4, #0x214]
0080fef0  18 b0 8d 05                                      streq fp, [sp, #0x18]
0080fef4  04 00 00 0a                                      beq #0x80ff0c
0080fef8  7e 2f 84 e2                                      add r2, r4, #0x1f8
0080fefc  18 20 8d e5                                      str r2, [sp, #0x18]
0080ff00  18 32 84 e5                                      str r3, [r4, #0x218]
0080ff04  18 00 9d e5                                      ldr r0, [sp, #0x18]
0080ff08  1d 14 00 eb                                      bl #0x814f84
0080ff0c  06 00 95 e7                                      ldr r0, [r5, r6]
0080ff10  40 32 94 e5                                      ldr r3, [r4, #0x240]
0080ff14  08 10 95 e7                                      ldr r1, [r5, r8]
0080ff18  08 00 80 e2                                      add r0, r0, #8
0080ff1c  00 a0 a0 e3                                      mov sl, #0
0080ff20  00 b0 a0 e3                                      mov fp, #0
0080ff24  8a cf a0 e3                                      mov ip, #0x228
0080ff28  fc a0 84 e1                                      strd sl, fp, [r4, ip]
0080ff2c  00 00 53 e3                                      cmp r3, #0
0080ff30  00 20 e0 e3                                      mvn r2, #0
0080ff34  00 30 a0 e3                                      mov r3, #0
0080ff38  08 10 81 e2                                      add r1, r1, #8
0080ff3c  f8 01 84 e5                                      str r0, [r4, #0x1f8]
0080ff40  08 00 a0 e3                                      mov r0, #8
0080ff44  24 02 84 e5                                      str r0, [r4, #0x224]
0080ff48  34 22 84 e5                                      str r2, [r4, #0x234]
0080ff4c  20 12 84 e5                                      str r1, [r4, #0x220]
0080ff50  30 22 84 e5                                      str r2, [r4, #0x230]
0080ff54  38 32 84 e5                                      str r3, [r4, #0x238]
0080ff58  3c 32 c4 e5                                      strb r3, [r4, #0x23c]
0080ff5c  22 ae 84 02                                      addeq sl, r4, #0x220
0080ff60  03 00 00 0a                                      beq #0x80ff74
0080ff64  22 ae 84 e2                                      add sl, r4, #0x220
0080ff68  40 32 84 e5                                      str r3, [r4, #0x240]
0080ff6c  0a 00 a0 e1                                      mov r0, sl
0080ff70  03 14 00 eb                                      bl #0x814f84
0080ff74  06 30 95 e7                                      ldr r3, [r5, r6]
0080ff78  18 11 9f e5                                      ldr r1, [pc, #0x118]
0080ff7c  24 60 8d e2                                      add r6, sp, #0x24
0080ff80  08 30 83 e2                                      add r3, r3, #8
0080ff84  01 10 8f e0                                      add r1, pc, r1
0080ff88  20 32 84 e5                                      str r3, [r4, #0x220]
0080ff8c  01 20 a0 e1                                      mov r2, r1
0080ff90  06 00 a0 e1                                      mov r0, r6
0080ff94  92 8f 84 e2                                      add r8, r4, #0x248
0080ff98  34 60 8d e5                                      str r6, [sp, #0x34]
0080ff9c  38 60 8d e5                                      str r6, [sp, #0x38]
0080ffa0  d0 05 ec eb                                      bl #0x3116e8
0080ffa4  08 00 a0 e1                                      mov r0, r8
0080ffa8  06 10 a0 e1                                      mov r1, r6
0080ffac  0e 87 ed eb                                      bl #0x371bec
0080ffb0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0080ffb4  06 00 50 e1                                      cmp r0, r6
0080ffb8  06 00 00 0a                                      beq #0x80ffd8
0080ffbc  00 00 50 e3                                      cmp r0, #0
0080ffc0  04 00 00 0a                                      beq #0x80ffd8
0080ffc4  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080ffc8  01 10 60 e0                                      rsb r1, r0, r1
0080ffcc  80 00 51 e3                                      cmp r1, #0x80
0080ffd0  24 00 00 8a                                      bhi #0x810068
0080ffd4  d7 b8 02 eb                                      bl #0x8be338
0080ffd8  00 30 a0 e3                                      mov r3, #0
0080ffdc  80 32 84 e5                                      str r3, [r4, #0x280]
0080ffe0  08 10 9d e5                                      ldr r1, [sp, #8]
0080ffe4  04 00 a0 e1                                      mov r0, r4
0080ffe8  97 0c 00 eb                                      bl #0x81324c
0080ffec  04 00 a0 e1                                      mov r0, r4
0080fff0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080fff4  94 0c 00 eb                                      bl #0x81324c
0080fff8  04 00 a0 e1                                      mov r0, r4
0080fffc  04 10 9d e5                                      ldr r1, [sp, #4]
00810000  91 0c 00 eb                                      bl #0x81324c
00810004  04 00 a0 e1                                      mov r0, r4
00810008  14 10 9d e5                                      ldr r1, [sp, #0x14]
0081000c  8e 0c 00 eb                                      bl #0x81324c
00810010  04 00 a0 e1                                      mov r0, r4
00810014  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00810018  8b 0c 00 eb                                      bl #0x81324c
0081001c  04 00 a0 e1                                      mov r0, r4
00810020  18 10 9d e5                                      ldr r1, [sp, #0x18]
00810024  88 0c 00 eb                                      bl #0x81324c
00810028  04 00 a0 e1                                      mov r0, r4
0081002c  0a 10 a0 e1                                      mov r1, sl
00810030  85 0c 00 eb                                      bl #0x81324c
00810034  04 00 a0 e1                                      mov r0, r4
00810038  08 10 a0 e1                                      mov r1, r8
0081003c  82 0c 00 eb                                      bl #0x81324c
00810040  04 00 a0 e1                                      mov r0, r4
00810044  8c fc ff eb                                      bl #0x80f27c
00810048  07 30 95 e7                                      ldr r3, [r5, r7]
0081004c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00810050  04 00 a0 e1                                      mov r0, r4
00810054  00 30 93 e5                                      ldr r3, [r3]
00810058  03 00 52 e1                                      cmp r2, r3
0081005c  03 00 00 1a                                      bne #0x810070
00810060  44 d0 8d e2                                      add sp, sp, #0x44
00810064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00810068  f4 00 ec eb                                      bl #0x310440
0081006c  d9 ff ff ea                                      b #0x80ffd8
00810070  a6 f8 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00810074  58 4e 18 00 ac 40 00 00 84 29 00 00 94 24 00 00  .byte 0x58, 0x4e, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x94, 0x24, 0x00, 0x00
00810084  2c 38 00 00 50 15 00 00 3c 35 00 00 68 40 00 00  .byte 0x2c, 0x38, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00, 0x3c, 0x35, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00
00810094  24 10 00 00 84 b8 0b 00                          .byte 0x24, 0x10, 0x00, 0x00, 0x84, 0xb8, 0x0b, 0x00

; FUNCTION 0x0081009c, declared_size=28, range_size=28, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo6DeleteEPS_
; demangled: CNetPlayerInfo::Delete(CNetPlayerInfo*)
; decoder-mode: arm
0081009c  00 30 50 e2                                      subs r3, r0, #0
008100a0  10 40 2d e9                                      push {r4, lr}
008100a4  02 00 00 0a                                      beq #0x8100b4
008100a8  00 30 93 e5                                      ldr r3, [r3]
008100ac  0f e0 a0 e1                                      mov lr, pc
008100b0  04 f0 93 e5                                      ldr pc, [r3, #4]
008100b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008103d4, declared_size=32, range_size=32, mode=arm
; class-group: CNetPlayerInfo
; alias: _ZN14CNetPlayerInfo6CreateEv
; demangled: CNetPlayerInfo::Create()
; decoder-mode: arm
008103d4  10 40 2d e9                                      push {r4, lr}
008103d8  02 10 a0 e3                                      mov r1, #2
008103dc  a2 0f a0 e3                                      mov r0, #0x288
008103e0  62 00 ec eb                                      bl #0x310570
008103e4  00 40 a0 e1                                      mov r4, r0
008103e8  f1 fc ff eb                                      bl #0x80f7b4
008103ec  04 00 a0 e1                                      mov r0, r4
008103f0  10 80 bd e8                                      pop {r4, pc}
