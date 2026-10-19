; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00798054, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_array
; alias: _ZNK7gameswf8as_array2isEi
; demangled: gameswf::as_array::is(int) const
; decoder-mode: arm
00798054  10 00 51 e3                                      cmp r1, #0x10
00798058  01 00 a0 03                                      moveq r0, #1
0079805c  1e ff 2f 01                                      bxeq lr
00798060  01 00 71 e2                                      rsbs r0, r1, #1
00798064  00 00 a0 33                                      movlo r0, #0
00798068  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079806c, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array8is_indexERKNS_10tu_stringiE
; demangled: gameswf::as_array::is_index(gameswf::tu_stringi const&)
; decoder-mode: arm
0079806c  d0 30 d1 e1                                      ldrsb r3, [r1]
00798070  01 00 73 e3                                      cmn r3, #1
00798074  0c 30 91 05                                      ldreq r3, [r1, #0xc]
00798078  01 30 81 12                                      addne r3, r1, #1
0079807c  00 20 d3 e5                                      ldrb r2, [r3]
00798080  00 00 52 e3                                      cmp r2, #0
00798084  0c 00 00 0a                                      beq #0x7980bc
00798088  30 20 42 e2                                      sub r2, r2, #0x30
0079808c  72 20 ef e6                                      uxtb r2, r2
00798090  09 00 52 e3                                      cmp r2, #9
00798094  02 00 00 9a                                      bls #0x7980a4
00798098  09 00 00 ea                                      b #0x7980c4
0079809c  09 00 51 e3                                      cmp r1, #9
007980a0  07 00 00 8a                                      bhi #0x7980c4
007980a4  01 20 d3 e5                                      ldrb r2, [r3, #1]
007980a8  01 30 83 e2                                      add r3, r3, #1
007980ac  30 10 42 e2                                      sub r1, r2, #0x30
007980b0  00 00 52 e3                                      cmp r2, #0
007980b4  71 10 ef e6                                      uxtb r1, r1
007980b8  f7 ff ff 1a                                      bne #0x79809c
007980bc  01 00 a0 e3                                      mov r0, #1
007980c0  1e ff 2f e1                                      bx lr
007980c4  00 00 a0 e3                                      mov r0, #0
007980c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007980cc, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array3popEPNS_8as_valueE
; demangled: gameswf::as_array::pop(gameswf::as_value*)
; decoder-mode: arm
007980cc  70 40 2d e9                                      push {r4, r5, r6, lr}
007980d0  00 40 a0 e1                                      mov r4, r0
007980d4  50 20 90 e5                                      ldr r2, [r0, #0x50]
007980d8  4c 30 b4 e5                                      ldr r3, [r4, #0x4c]!
007980dc  00 50 a0 e1                                      mov r5, r0
007980e0  01 20 42 e2                                      sub r2, r2, #1
007980e4  01 00 a0 e1                                      mov r0, r1
007980e8  0c 10 a0 e3                                      mov r1, #0xc
007980ec  91 32 21 e0                                      mla r1, r1, r2, r3
007980f0  91 fd ff eb                                      bl #0x79773c
007980f4  50 10 95 e5                                      ldr r1, [r5, #0x50]
007980f8  04 00 a0 e1                                      mov r0, r4
007980fc  01 10 41 e2                                      sub r1, r1, #1
00798100  70 40 bd e8                                      pop {r4, r5, r6, lr}
00798104  a6 9a ff ea                                      b #0x77eba4

; FUNCTION 0x00798108, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10set_memberEiRKNS_8as_valueE
; demangled: gameswf::as_array::set_member(int, gameswf::as_value const&)
; decoder-mode: arm
00798108  70 40 2d e9                                      push {r4, r5, r6, lr}
0079810c  00 40 51 e2                                      subs r4, r1, #0
00798110  00 50 a0 e1                                      mov r5, r0
00798114  02 60 a0 e1                                      mov r6, r2
00798118  13 00 00 ba                                      blt #0x79816c
0079811c  50 30 90 e5                                      ldr r3, [r0, #0x50]
00798120  03 00 54 e1                                      cmp r4, r3
00798124  06 00 00 aa                                      bge #0x798144
00798128  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0079812c  0c 00 a0 e3                                      mov r0, #0xc
00798130  02 10 a0 e1                                      mov r1, r2
00798134  90 34 20 e0                                      mla r0, r0, r4, r3
00798138  7f fd ff eb                                      bl #0x79773c
0079813c  01 00 a0 e3                                      mov r0, #1
00798140  70 80 bd e8                                      pop {r4, r5, r6, pc}
00798144  01 10 84 e2                                      add r1, r4, #1
00798148  4c 00 80 e2                                      add r0, r0, #0x4c
0079814c  94 9a ff eb                                      bl #0x77eba4
00798150  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00798154  0c 00 a0 e3                                      mov r0, #0xc
00798158  06 10 a0 e1                                      mov r1, r6
0079815c  90 34 20 e0                                      mla r0, r0, r4, r3
00798160  75 fd ff eb                                      bl #0x79773c
00798164  01 00 a0 e3                                      mov r0, #1
00798168  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079816c  00 00 a0 e3                                      mov r0, #0
00798170  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00798174, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10get_memberEiPNS_8as_valueE
; demangled: gameswf::as_array::get_member(int, gameswf::as_value*)
; decoder-mode: arm
00798174  00 00 51 e3                                      cmp r1, #0
00798178  10 40 2d e9                                      push {r4, lr}
0079817c  09 00 00 ba                                      blt #0x7981a8
00798180  50 30 90 e5                                      ldr r3, [r0, #0x50]
00798184  03 00 51 e1                                      cmp r1, r3
00798188  06 00 00 aa                                      bge #0x7981a8
0079818c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
00798190  02 00 a0 e1                                      mov r0, r2
00798194  0c 20 a0 e3                                      mov r2, #0xc
00798198  92 31 21 e0                                      mla r1, r2, r1, r3
0079819c  66 fd ff eb                                      bl #0x79773c
007981a0  01 00 a0 e3                                      mov r0, #1
007981a4  10 80 bd e8                                      pop {r4, pc}
007981a8  00 00 a0 e3                                      mov r0, #0
007981ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007982ec, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::as_array::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
007982ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007982f0  08 d0 4d e2                                      sub sp, sp, #8
007982f4  08 30 8d e2                                      add r3, sp, #8
007982f8  04 00 23 e5                                      str r0, [r3, #-4]!
007982fc  01 70 a0 e1                                      mov r7, r1
00798300  00 60 a0 e1                                      mov r6, r0
00798304  03 10 a0 e1                                      mov r1, r3
00798308  07 00 a0 e1                                      mov r0, r7
0079830c  02 80 a0 e1                                      mov r8, r2
00798310  1c 42 ff eb                                      bl #0x768b88
00798314  00 00 50 e3                                      cmp r0, #0
00798318  01 00 00 ba                                      blt #0x798324
0079831c  08 d0 8d e2                                      add sp, sp, #8
00798320  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00798324  06 00 a0 e1                                      mov r0, r6
00798328  07 10 a0 e1                                      mov r1, r7
0079832c  08 20 a0 e1                                      mov r2, r8
00798330  9e 46 ff eb                                      bl #0x769db0
00798334  50 00 96 e5                                      ldr r0, [r6, #0x50]
00798338  00 00 50 e3                                      cmp r0, #0
0079833c  f6 ff ff da                                      ble #0x79831c
00798340  00 40 a0 e3                                      mov r4, #0
00798344  04 50 a0 e1                                      mov r5, r4
00798348  01 00 00 ea                                      b #0x798354
0079834c  00 00 55 e1                                      cmp r5, r0
00798350  f1 ff ff aa                                      bge #0x79831c
00798354  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
00798358  01 50 85 e2                                      add r5, r5, #1
0079835c  04 30 83 e0                                      add r3, r3, r4
00798360  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
00798364  0c 40 84 e2                                      add r4, r4, #0xc
00798368  05 00 52 e3                                      cmp r2, #5
0079836c  f6 ff ff 1a                                      bne #0x79834c
00798370  04 30 93 e5                                      ldr r3, [r3, #4]
00798374  07 10 a0 e1                                      mov r1, r7
00798378  08 20 a0 e1                                      mov r2, r8
0079837c  00 00 53 e3                                      cmp r3, #0
00798380  f1 ff ff 0a                                      beq #0x79834c
00798384  03 00 a0 e1                                      mov r0, r3
00798388  00 30 93 e5                                      ldr r3, [r3]
0079838c  0f e0 a0 e1                                      mov lr, pc
00798390  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00798394  50 00 96 e5                                      ldr r0, [r6, #0x50]
00798398  eb ff ff ea                                      b #0x79834c

; FUNCTION 0x0079839c, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10this_aliveEv
; demangled: gameswf::as_array::this_alive()
; decoder-mode: arm
0079839c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007983a0  2c a0 80 e2                                      add sl, r0, #0x2c
007983a4  00 60 a0 e1                                      mov r6, r0
007983a8  0a 00 a0 e1                                      mov r0, sl
007983ac  ab f3 fe eb                                      bl #0x755260
007983b0  30 30 96 e5                                      ldr r3, [r6, #0x30]
007983b4  34 20 96 e5                                      ldr r2, [r6, #0x34]
007983b8  30 30 93 e5                                      ldr r3, [r3, #0x30]
007983bc  03 00 52 e1                                      cmp r2, r3
007983c0  20 00 00 0a                                      beq #0x798448
007983c4  06 00 a0 e1                                      mov r0, r6
007983c8  52 50 ff eb                                      bl #0x76c518
007983cc  50 80 96 e5                                      ldr r8, [r6, #0x50]
007983d0  00 00 58 e3                                      cmp r8, #0
007983d4  1b 00 00 da                                      ble #0x798448
007983d8  00 40 a0 e3                                      mov r4, #0
007983dc  04 50 a0 e1                                      mov r5, r4
007983e0  01 00 00 ea                                      b #0x7983ec
007983e4  08 00 55 e1                                      cmp r5, r8
007983e8  16 00 00 0a                                      beq #0x798448
007983ec  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007983f0  01 50 85 e2                                      add r5, r5, #1
007983f4  04 30 83 e0                                      add r3, r3, r4
007983f8  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007983fc  0c 40 84 e2                                      add r4, r4, #0xc
00798400  05 00 52 e3                                      cmp r2, #5
00798404  f6 ff ff 1a                                      bne #0x7983e4
00798408  04 70 93 e5                                      ldr r7, [r3, #4]
0079840c  0a 00 a0 e1                                      mov r0, sl
00798410  00 00 57 e3                                      cmp r7, #0
00798414  f2 ff ff 0a                                      beq #0x7983e4
00798418  90 f3 fe eb                                      bl #0x755260
0079841c  30 30 96 e5                                      ldr r3, [r6, #0x30]
00798420  34 20 97 e5                                      ldr r2, [r7, #0x34]
00798424  07 00 a0 e1                                      mov r0, r7
00798428  30 30 93 e5                                      ldr r3, [r3, #0x30]
0079842c  03 00 52 e1                                      cmp r2, r3
00798430  eb ff ff 0a                                      beq #0x7983e4
00798434  00 30 97 e5                                      ldr r3, [r7]
00798438  0f e0 a0 e1                                      mov lr, pc
0079843c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00798440  08 00 55 e1                                      cmp r5, r8
00798444  e8 ff ff 1a                                      bne #0x7983ec
00798448  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0079844c, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_array::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
0079844c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00798450  02 60 a0 e1                                      mov r6, r2
00798454  00 50 a0 e1                                      mov r5, r0
00798458  01 40 a0 e1                                      mov r4, r1
0079845c  02 ff ff eb                                      bl #0x79806c
00798460  00 00 50 e3                                      cmp r0, #0
00798464  0e 00 00 0a                                      beq #0x7984a4
00798468  d0 20 d4 e1                                      ldrsb r2, [r4]
0079846c  00 30 95 e5                                      ldr r3, [r5]
00798470  01 00 72 e3                                      cmn r2, #1
00798474  01 00 84 12                                      addne r0, r4, #1
00798478  0c 00 94 05                                      ldreq r0, [r4, #0xc]
0079847c  24 70 93 e5                                      ldr r7, [r3, #0x24]
00798480  03 d7 ed eb                                      bl #0x30e094
00798484  06 20 a0 e1                                      mov r2, r6
00798488  00 10 a0 e1                                      mov r1, r0
0079848c  05 00 a0 e1                                      mov r0, r5
00798490  37 ff 2f e1                                      blx r7
00798494  00 00 50 e3                                      cmp r0, #0
00798498  01 00 00 0a                                      beq #0x7984a4
0079849c  01 00 a0 e3                                      mov r0, #1
007984a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007984a4  05 00 a0 e1                                      mov r0, r5
007984a8  04 10 a0 e1                                      mov r1, r4
007984ac  06 20 a0 e1                                      mov r2, r6
007984b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007984b4  49 4f ff ea                                      b #0x76c1e0

; FUNCTION 0x007984b8, declared_size=164, range_size=164, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_array::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007984b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007984bc  00 50 a0 e1                                      mov r5, r0
007984c0  07 00 a0 e3                                      mov r0, #7
007984c4  01 60 a0 e1                                      mov r6, r1
007984c8  02 40 a0 e1                                      mov r4, r2
007984cc  4d 52 ff eb                                      bl #0x76ce08
007984d0  00 00 50 e3                                      cmp r0, #0
007984d4  04 00 00 0a                                      beq #0x7984ec
007984d8  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
007984dc  06 00 53 e3                                      cmp r3, #6
007984e0  18 00 00 0a                                      beq #0x798548
007984e4  01 00 a0 e3                                      mov r0, #1
007984e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007984ec  05 00 a0 e1                                      mov r0, r5
007984f0  06 10 a0 e1                                      mov r1, r6
007984f4  04 20 a0 e1                                      mov r2, r4
007984f8  15 43 ff eb                                      bl #0x769154
007984fc  00 00 50 e3                                      cmp r0, #0
00798500  f7 ff ff 1a                                      bne #0x7984e4
00798504  05 00 a0 e1                                      mov r0, r5
00798508  06 10 a0 e1                                      mov r1, r6
0079850c  d6 fe ff eb                                      bl #0x79806c
00798510  00 00 50 e3                                      cmp r0, #0
00798514  f3 ff ff 0a                                      beq #0x7984e8
00798518  d0 20 d6 e1                                      ldrsb r2, [r6]
0079851c  00 30 95 e5                                      ldr r3, [r5]
00798520  01 00 72 e3                                      cmn r2, #1
00798524  01 00 86 12                                      addne r0, r6, #1
00798528  0c 00 96 05                                      ldreq r0, [r6, #0xc]
0079852c  28 70 93 e5                                      ldr r7, [r3, #0x28]
00798530  d7 d6 ed eb                                      bl #0x30e094
00798534  04 20 a0 e1                                      mov r2, r4
00798538  00 10 a0 e1                                      mov r1, r0
0079853c  05 00 a0 e1                                      mov r0, r5
00798540  37 ff 2f e1                                      blx r7
00798544  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00798548  04 00 a0 e1                                      mov r0, r4
0079854c  05 10 a0 e1                                      mov r1, r5
00798550  a9 f9 ff eb                                      bl #0x796bfc
00798554  01 00 a0 e3                                      mov r0, #1
00798558  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0079855c, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_arrayC1EPNS_6playerE
; demangled: gameswf::as_array::as_array(gameswf::player*)
; decoder-mode: arm
0079855c  70 40 2d e9                                      push {r4, r5, r6, lr}
00798560  94 50 9f e5                                      ldr r5, [pc, #0x94]
00798564  10 d0 4d e2                                      sub sp, sp, #0x10
00798568  00 40 a0 e1                                      mov r4, r0
0079856c  db 4d ff eb                                      bl #0x76bce0
00798570  88 10 9f e5                                      ldr r1, [pc, #0x88]
00798574  05 50 8f e0                                      add r5, pc, r5
00798578  48 20 94 e5                                      ldr r2, [r4, #0x48]
0079857c  01 10 95 e7                                      ldr r1, [r5, r1]
00798580  00 30 e0 e3                                      mvn r3, #0
00798584  13 20 d7 e7                                      bfi r2, r3, #0, #0x18
00798588  08 10 81 e2                                      add r1, r1, #8
0079858c  00 10 84 e5                                      str r1, [r4]
00798590  01 10 a0 e3                                      mov r1, #1
00798594  38 10 c4 e5                                      strb r1, [r4, #0x38]
00798598  64 10 9f e5                                      ldr r1, [pc, #0x64]
0079859c  00 30 a0 e3                                      mov r3, #0
007985a0  22 0c a0 e1                                      lsr r0, r2, #0x18
007985a4  13 00 c0 e7                                      bfi r0, r3, #0, #1
007985a8  04 60 8d e2                                      add r6, sp, #4
007985ac  48 20 84 e5                                      str r2, [r4, #0x48]
007985b0  39 30 c4 e5                                      strb r3, [r4, #0x39]
007985b4  4c 30 84 e5                                      str r3, [r4, #0x4c]
007985b8  50 30 84 e5                                      str r3, [r4, #0x50]
007985bc  54 30 84 e5                                      str r3, [r4, #0x54]
007985c0  58 30 c4 e5                                      strb r3, [r4, #0x58]
007985c4  4b 00 c4 e5                                      strb r0, [r4, #0x4b]
007985c8  01 10 95 e7                                      ldr r1, [r5, r1]
007985cc  06 00 a0 e1                                      mov r0, r6
007985d0  05 30 cd e5                                      strb r3, [sp, #5]
007985d4  04 30 cd e5                                      strb r3, [sp, #4]
007985d8  30 fb ff eb                                      bl #0x7972a0
007985dc  04 00 a0 e1                                      mov r0, r4
007985e0  06 10 a0 e1                                      mov r1, r6
007985e4  c7 41 ff eb                                      bl #0x768d08
007985e8  06 00 a0 e1                                      mov r0, r6
007985ec  cc fa ff eb                                      bl #0x797124
007985f0  04 00 a0 e1                                      mov r0, r4
007985f4  10 d0 8d e2                                      add sp, sp, #0x10
007985f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007985fc  1c c5 1f 00 e0 09 00 00 34 35 00 00              .byte 0x1c, 0xc5, 0x1f, 0x00, 0xe0, 0x09, 0x00, 0x00, 0x34, 0x35, 0x00, 0x00

; FUNCTION 0x00798608, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_arrayC2EPNS_6playerE
; demangled: gameswf::as_array::as_array(gameswf::player*)
; decoder-mode: arm
00798608  70 40 2d e9                                      push {r4, r5, r6, lr}
0079860c  94 50 9f e5                                      ldr r5, [pc, #0x94]
00798610  10 d0 4d e2                                      sub sp, sp, #0x10
00798614  00 40 a0 e1                                      mov r4, r0
00798618  b0 4d ff eb                                      bl #0x76bce0
0079861c  88 10 9f e5                                      ldr r1, [pc, #0x88]
00798620  05 50 8f e0                                      add r5, pc, r5
00798624  48 20 94 e5                                      ldr r2, [r4, #0x48]
00798628  01 10 95 e7                                      ldr r1, [r5, r1]
0079862c  00 30 e0 e3                                      mvn r3, #0
00798630  13 20 d7 e7                                      bfi r2, r3, #0, #0x18
00798634  08 10 81 e2                                      add r1, r1, #8
00798638  00 10 84 e5                                      str r1, [r4]
0079863c  01 10 a0 e3                                      mov r1, #1
00798640  38 10 c4 e5                                      strb r1, [r4, #0x38]
00798644  64 10 9f e5                                      ldr r1, [pc, #0x64]
00798648  00 30 a0 e3                                      mov r3, #0
0079864c  22 0c a0 e1                                      lsr r0, r2, #0x18
00798650  13 00 c0 e7                                      bfi r0, r3, #0, #1
00798654  04 60 8d e2                                      add r6, sp, #4
00798658  48 20 84 e5                                      str r2, [r4, #0x48]
0079865c  39 30 c4 e5                                      strb r3, [r4, #0x39]
00798660  4c 30 84 e5                                      str r3, [r4, #0x4c]
00798664  50 30 84 e5                                      str r3, [r4, #0x50]
00798668  54 30 84 e5                                      str r3, [r4, #0x54]
0079866c  58 30 c4 e5                                      strb r3, [r4, #0x58]
00798670  4b 00 c4 e5                                      strb r0, [r4, #0x4b]
00798674  01 10 95 e7                                      ldr r1, [r5, r1]
00798678  06 00 a0 e1                                      mov r0, r6
0079867c  05 30 cd e5                                      strb r3, [sp, #5]
00798680  04 30 cd e5                                      strb r3, [sp, #4]
00798684  05 fb ff eb                                      bl #0x7972a0
00798688  04 00 a0 e1                                      mov r0, r4
0079868c  06 10 a0 e1                                      mov r1, r6
00798690  9c 41 ff eb                                      bl #0x768d08
00798694  06 00 a0 e1                                      mov r0, r6
00798698  a1 fa ff eb                                      bl #0x797124
0079869c  04 00 a0 e1                                      mov r0, r4
007986a0  10 d0 8d e2                                      add sp, sp, #0x10
007986a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007986a8  70 c4 1f 00 e0 09 00 00 34 35 00 00              .byte 0x70, 0xc4, 0x1f, 0x00, 0xe0, 0x09, 0x00, 0x00, 0x34, 0x35, 0x00, 0x00

; FUNCTION 0x00798adc, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array9to_stringEv
; demangled: gameswf::as_array::to_string()
; decoder-mode: arm
00798adc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00798ae0  38 80 80 e2                                      add r8, r0, #0x38
00798ae4  00 70 a0 e1                                      mov r7, r0
00798ae8  1c d0 4d e2                                      sub sp, sp, #0x1c
00798aec  08 00 a0 e1                                      mov r0, r8
00798af0  00 10 a0 e3                                      mov r1, #0
00798af4  86 e4 fe eb                                      bl #0x751d14
00798af8  d8 33 d7 e1                                      ldrsb r3, [r7, #0x38]
00798afc  00 50 a0 e3                                      mov r5, #0
00798b00  00 20 e0 e3                                      mvn r2, #0
00798b04  01 00 73 e3                                      cmn r3, #1
00798b08  44 30 97 05                                      ldreq r3, [r7, #0x44]
00798b0c  39 30 87 12                                      addne r3, r7, #0x39
00798b10  00 50 c3 e5                                      strb r5, [r3]
00798b14  48 30 97 e5                                      ldr r3, [r7, #0x48]
00798b18  50 a0 97 e5                                      ldr sl, [r7, #0x50]
00798b1c  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
00798b20  05 00 5a e1                                      cmp sl, r5
00798b24  48 30 87 e5                                      str r3, [r7, #0x48]
00798b28  1f 00 00 da                                      ble #0x798bac
00798b2c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00798b30  02 b0 8a e0                                      add fp, sl, r2
00798b34  05 40 a0 e1                                      mov r4, r5
00798b38  03 30 8f e0                                      add r3, pc, r3
00798b3c  04 30 8d e5                                      str r3, [sp, #4]
00798b40  0c 90 8d e2                                      add sb, sp, #0xc
00798b44  05 60 a0 e1                                      mov r6, r5
00798b48  04 00 00 ea                                      b #0x798b60
00798b4c  09 00 a0 e1                                      mov r0, sb
00798b50  73 f9 ff eb                                      bl #0x797124
00798b54  0a 00 54 e1                                      cmp r4, sl
00798b58  0c 50 85 e2                                      add r5, r5, #0xc
00798b5c  12 00 00 0a                                      beq #0x798bac
00798b60  4c 00 97 e5                                      ldr r0, [r7, #0x4c]
00798b64  0c 60 cd e5                                      strb r6, [sp, #0xc]
00798b68  0d 60 cd e5                                      strb r6, [sp, #0xd]
00798b6c  05 00 80 e0                                      add r0, r0, r5
00798b70  0f f9 ff eb                                      bl #0x796fb4
00798b74  00 10 a0 e1                                      mov r1, r0
00798b78  08 00 a0 e1                                      mov r0, r8
00798b7c  92 e5 fe eb                                      bl #0x7521cc
00798b80  04 00 5b e1                                      cmp fp, r4
00798b84  01 40 84 e2                                      add r4, r4, #1
00798b88  ef ff ff da                                      ble #0x798b4c
00798b8c  08 00 a0 e1                                      mov r0, r8
00798b90  04 10 9d e5                                      ldr r1, [sp, #4]
00798b94  8c e5 fe eb                                      bl #0x7521cc
00798b98  09 00 a0 e1                                      mov r0, sb
00798b9c  60 f9 ff eb                                      bl #0x797124
00798ba0  0a 00 54 e1                                      cmp r4, sl
00798ba4  0c 50 85 e2                                      add r5, r5, #0xc
00798ba8  ec ff ff 1a                                      bne #0x798b60
00798bac  d8 33 d7 e1                                      ldrsb r3, [r7, #0x38]
00798bb0  01 00 73 e3                                      cmn r3, #1
00798bb4  39 00 87 12                                      addne r0, r7, #0x39
00798bb8  44 00 97 05                                      ldreq r0, [r7, #0x44]
00798bbc  1c d0 8d e2                                      add sp, sp, #0x1c
00798bc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00798bc4  88 58 12 00                                      .byte 0x88, 0x58, 0x12, 0x00

; FUNCTION 0x00798bc8, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array9enumerateEPNS_14as_environmentE
; demangled: gameswf::as_array::enumerate(gameswf::as_environment*)
; decoder-mode: arm
00798bc8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00798bcc  00 40 a0 e1                                      mov r4, r0
00798bd0  0c d0 4d e2                                      sub sp, sp, #0xc
00798bd4  01 60 a0 e1                                      mov r6, r1
00798bd8  30 48 ff eb                                      bl #0x76aca0
00798bdc  50 50 94 e5                                      ldr r5, [r4, #0x50]
00798be0  00 00 55 e3                                      cmp r5, #0
00798be4  08 00 00 da                                      ble #0x798c0c
00798be8  00 40 a0 e3                                      mov r4, #0
00798bec  04 70 8d e2                                      add r7, sp, #4
00798bf0  04 40 8d e5                                      str r4, [sp, #4]
00798bf4  06 00 a0 e1                                      mov r0, r6
00798bf8  01 40 84 e2                                      add r4, r4, #1
00798bfc  07 10 a0 e1                                      mov r1, r7
00798c00  a5 1e ff eb                                      bl #0x76069c
00798c04  05 00 54 e1                                      cmp r4, r5
00798c08  f8 ff ff 1a                                      bne #0x798bf0
00798c0c  0c d0 8d e2                                      add sp, sp, #0xc
00798c10  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00799134, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_array4pushERKNS_8as_valueE
; demangled: gameswf::as_array::push(gameswf::as_value const&)
; decoder-mode: arm
00799134  4c 00 80 e2                                      add r0, r0, #0x4c
00799138  d6 3f ff ea                                      b #0x769098

; FUNCTION 0x0079a440, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_arrayD1Ev
; demangled: gameswf::as_array::~as_array()
; decoder-mode: arm
0079a440  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0079a444  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0079a448  70 40 2d e9                                      push {r4, r5, r6, lr}
0079a44c  03 30 8f e0                                      add r3, pc, r3
0079a450  02 20 93 e7                                      ldr r2, [r3, r2]
0079a454  00 50 a0 e1                                      mov r5, r0
0079a458  00 40 a0 e1                                      mov r4, r0
0079a45c  08 20 82 e2                                      add r2, r2, #8
0079a460  4c 20 85 e4                                      str r2, [r5], #0x4c
0079a464  00 10 a0 e3                                      mov r1, #0
0079a468  05 00 a0 e1                                      mov r0, r5
0079a46c  cc 91 ff eb                                      bl #0x77eba4
0079a470  05 00 a0 e1                                      mov r0, r5
0079a474  00 10 a0 e3                                      mov r1, #0
0079a478  e3 ff fe eb                                      bl #0x75a40c
0079a47c  d8 33 d4 e1                                      ldrsb r3, [r4, #0x38]
0079a480  01 00 73 e3                                      cmn r3, #1
0079a484  03 00 00 0a                                      beq #0x79a498
0079a488  04 00 a0 e1                                      mov r0, r4
0079a48c  82 3d ff eb                                      bl #0x769a9c
0079a490  04 00 a0 e1                                      mov r0, r4
0079a494  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079a498  44 00 94 e5                                      ldr r0, [r4, #0x44]
0079a49c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0079a4a0  a4 e1 fe eb                                      bl #0x752b38
0079a4a4  04 00 a0 e1                                      mov r0, r4
0079a4a8  7b 3d ff eb                                      bl #0x769a9c
0079a4ac  04 00 a0 e1                                      mov r0, r4
0079a4b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079a4b4  44 a6 1f 00 e0 09 00 00                          .byte 0x44, 0xa6, 0x1f, 0x00, 0xe0, 0x09, 0x00, 0x00

; FUNCTION 0x0079a4bc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_array
; alias: _ZN7gameswf8as_arrayD0Ev
; demangled: gameswf::as_array::~as_array()
; decoder-mode: arm
0079a4bc  10 40 2d e9                                      push {r4, lr}
0079a4c0  00 40 a0 e1                                      mov r4, r0
0079a4c4  dd ff ff eb                                      bl #0x79a440
0079a4c8  04 00 a0 e1                                      mov r0, r4
0079a4cc  77 cf ed eb                                      bl #0x30e2b0
0079a4d0  04 00 a0 e1                                      mov r0, r4
0079a4d4  10 80 bd e8                                      pop {r4, pc}
