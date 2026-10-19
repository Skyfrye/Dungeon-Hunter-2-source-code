; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00038d24, declared_size=404, range_size=404, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs10_M_replaceEPcS_PKcS1_b
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_replace(char*, char*, char const*, char const*, bool)
; decoder-mode: arm
00038d24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00038d28  1c b0 8d e2                                      add fp, sp, #0x1c
00038d2c  0c d0 4d e2                                      sub sp, sp, #0xc
00038d30  08 80 9b e5                                      ldr r8, [fp, #8]
00038d34  00 90 a0 e1                                      mov sb, r0
00038d38  0c 00 9b e5                                      ldr r0, [fp, #0xc]
00038d3c  03 70 a0 e1                                      mov r7, r3
00038d40  02 a0 a0 e1                                      mov sl, r2
00038d44  01 60 a0 e1                                      mov r6, r1
00038d48  06 40 4a e0                                      sub r4, sl, r6
00038d4c  07 50 48 e0                                      sub r5, r8, r7
00038d50  05 00 54 e1                                      cmp r4, r5
00038d54  1c 00 00 aa                                      bge #0x38dcc
00038d58  06 00 58 e1                                      cmp r8, r6
00038d5c  27 00 00 9a                                      bls #0x38e00
00038d60  0a 00 57 e1                                      cmp r7, sl
00038d64  25 00 00 2a                                      bhs #0x38e00
00038d68  00 00 50 e3                                      cmp r0, #0
00038d6c  23 00 00 0a                                      beq #0x38e00
00038d70  04 50 87 e0                                      add r5, r7, r4
00038d74  06 00 57 e1                                      cmp r7, r6
00038d78  3e 00 00 2a                                      bhs #0x38e78
00038d7c  14 00 99 e5                                      ldr r0, [sb, #0x14]
00038d80  0a 10 a0 e1                                      mov r1, sl
00038d84  08 00 8d e5                                      str r0, [sp, #8]
00038d88  01 00 a0 e3                                      mov r0, #1
00038d8c  00 00 8d e5                                      str r0, [sp]
00038d90  09 00 a0 e1                                      mov r0, sb
00038d94  05 20 a0 e1                                      mov r2, r5
00038d98  08 30 a0 e1                                      mov r3, r8
00038d9c  03 e5 ff eb                                      bl #0x321b0
00038da0  00 00 54 e3                                      cmp r4, #0
00038da4  40 00 00 0a                                      beq #0x38eac
00038da8  08 20 9d e5                                      ldr r2, [sp, #8]
00038dac  14 10 99 e5                                      ldr r1, [sb, #0x14]
00038db0  02 00 46 e0                                      sub r0, r6, r2
00038db4  02 20 47 e0                                      sub r2, r7, r2
00038db8  00 00 81 e0                                      add r0, r1, r0
00038dbc  02 10 81 e0                                      add r1, r1, r2
00038dc0  04 20 a0 e1                                      mov r2, r4
00038dc4  fc e4 ff eb                                      bl #0x321bc
00038dc8  37 00 00 ea                                      b #0x38eac
00038dcc  0a 00 57 e1                                      cmp r7, sl
00038dd0  13 00 00 2a                                      bhs #0x38e24
00038dd4  06 00 58 e1                                      cmp r8, r6
00038dd8  11 00 00 3a                                      blo #0x38e24
00038ddc  00 00 50 e3                                      cmp r0, #0
00038de0  0f 00 00 0a                                      beq #0x38e24
00038de4  00 00 55 e3                                      cmp r5, #0
00038de8  13 00 00 0a                                      beq #0x38e3c
00038dec  06 00 a0 e1                                      mov r0, r6
00038df0  07 10 a0 e1                                      mov r1, r7
00038df4  05 20 a0 e1                                      mov r2, r5
00038df8  ef e4 ff eb                                      bl #0x321bc
00038dfc  0e 00 00 ea                                      b #0x38e3c
00038e00  04 50 87 e0                                      add r5, r7, r4
00038e04  00 00 54 e3                                      cmp r4, #0
00038e08  21 00 00 0a                                      beq #0x38e94
00038e0c  06 00 a0 e1                                      mov r0, r6
00038e10  07 10 a0 e1                                      mov r1, r7
00038e14  04 20 a0 e1                                      mov r2, r4
00038e18  6f e4 ff eb                                      bl #0x31fdc
00038e1c  0c 00 9b e5                                      ldr r0, [fp, #0xc]
00038e20  1b 00 00 ea                                      b #0x38e94
00038e24  00 00 55 e3                                      cmp r5, #0
00038e28  03 00 00 0a                                      beq #0x38e3c
00038e2c  06 00 a0 e1                                      mov r0, r6
00038e30  07 10 a0 e1                                      mov r1, r7
00038e34  05 20 a0 e1                                      mov r2, r5
00038e38  67 e4 ff eb                                      bl #0x31fdc
00038e3c  05 40 86 e0                                      add r4, r6, r5
00038e40  0a 00 54 e1                                      cmp r4, sl
00038e44  18 00 00 0a                                      beq #0x38eac
00038e48  10 00 99 e5                                      ldr r0, [sb, #0x10]
00038e4c  0a 10 40 e0                                      sub r1, r0, sl
00038e50  01 20 91 e2                                      adds r2, r1, #1
00038e54  03 00 00 0a                                      beq #0x38e68
00038e58  04 00 a0 e1                                      mov r0, r4
00038e5c  0a 10 a0 e1                                      mov r1, sl
00038e60  d5 e4 ff eb                                      bl #0x321bc
00038e64  10 00 99 e5                                      ldr r0, [sb, #0x10]
00038e68  0a 10 44 e0                                      sub r1, r4, sl
00038e6c  01 00 80 e0                                      add r0, r0, r1
00038e70  10 00 89 e5                                      str r0, [sb, #0x10]
00038e74  0c 00 00 ea                                      b #0x38eac
00038e78  00 00 54 e3                                      cmp r4, #0
00038e7c  03 00 00 0a                                      beq #0x38e90
00038e80  06 00 a0 e1                                      mov r0, r6
00038e84  07 10 a0 e1                                      mov r1, r7
00038e88  04 20 a0 e1                                      mov r2, r4
00038e8c  ca e4 ff eb                                      bl #0x321bc
00038e90  01 00 a0 e3                                      mov r0, #1
00038e94  00 00 8d e5                                      str r0, [sp]
00038e98  09 00 a0 e1                                      mov r0, sb
00038e9c  0a 10 a0 e1                                      mov r1, sl
00038ea0  05 20 a0 e1                                      mov r2, r5
00038ea4  08 30 a0 e1                                      mov r3, r8
00038ea8  c0 e4 ff eb                                      bl #0x321b0
00038eac  09 00 a0 e1                                      mov r0, sb
00038eb0  1c d0 4b e2                                      sub sp, fp, #0x1c
00038eb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00038eb8, declared_size=1032, range_size=1032, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs9_M_insertEPcPKcS1_b
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_insert(char*, char const*, char const*, bool)
; decoder-mode: arm
00038eb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00038ebc  1c b0 8d e2                                      add fp, sp, #0x1c
00038ec0  0c d0 4d e2                                      sub sp, sp, #0xc
00038ec4  00 70 a0 e1                                      mov r7, r0
00038ec8  d0 03 9f e5                                      ldr r0, [pc, #0x3d0]
00038ecc  08 a0 9b e5                                      ldr sl, [fp, #8]
00038ed0  03 40 a0 e1                                      mov r4, r3
00038ed4  02 50 a0 e1                                      mov r5, r2
00038ed8  01 80 a0 e1                                      mov r8, r1
00038edc  00 00 9f e7                                      ldr r0, [pc, r0]
00038ee0  04 00 55 e1                                      cmp r5, r4
00038ee4  00 00 90 e5                                      ldr r0, [r0]
00038ee8  08 00 8d e5                                      str r0, [sp, #8]
00038eec  bb 00 00 0a                                      beq #0x391e0
00038ef0  14 00 97 e5                                      ldr r0, [r7, #0x14]
00038ef4  07 c0 a0 e1                                      mov ip, r7
00038ef8  10 10 bc e5                                      ldr r1, [ip, #0x10]!
00038efc  05 90 44 e0                                      sub sb, r4, r5
00038f00  07 00 50 e1                                      cmp r0, r7
00038f04  00 20 97 15                                      ldrne r2, [r7]
00038f08  01 20 42 10                                      subne r2, r2, r1
00038f0c  01 20 4c 00                                      subeq r2, ip, r1
00038f10  09 00 52 e1                                      cmp r2, sb
00038f14  31 00 00 9a                                      bls #0x38fe0
00038f18  08 00 41 e0                                      sub r0, r1, r8
00038f1c  09 00 50 e1                                      cmp r0, sb
00038f20  46 00 00 2a                                      bhs #0x39040
00038f24  01 20 80 e2                                      add r2, r0, #1
00038f28  01 60 81 e2                                      add r6, r1, #1
00038f2c  02 70 85 e0                                      add r7, r5, r2
00038f30  07 30 44 e0                                      sub r3, r4, r7
00038f34  01 00 53 e3                                      cmp r3, #1
00038f38  08 00 00 ba                                      blt #0x38f60
00038f3c  01 10 84 e2                                      add r1, r4, #1
00038f40  06 30 a0 e1                                      mov r3, r6
00038f44  07 10 41 e0                                      sub r1, r1, r7
00038f48  01 40 d7 e4                                      ldrb r4, [r7], #1
00038f4c  01 10 41 e2                                      sub r1, r1, #1
00038f50  01 40 c3 e4                                      strb r4, [r3], #1
00038f54  01 00 51 e3                                      cmp r1, #1
00038f58  fa ff ff ca                                      bgt #0x38f48
00038f5c  00 10 9c e5                                      ldr r1, [ip]
00038f60  00 30 49 e0                                      sub r3, sb, r0
00038f64  03 10 81 e0                                      add r1, r1, r3
00038f68  08 30 46 e0                                      sub r3, r6, r8
00038f6c  01 00 53 e3                                      cmp r3, #1
00038f70  00 10 8c e5                                      str r1, [ip]
00038f74  08 00 00 ba                                      blt #0x38f9c
00038f78  01 30 86 e2                                      add r3, r6, #1
00038f7c  08 40 a0 e1                                      mov r4, r8
00038f80  08 30 43 e0                                      sub r3, r3, r8
00038f84  01 70 d4 e4                                      ldrb r7, [r4], #1
00038f88  01 30 43 e2                                      sub r3, r3, #1
00038f8c  01 70 c1 e4                                      strb r7, [r1], #1
00038f90  01 00 53 e3                                      cmp r3, #1
00038f94  fa ff ff ca                                      bgt #0x38f84
00038f98  00 10 9c e5                                      ldr r1, [ip]
00038f9c  00 00 5a e3                                      cmp sl, #0
00038fa0  00 00 81 e0                                      add r0, r1, r0
00038fa4  00 00 8c e5                                      str r0, [ip]
00038fa8  9f 00 00 0a                                      beq #0x3922c
00038fac  00 00 52 e3                                      cmp r2, #0
00038fb0  8a 00 00 0a                                      beq #0x391e0
00038fb4  08 00 a0 e1                                      mov r0, r8
00038fb8  05 10 a0 e1                                      mov r1, r5
00038fbc  7e e4 ff eb                                      bl #0x321bc
00038fc0  f0 02 9f e5                                      ldr r0, [pc, #0x2f0]
00038fc4  08 10 9d e5                                      ldr r1, [sp, #8]
00038fc8  00 00 9f e7                                      ldr r0, [pc, r0]
00038fcc  00 00 90 e5                                      ldr r0, [r0]
00038fd0  01 00 50 e0                                      subs r0, r0, r1
00038fd4  1c d0 4b 02                                      subeq sp, fp, #0x1c
00038fd8  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00038fdc  1f e4 ff eb                                      bl #0x32060
00038fe0  00 10 41 e0                                      sub r1, r1, r0
00038fe4  01 20 e0 e3                                      mvn r2, #1
00038fe8  01 20 42 e0                                      sub r2, r2, r1
00038fec  09 00 52 e1                                      cmp r2, sb
00038ff0  a6 00 00 3a                                      blo #0x39290
00038ff4  09 00 51 e1                                      cmp r1, sb
00038ff8  09 20 a0 e1                                      mov r2, sb
00038ffc  01 20 a0 81                                      movhi r2, r1
00039000  02 20 81 e0                                      add r2, r1, r2
00039004  01 20 82 e2                                      add r2, r2, #1
00039008  01 00 52 e1                                      cmp r2, r1
0003900c  02 60 a0 e1                                      mov r6, r2
00039010  01 60 e0 33                                      mvnlo r6, #1
00039014  01 00 72 e3                                      cmn r2, #1
00039018  01 60 e0 03                                      mvneq r6, #1
0003901c  00 00 56 e3                                      cmp r6, #0
00039020  32 00 00 0a                                      beq #0x390f0
00039024  0c a0 a0 e1                                      mov sl, ip
00039028  81 00 56 e3                                      cmp r6, #0x81
0003902c  04 60 8d e5                                      str r6, [sp, #4]
00039030  31 00 00 3a                                      blo #0x390fc
00039034  06 00 a0 e1                                      mov r0, r6
00039038  de e3 ff eb                                      bl #0x31fb8
0003903c  31 00 00 ea                                      b #0x39108
00039040  09 20 41 e0                                      sub r2, r1, sb
00039044  01 30 82 e2                                      add r3, r2, #1
00039048  01 20 81 e2                                      add r2, r1, #1
0003904c  03 70 42 e0                                      sub r7, r2, r3
00039050  01 00 57 e3                                      cmp r7, #1
00039054  09 00 00 ba                                      blt #0x39080
00039058  01 70 82 e2                                      add r7, r2, #1
0003905c  00 10 69 e2                                      rsb r1, sb, #0
00039060  03 30 47 e0                                      sub r3, r7, r3
00039064  02 70 d1 e7                                      ldrb r7, [r1, r2]
00039068  01 30 43 e2                                      sub r3, r3, #1
0003906c  00 70 c2 e5                                      strb r7, [r2]
00039070  01 20 82 e2                                      add r2, r2, #1
00039074  01 00 53 e3                                      cmp r3, #1
00039078  f9 ff ff ca                                      bgt #0x39064
0003907c  00 10 9c e5                                      ldr r1, [ip]
00039080  09 00 40 e0                                      sub r0, r0, sb
00039084  09 10 81 e0                                      add r1, r1, sb
00039088  01 20 90 e2                                      adds r2, r0, #1
0003908c  00 10 8c e5                                      str r1, [ip]
00039090  02 00 00 0a                                      beq #0x390a0
00039094  09 00 88 e0                                      add r0, r8, sb
00039098  08 10 a0 e1                                      mov r1, r8
0003909c  46 e4 ff eb                                      bl #0x321bc
000390a0  08 00 54 e1                                      cmp r4, r8
000390a4  55 00 00 3a                                      blo #0x39200
000390a8  00 00 5a e3                                      cmp sl, #0
000390ac  53 00 00 0a                                      beq #0x39200
000390b0  08 00 55 e1                                      cmp r5, r8
000390b4  67 00 00 2a                                      bhs #0x39258
000390b8  00 00 59 e3                                      cmp sb, #0
000390bc  47 00 00 0a                                      beq #0x391e0
000390c0  08 00 a0 e1                                      mov r0, r8
000390c4  05 10 a0 e1                                      mov r1, r5
000390c8  09 20 a0 e1                                      mov r2, sb
000390cc  3a e4 ff eb                                      bl #0x321bc
000390d0  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
000390d4  08 10 9d e5                                      ldr r1, [sp, #8]
000390d8  00 00 9f e7                                      ldr r0, [pc, r0]
000390dc  00 00 90 e5                                      ldr r0, [r0]
000390e0  01 00 50 e0                                      subs r0, r0, r1
000390e4  1c d0 4b 02                                      subeq sp, fp, #0x1c
000390e8  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
000390ec  db e3 ff eb                                      bl #0x32060
000390f0  00 60 a0 e3                                      mov r6, #0
000390f4  00 30 a0 e3                                      mov r3, #0
000390f8  05 00 00 ea                                      b #0x39114
000390fc  04 00 8d e2                                      add r0, sp, #4
00039100  b2 e3 ff eb                                      bl #0x31fd0
00039104  04 60 9d e5                                      ldr r6, [sp, #4]
00039108  00 30 a0 e1                                      mov r3, r0
0003910c  14 00 97 e5                                      ldr r0, [r7, #0x14]
00039110  0a c0 a0 e1                                      mov ip, sl
00039114  00 10 48 e0                                      sub r1, r8, r0
00039118  03 a0 a0 e1                                      mov sl, r3
0003911c  01 00 51 e3                                      cmp r1, #1
00039120  07 00 00 ba                                      blt #0x39144
00039124  01 10 88 e2                                      add r1, r8, #1
00039128  03 a0 a0 e1                                      mov sl, r3
0003912c  00 10 41 e0                                      sub r1, r1, r0
00039130  01 20 d0 e4                                      ldrb r2, [r0], #1
00039134  01 10 41 e2                                      sub r1, r1, #1
00039138  01 20 ca e4                                      strb r2, [sl], #1
0003913c  01 00 51 e3                                      cmp r1, #1
00039140  fa ff ff ca                                      bgt #0x39130
00039144  01 00 59 e3                                      cmp sb, #1
00039148  06 00 00 ba                                      blt #0x39168
0003914c  01 00 84 e2                                      add r0, r4, #1
00039150  05 00 40 e0                                      sub r0, r0, r5
00039154  01 10 d5 e4                                      ldrb r1, [r5], #1
00039158  01 00 40 e2                                      sub r0, r0, #1
0003915c  01 10 ca e4                                      strb r1, [sl], #1
00039160  01 00 50 e3                                      cmp r0, #1
00039164  fa ff ff ca                                      bgt #0x39154
00039168  00 00 9c e5                                      ldr r0, [ip]
0003916c  08 10 40 e0                                      sub r1, r0, r8
00039170  01 00 51 e3                                      cmp r1, #1
00039174  06 00 00 ba                                      blt #0x39194
00039178  01 00 80 e2                                      add r0, r0, #1
0003917c  08 00 40 e0                                      sub r0, r0, r8
00039180  01 10 d8 e4                                      ldrb r1, [r8], #1
00039184  01 00 40 e2                                      sub r0, r0, #1
00039188  01 10 ca e4                                      strb r1, [sl], #1
0003918c  01 00 50 e3                                      cmp r0, #1
00039190  fa ff ff ca                                      bgt #0x39180
00039194  00 00 a0 e3                                      mov r0, #0
00039198  00 00 ca e5                                      strb r0, [sl]
0003919c  14 00 97 e5                                      ldr r0, [r7, #0x14]
000391a0  07 00 50 e1                                      cmp r0, r7
000391a4  00 00 50 13                                      cmpne r0, #0
000391a8  08 00 00 0a                                      beq #0x391d0
000391ac  00 10 97 e5                                      ldr r1, [r7]
000391b0  03 40 a0 e1                                      mov r4, r3
000391b4  00 10 41 e0                                      sub r1, r1, r0
000391b8  81 00 51 e3                                      cmp r1, #0x81
000391bc  01 00 00 3a                                      blo #0x391c8
000391c0  73 e3 ff eb                                      bl #0x31f94
000391c4  00 00 00 ea                                      b #0x391cc
000391c8  74 e3 ff eb                                      bl #0x31fa0
000391cc  04 30 a0 e1                                      mov r3, r4
000391d0  06 00 83 e0                                      add r0, r3, r6
000391d4  00 00 87 e5                                      str r0, [r7]
000391d8  10 a0 87 e5                                      str sl, [r7, #0x10]
000391dc  14 30 87 e5                                      str r3, [r7, #0x14]
000391e0  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
000391e4  08 10 9d e5                                      ldr r1, [sp, #8]
000391e8  00 00 9f e7                                      ldr r0, [pc, r0]
000391ec  00 00 90 e5                                      ldr r0, [r0]
000391f0  01 00 50 e0                                      subs r0, r0, r1
000391f4  1c d0 4b 02                                      subeq sp, fp, #0x1c
000391f8  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
000391fc  97 e3 ff eb                                      bl #0x32060
00039200  00 00 59 e3                                      cmp sb, #0
00039204  f5 ff ff 0a                                      beq #0x391e0
00039208  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
0003920c  08 10 9d e5                                      ldr r1, [sp, #8]
00039210  00 00 9f e7                                      ldr r0, [pc, r0]
00039214  00 00 90 e5                                      ldr r0, [r0]
00039218  01 00 50 e0                                      subs r0, r0, r1
0003921c  f6 ff ff 1a                                      bne #0x391fc
00039220  08 00 a0 e1                                      mov r0, r8
00039224  05 10 a0 e1                                      mov r1, r5
00039228  14 00 00 ea                                      b #0x39280
0003922c  00 00 52 e3                                      cmp r2, #0
00039230  ea ff ff 0a                                      beq #0x391e0
00039234  78 00 9f e5                                      ldr r0, [pc, #0x78]
00039238  08 10 9d e5                                      ldr r1, [sp, #8]
0003923c  00 00 9f e7                                      ldr r0, [pc, r0]
00039240  00 00 90 e5                                      ldr r0, [r0]
00039244  01 00 50 e0                                      subs r0, r0, r1
00039248  eb ff ff 1a                                      bne #0x391fc
0003924c  08 00 a0 e1                                      mov r0, r8
00039250  05 10 a0 e1                                      mov r1, r5
00039254  0a 00 00 ea                                      b #0x39284
00039258  00 00 59 e3                                      cmp sb, #0
0003925c  df ff ff 0a                                      beq #0x391e0
00039260  40 00 9f e5                                      ldr r0, [pc, #0x40]
00039264  08 10 9d e5                                      ldr r1, [sp, #8]
00039268  00 00 9f e7                                      ldr r0, [pc, r0]
0003926c  00 00 90 e5                                      ldr r0, [r0]
00039270  01 00 50 e0                                      subs r0, r0, r1
00039274  e0 ff ff 1a                                      bne #0x391fc
00039278  08 00 a0 e1                                      mov r0, r8
0003927c  04 10 a0 e1                                      mov r1, r4
00039280  09 20 a0 e1                                      mov r2, sb
00039284  1c d0 4b e2                                      sub sp, fp, #0x1c
00039288  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0003928c  52 e3 ff ea                                      b #0x31fdc
00039290  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00039294  00 00 8f e0                                      add r0, pc, r0
00039298  0f e0 a0 e1                                      mov lr, pc
0003929c  72 e3 ff ea                                      b #0x3206c
000392a0  d4 35 0a 00                                      ldrdeq r3, r4, [sl], -r4
000392a4  4d f8 07 00                                      andeq pc, r7, sp, asr #16
000392a8  48 32 0a 00                                      andeq r3, sl, r8, asr #4
000392ac  d8 33 0a 00                                      ldrdeq r3, r4, [sl], -r8
000392b0  a0 32 0a 00                                      andeq r3, sl, r0, lsr #5
000392b4  74 32 0a 00                                      andeq r3, sl, r4, ror r2
000392b8  e8 34 0a 00                                      andeq r3, sl, r8, ror #9
000392bc  c8 32 0a 00                                      andeq r3, sl, r8, asr #5
