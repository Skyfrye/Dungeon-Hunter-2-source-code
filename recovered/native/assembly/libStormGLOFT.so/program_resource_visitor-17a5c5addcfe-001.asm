; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0009047c, declared_size=104, range_size=104, mode=thumb
; class-group: program_resource_visitor
; alias: _ZN24program_resource_visitor7processEPK9glsl_typePKc
; demangled: program_resource_visitor::process(glsl_type const*, char const*)
; decoder-mode: thumb
0009047c  f0 b5                                            push {r4, r5, r6, r7, lr}
0009047e  03 af                                            add r7, sp, #0xc
00090480  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00090484  86 b0                                            sub sp, #0x18
00090486  06 46                                            mov r6, r0
00090488  14 48                                            ldr r0, [pc, #0x50]
0009048a  14 46                                            mov r4, r2
0009048c  88 46                                            mov r8, r1
0009048e  78 44                                            add r0, pc
00090490  21 46                                            mov r1, r4
00090492  00 25                                            movs r5, #0
00090494  00 68                                            ldr r0, [r0]
00090496  00 68                                            ldr r0, [r0]
00090498  05 90                                            str r0, [sp, #0x14]
0009049a  00 20                                            movs r0, #0
0009049c  a2 f7 da e8                                      blx #0x32654
000904a0  04 90                                            str r0, [sp, #0x10]
000904a2  20 46                                            mov r0, r4
000904a4  a1 f7 5e ed                                      blx #0x31f64
000904a8  04 aa                                            add r2, sp, #0x10
000904aa  03 46                                            mov r3, r0
000904ac  30 46                                            mov r0, r6
000904ae  41 46                                            mov r1, r8
000904b0  cd e9 00 55                                      strd r5, r5, [sp]
000904b4  02 95                                            str r5, [sp, #8]
000904b6  a4 f7 34 eb                                      blx #0x34b20
000904ba  04 98                                            ldr r0, [sp, #0x10]
000904bc  a2 f7 12 e9                                      blx #0x326e4
000904c0  07 48                                            ldr r0, [pc, #0x1c]
000904c2  05 99                                            ldr r1, [sp, #0x14]
000904c4  78 44                                            add r0, pc
000904c6  00 68                                            ldr r0, [r0]
000904c8  00 68                                            ldr r0, [r0]
000904ca  40 1a                                            subs r0, r0, r1
000904cc  02 bf                                            ittt eq
000904ce  06 b0                                            addeq sp, #0x18
000904d0  5d f8 04 8b                                      ldreq r8, [sp], #4
000904d4  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000904d6  a1 f7 c4 ed                                      blx #0x32060
000904da  00 bf                                            nop
000904dc  26 c0                                            stm r0!, {r1, r2, r5}
000904de  04 00                                            movs r4, r0
000904e0  f0 bf                                            hint #0xf
000904e2  04 00                                            movs r4, r0

; FUNCTION 0x000904e4, declared_size=384, range_size=384, mode=thumb
; class-group: program_resource_visitor
; alias: _ZN24program_resource_visitor9recursionEPK9glsl_typePPcjbS2_b
; demangled: program_resource_visitor::recursion(glsl_type const*, char**, unsigned int, bool, glsl_type const*, bool)
; decoder-mode: thumb
000904e4  f0 b5                                            push {r4, r5, r6, r7, lr}
000904e6  03 af                                            add r7, sp, #0xc
000904e8  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000904ec  89 b0                                            sub sp, #0x24
000904ee  04 90                                            str r0, [sp, #0x10]
000904f0  0c 46                                            mov r4, r1
000904f2  55 48                                            ldr r0, [pc, #0x154]
000904f4  93 46                                            mov fp, r2
000904f6  05 93                                            str r3, [sp, #0x14]
000904f8  78 44                                            add r0, pc
000904fa  d7 f8 0c c0                                      ldr.w ip, [r7, #0xc]
000904fe  00 68                                            ldr r0, [r0]
00090500  00 68                                            ldr r0, [r0]
00090502  08 90                                            str r0, [sp, #0x20]
00090504  61 68                                            ldr r1, [r4, #4]
00090506  ca 1f                                            subs r2, r1, #7
00090508  02 2a                                            cmp r2, #2
0009050a  50 d2                                            bhs #0x905ae
0009050c  22 69                                            ldr r2, [r4, #0x10]
0009050e  00 2a                                            cmp r2, #0
00090510  4a d0                                            beq #0x905a8
00090512  00 25                                            movs r5, #0
00090514  07 29                                            cmp r1, #7
00090516  08 bf                                            it eq
00090518  25 46                                            moveq r5, r4
0009051a  bc f1 00 0f                                      cmp.w ip, #0
0009051e  4f f0 00 08                                      mov.w r8, #0
00090522  18 bf                                            it ne
00090524  65 46                                            movne r5, ip
00090526  4f f0 00 0a                                      mov.w sl, #0
0009052a  60 69                                            ldr r0, [r4, #0x14]
0009052c  a9 46                                            mov sb, r5
0009052e  05 9a                                            ldr r2, [sp, #0x14]
00090530  00 eb 08 01                                      add.w r1, r0, r8
00090534  4d 68                                            ldr r5, [r1, #4]
00090536  07 92                                            str r2, [sp, #0x1c]
00090538  50 f8 08 00                                      ldr.w r0, [r0, r8]
0009053c  40 68                                            ldr r0, [r0, #4]
0009053e  07 28                                            cmp r0, #7
00090540  03 d1                                            bne #0x9054a
00090542  04 98                                            ldr r0, [sp, #0x10]
00090544  02 68                                            ldr r2, [r0]
00090546  92 68                                            ldr r2, [r2, #8]
00090548  90 47                                            blx r2
0009054a  05 98                                            ldr r0, [sp, #0x14]
0009054c  07 a9                                            add r1, sp, #0x1c
0009054e  2b 46                                            mov r3, r5
00090550  00 28                                            cmp r0, #0
00090552  14 bf                                            ite ne
00090554  3f a2                                            adrne r2, #0xfc
00090556  40 a2                                            adreq r2, #0x100
00090558  58 46                                            mov r0, fp
0009055a  a2 f7 be e8                                      blx #0x326d8
0009055e  60 69                                            ldr r0, [r4, #0x14]
00090560  00 eb 08 01                                      add.w r1, r0, r8
00090564  09 7c                                            ldrb r1, [r1, #0x10]
00090566  c1 f3 01 11                                      ubfx r1, r1, #4, #2
0009056a  02 29                                            cmp r1, #2
0009056c  04 d0                                            beq #0x90578
0009056e  01 29                                            cmp r1, #1
00090570  14 bf                                            ite ne
00090572  ba 68                                            ldrne r2, [r7, #8]
00090574  00 22                                            moveq r2, #0
00090576  00 e0                                            b #0x9057a
00090578  01 22                                            movs r2, #1
0009057a  26 69                                            ldr r6, [r4, #0x10]
0009057c  0a f1 01 0a                                      add.w sl, sl, #1
00090580  50 f8 08 10                                      ldr.w r1, [r0, r8]
00090584  00 20                                            movs r0, #0
00090586  07 9b                                            ldr r3, [sp, #0x1c]
00090588  b2 45                                            cmp sl, r6
0009058a  08 bf                                            it eq
0009058c  01 20                                            moveq r0, #1
0009058e  cd e9 00 29                                      strd r2, sb, [sp]
00090592  5a 46                                            mov r2, fp
00090594  02 90                                            str r0, [sp, #8]
00090596  00 25                                            movs r5, #0
00090598  04 98                                            ldr r0, [sp, #0x10]
0009059a  a4 f7 c2 ea                                      blx #0x34b20
0009059e  20 69                                            ldr r0, [r4, #0x10]
000905a0  08 f1 18 08                                      add.w r8, r8, #0x18
000905a4  82 45                                            cmp sl, r0
000905a6  c0 d3                                            blo #0x9052a
000905a8  2c 48                                            ldr r0, [pc, #0xb0]
000905aa  78 44                                            add r0, pc
000905ac  40 e0                                            b #0x90630
000905ae  09 29                                            cmp r1, #9
000905b0  31 d1                                            bne #0x90616
000905b2  66 69                                            ldr r6, [r4, #0x14]
000905b4  71 68                                            ldr r1, [r6, #4]
000905b6  ca 1f                                            subs r2, r1, #7
000905b8  01 2a                                            cmp r2, #1
000905ba  2c d8                                            bhi #0x90616
000905bc  22 69                                            ldr r2, [r4, #0x10]
000905be  00 2a                                            cmp r2, #0
000905c0  f2 d0                                            beq #0x905a8
000905c2  00 25                                            movs r5, #0
000905c4  07 29                                            cmp r1, #7
000905c6  18 bf                                            it ne
000905c8  2e 46                                            movne r6, r5
000905ca  0d f1 18 08                                      add.w r8, sp, #0x18
000905ce  0f f2 7c 0a                                      addw sl, pc, #0x7c
000905d2  bc f1 00 0f                                      cmp.w ip, #0
000905d6  18 bf                                            it ne
000905d8  66 46                                            movne r6, ip
000905da  05 98                                            ldr r0, [sp, #0x14]
000905dc  41 46                                            mov r1, r8
000905de  06 90                                            str r0, [sp, #0x18]
000905e0  58 46                                            mov r0, fp
000905e2  52 46                                            mov r2, sl
000905e4  2b 46                                            mov r3, r5
000905e6  a2 f7 78 e8                                      blx #0x326d8
000905ea  d4 e9 04 01                                      ldrd r0, r1, [r4, #0x10]
000905ee  01 35                                            adds r5, #1
000905f0  ba 68                                            ldr r2, [r7, #8]
000905f2  85 42                                            cmp r5, r0
000905f4  4f f0 00 00                                      mov.w r0, #0
000905f8  06 9b                                            ldr r3, [sp, #0x18]
000905fa  08 bf                                            it eq
000905fc  01 20                                            moveq r0, #1
000905fe  cd e9 00 26                                      strd r2, r6, [sp]
00090602  5a 46                                            mov r2, fp
00090604  02 90                                            str r0, [sp, #8]
00090606  04 98                                            ldr r0, [sp, #0x10]
00090608  a4 f7 8a ea                                      blx #0x34b20
0009060c  20 69                                            ldr r0, [r4, #0x10]
0009060e  00 26                                            movs r6, #0
00090610  85 42                                            cmp r5, r0
00090612  e2 d3                                            blo #0x905da
00090614  c8 e7                                            b #0x905a8
00090616  04 98                                            ldr r0, [sp, #0x10]
00090618  39 69                                            ldr r1, [r7, #0x10]
0009061a  db f8 00 20                                      ldr.w r2, [fp]
0009061e  03 68                                            ldr r3, [r0]
00090620  1e 68                                            ldr r6, [r3]
00090622  bb 68                                            ldr r3, [r7, #8]
00090624  cd e9 00 c1                                      strd ip, r1, [sp]
00090628  21 46                                            mov r1, r4
0009062a  b0 47                                            blx r6
0009062c  0c 48                                            ldr r0, [pc, #0x30]
0009062e  78 44                                            add r0, pc
00090630  00 68                                            ldr r0, [r0]
00090632  08 99                                            ldr r1, [sp, #0x20]
00090634  00 68                                            ldr r0, [r0]
00090636  40 1a                                            subs r0, r0, r1
00090638  02 bf                                            ittt eq
0009063a  09 b0                                            addeq sp, #0x24
0009063c  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00090640  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00090642  a1 f7 0e ed                                      blx #0x32060
00090646  00 bf                                            nop
00090648  bc bf                                            itt lt
0009064a  04 00                                            movs r4, r0
0009064c  5b 25                                            movlt r5, #0x5b
0009064e  75 5d                                            ldrb r5, [r6, r5]
00090650  00 00                                            movs r0, r0
00090652  00 00                                            movs r0, r0
00090654  2e 25                                            movs r5, #0x2e
00090656  73 00                                            lsls r3, r6, #1
00090658  25 73                                            strb r5, [r4, #0xc]
0009065a  00 00                                            movs r0, r0
0009065c  0a bf                                            itet eq
0009065e  04 00                                            movs r4, r0
00090660  86 be                                            bkpt #0x86
00090662  04 00                                            movs r4, r0

; FUNCTION 0x00090664, declared_size=356, range_size=356, mode=thumb
; class-group: program_resource_visitor
; alias: _ZN24program_resource_visitor7processEP11ir_variable
; demangled: program_resource_visitor::process(ir_variable*)
; decoder-mode: thumb
00090664  f0 b5                                            push {r4, r5, r6, r7, lr}
00090666  03 af                                            add r7, sp, #0xc
00090668  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0009066c  87 b0                                            sub sp, #0x1c
0009066e  80 46                                            mov r8, r0
00090670  4e 48                                            ldr r0, [pc, #0x138]
00090672  0d 46                                            mov r5, r1
00090674  78 44                                            add r0, pc
00090676  00 68                                            ldr r0, [r0]
00090678  00 68                                            ldr r0, [r0]
0009067a  06 90                                            str r0, [sp, #0x18]
0009067c  a8 69                                            ldr r0, [r5, #0x18]
0009067e  d5 f8 10 90                                      ldr.w sb, [r5, #0x10]
00090682  00 f0 40 6a                                      and sl, r0, #0xc000000
00090686  10 f0 00 5f                                      tst.w r0, #0x20000000
0009068a  0d d1                                            bne #0x906a8
0009068c  c0 00                                            lsls r0, r0, #3
0009068e  3f d4                                            bmi #0x90710
00090690  d9 f8 04 00                                      ldr.w r0, [sb, #4]
00090694  09 28                                            cmp r0, #9
00090696  01 46                                            mov r1, r0
00090698  04 bf                                            itt eq
0009069a  d9 f8 14 10                                      ldreq.w r1, [sb, #0x14]
0009069e  49 68                                            ldreq r1, [r1, #4]
000906a0  07 29                                            cmp r1, #7
000906a2  3e d1                                            bne #0x90722
000906a4  69 69                                            ldr r1, [r5, #0x14]
000906a6  49 e0                                            b #0x9073c
000906a8  28 6c                                            ldr r0, [r5, #0x40]
000906aa  c1 68                                            ldr r1, [r0, #0xc]
000906ac  00 20                                            movs r0, #0
000906ae  a1 f7 d2 ef                                      blx #0x32654
000906b2  06 46                                            mov r6, r0
000906b4  05 96                                            str r6, [sp, #0x14]
000906b6  a1 f7 56 ec                                      blx #0x31f64
000906ba  01 46                                            mov r1, r0
000906bc  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
000906c0  20 b3                                            cbz r0, #0x9070c
000906c2  c3 46                                            mov fp, r8
000906c4  4f f0 00 08                                      mov.w r8, #0
000906c8  04 91                                            str r1, [sp, #0x10]
000906ca  05 ac                                            add r4, sp, #0x14
000906cc  68 69                                            ldr r0, [r5, #0x14]
000906ce  0e 46                                            mov r6, r1
000906d0  04 a9                                            add r1, sp, #0x10
000906d2  37 a2                                            adr r2, #0xdc
000906d4  00 90                                            str r0, [sp]
000906d6  20 46                                            mov r0, r4
000906d8  43 46                                            mov r3, r8
000906da  a1 f7 fe ef                                      blx #0x326d8
000906de  00 20                                            movs r0, #0
000906e0  29 69                                            ldr r1, [r5, #0x10]
000906e2  04 9b                                            ldr r3, [sp, #0x10]
000906e4  9a f0 00 6f                                      teq.w sl, #0x8000000
000906e8  08 bf                                            it eq
000906ea  01 20                                            moveq r0, #1
000906ec  22 46                                            mov r2, r4
000906ee  00 90                                            str r0, [sp]
000906f0  00 20                                            movs r0, #0
000906f2  cd e9 01 00                                      strd r0, r0, [sp, #4]
000906f6  58 46                                            mov r0, fp
000906f8  a4 f7 12 ea                                      blx #0x34b20
000906fc  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00090700  08 f1 01 08                                      add.w r8, r8, #1
00090704  31 46                                            mov r1, r6
00090706  80 45                                            cmp r8, r0
00090708  de d3                                            blo #0x906c8
0009070a  05 9e                                            ldr r6, [sp, #0x14]
0009070c  30 46                                            mov r0, r6
0009070e  2c e0                                            b #0x9076a
00090710  28 6c                                            ldr r0, [r5, #0x40]
00090712  29 a1                                            adr r1, #0xa4
00090714  6b 69                                            ldr r3, [r5, #0x14]
00090716  00 26                                            movs r6, #0
00090718  c2 68                                            ldr r2, [r0, #0xc]
0009071a  00 20                                            movs r0, #0
0009071c  a2 f7 48 e8                                      blx #0x327b0
00090720  10 e0                                            b #0x90744
00090722  09 28                                            cmp r0, #9
00090724  04 d0                                            beq #0x90730
00090726  08 28                                            cmp r0, #8
00090728  2e d1                                            bne #0x90788
0009072a  d9 f8 0c 10                                      ldr.w r1, [sb, #0xc]
0009072e  05 e0                                            b #0x9073c
00090730  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
00090734  41 68                                            ldr r1, [r0, #4]
00090736  08 29                                            cmp r1, #8
00090738  26 d1                                            bne #0x90788
0009073a  c1 68                                            ldr r1, [r0, #0xc]
0009073c  00 20                                            movs r0, #0
0009073e  00 26                                            movs r6, #0
00090740  a1 f7 88 ef                                      blx #0x32654
00090744  05 90                                            str r0, [sp, #0x14]
00090746  2c 69                                            ldr r4, [r5, #0x10]
00090748  a1 f7 0c ec                                      blx #0x31f64
0009074c  03 46                                            mov r3, r0
0009074e  00 20                                            movs r0, #0
00090750  9a f0 00 6f                                      teq.w sl, #0x8000000
00090754  08 bf                                            it eq
00090756  01 20                                            moveq r0, #1
00090758  05 aa                                            add r2, sp, #0x14
0009075a  cd e9 00 06                                      strd r0, r6, [sp]
0009075e  40 46                                            mov r0, r8
00090760  21 46                                            mov r1, r4
00090762  02 96                                            str r6, [sp, #8]
00090764  a4 f7 dc e9                                      blx #0x34b20
00090768  05 98                                            ldr r0, [sp, #0x14]
0009076a  a1 f7 bc ef                                      blx #0x326e4
0009076e  15 48                                            ldr r0, [pc, #0x54]
00090770  78 44                                            add r0, pc
00090772  00 68                                            ldr r0, [r0]
00090774  06 99                                            ldr r1, [sp, #0x18]
00090776  00 68                                            ldr r0, [r0]
00090778  40 1a                                            subs r0, r0, r1
0009077a  02 bf                                            ittt eq
0009077c  07 b0                                            addeq sp, #0x1c
0009077e  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00090782  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00090784  a1 f7 6c ec                                      blx #0x32060
00090788  d8 f8 00 00                                      ldr.w r0, [r8]
0009078c  00 23                                            movs r3, #0
0009078e  6a 69                                            ldr r2, [r5, #0x14]
00090790  9a f0 00 6f                                      teq.w sl, #0x8000000
00090794  49 46                                            mov r1, sb
00090796  06 68                                            ldr r6, [r0]
00090798  40 46                                            mov r0, r8
0009079a  cd e9 00 33                                      strd r3, r3, [sp]
0009079e  08 bf                                            it eq
000907a0  01 23                                            moveq r3, #1
000907a2  b0 47                                            blx r6
000907a4  06 48                                            ldr r0, [pc, #0x18]
000907a6  78 44                                            add r0, pc
000907a8  e3 e7                                            b #0x90772
000907aa  00 bf                                            nop
000907ac  40 be                                            bkpt #0x40
000907ae  04 00                                            movs r4, r0
000907b0  5b 25                                            movs r5, #0x5b
000907b2  75 5d                                            ldrb r5, [r6, r5]
000907b4  2e 25                                            movs r5, #0x2e
000907b6  73 00                                            lsls r3, r6, #1
000907b8  25 73                                            strb r5, [r4, #0xc]
000907ba  2e 25                                            movs r5, #0x2e
000907bc  73 00                                            lsls r3, r6, #1
000907be  00 00                                            movs r0, r0
000907c0  0e bd                                            pop {r1, r2, r3, pc}
000907c2  04 00                                            movs r4, r0
000907c4  44 bd                                            pop {r2, r6, pc}
000907c6  04 00                                            movs r4, r0

; FUNCTION 0x000907c8, declared_size=10, range_size=10, mode=thumb
; class-group: program_resource_visitor
; alias: _ZN24program_resource_visitor11visit_fieldEPK9glsl_typePKcbS2_b
; demangled: program_resource_visitor::visit_field(glsl_type const*, char const*, bool, glsl_type const*, bool)
; decoder-mode: thumb
000907c8  d0 f8 00 c0                                      ldr.w ip, [r0]
000907cc  dc f8 04 c0                                      ldr.w ip, [ip, #4]
000907d0  60 47                                            bx ip

; FUNCTION 0x000907d2, declared_size=2, range_size=2, mode=thumb
; class-group: program_resource_visitor
; alias: _ZN24program_resource_visitor11visit_fieldEPK17glsl_struct_field
; demangled: program_resource_visitor::visit_field(glsl_struct_field const*)
; decoder-mode: thumb
000907d2  70 47                                            bx lr
