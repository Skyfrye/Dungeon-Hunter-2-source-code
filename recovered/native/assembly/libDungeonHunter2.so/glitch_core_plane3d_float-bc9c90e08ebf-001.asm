; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034033c, declared_size=360, range_size=360, mode=arm
; class-group: glitch::core::plane3d<float>
; alias: _ZNK6glitch4core7plane3dIfE23getIntersectionWithLineERKNS0_8vector3dIfEES6_RS4_
; demangled: glitch::core::plane3d<float>::getIntersectionWithLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
0034033c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00340340  01 50 a0 e1                                      mov r5, r1
00340344  00 60 92 e5                                      ldr r6, [r2]
00340348  04 10 92 e5                                      ldr r1, [r2, #4]
0034034c  00 80 90 e5                                      ldr r8, [r0]
00340350  14 d0 4d e2                                      sub sp, sp, #0x14
00340354  04 70 90 e5                                      ldr r7, [r0, #4]
00340358  00 40 a0 e1                                      mov r4, r0
0034035c  08 10 8d e5                                      str r1, [sp, #8]
00340360  08 00 a0 e1                                      mov r0, r8
00340364  06 10 a0 e1                                      mov r1, r6
00340368  08 90 92 e5                                      ldr sb, [r2, #8]
0034036c  03 a0 a0 e1                                      mov sl, r3
00340370  7d 3a ff eb                                      bl #0x30ed6c
00340374  08 10 9d e5                                      ldr r1, [sp, #8]
00340378  00 b0 a0 e1                                      mov fp, r0
0034037c  07 00 a0 e1                                      mov r0, r7
00340380  79 3a ff eb                                      bl #0x30ed6c
00340384  00 10 a0 e1                                      mov r1, r0
00340388  0b 00 a0 e1                                      mov r0, fp
0034038c  04 3a ff eb                                      bl #0x30eba4
00340390  08 b0 94 e5                                      ldr fp, [r4, #8]
00340394  00 30 a0 e1                                      mov r3, r0
00340398  09 10 a0 e1                                      mov r1, sb
0034039c  0b 00 a0 e1                                      mov r0, fp
003403a0  00 30 8d e5                                      str r3, [sp]
003403a4  70 3a ff eb                                      bl #0x30ed6c
003403a8  00 30 9d e5                                      ldr r3, [sp]
003403ac  00 10 a0 e1                                      mov r1, r0
003403b0  03 00 a0 e1                                      mov r0, r3
003403b4  fa 39 ff eb                                      bl #0x30eba4
003403b8  00 10 a0 e3                                      mov r1, #0
003403bc  0c 00 8d e5                                      str r0, [sp, #0xc]
003403c0  f1 36 ff eb                                      bl #0x30df8c
003403c4  00 00 50 e3                                      cmp r0, #0
003403c8  00 00 a0 13                                      movne r0, #0
003403cc  32 00 00 1a                                      bne #0x34049c
003403d0  00 30 95 e5                                      ldr r3, [r5]
003403d4  08 00 a0 e1                                      mov r0, r8
003403d8  04 80 95 e5                                      ldr r8, [r5, #4]
003403dc  03 10 a0 e1                                      mov r1, r3
003403e0  00 30 8d e5                                      str r3, [sp]
003403e4  60 3a ff eb                                      bl #0x30ed6c
003403e8  08 10 a0 e1                                      mov r1, r8
003403ec  00 20 a0 e1                                      mov r2, r0
003403f0  07 00 a0 e1                                      mov r0, r7
003403f4  08 50 95 e5                                      ldr r5, [r5, #8]
003403f8  04 20 8d e5                                      str r2, [sp, #4]
003403fc  5a 3a ff eb                                      bl #0x30ed6c
00340400  04 20 9d e5                                      ldr r2, [sp, #4]
00340404  00 10 a0 e1                                      mov r1, r0
00340408  02 00 a0 e1                                      mov r0, r2
0034040c  e4 39 ff eb                                      bl #0x30eba4
00340410  05 10 a0 e1                                      mov r1, r5
00340414  00 70 a0 e1                                      mov r7, r0
00340418  0b 00 a0 e1                                      mov r0, fp
0034041c  52 3a ff eb                                      bl #0x30ed6c
00340420  00 10 a0 e1                                      mov r1, r0
00340424  07 00 a0 e1                                      mov r0, r7
00340428  dd 39 ff eb                                      bl #0x30eba4
0034042c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00340430  db 39 ff eb                                      bl #0x30eba4
00340434  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00340438  02 01 80 e2                                      add r0, r0, #0x80000000
0034043c  14 3a ff eb                                      bl #0x30ec94
00340440  06 10 a0 e1                                      mov r1, r6
00340444  00 40 a0 e1                                      mov r4, r0
00340448  47 3a ff eb                                      bl #0x30ed6c
0034044c  00 30 9d e5                                      ldr r3, [sp]
00340450  00 10 a0 e1                                      mov r1, r0
00340454  03 00 a0 e1                                      mov r0, r3
00340458  d1 39 ff eb                                      bl #0x30eba4
0034045c  00 00 8a e5                                      str r0, [sl]
00340460  08 10 9d e5                                      ldr r1, [sp, #8]
00340464  04 00 a0 e1                                      mov r0, r4
00340468  3f 3a ff eb                                      bl #0x30ed6c
0034046c  00 10 a0 e1                                      mov r1, r0
00340470  08 00 a0 e1                                      mov r0, r8
00340474  ca 39 ff eb                                      bl #0x30eba4
00340478  09 10 a0 e1                                      mov r1, sb
0034047c  04 00 8a e5                                      str r0, [sl, #4]
00340480  04 00 a0 e1                                      mov r0, r4
00340484  38 3a ff eb                                      bl #0x30ed6c
00340488  00 10 a0 e1                                      mov r1, r0
0034048c  05 00 a0 e1                                      mov r0, r5
00340490  c3 39 ff eb                                      bl #0x30eba4
00340494  08 00 8a e5                                      str r0, [sl, #8]
00340498  01 00 a0 e3                                      mov r0, #1
0034049c  14 d0 8d e2                                      add sp, sp, #0x14
003404a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00341260, declared_size=888, range_size=888, mode=arm
; class-group: glitch::core::plane3d<float>
; alias: _ZNK6glitch4core7plane3dIfE24getIntersectionWithPlaneERKS2_RNS0_8vector3dIfEES7_
; demangled: glitch::core::plane3d<float>::getIntersectionWithPlane(glitch::core::plane3d<float> const&, glitch::core::vector3d<float>&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
00341260  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00341264  00 40 a0 e1                                      mov r4, r0
00341268  00 00 90 e5                                      ldr r0, [r0]
0034126c  2c d0 4d e2                                      sub sp, sp, #0x2c
00341270  01 50 a0 e1                                      mov r5, r1
00341274  00 10 a0 e1                                      mov r1, r0
00341278  02 a0 a0 e1                                      mov sl, r2
0034127c  03 70 a0 e1                                      mov r7, r3
00341280  b9 36 ff eb                                      bl #0x30ed6c
00341284  04 60 94 e5                                      ldr r6, [r4, #4]
00341288  00 80 a0 e1                                      mov r8, r0
0034128c  06 10 a0 e1                                      mov r1, r6
00341290  06 00 a0 e1                                      mov r0, r6
00341294  b4 36 ff eb                                      bl #0x30ed6c
00341298  00 10 a0 e1                                      mov r1, r0
0034129c  08 00 a0 e1                                      mov r0, r8
003412a0  3f 36 ff eb                                      bl #0x30eba4
003412a4  08 80 94 e5                                      ldr r8, [r4, #8]
003412a8  00 60 a0 e1                                      mov r6, r0
003412ac  08 10 a0 e1                                      mov r1, r8
003412b0  08 00 a0 e1                                      mov r0, r8
003412b4  ac 36 ff eb                                      bl #0x30ed6c
003412b8  00 10 a0 e1                                      mov r1, r0
003412bc  06 00 a0 e1                                      mov r0, r6
003412c0  37 36 ff eb                                      bl #0x30eba4
003412c4  76 35 ff eb                                      bl #0x30e8a4
003412c8  bc 33 ff eb                                      bl #0x30e1c0
003412cc  f3 34 ff eb                                      bl #0x30e6a0
003412d0  14 00 8d e5                                      str r0, [sp, #0x14]
003412d4  00 b0 95 e5                                      ldr fp, [r5]
003412d8  00 10 94 e5                                      ldr r1, [r4]
003412dc  04 90 95 e5                                      ldr sb, [r5, #4]
003412e0  0b 00 a0 e1                                      mov r0, fp
003412e4  a0 36 ff eb                                      bl #0x30ed6c
003412e8  04 10 94 e5                                      ldr r1, [r4, #4]
003412ec  00 60 a0 e1                                      mov r6, r0
003412f0  09 00 a0 e1                                      mov r0, sb
003412f4  9c 36 ff eb                                      bl #0x30ed6c
003412f8  00 10 a0 e1                                      mov r1, r0
003412fc  06 00 a0 e1                                      mov r0, r6
00341300  27 36 ff eb                                      bl #0x30eba4
00341304  08 80 95 e5                                      ldr r8, [r5, #8]
00341308  00 60 a0 e1                                      mov r6, r0
0034130c  08 10 94 e5                                      ldr r1, [r4, #8]
00341310  08 00 a0 e1                                      mov r0, r8
00341314  94 36 ff eb                                      bl #0x30ed6c
00341318  00 10 a0 e1                                      mov r1, r0
0034131c  06 00 a0 e1                                      mov r0, r6
00341320  1f 36 ff eb                                      bl #0x30eba4
00341324  0b 10 a0 e1                                      mov r1, fp
00341328  00 60 a0 e1                                      mov r6, r0
0034132c  0b 00 a0 e1                                      mov r0, fp
00341330  8d 36 ff eb                                      bl #0x30ed6c
00341334  09 10 a0 e1                                      mov r1, sb
00341338  00 b0 a0 e1                                      mov fp, r0
0034133c  09 00 a0 e1                                      mov r0, sb
00341340  89 36 ff eb                                      bl #0x30ed6c
00341344  00 10 a0 e1                                      mov r1, r0
00341348  0b 00 a0 e1                                      mov r0, fp
0034134c  14 36 ff eb                                      bl #0x30eba4
00341350  08 10 a0 e1                                      mov r1, r8
00341354  00 90 a0 e1                                      mov sb, r0
00341358  08 00 a0 e1                                      mov r0, r8
0034135c  82 36 ff eb                                      bl #0x30ed6c
00341360  00 10 a0 e1                                      mov r1, r0
00341364  09 00 a0 e1                                      mov r0, sb
00341368  0d 36 ff eb                                      bl #0x30eba4
0034136c  4c 35 ff eb                                      bl #0x30e8a4
00341370  92 33 ff eb                                      bl #0x30e1c0
00341374  c9 34 ff eb                                      bl #0x30e6a0
00341378  00 b0 a0 e1                                      mov fp, r0
0034137c  0b 10 a0 e1                                      mov r1, fp
00341380  14 00 9d e5                                      ldr r0, [sp, #0x14]
00341384  78 36 ff eb                                      bl #0x30ed6c
00341388  06 10 a0 e1                                      mov r1, r6
0034138c  00 80 a0 e1                                      mov r8, r0
00341390  06 00 a0 e1                                      mov r0, r6
00341394  74 36 ff eb                                      bl #0x30ed6c
00341398  00 10 a0 e1                                      mov r1, r0
0034139c  08 00 a0 e1                                      mov r0, r8
003413a0  01 34 ff eb                                      bl #0x30e3ac
003413a4  3e 35 ff eb                                      bl #0x30e8a4
003413a8  3a 2c 08 e3                                      movw r2, #0x8c3a
003413ac  8e 39 07 e3                                      movw r3, #0x798e
003413b0  01 90 a0 e1                                      mov sb, r1
003413b4  30 22 4e e3                                      movt r2, #0xe230
003413b8  02 11 c1 e3                                      bic r1, r1, #0x80000000
003413bc  45 3e 43 e3                                      movt r3, #0x3e45
003413c0  00 80 a0 e1                                      mov r8, r0
003413c4  e5 34 ff eb                                      bl #0x30e760
003413c8  00 00 50 e3                                      cmp r0, #0
003413cc  00 00 a0 13                                      movne r0, #0
003413d0  7e 00 00 1a                                      bne #0x3415d0
003413d4  ff 15 a0 e3                                      mov r1, #0x3fc00000
003413d8  08 20 a0 e1                                      mov r2, r8
003413dc  09 30 a0 e1                                      mov r3, sb
003413e0  00 00 a0 e3                                      mov r0, #0
003413e4  03 16 81 e2                                      add r1, r1, #0x300000
003413e8  d4 33 ff eb                                      bl #0x30e340
003413ec  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
003413f0  04 30 94 e5                                      ldr r3, [r4, #4]
003413f4  08 90 95 e5                                      ldr sb, [r5, #8]
003413f8  04 20 95 e5                                      ldr r2, [r5, #4]
003413fc  02 01 83 e2                                      add r0, r3, #0x80000000
00341400  09 10 a0 e1                                      mov r1, sb
00341404  04 30 8d e5                                      str r3, [sp, #4]
00341408  18 20 8d e5                                      str r2, [sp, #0x18]
0034140c  56 36 ff eb                                      bl #0x30ed6c
00341410  18 10 9d e5                                      ldr r1, [sp, #0x18]
00341414  00 80 a0 e1                                      mov r8, r0
00341418  08 00 94 e5                                      ldr r0, [r4, #8]
0034141c  52 36 ff eb                                      bl #0x30ed6c
00341420  00 10 a0 e1                                      mov r1, r0
00341424  08 00 a0 e1                                      mov r0, r8
00341428  dd 35 ff eb                                      bl #0x30eba4
0034142c  08 c0 94 e5                                      ldr ip, [r4, #8]
00341430  00 20 95 e5                                      ldr r2, [r5]
00341434  02 11 8c e2                                      add r1, ip, #0x80000000
00341438  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0034143c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00341440  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00341444  10 c0 8d e5                                      str ip, [sp, #0x10]
00341448  00 80 94 e5                                      ldr r8, [r4]
0034144c  00 00 87 e5                                      str r0, [r7]
00341450  01 00 a0 e1                                      mov r0, r1
00341454  02 10 a0 e1                                      mov r1, r2
00341458  08 20 8d e5                                      str r2, [sp, #8]
0034145c  42 36 ff eb                                      bl #0x30ed6c
00341460  08 10 a0 e1                                      mov r1, r8
00341464  00 c0 a0 e1                                      mov ip, r0
00341468  09 00 a0 e1                                      mov r0, sb
0034146c  0c c0 8d e5                                      str ip, [sp, #0xc]
00341470  3d 36 ff eb                                      bl #0x30ed6c
00341474  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00341478  00 10 a0 e1                                      mov r1, r0
0034147c  0c 00 a0 e1                                      mov r0, ip
00341480  c7 35 ff eb                                      bl #0x30eba4
00341484  04 00 87 e5                                      str r0, [r7, #4]
00341488  02 11 88 e2                                      add r1, r8, #0x80000000
0034148c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00341490  35 36 ff eb                                      bl #0x30ed6c
00341494  04 30 9d e5                                      ldr r3, [sp, #4]
00341498  08 20 9d e5                                      ldr r2, [sp, #8]
0034149c  00 80 a0 e1                                      mov r8, r0
003414a0  03 00 a0 e1                                      mov r0, r3
003414a4  02 10 a0 e1                                      mov r1, r2
003414a8  2f 36 ff eb                                      bl #0x30ed6c
003414ac  00 10 a0 e1                                      mov r1, r0
003414b0  08 00 a0 e1                                      mov r0, r8
003414b4  ba 35 ff eb                                      bl #0x30eba4
003414b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003414bc  0b 10 a0 e1                                      mov r1, fp
003414c0  08 00 87 e5                                      str r0, [r7, #8]
003414c4  02 31 82 e2                                      add r3, r2, #0x80000000
003414c8  03 00 a0 e1                                      mov r0, r3
003414cc  26 36 ff eb                                      bl #0x30ed6c
003414d0  06 10 a0 e1                                      mov r1, r6
003414d4  00 70 a0 e1                                      mov r7, r0
003414d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
003414dc  22 36 ff eb                                      bl #0x30ed6c
003414e0  00 10 a0 e1                                      mov r1, r0
003414e4  07 00 a0 e1                                      mov r0, r7
003414e8  ad 35 ff eb                                      bl #0x30eba4
003414ec  ec 34 ff eb                                      bl #0x30e8a4
003414f0  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
003414f4  6e 35 ff eb                                      bl #0x30eab4
003414f8  68 34 ff eb                                      bl #0x30e6a0
003414fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
00341500  00 70 a0 e1                                      mov r7, r0
00341504  14 10 9d e5                                      ldr r1, [sp, #0x14]
00341508  02 01 83 e2                                      add r0, r3, #0x80000000
0034150c  16 36 ff eb                                      bl #0x30ed6c
00341510  06 10 a0 e1                                      mov r1, r6
00341514  00 80 a0 e1                                      mov r8, r0
00341518  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0034151c  12 36 ff eb                                      bl #0x30ed6c
00341520  00 10 a0 e1                                      mov r1, r0
00341524  08 00 a0 e1                                      mov r0, r8
00341528  9d 35 ff eb                                      bl #0x30eba4
0034152c  dc 34 ff eb                                      bl #0x30e8a4
00341530  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
00341534  5e 35 ff eb                                      bl #0x30eab4
00341538  58 34 ff eb                                      bl #0x30e6a0
0034153c  04 10 94 e5                                      ldr r1, [r4, #4]
00341540  00 60 a0 e1                                      mov r6, r0
00341544  07 00 a0 e1                                      mov r0, r7
00341548  07 36 ff eb                                      bl #0x30ed6c
0034154c  04 10 95 e5                                      ldr r1, [r5, #4]
00341550  00 80 a0 e1                                      mov r8, r0
00341554  06 00 a0 e1                                      mov r0, r6
00341558  03 36 ff eb                                      bl #0x30ed6c
0034155c  00 10 a0 e1                                      mov r1, r0
00341560  08 00 a0 e1                                      mov r0, r8
00341564  8e 35 ff eb                                      bl #0x30eba4
00341568  08 10 94 e5                                      ldr r1, [r4, #8]
0034156c  00 80 a0 e1                                      mov r8, r0
00341570  07 00 a0 e1                                      mov r0, r7
00341574  fc 35 ff eb                                      bl #0x30ed6c
00341578  08 10 95 e5                                      ldr r1, [r5, #8]
0034157c  00 90 a0 e1                                      mov sb, r0
00341580  06 00 a0 e1                                      mov r0, r6
00341584  f8 35 ff eb                                      bl #0x30ed6c
00341588  00 10 a0 e1                                      mov r1, r0
0034158c  09 00 a0 e1                                      mov r0, sb
00341590  83 35 ff eb                                      bl #0x30eba4
00341594  00 10 94 e5                                      ldr r1, [r4]
00341598  00 90 a0 e1                                      mov sb, r0
0034159c  07 00 a0 e1                                      mov r0, r7
003415a0  f1 35 ff eb                                      bl #0x30ed6c
003415a4  00 10 95 e5                                      ldr r1, [r5]
003415a8  00 40 a0 e1                                      mov r4, r0
003415ac  06 00 a0 e1                                      mov r0, r6
003415b0  ed 35 ff eb                                      bl #0x30ed6c
003415b4  00 10 a0 e1                                      mov r1, r0
003415b8  04 00 a0 e1                                      mov r0, r4
003415bc  78 35 ff eb                                      bl #0x30eba4
003415c0  00 00 8a e5                                      str r0, [sl]
003415c4  08 90 8a e5                                      str sb, [sl, #8]
003415c8  04 80 8a e5                                      str r8, [sl, #4]
003415cc  01 00 a0 e3                                      mov r0, #1
003415d0  2c d0 8d e2                                      add sp, sp, #0x2c
003415d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x003415d8, declared_size=100, range_size=100, mode=arm
; class-group: glitch::core::plane3d<float>
; alias: _ZNK6glitch4core7plane3dIfE25getIntersectionWithPlanesERKS2_S4_RNS0_8vector3dIfEE
; demangled: glitch::core::plane3d<float>::getIntersectionWithPlanes(glitch::core::plane3d<float> const&, glitch::core::plane3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
003415d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003415dc  1c d0 4d e2                                      sub sp, sp, #0x1c
003415e0  0c 50 8d e2                                      add r5, sp, #0xc
003415e4  00 c0 a0 e3                                      mov ip, #0
003415e8  02 70 a0 e1                                      mov r7, r2
003415ec  03 60 a0 e1                                      mov r6, r3
003415f0  05 20 a0 e1                                      mov r2, r5
003415f4  0d 30 a0 e1                                      mov r3, sp
003415f8  08 c0 8d e5                                      str ip, [sp, #8]
003415fc  0c c0 8d e5                                      str ip, [sp, #0xc]
00341600  10 c0 8d e5                                      str ip, [sp, #0x10]
00341604  14 c0 8d e5                                      str ip, [sp, #0x14]
00341608  00 c0 8d e5                                      str ip, [sp]
0034160c  04 c0 8d e5                                      str ip, [sp, #4]
00341610  12 ff ff eb                                      bl #0x341260
00341614  00 00 50 e3                                      cmp r0, #0
00341618  0d 40 a0 e1                                      mov r4, sp
0034161c  04 00 00 0a                                      beq #0x341634
00341620  07 00 a0 e1                                      mov r0, r7
00341624  05 10 a0 e1                                      mov r1, r5
00341628  0d 20 a0 e1                                      mov r2, sp
0034162c  06 30 a0 e1                                      mov r3, r6
00341630  41 fb ff eb                                      bl #0x34033c
00341634  1c d0 8d e2                                      add sp, sp, #0x1c
00341638  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0040f0b4, declared_size=572, range_size=572, mode=arm
; class-group: glitch::core::plane3d<float>
; alias: _ZNK6glitch4core7plane3dIfE30getIntersectionWithLimitedLineERKNS0_8vector3dIfEES6_RS4_
; demangled: glitch::core::plane3d<float>::getIntersectionWithLimitedLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
0040f0b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040f0b8  01 40 a0 e1                                      mov r4, r1
0040f0bc  1c d0 4d e2                                      sub sp, sp, #0x1c
0040f0c0  04 10 91 e5                                      ldr r1, [r1, #4]
0040f0c4  00 a0 a0 e1                                      mov sl, r0
0040f0c8  04 00 92 e5                                      ldr r0, [r2, #4]
0040f0cc  02 50 a0 e1                                      mov r5, r2
0040f0d0  03 60 a0 e1                                      mov r6, r3
0040f0d4  b4 fc fb eb                                      bl #0x30e3ac
0040f0d8  08 10 94 e5                                      ldr r1, [r4, #8]
0040f0dc  00 70 a0 e1                                      mov r7, r0
0040f0e0  08 00 95 e5                                      ldr r0, [r5, #8]
0040f0e4  b0 fc fb eb                                      bl #0x30e3ac
0040f0e8  00 10 94 e5                                      ldr r1, [r4]
0040f0ec  00 80 a0 e1                                      mov r8, r0
0040f0f0  00 00 95 e5                                      ldr r0, [r5]
0040f0f4  ac fc fb eb                                      bl #0x30e3ac
0040f0f8  04 10 a0 e1                                      mov r1, r4
0040f0fc  0c 00 8d e5                                      str r0, [sp, #0xc]
0040f100  0c 20 8d e2                                      add r2, sp, #0xc
0040f104  0a 00 a0 e1                                      mov r0, sl
0040f108  06 30 a0 e1                                      mov r3, r6
0040f10c  10 70 8d e5                                      str r7, [sp, #0x10]
0040f110  14 80 8d e5                                      str r8, [sp, #0x14]
0040f114  88 c4 fc eb                                      bl #0x34033c
0040f118  00 00 50 e3                                      cmp r0, #0
0040f11c  4b 00 00 0a                                      beq #0x40f250
0040f120  00 30 95 e5                                      ldr r3, [r5]
0040f124  00 80 94 e5                                      ldr r8, [r4]
0040f128  03 00 a0 e1                                      mov r0, r3
0040f12c  08 10 a0 e1                                      mov r1, r8
0040f130  00 30 8d e5                                      str r3, [sp]
0040f134  9c fc fb eb                                      bl #0x30e3ac
0040f138  04 20 95 e5                                      ldr r2, [r5, #4]
0040f13c  04 70 94 e5                                      ldr r7, [r4, #4]
0040f140  00 90 a0 e1                                      mov sb, r0
0040f144  02 00 a0 e1                                      mov r0, r2
0040f148  07 10 a0 e1                                      mov r1, r7
0040f14c  04 20 8d e5                                      str r2, [sp, #4]
0040f150  95 fc fb eb                                      bl #0x30e3ac
0040f154  08 40 94 e5                                      ldr r4, [r4, #8]
0040f158  08 b0 95 e5                                      ldr fp, [r5, #8]
0040f15c  00 a0 a0 e1                                      mov sl, r0
0040f160  04 10 a0 e1                                      mov r1, r4
0040f164  0b 00 a0 e1                                      mov r0, fp
0040f168  8f fc fb eb                                      bl #0x30e3ac
0040f16c  09 10 a0 e1                                      mov r1, sb
0040f170  00 50 a0 e1                                      mov r5, r0
0040f174  09 00 a0 e1                                      mov r0, sb
0040f178  fb fe fb eb                                      bl #0x30ed6c
0040f17c  0a 10 a0 e1                                      mov r1, sl
0040f180  00 90 a0 e1                                      mov sb, r0
0040f184  0a 00 a0 e1                                      mov r0, sl
0040f188  f7 fe fb eb                                      bl #0x30ed6c
0040f18c  00 10 a0 e1                                      mov r1, r0
0040f190  09 00 a0 e1                                      mov r0, sb
0040f194  82 fe fb eb                                      bl #0x30eba4
0040f198  05 10 a0 e1                                      mov r1, r5
0040f19c  00 a0 a0 e1                                      mov sl, r0
0040f1a0  05 00 a0 e1                                      mov r0, r5
0040f1a4  f0 fe fb eb                                      bl #0x30ed6c
0040f1a8  00 10 a0 e1                                      mov r1, r0
0040f1ac  0a 00 a0 e1                                      mov r0, sl
0040f1b0  7b fe fb eb                                      bl #0x30eba4
0040f1b4  00 a0 96 e5                                      ldr sl, [r6]
0040f1b8  08 10 a0 e1                                      mov r1, r8
0040f1bc  00 50 a0 e1                                      mov r5, r0
0040f1c0  0a 00 a0 e1                                      mov r0, sl
0040f1c4  78 fc fb eb                                      bl #0x30e3ac
0040f1c8  04 80 96 e5                                      ldr r8, [r6, #4]
0040f1cc  00 90 a0 e1                                      mov sb, r0
0040f1d0  07 10 a0 e1                                      mov r1, r7
0040f1d4  08 00 a0 e1                                      mov r0, r8
0040f1d8  73 fc fb eb                                      bl #0x30e3ac
0040f1dc  08 60 96 e5                                      ldr r6, [r6, #8]
0040f1e0  00 70 a0 e1                                      mov r7, r0
0040f1e4  04 10 a0 e1                                      mov r1, r4
0040f1e8  06 00 a0 e1                                      mov r0, r6
0040f1ec  6e fc fb eb                                      bl #0x30e3ac
0040f1f0  09 10 a0 e1                                      mov r1, sb
0040f1f4  00 40 a0 e1                                      mov r4, r0
0040f1f8  09 00 a0 e1                                      mov r0, sb
0040f1fc  da fe fb eb                                      bl #0x30ed6c
0040f200  07 10 a0 e1                                      mov r1, r7
0040f204  00 90 a0 e1                                      mov sb, r0
0040f208  07 00 a0 e1                                      mov r0, r7
0040f20c  d6 fe fb eb                                      bl #0x30ed6c
0040f210  00 10 a0 e1                                      mov r1, r0
0040f214  09 00 a0 e1                                      mov r0, sb
0040f218  61 fe fb eb                                      bl #0x30eba4
0040f21c  04 10 a0 e1                                      mov r1, r4
0040f220  00 70 a0 e1                                      mov r7, r0
0040f224  04 00 a0 e1                                      mov r0, r4
0040f228  cf fe fb eb                                      bl #0x30ed6c
0040f22c  00 10 a0 e1                                      mov r1, r0
0040f230  07 00 a0 e1                                      mov r0, r7
0040f234  5a fe fb eb                                      bl #0x30eba4
0040f238  00 10 a0 e1                                      mov r1, r0
0040f23c  05 00 a0 e1                                      mov r0, r5
0040f240  9b fc fb eb                                      bl #0x30e4b4
0040f244  00 00 50 e3                                      cmp r0, #0
0040f248  00 30 9d e5                                      ldr r3, [sp]
0040f24c  02 00 00 1a                                      bne #0x40f25c
0040f250  00 00 a0 e3                                      mov r0, #0
0040f254  1c d0 8d e2                                      add sp, sp, #0x1c
0040f258  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040f25c  03 10 a0 e1                                      mov r1, r3
0040f260  0a 00 a0 e1                                      mov r0, sl
0040f264  50 fc fb eb                                      bl #0x30e3ac
0040f268  04 10 9d e5                                      ldr r1, [sp, #4]
0040f26c  00 40 a0 e1                                      mov r4, r0
0040f270  08 00 a0 e1                                      mov r0, r8
0040f274  4c fc fb eb                                      bl #0x30e3ac
0040f278  0b 10 a0 e1                                      mov r1, fp
0040f27c  00 70 a0 e1                                      mov r7, r0
0040f280  06 00 a0 e1                                      mov r0, r6
0040f284  48 fc fb eb                                      bl #0x30e3ac
0040f288  04 10 a0 e1                                      mov r1, r4
0040f28c  00 60 a0 e1                                      mov r6, r0
0040f290  04 00 a0 e1                                      mov r0, r4
0040f294  b4 fe fb eb                                      bl #0x30ed6c
0040f298  07 10 a0 e1                                      mov r1, r7
0040f29c  00 40 a0 e1                                      mov r4, r0
0040f2a0  07 00 a0 e1                                      mov r0, r7
0040f2a4  b0 fe fb eb                                      bl #0x30ed6c
0040f2a8  00 10 a0 e1                                      mov r1, r0
0040f2ac  04 00 a0 e1                                      mov r0, r4
0040f2b0  3b fe fb eb                                      bl #0x30eba4
0040f2b4  06 10 a0 e1                                      mov r1, r6
0040f2b8  00 40 a0 e1                                      mov r4, r0
0040f2bc  06 00 a0 e1                                      mov r0, r6
0040f2c0  a9 fe fb eb                                      bl #0x30ed6c
0040f2c4  00 10 a0 e1                                      mov r1, r0
0040f2c8  04 00 a0 e1                                      mov r0, r4
0040f2cc  34 fe fb eb                                      bl #0x30eba4
0040f2d0  00 10 a0 e1                                      mov r1, r0
0040f2d4  05 00 a0 e1                                      mov r0, r5
0040f2d8  75 fc fb eb                                      bl #0x30e4b4
0040f2dc  00 00 50 e3                                      cmp r0, #0
0040f2e0  00 00 a0 e3                                      mov r0, #0
0040f2e4  01 00 a0 13                                      movne r0, #1
0040f2e8  70 00 ef e6                                      uxtb r0, r0
0040f2ec  d8 ff ff ea                                      b #0x40f254

; FUNCTION 0x00561bdc, declared_size=372, range_size=372, mode=arm
; class-group: glitch::core::plane3d<float>
; alias: _ZN6glitch4core7plane3dIfE8setPlaneERKNS0_8vector3dIfEES6_S6_
; demangled: glitch::core::plane3d<float>::setPlane(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00561bdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00561be0  00 c0 91 e5                                      ldr ip, [r1]
00561be4  0c d0 4d e2                                      sub sp, sp, #0xc
00561be8  00 50 a0 e1                                      mov r5, r0
00561bec  01 40 a0 e1                                      mov r4, r1
00561bf0  00 00 92 e5                                      ldr r0, [r2]
00561bf4  0c 10 a0 e1                                      mov r1, ip
00561bf8  02 60 a0 e1                                      mov r6, r2
00561bfc  03 70 a0 e1                                      mov r7, r3
00561c00  04 c0 8d e5                                      str ip, [sp, #4]
00561c04  e8 b1 f6 eb                                      bl #0x30e3ac
00561c08  04 90 94 e5                                      ldr sb, [r4, #4]
00561c0c  00 a0 a0 e1                                      mov sl, r0
00561c10  04 00 96 e5                                      ldr r0, [r6, #4]
00561c14  09 10 a0 e1                                      mov r1, sb
00561c18  e3 b1 f6 eb                                      bl #0x30e3ac
00561c1c  08 30 94 e5                                      ldr r3, [r4, #8]
00561c20  00 80 a0 e1                                      mov r8, r0
00561c24  08 00 96 e5                                      ldr r0, [r6, #8]
00561c28  03 10 a0 e1                                      mov r1, r3
00561c2c  00 30 8d e5                                      str r3, [sp]
00561c30  dd b1 f6 eb                                      bl #0x30e3ac
00561c34  04 c0 9d e5                                      ldr ip, [sp, #4]
00561c38  00 b0 a0 e1                                      mov fp, r0
00561c3c  00 00 97 e5                                      ldr r0, [r7]
00561c40  0c 10 a0 e1                                      mov r1, ip
00561c44  d8 b1 f6 eb                                      bl #0x30e3ac
00561c48  09 10 a0 e1                                      mov r1, sb
00561c4c  00 60 a0 e1                                      mov r6, r0
00561c50  04 00 97 e5                                      ldr r0, [r7, #4]
00561c54  d4 b1 f6 eb                                      bl #0x30e3ac
00561c58  00 30 9d e5                                      ldr r3, [sp]
00561c5c  00 90 a0 e1                                      mov sb, r0
00561c60  08 00 97 e5                                      ldr r0, [r7, #8]
00561c64  03 10 a0 e1                                      mov r1, r3
00561c68  cf b1 f6 eb                                      bl #0x30e3ac
00561c6c  02 11 88 e2                                      add r1, r8, #0x80000000
00561c70  00 00 8d e5                                      str r0, [sp]
00561c74  3c b4 f6 eb                                      bl #0x30ed6c
00561c78  09 10 a0 e1                                      mov r1, sb
00561c7c  00 70 a0 e1                                      mov r7, r0
00561c80  0b 00 a0 e1                                      mov r0, fp
00561c84  38 b4 f6 eb                                      bl #0x30ed6c
00561c88  00 10 a0 e1                                      mov r1, r0
00561c8c  07 00 a0 e1                                      mov r0, r7
00561c90  c3 b3 f6 eb                                      bl #0x30eba4
00561c94  02 11 8b e2                                      add r1, fp, #0x80000000
00561c98  00 00 85 e5                                      str r0, [r5]
00561c9c  06 00 a0 e1                                      mov r0, r6
00561ca0  31 b4 f6 eb                                      bl #0x30ed6c
00561ca4  00 30 9d e5                                      ldr r3, [sp]
00561ca8  00 70 a0 e1                                      mov r7, r0
00561cac  0a 00 a0 e1                                      mov r0, sl
00561cb0  03 10 a0 e1                                      mov r1, r3
00561cb4  2c b4 f6 eb                                      bl #0x30ed6c
00561cb8  00 10 a0 e1                                      mov r1, r0
00561cbc  07 00 a0 e1                                      mov r0, r7
00561cc0  b7 b3 f6 eb                                      bl #0x30eba4
00561cc4  02 11 8a e2                                      add r1, sl, #0x80000000
00561cc8  04 00 85 e5                                      str r0, [r5, #4]
00561ccc  09 00 a0 e1                                      mov r0, sb
00561cd0  25 b4 f6 eb                                      bl #0x30ed6c
00561cd4  06 10 a0 e1                                      mov r1, r6
00561cd8  00 70 a0 e1                                      mov r7, r0
00561cdc  08 00 a0 e1                                      mov r0, r8
00561ce0  21 b4 f6 eb                                      bl #0x30ed6c
00561ce4  00 10 a0 e1                                      mov r1, r0
00561ce8  07 00 a0 e1                                      mov r0, r7
00561cec  ac b3 f6 eb                                      bl #0x30eba4
00561cf0  08 00 85 e5                                      str r0, [r5, #8]
00561cf4  05 00 a0 e1                                      mov r0, r5
00561cf8  f8 f2 f7 eb                                      bl #0x35e8e0
00561cfc  00 00 94 e5                                      ldr r0, [r4]
00561d00  00 10 95 e5                                      ldr r1, [r5]
00561d04  18 b4 f6 eb                                      bl #0x30ed6c
00561d08  04 10 95 e5                                      ldr r1, [r5, #4]
00561d0c  00 60 a0 e1                                      mov r6, r0
00561d10  04 00 94 e5                                      ldr r0, [r4, #4]
00561d14  14 b4 f6 eb                                      bl #0x30ed6c
00561d18  00 10 a0 e1                                      mov r1, r0
00561d1c  06 00 a0 e1                                      mov r0, r6
00561d20  9f b3 f6 eb                                      bl #0x30eba4
00561d24  08 10 95 e5                                      ldr r1, [r5, #8]
00561d28  00 60 a0 e1                                      mov r6, r0
00561d2c  08 00 94 e5                                      ldr r0, [r4, #8]
00561d30  0d b4 f6 eb                                      bl #0x30ed6c
00561d34  00 10 a0 e1                                      mov r1, r0
00561d38  06 00 a0 e1                                      mov r0, r6
00561d3c  98 b3 f6 eb                                      bl #0x30eba4
00561d40  02 01 80 e2                                      add r0, r0, #0x80000000
00561d44  0c 00 85 e5                                      str r0, [r5, #0xc]
00561d48  0c d0 8d e2                                      add sp, sp, #0xc
00561d4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
