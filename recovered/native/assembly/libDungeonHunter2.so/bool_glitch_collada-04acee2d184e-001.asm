; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006324c4, declared_size=1360, range_size=1360, mode=arm
; class-group: bool glitch::collada
; alias: _ZN6glitch7collada12_GLOBAL__N_120setMaterialParameterIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEENS0_9SNewParamEEEbRKT_tRT0_PNS0_14CRootSceneNodeE
; demangled: bool glitch::collada::(anonymous namespace)::setMaterialParameter<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, glitch::collada::SNewParam>(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, unsigned short, glitch::collada::SNewParam&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006324c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006324c8  00 70 a0 e1                                      mov r7, r0
006324cc  00 00 90 e5                                      ldr r0, [r0]
006324d0  01 40 a0 e1                                      mov r4, r1
006324d4  6c d0 4d e2                                      sub sp, sp, #0x6c
006324d8  be 10 d0 e1                                      ldrh r1, [r0, #0xe]
006324dc  0c 30 8d e5                                      str r3, [sp, #0xc]
006324e0  10 30 92 e5                                      ldr r3, [r2, #0x10]
006324e4  01 00 54 e1                                      cmp r4, r1
006324e8  20 90 90 35                                      ldrlo sb, [r0, #0x20]
006324ec  00 90 a0 23                                      movhs sb, #0
006324f0  00 30 93 e5                                      ldr r3, [r3]
006324f4  04 92 89 30                                      addlo sb, sb, r4, lsl #4
006324f8  08 80 99 e5                                      ldr r8, [sb, #8]
006324fc  e8 54 9f e5                                      ldr r5, [pc, #0x4e8]
00632500  02 60 a0 e1                                      mov r6, r2
00632504  08 00 53 e1                                      cmp r3, r8
00632508  05 50 8f e0                                      add r5, pc, r5
0063250c  0a 00 00 2a                                      bhs #0x63253c
00632510  00 30 99 e5                                      ldr r3, [sb]
00632514  d4 14 9f e5                                      ldr r1, [pc, #0x4d4]
00632518  08 20 90 e5                                      ldr r2, [r0, #8]
0063251c  00 00 53 e3                                      cmp r3, #0
00632520  03 00 a0 e3                                      mov r0, #3
00632524  04 30 83 12                                      addne r3, r3, #4
00632528  01 10 8f e0                                      add r1, pc, r1
0063252c  c0 62 ff eb                                      bl #0x60b034
00632530  00 00 a0 e3                                      mov r0, #0
00632534  6c d0 8d e2                                      add sp, sp, #0x6c
00632538  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063253c  b0 24 9f e5                                      ldr r2, [pc, #0x4b0]
00632540  06 b0 d9 e5                                      ldrb fp, [sb, #6]
00632544  04 30 96 e5                                      ldr r3, [r6, #4]
00632548  02 20 8f e0                                      add r2, pc, r2
0063254c  0b c1 92 e7                                      ldr ip, [r2, fp, lsl #2]
00632550  01 20 a0 e3                                      mov r2, #1
00632554  03 a0 a0 e1                                      mov sl, r3
00632558  12 c3 1c e0                                      ands ip, ip, r2, lsl r3
0063255c  1a 00 00 1a                                      bne #0x6325cc
00632560  00 70 99 e5                                      ldr r7, [sb]
00632564  08 50 90 e5                                      ldr r5, [r0, #8]
00632568  00 00 57 e3                                      cmp r7, #0
0063256c  04 70 87 12                                      addne r7, r7, #4
00632570  ff 00 5b e3                                      cmp fp, #0xff
00632574  43 00 00 0a                                      beq #0x632688
00632578  00 00 a0 e3                                      mov r0, #0
0063257c  cc d6 fe eb                                      bl #0x5e80b4
00632580  04 a0 96 e5                                      ldr sl, [r6, #4]
00632584  0b 41 90 e7                                      ldr r4, [r0, fp, lsl #2]
00632588  68 14 9f e5                                      ldr r1, [pc, #0x468]
0063258c  58 20 a0 e3                                      mov r2, #0x58
00632590  10 00 8d e2                                      add r0, sp, #0x10
00632594  01 10 8f e0                                      add r1, pc, r1
00632598  b2 70 f3 eb                                      bl #0x30e868
0063259c  68 30 8d e2                                      add r3, sp, #0x68
006325a0  0a a1 83 e0                                      add sl, r3, sl, lsl #2
006325a4  50 14 9f e5                                      ldr r1, [pc, #0x450]
006325a8  58 c0 1a e5                                      ldr ip, [sl, #-0x58]
006325ac  03 00 a0 e3                                      mov r0, #3
006325b0  05 20 a0 e1                                      mov r2, r5
006325b4  01 10 8f e0                                      add r1, pc, r1
006325b8  07 30 a0 e1                                      mov r3, r7
006325bc  10 10 8d e8                                      stm sp, {r4, ip}
006325c0  9b 62 ff eb                                      bl #0x60b034
006325c4  00 00 a0 e3                                      mov r0, #0
006325c8  d9 ff ff ea                                      b #0x632534
006325cc  09 b0 4b e2                                      sub fp, fp, #9
006325d0  09 00 5b e3                                      cmp fp, #9
006325d4  0b f1 8f 90                                      addls pc, pc, fp, lsl #2
006325d8  2d 00 00 ea                                      b #0x632694
006325dc  27 00 00 ea                                      b #0x632680
006325e0  26 00 00 ea                                      b #0x632680
006325e4  3f 00 00 ea                                      b #0x6326e8
006325e8  72 00 00 ea                                      b #0x6327b8
006325ec  93 00 00 ea                                      b #0x632840
006325f0  b4 00 00 ea                                      b #0x6328c8
006325f4  d5 00 00 ea                                      b #0x632950
006325f8  25 00 00 ea                                      b #0x632694
006325fc  24 00 00 ea                                      b #0x632694
00632600  ff ff ff ea                                      b #0x632604
00632604  00 00 58 e3                                      cmp r8, #0
00632608  1c 00 00 0a                                      beq #0x632680
0063260c  00 a0 a0 e3                                      mov sl, #0
00632610  07 b0 a0 e1                                      mov fp, r7
00632614  0a 50 a0 e1                                      mov r5, sl
00632618  04 70 a0 e1                                      mov r7, r4
0063261c  10 90 8d e2                                      add sb, sp, #0x10
00632620  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00632624  0e 00 00 ea                                      b #0x632664
00632628  d0 20 d3 e1                                      ldrsb r2, [r3]
0063262c  23 00 52 e3                                      cmp r2, #0x23
00632630  e8 00 00 0a                                      beq #0x6329d8
00632634  00 00 54 e3                                      cmp r4, #0
00632638  05 00 00 0a                                      beq #0x632654
0063263c  04 00 a0 e1                                      mov r0, r4
00632640  0b 10 a0 e1                                      mov r1, fp
00632644  07 20 a0 e1                                      mov r2, r7
00632648  05 30 a0 e1                                      mov r3, r5
0063264c  00 90 8d e5                                      str sb, [sp]
00632650  8d a2 00 eb                                      bl #0x65b08c
00632654  01 50 85 e2                                      add r5, r5, #1
00632658  08 00 55 e1                                      cmp r5, r8
0063265c  04 a0 8a e2                                      add sl, sl, #4
00632660  06 00 00 0a                                      beq #0x632680
00632664  14 30 96 e5                                      ldr r3, [r6, #0x14]
00632668  0a 30 83 e0                                      add r3, r3, sl
0063266c  00 30 93 e5                                      ldr r3, [r3]
00632670  10 30 8d e5                                      str r3, [sp, #0x10]
00632674  04 20 13 e5                                      ldr r2, [r3, #-4]
00632678  00 00 52 e3                                      cmp r2, #0
0063267c  e9 ff ff 1a                                      bne #0x632628
00632680  01 00 a0 e3                                      mov r0, #1
00632684  aa ff ff ea                                      b #0x632534
00632688  70 43 9f e5                                      ldr r4, [pc, #0x370]
0063268c  04 40 8f e0                                      add r4, pc, r4
00632690  bc ff ff ea                                      b #0x632588
00632694  68 23 9f e5                                      ldr r2, [pc, #0x368]
00632698  68 e3 9f e5                                      ldr lr, [pc, #0x368]
0063269c  68 c3 9f e5                                      ldr ip, [pc, #0x368]
006326a0  02 20 95 e7                                      ldr r2, [r5, r2]
006326a4  01 10 83 e2                                      add r1, r3, #1
006326a8  0c c0 95 e7                                      ldr ip, [r5, ip]
006326ac  0e 50 95 e7                                      ldr r5, [r5, lr]
006326b0  01 e1 92 e7                                      ldr lr, [r2, r1, lsl #2]
006326b4  01 c0 dc e7                                      ldrb ip, [ip, r1]
006326b8  50 23 9f e5                                      ldr r2, [pc, #0x350]
006326bc  0e 10 d5 e7                                      ldrb r1, [r5, lr]
006326c0  02 20 8f e0                                      add r2, pc, r2
006326c4  9c 01 0c e0                                      mul ip, ip, r1
006326c8  4c 20 82 e2                                      add r2, r2, #0x4c
006326cc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
006326d0  04 10 a0 e1                                      mov r1, r4
006326d4  14 30 96 e5                                      ldr r3, [r6, #0x14]
006326d8  00 c0 8d e5                                      str ip, [sp]
006326dc  5f 8c fe eb                                      bl #0x5d5860
006326e0  01 00 a0 e3                                      mov r0, #1
006326e4  92 ff ff ea                                      b #0x632534
006326e8  10 a0 8d e2                                      add sl, sp, #0x10
006326ec  0a 00 a0 e1                                      mov r0, sl
006326f0  47 fd ff eb                                      bl #0x631c14
006326f4  08 23 9f e5                                      ldr r2, [pc, #0x308]
006326f8  04 30 96 e5                                      ldr r3, [r6, #4]
006326fc  08 b0 99 e5                                      ldr fp, [sb, #8]
00632700  02 10 95 e7                                      ldr r1, [r5, r2]
00632704  fc 22 9f e5                                      ldr r2, [pc, #0x2fc]
00632708  01 30 83 e2                                      add r3, r3, #1
0063270c  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00632710  02 00 95 e7                                      ldr r0, [r5, r2]
00632714  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
00632718  00 00 5b e3                                      cmp fp, #0
0063271c  02 20 95 e7                                      ldr r2, [r5, r2]
00632720  03 20 d2 e7                                      ldrb r2, [r2, r3]
00632724  01 30 d0 e7                                      ldrb r3, [r0, r1]
00632728  92 03 03 e0                                      mul r3, r2, r3
0063272c  d3 ff ff 0a                                      beq #0x632680
00632730  00 80 a0 e3                                      mov r8, #0
00632734  0c 70 8d e5                                      str r7, [sp, #0xc]
00632738  08 50 a0 e1                                      mov r5, r8
0063273c  04 70 a0 e1                                      mov r7, r4
00632740  08 90 a0 e1                                      mov sb, r8
00632744  03 40 a0 e1                                      mov r4, r3
00632748  03 00 00 ea                                      b #0x63275c
0063274c  01 50 85 e2                                      add r5, r5, #1
00632750  0b 00 55 e1                                      cmp r5, fp
00632754  04 80 88 e0                                      add r8, r8, r4
00632758  c8 ff ff 0a                                      beq #0x632680
0063275c  14 e0 96 e5                                      ldr lr, [r6, #0x14]
00632760  0a c0 a0 e1                                      mov ip, sl
00632764  50 90 cd e5                                      strb sb, [sp, #0x50]
00632768  08 e0 8e e0                                      add lr, lr, r8
0063276c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00632770  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00632774  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00632778  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0063277c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00632780  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00632784  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00632788  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0063278c  0a 00 a0 e1                                      mov r0, sl
00632790  81 1e fe eb                                      bl #0x5ba19c
00632794  00 00 50 e3                                      cmp r0, #0
00632798  eb ff ff 1a                                      bne #0x63274c
0063279c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006327a0  05 20 a0 e1                                      mov r2, r5
006327a4  07 10 a0 e1                                      mov r1, r7
006327a8  00 00 93 e5                                      ldr r0, [r3]
006327ac  0a 30 a0 e1                                      mov r3, sl
006327b0  58 87 fe eb                                      bl #0x5d4518
006327b4  e4 ff ff ea                                      b #0x63274c
006327b8  01 00 54 e1                                      cmp r4, r1
006327bc  20 30 90 35                                      ldrlo r3, [r0, #0x20]
006327c0  00 30 a0 23                                      movhs r3, #0
006327c4  14 50 96 e5                                      ldr r5, [r6, #0x14]
006327c8  04 32 83 30                                      addlo r3, r3, r4, lsl #4
006327cc  08 80 93 e5                                      ldr r8, [r3, #8]
006327d0  00 00 58 e3                                      cmp r8, #0
006327d4  a9 ff ff 0a                                      beq #0x632680
006327d8  00 60 a0 e3                                      mov r6, #0
006327dc  10 a0 8d e2                                      add sl, sp, #0x10
006327e0  06 01 95 e7                                      ldr r0, [r5, r6, lsl #2]
006327e4  06 20 a0 e1                                      mov r2, r6
006327e8  04 10 a0 e1                                      mov r1, r4
006327ec  00 00 90 e5                                      ldr r0, [r0]
006327f0  0a 30 a0 e1                                      mov r3, sl
006327f4  01 60 86 e2                                      add r6, r6, #1
006327f8  00 00 50 e3                                      cmp r0, #0
006327fc  0b 00 00 0a                                      beq #0x632830
00632800  10 00 90 e5                                      ldr r0, [r0, #0x10]
00632804  00 00 50 e3                                      cmp r0, #0
00632808  10 00 8d e5                                      str r0, [sp, #0x10]
0063280c  04 c0 90 15                                      ldrne ip, [r0, #4]
00632810  01 c0 8c 12                                      addne ip, ip, #1
00632814  04 c0 80 15                                      strne ip, [r0, #4]
00632818  00 00 97 e5                                      ldr r0, [r7]
0063281c  3e 90 fe eb                                      bl #0x5d691c
00632820  10 00 9d e5                                      ldr r0, [sp, #0x10]
00632824  00 00 50 e3                                      cmp r0, #0
00632828  00 00 00 0a                                      beq #0x632830
0063282c  54 ab f3 eb                                      bl #0x31d584
00632830  08 00 56 e1                                      cmp r6, r8
00632834  e9 ff ff 1a                                      bne #0x6327e0
00632838  01 00 a0 e3                                      mov r0, #1
0063283c  3c ff ff ea                                      b #0x632534
00632840  01 00 54 e1                                      cmp r4, r1
00632844  20 30 90 35                                      ldrlo r3, [r0, #0x20]
00632848  00 30 a0 23                                      movhs r3, #0
0063284c  14 50 96 e5                                      ldr r5, [r6, #0x14]
00632850  04 32 83 30                                      addlo r3, r3, r4, lsl #4
00632854  08 80 93 e5                                      ldr r8, [r3, #8]
00632858  00 00 58 e3                                      cmp r8, #0
0063285c  87 ff ff 0a                                      beq #0x632680
00632860  00 60 a0 e3                                      mov r6, #0
00632864  10 a0 8d e2                                      add sl, sp, #0x10
00632868  06 01 95 e7                                      ldr r0, [r5, r6, lsl #2]
0063286c  06 20 a0 e1                                      mov r2, r6
00632870  04 10 a0 e1                                      mov r1, r4
00632874  00 00 90 e5                                      ldr r0, [r0]
00632878  0a 30 a0 e1                                      mov r3, sl
0063287c  01 60 86 e2                                      add r6, r6, #1
00632880  00 00 50 e3                                      cmp r0, #0
00632884  0b 00 00 0a                                      beq #0x6328b8
00632888  10 00 90 e5                                      ldr r0, [r0, #0x10]
0063288c  00 00 50 e3                                      cmp r0, #0
00632890  10 00 8d e5                                      str r0, [sp, #0x10]
00632894  04 c0 90 15                                      ldrne ip, [r0, #4]
00632898  01 c0 8c 12                                      addne ip, ip, #1
0063289c  04 c0 80 15                                      strne ip, [r0, #4]
006328a0  00 00 97 e5                                      ldr r0, [r7]
006328a4  1c 90 fe eb                                      bl #0x5d691c
006328a8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006328ac  00 00 50 e3                                      cmp r0, #0
006328b0  00 00 00 0a                                      beq #0x6328b8
006328b4  32 ab f3 eb                                      bl #0x31d584
006328b8  08 00 56 e1                                      cmp r6, r8
006328bc  e9 ff ff 1a                                      bne #0x632868
006328c0  01 00 a0 e3                                      mov r0, #1
006328c4  1a ff ff ea                                      b #0x632534
006328c8  01 00 54 e1                                      cmp r4, r1
006328cc  20 30 90 35                                      ldrlo r3, [r0, #0x20]
006328d0  00 30 a0 23                                      movhs r3, #0
006328d4  14 50 96 e5                                      ldr r5, [r6, #0x14]
006328d8  04 32 83 30                                      addlo r3, r3, r4, lsl #4
006328dc  08 80 93 e5                                      ldr r8, [r3, #8]
006328e0  00 00 58 e3                                      cmp r8, #0
006328e4  65 ff ff 0a                                      beq #0x632680
006328e8  00 60 a0 e3                                      mov r6, #0
006328ec  10 a0 8d e2                                      add sl, sp, #0x10
006328f0  06 01 95 e7                                      ldr r0, [r5, r6, lsl #2]
006328f4  06 20 a0 e1                                      mov r2, r6
006328f8  04 10 a0 e1                                      mov r1, r4
006328fc  00 00 90 e5                                      ldr r0, [r0]
00632900  0a 30 a0 e1                                      mov r3, sl
00632904  01 60 86 e2                                      add r6, r6, #1
00632908  00 00 50 e3                                      cmp r0, #0
0063290c  0b 00 00 0a                                      beq #0x632940
00632910  10 00 90 e5                                      ldr r0, [r0, #0x10]
00632914  00 00 50 e3                                      cmp r0, #0
00632918  10 00 8d e5                                      str r0, [sp, #0x10]
0063291c  04 c0 90 15                                      ldrne ip, [r0, #4]
00632920  01 c0 8c 12                                      addne ip, ip, #1
00632924  04 c0 80 15                                      strne ip, [r0, #4]
00632928  00 00 97 e5                                      ldr r0, [r7]
0063292c  fa 8f fe eb                                      bl #0x5d691c
00632930  10 00 9d e5                                      ldr r0, [sp, #0x10]
00632934  00 00 50 e3                                      cmp r0, #0
00632938  00 00 00 0a                                      beq #0x632940
0063293c  10 ab f3 eb                                      bl #0x31d584
00632940  08 00 56 e1                                      cmp r6, r8
00632944  e9 ff ff 1a                                      bne #0x6328f0
00632948  01 00 a0 e3                                      mov r0, #1
0063294c  f8 fe ff ea                                      b #0x632534
00632950  01 00 54 e1                                      cmp r4, r1
00632954  20 30 90 35                                      ldrlo r3, [r0, #0x20]
00632958  00 30 a0 23                                      movhs r3, #0
0063295c  14 50 96 e5                                      ldr r5, [r6, #0x14]
00632960  04 32 83 30                                      addlo r3, r3, r4, lsl #4
00632964  08 80 93 e5                                      ldr r8, [r3, #8]
00632968  00 00 58 e3                                      cmp r8, #0
0063296c  43 ff ff 0a                                      beq #0x632680
00632970  00 60 a0 e3                                      mov r6, #0
00632974  10 a0 8d e2                                      add sl, sp, #0x10
00632978  06 01 95 e7                                      ldr r0, [r5, r6, lsl #2]
0063297c  06 20 a0 e1                                      mov r2, r6
00632980  04 10 a0 e1                                      mov r1, r4
00632984  00 00 90 e5                                      ldr r0, [r0]
00632988  0a 30 a0 e1                                      mov r3, sl
0063298c  01 60 86 e2                                      add r6, r6, #1
00632990  00 00 50 e3                                      cmp r0, #0
00632994  0b 00 00 0a                                      beq #0x6329c8
00632998  10 00 90 e5                                      ldr r0, [r0, #0x10]
0063299c  00 00 50 e3                                      cmp r0, #0
006329a0  10 00 8d e5                                      str r0, [sp, #0x10]
006329a4  04 c0 90 15                                      ldrne ip, [r0, #4]
006329a8  01 c0 8c 12                                      addne ip, ip, #1
006329ac  04 c0 80 15                                      strne ip, [r0, #4]
006329b0  00 00 97 e5                                      ldr r0, [r7]
006329b4  d8 8f fe eb                                      bl #0x5d691c
006329b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006329bc  00 00 50 e3                                      cmp r0, #0
006329c0  00 00 00 0a                                      beq #0x6329c8
006329c4  ee aa f3 eb                                      bl #0x31d584
006329c8  08 00 56 e1                                      cmp r6, r8
006329cc  e9 ff ff 1a                                      bne #0x632978
006329d0  01 00 a0 e3                                      mov r0, #1
006329d4  d6 fe ff ea                                      b #0x632534
006329d8  d1 30 d3 e1                                      ldrsb r3, [r3, #1]
006329dc  00 00 53 e3                                      cmp r3, #0
006329e0  13 ff ff 1a                                      bne #0x632634
006329e4  01 00 a0 e3                                      mov r0, #1
006329e8  d1 fe ff ea                                      b #0x632534
; mapping-symbol data/literal pool
006329ec  88 25 36 00 40 2a 2b 00 04 29 2b 00 d4 4f 32 00  .byte 0x88, 0x25, 0x36, 0x00, 0x40, 0x2a, 0x2b, 0x00, 0x04, 0x29, 0x2b, 0x00, 0xd4, 0x4f, 0x32, 0x00
006329fc  e4 29 2b 00 d4 3d 29 00 ac 3b 00 00 c0 15 00 00  .byte 0xe4, 0x29, 0x2b, 0x00, 0xd4, 0x3d, 0x29, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xc0, 0x15, 0x00, 0x00
00632a0c  ac 2b 00 00 8c 27 2b 00                          .byte 0xac, 0x2b, 0x00, 0x00, 0x8c, 0x27, 0x2b, 0x00
