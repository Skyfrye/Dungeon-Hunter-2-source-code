; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047734c, declared_size=1680, range_size=1680, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForward6UpdateEv
; demangled: AnchorForward::Update()
; decoder-mode: arm
0047734c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00477350  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
00477354  78 96 9f e5                                      ldr sb, [pc, #0x678]
00477358  2c d0 4d e2                                      sub sp, sp, #0x2c
0047735c  00 00 53 e3                                      cmp r3, #0
00477360  00 40 a0 e1                                      mov r4, r0
00477364  09 90 8f e0                                      add sb, pc, sb
00477368  d2 00 00 0a                                      beq #0x4776b8
0047736c  38 10 d0 e5                                      ldrb r1, [r0, #0x38]
00477370  00 00 51 e3                                      cmp r1, #0
00477374  9b 00 00 1a                                      bne #0x4775e8
00477378  08 50 90 e5                                      ldr r5, [r0, #8]
0047737c  05 30 a0 e3                                      mov r3, #5
00477380  3c 30 80 e5                                      str r3, [r0, #0x3c]
00477384  b5 31 d5 e5                                      ldrb r3, [r5, #0x1b5]
00477388  00 00 53 e3                                      cmp r3, #0
0047738c  d2 00 00 0a                                      beq #0x4776dc
00477390  28 00 90 e5                                      ldr r0, [r0, #0x28]
00477394  00 00 50 e3                                      cmp r0, #0
00477398  cf 00 00 0a                                      beq #0x4776dc
0047739c  4f 0e 80 e2                                      add r0, r0, #0x4f0
004773a0  0c 00 80 e2                                      add r0, r0, #0xc
004773a4  bc 23 fd eb                                      bl #0x3c029c
004773a8  00 00 50 e3                                      cmp r0, #0
004773ac  c3 00 00 0a                                      beq #0x4776c0
004773b0  08 30 94 e5                                      ldr r3, [r4, #8]
004773b4  58 70 84 e2                                      add r7, r4, #0x58
004773b8  1c 50 8d e2                                      add r5, sp, #0x1c
004773bc  b8 21 93 e5                                      ldr r2, [r3, #0x1b8]
004773c0  05 10 a0 e1                                      mov r1, r5
004773c4  07 00 a0 e1                                      mov r0, r7
004773c8  1c 20 8d e5                                      str r2, [sp, #0x1c]
004773cc  bc 21 93 e5                                      ldr r2, [r3, #0x1bc]
004773d0  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
004773d4  20 20 8d e5                                      str r2, [sp, #0x20]
004773d8  0c c0 8d e5                                      str ip, [sp, #0xc]
004773dc  c0 31 93 e5                                      ldr r3, [r3, #0x1c0]
004773e0  24 30 8d e5                                      str r3, [sp, #0x24]
004773e4  1b 6f fa eb                                      bl #0x313058
004773e8  08 30 94 e5                                      ldr r3, [r4, #8]
004773ec  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
004773f0  00 b0 a0 e1                                      mov fp, r0
004773f4  68 a1 93 e5                                      ldr sl, [r3, #0x168]
004773f8  28 00 94 e5                                      ldr r0, [r4, #0x28]
004773fc  10 20 8d e5                                      str r2, [sp, #0x10]
00477400  60 c1 93 e5                                      ldr ip, [r3, #0x160]
00477404  4f 0e 80 e2                                      add r0, r0, #0x4f0
00477408  00 10 a0 e3                                      mov r1, #0
0047740c  14 c0 8d e5                                      str ip, [sp, #0x14]
00477410  0c 00 80 e2                                      add r0, r0, #0xc
00477414  30 80 94 e5                                      ldr r8, [r4, #0x30]
00477418  64 61 93 e5                                      ldr r6, [r3, #0x164]
0047741c  34 90 94 e5                                      ldr sb, [r4, #0x34]
00477420  9d 23 fd eb                                      bl #0x3c029c
00477424  00 00 50 e3                                      cmp r0, #0
00477428  d8 00 00 1a                                      bne #0x477790
0047742c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00477430  3f 14 a0 e3                                      mov r1, #0x3f000000
00477434  4c 5e fa eb                                      bl #0x30ed6c
00477438  00 60 a0 e1                                      mov r6, r0
0047743c  05 00 a0 e1                                      mov r0, r5
00477440  1a 57 fb eb                                      bl #0x34d0b0
00477444  08 50 94 e5                                      ldr r5, [r4, #8]
00477448  00 80 a0 e1                                      mov r8, r0
0047744c  00 10 90 e5                                      ldr r1, [r0]
00477450  06 00 a0 e1                                      mov r0, r6
00477454  44 5e fa eb                                      bl #0x30ed6c
00477458  60 11 95 e5                                      ldr r1, [r5, #0x160]
0047745c  d0 5d fa eb                                      bl #0x30eba4
00477460  04 10 98 e5                                      ldr r1, [r8, #4]
00477464  00 90 a0 e1                                      mov sb, r0
00477468  06 00 a0 e1                                      mov r0, r6
0047746c  3e 5e fa eb                                      bl #0x30ed6c
00477470  64 11 95 e5                                      ldr r1, [r5, #0x164]
00477474  ca 5d fa eb                                      bl #0x30eba4
00477478  08 10 98 e5                                      ldr r1, [r8, #8]
0047747c  00 a0 a0 e1                                      mov sl, r0
00477480  06 00 a0 e1                                      mov r0, r6
00477484  38 5e fa eb                                      bl #0x30ed6c
00477488  68 11 95 e5                                      ldr r1, [r5, #0x168]
0047748c  c4 5d fa eb                                      bl #0x30eba4
00477490  fe 15 a0 e3                                      mov r1, #0x3f800000
00477494  00 80 a0 e1                                      mov r8, r0
00477498  0b 00 a0 e1                                      mov r0, fp
0047749c  95 5b fa eb                                      bl #0x30e2f8
004774a0  00 00 50 e3                                      cmp r0, #0
004774a4  20 b0 94 e5                                      ldr fp, [r4, #0x20]
004774a8  de 00 00 0a                                      beq #0x477828
004774ac  0b 00 a0 e1                                      mov r0, fp
004774b0  fa 15 a0 e3                                      mov r1, #0x3e800000
004774b4  2c 5e fa eb                                      bl #0x30ed6c
004774b8  00 10 a0 e1                                      mov r1, r0
004774bc  54 00 94 e5                                      ldr r0, [r4, #0x54]
004774c0  b9 5b fa eb                                      bl #0x30e3ac
004774c4  00 10 a0 e3                                      mov r1, #0
004774c8  00 b0 a0 e1                                      mov fp, r0
004774cc  89 5b fa eb                                      bl #0x30e2f8
004774d0  00 00 50 e3                                      cmp r0, #0
004774d4  00 b0 a0 03                                      moveq fp, #0
004774d8  54 b0 84 e5                                      str fp, [r4, #0x54]
004774dc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004774e0  09 00 a0 e1                                      mov r0, sb
004774e4  b0 5b fa eb                                      bl #0x30e3ac
004774e8  10 10 94 e5                                      ldr r1, [r4, #0x10]
004774ec  00 b0 a0 e1                                      mov fp, r0
004774f0  0a 00 a0 e1                                      mov r0, sl
004774f4  ac 5b fa eb                                      bl #0x30e3ac
004774f8  14 10 94 e5                                      ldr r1, [r4, #0x14]
004774fc  00 30 a0 e1                                      mov r3, r0
00477500  08 00 a0 e1                                      mov r0, r8
00477504  04 30 8d e5                                      str r3, [sp, #4]
00477508  a7 5b fa eb                                      bl #0x30e3ac
0047750c  0b 10 a0 e1                                      mov r1, fp
00477510  00 20 a0 e1                                      mov r2, r0
00477514  0b 00 a0 e1                                      mov r0, fp
00477518  08 20 8d e5                                      str r2, [sp, #8]
0047751c  12 5e fa eb                                      bl #0x30ed6c
00477520  04 30 9d e5                                      ldr r3, [sp, #4]
00477524  00 b0 a0 e1                                      mov fp, r0
00477528  03 10 a0 e1                                      mov r1, r3
0047752c  03 00 a0 e1                                      mov r0, r3
00477530  0d 5e fa eb                                      bl #0x30ed6c
00477534  00 10 a0 e1                                      mov r1, r0
00477538  0b 00 a0 e1                                      mov r0, fp
0047753c  98 5d fa eb                                      bl #0x30eba4
00477540  08 20 9d e5                                      ldr r2, [sp, #8]
00477544  00 b0 a0 e1                                      mov fp, r0
00477548  02 10 a0 e1                                      mov r1, r2
0047754c  02 00 a0 e1                                      mov r0, r2
00477550  05 5e fa eb                                      bl #0x30ed6c
00477554  00 10 a0 e1                                      mov r1, r0
00477558  0b 00 a0 e1                                      mov r0, fp
0047755c  90 5d fa eb                                      bl #0x30eba4
00477560  00 10 a0 e3                                      mov r1, #0
00477564  63 5b fa eb                                      bl #0x30e2f8
00477568  00 00 50 e3                                      cmp r0, #0
0047756c  a9 00 00 0a                                      beq #0x477818
00477570  54 b0 94 e5                                      ldr fp, [r4, #0x54]
00477574  06 00 a0 e1                                      mov r0, r6
00477578  0b 10 a0 e1                                      mov r1, fp
0047757c  8a 5b fa eb                                      bl #0x30e3ac
00477580  cd 1c 0c e3                                      movw r1, #0xcccd
00477584  4c 1d 43 e3                                      movt r1, #0x3d4c
00477588  5a 5b fa eb                                      bl #0x30e2f8
0047758c  00 00 50 e3                                      cmp r0, #0
00477590  a0 00 00 0a                                      beq #0x477818
00477594  20 10 9d e5                                      ldr r1, [sp, #0x20]
00477598  0b 00 a0 e1                                      mov r0, fp
0047759c  f2 5d fa eb                                      bl #0x30ed6c
004775a0  64 11 95 e5                                      ldr r1, [r5, #0x164]
004775a4  7e 5d fa eb                                      bl #0x30eba4
004775a8  24 10 9d e5                                      ldr r1, [sp, #0x24]
004775ac  00 80 a0 e1                                      mov r8, r0
004775b0  0b 00 a0 e1                                      mov r0, fp
004775b4  ec 5d fa eb                                      bl #0x30ed6c
004775b8  68 11 95 e5                                      ldr r1, [r5, #0x168]
004775bc  78 5d fa eb                                      bl #0x30eba4
004775c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004775c4  00 60 a0 e1                                      mov r6, r0
004775c8  0b 00 a0 e1                                      mov r0, fp
004775cc  e6 5d fa eb                                      bl #0x30ed6c
004775d0  60 11 95 e5                                      ldr r1, [r5, #0x160]
004775d4  72 5d fa eb                                      bl #0x30eba4
004775d8  10 80 84 e5                                      str r8, [r4, #0x10]
004775dc  0c 00 84 e5                                      str r0, [r4, #0xc]
004775e0  14 60 84 e5                                      str r6, [r4, #0x14]
004775e4  5d 00 00 ea                                      b #0x477760
004775e8  28 00 90 e5                                      ldr r0, [r0, #0x28]
004775ec  00 10 a0 e3                                      mov r1, #0
004775f0  08 50 94 e5                                      ldr r5, [r4, #8]
004775f4  4f 0e 80 e2                                      add r0, r0, #0x4f0
004775f8  0c 00 80 e2                                      add r0, r0, #0xc
004775fc  26 23 fd eb                                      bl #0x3c029c
00477600  00 00 50 e3                                      cmp r0, #0
00477604  1c 60 94 15                                      ldrne r6, [r4, #0x1c]
00477608  03 00 00 1a                                      bne #0x47761c
0047760c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00477610  3f 14 a0 e3                                      mov r1, #0x3f000000
00477614  d4 5d fa eb                                      bl #0x30ed6c
00477618  00 60 a0 e1                                      mov r6, r0
0047761c  08 30 94 e5                                      ldr r3, [r4, #8]
00477620  b8 71 95 e5                                      ldr r7, [r5, #0x1b8]
00477624  bc a1 95 e5                                      ldr sl, [r5, #0x1bc]
00477628  b5 31 d3 e5                                      ldrb r3, [r3, #0x1b5]
0047762c  c0 81 95 e5                                      ldr r8, [r5, #0x1c0]
00477630  00 00 53 e3                                      cmp r3, #0
00477634  0e 00 00 0a                                      beq #0x477674
00477638  28 00 94 e5                                      ldr r0, [r4, #0x28]
0047763c  00 00 50 e3                                      cmp r0, #0
00477640  0b 00 00 0a                                      beq #0x477674
00477644  4f 0e 80 e2                                      add r0, r0, #0x4f0
00477648  0c 00 80 e2                                      add r0, r0, #0xc
0047764c  00 10 a0 e3                                      mov r1, #0
00477650  11 23 fd eb                                      bl #0x3c029c
00477654  00 00 50 e3                                      cmp r0, #0
00477658  8c 00 00 1a                                      bne #0x477890
0047765c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00477660  4f 0e 80 e2                                      add r0, r0, #0x4f0
00477664  0c 00 80 e2                                      add r0, r0, #0xc
00477668  18 23 fd eb                                      bl #0x3c02d0
0047766c  00 00 50 e3                                      cmp r0, #0
00477670  86 00 00 1a                                      bne #0x477890
00477674  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00477678  00 00 53 e3                                      cmp r3, #0
0047767c  01 30 a0 03                                      moveq r3, #1
00477680  3c 30 84 05                                      streq r3, [r4, #0x3c]
00477684  c6 00 00 1a                                      bne #0x4779a4
00477688  60 31 95 e5                                      ldr r3, [r5, #0x160]
0047768c  40 30 84 e5                                      str r3, [r4, #0x40]
00477690  64 31 95 e5                                      ldr r3, [r5, #0x164]
00477694  44 30 84 e5                                      str r3, [r4, #0x44]
00477698  68 31 95 e5                                      ldr r3, [r5, #0x168]
0047769c  48 30 84 e5                                      str r3, [r4, #0x48]
004776a0  60 31 95 e5                                      ldr r3, [r5, #0x160]
004776a4  0c 30 84 e5                                      str r3, [r4, #0xc]
004776a8  64 31 95 e5                                      ldr r3, [r5, #0x164]
004776ac  10 30 84 e5                                      str r3, [r4, #0x10]
004776b0  68 31 95 e5                                      ldr r3, [r5, #0x168]
004776b4  14 30 84 e5                                      str r3, [r4, #0x14]
004776b8  2c d0 8d e2                                      add sp, sp, #0x2c
004776bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004776c0  28 00 94 e5                                      ldr r0, [r4, #0x28]
004776c4  4f 0e 80 e2                                      add r0, r0, #0x4f0
004776c8  0c 00 80 e2                                      add r0, r0, #0xc
004776cc  ff 22 fd eb                                      bl #0x3c02d0
004776d0  00 00 50 e3                                      cmp r0, #0
004776d4  08 50 94 05                                      ldreq r5, [r4, #8]
004776d8  34 ff ff 1a                                      bne #0x4773b0
004776dc  cd 1c 0c e3                                      movw r1, #0xcccd
004776e0  cc 1e 43 e3                                      movt r1, #0x3ecc
004776e4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004776e8  9f 5d fa eb                                      bl #0x30ed6c
004776ec  54 70 94 e5                                      ldr r7, [r4, #0x54]
004776f0  00 60 a0 e1                                      mov r6, r0
004776f4  06 10 a0 e1                                      mov r1, r6
004776f8  07 00 a0 e1                                      mov r0, r7
004776fc  fd 5a fa eb                                      bl #0x30e2f8
00477700  00 00 50 e3                                      cmp r0, #0
00477704  07 60 a0 01                                      moveq r6, r7
00477708  1e 00 00 1a                                      bne #0x477788
0047770c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00477710  06 00 a0 e1                                      mov r0, r6
00477714  94 5d fa eb                                      bl #0x30ed6c
00477718  64 11 95 e5                                      ldr r1, [r5, #0x164]
0047771c  20 5d fa eb                                      bl #0x30eba4
00477720  60 10 94 e5                                      ldr r1, [r4, #0x60]
00477724  00 80 a0 e1                                      mov r8, r0
00477728  06 00 a0 e1                                      mov r0, r6
0047772c  8e 5d fa eb                                      bl #0x30ed6c
00477730  68 11 95 e5                                      ldr r1, [r5, #0x168]
00477734  1a 5d fa eb                                      bl #0x30eba4
00477738  58 10 94 e5                                      ldr r1, [r4, #0x58]
0047773c  00 70 a0 e1                                      mov r7, r0
00477740  06 00 a0 e1                                      mov r0, r6
00477744  88 5d fa eb                                      bl #0x30ed6c
00477748  60 11 95 e5                                      ldr r1, [r5, #0x160]
0047774c  14 5d fa eb                                      bl #0x30eba4
00477750  14 70 84 e5                                      str r7, [r4, #0x14]
00477754  10 80 84 e5                                      str r8, [r4, #0x10]
00477758  0c 00 84 e5                                      str r0, [r4, #0xc]
0047775c  58 70 84 e2                                      add r7, r4, #0x58
00477760  60 31 95 e5                                      ldr r3, [r5, #0x160]
00477764  05 00 a0 e1                                      mov r0, r5
00477768  07 10 a0 e1                                      mov r1, r7
0047776c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00477770  64 31 95 e5                                      ldr r3, [r5, #0x164]
00477774  30 30 84 e5                                      str r3, [r4, #0x30]
00477778  68 31 95 e5                                      ldr r3, [r5, #0x168]
0047777c  34 30 84 e5                                      str r3, [r4, #0x34]
00477780  d7 70 fc eb                                      bl #0x393ae4
00477784  cb ff ff ea                                      b #0x4776b8
00477788  54 60 84 e5                                      str r6, [r4, #0x54]
0047778c  de ff ff ea                                      b #0x47770c
00477790  0a 10 a0 e1                                      mov r1, sl
00477794  09 00 a0 e1                                      mov r0, sb
00477798  03 5b fa eb                                      bl #0x30e3ac
0047779c  06 10 a0 e1                                      mov r1, r6
004777a0  00 a0 a0 e1                                      mov sl, r0
004777a4  08 00 a0 e1                                      mov r0, r8
004777a8  ff 5a fa eb                                      bl #0x30e3ac
004777ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
004777b0  00 60 a0 e1                                      mov r6, r0
004777b4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004777b8  fb 5a fa eb                                      bl #0x30e3ac
004777bc  00 10 a0 e1                                      mov r1, r0
004777c0  69 5d fa eb                                      bl #0x30ed6c
004777c4  06 10 a0 e1                                      mov r1, r6
004777c8  00 80 a0 e1                                      mov r8, r0
004777cc  06 00 a0 e1                                      mov r0, r6
004777d0  65 5d fa eb                                      bl #0x30ed6c
004777d4  00 10 a0 e1                                      mov r1, r0
004777d8  08 00 a0 e1                                      mov r0, r8
004777dc  f0 5c fa eb                                      bl #0x30eba4
004777e0  0a 10 a0 e1                                      mov r1, sl
004777e4  00 60 a0 e1                                      mov r6, r0
004777e8  0a 00 a0 e1                                      mov r0, sl
004777ec  5e 5d fa eb                                      bl #0x30ed6c
004777f0  00 10 a0 e1                                      mov r1, r0
004777f4  06 00 a0 e1                                      mov r0, r6
004777f8  e9 5c fa eb                                      bl #0x30eba4
004777fc  cd 1c 0c e3                                      movw r1, #0xcccd
00477800  4c 1d 43 e3                                      movt r1, #0x3d4c
00477804  bb 5a fa eb                                      bl #0x30e2f8
00477808  00 00 50 e3                                      cmp r0, #0
0047780c  1c 60 94 15                                      ldrne r6, [r4, #0x1c]
00477810  09 ff ff 1a                                      bne #0x47743c
00477814  04 ff ff ea                                      b #0x47742c
00477818  0c 90 84 e5                                      str sb, [r4, #0xc]
0047781c  10 a0 84 e5                                      str sl, [r4, #0x10]
00477820  14 80 84 e5                                      str r8, [r4, #0x14]
00477824  cd ff ff ea                                      b #0x477760
00477828  3f 14 a0 e3                                      mov r1, #0x3f000000
0047782c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00477830  4d 5d fa eb                                      bl #0x30ed6c
00477834  54 20 94 e5                                      ldr r2, [r4, #0x54]
00477838  0c 20 8d e5                                      str r2, [sp, #0xc]
0047783c  22 5b fa eb                                      bl #0x30e4cc
00477840  47 5c fa eb                                      bl #0x30e964
00477844  00 30 a0 e1                                      mov r3, r0
00477848  03 10 a0 e1                                      mov r1, r3
0047784c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00477850  04 30 8d e5                                      str r3, [sp, #4]
00477854  ac 5b fa eb                                      bl #0x30e70c
00477858  04 30 9d e5                                      ldr r3, [sp, #4]
0047785c  00 00 50 e3                                      cmp r0, #0
00477860  54 30 84 15                                      strne r3, [r4, #0x54]
00477864  1c ff ff 1a                                      bne #0x4774dc
00477868  0b 00 a0 e1                                      mov r0, fp
0047786c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00477870  cb 5c fa eb                                      bl #0x30eba4
00477874  00 b0 a0 e1                                      mov fp, r0
00477878  0b 10 a0 e1                                      mov r1, fp
0047787c  06 00 a0 e1                                      mov r0, r6
00477880  a1 5b fa eb                                      bl #0x30e70c
00477884  00 00 50 e3                                      cmp r0, #0
00477888  06 b0 a0 11                                      movne fp, r6
0047788c  11 ff ff ea                                      b #0x4774d8
00477890  4c 30 d4 e5                                      ldrb r3, [r4, #0x4c]
00477894  00 00 53 e3                                      cmp r3, #0
00477898  02 30 a0 13                                      movne r3, #2
0047789c  3c 30 84 15                                      strne r3, [r4, #0x3c]
004778a0  26 00 00 1a                                      bne #0x477940
004778a4  40 10 94 e5                                      ldr r1, [r4, #0x40]
004778a8  60 01 95 e5                                      ldr r0, [r5, #0x160]
004778ac  be 5a fa eb                                      bl #0x30e3ac
004778b0  44 10 94 e5                                      ldr r1, [r4, #0x44]
004778b4  00 90 a0 e1                                      mov sb, r0
004778b8  64 01 95 e5                                      ldr r0, [r5, #0x164]
004778bc  ba 5a fa eb                                      bl #0x30e3ac
004778c0  48 10 94 e5                                      ldr r1, [r4, #0x48]
004778c4  00 b0 a0 e1                                      mov fp, r0
004778c8  68 01 95 e5                                      ldr r0, [r5, #0x168]
004778cc  b6 5a fa eb                                      bl #0x30e3ac
004778d0  09 10 a0 e1                                      mov r1, sb
004778d4  00 30 a0 e1                                      mov r3, r0
004778d8  09 00 a0 e1                                      mov r0, sb
004778dc  04 30 8d e5                                      str r3, [sp, #4]
004778e0  21 5d fa eb                                      bl #0x30ed6c
004778e4  0b 10 a0 e1                                      mov r1, fp
004778e8  00 90 a0 e1                                      mov sb, r0
004778ec  0b 00 a0 e1                                      mov r0, fp
004778f0  1d 5d fa eb                                      bl #0x30ed6c
004778f4  00 10 a0 e1                                      mov r1, r0
004778f8  09 00 a0 e1                                      mov r0, sb
004778fc  a8 5c fa eb                                      bl #0x30eba4
00477900  04 30 9d e5                                      ldr r3, [sp, #4]
00477904  00 90 a0 e1                                      mov sb, r0
00477908  03 10 a0 e1                                      mov r1, r3
0047790c  03 00 a0 e1                                      mov r0, r3
00477910  15 5d fa eb                                      bl #0x30ed6c
00477914  00 10 a0 e1                                      mov r1, r0
00477918  09 00 a0 e1                                      mov r0, sb
0047791c  a0 5c fa eb                                      bl #0x30eba4
00477920  00 14 02 e3                                      movw r1, #0x2400
00477924  74 17 44 e3                                      movt r1, #0x4774
00477928  e1 5a fa eb                                      bl #0x30e4b4
0047792c  00 00 50 e3                                      cmp r0, #0
00477930  03 30 a0 13                                      movne r3, #3
00477934  3c 30 84 15                                      strne r3, [r4, #0x3c]
00477938  3c 00 84 05                                      streq r0, [r4, #0x3c]
0047793c  57 ff ff 0a                                      beq #0x4776a0
00477940  0a 10 a0 e1                                      mov r1, sl
00477944  06 00 a0 e1                                      mov r0, r6
00477948  07 5d fa eb                                      bl #0x30ed6c
0047794c  64 11 95 e5                                      ldr r1, [r5, #0x164]
00477950  93 5c fa eb                                      bl #0x30eba4
00477954  08 10 a0 e1                                      mov r1, r8
00477958  00 a0 a0 e1                                      mov sl, r0
0047795c  06 00 a0 e1                                      mov r0, r6
00477960  01 5d fa eb                                      bl #0x30ed6c
00477964  68 11 95 e5                                      ldr r1, [r5, #0x168]
00477968  8d 5c fa eb                                      bl #0x30eba4
0047796c  07 10 a0 e1                                      mov r1, r7
00477970  00 80 a0 e1                                      mov r8, r0
00477974  06 00 a0 e1                                      mov r0, r6
00477978  fb 5c fa eb                                      bl #0x30ed6c
0047797c  60 11 95 e5                                      ldr r1, [r5, #0x160]
00477980  87 5c fa eb                                      bl #0x30eba4
00477984  5e 31 00 e3                                      movw r3, #0x15e
00477988  50 30 84 e5                                      str r3, [r4, #0x50]
0047798c  01 30 a0 e3                                      mov r3, #1
00477990  0c 00 84 e5                                      str r0, [r4, #0xc]
00477994  10 a0 84 e5                                      str sl, [r4, #0x10]
00477998  14 80 84 e5                                      str r8, [r4, #0x14]
0047799c  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
004779a0  44 ff ff ea                                      b #0x4776b8
004779a4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004779a8  50 60 94 e5                                      ldr r6, [r4, #0x50]
004779ac  03 00 99 e7                                      ldr r0, [sb, r3]
004779b0  2d 9f fa eb                                      bl #0x31f66c
004779b4  06 00 60 e0                                      rsb r0, r0, r6
004779b8  00 00 50 e3                                      cmp r0, #0
004779bc  00 30 a0 d3                                      movle r3, #0
004779c0  4c 30 c4 d5                                      strble r3, [r4, #0x4c]
004779c4  04 30 a0 d3                                      movle r3, #4
004779c8  50 00 84 e5                                      str r0, [r4, #0x50]
004779cc  3c 30 84 d5                                      strle r3, [r4, #0x3c]
004779d0  2c ff ff ea                                      b #0x477688
; mapping-symbol data/literal pool
004779d4  2c d7 51 00 f4 37 00 00                          .byte 0x2c, 0xd7, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004779dc, declared_size=32, range_size=32, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForward5ResetEv
; demangled: AnchorForward::Reset()
; decoder-mode: arm
004779dc  10 40 2d e9                                      push {r4, lr}
004779e0  00 40 a0 e1                                      mov r4, r0
004779e4  a2 fd ff eb                                      bl #0x477074
004779e8  00 30 a0 e3                                      mov r3, #0
004779ec  34 30 84 e5                                      str r3, [r4, #0x34]
004779f0  2c 30 84 e5                                      str r3, [r4, #0x2c]
004779f4  30 30 84 e5                                      str r3, [r4, #0x30]
004779f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004779fc, declared_size=52, range_size=52, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForwardD1Ev
; demangled: AnchorForward::~AnchorForward()
; decoder-mode: arm
004779fc  24 30 9f e5                                      ldr r3, [pc, #0x24]
00477a00  24 20 9f e5                                      ldr r2, [pc, #0x24]
00477a04  10 40 2d e9                                      push {r4, lr}
00477a08  03 30 8f e0                                      add r3, pc, r3
00477a0c  02 20 93 e7                                      ldr r2, [r3, r2]
00477a10  00 40 a0 e1                                      mov r4, r0
00477a14  08 20 82 e2                                      add r2, r2, #8
00477a18  00 20 80 e5                                      str r2, [r0]
00477a1c  92 fd ff eb                                      bl #0x47706c
00477a20  04 00 a0 e1                                      mov r0, r4
00477a24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00477a28  88 d0 51 00 98 13 00 00                          .byte 0x88, 0xd0, 0x51, 0x00, 0x98, 0x13, 0x00, 0x00

; FUNCTION 0x00477a30, declared_size=28, range_size=28, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForwardD0Ev
; demangled: AnchorForward::~AnchorForward()
; decoder-mode: arm
00477a30  10 40 2d e9                                      push {r4, lr}
00477a34  00 40 a0 e1                                      mov r4, r0
00477a38  ef ff ff eb                                      bl #0x4779fc
00477a3c  04 00 a0 e1                                      mov r0, r4
00477a40  7e 62 fa eb                                      bl #0x310440
00477a44  04 00 a0 e1                                      mov r0, r4
00477a48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00477a4c, declared_size=52, range_size=52, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForwardD2Ev
; demangled: AnchorForward::~AnchorForward()
; decoder-mode: arm
00477a4c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00477a50  24 20 9f e5                                      ldr r2, [pc, #0x24]
00477a54  10 40 2d e9                                      push {r4, lr}
00477a58  03 30 8f e0                                      add r3, pc, r3
00477a5c  02 20 93 e7                                      ldr r2, [r3, r2]
00477a60  00 40 a0 e1                                      mov r4, r0
00477a64  08 20 82 e2                                      add r2, r2, #8
00477a68  00 20 80 e5                                      str r2, [r0]
00477a6c  7e fd ff eb                                      bl #0x47706c
00477a70  04 00 a0 e1                                      mov r0, r4
00477a74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00477a78  38 d0 51 00 98 13 00 00                          .byte 0x38, 0xd0, 0x51, 0x00, 0x98, 0x13, 0x00, 0x00

; FUNCTION 0x00477a80, declared_size=596, range_size=596, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForwardC1EP10GameObjectfffN10AnchorBase10AnchorTypeE
; demangled: AnchorForward::AnchorForward(GameObject*, float, float, float, AnchorBase::AnchorType)
; decoder-mode: arm
00477a80  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00477a84  1c d0 4d e2                                      sub sp, sp, #0x1c
00477a88  02 60 a0 e1                                      mov r6, r2
00477a8c  0c 52 9f e5                                      ldr r5, [pc, #0x20c]
00477a90  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00477a94  00 40 a0 e1                                      mov r4, r0
00477a98  03 80 a0 e1                                      mov r8, r3
00477a9c  01 70 a0 e1                                      mov r7, r1
00477aa0  be fd ff eb                                      bl #0x4771a0
00477aa4  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00477aa8  05 50 8f e0                                      add r5, pc, r5
00477aac  00 10 a0 e3                                      mov r1, #0
00477ab0  03 30 95 e7                                      ldr r3, [r5, r3]
00477ab4  00 a0 a0 e3                                      mov sl, #0
00477ab8  06 00 a0 e1                                      mov r0, r6
00477abc  08 30 83 e2                                      add r3, r3, #8
00477ac0  00 30 84 e5                                      str r3, [r4]
00477ac4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00477ac8  1c 60 84 e5                                      str r6, [r4, #0x1c]
00477acc  20 80 84 e5                                      str r8, [r4, #0x20]
00477ad0  24 30 84 e5                                      str r3, [r4, #0x24]
00477ad4  05 30 a0 e3                                      mov r3, #5
00477ad8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00477adc  28 a0 84 e5                                      str sl, [r4, #0x28]
00477ae0  2c 10 84 e5                                      str r1, [r4, #0x2c]
00477ae4  30 10 84 e5                                      str r1, [r4, #0x30]
00477ae8  34 10 84 e5                                      str r1, [r4, #0x34]
00477aec  38 a0 c4 e5                                      strb sl, [r4, #0x38]
00477af0  40 10 84 e5                                      str r1, [r4, #0x40]
00477af4  44 10 84 e5                                      str r1, [r4, #0x44]
00477af8  48 10 84 e5                                      str r1, [r4, #0x48]
00477afc  4c a0 c4 e5                                      strb sl, [r4, #0x4c]
00477b00  50 a0 84 e5                                      str sl, [r4, #0x50]
00477b04  54 10 84 e5                                      str r1, [r4, #0x54]
00477b08  58 10 84 e5                                      str r1, [r4, #0x58]
00477b0c  5c 10 84 e5                                      str r1, [r4, #0x5c]
00477b10  60 10 84 e5                                      str r1, [r4, #0x60]
00477b14  66 5a fa eb                                      bl #0x30e4b4
00477b18  0a 00 50 e1                                      cmp r0, sl
00477b1c  07 00 00 1a                                      bne #0x477b40
00477b20  80 31 9f e5                                      ldr r3, [pc, #0x180]
00477b24  03 30 95 e7                                      ldr r3, [r5, r3]
00477b28  00 30 93 e5                                      ldr r3, [r3]
00477b2c  02 00 53 e3                                      cmp r3, #2
00477b30  00 a0 8a 05                                      streq sl, [sl]
00477b34  01 00 00 0a                                      beq #0x477b40
00477b38  01 00 53 e3                                      cmp r3, #1
00477b3c  3c 00 00 0a                                      beq #0x477c34
00477b40  08 00 a0 e1                                      mov r0, r8
00477b44  00 10 a0 e3                                      mov r1, #0
00477b48  59 5a fa eb                                      bl #0x30e4b4
00477b4c  00 00 50 e3                                      cmp r0, #0
00477b50  08 00 00 1a                                      bne #0x477b78
00477b54  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00477b58  03 30 95 e7                                      ldr r3, [r5, r3]
00477b5c  00 30 93 e5                                      ldr r3, [r3]
00477b60  02 00 53 e3                                      cmp r3, #2
00477b64  00 30 a0 03                                      moveq r3, #0
00477b68  00 30 83 05                                      streq r3, [r3]
00477b6c  01 00 00 0a                                      beq #0x477b78
00477b70  01 00 53 e3                                      cmp r3, #1
00477b74  3c 00 00 0a                                      beq #0x477c6c
00477b78  24 60 94 e5                                      ldr r6, [r4, #0x24]
00477b7c  00 10 a0 e3                                      mov r1, #0
00477b80  06 00 a0 e1                                      mov r0, r6
00477b84  4a 5a fa eb                                      bl #0x30e4b4
00477b88  00 00 50 e3                                      cmp r0, #0
00477b8c  12 00 00 0a                                      beq #0x477bdc
00477b90  06 00 a0 e1                                      mov r0, r6
00477b94  fe 15 a0 e3                                      mov r1, #0x3f800000
00477b98  83 5b fa eb                                      bl #0x30e9ac
00477b9c  00 00 50 e3                                      cmp r0, #0
00477ba0  0d 00 00 0a                                      beq #0x477bdc
00477ba4  00 00 57 e3                                      cmp r7, #0
00477ba8  06 00 00 0a                                      beq #0x477bc8
00477bac  0c 50 8d e2                                      add r5, sp, #0xc
00477bb0  07 10 a0 e1                                      mov r1, r7
00477bb4  05 00 a0 e1                                      mov r0, r5
00477bb8  5b 18 fb eb                                      bl #0x33dd2c
00477bbc  05 00 a0 e1                                      mov r0, r5
00477bc0  e3 20 fb eb                                      bl #0x33ff54
00477bc4  28 00 84 e5                                      str r0, [r4, #0x28]
00477bc8  04 00 a0 e1                                      mov r0, r4
00477bcc  82 ff ff eb                                      bl #0x4779dc
00477bd0  04 00 a0 e1                                      mov r0, r4
00477bd4  1c d0 8d e2                                      add sp, sp, #0x1c
00477bd8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00477bdc  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00477be0  03 30 95 e7                                      ldr r3, [r5, r3]
00477be4  00 30 93 e5                                      ldr r3, [r3]
00477be8  02 00 53 e3                                      cmp r3, #2
00477bec  00 30 a0 03                                      moveq r3, #0
00477bf0  00 30 83 05                                      streq r3, [r3]
00477bf4  ea ff ff 0a                                      beq #0x477ba4
00477bf8  01 00 53 e3                                      cmp r3, #1
00477bfc  e8 ff ff 1a                                      bne #0x477ba4
00477c00  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
00477c04  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00477c08  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
00477c0c  00 00 95 e7                                      ldr r0, [r5, r0]
00477c10  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00477c14  32 c0 a0 e3                                      mov ip, #0x32
00477c18  01 10 8f e0                                      add r1, pc, r1
00477c1c  02 20 8f e0                                      add r2, pc, r2
00477c20  03 30 8f e0                                      add r3, pc, r3
00477c24  a8 00 80 e2                                      add r0, r0, #0xa8
00477c28  00 c0 8d e5                                      str ip, [sp]
00477c2c  f4 58 fa eb                                      bl #0x30e004
00477c30  db ff ff ea                                      b #0x477ba4
00477c34  70 00 9f e5                                      ldr r0, [pc, #0x70]
00477c38  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00477c3c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00477c40  00 00 95 e7                                      ldr r0, [r5, r0]
00477c44  78 30 9f e5                                      ldr r3, [pc, #0x78]
00477c48  30 c0 a0 e3                                      mov ip, #0x30
00477c4c  01 10 8f e0                                      add r1, pc, r1
00477c50  a8 00 80 e2                                      add r0, r0, #0xa8
00477c54  02 20 8f e0                                      add r2, pc, r2
00477c58  03 30 8f e0                                      add r3, pc, r3
00477c5c  00 c0 8d e5                                      str ip, [sp]
00477c60  e7 58 fa eb                                      bl #0x30e004
00477c64  20 80 94 e5                                      ldr r8, [r4, #0x20]
00477c68  b4 ff ff ea                                      b #0x477b40
00477c6c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00477c70  50 10 9f e5                                      ldr r1, [pc, #0x50]
00477c74  50 20 9f e5                                      ldr r2, [pc, #0x50]
00477c78  00 00 95 e7                                      ldr r0, [r5, r0]
00477c7c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00477c80  31 c0 a0 e3                                      mov ip, #0x31
00477c84  01 10 8f e0                                      add r1, pc, r1
00477c88  02 20 8f e0                                      add r2, pc, r2
00477c8c  03 30 8f e0                                      add r3, pc, r3
00477c90  a8 00 80 e2                                      add r0, r0, #0xa8
00477c94  00 c0 8d e5                                      str ip, [sp]
00477c98  d9 58 fa eb                                      bl #0x30e004
00477c9c  b5 ff ff ea                                      b #0x477b78
; mapping-symbol data/literal pool
00477ca0  e8 cf 51 00 98 13 00 00 c0 39 00 00 c0 19 00 00  .byte 0xe8, 0xcf, 0x51, 0x00, 0x98, 0x13, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00477cb0  c0 67 44 00 a4 5d 45 00 30 5d 45 00 8c 67 44 00  .byte 0xc0, 0x67, 0x44, 0x00, 0xa4, 0x5d, 0x45, 0x00, 0x30, 0x5d, 0x45, 0x00, 0x8c, 0x67, 0x44, 0x00
00477cc0  e4 5c 45 00 f8 5c 45 00 54 67 44 00 20 5d 45 00  .byte 0xe4, 0x5c, 0x45, 0x00, 0xf8, 0x5c, 0x45, 0x00, 0x54, 0x67, 0x44, 0x00, 0x20, 0x5d, 0x45, 0x00
00477cd0  c4 5c 45 00                                      .byte 0xc4, 0x5c, 0x45, 0x00

; FUNCTION 0x00477cd4, declared_size=596, range_size=596, mode=arm
; class-group: AnchorForward
; alias: _ZN13AnchorForwardC2EP10GameObjectfffN10AnchorBase10AnchorTypeE
; demangled: AnchorForward::AnchorForward(GameObject*, float, float, float, AnchorBase::AnchorType)
; decoder-mode: arm
00477cd4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00477cd8  1c d0 4d e2                                      sub sp, sp, #0x1c
00477cdc  02 60 a0 e1                                      mov r6, r2
00477ce0  0c 52 9f e5                                      ldr r5, [pc, #0x20c]
00477ce4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00477ce8  00 40 a0 e1                                      mov r4, r0
00477cec  03 80 a0 e1                                      mov r8, r3
00477cf0  01 70 a0 e1                                      mov r7, r1
00477cf4  29 fd ff eb                                      bl #0x4771a0
00477cf8  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
00477cfc  05 50 8f e0                                      add r5, pc, r5
00477d00  00 10 a0 e3                                      mov r1, #0
00477d04  03 30 95 e7                                      ldr r3, [r5, r3]
00477d08  00 a0 a0 e3                                      mov sl, #0
00477d0c  06 00 a0 e1                                      mov r0, r6
00477d10  08 30 83 e2                                      add r3, r3, #8
00477d14  00 30 84 e5                                      str r3, [r4]
00477d18  38 30 9d e5                                      ldr r3, [sp, #0x38]
00477d1c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00477d20  20 80 84 e5                                      str r8, [r4, #0x20]
00477d24  24 30 84 e5                                      str r3, [r4, #0x24]
00477d28  05 30 a0 e3                                      mov r3, #5
00477d2c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00477d30  28 a0 84 e5                                      str sl, [r4, #0x28]
00477d34  2c 10 84 e5                                      str r1, [r4, #0x2c]
00477d38  30 10 84 e5                                      str r1, [r4, #0x30]
00477d3c  34 10 84 e5                                      str r1, [r4, #0x34]
00477d40  38 a0 c4 e5                                      strb sl, [r4, #0x38]
00477d44  40 10 84 e5                                      str r1, [r4, #0x40]
00477d48  44 10 84 e5                                      str r1, [r4, #0x44]
00477d4c  48 10 84 e5                                      str r1, [r4, #0x48]
00477d50  4c a0 c4 e5                                      strb sl, [r4, #0x4c]
00477d54  50 a0 84 e5                                      str sl, [r4, #0x50]
00477d58  54 10 84 e5                                      str r1, [r4, #0x54]
00477d5c  58 10 84 e5                                      str r1, [r4, #0x58]
00477d60  5c 10 84 e5                                      str r1, [r4, #0x5c]
00477d64  60 10 84 e5                                      str r1, [r4, #0x60]
00477d68  d1 59 fa eb                                      bl #0x30e4b4
00477d6c  0a 00 50 e1                                      cmp r0, sl
00477d70  07 00 00 1a                                      bne #0x477d94
00477d74  80 31 9f e5                                      ldr r3, [pc, #0x180]
00477d78  03 30 95 e7                                      ldr r3, [r5, r3]
00477d7c  00 30 93 e5                                      ldr r3, [r3]
00477d80  02 00 53 e3                                      cmp r3, #2
00477d84  00 a0 8a 05                                      streq sl, [sl]
00477d88  01 00 00 0a                                      beq #0x477d94
00477d8c  01 00 53 e3                                      cmp r3, #1
00477d90  3c 00 00 0a                                      beq #0x477e88
00477d94  08 00 a0 e1                                      mov r0, r8
00477d98  00 10 a0 e3                                      mov r1, #0
00477d9c  c4 59 fa eb                                      bl #0x30e4b4
00477da0  00 00 50 e3                                      cmp r0, #0
00477da4  08 00 00 1a                                      bne #0x477dcc
00477da8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00477dac  03 30 95 e7                                      ldr r3, [r5, r3]
00477db0  00 30 93 e5                                      ldr r3, [r3]
00477db4  02 00 53 e3                                      cmp r3, #2
00477db8  00 30 a0 03                                      moveq r3, #0
00477dbc  00 30 83 05                                      streq r3, [r3]
00477dc0  01 00 00 0a                                      beq #0x477dcc
00477dc4  01 00 53 e3                                      cmp r3, #1
00477dc8  3c 00 00 0a                                      beq #0x477ec0
00477dcc  24 60 94 e5                                      ldr r6, [r4, #0x24]
00477dd0  00 10 a0 e3                                      mov r1, #0
00477dd4  06 00 a0 e1                                      mov r0, r6
00477dd8  b5 59 fa eb                                      bl #0x30e4b4
00477ddc  00 00 50 e3                                      cmp r0, #0
00477de0  12 00 00 0a                                      beq #0x477e30
00477de4  06 00 a0 e1                                      mov r0, r6
00477de8  fe 15 a0 e3                                      mov r1, #0x3f800000
00477dec  ee 5a fa eb                                      bl #0x30e9ac
00477df0  00 00 50 e3                                      cmp r0, #0
00477df4  0d 00 00 0a                                      beq #0x477e30
00477df8  00 00 57 e3                                      cmp r7, #0
00477dfc  06 00 00 0a                                      beq #0x477e1c
00477e00  0c 50 8d e2                                      add r5, sp, #0xc
00477e04  07 10 a0 e1                                      mov r1, r7
00477e08  05 00 a0 e1                                      mov r0, r5
00477e0c  c6 17 fb eb                                      bl #0x33dd2c
00477e10  05 00 a0 e1                                      mov r0, r5
00477e14  4e 20 fb eb                                      bl #0x33ff54
00477e18  28 00 84 e5                                      str r0, [r4, #0x28]
00477e1c  04 00 a0 e1                                      mov r0, r4
00477e20  ed fe ff eb                                      bl #0x4779dc
00477e24  04 00 a0 e1                                      mov r0, r4
00477e28  1c d0 8d e2                                      add sp, sp, #0x1c
00477e2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00477e30  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00477e34  03 30 95 e7                                      ldr r3, [r5, r3]
00477e38  00 30 93 e5                                      ldr r3, [r3]
00477e3c  02 00 53 e3                                      cmp r3, #2
00477e40  00 30 a0 03                                      moveq r3, #0
00477e44  00 30 83 05                                      streq r3, [r3]
00477e48  ea ff ff 0a                                      beq #0x477df8
00477e4c  01 00 53 e3                                      cmp r3, #1
00477e50  e8 ff ff 1a                                      bne #0x477df8
00477e54  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
00477e58  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00477e5c  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
00477e60  00 00 95 e7                                      ldr r0, [r5, r0]
00477e64  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00477e68  32 c0 a0 e3                                      mov ip, #0x32
00477e6c  01 10 8f e0                                      add r1, pc, r1
00477e70  02 20 8f e0                                      add r2, pc, r2
00477e74  03 30 8f e0                                      add r3, pc, r3
00477e78  a8 00 80 e2                                      add r0, r0, #0xa8
00477e7c  00 c0 8d e5                                      str ip, [sp]
00477e80  5f 58 fa eb                                      bl #0x30e004
00477e84  db ff ff ea                                      b #0x477df8
00477e88  70 00 9f e5                                      ldr r0, [pc, #0x70]
00477e8c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00477e90  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00477e94  00 00 95 e7                                      ldr r0, [r5, r0]
00477e98  78 30 9f e5                                      ldr r3, [pc, #0x78]
00477e9c  30 c0 a0 e3                                      mov ip, #0x30
00477ea0  01 10 8f e0                                      add r1, pc, r1
00477ea4  a8 00 80 e2                                      add r0, r0, #0xa8
00477ea8  02 20 8f e0                                      add r2, pc, r2
00477eac  03 30 8f e0                                      add r3, pc, r3
00477eb0  00 c0 8d e5                                      str ip, [sp]
00477eb4  52 58 fa eb                                      bl #0x30e004
00477eb8  20 80 94 e5                                      ldr r8, [r4, #0x20]
00477ebc  b4 ff ff ea                                      b #0x477d94
00477ec0  38 00 9f e5                                      ldr r0, [pc, #0x38]
00477ec4  50 10 9f e5                                      ldr r1, [pc, #0x50]
00477ec8  50 20 9f e5                                      ldr r2, [pc, #0x50]
00477ecc  00 00 95 e7                                      ldr r0, [r5, r0]
00477ed0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00477ed4  31 c0 a0 e3                                      mov ip, #0x31
00477ed8  01 10 8f e0                                      add r1, pc, r1
00477edc  02 20 8f e0                                      add r2, pc, r2
00477ee0  03 30 8f e0                                      add r3, pc, r3
00477ee4  a8 00 80 e2                                      add r0, r0, #0xa8
00477ee8  00 c0 8d e5                                      str ip, [sp]
00477eec  44 58 fa eb                                      bl #0x30e004
00477ef0  b5 ff ff ea                                      b #0x477dcc
; mapping-symbol data/literal pool
00477ef4  94 cd 51 00 98 13 00 00 c0 39 00 00 c0 19 00 00  .byte 0x94, 0xcd, 0x51, 0x00, 0x98, 0x13, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00477f04  6c 65 44 00 50 5b 45 00 dc 5a 45 00 38 65 44 00  .byte 0x6c, 0x65, 0x44, 0x00, 0x50, 0x5b, 0x45, 0x00, 0xdc, 0x5a, 0x45, 0x00, 0x38, 0x65, 0x44, 0x00
00477f14  90 5a 45 00 a4 5a 45 00 00 65 44 00 cc 5a 45 00  .byte 0x90, 0x5a, 0x45, 0x00, 0xa4, 0x5a, 0x45, 0x00, 0x00, 0x65, 0x44, 0x00, 0xcc, 0x5a, 0x45, 0x00
00477f24  70 5a 45 00                                      .byte 0x70, 0x5a, 0x45, 0x00
