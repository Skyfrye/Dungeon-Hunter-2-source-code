; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077dcd4, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect14expand_to_rectERKS0_
; demangled: gameswf::rect::expand_to_rect(gameswf::rect const&)
; decoder-mode: arm
0077dcd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077dcd8  00 60 91 e5                                      ldr r6, [r1]
0077dcdc  00 80 90 e5                                      ldr r8, [r0]
0077dce0  08 50 91 e5                                      ldr r5, [r1, #8]
0077dce4  00 40 a0 e1                                      mov r4, r0
0077dce8  01 a0 a0 e1                                      mov sl, r1
0077dcec  06 00 a0 e1                                      mov r0, r6
0077dcf0  08 10 a0 e1                                      mov r1, r8
0077dcf4  7f 41 ee eb                                      bl #0x30e2f8
0077dcf8  08 70 94 e5                                      ldr r7, [r4, #8]
0077dcfc  00 00 50 e3                                      cmp r0, #0
0077dd00  06 80 a0 01                                      moveq r8, r6
0077dd04  07 10 a0 e1                                      mov r1, r7
0077dd08  00 80 84 e5                                      str r8, [r4]
0077dd0c  05 00 a0 e1                                      mov r0, r5
0077dd10  78 41 ee eb                                      bl #0x30e2f8
0077dd14  04 90 94 e5                                      ldr sb, [r4, #4]
0077dd18  00 00 50 e3                                      cmp r0, #0
0077dd1c  05 70 a0 01                                      moveq r7, r5
0077dd20  09 10 a0 e1                                      mov r1, sb
0077dd24  08 70 84 e5                                      str r7, [r4, #8]
0077dd28  06 00 a0 e1                                      mov r0, r6
0077dd2c  71 41 ee eb                                      bl #0x30e2f8
0077dd30  00 00 50 e3                                      cmp r0, #0
0077dd34  09 60 a0 01                                      moveq r6, sb
0077dd38  0c 90 94 e5                                      ldr sb, [r4, #0xc]
0077dd3c  05 00 a0 e1                                      mov r0, r5
0077dd40  04 60 84 e5                                      str r6, [r4, #4]
0077dd44  09 10 a0 e1                                      mov r1, sb
0077dd48  6a 41 ee eb                                      bl #0x30e2f8
0077dd4c  00 00 50 e3                                      cmp r0, #0
0077dd50  09 50 a0 01                                      moveq r5, sb
0077dd54  0c 50 84 e5                                      str r5, [r4, #0xc]
0077dd58  04 90 9a e5                                      ldr sb, [sl, #4]
0077dd5c  08 10 a0 e1                                      mov r1, r8
0077dd60  0c a0 9a e5                                      ldr sl, [sl, #0xc]
0077dd64  09 00 a0 e1                                      mov r0, sb
0077dd68  62 41 ee eb                                      bl #0x30e2f8
0077dd6c  00 00 50 e3                                      cmp r0, #0
0077dd70  09 80 a0 01                                      moveq r8, sb
0077dd74  07 10 a0 e1                                      mov r1, r7
0077dd78  0a 00 a0 e1                                      mov r0, sl
0077dd7c  00 80 84 e5                                      str r8, [r4]
0077dd80  5c 41 ee eb                                      bl #0x30e2f8
0077dd84  00 00 50 e3                                      cmp r0, #0
0077dd88  0a 70 a0 01                                      moveq r7, sl
0077dd8c  09 00 a0 e1                                      mov r0, sb
0077dd90  06 10 a0 e1                                      mov r1, r6
0077dd94  08 70 84 e5                                      str r7, [r4, #8]
0077dd98  56 41 ee eb                                      bl #0x30e2f8
0077dd9c  00 00 50 e3                                      cmp r0, #0
0077dda0  06 90 a0 01                                      moveq sb, r6
0077dda4  0a 00 a0 e1                                      mov r0, sl
0077dda8  04 90 84 e5                                      str sb, [r4, #4]
0077ddac  05 10 a0 e1                                      mov r1, r5
0077ddb0  50 41 ee eb                                      bl #0x30e2f8
0077ddb4  00 00 50 e3                                      cmp r0, #0
0077ddb8  05 a0 a0 01                                      moveq sl, r5
0077ddbc  0c a0 84 e5                                      str sl, [r4, #0xc]
0077ddc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00795600, declared_size=736, range_size=736, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect24enclose_transformed_rectERKNS_6matrixERKS0_
; demangled: gameswf::rect::enclose_transformed_rect(gameswf::matrix const&, gameswf::rect const&)
; decoder-mode: arm
00795600  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00795604  00 90 92 e5                                      ldr sb, [r2]
00795608  00 50 91 e5                                      ldr r5, [r1]
0079560c  2c d0 4d e2                                      sub sp, sp, #0x2c
00795610  01 60 a0 e1                                      mov r6, r1
00795614  00 70 a0 e1                                      mov r7, r0
00795618  05 10 a0 e1                                      mov r1, r5
0079561c  09 00 a0 e1                                      mov r0, sb
00795620  02 a0 a0 e1                                      mov sl, r2
00795624  d0 e5 ed eb                                      bl #0x30ed6c
00795628  1c 00 8d e5                                      str r0, [sp, #0x1c]
0079562c  04 20 96 e5                                      ldr r2, [r6, #4]
00795630  08 30 9a e5                                      ldr r3, [sl, #8]
00795634  00 10 a0 e3                                      mov r1, #0
00795638  27 10 cd e5                                      strb r1, [sp, #0x27]
0079563c  03 00 a0 e1                                      mov r0, r3
00795640  02 10 a0 e1                                      mov r1, r2
00795644  04 20 8d e5                                      str r2, [sp, #4]
00795648  0c 30 8d e5                                      str r3, [sp, #0xc]
0079564c  c6 e5 ed eb                                      bl #0x30ed6c
00795650  08 80 96 e5                                      ldr r8, [r6, #8]
00795654  00 b0 a0 e1                                      mov fp, r0
00795658  0b 10 a0 e1                                      mov r1, fp
0079565c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00795660  4f e5 ed eb                                      bl #0x30eba4
00795664  08 10 a0 e1                                      mov r1, r8
00795668  4d e5 ed eb                                      bl #0x30eba4
0079566c  14 00 8d e5                                      str r0, [sp, #0x14]
00795670  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00795674  09 00 a0 e1                                      mov r0, sb
00795678  04 10 a0 e1                                      mov r1, r4
0079567c  ba e5 ed eb                                      bl #0x30ed6c
00795680  20 00 8d e5                                      str r0, [sp, #0x20]
00795684  10 c0 96 e5                                      ldr ip, [r6, #0x10]
00795688  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0079568c  0c 10 a0 e1                                      mov r1, ip
00795690  03 00 a0 e1                                      mov r0, r3
00795694  08 c0 8d e5                                      str ip, [sp, #8]
00795698  b3 e5 ed eb                                      bl #0x30ed6c
0079569c  14 60 96 e5                                      ldr r6, [r6, #0x14]
007956a0  00 90 a0 e1                                      mov sb, r0
007956a4  09 10 a0 e1                                      mov r1, sb
007956a8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007956ac  3c e5 ed eb                                      bl #0x30eba4
007956b0  06 10 a0 e1                                      mov r1, r6
007956b4  3a e5 ed eb                                      bl #0x30eba4
007956b8  18 00 8d e5                                      str r0, [sp, #0x18]
007956bc  04 30 9a e5                                      ldr r3, [sl, #4]
007956c0  05 00 a0 e1                                      mov r0, r5
007956c4  03 10 a0 e1                                      mov r1, r3
007956c8  0c 30 8d e5                                      str r3, [sp, #0xc]
007956cc  a6 e5 ed eb                                      bl #0x30ed6c
007956d0  00 50 a0 e1                                      mov r5, r0
007956d4  05 10 a0 e1                                      mov r1, r5
007956d8  0b 00 a0 e1                                      mov r0, fp
007956dc  30 e5 ed eb                                      bl #0x30eba4
007956e0  00 10 a0 e1                                      mov r1, r0
007956e4  08 00 a0 e1                                      mov r0, r8
007956e8  2d e5 ed eb                                      bl #0x30eba4
007956ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007956f0  00 b0 a0 e1                                      mov fp, r0
007956f4  04 00 a0 e1                                      mov r0, r4
007956f8  03 10 a0 e1                                      mov r1, r3
007956fc  9a e5 ed eb                                      bl #0x30ed6c
00795700  00 40 a0 e1                                      mov r4, r0
00795704  04 10 a0 e1                                      mov r1, r4
00795708  09 00 a0 e1                                      mov r0, sb
0079570c  24 e5 ed eb                                      bl #0x30eba4
00795710  00 10 a0 e1                                      mov r1, r0
00795714  06 00 a0 e1                                      mov r0, r6
00795718  21 e5 ed eb                                      bl #0x30eba4
0079571c  10 00 8d e5                                      str r0, [sp, #0x10]
00795720  04 20 9d e5                                      ldr r2, [sp, #4]
00795724  0c a0 9a e5                                      ldr sl, [sl, #0xc]
00795728  02 00 a0 e1                                      mov r0, r2
0079572c  0a 10 a0 e1                                      mov r1, sl
00795730  8d e5 ed eb                                      bl #0x30ed6c
00795734  00 90 a0 e1                                      mov sb, r0
00795738  09 10 a0 e1                                      mov r1, sb
0079573c  05 00 a0 e1                                      mov r0, r5
00795740  17 e5 ed eb                                      bl #0x30eba4
00795744  00 10 a0 e1                                      mov r1, r0
00795748  08 00 a0 e1                                      mov r0, r8
0079574c  14 e5 ed eb                                      bl #0x30eba4
00795750  08 c0 9d e5                                      ldr ip, [sp, #8]
00795754  00 50 a0 e1                                      mov r5, r0
00795758  0a 10 a0 e1                                      mov r1, sl
0079575c  0c 00 a0 e1                                      mov r0, ip
00795760  81 e5 ed eb                                      bl #0x30ed6c
00795764  00 a0 a0 e1                                      mov sl, r0
00795768  0a 10 a0 e1                                      mov r1, sl
0079576c  04 00 a0 e1                                      mov r0, r4
00795770  0b e5 ed eb                                      bl #0x30eba4
00795774  00 10 a0 e1                                      mov r1, r0
00795778  06 00 a0 e1                                      mov r0, r6
0079577c  08 e5 ed eb                                      bl #0x30eba4
00795780  09 10 a0 e1                                      mov r1, sb
00795784  00 40 a0 e1                                      mov r4, r0
00795788  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0079578c  04 e5 ed eb                                      bl #0x30eba4
00795790  00 10 a0 e1                                      mov r1, r0
00795794  08 00 a0 e1                                      mov r0, r8
00795798  01 e5 ed eb                                      bl #0x30eba4
0079579c  0a 10 a0 e1                                      mov r1, sl
007957a0  00 80 a0 e1                                      mov r8, r0
007957a4  20 00 9d e5                                      ldr r0, [sp, #0x20]
007957a8  fd e4 ed eb                                      bl #0x30eba4
007957ac  00 10 a0 e1                                      mov r1, r0
007957b0  06 00 a0 e1                                      mov r0, r6
007957b4  fa e4 ed eb                                      bl #0x30eba4
007957b8  0b 10 a0 e1                                      mov r1, fp
007957bc  00 60 a0 e1                                      mov r6, r0
007957c0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007957c4  d0 e3 ed eb                                      bl #0x30e70c
007957c8  00 00 50 e3                                      cmp r0, #0
007957cc  01 30 a0 13                                      movne r3, #1
007957d0  27 30 cd 15                                      strbne r3, [sp, #0x27]
007957d4  27 30 dd e5                                      ldrb r3, [sp, #0x27]
007957d8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007957dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
007957e0  00 00 53 e3                                      cmp r3, #0
007957e4  14 90 9d 15                                      ldrne sb, [sp, #0x14]
007957e8  0b 90 a0 01                                      moveq sb, fp
007957ec  0c 30 8d e5                                      str r3, [sp, #0xc]
007957f0  c5 e3 ed eb                                      bl #0x30e70c
007957f4  00 00 50 e3                                      cmp r0, #0
007957f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007957fc  00 20 a0 e3                                      mov r2, #0
00795800  01 20 a0 13                                      movne r2, #1
00795804  72 20 ef e6                                      uxtb r2, r2
00795808  00 00 52 e3                                      cmp r2, #0
0079580c  10 a0 9d 05                                      ldreq sl, [sp, #0x10]
00795810  18 a0 9d 15                                      ldrne sl, [sp, #0x18]
00795814  00 00 53 e3                                      cmp r3, #0
00795818  14 b0 9d 05                                      ldreq fp, [sp, #0x14]
0079581c  00 00 52 e3                                      cmp r2, #0
00795820  18 10 9d 05                                      ldreq r1, [sp, #0x18]
00795824  05 00 a0 e1                                      mov r0, r5
00795828  10 10 8d 05                                      streq r1, [sp, #0x10]
0079582c  09 10 a0 e1                                      mov r1, sb
00795830  b0 e2 ed eb                                      bl #0x30e2f8
00795834  0a 10 a0 e1                                      mov r1, sl
00795838  00 00 50 e3                                      cmp r0, #0
0079583c  04 00 a0 e1                                      mov r0, r4
00795840  05 90 a0 01                                      moveq sb, r5
00795844  ab e2 ed eb                                      bl #0x30e2f8
00795848  0b 10 a0 e1                                      mov r1, fp
0079584c  00 00 50 e3                                      cmp r0, #0
00795850  05 00 a0 e1                                      mov r0, r5
00795854  04 a0 a0 01                                      moveq sl, r4
00795858  a6 e2 ed eb                                      bl #0x30e2f8
0079585c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00795860  00 00 50 e3                                      cmp r0, #0
00795864  04 00 a0 e1                                      mov r0, r4
00795868  0b 50 a0 01                                      moveq r5, fp
0079586c  a1 e2 ed eb                                      bl #0x30e2f8
00795870  09 10 a0 e1                                      mov r1, sb
00795874  00 00 50 e3                                      cmp r0, #0
00795878  08 00 a0 e1                                      mov r0, r8
0079587c  10 40 9d 05                                      ldreq r4, [sp, #0x10]
00795880  9c e2 ed eb                                      bl #0x30e2f8
00795884  00 00 50 e3                                      cmp r0, #0
00795888  08 90 a0 01                                      moveq sb, r8
0079588c  0a 10 a0 e1                                      mov r1, sl
00795890  06 00 a0 e1                                      mov r0, r6
00795894  00 90 87 e5                                      str sb, [r7]
00795898  96 e2 ed eb                                      bl #0x30e2f8
0079589c  00 00 50 e3                                      cmp r0, #0
007958a0  06 a0 a0 01                                      moveq sl, r6
007958a4  08 00 a0 e1                                      mov r0, r8
007958a8  05 10 a0 e1                                      mov r1, r5
007958ac  08 a0 87 e5                                      str sl, [r7, #8]
007958b0  90 e2 ed eb                                      bl #0x30e2f8
007958b4  00 00 50 e3                                      cmp r0, #0
007958b8  05 80 a0 01                                      moveq r8, r5
007958bc  06 00 a0 e1                                      mov r0, r6
007958c0  04 80 87 e5                                      str r8, [r7, #4]
007958c4  04 10 a0 e1                                      mov r1, r4
007958c8  8a e2 ed eb                                      bl #0x30e2f8
007958cc  00 00 50 e3                                      cmp r0, #0
007958d0  04 60 a0 01                                      moveq r6, r4
007958d4  0c 60 87 e5                                      str r6, [r7, #0xc]
007958d8  2c d0 8d e2                                      add sp, sp, #0x2c
007958dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007958e0, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect8set_lerpERKS0_S2_f
; demangled: gameswf::rect::set_lerp(gameswf::rect const&, gameswf::rect const&, float)
; decoder-mode: arm
007958e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007958e4  00 50 91 e5                                      ldr r5, [r1]
007958e8  00 70 a0 e1                                      mov r7, r0
007958ec  01 40 a0 e1                                      mov r4, r1
007958f0  00 00 92 e5                                      ldr r0, [r2]
007958f4  05 10 a0 e1                                      mov r1, r5
007958f8  03 80 a0 e1                                      mov r8, r3
007958fc  02 60 a0 e1                                      mov r6, r2
00795900  a9 e2 ed eb                                      bl #0x30e3ac
00795904  00 10 a0 e1                                      mov r1, r0
00795908  08 00 a0 e1                                      mov r0, r8
0079590c  16 e5 ed eb                                      bl #0x30ed6c
00795910  00 10 a0 e1                                      mov r1, r0
00795914  05 00 a0 e1                                      mov r0, r5
00795918  a1 e4 ed eb                                      bl #0x30eba4
0079591c  00 00 87 e5                                      str r0, [r7]
00795920  08 50 94 e5                                      ldr r5, [r4, #8]
00795924  08 00 96 e5                                      ldr r0, [r6, #8]
00795928  05 10 a0 e1                                      mov r1, r5
0079592c  9e e2 ed eb                                      bl #0x30e3ac
00795930  00 10 a0 e1                                      mov r1, r0
00795934  08 00 a0 e1                                      mov r0, r8
00795938  0b e5 ed eb                                      bl #0x30ed6c
0079593c  00 10 a0 e1                                      mov r1, r0
00795940  05 00 a0 e1                                      mov r0, r5
00795944  96 e4 ed eb                                      bl #0x30eba4
00795948  08 00 87 e5                                      str r0, [r7, #8]
0079594c  04 50 94 e5                                      ldr r5, [r4, #4]
00795950  04 00 96 e5                                      ldr r0, [r6, #4]
00795954  05 10 a0 e1                                      mov r1, r5
00795958  93 e2 ed eb                                      bl #0x30e3ac
0079595c  00 10 a0 e1                                      mov r1, r0
00795960  08 00 a0 e1                                      mov r0, r8
00795964  00 e5 ed eb                                      bl #0x30ed6c
00795968  00 10 a0 e1                                      mov r1, r0
0079596c  05 00 a0 e1                                      mov r0, r5
00795970  8b e4 ed eb                                      bl #0x30eba4
00795974  04 00 87 e5                                      str r0, [r7, #4]
00795978  0c 40 94 e5                                      ldr r4, [r4, #0xc]
0079597c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00795980  04 10 a0 e1                                      mov r1, r4
00795984  88 e2 ed eb                                      bl #0x30e3ac
00795988  00 10 a0 e1                                      mov r1, r0
0079598c  08 00 a0 e1                                      mov r0, r8
00795990  f5 e4 ed eb                                      bl #0x30ed6c
00795994  00 10 a0 e1                                      mov r1, r0
00795998  04 00 a0 e1                                      mov r0, r4
0079599c  80 e4 ed eb                                      bl #0x30eba4
007959a0  0c 00 87 e5                                      str r0, [r7, #0xc]
007959a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007959a8, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect15twips_to_pixelsEv
; demangled: gameswf::rect::twips_to_pixels()
; decoder-mode: arm
007959a8  10 40 2d e9                                      push {r4, lr}
007959ac  41 14 a0 e3                                      mov r1, #0x41000000
007959b0  00 40 a0 e1                                      mov r4, r0
007959b4  0a 16 81 e2                                      add r1, r1, #0xa00000
007959b8  00 00 90 e5                                      ldr r0, [r0]
007959bc  b4 e4 ed eb                                      bl #0x30ec94
007959c0  41 14 a0 e3                                      mov r1, #0x41000000
007959c4  00 00 84 e5                                      str r0, [r4]
007959c8  0a 16 81 e2                                      add r1, r1, #0xa00000
007959cc  08 00 94 e5                                      ldr r0, [r4, #8]
007959d0  af e4 ed eb                                      bl #0x30ec94
007959d4  41 14 a0 e3                                      mov r1, #0x41000000
007959d8  08 00 84 e5                                      str r0, [r4, #8]
007959dc  0a 16 81 e2                                      add r1, r1, #0xa00000
007959e0  04 00 94 e5                                      ldr r0, [r4, #4]
007959e4  aa e4 ed eb                                      bl #0x30ec94
007959e8  41 14 a0 e3                                      mov r1, #0x41000000
007959ec  04 00 84 e5                                      str r0, [r4, #4]
007959f0  0a 16 81 e2                                      add r1, r1, #0xa00000
007959f4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007959f8  a5 e4 ed eb                                      bl #0x30ec94
007959fc  0c 00 84 e5                                      str r0, [r4, #0xc]
00795a00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00795a04, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect15pixels_to_twipsEv
; demangled: gameswf::rect::pixels_to_twips()
; decoder-mode: arm
00795a04  10 40 2d e9                                      push {r4, lr}
00795a08  41 14 a0 e3                                      mov r1, #0x41000000
00795a0c  00 40 a0 e1                                      mov r4, r0
00795a10  0a 16 81 e2                                      add r1, r1, #0xa00000
00795a14  00 00 90 e5                                      ldr r0, [r0]
00795a18  d3 e4 ed eb                                      bl #0x30ed6c
00795a1c  41 14 a0 e3                                      mov r1, #0x41000000
00795a20  00 00 84 e5                                      str r0, [r4]
00795a24  0a 16 81 e2                                      add r1, r1, #0xa00000
00795a28  08 00 94 e5                                      ldr r0, [r4, #8]
00795a2c  ce e4 ed eb                                      bl #0x30ed6c
00795a30  41 14 a0 e3                                      mov r1, #0x41000000
00795a34  08 00 84 e5                                      str r0, [r4, #8]
00795a38  0a 16 81 e2                                      add r1, r1, #0xa00000
00795a3c  04 00 94 e5                                      ldr r0, [r4, #4]
00795a40  c9 e4 ed eb                                      bl #0x30ed6c
00795a44  41 14 a0 e3                                      mov r1, #0x41000000
00795a48  04 00 84 e5                                      str r0, [r4, #4]
00795a4c  0a 16 81 e2                                      add r1, r1, #0xa00000
00795a50  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00795a54  c4 e4 ed eb                                      bl #0x30ed6c
00795a58  0c 00 84 e5                                      str r0, [r4, #0xc]
00795a5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00795d9c, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::rect
; alias: _ZNK7gameswf4rect5printEv
; demangled: gameswf::rect::print() const
; decoder-mode: arm
00795d9c  d0 40 2d e9                                      push {r4, r6, r7, lr}
00795da0  41 14 a0 e3                                      mov r1, #0x41000000
00795da4  18 d0 4d e2                                      sub sp, sp, #0x18
00795da8  00 40 a0 e1                                      mov r4, r0
00795dac  0a 16 81 e2                                      add r1, r1, #0xa00000
00795db0  00 00 90 e5                                      ldr r0, [r0]
00795db4  b6 e3 ed eb                                      bl #0x30ec94
00795db8  b9 e2 ed eb                                      bl #0x30e8a4
00795dbc  01 70 a0 e1                                      mov r7, r1
00795dc0  41 14 a0 e3                                      mov r1, #0x41000000
00795dc4  00 60 a0 e1                                      mov r6, r0
00795dc8  0a 16 81 e2                                      add r1, r1, #0xa00000
00795dcc  08 00 94 e5                                      ldr r0, [r4, #8]
00795dd0  af e3 ed eb                                      bl #0x30ec94
00795dd4  b2 e2 ed eb                                      bl #0x30e8a4
00795dd8  f0 00 cd e1                                      strd r0, r1, [sp]
00795ddc  41 14 a0 e3                                      mov r1, #0x41000000
00795de0  04 00 94 e5                                      ldr r0, [r4, #4]
00795de4  0a 16 81 e2                                      add r1, r1, #0xa00000
00795de8  a9 e3 ed eb                                      bl #0x30ec94
00795dec  ac e2 ed eb                                      bl #0x30e8a4
00795df0  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00795df4  41 14 a0 e3                                      mov r1, #0x41000000
00795df8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00795dfc  0a 16 81 e2                                      add r1, r1, #0xa00000
00795e00  a3 e3 ed eb                                      bl #0x30ec94
00795e04  a6 e2 ed eb                                      bl #0x30e8a4
00795e08  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00795e0c  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
00795e10  03 30 8f e0                                      add r3, pc, r3
00795e14  03 00 a0 e1                                      mov r0, r3
00795e18  06 20 a0 e1                                      mov r2, r6
00795e1c  07 30 a0 e1                                      mov r3, r7
00795e20  f2 2c ff eb                                      bl #0x7611f0
00795e24  18 d0 8d e2                                      add sp, sp, #0x18
00795e28  d0 80 bd e8                                      pop {r4, r6, r7, pc}
; mapping-symbol data/literal pool
00795e2c  f8 41 17 00                                      .byte 0xf8, 0x41, 0x17, 0x00

; FUNCTION 0x00795fec, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::rect
; alias: _ZN7gameswf4rect4readEPNS_6streamE
; demangled: gameswf::rect::read(gameswf::stream*)
; decoder-mode: arm
00795fec  70 40 2d e9                                      push {r4, r5, r6, lr}
00795ff0  01 40 a0 e1                                      mov r4, r1
00795ff4  00 50 a0 e1                                      mov r5, r0
00795ff8  01 00 a0 e1                                      mov r0, r1
00795ffc  c5 b6 ff eb                                      bl #0x783b18
00796000  05 10 a0 e3                                      mov r1, #5
00796004  04 00 a0 e1                                      mov r0, r4
00796008  65 b6 ff eb                                      bl #0x7839a4
0079600c  00 60 a0 e1                                      mov r6, r0
00796010  06 10 a0 e1                                      mov r1, r6
00796014  04 00 a0 e1                                      mov r0, r4
00796018  92 b6 ff eb                                      bl #0x783a68
0079601c  50 e2 ed eb                                      bl #0x30e964
00796020  06 10 a0 e1                                      mov r1, r6
00796024  00 00 85 e5                                      str r0, [r5]
00796028  04 00 a0 e1                                      mov r0, r4
0079602c  8d b6 ff eb                                      bl #0x783a68
00796030  4b e2 ed eb                                      bl #0x30e964
00796034  06 10 a0 e1                                      mov r1, r6
00796038  04 00 85 e5                                      str r0, [r5, #4]
0079603c  04 00 a0 e1                                      mov r0, r4
00796040  88 b6 ff eb                                      bl #0x783a68
00796044  46 e2 ed eb                                      bl #0x30e964
00796048  06 10 a0 e1                                      mov r1, r6
0079604c  08 00 85 e5                                      str r0, [r5, #8]
00796050  04 00 a0 e1                                      mov r0, r4
00796054  83 b6 ff eb                                      bl #0x783a68
00796058  41 e2 ed eb                                      bl #0x30e964
0079605c  0c 00 85 e5                                      str r0, [r5, #0xc]
00796060  70 80 bd e8                                      pop {r4, r5, r6, pc}
