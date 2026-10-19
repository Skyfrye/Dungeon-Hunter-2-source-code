; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00092418, declared_size=42, range_size=42, mode=thumb
; class-group: tfeedback_candidate_generator
; alias: _ZN29tfeedback_candidate_generator7processEP11ir_variable
; demangled: tfeedback_candidate_generator::process(ir_variable*)
; decoder-mode: thumb
00092418  00 22                                            movs r2, #0
0009241a  c0 e9 03 12                                      strd r1, r2, [r0, #0xc]
0009241e  0a 69                                            ldr r2, [r1, #0x10]
00092420  d1 f8 40 c0                                      ldr.w ip, [r1, #0x40]
00092424  62 45                                            cmp r2, ip
00092426  07 d0                                            beq #0x92438
00092428  53 68                                            ldr r3, [r2, #4]
0009242a  09 2b                                            cmp r3, #9
0009242c  04 bf                                            itt eq
0009242e  52 69                                            ldreq r2, [r2, #0x14]
00092430  62 45                                            cmpeq r2, ip
00092432  01 d0                                            beq #0x92438
00092434  1e f0 f8 bc                                      b.w #0xb0e28
00092438  dc f8 0c 20                                      ldr.w r2, [ip, #0xc]
0009243c  61 46                                            mov r1, ip
0009243e  1e f0 fb bc                                      b.w #0xb0e38

; FUNCTION 0x00092718, declared_size=72, range_size=72, mode=thumb
; class-group: tfeedback_candidate_generator
; alias: _ZN29tfeedback_candidate_generator11visit_fieldEPK9glsl_typePKcb
; demangled: tfeedback_candidate_generator::visit_field(glsl_type const*, char const*, bool)
; decoder-mode: thumb
00092718  f0 b5                                            push {r4, r5, r6, r7, lr}
0009271a  03 af                                            add r7, sp, #0xc
0009271c  2d e9 00 0b                                      push.w {r8, sb, fp}
00092720  04 46                                            mov r4, r0
00092722  89 46                                            mov sb, r1
00092724  60 68                                            ldr r0, [r4, #4]
00092726  0c 21                                            movs r1, #0xc
00092728  90 46                                            mov r8, r2
0009272a  a0 f7 f2 ef                                      blx #0x33710
0009272e  05 46                                            mov r5, r0
00092730  e0 68                                            ldr r0, [r4, #0xc]
00092732  c5 e9 00 09                                      strd r0, sb, [r5]
00092736  41 46                                            mov r1, r8
00092738  20 69                                            ldr r0, [r4, #0x10]
0009273a  a8 60                                            str r0, [r5, #8]
0009273c  d4 e9 01 06                                      ldrd r0, r6, [r4, #4]
00092740  9f f7 88 ef                                      blx #0x32654
00092744  02 46                                            mov r2, r0
00092746  30 46                                            mov r0, r6
00092748  29 46                                            mov r1, r5
0009274a  a0 f7 08 e8                                      blx #0x3275c
0009274e  48 46                                            mov r0, sb
00092750  a1 f7 06 ea                                      blx #0x33b60
00092754  21 69                                            ldr r1, [r4, #0x10]
00092756  08 44                                            add r0, r1
00092758  20 61                                            str r0, [r4, #0x10]
0009275a  bd e8 00 0b                                      pop.w {r8, sb, fp}
0009275e  f0 bd                                            pop {r4, r5, r6, r7, pc}
