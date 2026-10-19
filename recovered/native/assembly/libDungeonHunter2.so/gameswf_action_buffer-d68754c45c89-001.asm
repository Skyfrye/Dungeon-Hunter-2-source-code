; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007bad44, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_buffer9enumerateEPNS_14as_environmentEPNS_9as_objectE
; demangled: gameswf::action_buffer::enumerate(gameswf::as_environment*, gameswf::as_object*)
; decoder-mode: arm
007bad44  70 40 2d e9                                      push {r4, r5, r6, lr}
007bad48  10 d0 4d e2                                      sub sp, sp, #0x10
007bad4c  00 30 a0 e3                                      mov r3, #0
007bad50  04 40 8d e2                                      add r4, sp, #4
007bad54  00 60 a0 e1                                      mov r6, r0
007bad58  01 50 a0 e1                                      mov r5, r1
007bad5c  04 00 a0 e1                                      mov r0, r4
007bad60  03 10 a0 e1                                      mov r1, r3
007bad64  04 30 cd e5                                      strb r3, [sp, #4]
007bad68  05 30 cd e5                                      strb r3, [sp, #5]
007bad6c  37 71 ff eb                                      bl #0x797250
007bad70  06 00 a0 e1                                      mov r0, r6
007bad74  04 10 a0 e1                                      mov r1, r4
007bad78  c6 b8 fe eb                                      bl #0x769098
007bad7c  00 00 55 e3                                      cmp r5, #0
007bad80  08 00 00 0a                                      beq #0x7bada8
007bad84  05 00 a0 e1                                      mov r0, r5
007bad88  06 10 a0 e1                                      mov r1, r6
007bad8c  00 30 95 e5                                      ldr r3, [r5]
007bad90  0f e0 a0 e1                                      mov lr, pc
007bad94  30 f0 93 e5                                      ldr pc, [r3, #0x30]
007bad98  04 00 a0 e1                                      mov r0, r4
007bad9c  e0 70 ff eb                                      bl #0x797124
007bada0  10 d0 8d e2                                      add sp, sp, #0x10
007bada4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007bada8  04 00 a0 e1                                      mov r0, r4
007badac  dc 70 ff eb                                      bl #0x797124
007badb0  fa ff ff ea                                      b #0x7bada0

; FUNCTION 0x007bae08, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_bufferC1Ev
; demangled: gameswf::action_buffer::action_buffer()
; decoder-mode: arm
007bae08  70 40 2d e9                                      push {r4, r5, r6, lr}
007bae0c  00 10 a0 e3                                      mov r1, #0
007bae10  00 40 a0 e1                                      mov r4, r0
007bae14  24 00 a0 e3                                      mov r0, #0x24
007bae18  62 5f fe eb                                      bl #0x752ba8
007bae1c  00 50 a0 e1                                      mov r5, r0
007bae20  13 ed ff eb                                      bl #0x7b6274
007bae24  00 30 a0 e3                                      mov r3, #0
007bae28  10 30 85 e5                                      str r3, [r5, #0x10]
007bae2c  14 30 85 e5                                      str r3, [r5, #0x14]
007bae30  18 30 85 e5                                      str r3, [r5, #0x18]
007bae34  1c 30 85 e5                                      str r3, [r5, #0x1c]
007bae38  20 30 c5 e5                                      strb r3, [r5, #0x20]
007bae3c  00 50 84 e5                                      str r5, [r4]
007bae40  10 20 95 e5                                      ldr r2, [r5, #0x10]
007bae44  04 00 a0 e1                                      mov r0, r4
007bae48  01 20 82 e2                                      add r2, r2, #1
007bae4c  10 20 85 e5                                      str r2, [r5, #0x10]
007bae50  00 20 e0 e3                                      mvn r2, #0
007bae54  0c 00 84 e9                                      stmib r4, {r2, r3}
007bae58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007bae5c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_bufferC2Ev
; demangled: gameswf::action_buffer::action_buffer()
; decoder-mode: arm
007bae5c  70 40 2d e9                                      push {r4, r5, r6, lr}
007bae60  00 10 a0 e3                                      mov r1, #0
007bae64  00 40 a0 e1                                      mov r4, r0
007bae68  24 00 a0 e3                                      mov r0, #0x24
007bae6c  4d 5f fe eb                                      bl #0x752ba8
007bae70  00 50 a0 e1                                      mov r5, r0
007bae74  fe ec ff eb                                      bl #0x7b6274
007bae78  00 30 a0 e3                                      mov r3, #0
007bae7c  10 30 85 e5                                      str r3, [r5, #0x10]
007bae80  14 30 85 e5                                      str r3, [r5, #0x14]
007bae84  18 30 85 e5                                      str r3, [r5, #0x18]
007bae88  1c 30 85 e5                                      str r3, [r5, #0x1c]
007bae8c  20 30 c5 e5                                      strb r3, [r5, #0x20]
007bae90  00 50 84 e5                                      str r5, [r4]
007bae94  10 20 95 e5                                      ldr r2, [r5, #0x10]
007bae98  04 00 a0 e1                                      mov r0, r4
007bae9c  01 20 82 e2                                      add r2, r2, #1
007baea0  10 20 85 e5                                      str r2, [r5, #0x10]
007baea4  00 20 e0 e3                                      mvn r2, #0
007baea8  0c 00 84 e9                                      stmib r4, {r2, r3}
007baeac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007bafa4, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_buffer4readEPNS_6streamE
; demangled: gameswf::action_buffer::read(gameswf::stream*)
; decoder-mode: arm
007bafa4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007bafa8  00 50 a0 e1                                      mov r5, r0
007bafac  01 00 a0 e1                                      mov r0, r1
007bafb0  01 80 a0 e1                                      mov r8, r1
007bafb4  00 40 95 e5                                      ldr r4, [r5]
007bafb8  3f 23 ff eb                                      bl #0x783cbc
007bafbc  00 60 a0 e1                                      mov r6, r0
007bafc0  08 00 a0 e1                                      mov r0, r8
007bafc4  2c 23 ff eb                                      bl #0x783c7c
007bafc8  00 30 94 e5                                      ldr r3, [r4]
007bafcc  03 60 86 e0                                      add r6, r6, r3
007bafd0  06 10 60 e0                                      rsb r1, r0, r6
007bafd4  04 00 a0 e1                                      mov r0, r4
007bafd8  e8 ec ff eb                                      bl #0x7b6380
007bafdc  00 30 d8 e5                                      ldrb r3, [r8]
007bafe0  00 00 53 e3                                      cmp r3, #0
007bafe4  42 00 00 0a                                      beq #0x7bb0f4
007bafe8  08 00 a0 e1                                      mov r0, r8
007bafec  22 23 ff eb                                      bl #0x783c7c
007baff0  08 00 80 e2                                      add r0, r0, #8
007baff4  08 00 85 e5                                      str r0, [r5, #8]
007baff8  08 00 a0 e1                                      mov r0, r8
007baffc  c9 22 ff eb                                      bl #0x783b28
007bb000  00 60 94 e5                                      ldr r6, [r4]
007bb004  04 30 94 e5                                      ldr r3, [r4, #4]
007bb008  00 50 a0 e1                                      mov r5, r0
007bb00c  01 10 86 e2                                      add r1, r6, #1
007bb010  03 00 51 e1                                      cmp r1, r3
007bb014  00 10 84 b5                                      strlt r1, [r4]
007bb018  01 00 00 ba                                      blt #0x7bb024
007bb01c  04 00 a0 e1                                      mov r0, r4
007bb020  8d 7f fe eb                                      bl #0x75ae5c
007bb024  08 30 94 e5                                      ldr r3, [r4, #8]
007bb028  80 00 15 e3                                      tst r5, #0x80
007bb02c  06 50 c3 e7                                      strb r5, [r3, r6]
007bb030  02 00 00 1a                                      bne #0x7bb040
007bb034  00 00 55 e3                                      cmp r5, #0
007bb038  ee ff ff 1a                                      bne #0x7baff8
007bb03c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007bb040  08 00 a0 e1                                      mov r0, r8
007bb044  f2 22 ff eb                                      bl #0x783c14
007bb048  00 50 94 e5                                      ldr r5, [r4]
007bb04c  04 30 94 e5                                      ldr r3, [r4, #4]
007bb050  00 a0 a0 e1                                      mov sl, r0
007bb054  01 10 85 e2                                      add r1, r5, #1
007bb058  03 00 51 e1                                      cmp r1, r3
007bb05c  70 70 ef e6                                      uxtb r7, r0
007bb060  00 10 84 b5                                      strlt r1, [r4]
007bb064  01 00 00 ba                                      blt #0x7bb070
007bb068  04 00 a0 e1                                      mov r0, r4
007bb06c  7a 7f fe eb                                      bl #0x75ae5c
007bb070  08 30 94 e5                                      ldr r3, [r4, #8]
007bb074  5a 64 e7 e7                                      ubfx r6, sl, #8, #8
007bb078  05 70 c3 e7                                      strb r7, [r3, r5]
007bb07c  00 50 94 e5                                      ldr r5, [r4]
007bb080  04 30 94 e5                                      ldr r3, [r4, #4]
007bb084  01 10 85 e2                                      add r1, r5, #1
007bb088  03 00 51 e1                                      cmp r1, r3
007bb08c  00 10 84 b5                                      strlt r1, [r4]
007bb090  01 00 00 ba                                      blt #0x7bb09c
007bb094  04 00 a0 e1                                      mov r0, r4
007bb098  6f 7f fe eb                                      bl #0x75ae5c
007bb09c  08 30 94 e5                                      ldr r3, [r4, #8]
007bb0a0  00 00 5a e3                                      cmp sl, #0
007bb0a4  05 60 c3 e7                                      strb r6, [r3, r5]
007bb0a8  d2 ff ff 0a                                      beq #0x7baff8
007bb0ac  00 50 a0 e3                                      mov r5, #0
007bb0b0  08 00 a0 e1                                      mov r0, r8
007bb0b4  9b 22 ff eb                                      bl #0x783b28
007bb0b8  00 60 94 e5                                      ldr r6, [r4]
007bb0bc  04 30 94 e5                                      ldr r3, [r4, #4]
007bb0c0  00 70 a0 e1                                      mov r7, r0
007bb0c4  01 10 86 e2                                      add r1, r6, #1
007bb0c8  03 00 51 e1                                      cmp r1, r3
007bb0cc  00 10 84 b5                                      strlt r1, [r4]
007bb0d0  01 00 00 ba                                      blt #0x7bb0dc
007bb0d4  04 00 a0 e1                                      mov r0, r4
007bb0d8  5f 7f fe eb                                      bl #0x75ae5c
007bb0dc  08 30 94 e5                                      ldr r3, [r4, #8]
007bb0e0  01 50 85 e2                                      add r5, r5, #1
007bb0e4  05 00 5a e1                                      cmp sl, r5
007bb0e8  06 70 c3 e7                                      strb r7, [r3, r6]
007bb0ec  ef ff ff ca                                      bgt #0x7bb0b0
007bb0f0  c0 ff ff ea                                      b #0x7baff8
007bb0f4  08 00 a0 e1                                      mov r0, r8
007bb0f8  df 22 ff eb                                      bl #0x783c7c
007bb0fc  bc ff ff ea                                      b #0x7baff4

; FUNCTION 0x007bb1e4, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_bufferaSERKS0_
; demangled: gameswf::action_buffer::operator=(gameswf::action_buffer const&)
; decoder-mode: arm
007bb1e4  70 40 2d e9                                      push {r4, r5, r6, lr}
007bb1e8  00 40 a0 e1                                      mov r4, r0
007bb1ec  00 50 91 e5                                      ldr r5, [r1]
007bb1f0  00 00 90 e5                                      ldr r0, [r0]
007bb1f4  01 60 a0 e1                                      mov r6, r1
007bb1f8  00 00 55 e1                                      cmp r5, r0
007bb1fc  07 00 00 0a                                      beq #0x7bb220
007bb200  00 00 50 e3                                      cmp r0, #0
007bb204  00 00 00 0a                                      beq #0x7bb20c
007bb208  f9 81 fe eb                                      bl #0x75b9f4
007bb20c  00 00 55 e3                                      cmp r5, #0
007bb210  00 50 84 e5                                      str r5, [r4]
007bb214  10 30 95 15                                      ldrne r3, [r5, #0x10]
007bb218  01 30 83 12                                      addne r3, r3, #1
007bb21c  10 30 85 15                                      strne r3, [r5, #0x10]
007bb220  04 30 96 e5                                      ldr r3, [r6, #4]
007bb224  04 30 84 e5                                      str r3, [r4, #4]
007bb228  08 30 96 e5                                      ldr r3, [r6, #8]
007bb22c  08 30 84 e5                                      str r3, [r4, #8]
007bb230  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007bb8e4, declared_size=188, range_size=188, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_buffer14load_as_pluginEPNS_6playerERKNS_9tu_stringERKNS_5arrayINS_8as_valueEEE
; demangled: gameswf::action_buffer::load_as_plugin(gameswf::player*, gameswf::tu_string const&, gameswf::array<gameswf::as_value> const&)
; decoder-mode: arm
007bb8e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007bb8e8  00 30 a0 e3                                      mov r3, #0
007bb8ec  08 d0 4d e2                                      sub sp, sp, #8
007bb8f0  01 40 a0 e1                                      mov r4, r1
007bb8f4  04 30 8d e5                                      str r3, [sp, #4]
007bb8f8  02 50 a0 e1                                      mov r5, r2
007bb8fc  00 60 a0 e1                                      mov r6, r0
007bb900  a5 c3 fe eb                                      bl #0x76c79c
007bb904  04 10 a0 e1                                      mov r1, r4
007bb908  00 70 a0 e1                                      mov r7, r0
007bb90c  cb fc ff eb                                      bl #0x7bac40
007bb910  00 00 50 e3                                      cmp r0, #0
007bb914  0e 00 00 ba                                      blt #0x7bb954
007bb918  00 30 97 e5                                      ldr r3, [r7]
007bb91c  80 02 83 e0                                      add r0, r3, r0, lsl #5
007bb920  24 00 90 e5                                      ldr r0, [r0, #0x24]
007bb924  04 00 8d e5                                      str r0, [sp, #4]
007bb928  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
007bb92c  01 10 8f e0                                      add r1, pc, r1
007bb930  16 ef ff eb                                      bl #0x7b7590
007bb934  00 30 50 e2                                      subs r3, r0, #0
007bb938  03 00 a0 01                                      moveq r0, r3
007bb93c  02 00 00 0a                                      beq #0x7bb94c
007bb940  06 00 a0 e1                                      mov r0, r6
007bb944  05 10 a0 e1                                      mov r1, r5
007bb948  33 ff 2f e1                                      blx r3
007bb94c  08 d0 8d e2                                      add sp, sp, #8
007bb950  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007bb954  d0 30 d4 e1                                      ldrsb r3, [r4]
007bb958  00 10 a0 e3                                      mov r1, #0
007bb95c  04 00 a0 e3                                      mov r0, #4
007bb960  01 00 73 e3                                      cmn r3, #1
007bb964  01 70 84 12                                      addne r7, r4, #1
007bb968  0c 70 94 05                                      ldreq r7, [r4, #0xc]
007bb96c  8d 5c fe eb                                      bl #0x752ba8
007bb970  07 10 a0 e1                                      mov r1, r7
007bb974  00 80 a0 e1                                      mov r8, r0
007bb978  08 70 8d e2                                      add r7, sp, #8
007bb97c  54 ef ff eb                                      bl #0x7b76d4
007bb980  04 80 27 e5                                      str r8, [r7, #-4]!
007bb984  84 c3 fe eb                                      bl #0x76c79c
007bb988  04 10 a0 e1                                      mov r1, r4
007bb98c  07 20 a0 e1                                      mov r2, r7
007bb990  65 ff ff eb                                      bl #0x7bb72c
007bb994  04 00 9d e5                                      ldr r0, [sp, #4]
007bb998  e2 ff ff ea                                      b #0x7bb928
; mapping-symbol data/literal pool
007bb99c  e4 f0 14 00                                      .byte 0xe4, 0xf0, 0x14, 0x00

; FUNCTION 0x007bb9a0, declared_size=604, range_size=604, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_buffer17process_decl_dictEiiPNS_6playerE
; demangled: gameswf::action_buffer::process_decl_dict(int, int, gameswf::player*)
; decoder-mode: arm
007bb9a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007bb9a4  3c 42 9f e5                                      ldr r4, [pc, #0x23c]
007bb9a8  3c c2 9f e5                                      ldr ip, [pc, #0x23c]
007bb9ac  4c d0 4d e2                                      sub sp, sp, #0x4c
007bb9b0  04 40 8f e0                                      add r4, pc, r4
007bb9b4  0c 50 94 e7                                      ldr r5, [r4, ip]
007bb9b8  08 c0 8d e5                                      str ip, [sp, #8]
007bb9bc  04 c0 90 e5                                      ldr ip, [r0, #4]
007bb9c0  00 50 95 e5                                      ldr r5, [r5]
007bb9c4  0c 20 8d e5                                      str r2, [sp, #0xc]
007bb9c8  01 00 5c e1                                      cmp ip, r1
007bb9cc  44 50 8d e5                                      str r5, [sp, #0x44]
007bb9d0  01 60 a0 e1                                      mov r6, r1
007bb9d4  00 50 90 e5                                      ldr r5, [r0]
007bb9d8  05 00 00 0a                                      beq #0x7bb9f4
007bb9dc  01 00 7c e3                                      cmn ip, #1
007bb9e0  0b 00 00 0a                                      beq #0x7bba14
007bb9e4  04 02 9f e5                                      ldr r0, [pc, #0x204]
007bb9e8  0c 30 a0 e1                                      mov r3, ip
007bb9ec  00 00 8f e0                                      add r0, pc, r0
007bb9f0  e3 95 fe eb                                      bl #0x761184
007bb9f4  08 20 9d e5                                      ldr r2, [sp, #8]
007bb9f8  02 30 94 e7                                      ldr r3, [r4, r2]
007bb9fc  44 20 9d e5                                      ldr r2, [sp, #0x44]
007bba00  00 30 93 e5                                      ldr r3, [r3]
007bba04  03 00 52 e1                                      cmp r2, r3
007bba08  75 00 00 1a                                      bne #0x7bbbe4
007bba0c  4c d0 8d e2                                      add sp, sp, #0x4c
007bba10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007bba14  04 10 80 e5                                      str r1, [r0, #4]
007bba18  08 10 95 e5                                      ldr r1, [r5, #8]
007bba1c  14 a0 85 e2                                      add sl, r5, #0x14
007bba20  18 70 95 e5                                      ldr r7, [r5, #0x18]
007bba24  06 10 81 e0                                      add r1, r1, r6
007bba28  03 20 d1 e5                                      ldrb r2, [r1, #3]
007bba2c  04 80 d1 e5                                      ldrb r8, [r1, #4]
007bba30  08 84 92 e1                                      orrs r8, r2, r8, lsl #8
007bba34  5b 00 00 1a                                      bne #0x7bbba8
007bba38  07 00 58 e1                                      cmp r8, r7
007bba3c  07 00 00 da                                      ble #0x7bba60
007bba40  07 21 a0 e1                                      lsl r2, r7, #2
007bba44  00 00 a0 e3                                      mov r0, #0
007bba48  00 10 9a e5                                      ldr r1, [sl]
007bba4c  01 70 87 e2                                      add r7, r7, #1
007bba50  08 00 57 e1                                      cmp r7, r8
007bba54  02 00 81 e7                                      str r0, [r1, r2]
007bba58  04 20 82 e2                                      add r2, r2, #4
007bba5c  f9 ff ff 1a                                      bne #0x7bba48
007bba60  00 00 58 e3                                      cmp r8, #0
007bba64  18 80 85 e5                                      str r8, [r5, #0x18]
007bba68  e1 ff ff da                                      ble #0x7bb9f4
007bba6c  2c b0 83 e2                                      add fp, r3, #0x2c
007bba70  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007bba74  30 20 8d e2                                      add r2, sp, #0x30
007bba78  08 10 95 e5                                      ldr r1, [r5, #8]
007bba7c  02 a0 86 e2                                      add sl, r6, #2
007bba80  10 20 8d e5                                      str r2, [sp, #0x10]
007bba84  00 60 a0 e3                                      mov r6, #0
007bba88  04 70 83 e2                                      add r7, r3, #4
007bba8c  14 40 8d e5                                      str r4, [sp, #0x14]
007bba90  03 40 8a e2                                      add r4, sl, #3
007bba94  04 10 81 e0                                      add r1, r1, r4
007bba98  10 00 9d e5                                      ldr r0, [sp, #0x10]
007bba9c  14 90 95 e5                                      ldr sb, [r5, #0x14]
007bbaa0  f5 5f f1 eb                                      bl #0x413a7c
007bbaa4  0b 00 a0 e1                                      mov r0, fp
007bbaa8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007bbaac  06 82 fe eb                                      bl #0x75c2cc
007bbab0  06 01 89 e7                                      str r0, [sb, r6, lsl #2]
007bbab4  d0 33 dd e1                                      ldrsb r3, [sp, #0x30]
007bbab8  06 91 a0 e1                                      lsl sb, r6, #2
007bbabc  01 00 73 e3                                      cmn r3, #1
007bbac0  41 00 00 0a                                      beq #0x7bbbcc
007bbac4  08 10 95 e5                                      ldr r1, [r5, #8]
007bbac8  04 30 d1 e7                                      ldrb r3, [r1, r4]
007bbacc  00 00 53 e3                                      cmp r3, #0
007bbad0  0b 00 00 0a                                      beq #0x7bbb04
007bbad4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007bbad8  0a 00 5c e1                                      cmp ip, sl
007bbadc  0d 00 00 da                                      ble #0x7bbb18
007bbae0  04 a0 8a e2                                      add sl, sl, #4
007bbae4  02 00 00 ea                                      b #0x7bbaf4
007bbae8  01 a0 8a e2                                      add sl, sl, #1
007bbaec  07 00 5a e1                                      cmp sl, r7
007bbaf0  08 00 00 0a                                      beq #0x7bbb18
007bbaf4  0a 30 d1 e7                                      ldrb r3, [r1, sl]
007bbaf8  00 00 53 e3                                      cmp r3, #0
007bbafc  f9 ff ff 1a                                      bne #0x7bbae8
007bbb00  03 a0 4a e2                                      sub sl, sl, #3
007bbb04  01 60 86 e2                                      add r6, r6, #1
007bbb08  08 00 56 e1                                      cmp r6, r8
007bbb0c  32 00 00 0a                                      beq #0x7bbbdc
007bbb10  01 a0 8a e2                                      add sl, sl, #1
007bbb14  dd ff ff ea                                      b #0x7bba90
007bbb18  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
007bbb1c  14 40 9d e5                                      ldr r4, [sp, #0x14]
007bbb20  00 00 8f e0                                      add r0, pc, r0
007bbb24  96 95 fe eb                                      bl #0x761184
007bbb28  06 00 58 e1                                      cmp r8, r6
007bbb2c  b0 ff ff da                                      ble #0x7bb9f4
007bbb30  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
007bbb34  09 70 a0 e1                                      mov r7, sb
007bbb38  1c a0 8d e2                                      add sl, sp, #0x1c
007bbb3c  03 90 8f e0                                      add sb, pc, r3
007bbb40  0c 40 8d e5                                      str r4, [sp, #0xc]
007bbb44  03 00 00 ea                                      b #0x7bbb58
007bbb48  01 60 86 e2                                      add r6, r6, #1
007bbb4c  06 00 58 e1                                      cmp r8, r6
007bbb50  04 70 87 e2                                      add r7, r7, #4
007bbb54  11 00 00 da                                      ble #0x7bbba0
007bbb58  09 10 a0 e1                                      mov r1, sb
007bbb5c  0a 00 a0 e1                                      mov r0, sl
007bbb60  14 40 95 e5                                      ldr r4, [r5, #0x14]
007bbb64  c4 5f f1 eb                                      bl #0x413a7c
007bbb68  0b 00 a0 e1                                      mov r0, fp
007bbb6c  0a 10 a0 e1                                      mov r1, sl
007bbb70  d5 81 fe eb                                      bl #0x75c2cc
007bbb74  07 00 84 e7                                      str r0, [r4, r7]
007bbb78  dc 31 dd e1                                      ldrsb r3, [sp, #0x1c]
007bbb7c  01 00 73 e3                                      cmn r3, #1
007bbb80  f0 ff ff 1a                                      bne #0x7bbb48
007bbb84  28 00 9d e5                                      ldr r0, [sp, #0x28]
007bbb88  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bbb8c  01 60 86 e2                                      add r6, r6, #1
007bbb90  e8 5b fe eb                                      bl #0x752b38
007bbb94  06 00 58 e1                                      cmp r8, r6
007bbb98  04 70 87 e2                                      add r7, r7, #4
007bbb9c  ed ff ff ca                                      bgt #0x7bbb58
007bbba0  0c 40 9d e5                                      ldr r4, [sp, #0xc]
007bbba4  92 ff ff ea                                      b #0x7bb9f4
007bbba8  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007bbbac  02 00 58 e1                                      cmp r8, r2
007bbbb0  a0 ff ff da                                      ble #0x7bba38
007bbbb4  0a 00 a0 e1                                      mov r0, sl
007bbbb8  a8 10 88 e0                                      add r1, r8, r8, lsr #1
007bbbbc  04 30 8d e5                                      str r3, [sp, #4]
007bbbc0  0e fb ff eb                                      bl #0x7ba800
007bbbc4  04 30 9d e5                                      ldr r3, [sp, #4]
007bbbc8  9a ff ff ea                                      b #0x7bba38
007bbbcc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007bbbd0  38 10 9d e5                                      ldr r1, [sp, #0x38]
007bbbd4  d7 5b fe eb                                      bl #0x752b38
007bbbd8  b9 ff ff ea                                      b #0x7bbac4
007bbbdc  14 40 9d e5                                      ldr r4, [sp, #0x14]
007bbbe0  83 ff ff ea                                      b #0x7bb9f4
007bbbe4  c9 49 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007bbbe8  e0 90 1d 00 ac 40 00 00 3c f0 14 00 58 ef 14 00  .byte 0xe0, 0x90, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0xf0, 0x14, 0x00, 0x58, 0xef, 0x14, 0x00
007bbbf8  6c ef 14 00                                      .byte 0x6c, 0xef, 0x14, 0x00

; FUNCTION 0x007bc230, declared_size=17504, range_size=17504, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZNK7gameswf13action_buffer7executeEPNS_14as_environmentEiiPNS_8as_valueERKNS_5arrayINS_16with_stack_entryEEEb
; demangled: gameswf::action_buffer::execute(gameswf::as_environment*, int, int, gameswf::as_value*, gameswf::array<gameswf::with_stack_entry> const&, bool) const
; decoder-mode: arm
007bc230  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007bc234  a8 4f 9f e5                                      ldr r4, [pc, #0xfa8]
007bc238  a8 cf 9f e5                                      ldr ip, [pc, #0xfa8]
007bc23c  4f de 4d e2                                      sub sp, sp, #0x4f0
007bc240  0c d0 4d e2                                      sub sp, sp, #0xc
007bc244  04 40 8f e0                                      add r4, pc, r4
007bc248  2c c0 8d e5                                      str ip, [sp, #0x2c]
007bc24c  0c c0 94 e7                                      ldr ip, [r4, ip]
007bc250  20 e5 9d e5                                      ldr lr, [sp, #0x520]
007bc254  28 40 8d e5                                      str r4, [sp, #0x28]
007bc258  00 c0 9c e5                                      ldr ip, [ip]
007bc25c  02 40 a0 e1                                      mov r4, r2
007bc260  28 25 dd e5                                      ldrb r2, [sp, #0x528]
007bc264  43 6f 8d e2                                      add r6, sp, #0x10c
007bc268  00 70 a0 e3                                      mov r7, #0
007bc26c  38 00 8d e5                                      str r0, [sp, #0x38]
007bc270  01 50 a0 e1                                      mov r5, r1
007bc274  06 00 a0 e1                                      mov r0, r6
007bc278  24 15 9d e5                                      ldr r1, [sp, #0x524]
007bc27c  03 90 a0 e1                                      mov sb, r3
007bc280  48 20 8d e5                                      str r2, [sp, #0x48]
007bc284  f4 c4 8d e5                                      str ip, [sp, #0x4f4]
007bc288  50 e0 8d e5                                      str lr, [sp, #0x50]
007bc28c  0c 71 8d e5                                      str r7, [sp, #0x10c]
007bc290  10 71 8d e5                                      str r7, [sp, #0x110]
007bc294  14 71 8d e5                                      str r7, [sp, #0x114]
007bc298  18 71 cd e5                                      strb r7, [sp, #0x118]
007bc29c  2b fa ff eb                                      bl #0x7bab50
007bc2a0  05 00 a0 e1                                      mov r0, r5
007bc2a4  06 43 00 eb                                      bl #0x7ccec4
007bc2a8  f0 34 9d e5                                      ldr r3, [sp, #0x4f0]
007bc2ac  00 20 e0 e3                                      mvn r2, #0
007bc2b0  05 10 a0 e3                                      mov r1, #5
007bc2b4  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007bc2b8  f0 34 8d e5                                      str r3, [sp, #0x4f0]
007bc2bc  23 2c a0 e1                                      lsr r2, r3, #0x18
007bc2c0  38 30 9d e5                                      ldr r3, [sp, #0x38]
007bc2c4  e1 13 cd e5                                      strb r1, [sp, #0x3e1]
007bc2c8  04 90 89 e0                                      add sb, sb, r4
007bc2cc  17 20 c0 e7                                      bfi r2, r7, #0, #1
007bc2d0  01 10 a0 e3                                      mov r1, #1
007bc2d4  40 00 8d e5                                      str r0, [sp, #0x40]
007bc2d8  e0 14 cd e5                                      strb r1, [sp, #0x4e0]
007bc2dc  f3 24 cd e5                                      strb r2, [sp, #0x4f3]
007bc2e0  ec 73 cd e5                                      strb r7, [sp, #0x3ec]
007bc2e4  ed 73 cd e5                                      strb r7, [sp, #0x3ed]
007bc2e8  e0 73 cd e5                                      strb r7, [sp, #0x3e0]
007bc2ec  e4 73 8d e5                                      str r7, [sp, #0x3e4]
007bc2f0  e1 74 cd e5                                      strb r7, [sp, #0x4e1]
007bc2f4  09 00 54 e1                                      cmp r4, sb
007bc2f8  00 80 93 e5                                      ldr r8, [r3]
007bc2fc  d3 0c 00 aa                                      bge #0x7bf650
007bc300  e4 3e 9f e5                                      ldr r3, [pc, #0xee4]
007bc304  14 e0 88 e2                                      add lr, r8, #0x14
007bc308  fb 0f 8d e2                                      add r0, sp, #0x3ec
007bc30c  03 30 8f e0                                      add r3, pc, r3
007bc310  58 30 8d e5                                      str r3, [sp, #0x58]
007bc314  d4 3e 9f e5                                      ldr r3, [pc, #0xed4]
007bc318  3e 1e 8d e2                                      add r1, sp, #0x3e0
007bc31c  54 e0 8d e5                                      str lr, [sp, #0x54]
007bc320  03 30 8f e0                                      add r3, pc, r3
007bc324  5c 30 8d e5                                      str r3, [sp, #0x5c]
007bc328  c4 3e 9f e5                                      ldr r3, [pc, #0xec4]
007bc32c  34 00 8d e5                                      str r0, [sp, #0x34]
007bc330  30 10 8d e5                                      str r1, [sp, #0x30]
007bc334  03 30 8f e0                                      add r3, pc, r3
007bc338  60 30 8d e5                                      str r3, [sp, #0x60]
007bc33c  10 21 9d e5                                      ldr r2, [sp, #0x110]
007bc340  00 00 52 e3                                      cmp r2, #0
007bc344  05 00 00 da                                      ble #0x7bc360
007bc348  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
007bc34c  01 10 42 e2                                      sub r1, r2, #1
007bc350  81 31 83 e0                                      add r3, r3, r1, lsl #3
007bc354  04 30 93 e5                                      ldr r3, [r3, #4]
007bc358  03 00 54 e1                                      cmp r4, r3
007bc35c  70 00 00 aa                                      bge #0x7bc524
007bc360  08 70 98 e5                                      ldr r7, [r8, #8]
007bc364  04 10 d7 e7                                      ldrb r1, [r7, r4]
007bc368  80 00 11 e3                                      tst r1, #0x80
007bc36c  7b 00 00 1a                                      bne #0x7bc560
007bc370  69 00 51 e3                                      cmp r1, #0x69
007bc374  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
007bc378  fc 00 00 ea                                      b #0x7bc770
007bc37c  4e 04 00 ea                                      b #0x7bd4bc
007bc380  fa 00 00 ea                                      b #0x7bc770
007bc384  f9 00 00 ea                                      b #0x7bc770
007bc388  f8 00 00 ea                                      b #0x7bc770
007bc38c  08 08 00 ea                                      b #0x7be3b4
007bc390  15 08 00 ea                                      b #0x7be3ec
007bc394  ad 09 00 ea                                      b #0x7bea50
007bc398  b3 09 00 ea                                      b #0x7bea6c
007bc39c  b9 09 00 ea                                      b #0x7bea88
007bc3a0  bc 09 00 ea                                      b #0x7bea98
007bc3a4  c2 09 00 ea                                      b #0x7beab4
007bc3a8  86 07 00 ea                                      b #0x7be1c8
007bc3ac  95 07 00 ea                                      b #0x7be208
007bc3b0  a6 07 00 ea                                      b #0x7be250
007bc3b4  28 04 00 ea                                      b #0x7bd45c
007bc3b8  e4 0a 00 ea                                      b #0x7bef50
007bc3bc  fa 0a 00 ea                                      b #0x7befac
007bc3c0  04 0b 00 ea                                      b #0x7befd8
007bc3c4  0e 0b 00 ea                                      b #0x7bf004
007bc3c8  11 09 00 ea                                      b #0x7be814
007bc3cc  47 0a 00 ea                                      b #0x7becf0
007bc3d0  0a 0a 00 ea                                      b #0x7bec00
007bc3d4  e5 00 00 ea                                      b #0x7bc770
007bc3d8  3d 0a 00 ea                                      b #0x7becd4
007bc3dc  c6 09 00 ea                                      b #0x7beafc
007bc3e0  e2 00 00 ea                                      b #0x7bc770
007bc3e4  e1 00 00 ea                                      b #0x7bc770
007bc3e8  e0 00 00 ea                                      b #0x7bc770
007bc3ec  cc 09 00 ea                                      b #0x7beb24
007bc3f0  e2 09 00 ea                                      b #0x7beb80
007bc3f4  dd 00 00 ea                                      b #0x7bc770
007bc3f8  dc 00 00 ea                                      b #0x7bc770
007bc3fc  f2 09 00 ea                                      b #0x7bebcc
007bc400  3d 09 00 ea                                      b #0x7be8fc
007bc404  5a 09 00 ea                                      b #0x7be974
007bc408  78 09 00 ea                                      b #0x7be9f0
007bc40c  56 04 00 ea                                      b #0x7bd56c
007bc410  c8 05 00 ea                                      b #0x7bdb38
007bc414  e5 05 00 ea                                      b #0x7bdbb0
007bc418  7a 00 00 ea                                      b #0x7bc608
007bc41c  fe 05 00 ea                                      b #0x7bdc1c
007bc420  7a 04 00 ea                                      b #0x7bd610
007bc424  92 04 00 ea                                      b #0x7bd674
007bc428  95 04 00 ea                                      b #0x7bd684
007bc42c  ac 04 00 ea                                      b #0x7bd6e4
007bc430  ce 00 00 ea                                      b #0x7bc770
007bc434  cd 00 00 ea                                      b #0x7bc770
007bc438  cc 00 00 ea                                      b #0x7bc770
007bc43c  ac 04 00 ea                                      b #0x7bd6f4
007bc440  c3 04 00 ea                                      b #0x7bd754
007bc444  c6 04 00 ea                                      b #0x7bd764
007bc448  d3 04 00 ea                                      b #0x7bd79c
007bc44c  e3 04 00 ea                                      b #0x7bd7e0
007bc450  f3 04 00 ea                                      b #0x7bd824
007bc454  c5 00 00 ea                                      b #0x7bc770
007bc458  f5 04 00 ea                                      b #0x7bd834
007bc45c  c3 00 00 ea                                      b #0x7bc770
007bc460  c2 00 00 ea                                      b #0x7bc770
007bc464  f6 04 00 ea                                      b #0x7bd844
007bc468  13 05 00 ea                                      b #0x7bd8bc
007bc46c  8f 05 00 ea                                      b #0x7bdab0
007bc470  46 05 00 ea                                      b #0x7bd990
007bc474  9f 05 00 ea                                      b #0x7bdaf8
007bc478  6f 08 00 ea                                      b #0x7be63c
007bc47c  95 08 00 ea                                      b #0x7be6d8
007bc480  8a 0a 00 ea                                      b #0x7beeb0
007bc484  97 0a 00 ea                                      b #0x7beee8
007bc488  28 0a 00 ea                                      b #0x7bed30
007bc48c  5d 0a 00 ea                                      b #0x7bee08
007bc490  67 0a 00 ea                                      b #0x7bee34
007bc494  6a 0a 00 ea                                      b #0x7bee44
007bc498  f9 08 00 ea                                      b #0x7be884
007bc49c  54 0b 00 ea                                      b #0x7bf1f4
007bc4a0  e3 0a 00 ea                                      b #0x7bf034
007bc4a4  de 07 00 ea                                      b #0x7be424
007bc4a8  eb 07 00 ea                                      b #0x7be45c
007bc4ac  f8 07 00 ea                                      b #0x7be494
007bc4b0  06 08 00 ea                                      b #0x7be4d0
007bc4b4  20 08 00 ea                                      b #0x7be53c
007bc4b8  43 08 00 ea                                      b #0x7be5cc
007bc4bc  4e 08 00 ea                                      b #0x7be5fc
007bc4c0  18 06 00 ea                                      b #0x7bdd28
007bc4c4  27 06 00 ea                                      b #0x7bdd68
007bc4c8  81 06 00 ea                                      b #0x7bded4
007bc4cc  cc 06 00 ea                                      b #0x7be004
007bc4d0  dd 06 00 ea                                      b #0x7be04c
007bc4d4  a5 00 00 ea                                      b #0x7bc770
007bc4d8  a4 00 00 ea                                      b #0x7bc770
007bc4dc  a3 00 00 ea                                      b #0x7bc770
007bc4e0  a2 00 00 ea                                      b #0x7bc770
007bc4e4  a1 00 00 ea                                      b #0x7bc770
007bc4e8  a0 00 00 ea                                      b #0x7bc770
007bc4ec  9f 00 00 ea                                      b #0x7bc770
007bc4f0  9e 00 00 ea                                      b #0x7bc770
007bc4f4  9d 00 00 ea                                      b #0x7bc770
007bc4f8  9c 00 00 ea                                      b #0x7bc770
007bc4fc  dd 06 00 ea                                      b #0x7be078
007bc500  f8 06 00 ea                                      b #0x7be0e8
007bc504  13 07 00 ea                                      b #0x7be158
007bc508  d1 05 00 ea                                      b #0x7bdc54
007bc50c  7a 07 00 ea                                      b #0x7be2fc
007bc510  90 07 00 ea                                      b #0x7be358
007bc514  d0 03 00 ea                                      b #0x7bd45c
007bc518  5b 07 00 ea                                      b #0x7be28c
007bc51c  e7 05 00 ea                                      b #0x7bdcc0
007bc520  d4 0a 00 ea                                      b #0x7bf078
007bc524  06 00 a0 e1                                      mov r0, r6
007bc528  5f f9 ff eb                                      bl #0x7baaac
007bc52c  10 21 9d e5                                      ldr r2, [sp, #0x110]
007bc530  00 00 52 e3                                      cmp r2, #0
007bc534  89 ff ff da                                      ble #0x7bc360
007bc538  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
007bc53c  01 10 42 e2                                      sub r1, r2, #1
007bc540  81 31 83 e0                                      add r3, r3, r1, lsl #3
007bc544  04 30 93 e5                                      ldr r3, [r3, #4]
007bc548  04 00 53 e1                                      cmp r3, r4
007bc54c  f4 ff ff da                                      ble #0x7bc524
007bc550  08 70 98 e5                                      ldr r7, [r8, #8]
007bc554  04 10 d7 e7                                      ldrb r1, [r7, r4]
007bc558  80 00 11 e3                                      tst r1, #0x80
007bc55c  83 ff ff 0a                                      beq #0x7bc370
007bc560  04 30 87 e0                                      add r3, r7, r4
007bc564  02 a0 d3 e5                                      ldrb sl, [r3, #2]
007bc568  01 00 d3 e5                                      ldrb r0, [r3, #1]
007bc56c  03 b0 84 e2                                      add fp, r4, #3
007bc570  81 10 41 e2                                      sub r1, r1, #0x81
007bc574  0a a4 80 e1                                      orr sl, r0, sl, lsl #8
007bc578  0b e0 8a e0                                      add lr, sl, fp
007bc57c  18 e0 8d e5                                      str lr, [sp, #0x18]
007bc580  1e 00 51 e3                                      cmp r1, #0x1e
007bc584  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
007bc588  cf 00 00 ea                                      b #0x7bc8cc
007bc58c  55 01 00 ea                                      b #0x7bcae8
007bc590  cd 00 00 ea                                      b #0x7bc8cc
007bc594  37 01 00 ea                                      b #0x7bca78
007bc598  cb 00 00 ea                                      b #0x7bc8cc
007bc59c  ca 00 00 ea                                      b #0x7bc8cc
007bc5a0  c9 00 00 ea                                      b #0x7bc8cc
007bc5a4  5a 01 00 ea                                      b #0x7bcb14
007bc5a8  25 01 00 ea                                      b #0x7bca44
007bc5ac  c6 00 00 ea                                      b #0x7bc8cc
007bc5b0  c5 00 00 ea                                      b #0x7bc8cc
007bc5b4  fc 00 00 ea                                      b #0x7bc9ac
007bc5b8  e5 00 00 ea                                      b #0x7bc954
007bc5bc  de 00 00 ea                                      b #0x7bc93c
007bc5c0  1b 02 00 ea                                      b #0x7bce34
007bc5c4  c0 00 00 ea                                      b #0x7bc8cc
007bc5c8  bf 00 00 ea                                      b #0x7bc8cc
007bc5cc  be 00 00 ea                                      b #0x7bc8cc
007bc5d0  bd 00 00 ea                                      b #0x7bc8cc
007bc5d4  bc 00 00 ea                                      b #0x7bc8cc
007bc5d8  bd 00 00 ea                                      b #0x7bc8d4
007bc5dc  ba 00 00 ea                                      b #0x7bc8cc
007bc5e0  f6 01 00 ea                                      b #0x7bcdc0
007bc5e4  b8 00 00 ea                                      b #0x7bc8cc
007bc5e8  b7 00 00 ea                                      b #0x7bc8cc
007bc5ec  ed 01 00 ea                                      b #0x7bcda8
007bc5f0  7c 00 00 ea                                      b #0x7bc7e8
007bc5f4  7c 01 00 ea                                      b #0x7bcbec
007bc5f8  b3 00 00 ea                                      b #0x7bc8cc
007bc5fc  64 01 00 ea                                      b #0x7bcb94
007bc600  53 01 00 ea                                      b #0x7bcb54
007bc604  f7 00 00 ea                                      b #0x7bc9e8
007bc608  04 10 95 e5                                      ldr r1, [r5, #4]
007bc60c  00 20 95 e5                                      ldr r2, [r5]
007bc610  0c 70 a0 e3                                      mov r7, #0xc
007bc614  01 10 41 e2                                      sub r1, r1, #1
007bc618  00 30 a0 e3                                      mov r3, #0
007bc61c  fe c5 a0 e3                                      mov ip, #0x3f800000
007bc620  97 21 21 e0                                      mla r1, r7, r1, r2
007bc624  05 00 a0 e1                                      mov r0, r5
007bc628  00 20 a0 e3                                      mov r2, #0
007bc62c  72 20 cd e5                                      strb r2, [sp, #0x72]
007bc630  80 c0 8d e5                                      str ip, [sp, #0x80]
007bc634  88 30 8d e5                                      str r3, [sp, #0x88]
007bc638  6c 20 8d e5                                      str r2, [sp, #0x6c]
007bc63c  70 20 cd e5                                      strb r2, [sp, #0x70]
007bc640  71 20 cd e5                                      strb r2, [sp, #0x71]
007bc644  74 30 8d e5                                      str r3, [sp, #0x74]
007bc648  78 30 8d e5                                      str r3, [sp, #0x78]
007bc64c  7c c0 8d e5                                      str ip, [sp, #0x7c]
007bc650  84 30 8d e5                                      str r3, [sp, #0x84]
007bc654  b1 42 00 eb                                      bl #0x7cd120
007bc658  0d f8 ff eb                                      bl #0x7ba694
007bc65c  00 00 50 e3                                      cmp r0, #0
007bc660  6c 00 8d e5                                      str r0, [sp, #0x6c]
007bc664  e0 0f 00 0a                                      beq #0x7c05ec
007bc668  04 00 95 e5                                      ldr r0, [r5, #4]
007bc66c  00 30 95 e5                                      ldr r3, [r5]
007bc670  0c 70 a0 e3                                      mov r7, #0xc
007bc674  02 00 40 e2                                      sub r0, r0, #2
007bc678  97 30 20 e0                                      mla r0, r7, r0, r3
007bc67c  b7 6c ff eb                                      bl #0x797960
007bc680  04 20 95 e5                                      ldr r2, [r5, #4]
007bc684  00 30 95 e5                                      ldr r3, [r5]
007bc688  71 00 cd e5                                      strb r0, [sp, #0x71]
007bc68c  03 20 42 e2                                      sub r2, r2, #3
007bc690  97 32 20 e0                                      mla r0, r7, r2, r3
007bc694  b1 6c ff eb                                      bl #0x797960
007bc698  00 00 50 e3                                      cmp r0, #0
007bc69c  72 00 cd e5                                      strb r0, [sp, #0x72]
007bc6a0  1f 00 00 0a                                      beq #0x7bc724
007bc6a4  04 00 95 e5                                      ldr r0, [r5, #4]
007bc6a8  00 30 95 e5                                      ldr r3, [r5]
007bc6ac  07 00 40 e2                                      sub r0, r0, #7
007bc6b0  97 30 20 e0                                      mla r0, r7, r0, r3
007bc6b4  e6 6c ff eb                                      bl #0x797a54
007bc6b8  f8 47 ed eb                                      bl #0x30e6a0
007bc6bc  04 20 95 e5                                      ldr r2, [r5, #4]
007bc6c0  00 30 95 e5                                      ldr r3, [r5]
007bc6c4  74 00 8d e5                                      str r0, [sp, #0x74]
007bc6c8  06 20 42 e2                                      sub r2, r2, #6
007bc6cc  97 32 20 e0                                      mla r0, r7, r2, r3
007bc6d0  df 6c ff eb                                      bl #0x797a54
007bc6d4  f1 47 ed eb                                      bl #0x30e6a0
007bc6d8  04 20 95 e5                                      ldr r2, [r5, #4]
007bc6dc  00 30 95 e5                                      ldr r3, [r5]
007bc6e0  78 00 8d e5                                      str r0, [sp, #0x78]
007bc6e4  05 20 42 e2                                      sub r2, r2, #5
007bc6e8  97 32 20 e0                                      mla r0, r7, r2, r3
007bc6ec  d8 6c ff eb                                      bl #0x797a54
007bc6f0  ea 47 ed eb                                      bl #0x30e6a0
007bc6f4  04 20 95 e5                                      ldr r2, [r5, #4]
007bc6f8  00 30 95 e5                                      ldr r3, [r5]
007bc6fc  7c 00 8d e5                                      str r0, [sp, #0x7c]
007bc700  04 20 42 e2                                      sub r2, r2, #4
007bc704  97 32 20 e0                                      mla r0, r7, r2, r3
007bc708  d1 6c ff eb                                      bl #0x797a54
007bc70c  e3 47 ed eb                                      bl #0x30e6a0
007bc710  04 10 95 e5                                      ldr r1, [r5, #4]
007bc714  80 00 8d e5                                      str r0, [sp, #0x80]
007bc718  05 00 a0 e1                                      mov r0, r5
007bc71c  04 10 41 e2                                      sub r1, r1, #4
007bc720  1f 09 ff eb                                      bl #0x77eba4
007bc724  04 10 95 e5                                      ldr r1, [r5, #4]
007bc728  05 00 a0 e1                                      mov r0, r5
007bc72c  03 10 41 e2                                      sub r1, r1, #3
007bc730  1b 09 ff eb                                      bl #0x77eba4
007bc734  05 00 a0 e1                                      mov r0, r5
007bc738  e1 41 00 eb                                      bl #0x7ccec4
007bc73c  00 30 90 e5                                      ldr r3, [r0]
007bc740  0f e0 a0 e1                                      mov lr, pc
007bc744  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007bc748  00 30 50 e2                                      subs r3, r0, #0
007bc74c  07 00 00 0a                                      beq #0x7bc770
007bc750  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
007bc754  00 00 52 e3                                      cmp r2, #0
007bc758  04 00 00 0a                                      beq #0x7bc770
007bc75c  78 10 8d e2                                      add r1, sp, #0x78
007bc760  00 30 93 e5                                      ldr r3, [r3]
007bc764  0c 10 41 e2                                      sub r1, r1, #0xc
007bc768  0f e0 a0 e1                                      mov lr, pc
007bc76c  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
007bc770  01 40 84 e2                                      add r4, r4, #1
007bc774  04 00 59 e1                                      cmp sb, r4
007bc778  ef fe ff ca                                      bgt #0x7bc33c
007bc77c  05 00 a0 e1                                      mov r0, r5
007bc780  40 10 9d e5                                      ldr r1, [sp, #0x40]
007bc784  d0 41 00 eb                                      bl #0x7ccecc
007bc788  e0 04 dd e5                                      ldrb r0, [sp, #0x4e0]
007bc78c  70 30 af e6                                      sxtb r3, r0
007bc790  01 00 73 e3                                      cmn r3, #1
007bc794  4c 03 00 0a                                      beq #0x7bd4cc
007bc798  30 00 9d e5                                      ldr r0, [sp, #0x30]
007bc79c  60 6a ff eb                                      bl #0x797124
007bc7a0  34 00 9d e5                                      ldr r0, [sp, #0x34]
007bc7a4  5e 6a ff eb                                      bl #0x797124
007bc7a8  06 00 a0 e1                                      mov r0, r6
007bc7ac  00 10 a0 e3                                      mov r1, #0
007bc7b0  bd f8 ff eb                                      bl #0x7baaac
007bc7b4  06 00 a0 e1                                      mov r0, r6
007bc7b8  00 10 a0 e3                                      mov r1, #0
007bc7bc  d4 76 fe eb                                      bl #0x75a314
007bc7c0  28 10 9d e5                                      ldr r1, [sp, #0x28]
007bc7c4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007bc7c8  f4 24 9d e5                                      ldr r2, [sp, #0x4f4]
007bc7cc  00 30 91 e7                                      ldr r3, [r1, r0]
007bc7d0  00 30 93 e5                                      ldr r3, [r3]
007bc7d4  03 00 52 e1                                      cmp r2, r3
007bc7d8  52 0f 00 1a                                      bne #0x7c0528
007bc7dc  fc d0 8d e2                                      add sp, sp, #0xfc
007bc7e0  01 db 8d e2                                      add sp, sp, #0x400
007bc7e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007bc7e8  04 00 95 e5                                      ldr r0, [r5, #4]
007bc7ec  28 34 9d e5                                      ldr r3, [sp, #0x428]
007bc7f0  00 10 95 e5                                      ldr r1, [r5]
007bc7f4  00 20 e0 e3                                      mvn r2, #0
007bc7f8  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007bc7fc  02 00 80 e0                                      add r0, r0, r2
007bc800  0c e0 a0 e3                                      mov lr, #0xc
007bc804  00 20 a0 e3                                      mov r2, #0
007bc808  23 cc a0 e1                                      lsr ip, r3, #0x18
007bc80c  9e 10 20 e0                                      mla r0, lr, r0, r1
007bc810  41 1e 8d e2                                      add r1, sp, #0x410
007bc814  12 c0 c0 e7                                      bfi ip, r2, #0, #1
007bc818  01 e0 a0 e3                                      mov lr, #1
007bc81c  08 10 81 e2                                      add r1, r1, #8
007bc820  18 e4 cd e5                                      strb lr, [sp, #0x418]
007bc824  28 34 8d e5                                      str r3, [sp, #0x428]
007bc828  19 24 cd e5                                      strb r2, [sp, #0x419]
007bc82c  2b c4 cd e5                                      strb ip, [sp, #0x42b]
007bc830  d1 6c ff eb                                      bl #0x797b7c
007bc834  d0 30 d0 e1                                      ldrsb r3, [r0]
007bc838  04 20 95 e5                                      ldr r2, [r5, #4]
007bc83c  4e 1e 8d e2                                      add r1, sp, #0x4e0
007bc840  01 00 73 e3                                      cmn r3, #1
007bc844  00 30 95 e5                                      ldr r3, [r5]
007bc848  01 70 80 12                                      addne r7, r0, #1
007bc84c  0c 70 90 05                                      ldreq r7, [r0, #0xc]
007bc850  02 20 42 e2                                      sub r2, r2, #2
007bc854  0c 00 a0 e3                                      mov r0, #0xc
007bc858  90 32 20 e0                                      mla r0, r0, r2, r3
007bc85c  c6 6c ff eb                                      bl #0x797b7c
007bc860  d0 30 d0 e1                                      ldrsb r3, [r0]
007bc864  8c 19 9f e5                                      ldr r1, [pc, #0x98c]
007bc868  0a 20 a0 e3                                      mov r2, #0xa
007bc86c  01 00 73 e3                                      cmn r3, #1
007bc870  0c 40 90 05                                      ldreq r4, [r0, #0xc]
007bc874  01 40 80 12                                      addne r4, r0, #1
007bc878  01 10 8f e0                                      add r1, pc, r1
007bc87c  04 00 a0 e1                                      mov r0, r4
007bc880  fd 48 ed eb                                      bl #0x30ec7c
007bc884  00 00 50 e3                                      cmp r0, #0
007bc888  d6 02 00 0a                                      beq #0x7bd3e8
007bc88c  04 20 95 e5                                      ldr r2, [r5, #4]
007bc890  00 30 95 e5                                      ldr r3, [r5]
007bc894  0c 10 a0 e3                                      mov r1, #0xc
007bc898  01 20 42 e2                                      sub r2, r2, #1
007bc89c  91 32 22 e0                                      mla r2, r1, r2, r3
007bc8a0  05 00 a0 e1                                      mov r0, r5
007bc8a4  04 10 a0 e1                                      mov r1, r4
007bc8a8  7f 44 00 eb                                      bl #0x7cdaac
007bc8ac  04 10 95 e5                                      ldr r1, [r5, #4]
007bc8b0  05 00 a0 e1                                      mov r0, r5
007bc8b4  02 10 41 e2                                      sub r1, r1, #2
007bc8b8  b9 08 ff eb                                      bl #0x77eba4
007bc8bc  18 e4 dd e5                                      ldrb lr, [sp, #0x418]
007bc8c0  7e 30 af e6                                      sxtb r3, lr
007bc8c4  01 00 73 e3                                      cmn r3, #1
007bc8c8  dc 04 00 0a                                      beq #0x7bdc40
007bc8cc  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bc8d0  a7 ff ff ea                                      b #0x7bc774
007bc8d4  07 00 52 e3                                      cmp r2, #7
007bc8d8  17 00 00 ca                                      bgt #0x7bc93c
007bc8dc  04 10 95 e5                                      ldr r1, [r5, #4]
007bc8e0  00 20 95 e5                                      ldr r2, [r5]
007bc8e4  0c 00 a0 e3                                      mov r0, #0xc
007bc8e8  01 10 41 e2                                      sub r1, r1, #1
007bc8ec  90 21 22 e0                                      mla r2, r0, r1, r2
007bc8f0  04 00 d3 e5                                      ldrb r0, [r3, #4]
007bc8f4  d1 30 d2 e1                                      ldrsb r3, [r2, #1]
007bc8f8  0b 10 d7 e7                                      ldrb r1, [r7, fp]
007bc8fc  05 00 53 e3                                      cmp r3, #5
007bc900  18 30 9d e5                                      ldr r3, [sp, #0x18]
007bc904  00 14 81 e1                                      orr r1, r1, r0, lsl #8
007bc908  01 40 83 e0                                      add r4, r3, r1
007bc90c  00 30 a0 13                                      movne r3, #0
007bc910  0c 34 8d 15                                      strne r3, [sp, #0x40c]
007bc914  cb 0a 00 0a                                      beq #0x7bf448
007bc918  01 1b 8d e2                                      add r1, sp, #0x400
007bc91c  06 00 a0 e1                                      mov r0, r6
007bc920  0c 10 81 e2                                      add r1, r1, #0xc
007bc924  10 44 8d e5                                      str r4, [sp, #0x410]
007bc928  ad f8 ff eb                                      bl #0x7babe4
007bc92c  0c 04 9d e5                                      ldr r0, [sp, #0x40c]
007bc930  00 00 50 e3                                      cmp r0, #0
007bc934  00 00 00 0a                                      beq #0x7bc93c
007bc938  40 76 fe eb                                      bl #0x75a240
007bc93c  04 10 95 e5                                      ldr r1, [r5, #4]
007bc940  05 00 a0 e1                                      mov r0, r5
007bc944  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bc948  01 10 41 e2                                      sub r1, r1, #1
007bc94c  94 08 ff eb                                      bl #0x77eba4
007bc950  87 ff ff ea                                      b #0x7bc774
007bc954  05 00 a0 e1                                      mov r0, r5
007bc958  59 41 00 eb                                      bl #0x7ccec4
007bc95c  45 ae 8d e2                                      add sl, sp, #0x450
007bc960  00 30 90 e5                                      ldr r3, [r0]
007bc964  04 a0 8a e2                                      add sl, sl, #4
007bc968  00 40 a0 e1                                      mov r4, r0
007bc96c  0b 10 87 e0                                      add r1, r7, fp
007bc970  0a 00 a0 e1                                      mov r0, sl
007bc974  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
007bc978  3f 5c f1 eb                                      bl #0x413a7c
007bc97c  04 00 a0 e1                                      mov r0, r4
007bc980  0a 10 a0 e1                                      mov r1, sl
007bc984  37 ff 2f e1                                      blx r7
007bc988  54 44 dd e5                                      ldrb r4, [sp, #0x454]
007bc98c  74 30 af e6                                      sxtb r3, r4
007bc990  01 00 73 e3                                      cmn r3, #1
007bc994  cc ff ff 1a                                      bne #0x7bc8cc
007bc998  60 04 9d e5                                      ldr r0, [sp, #0x460]
007bc99c  5c 14 9d e5                                      ldr r1, [sp, #0x45c]
007bc9a0  64 58 fe eb                                      bl #0x752b38
007bc9a4  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bc9a8  71 ff ff ea                                      b #0x7bc774
007bc9ac  53 4f 8d e2                                      add r4, sp, #0x14c
007bc9b0  00 30 a0 e3                                      mov r3, #0
007bc9b4  04 00 a0 e1                                      mov r0, r4
007bc9b8  0b 10 87 e0                                      add r1, r7, fp
007bc9bc  4d 31 cd e5                                      strb r3, [sp, #0x14d]
007bc9c0  4c 31 cd e5                                      strb r3, [sp, #0x14c]
007bc9c4  61 6a ff eb                                      bl #0x797350
007bc9c8  04 10 a0 e1                                      mov r1, r4
007bc9cc  05 00 a0 e1                                      mov r0, r5
007bc9d0  40 20 9d e5                                      ldr r2, [sp, #0x40]
007bc9d4  d6 43 00 eb                                      bl #0x7cd934
007bc9d8  04 00 a0 e1                                      mov r0, r4
007bc9dc  d0 69 ff eb                                      bl #0x797124
007bc9e0  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bc9e4  62 ff ff ea                                      b #0x7bc774
007bc9e8  0b b0 d7 e7                                      ldrb fp, [r7, fp]
007bc9ec  05 00 a0 e1                                      mov r0, r5
007bc9f0  20 b0 8d e5                                      str fp, [sp, #0x20]
007bc9f4  32 41 00 eb                                      bl #0x7ccec4
007bc9f8  88 00 95 e8                                      ldm r5, {r3, r7}
007bc9fc  0c b0 a0 e3                                      mov fp, #0xc
007bca00  01 a0 47 e2                                      sub sl, r7, #1
007bca04  9b 3a 2a e0                                      mla sl, fp, sl, r3
007bca08  00 40 a0 e1                                      mov r4, r0
007bca0c  01 30 da e5                                      ldrb r3, [sl, #1]
007bca10  00 00 53 e3                                      cmp r3, #0
007bca14  05 00 00 0a                                      beq #0x7bca30
007bca18  03 20 43 e2                                      sub r2, r3, #3
007bca1c  72 20 ef e6                                      uxtb r2, r2
007bca20  01 00 52 e3                                      cmp r2, #1
007bca24  75 0a 00 9a                                      bls #0x7bf400
007bca28  02 00 53 e3                                      cmp r3, #2
007bca2c  d8 0b 00 0a                                      beq #0x7bf994
007bca30  01 10 47 e2                                      sub r1, r7, #1
007bca34  05 00 a0 e1                                      mov r0, r5
007bca38  59 08 ff eb                                      bl #0x77eba4
007bca3c  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bca40  4b ff ff ea                                      b #0x7bc774
007bca44  68 30 95 e5                                      ldr r3, [r5, #0x68]
007bca48  00 00 53 e3                                      cmp r3, #0
007bca4c  03 00 00 0a                                      beq #0x7bca60
007bca50  64 00 95 e5                                      ldr r0, [r5, #0x64]
007bca54  04 20 d0 e5                                      ldrb r2, [r0, #4]
007bca58  00 00 52 e3                                      cmp r2, #0
007bca5c  a4 02 00 0a                                      beq #0x7bd4f4
007bca60  04 10 a0 e1                                      mov r1, r4
007bca64  38 00 9d e5                                      ldr r0, [sp, #0x38]
007bca68  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bca6c  cb fb ff eb                                      bl #0x7bb9a0
007bca70  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bca74  3e ff ff ea                                      b #0x7bc774
007bca78  0b 40 87 e0                                      add r4, r7, fp
007bca7c  04 00 a0 e1                                      mov r0, r4
007bca80  f3 44 ed eb                                      bl #0x30de54
007bca84  70 17 9f e5                                      ldr r1, [pc, #0x770]
007bca88  01 30 8b e2                                      add r3, fp, #1
007bca8c  00 30 83 e0                                      add r3, r3, r0
007bca90  01 10 8f e0                                      add r1, pc, r1
007bca94  04 00 a0 e1                                      mov r0, r4
007bca98  0a 20 a0 e3                                      mov r2, #0xa
007bca9c  03 70 87 e0                                      add r7, r7, r3
007bcaa0  75 48 ed eb                                      bl #0x30ec7c
007bcaa4  00 00 50 e3                                      cmp r0, #0
007bcaa8  5c 02 00 1a                                      bne #0x7bd420
007bcaac  3f bf fe eb                                      bl #0x76c7b0
007bcab0  00 00 50 e3                                      cmp r0, #0
007bcab4  84 ff ff 0a                                      beq #0x7bc8cc
007bcab8  3c bf fe eb                                      bl #0x76c7b0
007bcabc  00 a0 a0 e1                                      mov sl, r0
007bcac0  05 00 a0 e1                                      mov r0, r5
007bcac4  fe 40 00 eb                                      bl #0x7ccec4
007bcac8  00 30 90 e5                                      ldr r3, [r0]
007bcacc  0f e0 a0 e1                                      mov lr, pc
007bcad0  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007bcad4  0a 10 84 e2                                      add r1, r4, #0xa
007bcad8  07 20 a0 e1                                      mov r2, r7
007bcadc  3a ff 2f e1                                      blx sl
007bcae0  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bcae4  22 ff ff ea                                      b #0x7bc774
007bcae8  0b 20 d7 e7                                      ldrb r2, [r7, fp]
007bcaec  04 70 d3 e5                                      ldrb r7, [r3, #4]
007bcaf0  05 00 a0 e1                                      mov r0, r5
007bcaf4  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bcaf8  07 74 82 e1                                      orr r7, r2, r7, lsl #8
007bcafc  f0 40 00 eb                                      bl #0x7ccec4
007bcb00  07 10 a0 e1                                      mov r1, r7
007bcb04  00 30 90 e5                                      ldr r3, [r0]
007bcb08  0f e0 a0 e1                                      mov lr, pc
007bcb0c  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
007bcb10  17 ff ff ea                                      b #0x7bc774
007bcb14  48 30 9d e5                                      ldr r3, [sp, #0x48]
007bcb18  00 00 53 e3                                      cmp r3, #0
007bcb1c  0b 30 d7 e7                                      ldrb r3, [r7, fp]
007bcb20  84 02 00 1a                                      bne #0x7bd538
007bcb24  03 00 53 e3                                      cmp r3, #3
007bcb28  6b 02 00 8a                                      bhi #0x7bd4dc
007bcb2c  0c 20 a0 e3                                      mov r2, #0xc
007bcb30  92 03 00 e0                                      mul r0, r2, r3
007bcb34  0a 00 95 e8                                      ldm r5, {r1, r3}
007bcb38  10 00 80 e2                                      add r0, r0, #0x10
007bcb3c  01 30 43 e2                                      sub r3, r3, #1
007bcb40  92 13 21 e0                                      mla r1, r2, r3, r1
007bcb44  00 00 85 e0                                      add r0, r5, r0
007bcb48  fb 6a ff eb                                      bl #0x79773c
007bcb4c  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bcb50  07 ff ff ea                                      b #0x7bc774
007bcb54  05 00 a0 e1                                      mov r0, r5
007bcb58  d9 40 00 eb                                      bl #0x7ccec4
007bcb5c  04 20 95 e5                                      ldr r2, [r5, #4]
007bcb60  00 30 95 e5                                      ldr r3, [r5]
007bcb64  0c 10 a0 e3                                      mov r1, #0xc
007bcb68  01 20 42 e2                                      sub r2, r2, #1
007bcb6c  91 32 21 e0                                      mla r1, r1, r2, r3
007bcb70  00 30 90 e5                                      ldr r3, [r0]
007bcb74  0f e0 a0 e1                                      mov lr, pc
007bcb78  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
007bcb7c  04 10 95 e5                                      ldr r1, [r5, #4]
007bcb80  05 00 a0 e1                                      mov r0, r5
007bcb84  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bcb88  01 10 41 e2                                      sub r1, r1, #1
007bcb8c  04 08 ff eb                                      bl #0x77eba4
007bcb90  f7 fe ff ea                                      b #0x7bc774
007bcb94  04 10 95 e5                                      ldr r1, [r5, #4]
007bcb98  00 20 95 e5                                      ldr r2, [r5]
007bcb9c  0c 00 a0 e3                                      mov r0, #0xc
007bcba0  01 10 41 e2                                      sub r1, r1, #1
007bcba4  90 21 20 e0                                      mla r0, r0, r1, r2
007bcba8  04 a0 d3 e5                                      ldrb sl, [r3, #4]
007bcbac  0b 70 d7 e7                                      ldrb r7, [r7, fp]
007bcbb0  6a 6b ff eb                                      bl #0x797960
007bcbb4  04 10 95 e5                                      ldr r1, [r5, #4]
007bcbb8  00 40 a0 e1                                      mov r4, r0
007bcbbc  05 00 a0 e1                                      mov r0, r5
007bcbc0  01 10 41 e2                                      sub r1, r1, #1
007bcbc4  f6 07 ff eb                                      bl #0x77eba4
007bcbc8  00 00 54 e3                                      cmp r4, #0
007bcbcc  3e ff ff 0a                                      beq #0x7bc8cc
007bcbd0  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bcbd4  0a 74 87 e1                                      orr r7, r7, sl, lsl #8
007bcbd8  77 10 b2 e6                                      sxtah r1, r2, r7
007bcbdc  01 00 59 e1                                      cmp sb, r1
007bcbe0  1e 0a 00 ba                                      blt #0x7bf460
007bcbe4  01 40 a0 e1                                      mov r4, r1
007bcbe8  e1 fe ff ea                                      b #0x7bc774
007bcbec  0b 10 87 e0                                      add r1, r7, fp
007bcbf0  4e 0e 8d e2                                      add r0, sp, #0x4e0
007bcbf4  20 00 8d e5                                      str r0, [sp, #0x20]
007bcbf8  06 bf fe eb                                      bl #0x76c818
007bcbfc  e0 14 dd e5                                      ldrb r1, [sp, #0x4e0]
007bcc00  71 30 af e6                                      sxtb r3, r1
007bcc04  01 00 73 e3                                      cmn r3, #1
007bcc08  e4 34 9d 05                                      ldreq r3, [sp, #0x4e4]
007bcc0c  03 b0 8b e0                                      add fp, fp, r3
007bcc10  01 30 43 e2                                      sub r3, r3, #1
007bcc14  00 00 53 e3                                      cmp r3, #0
007bcc18  17 00 00 da                                      ble #0x7bcc7c
007bcc1c  4a 7f 8d e2                                      add r7, sp, #0x128
007bcc20  00 40 a0 e3                                      mov r4, #0
007bcc24  05 00 a0 e1                                      mov r0, r5
007bcc28  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bcc2c  07 20 a0 e1                                      mov r2, r7
007bcc30  28 41 cd e5                                      strb r4, [sp, #0x128]
007bcc34  29 41 cd e5                                      strb r4, [sp, #0x129]
007bcc38  96 40 00 eb                                      bl #0x7cce98
007bcc3c  04 00 50 e1                                      cmp r0, r4
007bcc40  0b 00 00 0a                                      beq #0x7bcc74
007bcc44  29 31 dd e5                                      ldrb r3, [sp, #0x129]
007bcc48  05 00 53 e3                                      cmp r3, #5
007bcc4c  04 00 a0 11                                      movne r0, r4
007bcc50  2c 01 9d 05                                      ldreq r0, [sp, #0x12c]
007bcc54  a8 f6 ff eb                                      bl #0x7ba6fc
007bcc58  00 00 50 e3                                      cmp r0, #0
007bcc5c  04 00 00 0a                                      beq #0x7bcc74
007bcc60  38 40 9d e5                                      ldr r4, [sp, #0x38]
007bcc64  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
007bcc68  00 30 94 e5                                      ldr r3, [r4]
007bcc6c  03 00 52 e1                                      cmp r2, r3
007bcc70  84 0b 00 0a                                      beq #0x7bfa88
007bcc74  07 00 a0 e1                                      mov r0, r7
007bcc78  29 69 ff eb                                      bl #0x797124
007bcc7c  05 00 a0 e1                                      mov r0, r5
007bcc80  55 fd ff eb                                      bl #0x7bc1dc
007bcc84  00 10 a0 e3                                      mov r1, #0
007bcc88  00 70 a0 e1                                      mov r7, r0
007bcc8c  7c 00 a0 e3                                      mov r0, #0x7c
007bcc90  c4 57 fe eb                                      bl #0x752ba8
007bcc94  07 10 a0 e1                                      mov r1, r7
007bcc98  38 20 9d e5                                      ldr r2, [sp, #0x38]
007bcc9c  18 30 9d e5                                      ldr r3, [sp, #0x18]
007bcca0  00 40 a0 e1                                      mov r4, r0
007bcca4  00 60 8d e5                                      str r6, [sp]
007bcca8  62 58 00 eb                                      bl #0x7d2e38
007bccac  05 00 a0 e1                                      mov r0, r5
007bccb0  83 40 00 eb                                      bl #0x7ccec4
007bccb4  00 10 a0 e1                                      mov r1, r0
007bccb8  74 00 84 e2                                      add r0, r4, #0x74
007bccbc  f1 87 fe eb                                      bl #0x75ec88
007bccc0  08 20 98 e5                                      ldr r2, [r8, #8]
007bccc4  02 70 8b e2                                      add r7, fp, #2
007bccc8  0b 30 82 e0                                      add r3, r2, fp
007bcccc  01 30 d3 e5                                      ldrb r3, [r3, #1]
007bccd0  0b b0 d2 e7                                      ldrb fp, [r2, fp]
007bccd4  03 b4 8b e1                                      orr fp, fp, r3, lsl #8
007bccd8  00 00 5b e3                                      cmp fp, #0
007bccdc  15 00 00 da                                      ble #0x7bcd38
007bcce0  00 a0 a0 e3                                      mov sl, #0
007bcce4  00 00 00 ea                                      b #0x7bccec
007bcce8  08 20 98 e5                                      ldr r2, [r8, #8]
007bccec  07 20 82 e0                                      add r2, r2, r7
007bccf0  04 00 a0 e1                                      mov r0, r4
007bccf4  00 10 a0 e3                                      mov r1, #0
007bccf8  0a fa ff eb                                      bl #0x7bb528
007bccfc  64 20 94 e5                                      ldr r2, [r4, #0x64]
007bcd00  60 30 94 e5                                      ldr r3, [r4, #0x60]
007bcd04  18 e0 a0 e3                                      mov lr, #0x18
007bcd08  01 20 42 e2                                      sub r2, r2, #1
007bcd0c  9e 32 22 e0                                      mla r2, lr, r2, r3
007bcd10  01 a0 8a e2                                      add sl, sl, #1
007bcd14  d4 30 d2 e1                                      ldrsb r3, [r2, #4]
007bcd18  01 00 73 e3                                      cmn r3, #1
007bcd1c  08 30 92 05                                      ldreq r3, [r2, #8]
007bcd20  0b 00 5a e1                                      cmp sl, fp
007bcd24  01 30 43 e2                                      sub r3, r3, #1
007bcd28  01 30 83 e2                                      add r3, r3, #1
007bcd2c  03 70 87 e0                                      add r7, r7, r3
007bcd30  ec ff ff 1a                                      bne #0x7bcce8
007bcd34  08 20 98 e5                                      ldr r2, [r8, #8]
007bcd38  07 10 82 e0                                      add r1, r2, r7
007bcd3c  07 30 d2 e7                                      ldrb r3, [r2, r7]
007bcd40  01 20 d1 e5                                      ldrb r2, [r1, #1]
007bcd44  47 7f 8d e2                                      add r7, sp, #0x11c
007bcd48  04 10 a0 e1                                      mov r1, r4
007bcd4c  02 24 83 e1                                      orr r2, r3, r2, lsl #8
007bcd50  5c 20 84 e5                                      str r2, [r4, #0x5c]
007bcd54  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bcd58  00 30 a0 e3                                      mov r3, #0
007bcd5c  07 00 a0 e1                                      mov r0, r7
007bcd60  1d 31 cd e5                                      strb r3, [sp, #0x11d]
007bcd64  1c 31 cd e5                                      strb r3, [sp, #0x11c]
007bcd68  0c 40 82 e0                                      add r4, r2, ip
007bcd6c  37 69 ff eb                                      bl #0x797250
007bcd70  e0 e4 dd e5                                      ldrb lr, [sp, #0x4e0]
007bcd74  7e 30 af e6                                      sxtb r3, lr
007bcd78  01 00 73 e3                                      cmn r3, #1
007bcd7c  a2 00 00 0a                                      beq #0x7bd00c
007bcd80  01 30 43 e2                                      sub r3, r3, #1
007bcd84  00 00 53 e3                                      cmp r3, #0
007bcd88  98 09 00 da                                      ble #0x7bf3f0
007bcd8c  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bcd90  05 00 a0 e1                                      mov r0, r5
007bcd94  07 20 a0 e1                                      mov r2, r7
007bcd98  33 40 00 eb                                      bl #0x7cce6c
007bcd9c  07 00 a0 e1                                      mov r0, r7
007bcda0  df 68 ff eb                                      bl #0x797124
007bcda4  72 fe ff ea                                      b #0x7bc774
007bcda8  0b 20 d7 e7                                      ldrb r2, [r7, fp]
007bcdac  04 30 d3 e5                                      ldrb r3, [r3, #4]
007bcdb0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bcdb4  03 34 82 e1                                      orr r3, r2, r3, lsl #8
007bcdb8  73 40 bc e6                                      sxtah r4, ip, r3
007bcdbc  6c fe ff ea                                      b #0x7bc774
007bcdc0  01 0b 8d e2                                      add r0, sp, #0x400
007bcdc4  fe 1f 8d e2                                      add r1, sp, #0x3f8
007bcdc8  04 20 80 e2                                      add r2, r0, #4
007bcdcc  44 00 8d e5                                      str r0, [sp, #0x44]
007bcdd0  04 b0 a0 e1                                      mov fp, r4
007bcdd4  24 10 8d e5                                      str r1, [sp, #0x24]
007bcdd8  4c 20 8d e5                                      str r2, [sp, #0x4c]
007bcddc  0b 30 64 e0                                      rsb r3, r4, fp
007bcde0  03 00 5a e1                                      cmp sl, r3
007bcde4  b8 fe ff da                                      ble #0x7bc8cc
007bcde8  08 10 98 e5                                      ldr r1, [r8, #8]
007bcdec  01 70 8b e2                                      add r7, fp, #1
007bcdf0  0b b0 81 e0                                      add fp, r1, fp
007bcdf4  03 30 db e5                                      ldrb r3, [fp, #3]
007bcdf8  01 20 a0 e1                                      mov r2, r1
007bcdfc  0a 00 53 e3                                      cmp r3, #0xa
007bce00  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007bce04  85 00 00 ea                                      b #0x7bd020
007bce08  3d 01 00 ea                                      b #0x7bd304
007bce0c  2f 01 00 ea                                      b #0x7bd2d0
007bce10  7f 00 00 ea                                      b #0x7bd014
007bce14  28 01 00 ea                                      b #0x7bd2bc
007bce18  16 01 00 ea                                      b #0x7bd278
007bce1c  00 01 00 ea                                      b #0x7bd224
007bce20  d9 00 00 ea                                      b #0x7bd18c
007bce24  bb 00 00 ea                                      b #0x7bd118
007bce28  c9 00 00 ea                                      b #0x7bd154
007bce2c  9d 00 00 ea                                      b #0x7bd0a8
007bce30  7c 00 00 ea                                      b #0x7bd028
007bce34  4e ce 8d e2                                      add ip, sp, #0x4e0
007bce38  0b 10 87 e0                                      add r1, r7, fp
007bce3c  0c 00 a0 e1                                      mov r0, ip
007bce40  20 c0 8d e5                                      str ip, [sp, #0x20]
007bce44  73 be fe eb                                      bl #0x76c818
007bce48  e0 e4 dd e5                                      ldrb lr, [sp, #0x4e0]
007bce4c  7e 30 af e6                                      sxtb r3, lr
007bce50  01 00 73 e3                                      cmn r3, #1
007bce54  e4 34 9d 05                                      ldreq r3, [sp, #0x4e4]
007bce58  03 b0 8b e0                                      add fp, fp, r3
007bce5c  01 30 43 e2                                      sub r3, r3, #1
007bce60  00 00 53 e3                                      cmp r3, #0
007bce64  17 00 00 da                                      ble #0x7bcec8
007bce68  05 7d 8d e2                                      add r7, sp, #0x140
007bce6c  00 40 a0 e3                                      mov r4, #0
007bce70  05 00 a0 e1                                      mov r0, r5
007bce74  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bce78  07 20 a0 e1                                      mov r2, r7
007bce7c  40 41 cd e5                                      strb r4, [sp, #0x140]
007bce80  41 41 cd e5                                      strb r4, [sp, #0x141]
007bce84  03 40 00 eb                                      bl #0x7cce98
007bce88  04 00 50 e1                                      cmp r0, r4
007bce8c  0b 00 00 0a                                      beq #0x7bcec0
007bce90  41 31 dd e5                                      ldrb r3, [sp, #0x141]
007bce94  05 00 53 e3                                      cmp r3, #5
007bce98  04 00 a0 11                                      movne r0, r4
007bce9c  44 01 9d 05                                      ldreq r0, [sp, #0x144]
007bcea0  15 f6 ff eb                                      bl #0x7ba6fc
007bcea4  00 00 50 e3                                      cmp r0, #0
007bcea8  04 00 00 0a                                      beq #0x7bcec0
007bceac  38 10 9d e5                                      ldr r1, [sp, #0x38]
007bceb0  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
007bceb4  00 30 91 e5                                      ldr r3, [r1]
007bceb8  03 00 52 e1                                      cmp r2, r3
007bcebc  ca 0a 00 0a                                      beq #0x7bf9ec
007bcec0  07 00 a0 e1                                      mov r0, r7
007bcec4  96 68 ff eb                                      bl #0x797124
007bcec8  05 00 a0 e1                                      mov r0, r5
007bcecc  c2 fc ff eb                                      bl #0x7bc1dc
007bced0  00 10 a0 e3                                      mov r1, #0
007bced4  00 70 a0 e1                                      mov r7, r0
007bced8  7c 00 a0 e3                                      mov r0, #0x7c
007bcedc  31 57 fe eb                                      bl #0x752ba8
007bcee0  38 20 9d e5                                      ldr r2, [sp, #0x38]
007bcee4  18 30 9d e5                                      ldr r3, [sp, #0x18]
007bcee8  07 10 a0 e1                                      mov r1, r7
007bceec  00 40 a0 e1                                      mov r4, r0
007bcef0  00 60 8d e5                                      str r6, [sp]
007bcef4  cf 57 00 eb                                      bl #0x7d2e38
007bcef8  05 00 a0 e1                                      mov r0, r5
007bcefc  f0 3f 00 eb                                      bl #0x7ccec4
007bcf00  00 10 a0 e1                                      mov r1, r0
007bcf04  74 00 84 e2                                      add r0, r4, #0x74
007bcf08  5e 87 fe eb                                      bl #0x75ec88
007bcf0c  01 30 a0 e3                                      mov r3, #1
007bcf10  70 30 c4 e5                                      strb r3, [r4, #0x70]
007bcf14  08 10 98 e5                                      ldr r1, [r8, #8]
007bcf18  02 20 8b e2                                      add r2, fp, #2
007bcf1c  03 30 8b e2                                      add r3, fp, #3
007bcf20  02 20 d1 e7                                      ldrb r2, [r1, r2]
007bcf24  0b 00 81 e0                                      add r0, r1, fp
007bcf28  01 00 d0 e5                                      ldrb r0, [r0, #1]
007bcf2c  0b 10 d1 e7                                      ldrb r1, [r1, fp]
007bcf30  71 20 c4 e5                                      strb r2, [r4, #0x71]
007bcf34  08 20 98 e5                                      ldr r2, [r8, #8]
007bcf38  00 14 81 e1                                      orr r1, r1, r0, lsl #8
007bcf3c  24 10 8d e5                                      str r1, [sp, #0x24]
007bcf40  00 00 51 e3                                      cmp r1, #0
007bcf44  03 10 82 e0                                      add r1, r2, r3
007bcf48  01 10 d1 e5                                      ldrb r1, [r1, #1]
007bcf4c  03 20 d2 e7                                      ldrb r2, [r2, r3]
007bcf50  05 30 8b e2                                      add r3, fp, #5
007bcf54  01 24 82 e1                                      orr r2, r2, r1, lsl #8
007bcf58  b2 27 c4 e1                                      strh r2, [r4, #0x72]
007bcf5c  17 00 00 da                                      ble #0x7bcfc0
007bcf60  00 70 a0 e3                                      mov r7, #0
007bcf64  18 b0 a0 e3                                      mov fp, #0x18
007bcf68  05 a0 a0 e1                                      mov sl, r5
007bcf6c  08 20 98 e5                                      ldr r2, [r8, #8]
007bcf70  01 50 83 e2                                      add r5, r3, #1
007bcf74  04 00 a0 e1                                      mov r0, r4
007bcf78  03 10 d2 e7                                      ldrb r1, [r2, r3]
007bcf7c  05 20 82 e0                                      add r2, r2, r5
007bcf80  68 f9 ff eb                                      bl #0x7bb528
007bcf84  64 20 94 e5                                      ldr r2, [r4, #0x64]
007bcf88  60 30 94 e5                                      ldr r3, [r4, #0x60]
007bcf8c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007bcf90  01 20 42 e2                                      sub r2, r2, #1
007bcf94  9b 32 22 e0                                      mla r2, fp, r2, r3
007bcf98  01 70 87 e2                                      add r7, r7, #1
007bcf9c  d4 30 d2 e1                                      ldrsb r3, [r2, #4]
007bcfa0  01 50 85 e2                                      add r5, r5, #1
007bcfa4  01 00 73 e3                                      cmn r3, #1
007bcfa8  08 30 92 05                                      ldreq r3, [r2, #8]
007bcfac  0c 00 57 e1                                      cmp r7, ip
007bcfb0  01 30 43 e2                                      sub r3, r3, #1
007bcfb4  03 30 85 e0                                      add r3, r5, r3
007bcfb8  eb ff ff 1a                                      bne #0x7bcf6c
007bcfbc  0a 50 a0 e1                                      mov r5, sl
007bcfc0  08 00 98 e5                                      ldr r0, [r8, #8]
007bcfc4  4d 7f 8d e2                                      add r7, sp, #0x134
007bcfc8  04 10 a0 e1                                      mov r1, r4
007bcfcc  03 20 80 e0                                      add r2, r0, r3
007bcfd0  03 c0 d0 e7                                      ldrb ip, [r0, r3]
007bcfd4  01 20 d2 e5                                      ldrb r2, [r2, #1]
007bcfd8  00 30 a0 e3                                      mov r3, #0
007bcfdc  07 00 a0 e1                                      mov r0, r7
007bcfe0  02 24 8c e1                                      orr r2, ip, r2, lsl #8
007bcfe4  5c 20 84 e5                                      str r2, [r4, #0x5c]
007bcfe8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007bcfec  35 31 cd e5                                      strb r3, [sp, #0x135]
007bcff0  34 31 cd e5                                      strb r3, [sp, #0x134]
007bcff4  0e 40 82 e0                                      add r4, r2, lr
007bcff8  94 68 ff eb                                      bl #0x797250
007bcffc  e0 04 dd e5                                      ldrb r0, [sp, #0x4e0]
007bd000  70 30 af e6                                      sxtb r3, r0
007bd004  01 00 73 e3                                      cmn r3, #1
007bd008  5c ff ff 1a                                      bne #0x7bcd80
007bd00c  e4 34 9d e5                                      ldr r3, [sp, #0x4e4]
007bd010  5a ff ff ea                                      b #0x7bcd80
007bd014  05 00 a0 e1                                      mov r0, r5
007bd018  30 10 9d e5                                      ldr r1, [sp, #0x30]
007bd01c  1d b0 fe eb                                      bl #0x769098
007bd020  07 b0 a0 e1                                      mov fp, r7
007bd024  6c ff ff ea                                      b #0x7bcddc
007bd028  03 c0 87 e2                                      add ip, r7, #3
007bd02c  20 c0 8d e5                                      str ip, [sp, #0x20]
007bd030  04 30 87 e2                                      add r3, r7, #4
007bd034  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007bd038  08 00 95 e5                                      ldr r0, [r5, #8]
007bd03c  01 b0 87 e2                                      add fp, r7, #1
007bd040  0c 10 d2 e7                                      ldrb r1, [r2, ip]
007bd044  03 20 d2 e7                                      ldrb r2, [r2, r3]
007bd048  14 30 98 e5                                      ldr r3, [r8, #0x14]
007bd04c  02 24 81 e1                                      orr r2, r1, r2, lsl #8
007bd050  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007bd054  04 20 95 e5                                      ldr r2, [r5, #4]
007bd058  d0 10 d3 e1                                      ldrsb r1, [r3]
007bd05c  01 70 82 e2                                      add r7, r2, #1
007bd060  01 00 71 e3                                      cmn r1, #1
007bd064  04 10 93 05                                      ldreq r1, [r3, #4]
007bd068  00 00 57 e1                                      cmp r7, r0
007bd06c  01 10 41 e2                                      sub r1, r1, #1
007bd070  01 b0 8b e0                                      add fp, fp, r1
007bd074  09 01 00 ca                                      bgt #0x7bd4a0
007bd078  0c 00 a0 e3                                      mov r0, #0xc
007bd07c  00 c0 95 e5                                      ldr ip, [r5]
007bd080  90 02 00 e0                                      mul r0, r0, r2
007bd084  00 10 a0 e3                                      mov r1, #0
007bd088  00 20 8c e0                                      add r2, ip, r0
007bd08c  00 10 cc e7                                      strb r1, [ip, r0]
007bd090  08 10 82 e5                                      str r1, [r2, #8]
007bd094  03 10 a0 e3                                      mov r1, #3
007bd098  01 10 c2 e5                                      strb r1, [r2, #1]
007bd09c  04 30 82 e5                                      str r3, [r2, #4]
007bd0a0  04 70 85 e5                                      str r7, [r5, #4]
007bd0a4  4c ff ff ea                                      b #0x7bcddc
007bd0a8  07 10 81 e0                                      add r1, r1, r7
007bd0ac  03 20 d1 e5                                      ldrb r2, [r1, #3]
007bd0b0  04 10 d1 e5                                      ldrb r1, [r1, #4]
007bd0b4  18 30 98 e5                                      ldr r3, [r8, #0x18]
007bd0b8  02 b0 87 e2                                      add fp, r7, #2
007bd0bc  01 14 82 e1                                      orr r1, r2, r1, lsl #8
007bd0c0  03 00 51 e1                                      cmp r1, r3
007bd0c4  58 00 9d a5                                      ldrge r0, [sp, #0x58]
007bd0c8  28 00 00 aa                                      bge #0x7bd170
007bd0cc  04 20 95 e5                                      ldr r2, [r5, #4]
007bd0d0  08 00 95 e5                                      ldr r0, [r5, #8]
007bd0d4  14 30 98 e5                                      ldr r3, [r8, #0x14]
007bd0d8  01 70 82 e2                                      add r7, r2, #1
007bd0dc  00 00 57 e1                                      cmp r7, r0
007bd0e0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
007bd0e4  aa 08 00 ca                                      bgt #0x7bf394
007bd0e8  0c 10 a0 e3                                      mov r1, #0xc
007bd0ec  00 c0 95 e5                                      ldr ip, [r5]
007bd0f0  91 02 02 e0                                      mul r2, r1, r2
007bd0f4  00 00 a0 e3                                      mov r0, #0
007bd0f8  02 00 cc e7                                      strb r0, [ip, r2]
007bd0fc  02 10 8c e0                                      add r1, ip, r2
007bd100  03 20 a0 e3                                      mov r2, #3
007bd104  08 00 81 e5                                      str r0, [r1, #8]
007bd108  01 20 c1 e5                                      strb r2, [r1, #1]
007bd10c  04 30 81 e5                                      str r3, [r1, #4]
007bd110  04 70 85 e5                                      str r7, [r5, #4]
007bd114  30 ff ff ea                                      b #0x7bcddc
007bd118  07 30 81 e0                                      add r3, r1, r7
007bd11c  05 20 d3 e5                                      ldrb r2, [r3, #5]
007bd120  04 b0 87 e2                                      add fp, r7, #4
007bd124  0b 00 d1 e7                                      ldrb r0, [r1, fp]
007bd128  03 10 d3 e5                                      ldrb r1, [r3, #3]
007bd12c  02 28 a0 e1                                      lsl r2, r2, #0x10
007bd130  06 30 d3 e5                                      ldrb r3, [r3, #6]
007bd134  00 24 82 e1                                      orr r2, r2, r0, lsl #8
007bd138  01 20 82 e1                                      orr r2, r2, r1
007bd13c  03 3c 82 e1                                      orr r3, r2, r3, lsl #24
007bd140  05 00 a0 e1                                      mov r0, r5
007bd144  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bd148  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007bd14c  52 8d fe eb                                      bl #0x76069c
007bd150  21 ff ff ea                                      b #0x7bcddc
007bd154  07 10 81 e0                                      add r1, r1, r7
007bd158  03 10 d1 e5                                      ldrb r1, [r1, #3]
007bd15c  18 30 98 e5                                      ldr r3, [r8, #0x18]
007bd160  01 b0 87 e2                                      add fp, r7, #1
007bd164  03 00 51 e1                                      cmp r1, r3
007bd168  5c 00 9d a5                                      ldrge r0, [sp, #0x5c]
007bd16c  d6 ff ff ba                                      blt #0x7bd0cc
007bd170  03 90 fe eb                                      bl #0x761184
007bd174  00 30 a0 e3                                      mov r3, #0
007bd178  05 00 a0 e1                                      mov r0, r5
007bd17c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bd180  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007bd184  44 8d fe eb                                      bl #0x76069c
007bd188  13 ff ff ea                                      b #0x7bcddc
007bd18c  03 30 87 e2                                      add r3, r7, #3
007bd190  03 10 81 e0                                      add r1, r1, r3
007bd194  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007bd198  04 20 a0 e3                                      mov r2, #4
007bd19c  b1 45 ed eb                                      bl #0x30e868
007bd1a0  08 10 98 e5                                      ldr r1, [r8, #8]
007bd1a4  07 30 87 e2                                      add r3, r7, #7
007bd1a8  44 00 9d e5                                      ldr r0, [sp, #0x44]
007bd1ac  03 10 81 e0                                      add r1, r1, r3
007bd1b0  04 20 a0 e3                                      mov r2, #4
007bd1b4  ab 45 ed eb                                      bl #0x30e868
007bd1b8  4f ce 8d e2                                      add ip, sp, #0x4f0
007bd1bc  ff e0 e0 e3                                      mvn lr, #0xff
007bd1c0  01 2b 8d e2                                      add r2, sp, #0x400
007bd1c4  08 c0 8c e2                                      add ip, ip, #8
007bd1c8  d0 20 c2 e1                                      ldrd r2, r3, [r2]
007bd1cc  05 00 a0 e1                                      mov r0, r5
007bd1d0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bd1d4  fe 20 8c e1                                      strd r2, r3, [ip, lr]
007bd1d8  08 b0 87 e2                                      add fp, r7, #8
007bd1dc  14 f6 ff eb                                      bl #0x7baa34
007bd1e0  fd fe ff ea                                      b #0x7bcddc
; mapping-symbol data/literal pool
007bd1e4  4c 88 1d 00 ac 40 00 00 e4 e9 14 00 d0 e9 14 00  .byte 0x4c, 0x88, 0x1d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0xe9, 0x14, 0x00, 0xd0, 0xe9, 0x14, 0x00
007bd1f4  8c e9 14 00 08 e4 14 00 f0 e1 14 00 a8 d7 14 00  .byte 0x8c, 0xe9, 0x14, 0x00, 0x08, 0xe4, 0x14, 0x00, 0xf0, 0xe1, 0x14, 0x00, 0xa8, 0xd7, 0x14, 0x00
007bd204  e8 d4 14 00 78 d4 14 00 08 d4 14 00 38 d3 14 00  .byte 0xe8, 0xd4, 0x14, 0x00, 0x78, 0xd4, 0x14, 0x00, 0x08, 0xd4, 0x14, 0x00, 0x38, 0xd3, 0x14, 0x00
007bd214  28 d3 14 00 88 50 13 00 9c b5 14 00 d4 f6 10 00  .byte 0x28, 0xd3, 0x14, 0x00, 0x88, 0x50, 0x13, 0x00, 0x9c, 0xb5, 0x14, 0x00, 0xd4, 0xf6, 0x10, 0x00
; decoder-mode: arm
007bd224  07 10 81 e0                                      add r1, r1, r7
007bd228  04 00 95 e5                                      ldr r0, [r5, #4]
007bd22c  03 20 d1 e5                                      ldrb r2, [r1, #3]
007bd230  08 10 95 e5                                      ldr r1, [r5, #8]
007bd234  01 30 80 e2                                      add r3, r0, #1
007bd238  00 20 52 e2                                      subs r2, r2, #0
007bd23c  01 20 a0 13                                      movne r2, #1
007bd240  01 00 53 e1                                      cmp r3, r1
007bd244  01 b0 87 e2                                      add fp, r7, #1
007bd248  21 08 00 ca                                      bgt #0x7bf2d4
007bd24c  0c 10 a0 e3                                      mov r1, #0xc
007bd250  00 c0 95 e5                                      ldr ip, [r5]
007bd254  91 00 00 e0                                      mul r0, r1, r0
007bd258  00 e0 a0 e3                                      mov lr, #0
007bd25c  00 10 8c e0                                      add r1, ip, r0
007bd260  00 e0 cc e7                                      strb lr, [ip, r0]
007bd264  04 20 c1 e5                                      strb r2, [r1, #4]
007bd268  01 20 a0 e3                                      mov r2, #1
007bd26c  01 20 c1 e5                                      strb r2, [r1, #1]
007bd270  04 30 85 e5                                      str r3, [r5, #4]
007bd274  d8 fe ff ea                                      b #0x7bcddc
007bd278  48 e0 9d e5                                      ldr lr, [sp, #0x48]
007bd27c  07 10 81 e0                                      add r1, r1, r7
007bd280  03 30 d1 e5                                      ldrb r3, [r1, #3]
007bd284  00 00 5e e3                                      cmp lr, #0
007bd288  01 b0 87 e2                                      add fp, r7, #1
007bd28c  07 08 00 1a                                      bne #0x7bf2b0
007bd290  03 00 53 e3                                      cmp r3, #3
007bd294  a0 00 00 9a                                      bls #0x7bd51c
007bd298  05 00 a0 e1                                      mov r0, r5
007bd29c  34 10 9d e5                                      ldr r1, [sp, #0x34]
007bd2a0  10 30 8d e5                                      str r3, [sp, #0x10]
007bd2a4  7b af fe eb                                      bl #0x769098
007bd2a8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bd2ac  60 00 9d e5                                      ldr r0, [sp, #0x60]
007bd2b0  03 10 a0 e1                                      mov r1, r3
007bd2b4  b2 8f fe eb                                      bl #0x761184
007bd2b8  c7 fe ff ea                                      b #0x7bcddc
007bd2bc  05 00 a0 e1                                      mov r0, r5
007bd2c0  34 10 9d e5                                      ldr r1, [sp, #0x34]
007bd2c4  73 af fe eb                                      bl #0x769098
007bd2c8  07 b0 a0 e1                                      mov fp, r7
007bd2cc  c2 fe ff ea                                      b #0x7bcddc
007bd2d0  03 30 87 e2                                      add r3, r7, #3
007bd2d4  41 0e 8d e2                                      add r0, sp, #0x410
007bd2d8  03 10 81 e0                                      add r1, r1, r3
007bd2dc  04 20 a0 e3                                      mov r2, #4
007bd2e0  04 00 80 e2                                      add r0, r0, #4
007bd2e4  5f 45 ed eb                                      bl #0x30e868
007bd2e8  14 34 9d e5                                      ldr r3, [sp, #0x414]
007bd2ec  05 00 a0 e1                                      mov r0, r5
007bd2f0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bd2f4  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007bd2f8  04 b0 87 e2                                      add fp, r7, #4
007bd2fc  ad f5 ff eb                                      bl #0x7ba9b8
007bd300  b5 fe ff ea                                      b #0x7bcddc
007bd304  03 e0 87 e2                                      add lr, r7, #3
007bd308  0e 00 81 e0                                      add r0, r1, lr
007bd30c  14 10 8d e5                                      str r1, [sp, #0x14]
007bd310  20 e0 8d e5                                      str lr, [sp, #0x20]
007bd314  3c 00 8d e5                                      str r0, [sp, #0x3c]
007bd318  cd 42 ed eb                                      bl #0x30de54
007bd31c  00 30 50 e2                                      subs r3, r0, #0
007bd320  14 10 9d e5                                      ldr r1, [sp, #0x14]
007bd324  f3 07 00 da                                      ble #0x7bf2f8
007bd328  68 30 95 e5                                      ldr r3, [r5, #0x68]
007bd32c  18 e0 98 e5                                      ldr lr, [r8, #0x18]
007bd330  00 00 53 e3                                      cmp r3, #0
007bd334  3c e0 8d e5                                      str lr, [sp, #0x3c]
007bd338  03 00 00 0a                                      beq #0x7bd34c
007bd33c  64 00 95 e5                                      ldr r0, [r5, #0x64]
007bd340  04 20 d0 e5                                      ldrb r2, [r0, #4]
007bd344  00 00 52 e3                                      cmp r2, #0
007bd348  1d 08 00 0a                                      beq #0x7bf3c4
007bd34c  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bd350  42 be 8d e2                                      add fp, sp, #0x420
007bd354  0c b0 8b e2                                      add fp, fp, #0xc
007bd358  00 10 81 e0                                      add r1, r1, r0
007bd35c  0b 00 a0 e1                                      mov r0, fp
007bd360  10 30 8d e5                                      str r3, [sp, #0x10]
007bd364  c4 59 f1 eb                                      bl #0x413a7c
007bd368  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bd36c  0b 10 a0 e1                                      mov r1, fp
007bd370  2c 00 83 e2                                      add r0, r3, #0x2c
007bd374  d4 7b fe eb                                      bl #0x75c2cc
007bd378  2c 14 dd e5                                      ldrb r1, [sp, #0x42c]
007bd37c  64 00 8d e5                                      str r0, [sp, #0x64]
007bd380  71 30 af e6                                      sxtb r3, r1
007bd384  01 00 73 e3                                      cmn r3, #1
007bd388  39 08 00 0a                                      beq #0x7bf474
007bd38c  18 30 98 e5                                      ldr r3, [r8, #0x18]
007bd390  1c 20 98 e5                                      ldr r2, [r8, #0x1c]
007bd394  01 b0 83 e2                                      add fp, r3, #1
007bd398  02 00 5b e1                                      cmp fp, r2
007bd39c  03 08 00 ca                                      bgt #0x7bf3b0
007bd3a0  14 10 98 e5                                      ldr r1, [r8, #0x14]
007bd3a4  64 e0 9d e5                                      ldr lr, [sp, #0x64]
007bd3a8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007bd3ac  0a 00 a0 e3                                      mov r0, #0xa
007bd3b0  03 e1 81 e7                                      str lr, [r1, r3, lsl #2]
007bd3b4  08 10 98 e5                                      ldr r1, [r8, #8]
007bd3b8  18 b0 88 e5                                      str fp, [r8, #0x18]
007bd3bc  4c 24 a0 e1                                      asr r2, ip, #8
007bd3c0  07 10 81 e0                                      add r1, r1, r7
007bd3c4  02 00 c1 e5                                      strb r0, [r1, #2]
007bd3c8  08 10 98 e5                                      ldr r1, [r8, #8]
007bd3cc  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bd3d0  04 30 87 e2                                      add r3, r7, #4
007bd3d4  00 c0 c1 e7                                      strb ip, [r1, r0]
007bd3d8  08 10 98 e5                                      ldr r1, [r8, #8]
007bd3dc  03 20 c1 e7                                      strb r2, [r1, r3]
007bd3e0  08 20 98 e5                                      ldr r2, [r8, #8]
007bd3e4  12 ff ff ea                                      b #0x7bd034
007bd3e8  f0 bc fe eb                                      bl #0x76c7b0
007bd3ec  00 00 50 e3                                      cmp r0, #0
007bd3f0  2d fd ff 0a                                      beq #0x7bc8ac
007bd3f4  ed bc fe eb                                      bl #0x76c7b0
007bd3f8  00 a0 a0 e1                                      mov sl, r0
007bd3fc  05 00 a0 e1                                      mov r0, r5
007bd400  af 3e 00 eb                                      bl #0x7ccec4
007bd404  00 30 90 e5                                      ldr r3, [r0]
007bd408  0f e0 a0 e1                                      mov lr, pc
007bd40c  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007bd410  0a 10 84 e2                                      add r1, r4, #0xa
007bd414  07 20 a0 e1                                      mov r2, r7
007bd418  3a ff 2f e1                                      blx sl
007bd41c  22 fd ff ea                                      b #0x7bc8ac
007bd420  56 af 8d e2                                      add sl, sp, #0x158
007bd424  00 30 a0 e3                                      mov r3, #0
007bd428  07 10 a0 e1                                      mov r1, r7
007bd42c  0a 00 a0 e1                                      mov r0, sl
007bd430  59 31 cd e5                                      strb r3, [sp, #0x159]
007bd434  58 31 cd e5                                      strb r3, [sp, #0x158]
007bd438  c4 67 ff eb                                      bl #0x797350
007bd43c  04 10 a0 e1                                      mov r1, r4
007bd440  0a 20 a0 e1                                      mov r2, sl
007bd444  05 00 a0 e1                                      mov r0, r5
007bd448  97 41 00 eb                                      bl #0x7cdaac
007bd44c  0a 00 a0 e1                                      mov r0, sl
007bd450  33 67 ff eb                                      bl #0x797124
007bd454  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bd458  c5 fc ff ea                                      b #0x7bc774
007bd45c  04 20 95 e5                                      ldr r2, [r5, #4]
007bd460  00 30 95 e5                                      ldr r3, [r5]
007bd464  0c 10 a0 e3                                      mov r1, #0xc
007bd468  01 20 42 e2                                      sub r2, r2, #1
007bd46c  01 70 42 e2                                      sub r7, r2, #1
007bd470  91 37 27 e0                                      mla r7, r1, r7, r3
007bd474  91 32 21 e0                                      mla r1, r1, r2, r3
007bd478  07 00 a0 e1                                      mov r0, r7
007bd47c  4f 6a ff eb                                      bl #0x797dc0
007bd480  00 10 a0 e1                                      mov r1, r0
007bd484  07 00 a0 e1                                      mov r0, r7
007bd488  68 67 ff eb                                      bl #0x797230
007bd48c  04 10 95 e5                                      ldr r1, [r5, #4]
007bd490  05 00 a0 e1                                      mov r0, r5
007bd494  01 10 41 e2                                      sub r1, r1, #1
007bd498  c1 05 ff eb                                      bl #0x77eba4
007bd49c  b3 fc ff ea                                      b #0x7bc770
007bd4a0  05 00 a0 e1                                      mov r0, r5
007bd4a4  c7 10 87 e0                                      add r1, r7, r7, asr #1
007bd4a8  10 30 8d e5                                      str r3, [sp, #0x10]
007bd4ac  d6 73 fe eb                                      bl #0x75a40c
007bd4b0  04 20 95 e5                                      ldr r2, [r5, #4]
007bd4b4  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bd4b8  ee fe ff ea                                      b #0x7bd078
007bd4bc  e0 14 dd e5                                      ldrb r1, [sp, #0x4e0]
007bd4c0  71 30 af e6                                      sxtb r3, r1
007bd4c4  01 00 73 e3                                      cmn r3, #1
007bd4c8  b2 fc ff 1a                                      bne #0x7bc798
007bd4cc  ec 04 9d e5                                      ldr r0, [sp, #0x4ec]
007bd4d0  e8 14 9d e5                                      ldr r1, [sp, #0x4e8]
007bd4d4  97 55 fe eb                                      bl #0x752b38
007bd4d8  ae fc ff ea                                      b #0x7bc798
007bd4dc  e4 02 1f e5                                      ldr r0, [pc, #-0x2e4]
007bd4e0  03 10 a0 e1                                      mov r1, r3
007bd4e4  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bd4e8  00 00 8f e0                                      add r0, pc, r0
007bd4ec  24 8f fe eb                                      bl #0x761184
007bd4f0  9f fc ff ea                                      b #0x7bc774
007bd4f4  00 10 90 e5                                      ldr r1, [r0]
007bd4f8  01 10 41 e2                                      sub r1, r1, #1
007bd4fc  00 00 51 e3                                      cmp r1, #0
007bd500  00 10 80 e5                                      str r1, [r0]
007bd504  00 00 00 1a                                      bne #0x7bd50c
007bd508  8a 55 fe eb                                      bl #0x752b38
007bd50c  00 30 a0 e3                                      mov r3, #0
007bd510  64 30 85 e5                                      str r3, [r5, #0x64]
007bd514  68 30 85 e5                                      str r3, [r5, #0x68]
007bd518  50 fd ff ea                                      b #0x7bca60
007bd51c  0c 20 a0 e3                                      mov r2, #0xc
007bd520  92 03 03 e0                                      mul r3, r2, r3
007bd524  05 00 a0 e1                                      mov r0, r5
007bd528  10 10 83 e2                                      add r1, r3, #0x10
007bd52c  01 10 85 e0                                      add r1, r5, r1
007bd530  d8 ae fe eb                                      bl #0x769098
007bd534  28 fe ff ea                                      b #0x7bcddc
007bd538  44 00 95 e5                                      ldr r0, [r5, #0x44]
007bd53c  04 c0 95 e5                                      ldr ip, [r5, #4]
007bd540  40 20 95 e5                                      ldr r2, [r5, #0x40]
007bd544  00 10 95 e5                                      ldr r1, [r5]
007bd548  01 00 40 e2                                      sub r0, r0, #1
007bd54c  00 00 63 e0                                      rsb r0, r3, r0
007bd550  01 c0 4c e2                                      sub ip, ip, #1
007bd554  0c 30 a0 e3                                      mov r3, #0xc
007bd558  93 1c 21 e0                                      mla r1, r3, ip, r1
007bd55c  93 20 20 e0                                      mla r0, r3, r0, r2
007bd560  75 68 ff eb                                      bl #0x79773c
007bd564  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bd568  81 fc ff ea                                      b #0x7bc774
007bd56c  04 20 95 e5                                      ldr r2, [r5, #4]
007bd570  00 30 95 e5                                      ldr r3, [r5]
007bd574  0c 10 a0 e3                                      mov r1, #0xc
007bd578  03 20 42 e2                                      sub r2, r2, #3
007bd57c  91 32 23 e0                                      mla r3, r1, r2, r3
007bd580  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007bd584  05 00 52 e3                                      cmp r2, #5
007bd588  00 00 a0 13                                      movne r0, #0
007bd58c  04 00 93 05                                      ldreq r0, [r3, #4]
007bd590  3f f4 ff eb                                      bl #0x7ba694
007bd594  00 70 50 e2                                      subs r7, r0, #0
007bd598  4e ce 8d 12                                      addne ip, sp, #0x4e0
007bd59c  20 c0 8d 15                                      strne ip, [sp, #0x20]
007bd5a0  c4 0b 00 0a                                      beq #0x7c04b8
007bd5a4  00 30 97 e5                                      ldr r3, [r7]
007bd5a8  04 00 95 e5                                      ldr r0, [r5, #4]
007bd5ac  00 20 95 e5                                      ldr r2, [r5]
007bd5b0  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
007bd5b4  0c a0 a0 e3                                      mov sl, #0xc
007bd5b8  02 00 40 e2                                      sub r0, r0, #2
007bd5bc  9a 20 20 e0                                      mla r0, sl, r0, r2
007bd5c0  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bd5c4  10 30 8d e5                                      str r3, [sp, #0x10]
007bd5c8  6b 69 ff eb                                      bl #0x797b7c
007bd5cc  00 b0 a0 e1                                      mov fp, r0
007bd5d0  04 00 95 e5                                      ldr r0, [r5, #4]
007bd5d4  00 20 95 e5                                      ldr r2, [r5]
007bd5d8  01 00 40 e2                                      sub r0, r0, #1
007bd5dc  9a 20 20 e0                                      mla r0, sl, r0, r2
007bd5e0  1b 69 ff eb                                      bl #0x797a54
007bd5e4  0e 45 ed eb                                      bl #0x30ea24
007bd5e8  0b 10 a0 e1                                      mov r1, fp
007bd5ec  00 20 a0 e1                                      mov r2, r0
007bd5f0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bd5f4  07 00 a0 e1                                      mov r0, r7
007bd5f8  33 ff 2f e1                                      blx r3
007bd5fc  04 10 95 e5                                      ldr r1, [r5, #4]
007bd600  05 00 a0 e1                                      mov r0, r5
007bd604  03 10 41 e2                                      sub r1, r1, #3
007bd608  65 05 ff eb                                      bl #0x77eba4
007bd60c  57 fc ff ea                                      b #0x7bc770
007bd610  88 00 95 e8                                      ldm r5, {r3, r7}
007bd614  0c b0 a0 e3                                      mov fp, #0xc
007bd618  02 70 47 e2                                      sub r7, r7, #2
007bd61c  9b 37 27 e0                                      mla r7, fp, r7, r3
007bd620  07 00 a0 e1                                      mov r0, r7
007bd624  16 8d f1 eb                                      bl #0x420a84
007bd628  00 a0 a0 e1                                      mov sl, r0
007bd62c  04 00 95 e5                                      ldr r0, [r5, #4]
007bd630  00 30 95 e5                                      ldr r3, [r5]
007bd634  01 00 40 e2                                      sub r0, r0, #1
007bd638  9b 30 20 e0                                      mla r0, fp, r0, r3
007bd63c  10 8d f1 eb                                      bl #0x420a84
007bd640  d0 30 d0 e1                                      ldrsb r3, [r0]
007bd644  01 00 73 e3                                      cmn r3, #1
007bd648  d0 30 da e1                                      ldrsb r3, [sl]
007bd64c  01 10 80 12                                      addne r1, r0, #1
007bd650  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007bd654  01 00 73 e3                                      cmn r3, #1
007bd658  01 00 8a 12                                      addne r0, sl, #1
007bd65c  0c 00 9a 05                                      ldreq r0, [sl, #0xc]
007bd660  2d 43 ed eb                                      bl #0x30e31c
007bd664  a0 1f a0 e1                                      lsr r1, r0, #0x1f
007bd668  07 00 a0 e1                                      mov r0, r7
007bd66c  ef 66 ff eb                                      bl #0x797230
007bd670  3e fc ff ea                                      b #0x7bc770
007bd674  78 04 1f e5                                      ldr r0, [pc, #-0x478]
007bd678  00 00 8f e0                                      add r0, pc, r0
007bd67c  c0 8e fe eb                                      bl #0x761184
007bd680  3a fc ff ea                                      b #0x7bc770
007bd684  04 10 95 e5                                      ldr r1, [r5, #4]
007bd688  00 30 95 e5                                      ldr r3, [r5]
007bd68c  0c 20 a0 e3                                      mov r2, #0xc
007bd690  01 10 41 e2                                      sub r1, r1, #1
007bd694  92 31 20 e0                                      mla r0, r2, r1, r3
007bd698  d1 c0 d0 e1                                      ldrsb ip, [r0, #1]
007bd69c  05 00 5c e3                                      cmp ip, #5
007bd6a0  de 07 00 0a                                      beq #0x7bf620
007bd6a4  01 10 41 e2                                      sub r1, r1, #1
007bd6a8  92 31 20 e0                                      mla r0, r2, r1, r3
007bd6ac  3e 65 ff eb                                      bl #0x796bac
007bd6b0  00 70 a0 e3                                      mov r7, #0
007bd6b4  04 10 95 e5                                      ldr r1, [r5, #4]
007bd6b8  05 00 a0 e1                                      mov r0, r5
007bd6bc  01 10 41 e2                                      sub r1, r1, #1
007bd6c0  37 05 ff eb                                      bl #0x77eba4
007bd6c4  04 20 95 e5                                      ldr r2, [r5, #4]
007bd6c8  00 30 95 e5                                      ldr r3, [r5]
007bd6cc  0c 00 a0 e3                                      mov r0, #0xc
007bd6d0  01 20 42 e2                                      sub r2, r2, #1
007bd6d4  90 32 20 e0                                      mla r0, r0, r2, r3
007bd6d8  07 10 a0 e1                                      mov r1, r7
007bd6dc  db 66 ff eb                                      bl #0x797250
007bd6e0  22 fc ff ea                                      b #0x7bc770
007bd6e4  e4 04 1f e5                                      ldr r0, [pc, #-0x4e4]
007bd6e8  00 00 8f e0                                      add r0, pc, r0
007bd6ec  a4 8e fe eb                                      bl #0x761184
007bd6f0  1e fc ff ea                                      b #0x7bc770
007bd6f4  04 00 95 e5                                      ldr r0, [r5, #4]
007bd6f8  00 30 95 e5                                      ldr r3, [r5]
007bd6fc  0c 70 a0 e3                                      mov r7, #0xc
007bd700  01 00 40 e2                                      sub r0, r0, #1
007bd704  97 30 20 e0                                      mla r0, r7, r0, r3
007bd708  d1 68 ff eb                                      bl #0x797a54
007bd70c  c4 44 ed eb                                      bl #0x30ea24
007bd710  04 20 95 e5                                      ldr r2, [r5, #4]
007bd714  00 30 95 e5                                      ldr r3, [r5]
007bd718  01 00 50 e3                                      cmp r0, #1
007bd71c  00 a0 a0 a1                                      movge sl, r0
007bd720  01 a0 a0 b3                                      movlt sl, #1
007bd724  01 20 42 e2                                      sub r2, r2, #1
007bd728  97 32 27 e0                                      mla r7, r7, r2, r3
007bd72c  59 e8 ff eb                                      bl #0x7b7898
007bd730  0a 10 a0 e1                                      mov r1, sl
007bd734  fc 44 ed eb                                      bl #0x30eb2c
007bd738  01 00 a0 e1                                      mov r0, r1
007bd73c  7b 45 ed eb                                      bl #0x30ed30
007bd740  00 20 a0 e1                                      mov r2, r0
007bd744  01 30 a0 e1                                      mov r3, r1
007bd748  07 00 a0 e1                                      mov r0, r7
007bd74c  4d 67 ff eb                                      bl #0x797488
007bd750  06 fc ff ea                                      b #0x7bc770
007bd754  50 05 1f e5                                      ldr r0, [pc, #-0x550]
007bd758  00 00 8f e0                                      add r0, pc, r0
007bd75c  88 8e fe eb                                      bl #0x761184
007bd760  02 fc ff ea                                      b #0x7bc770
007bd764  04 20 95 e5                                      ldr r2, [r5, #4]
007bd768  00 30 95 e5                                      ldr r3, [r5]
007bd76c  0c 70 a0 e3                                      mov r7, #0xc
007bd770  01 20 42 e2                                      sub r2, r2, #1
007bd774  97 32 27 e0                                      mla r7, r7, r2, r3
007bd778  4e 1e 8d e2                                      add r1, sp, #0x4e0
007bd77c  07 00 a0 e1                                      mov r0, r7
007bd780  fd 68 ff eb                                      bl #0x797b7c
007bd784  d0 30 d0 e1                                      ldrsb r3, [r0]
007bd788  01 00 73 e3                                      cmn r3, #1
007bd78c  0c 00 90 05                                      ldreq r0, [r0, #0xc]
007bd790  01 00 80 12                                      addne r0, r0, #1
007bd794  d0 00 d0 e1                                      ldrsb r0, [r0]
007bd798  e7 ff ff ea                                      b #0x7bd73c
007bd79c  04 00 95 e5                                      ldr r0, [r5, #4]
007bd7a0  00 30 95 e5                                      ldr r3, [r5]
007bd7a4  0c 70 a0 e3                                      mov r7, #0xc
007bd7a8  01 00 40 e2                                      sub r0, r0, #1
007bd7ac  97 30 20 e0                                      mla r0, r7, r0, r3
007bd7b0  a7 68 ff eb                                      bl #0x797a54
007bd7b4  9a 44 ed eb                                      bl #0x30ea24
007bd7b8  04 20 95 e5                                      ldr r2, [r5, #4]
007bd7bc  00 30 95 e5                                      ldr r3, [r5]
007bd7c0  f5 1f 8d e2                                      add r1, sp, #0x3d4
007bd7c4  01 20 42 e2                                      sub r2, r2, #1
007bd7c8  d4 03 cd e5                                      strb r0, [sp, #0x3d4]
007bd7cc  97 32 20 e0                                      mla r0, r7, r2, r3
007bd7d0  00 30 a0 e3                                      mov r3, #0
007bd7d4  d5 33 cd e5                                      strb r3, [sp, #0x3d5]
007bd7d8  dc 66 ff eb                                      bl #0x797350
007bd7dc  e3 fb ff ea                                      b #0x7bc770
007bd7e0  59 e8 ff eb                                      bl #0x7b794c
007bd7e4  00 a0 a0 e1                                      mov sl, r0
007bd7e8  05 00 a0 e1                                      mov r0, r5
007bd7ec  01 b0 a0 e1                                      mov fp, r1
007bd7f0  79 fa ff eb                                      bl #0x7bc1dc
007bd7f4  d0 04 c0 e1                                      ldrd r0, r1, [r0, #0x40]
007bd7f8  00 00 5a e0                                      subs r0, sl, r0
007bd7fc  01 10 cb e0                                      sbc r1, fp, r1
007bd800  3e 42 ed eb                                      bl #0x30e100
007bd804  4f 2e 8d e2                                      add r2, sp, #0x4f0
007bd808  ff 30 e0 e3                                      mvn r3, #0xff
007bd80c  08 20 82 e2                                      add r2, r2, #8
007bd810  f3 00 82 e1                                      strd r0, r1, [r2, r3]
007bd814  05 00 a0 e1                                      mov r0, r5
007bd818  fe 1f 8d e2                                      add r1, sp, #0x3f8
007bd81c  84 f4 ff eb                                      bl #0x7baa34
007bd820  d2 fb ff ea                                      b #0x7bc770
007bd824  1c 06 1f e5                                      ldr r0, [pc, #-0x61c]
007bd828  00 00 8f e0                                      add r0, pc, r0
007bd82c  54 8e fe eb                                      bl #0x761184
007bd830  ce fb ff ea                                      b #0x7bc770
007bd834  28 06 1f e5                                      ldr r0, [pc, #-0x628]
007bd838  00 00 8f e0                                      add r0, pc, r0
007bd83c  50 8e fe eb                                      bl #0x761184
007bd840  ca fb ff ea                                      b #0x7bc770
007bd844  04 00 95 e5                                      ldr r0, [r5, #4]
007bd848  00 30 95 e5                                      ldr r3, [r5]
007bd84c  0c 70 a0 e3                                      mov r7, #0xc
007bd850  01 00 40 e2                                      sub r0, r0, #1
007bd854  97 30 20 e0                                      mla r0, r7, r0, r3
007bd858  4e 3e 8d e2                                      add r3, sp, #0x4e0
007bd85c  20 30 8d e5                                      str r3, [sp, #0x20]
007bd860  87 8c f1 eb                                      bl #0x420a84
007bd864  00 10 a0 e1                                      mov r1, r0
007bd868  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bd86c  b7 55 fe eb                                      bl #0x752f50
007bd870  04 10 95 e5                                      ldr r1, [r5, #4]
007bd874  00 30 95 e5                                      ldr r3, [r5]
007bd878  01 10 41 e2                                      sub r1, r1, #1
007bd87c  01 20 41 e2                                      sub r2, r1, #1
007bd880  97 32 23 e0                                      mla r3, r7, r2, r3
007bd884  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007bd888  05 00 52 e3                                      cmp r2, #5
007bd88c  0b 08 00 0a                                      beq #0x7bf8c0
007bd890  05 00 a0 e1                                      mov r0, r5
007bd894  c2 04 ff eb                                      bl #0x77eba4
007bd898  00 70 a0 e3                                      mov r7, #0
007bd89c  04 20 95 e5                                      ldr r2, [r5, #4]
007bd8a0  00 30 95 e5                                      ldr r3, [r5]
007bd8a4  0c 00 a0 e3                                      mov r0, #0xc
007bd8a8  01 20 42 e2                                      sub r2, r2, #1
007bd8ac  90 32 20 e0                                      mla r0, r0, r2, r3
007bd8b0  07 10 a0 e1                                      mov r1, r7
007bd8b4  5d 66 ff eb                                      bl #0x797230
007bd8b8  ac fb ff ea                                      b #0x7bc770
007bd8bc  04 00 95 e5                                      ldr r0, [r5, #4]
007bd8c0  00 30 95 e5                                      ldr r3, [r5]
007bd8c4  0c c0 a0 e3                                      mov ip, #0xc
007bd8c8  01 00 40 e2                                      sub r0, r0, #1
007bd8cc  9c 30 20 e0                                      mla r0, ip, r0, r3
007bd8d0  6b 8c f1 eb                                      bl #0x420a84
007bd8d4  13 ad 8d e2                                      add sl, sp, #0x4c0
007bd8d8  0c a0 8a e2                                      add sl, sl, #0xc
007bd8dc  00 10 a0 e1                                      mov r1, r0
007bd8e0  3b be 8d e2                                      add fp, sp, #0x3b0
007bd8e4  0a 00 a0 e1                                      mov r0, sl
007bd8e8  cf 55 fe eb                                      bl #0x75302c
007bd8ec  00 70 a0 e3                                      mov r7, #0
007bd8f0  06 30 a0 e1                                      mov r3, r6
007bd8f4  0b 00 a0 e1                                      mov r0, fp
007bd8f8  05 10 a0 e1                                      mov r1, r5
007bd8fc  0a 20 a0 e1                                      mov r2, sl
007bd900  00 70 8d e5                                      str r7, [sp]
007bd904  88 41 00 eb                                      bl #0x7cdf2c
007bd908  b1 33 dd e5                                      ldrb r3, [sp, #0x3b1]
007bd90c  07 00 53 e1                                      cmp r3, r7
007bd910  dd 06 00 0a                                      beq #0x7bf48c
007bd914  0b 00 a0 e1                                      mov r0, fp
007bd918  01 66 ff eb                                      bl #0x797124
007bd91c  05 00 a0 e1                                      mov r0, r5
007bd920  0a 10 a0 e1                                      mov r1, sl
007bd924  01 20 a0 e3                                      mov r2, #1
007bd928  b1 73 cd e5                                      strb r7, [sp, #0x3b1]
007bd92c  63 3e 00 eb                                      bl #0x7cd2c0
007bd930  00 00 50 e3                                      cmp r0, #0
007bd934  24 09 00 ba                                      blt #0x7bfdcc
007bd938  54 a0 95 e5                                      ldr sl, [r5, #0x54]
007bd93c  80 a2 8a e0                                      add sl, sl, r0, lsl #5
007bd940  14 00 8a e2                                      add r0, sl, #0x14
007bd944  f6 65 ff eb                                      bl #0x797124
007bd948  15 70 ca e5                                      strb r7, [sl, #0x15]
007bd94c  04 00 95 e5                                      ldr r0, [r5, #4]
007bd950  00 30 95 e5                                      ldr r3, [r5]
007bd954  0c e0 a0 e3                                      mov lr, #0xc
007bd958  01 00 40 e2                                      sub r0, r0, #1
007bd95c  01 10 a0 e3                                      mov r1, #1
007bd960  9e 30 20 e0                                      mla r0, lr, r0, r3
007bd964  31 66 ff eb                                      bl #0x797230
007bd968  0b 00 a0 e1                                      mov r0, fp
007bd96c  ec 65 ff eb                                      bl #0x797124
007bd970  cc e4 dd e5                                      ldrb lr, [sp, #0x4cc]
007bd974  7e 30 af e6                                      sxtb r3, lr
007bd978  01 00 73 e3                                      cmn r3, #1
007bd97c  7b fb ff 1a                                      bne #0x7bc770
007bd980  d8 04 9d e5                                      ldr r0, [sp, #0x4d8]
007bd984  d4 14 9d e5                                      ldr r1, [sp, #0x4d4]
007bd988  6a 54 fe eb                                      bl #0x752b38
007bd98c  77 fb ff ea                                      b #0x7bc770
007bd990  00 30 a0 e3                                      mov r3, #0
007bd994  e3 0f 8d e2                                      add r0, sp, #0x38c
007bd998  30 10 9d e5                                      ldr r1, [sp, #0x30]
007bd99c  8d 33 cd e5                                      strb r3, [sp, #0x38d]
007bd9a0  d4 33 8d e5                                      str r3, [sp, #0x3d4]
007bd9a4  98 33 cd e5                                      strb r3, [sp, #0x398]
007bd9a8  99 33 cd e5                                      strb r3, [sp, #0x399]
007bd9ac  8c 33 cd e5                                      strb r3, [sp, #0x38c]
007bd9b0  20 00 8d e5                                      str r0, [sp, #0x20]
007bd9b4  60 67 ff eb                                      bl #0x79773c
007bd9b8  04 20 95 e5                                      ldr r2, [r5, #4]
007bd9bc  00 30 95 e5                                      ldr r3, [r5]
007bd9c0  0c 10 a0 e3                                      mov r1, #0xc
007bd9c4  01 20 42 e2                                      sub r2, r2, #1
007bd9c8  91 32 21 e0                                      mla r1, r1, r2, r3
007bd9cc  01 30 d1 e5                                      ldrb r3, [r1, #1]
007bd9d0  03 30 43 e2                                      sub r3, r3, #3
007bd9d4  73 30 ef e6                                      uxtb r3, r3
007bd9d8  01 00 53 e3                                      cmp r3, #1
007bd9dc  f3 09 00 9a                                      bls #0x7c01b0
007bd9e0  e6 af 8d e2                                      add sl, sp, #0x398
007bd9e4  0a 00 a0 e1                                      mov r0, sl
007bd9e8  53 67 ff eb                                      bl #0x79773c
007bd9ec  dc 37 1f e5                                      ldr r3, [pc, #-0x7dc]
007bd9f0  03 30 8f e0                                      add r3, pc, r3
007bd9f4  24 30 8d e5                                      str r3, [sp, #0x24]
007bd9f8  04 00 95 e5                                      ldr r0, [r5, #4]
007bd9fc  00 30 95 e5                                      ldr r3, [r5]
007bda00  0c c0 a0 e3                                      mov ip, #0xc
007bda04  02 00 40 e2                                      sub r0, r0, #2
007bda08  9c 30 20 e0                                      mla r0, ip, r0, r3
007bda0c  10 68 ff eb                                      bl #0x797a54
007bda10  03 44 ed eb                                      bl #0x30ea24
007bda14  04 c0 95 e5                                      ldr ip, [r5, #4]
007bda18  24 e0 9d e5                                      ldr lr, [sp, #0x24]
007bda1c  da 7f 8d e2                                      add r7, sp, #0x368
007bda20  03 c0 4c e2                                      sub ip, ip, #3
007bda24  00 b0 a0 e1                                      mov fp, r0
007bda28  05 20 a0 e1                                      mov r2, r5
007bda2c  20 30 9d e5                                      ldr r3, [sp, #0x20]
007bda30  07 00 a0 e1                                      mov r0, r7
007bda34  0a 10 a0 e1                                      mov r1, sl
007bda38  00 58 8d e8                                      stm sp, {fp, ip, lr}
007bda3c  b0 f3 ff eb                                      bl #0x7ba904
007bda40  04 10 95 e5                                      ldr r1, [r5, #4]
007bda44  05 00 a0 e1                                      mov r0, r5
007bda48  01 10 41 e2                                      sub r1, r1, #1
007bda4c  01 10 6b e0                                      rsb r1, fp, r1
007bda50  53 04 ff eb                                      bl #0x77eba4
007bda54  04 00 95 e5                                      ldr r0, [r5, #4]
007bda58  00 30 95 e5                                      ldr r3, [r5]
007bda5c  0c 20 a0 e3                                      mov r2, #0xc
007bda60  01 00 40 e2                                      sub r0, r0, #1
007bda64  07 10 a0 e1                                      mov r1, r7
007bda68  92 30 20 e0                                      mla r0, r2, r0, r3
007bda6c  32 67 ff eb                                      bl #0x79773c
007bda70  d4 13 9d e5                                      ldr r1, [sp, #0x3d4]
007bda74  00 00 51 e3                                      cmp r1, #0
007bda78  01 00 00 0a                                      beq #0x7bda84
007bda7c  05 00 a0 e1                                      mov r0, r5
007bda80  11 3d 00 eb                                      bl #0x7ccecc
007bda84  07 00 a0 e1                                      mov r0, r7
007bda88  a5 65 ff eb                                      bl #0x797124
007bda8c  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bda90  a3 65 ff eb                                      bl #0x797124
007bda94  0a 00 a0 e1                                      mov r0, sl
007bda98  a1 65 ff eb                                      bl #0x797124
007bda9c  d4 03 9d e5                                      ldr r0, [sp, #0x3d4]
007bdaa0  00 00 50 e3                                      cmp r0, #0
007bdaa4  31 fb ff 0a                                      beq #0x7bc770
007bdaa8  e4 71 fe eb                                      bl #0x75a240
007bdaac  2f fb ff ea                                      b #0x7bc770
007bdab0  04 00 95 e5                                      ldr r0, [r5, #4]
007bdab4  00 30 95 e5                                      ldr r3, [r5]
007bdab8  0c 70 a0 e3                                      mov r7, #0xc
007bdabc  02 00 40 e2                                      sub r0, r0, #2
007bdac0  97 30 20 e0                                      mla r0, r7, r0, r3
007bdac4  ee 8b f1 eb                                      bl #0x420a84
007bdac8  04 20 95 e5                                      ldr r2, [r5, #4]
007bdacc  00 30 95 e5                                      ldr r3, [r5]
007bdad0  00 10 a0 e1                                      mov r1, r0
007bdad4  01 20 42 e2                                      sub r2, r2, #1
007bdad8  05 00 a0 e1                                      mov r0, r5
007bdadc  97 32 22 e0                                      mla r2, r7, r2, r3
007bdae0  75 3e 00 eb                                      bl #0x7cd4bc
007bdae4  04 10 95 e5                                      ldr r1, [r5, #4]
007bdae8  05 00 a0 e1                                      mov r0, r5
007bdaec  02 10 41 e2                                      sub r1, r1, #2
007bdaf0  2b 04 ff eb                                      bl #0x77eba4
007bdaf4  1d fb ff ea                                      b #0x7bc770
007bdaf8  50 30 9d e5                                      ldr r3, [sp, #0x50]
007bdafc  00 00 53 e3                                      cmp r3, #0
007bdb00  06 00 00 0a                                      beq #0x7bdb20
007bdb04  04 20 95 e5                                      ldr r2, [r5, #4]
007bdb08  00 30 95 e5                                      ldr r3, [r5]
007bdb0c  0c 10 a0 e3                                      mov r1, #0xc
007bdb10  01 20 42 e2                                      sub r2, r2, #1
007bdb14  91 32 21 e0                                      mla r1, r1, r2, r3
007bdb18  50 00 9d e5                                      ldr r0, [sp, #0x50]
007bdb1c  06 67 ff eb                                      bl #0x79773c
007bdb20  04 10 95 e5                                      ldr r1, [r5, #4]
007bdb24  05 00 a0 e1                                      mov r0, r5
007bdb28  09 40 a0 e1                                      mov r4, sb
007bdb2c  01 10 41 e2                                      sub r1, r1, #1
007bdb30  1b 04 ff eb                                      bl #0x77eba4
007bdb34  0d fb ff ea                                      b #0x7bc770
007bdb38  04 20 95 e5                                      ldr r2, [r5, #4]
007bdb3c  00 30 95 e5                                      ldr r3, [r5]
007bdb40  0c 10 a0 e3                                      mov r1, #0xc
007bdb44  01 20 42 e2                                      sub r2, r2, #1
007bdb48  91 32 21 e0                                      mla r1, r1, r2, r3
007bdb4c  05 00 a0 e1                                      mov r0, r5
007bdb50  72 3d 00 eb                                      bl #0x7cd120
007bdb54  ce f2 ff eb                                      bl #0x7ba694
007bdb58  00 a0 50 e2                                      subs sl, r0, #0
007bdb5c  4a fe ff 0a                                      beq #0x7bd48c
007bdb60  40 70 9a e5                                      ldr r7, [sl, #0x40]
007bdb64  00 00 57 e3                                      cmp r7, #0
007bdb68  47 fe ff 0a                                      beq #0x7bd48c
007bdb6c  3c 30 9a e5                                      ldr r3, [sl, #0x3c]
007bdb70  04 b0 d3 e5                                      ldrb fp, [r3, #4]
007bdb74  00 00 5b e3                                      cmp fp, #0
007bdb78  ad 08 00 0a                                      beq #0x7bfe34
007bdb7c  00 30 97 e5                                      ldr r3, [r7]
007bdb80  07 00 a0 e1                                      mov r0, r7
007bdb84  02 10 a0 e3                                      mov r1, #2
007bdb88  0f e0 a0 e1                                      mov lr, pc
007bdb8c  08 f0 93 e5                                      ldr pc, [r3, #8]
007bdb90  00 00 50 e3                                      cmp r0, #0
007bdb94  3c fe ff 0a                                      beq #0x7bd48c
007bdb98  07 00 a0 e1                                      mov r0, r7
007bdb9c  0a 10 a0 e1                                      mov r1, sl
007bdba0  00 30 97 e5                                      ldr r3, [r7]
007bdba4  0f e0 a0 e1                                      mov lr, pc
007bdba8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
007bdbac  36 fe ff ea                                      b #0x7bd48c
007bdbb0  06 00 95 e8                                      ldm r5, {r1, r2}
007bdbb4  0c 00 a0 e3                                      mov r0, #0xc
007bdbb8  01 20 42 e2                                      sub r2, r2, #1
007bdbbc  90 12 21 e0                                      mla r1, r0, r2, r1
007bdbc0  ed 03 dd e5                                      ldrb r0, [sp, #0x3ed]
007bdbc4  b0 39 1f e5                                      ldr r3, [pc, #-0x9b0]
007bdbc8  e0 10 8d e5                                      str r1, [sp, #0xe0]
007bdbcc  05 00 50 e3                                      cmp r0, #5
007bdbd0  34 00 9d e5                                      ldr r0, [sp, #0x34]
007bdbd4  03 30 8f e0                                      add r3, pc, r3
007bdbd8  f8 30 8d e5                                      str r3, [sp, #0xf8]
007bdbdc  f0 33 9d 05                                      ldreq r3, [sp, #0x3f0]
007bdbe0  e8 00 8d e5                                      str r0, [sp, #0xe8]
007bdbe4  e8 00 8d e2                                      add r0, sp, #0xe8
007bdbe8  01 10 a0 e3                                      mov r1, #1
007bdbec  00 30 a0 13                                      movne r3, #0
007bdbf0  08 00 40 e2                                      sub r0, r0, #8
007bdbf4  f0 10 8d e5                                      str r1, [sp, #0xf0]
007bdbf8  f4 20 8d e5                                      str r2, [sp, #0xf4]
007bdbfc  ec 50 8d e5                                      str r5, [sp, #0xec]
007bdc00  e4 30 8d e5                                      str r3, [sp, #0xe4]
007bdc04  fe 83 ff eb                                      bl #0x79ec04
007bdc08  04 10 95 e5                                      ldr r1, [r5, #4]
007bdc0c  05 00 a0 e1                                      mov r0, r5
007bdc10  01 10 41 e2                                      sub r1, r1, #1
007bdc14  e2 03 ff eb                                      bl #0x77eba4
007bdc18  d4 fa ff ea                                      b #0x7bc770
007bdc1c  05 00 a0 e1                                      mov r0, r5
007bdc20  a7 3c 00 eb                                      bl #0x7ccec4
007bdc24  00 30 90 e5                                      ldr r3, [r0]
007bdc28  0f e0 a0 e1                                      mov lr, pc
007bdc2c  34 f1 93 e5                                      ldr pc, [r3, #0x134]
007bdc30  00 30 90 e5                                      ldr r3, [r0]
007bdc34  0f e0 a0 e1                                      mov lr, pc
007bdc38  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
007bdc3c  cb fa ff ea                                      b #0x7bc770
007bdc40  24 04 9d e5                                      ldr r0, [sp, #0x424]
007bdc44  20 14 9d e5                                      ldr r1, [sp, #0x420]
007bdc48  ba 53 fe eb                                      bl #0x752b38
007bdc4c  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bdc50  c7 fa ff ea                                      b #0x7bc774
007bdc54  04 00 95 e5                                      ldr r0, [r5, #4]
007bdc58  00 30 95 e5                                      ldr r3, [r5]
007bdc5c  0c 20 a0 e3                                      mov r2, #0xc
007bdc60  01 00 40 e2                                      sub r0, r0, #1
007bdc64  01 70 40 e2                                      sub r7, r0, #1
007bdc68  92 30 20 e0                                      mla r0, r2, r0, r3
007bdc6c  92 37 27 e0                                      mla r7, r2, r7, r3
007bdc70  77 67 ff eb                                      bl #0x797a54
007bdc74  00 20 a0 e1                                      mov r2, r0
007bdc78  07 00 a0 e1                                      mov r0, r7
007bdc7c  14 20 8d e5                                      str r2, [sp, #0x14]
007bdc80  10 10 8d e5                                      str r1, [sp, #0x10]
007bdc84  72 67 ff eb                                      bl #0x797a54
007bdc88  65 43 ed eb                                      bl #0x30ea24
007bdc8c  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bdc90  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bdc94  00 a0 a0 e1                                      mov sl, r0
007bdc98  02 00 a0 e1                                      mov r0, r2
007bdc9c  03 10 a0 e1                                      mov r1, r3
007bdca0  5f 43 ed eb                                      bl #0x30ea24
007bdca4  1a 00 a0 e1                                      lsl r0, sl, r0
007bdca8  20 44 ed eb                                      bl #0x30ed30
007bdcac  00 20 a0 e1                                      mov r2, r0
007bdcb0  01 30 a0 e1                                      mov r3, r1
007bdcb4  07 00 a0 e1                                      mov r0, r7
007bdcb8  f2 65 ff eb                                      bl #0x797488
007bdcbc  f2 fd ff ea                                      b #0x7bd48c
007bdcc0  88 00 95 e8                                      ldm r5, {r3, r7}
007bdcc4  0c b0 a0 e3                                      mov fp, #0xc
007bdcc8  02 70 47 e2                                      sub r7, r7, #2
007bdccc  9b 37 27 e0                                      mla r7, fp, r7, r3
007bdcd0  07 00 a0 e1                                      mov r0, r7
007bdcd4  6a 8b f1 eb                                      bl #0x420a84
007bdcd8  00 a0 a0 e1                                      mov sl, r0
007bdcdc  04 00 95 e5                                      ldr r0, [r5, #4]
007bdce0  00 30 95 e5                                      ldr r3, [r5]
007bdce4  01 00 40 e2                                      sub r0, r0, #1
007bdce8  9b 30 20 e0                                      mla r0, fp, r0, r3
007bdcec  64 8b f1 eb                                      bl #0x420a84
007bdcf0  d0 30 d0 e1                                      ldrsb r3, [r0]
007bdcf4  01 00 73 e3                                      cmn r3, #1
007bdcf8  d0 30 da e1                                      ldrsb r3, [sl]
007bdcfc  01 10 80 12                                      addne r1, r0, #1
007bdd00  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007bdd04  01 00 73 e3                                      cmn r3, #1
007bdd08  01 00 8a 12                                      addne r0, sl, #1
007bdd0c  0c 00 9a 05                                      ldreq r0, [sl, #0xc]
007bdd10  81 41 ed eb                                      bl #0x30e31c
007bdd14  00 00 50 e3                                      cmp r0, #0
007bdd18  00 10 a0 d3                                      movle r1, #0
007bdd1c  01 10 a0 c3                                      movgt r1, #1
007bdd20  07 00 a0 e1                                      mov r0, r7
007bdd24  d7 fd ff ea                                      b #0x7bd488
007bdd28  04 20 95 e5                                      ldr r2, [r5, #4]
007bdd2c  00 30 95 e5                                      ldr r3, [r5]
007bdd30  0c 70 a0 e3                                      mov r7, #0xc
007bdd34  01 20 42 e2                                      sub r2, r2, #1
007bdd38  97 32 27 e0                                      mla r7, r7, r2, r3
007bdd3c  07 00 a0 e1                                      mov r0, r7
007bdd40  43 67 ff eb                                      bl #0x797a54
007bdd44  ff 35 a0 e3                                      mov r3, #0x3fc00000
007bdd48  00 20 a0 e3                                      mov r2, #0
007bdd4c  03 36 83 e2                                      add r3, r3, #0x300000
007bdd50  f5 41 ed eb                                      bl #0x30e52c
007bdd54  00 20 a0 e1                                      mov r2, r0
007bdd58  01 30 a0 e1                                      mov r3, r1
007bdd5c  07 00 a0 e1                                      mov r0, r7
007bdd60  c8 65 ff eb                                      bl #0x797488
007bdd64  81 fa ff ea                                      b #0x7bc770
007bdd68  04 00 95 e5                                      ldr r0, [r5, #4]
007bdd6c  00 30 95 e5                                      ldr r3, [r5]
007bdd70  0c a0 a0 e3                                      mov sl, #0xc
007bdd74  03 00 40 e2                                      sub r0, r0, #3
007bdd78  9a 30 20 e0                                      mla r0, sl, r0, r3
007bdd7c  34 67 ff eb                                      bl #0x797a54
007bdd80  27 43 ed eb                                      bl #0x30ea24
007bdd84  18 00 8d e5                                      str r0, [sp, #0x18]
007bdd88  04 70 95 e5                                      ldr r7, [r5, #4]
007bdd8c  00 b0 95 e5                                      ldr fp, [r5]
007bdd90  00 20 a0 e3                                      mov r2, #0
007bdd94  01 30 47 e2                                      sub r3, r7, #1
007bdd98  9a b3 23 e0                                      mla r3, sl, r3, fp
007bdd9c  78 22 cd e5                                      strb r2, [sp, #0x278]
007bdda0  79 22 cd e5                                      strb r2, [sp, #0x279]
007bdda4  01 10 d3 e5                                      ldrb r1, [r3, #1]
007bdda8  03 10 41 e2                                      sub r1, r1, #3
007bddac  71 10 ef e6                                      uxtb r1, r1
007bddb0  01 00 51 e3                                      cmp r1, #1
007bddb4  ce 08 00 9a                                      bls #0x7c00f4
007bddb8  a0 14 9d e5                                      ldr r1, [sp, #0x4a0]
007bddbc  00 00 e0 e3                                      mvn r0, #0
007bddc0  01 c0 a0 e3                                      mov ip, #1
007bddc4  10 10 d7 e7                                      bfi r1, r0, #0, #0x18
007bddc8  21 0c a0 e1                                      lsr r0, r1, #0x18
007bddcc  12 00 c0 e7                                      bfi r0, r2, #0, #1
007bddd0  a0 14 8d e5                                      str r1, [sp, #0x4a0]
007bddd4  90 c4 cd e5                                      strb ip, [sp, #0x490]
007bddd8  a3 04 cd e5                                      strb r0, [sp, #0x4a3]
007bdddc  91 24 cd e5                                      strb r2, [sp, #0x491]
007bdde0  49 ae 8d e2                                      add sl, sp, #0x490
007bdde4  9b cf 8d e2                                      add ip, sp, #0x26c
007bdde8  24 c0 8d e5                                      str ip, [sp, #0x24]
007bddec  02 00 47 e2                                      sub r0, r7, #2
007bddf0  0c 70 a0 e3                                      mov r7, #0xc
007bddf4  00 c0 a0 e3                                      mov ip, #0
007bddf8  97 b0 20 e0                                      mla r0, r7, r0, fp
007bddfc  0a 10 a0 e1                                      mov r1, sl
007bde00  24 20 9d e5                                      ldr r2, [sp, #0x24]
007bde04  10 30 8d e5                                      str r3, [sp, #0x10]
007bde08  6d c2 cd e5                                      strb ip, [sp, #0x26d]
007bde0c  6c c2 cd e5                                      strb ip, [sp, #0x26c]
007bde10  6e 64 ff eb                                      bl #0x796fd0
007bde14  00 00 50 e3                                      cmp r0, #0
007bde18  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bde1c  a2 05 00 0a                                      beq #0x7bf4ac
007bde20  90 04 dd e5                                      ldrb r0, [sp, #0x490]
007bde24  08 40 95 e8                                      ldm r5, {r3, lr}
007bde28  70 10 af e6                                      sxtb r1, r0
007bde2c  01 00 71 e3                                      cmn r1, #1
007bde30  9c c4 9d 05                                      ldreq ip, [sp, #0x49c]
007bde34  01 c0 8a 12                                      addne ip, sl, #1
007bde38  02 20 4e e2                                      sub r2, lr, #2
007bde3c  08 c0 8d e5                                      str ip, [sp, #8]
007bde40  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bde44  26 ae 8d e2                                      add sl, sp, #0x260
007bde48  97 32 23 e0                                      mla r3, r7, r2, r3
007bde4c  04 e0 4e e2                                      sub lr, lr, #4
007bde50  0a 00 a0 e1                                      mov r0, sl
007bde54  24 10 9d e5                                      ldr r1, [sp, #0x24]
007bde58  05 20 a0 e1                                      mov r2, r5
007bde5c  9e 7f 8d e2                                      add r7, sp, #0x278
007bde60  00 50 8d e8                                      stm sp, {ip, lr}
007bde64  a6 f2 ff eb                                      bl #0x7ba904
007bde68  07 00 a0 e1                                      mov r0, r7
007bde6c  0a 10 a0 e1                                      mov r1, sl
007bde70  31 66 ff eb                                      bl #0x79773c
007bde74  0a 00 a0 e1                                      mov r0, sl
007bde78  a9 64 ff eb                                      bl #0x797124
007bde7c  04 10 95 e5                                      ldr r1, [r5, #4]
007bde80  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bde84  05 00 a0 e1                                      mov r0, r5
007bde88  02 10 41 e2                                      sub r1, r1, #2
007bde8c  01 10 62 e0                                      rsb r1, r2, r1
007bde90  43 03 ff eb                                      bl #0x77eba4
007bde94  04 20 95 e5                                      ldr r2, [r5, #4]
007bde98  00 30 95 e5                                      ldr r3, [r5]
007bde9c  0c 00 a0 e3                                      mov r0, #0xc
007bdea0  01 20 42 e2                                      sub r2, r2, #1
007bdea4  90 32 20 e0                                      mla r0, r0, r2, r3
007bdea8  07 10 a0 e1                                      mov r1, r7
007bdeac  22 66 ff eb                                      bl #0x79773c
007bdeb0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007bdeb4  9a 64 ff eb                                      bl #0x797124
007bdeb8  90 c4 dd e5                                      ldrb ip, [sp, #0x490]
007bdebc  7c 30 af e6                                      sxtb r3, ip
007bdec0  01 00 73 e3                                      cmn r3, #1
007bdec4  86 08 00 0a                                      beq #0x7c00e4
007bdec8  07 00 a0 e1                                      mov r0, r7
007bdecc  94 64 ff eb                                      bl #0x797124
007bded0  26 fa ff ea                                      b #0x7bc770
007bded4  86 7f 8d e2                                      add r7, sp, #0x218
007bded8  83 af 8d e2                                      add sl, sp, #0x20c
007bdedc  07 00 a0 e1                                      mov r0, r7
007bdee0  05 10 a0 e1                                      mov r1, r5
007bdee4  36 6e ff eb                                      bl #0x7997c4
007bdee8  0a 00 a0 e1                                      mov r0, sl
007bdeec  05 10 a0 e1                                      mov r1, r5
007bdef0  33 6e ff eb                                      bl #0x7997c4
007bdef4  0d 32 dd e5                                      ldrb r3, [sp, #0x20d]
007bdef8  0a 00 a0 e1                                      mov r0, sl
007bdefc  02 ac 8d e2                                      add sl, sp, #0x200
007bdf00  05 00 53 e3                                      cmp r3, #5
007bdf04  00 b0 a0 13                                      movne fp, #0
007bdf08  10 b2 9d 05                                      ldreq fp, [sp, #0x210]
007bdf0c  84 64 ff eb                                      bl #0x797124
007bdf10  05 10 a0 e1                                      mov r1, r5
007bdf14  0a 00 a0 e1                                      mov r0, sl
007bdf18  29 6e ff eb                                      bl #0x7997c4
007bdf1c  0a 00 a0 e1                                      mov r0, sl
007bdf20  cb 66 ff eb                                      bl #0x797a54
007bdf24  be 42 ed eb                                      bl #0x30ea24
007bdf28  18 00 8d e5                                      str r0, [sp, #0x18]
007bdf2c  0a 00 a0 e1                                      mov r0, sl
007bdf30  7b 64 ff eb                                      bl #0x797124
007bdf34  19 22 dd e5                                      ldrb r2, [sp, #0x219]
007bdf38  00 30 a0 e3                                      mov r3, #0
007bdf3c  d4 33 8d e5                                      str r3, [sp, #0x3d4]
007bdf40  05 00 52 e3                                      cmp r2, #5
007bdf44  03 00 a0 11                                      movne r0, r3
007bdf48  1c 02 9d 05                                      ldreq r0, [sp, #0x21c]
007bdf4c  dd f1 ff eb                                      bl #0x7ba6c8
007bdf50  00 00 50 e3                                      cmp r0, #0
007bdf54  82 05 00 0a                                      beq #0x7bf564
007bdf58  40 ed 1f e5                                      ldr lr, [pc, #-0xd40]
007bdf5c  04 c0 95 e5                                      ldr ip, [r5, #4]
007bdf60  7d af 8d e2                                      add sl, sp, #0x1f4
007bdf64  0e e0 8f e0                                      add lr, pc, lr
007bdf68  08 e0 8d e5                                      str lr, [sp, #8]
007bdf6c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007bdf70  07 10 a0 e1                                      mov r1, r7
007bdf74  01 c0 4c e2                                      sub ip, ip, #1
007bdf78  0a 00 a0 e1                                      mov r0, sl
007bdf7c  05 20 a0 e1                                      mov r2, r5
007bdf80  30 30 9d e5                                      ldr r3, [sp, #0x30]
007bdf84  04 c0 8d e5                                      str ip, [sp, #4]
007bdf88  00 e0 8d e5                                      str lr, [sp]
007bdf8c  5c f2 ff eb                                      bl #0x7ba904
007bdf90  f5 31 dd e5                                      ldrb r3, [sp, #0x1f5]
007bdf94  f5 0f 8d e2                                      add r0, sp, #0x3d4
007bdf98  05 00 53 e3                                      cmp r3, #5
007bdf9c  00 10 a0 13                                      movne r1, #0
007bdfa0  f8 11 9d 05                                      ldreq r1, [sp, #0x1f8]
007bdfa4  47 ab fe eb                                      bl #0x768cc8
007bdfa8  0a 00 a0 e1                                      mov r0, sl
007bdfac  5c 64 ff eb                                      bl #0x797124
007bdfb0  05 00 a0 e1                                      mov r0, r5
007bdfb4  88 f8 ff eb                                      bl #0x7bc1dc
007bdfb8  d4 33 9d e5                                      ldr r3, [sp, #0x3d4]
007bdfbc  30 20 90 e5                                      ldr r2, [r0, #0x30]
007bdfc0  05 00 a0 e1                                      mov r0, r5
007bdfc4  34 20 83 e5                                      str r2, [r3, #0x34]
007bdfc8  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bdfcc  04 10 95 e5                                      ldr r1, [r5, #4]
007bdfd0  01 10 62 e0                                      rsb r1, r2, r1
007bdfd4  f2 02 ff eb                                      bl #0x77eba4
007bdfd8  d4 33 9d e5                                      ldr r3, [sp, #0x3d4]
007bdfdc  4f 1e 8d e2                                      add r1, sp, #0x4f0
007bdfe0  08 10 81 e2                                      add r1, r1, #8
007bdfe4  05 00 a0 e1                                      mov r0, r5
007bdfe8  00 31 21 e5                                      str r3, [r1, #-0x100]!
007bdfec  b2 f4 ff eb                                      bl #0x7bb2bc
007bdff0  d4 03 9d e5                                      ldr r0, [sp, #0x3d4]
007bdff4  00 00 50 e3                                      cmp r0, #0
007bdff8  b2 ff ff 0a                                      beq #0x7bdec8
007bdffc  8f 70 fe eb                                      bl #0x75a240
007be000  b0 ff ff ea                                      b #0x7bdec8
007be004  04 00 95 e5                                      ldr r0, [r5, #4]
007be008  00 30 95 e5                                      ldr r3, [r5]
007be00c  0c 70 a0 e3                                      mov r7, #0xc
007be010  01 00 40 e2                                      sub r0, r0, #1
007be014  97 30 20 e0                                      mla r0, r7, r0, r3
007be018  e3 62 ff eb                                      bl #0x796bac
007be01c  04 20 95 e5                                      ldr r2, [r5, #4]
007be020  00 30 95 e5                                      ldr r3, [r5]
007be024  00 10 a0 e1                                      mov r1, r0
007be028  02 00 42 e2                                      sub r0, r2, #2
007be02c  97 30 20 e0                                      mla r0, r7, r0, r3
007be030  75 63 ff eb                                      bl #0x796e0c
007be034  04 20 95 e5                                      ldr r2, [r5, #4]
007be038  00 30 95 e5                                      ldr r3, [r5]
007be03c  00 10 a0 e1                                      mov r1, r0
007be040  02 00 42 e2                                      sub r0, r2, #2
007be044  97 30 20 e0                                      mla r0, r7, r0, r3
007be048  0e fd ff ea                                      b #0x7bd488
007be04c  5f 7f 8d e2                                      add r7, sp, #0x17c
007be050  05 10 a0 e1                                      mov r1, r5
007be054  07 00 a0 e1                                      mov r0, r7
007be058  d9 6d ff eb                                      bl #0x7997c4
007be05c  7d 31 dd e5                                      ldrb r3, [sp, #0x17d]
007be060  05 00 a0 e1                                      mov r0, r5
007be064  05 00 53 e3                                      cmp r3, #5
007be068  00 10 a0 13                                      movne r1, #0
007be06c  80 11 9d 05                                      ldreq r1, [sp, #0x180]
007be070  33 f3 ff eb                                      bl #0x7bad44
007be074  93 ff ff ea                                      b #0x7bdec8
007be078  04 00 95 e5                                      ldr r0, [r5, #4]
007be07c  00 30 95 e5                                      ldr r3, [r5]
007be080  0c 20 a0 e3                                      mov r2, #0xc
007be084  01 00 40 e2                                      sub r0, r0, #1
007be088  01 70 40 e2                                      sub r7, r0, #1
007be08c  92 30 20 e0                                      mla r0, r2, r0, r3
007be090  92 37 27 e0                                      mla r7, r2, r7, r3
007be094  6e 66 ff eb                                      bl #0x797a54
007be098  00 a0 a0 e1                                      mov sl, r0
007be09c  07 00 a0 e1                                      mov r0, r7
007be0a0  01 b0 a0 e1                                      mov fp, r1
007be0a4  6a 66 ff eb                                      bl #0x797a54
007be0a8  00 20 a0 e1                                      mov r2, r0
007be0ac  01 30 a0 e1                                      mov r3, r1
007be0b0  0a 00 a0 e1                                      mov r0, sl
007be0b4  0b 10 a0 e1                                      mov r1, fp
007be0b8  14 20 8d e5                                      str r2, [sp, #0x14]
007be0bc  10 30 8d e5                                      str r3, [sp, #0x10]
007be0c0  57 42 ed eb                                      bl #0x30ea24
007be0c4  14 20 9d e5                                      ldr r2, [sp, #0x14]
007be0c8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be0cc  00 a0 a0 e1                                      mov sl, r0
007be0d0  02 00 a0 e1                                      mov r0, r2
007be0d4  03 10 a0 e1                                      mov r1, r3
007be0d8  51 42 ed eb                                      bl #0x30ea24
007be0dc  00 00 0a e0                                      and r0, sl, r0
007be0e0  12 43 ed eb                                      bl #0x30ed30
007be0e4  f0 fe ff ea                                      b #0x7bdcac
007be0e8  04 00 95 e5                                      ldr r0, [r5, #4]
007be0ec  00 30 95 e5                                      ldr r3, [r5]
007be0f0  0c 20 a0 e3                                      mov r2, #0xc
007be0f4  01 00 40 e2                                      sub r0, r0, #1
007be0f8  01 70 40 e2                                      sub r7, r0, #1
007be0fc  92 30 20 e0                                      mla r0, r2, r0, r3
007be100  92 37 27 e0                                      mla r7, r2, r7, r3
007be104  52 66 ff eb                                      bl #0x797a54
007be108  00 a0 a0 e1                                      mov sl, r0
007be10c  07 00 a0 e1                                      mov r0, r7
007be110  01 b0 a0 e1                                      mov fp, r1
007be114  4e 66 ff eb                                      bl #0x797a54
007be118  00 20 a0 e1                                      mov r2, r0
007be11c  01 30 a0 e1                                      mov r3, r1
007be120  0a 00 a0 e1                                      mov r0, sl
007be124  0b 10 a0 e1                                      mov r1, fp
007be128  14 20 8d e5                                      str r2, [sp, #0x14]
007be12c  10 30 8d e5                                      str r3, [sp, #0x10]
007be130  3b 42 ed eb                                      bl #0x30ea24
007be134  14 20 9d e5                                      ldr r2, [sp, #0x14]
007be138  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be13c  00 a0 a0 e1                                      mov sl, r0
007be140  02 00 a0 e1                                      mov r0, r2
007be144  03 10 a0 e1                                      mov r1, r3
007be148  35 42 ed eb                                      bl #0x30ea24
007be14c  00 00 8a e1                                      orr r0, sl, r0
007be150  f6 42 ed eb                                      bl #0x30ed30
007be154  d4 fe ff ea                                      b #0x7bdcac
007be158  04 00 95 e5                                      ldr r0, [r5, #4]
007be15c  00 30 95 e5                                      ldr r3, [r5]
007be160  0c 20 a0 e3                                      mov r2, #0xc
007be164  01 00 40 e2                                      sub r0, r0, #1
007be168  01 70 40 e2                                      sub r7, r0, #1
007be16c  92 30 20 e0                                      mla r0, r2, r0, r3
007be170  92 37 27 e0                                      mla r7, r2, r7, r3
007be174  36 66 ff eb                                      bl #0x797a54
007be178  00 a0 a0 e1                                      mov sl, r0
007be17c  07 00 a0 e1                                      mov r0, r7
007be180  01 b0 a0 e1                                      mov fp, r1
007be184  32 66 ff eb                                      bl #0x797a54
007be188  00 20 a0 e1                                      mov r2, r0
007be18c  01 30 a0 e1                                      mov r3, r1
007be190  0a 00 a0 e1                                      mov r0, sl
007be194  0b 10 a0 e1                                      mov r1, fp
007be198  14 20 8d e5                                      str r2, [sp, #0x14]
007be19c  10 30 8d e5                                      str r3, [sp, #0x10]
007be1a0  1f 42 ed eb                                      bl #0x30ea24
007be1a4  14 20 9d e5                                      ldr r2, [sp, #0x14]
007be1a8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be1ac  00 a0 a0 e1                                      mov sl, r0
007be1b0  02 00 a0 e1                                      mov r0, r2
007be1b4  03 10 a0 e1                                      mov r1, r3
007be1b8  19 42 ed eb                                      bl #0x30ea24
007be1bc  00 00 2a e0                                      eor r0, sl, r0
007be1c0  da 42 ed eb                                      bl #0x30ed30
007be1c4  b8 fe ff ea                                      b #0x7bdcac
007be1c8  04 00 95 e5                                      ldr r0, [r5, #4]
007be1cc  00 30 95 e5                                      ldr r3, [r5]
007be1d0  0c 20 a0 e3                                      mov r2, #0xc
007be1d4  01 00 40 e2                                      sub r0, r0, #1
007be1d8  01 70 40 e2                                      sub r7, r0, #1
007be1dc  92 30 20 e0                                      mla r0, r2, r0, r3
007be1e0  92 37 27 e0                                      mla r7, r2, r7, r3
007be1e4  1a 66 ff eb                                      bl #0x797a54
007be1e8  00 a0 a0 e1                                      mov sl, r0
007be1ec  01 b0 a0 e1                                      mov fp, r1
007be1f0  07 00 a0 e1                                      mov r0, r7
007be1f4  16 66 ff eb                                      bl #0x797a54
007be1f8  0a 20 a0 e1                                      mov r2, sl
007be1fc  0b 30 a0 e1                                      mov r3, fp
007be200  c9 40 ed eb                                      bl #0x30e52c
007be204  a8 fe ff ea                                      b #0x7bdcac
007be208  04 00 95 e5                                      ldr r0, [r5, #4]
007be20c  00 30 95 e5                                      ldr r3, [r5]
007be210  0c 20 a0 e3                                      mov r2, #0xc
007be214  01 00 40 e2                                      sub r0, r0, #1
007be218  01 70 40 e2                                      sub r7, r0, #1
007be21c  92 30 20 e0                                      mla r0, r2, r0, r3
007be220  92 37 27 e0                                      mla r7, r2, r7, r3
007be224  0a 66 ff eb                                      bl #0x797a54
007be228  00 a0 a0 e1                                      mov sl, r0
007be22c  07 00 a0 e1                                      mov r0, r7
007be230  01 b0 a0 e1                                      mov fp, r1
007be234  06 66 ff eb                                      bl #0x797a54
007be238  00 20 a0 e1                                      mov r2, r0
007be23c  01 30 a0 e1                                      mov r3, r1
007be240  0a 00 a0 e1                                      mov r0, sl
007be244  0b 10 a0 e1                                      mov r1, fp
007be248  19 42 ed eb                                      bl #0x30eab4
007be24c  96 fe ff ea                                      b #0x7bdcac
007be250  80 08 95 e8                                      ldm r5, {r7, fp}
007be254  0c a0 a0 e3                                      mov sl, #0xc
007be258  01 b0 4b e2                                      sub fp, fp, #1
007be25c  9a 7b 20 e0                                      mla r0, sl, fp, r7
007be260  fb 65 ff eb                                      bl #0x797a54
007be264  00 20 a0 e1                                      mov r2, r0
007be268  01 00 4b e2                                      sub r0, fp, #1
007be26c  01 30 a0 e1                                      mov r3, r1
007be270  9a 70 20 e0                                      mla r0, sl, r0, r7
007be274  c2 f1 ff eb                                      bl #0x7ba984
007be278  04 10 95 e5                                      ldr r1, [r5, #4]
007be27c  05 00 a0 e1                                      mov r0, r5
007be280  01 10 41 e2                                      sub r1, r1, #1
007be284  46 02 ff eb                                      bl #0x77eba4
007be288  38 f9 ff ea                                      b #0x7bc770
007be28c  88 00 95 e8                                      ldm r5, {r3, r7}
007be290  0c b0 a0 e3                                      mov fp, #0xc
007be294  02 70 47 e2                                      sub r7, r7, #2
007be298  9b 37 27 e0                                      mla r7, fp, r7, r3
007be29c  01 30 d7 e5                                      ldrb r3, [r7, #1]
007be2a0  03 30 43 e2                                      sub r3, r3, #3
007be2a4  73 30 ef e6                                      uxtb r3, r3
007be2a8  01 00 53 e3                                      cmp r3, #1
007be2ac  75 07 00 9a                                      bls #0x7c0088
007be2b0  07 00 a0 e1                                      mov r0, r7
007be2b4  e6 65 ff eb                                      bl #0x797a54
007be2b8  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007be2bc  04 00 95 e5                                      ldr r0, [r5, #4]
007be2c0  00 30 95 e5                                      ldr r3, [r5]
007be2c4  00 a0 a0 e3                                      mov sl, #0
007be2c8  01 00 40 e2                                      sub r0, r0, #1
007be2cc  9b 30 20 e0                                      mla r0, fp, r0, r3
007be2d0  df 65 ff eb                                      bl #0x797a54
007be2d4  00 20 a0 e1                                      mov r2, r0
007be2d8  01 30 a0 e1                                      mov r3, r1
007be2dc  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007be2e0  de 3e ed eb                                      bl #0x30de60
007be2e4  00 00 50 e3                                      cmp r0, #0
007be2e8  01 a0 a0 13                                      movne sl, #1
007be2ec  07 00 a0 e1                                      mov r0, r7
007be2f0  01 10 0a e2                                      and r1, sl, #1
007be2f4  cd 63 ff eb                                      bl #0x797230
007be2f8  63 fc ff ea                                      b #0x7bd48c
007be2fc  04 00 95 e5                                      ldr r0, [r5, #4]
007be300  00 30 95 e5                                      ldr r3, [r5]
007be304  0c 20 a0 e3                                      mov r2, #0xc
007be308  01 00 40 e2                                      sub r0, r0, #1
007be30c  01 70 40 e2                                      sub r7, r0, #1
007be310  92 30 20 e0                                      mla r0, r2, r0, r3
007be314  92 37 27 e0                                      mla r7, r2, r7, r3
007be318  cd 65 ff eb                                      bl #0x797a54
007be31c  00 20 a0 e1                                      mov r2, r0
007be320  07 00 a0 e1                                      mov r0, r7
007be324  14 20 8d e5                                      str r2, [sp, #0x14]
007be328  10 10 8d e5                                      str r1, [sp, #0x10]
007be32c  c8 65 ff eb                                      bl #0x797a54
007be330  bb 41 ed eb                                      bl #0x30ea24
007be334  14 20 9d e5                                      ldr r2, [sp, #0x14]
007be338  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be33c  00 a0 a0 e1                                      mov sl, r0
007be340  02 00 a0 e1                                      mov r0, r2
007be344  03 10 a0 e1                                      mov r1, r3
007be348  b5 41 ed eb                                      bl #0x30ea24
007be34c  5a 00 a0 e1                                      asr r0, sl, r0
007be350  76 42 ed eb                                      bl #0x30ed30
007be354  54 fe ff ea                                      b #0x7bdcac
007be358  04 00 95 e5                                      ldr r0, [r5, #4]
007be35c  00 30 95 e5                                      ldr r3, [r5]
007be360  0c 20 a0 e3                                      mov r2, #0xc
007be364  01 00 40 e2                                      sub r0, r0, #1
007be368  01 70 40 e2                                      sub r7, r0, #1
007be36c  92 30 20 e0                                      mla r0, r2, r0, r3
007be370  92 37 27 e0                                      mla r7, r2, r7, r3
007be374  b6 65 ff eb                                      bl #0x797a54
007be378  00 20 a0 e1                                      mov r2, r0
007be37c  07 00 a0 e1                                      mov r0, r7
007be380  14 20 8d e5                                      str r2, [sp, #0x14]
007be384  10 10 8d e5                                      str r1, [sp, #0x10]
007be388  b1 65 ff eb                                      bl #0x797a54
007be38c  8f 41 ed eb                                      bl #0x30e9d0
007be390  14 20 9d e5                                      ldr r2, [sp, #0x14]
007be394  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be398  00 a0 a0 e1                                      mov sl, r0
007be39c  02 00 a0 e1                                      mov r0, r2
007be3a0  03 10 a0 e1                                      mov r1, r3
007be3a4  9e 41 ed eb                                      bl #0x30ea24
007be3a8  3a 00 a0 e1                                      lsr r0, sl, r0
007be3ac  5f 42 ed eb                                      bl #0x30ed30
007be3b0  3d fe ff ea                                      b #0x7bdcac
007be3b4  05 00 a0 e1                                      mov r0, r5
007be3b8  c1 3a 00 eb                                      bl #0x7ccec4
007be3bc  00 30 90 e5                                      ldr r3, [r0]
007be3c0  00 70 a0 e1                                      mov r7, r0
007be3c4  05 00 a0 e1                                      mov r0, r5
007be3c8  4c a1 93 e5                                      ldr sl, [r3, #0x14c]
007be3cc  bc 3a 00 eb                                      bl #0x7ccec4
007be3d0  00 30 90 e5                                      ldr r3, [r0]
007be3d4  0f e0 a0 e1                                      mov lr, pc
007be3d8  38 f1 93 e5                                      ldr pc, [r3, #0x138]
007be3dc  01 10 80 e2                                      add r1, r0, #1
007be3e0  07 00 a0 e1                                      mov r0, r7
007be3e4  3a ff 2f e1                                      blx sl
007be3e8  e0 f8 ff ea                                      b #0x7bc770
007be3ec  05 00 a0 e1                                      mov r0, r5
007be3f0  b3 3a 00 eb                                      bl #0x7ccec4
007be3f4  00 30 90 e5                                      ldr r3, [r0]
007be3f8  00 70 a0 e1                                      mov r7, r0
007be3fc  05 00 a0 e1                                      mov r0, r5
007be400  4c a1 93 e5                                      ldr sl, [r3, #0x14c]
007be404  ae 3a 00 eb                                      bl #0x7ccec4
007be408  00 30 90 e5                                      ldr r3, [r0]
007be40c  0f e0 a0 e1                                      mov lr, pc
007be410  38 f1 93 e5                                      ldr pc, [r3, #0x138]
007be414  01 10 40 e2                                      sub r1, r0, #1
007be418  07 00 a0 e1                                      mov r0, r7
007be41c  3a ff 2f e1                                      blx sl
007be420  d2 f8 ff ea                                      b #0x7bc770
007be424  04 00 95 e5                                      ldr r0, [r5, #4]
007be428  00 30 95 e5                                      ldr r3, [r5]
007be42c  0c 70 a0 e3                                      mov r7, #0xc
007be430  01 00 40 e2                                      sub r0, r0, #1
007be434  97 30 20 e0                                      mla r0, r7, r0, r3
007be438  85 65 ff eb                                      bl #0x797a54
007be43c  00 20 a0 e1                                      mov r2, r0
007be440  04 00 95 e5                                      ldr r0, [r5, #4]
007be444  01 30 a0 e1                                      mov r3, r1
007be448  00 10 95 e5                                      ldr r1, [r5]
007be44c  01 00 40 e2                                      sub r0, r0, #1
007be450  97 10 20 e0                                      mla r0, r7, r0, r1
007be454  0b 64 ff eb                                      bl #0x797488
007be458  c4 f8 ff ea                                      b #0x7bc770
007be45c  04 00 95 e5                                      ldr r0, [r5, #4]
007be460  00 30 95 e5                                      ldr r3, [r5]
007be464  0c 70 a0 e3                                      mov r7, #0xc
007be468  01 00 40 e2                                      sub r0, r0, #1
007be46c  97 30 20 e0                                      mla r0, r7, r0, r3
007be470  4e 1e 8d e2                                      add r1, sp, #0x4e0
007be474  c0 65 ff eb                                      bl #0x797b7c
007be478  04 20 95 e5                                      ldr r2, [r5, #4]
007be47c  00 30 95 e5                                      ldr r3, [r5]
007be480  00 10 a0 e1                                      mov r1, r0
007be484  01 00 42 e2                                      sub r0, r2, #1
007be488  97 30 20 e0                                      mla r0, r7, r0, r3
007be48c  91 63 ff eb                                      bl #0x7972d8
007be490  b6 f8 ff ea                                      b #0x7bc770
007be494  04 20 95 e5                                      ldr r2, [r5, #4]
007be498  00 30 95 e5                                      ldr r3, [r5]
007be49c  ad 7f 8d e2                                      add r7, sp, #0x2b4
007be4a0  01 20 42 e2                                      sub r2, r2, #1
007be4a4  0c 10 a0 e3                                      mov r1, #0xc
007be4a8  91 32 21 e0                                      mla r1, r1, r2, r3
007be4ac  07 00 a0 e1                                      mov r0, r7
007be4b0  00 30 a0 e3                                      mov r3, #0
007be4b4  b5 32 cd e5                                      strb r3, [sp, #0x2b5]
007be4b8  b4 32 cd e5                                      strb r3, [sp, #0x2b4]
007be4bc  9e 64 ff eb                                      bl #0x79773c
007be4c0  05 00 a0 e1                                      mov r0, r5
007be4c4  07 10 a0 e1                                      mov r1, r7
007be4c8  f2 aa fe eb                                      bl #0x769098
007be4cc  7d fe ff ea                                      b #0x7bdec8
007be4d0  04 10 95 e5                                      ldr r1, [r5, #4]
007be4d4  00 30 95 e5                                      ldr r3, [r5]
007be4d8  0c 70 a0 e3                                      mov r7, #0xc
007be4dc  aa af 8d e2                                      add sl, sp, #0x2a8
007be4e0  02 10 41 e2                                      sub r1, r1, #2
007be4e4  97 31 21 e0                                      mla r1, r7, r1, r3
007be4e8  0a 00 a0 e1                                      mov r0, sl
007be4ec  00 30 a0 e3                                      mov r3, #0
007be4f0  a9 32 cd e5                                      strb r3, [sp, #0x2a9]
007be4f4  a8 32 cd e5                                      strb r3, [sp, #0x2a8]
007be4f8  8f 64 ff eb                                      bl #0x79773c
007be4fc  04 10 95 e5                                      ldr r1, [r5, #4]
007be500  00 30 95 e5                                      ldr r3, [r5]
007be504  01 10 41 e2                                      sub r1, r1, #1
007be508  01 00 41 e2                                      sub r0, r1, #1
007be50c  97 30 20 e0                                      mla r0, r7, r0, r3
007be510  97 31 21 e0                                      mla r1, r7, r1, r3
007be514  88 64 ff eb                                      bl #0x79773c
007be518  04 00 95 e5                                      ldr r0, [r5, #4]
007be51c  00 30 95 e5                                      ldr r3, [r5]
007be520  0a 10 a0 e1                                      mov r1, sl
007be524  01 00 40 e2                                      sub r0, r0, #1
007be528  97 30 20 e0                                      mla r0, r7, r0, r3
007be52c  82 64 ff eb                                      bl #0x79773c
007be530  0a 00 a0 e1                                      mov r0, sl
007be534  fa 62 ff eb                                      bl #0x797124
007be538  8c f8 ff ea                                      b #0x7bc770
007be53c  04 70 95 e5                                      ldr r7, [r5, #4]
007be540  00 b0 95 e5                                      ldr fp, [r5]
007be544  0c 20 a0 e3                                      mov r2, #0xc
007be548  02 30 47 e2                                      sub r3, r7, #2
007be54c  92 b3 23 e0                                      mla r3, r2, r3, fp
007be550  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007be554  05 00 52 e3                                      cmp r2, #5
007be558  52 04 00 0a                                      beq #0x7bf6a8
007be55c  01 30 47 e2                                      sub r3, r7, #1
007be560  0c 70 a0 e3                                      mov r7, #0xc
007be564  00 20 a0 e3                                      mov r2, #0
007be568  97 b3 20 e0                                      mla r0, r7, r3, fp
007be56c  9d 22 cd e5                                      strb r2, [sp, #0x29d]
007be570  9c 22 cd e5                                      strb r2, [sp, #0x29c]
007be574  10 30 8d e5                                      str r3, [sp, #0x10]
007be578  41 89 f1 eb                                      bl #0x420a84
007be57c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be580  a7 af 8d e2                                      add sl, sp, #0x29c
007be584  00 10 a0 e1                                      mov r1, r0
007be588  01 30 43 e2                                      sub r3, r3, #1
007be58c  97 b3 20 e0                                      mla r0, r7, r3, fp
007be590  0a 20 a0 e1                                      mov r2, sl
007be594  8d 62 ff eb                                      bl #0x796fd0
007be598  9d 32 dd e5                                      ldrb r3, [sp, #0x29d]
007be59c  06 00 53 e3                                      cmp r3, #6
007be5a0  bc 07 00 0a                                      beq #0x7c0498
007be5a4  04 20 95 e5                                      ldr r2, [r5, #4]
007be5a8  00 30 95 e5                                      ldr r3, [r5]
007be5ac  0c 00 a0 e3                                      mov r0, #0xc
007be5b0  02 20 42 e2                                      sub r2, r2, #2
007be5b4  90 32 20 e0                                      mla r0, r0, r2, r3
007be5b8  0a 10 a0 e1                                      mov r1, sl
007be5bc  5e 64 ff eb                                      bl #0x79773c
007be5c0  0a 00 a0 e1                                      mov r0, sl
007be5c4  d6 62 ff eb                                      bl #0x797124
007be5c8  af fb ff ea                                      b #0x7bd48c
007be5cc  88 00 95 e8                                      ldm r5, {r3, r7}
007be5d0  0c b0 a0 e3                                      mov fp, #0xc
007be5d4  03 20 47 e2                                      sub r2, r7, #3
007be5d8  9b 32 22 e0                                      mla r2, fp, r2, r3
007be5dc  01 10 47 e2                                      sub r1, r7, #1
007be5e0  d1 00 d2 e1                                      ldrsb r0, [r2, #1]
007be5e4  05 00 50 e3                                      cmp r0, #5
007be5e8  9e 04 00 0a                                      beq #0x7bf868
007be5ec  03 10 47 e2                                      sub r1, r7, #3
007be5f0  05 00 a0 e1                                      mov r0, r5
007be5f4  6a 01 ff eb                                      bl #0x77eba4
007be5f8  5c f8 ff ea                                      b #0x7bc770
007be5fc  04 20 95 e5                                      ldr r2, [r5, #4]
007be600  00 30 95 e5                                      ldr r3, [r5]
007be604  0c 70 a0 e3                                      mov r7, #0xc
007be608  01 20 42 e2                                      sub r2, r2, #1
007be60c  97 32 27 e0                                      mla r7, r7, r2, r3
007be610  07 00 a0 e1                                      mov r0, r7
007be614  0e 65 ff eb                                      bl #0x797a54
007be618  ff 35 a0 e3                                      mov r3, #0x3fc00000
007be61c  00 20 a0 e3                                      mov r2, #0
007be620  03 36 83 e2                                      add r3, r3, #0x300000
007be624  46 41 ed eb                                      bl #0x30eb44
007be628  00 20 a0 e1                                      mov r2, r0
007be62c  01 30 a0 e1                                      mov r3, r1
007be630  07 00 a0 e1                                      mov r0, r7
007be634  93 63 ff eb                                      bl #0x797488
007be638  4c f8 ff ea                                      b #0x7bc770
007be63c  d7 af 8d e2                                      add sl, sp, #0x35c
007be640  00 30 a0 e3                                      mov r3, #0
007be644  0a 00 a0 e1                                      mov r0, sl
007be648  05 10 a0 e1                                      mov r1, r5
007be64c  fd 30 cd e5                                      strb r3, [sp, #0xfd]
007be650  fc 30 cd e5                                      strb r3, [sp, #0xfc]
007be654  5a 6c ff eb                                      bl #0x7997c4
007be658  0a 00 a0 e1                                      mov r0, sl
007be65c  fc 64 ff eb                                      bl #0x797a54
007be660  35 7e 8d e2                                      add r7, sp, #0x350
007be664  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007be668  0a 00 a0 e1                                      mov r0, sl
007be66c  ac 62 ff eb                                      bl #0x797124
007be670  07 00 a0 e1                                      mov r0, r7
007be674  05 10 a0 e1                                      mov r1, r5
007be678  51 6c ff eb                                      bl #0x7997c4
007be67c  07 00 a0 e1                                      mov r0, r7
007be680  f3 64 ff eb                                      bl #0x797a54
007be684  00 a0 a0 e1                                      mov sl, r0
007be688  07 00 a0 e1                                      mov r0, r7
007be68c  01 b0 a0 e1                                      mov fp, r1
007be690  a3 62 ff eb                                      bl #0x797124
007be694  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007be698  00 20 a0 e3                                      mov r2, #0
007be69c  00 30 a0 e3                                      mov r3, #0
007be6a0  5e 40 ed eb                                      bl #0x30e820
007be6a4  00 00 50 e3                                      cmp r0, #0
007be6a8  fc 70 8d 12                                      addne r7, sp, #0xfc
007be6ac  83 ff ff 1a                                      bne #0x7be4c0
007be6b0  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
007be6b4  0a 00 a0 e1                                      mov r0, sl
007be6b8  0b 10 a0 e1                                      mov r1, fp
007be6bc  3c 40 ed eb                                      bl #0x30e7b4
007be6c0  fc 70 8d e2                                      add r7, sp, #0xfc
007be6c4  00 20 a0 e1                                      mov r2, r0
007be6c8  01 30 a0 e1                                      mov r3, r1
007be6cc  07 00 a0 e1                                      mov r0, r7
007be6d0  6c 63 ff eb                                      bl #0x797488
007be6d4  79 ff ff ea                                      b #0x7be4c0
007be6d8  d1 cf 8d e2                                      add ip, sp, #0x344
007be6dc  0c 00 a0 e1                                      mov r0, ip
007be6e0  ce 7f 8d e2                                      add r7, sp, #0x338
007be6e4  05 10 a0 e1                                      mov r1, r5
007be6e8  18 c0 8d e5                                      str ip, [sp, #0x18]
007be6ec  34 6c ff eb                                      bl #0x7997c4
007be6f0  07 00 a0 e1                                      mov r0, r7
007be6f4  05 10 a0 e1                                      mov r1, r5
007be6f8  31 6c ff eb                                      bl #0x7997c4
007be6fc  07 00 a0 e1                                      mov r0, r7
007be700  d3 64 ff eb                                      bl #0x797a54
007be704  c6 40 ed eb                                      bl #0x30ea24
007be708  24 00 8d e5                                      str r0, [sp, #0x24]
007be70c  07 00 a0 e1                                      mov r0, r7
007be710  83 62 ff eb                                      bl #0x797124
007be714  4e 1e 8d e2                                      add r1, sp, #0x4e0
007be718  18 00 9d e5                                      ldr r0, [sp, #0x18]
007be71c  16 65 ff eb                                      bl #0x797b7c
007be720  cb ef 8d e2                                      add lr, sp, #0x32c
007be724  20 00 8d e5                                      str r0, [sp, #0x20]
007be728  00 70 a0 e3                                      mov r7, #0
007be72c  0e 00 a0 e1                                      mov r0, lr
007be730  05 10 a0 e1                                      mov r1, r5
007be734  20 20 9d e5                                      ldr r2, [sp, #0x20]
007be738  06 30 a0 e1                                      mov r3, r6
007be73c  4c e0 8d e5                                      str lr, [sp, #0x4c]
007be740  00 70 8d e5                                      str r7, [sp]
007be744  75 3e 00 eb                                      bl #0x7ce120
007be748  2d 33 dd e5                                      ldrb r3, [sp, #0x32d]
007be74c  20 73 cd e5                                      strb r7, [sp, #0x320]
007be750  21 73 cd e5                                      strb r7, [sp, #0x321]
007be754  05 00 53 e3                                      cmp r3, #5
007be758  07 00 a0 11                                      movne r0, r7
007be75c  30 03 9d 05                                      ldreq r0, [sp, #0x330]
007be760  d8 ef ff eb                                      bl #0x7ba6c8
007be764  00 00 50 e3                                      cmp r0, #0
007be768  e5 05 00 0a                                      beq #0x7bff04
007be76c  f0 2e 9f e5                                      ldr r2, [pc, #0xef0]
007be770  04 10 95 e5                                      ldr r1, [r5, #4]
007be774  00 30 90 e5                                      ldr r3, [r0]
007be778  e1 c3 dd e5                                      ldrb ip, [sp, #0x3e1]
007be77c  02 20 8f e0                                      add r2, pc, r2
007be780  64 30 93 e5                                      ldr r3, [r3, #0x64]
007be784  01 10 41 e2                                      sub r1, r1, #1
007be788  dc 20 8d e5                                      str r2, [sp, #0xdc]
007be78c  24 20 9d e5                                      ldr r2, [sp, #0x24]
007be790  d8 10 8d e5                                      str r1, [sp, #0xd8]
007be794  30 10 9d e5                                      ldr r1, [sp, #0x30]
007be798  05 00 5c e3                                      cmp ip, #5
007be79c  d4 20 8d e5                                      str r2, [sp, #0xd4]
007be7a0  e4 23 9d 05                                      ldreq r2, [sp, #0x3e4]
007be7a4  cc 10 8d e5                                      str r1, [sp, #0xcc]
007be7a8  4f 1e 8d e2                                      add r1, sp, #0x4f0
007be7ac  08 10 81 e2                                      add r1, r1, #8
007be7b0  00 20 a0 13                                      movne r2, #0
007be7b4  32 be 8d e2                                      add fp, sp, #0x320
007be7b8  30 24 21 e5                                      str r2, [r1, #-0x430]!
007be7bc  c4 b0 8d e5                                      str fp, [sp, #0xc4]
007be7c0  d0 50 8d e5                                      str r5, [sp, #0xd0]
007be7c4  04 10 41 e2                                      sub r1, r1, #4
007be7c8  33 ff 2f e1                                      blx r3
007be7cc  21 33 dd e5                                      ldrb r3, [sp, #0x321]
007be7d0  05 00 53 e3                                      cmp r3, #5
007be7d4  5a 04 00 0a                                      beq #0x7bf944
007be7d8  24 20 9d e5                                      ldr r2, [sp, #0x24]
007be7dc  04 10 95 e5                                      ldr r1, [r5, #4]
007be7e0  05 00 a0 e1                                      mov r0, r5
007be7e4  01 10 62 e0                                      rsb r1, r2, r1
007be7e8  ed 00 ff eb                                      bl #0x77eba4
007be7ec  0b 10 a0 e1                                      mov r1, fp
007be7f0  05 00 a0 e1                                      mov r0, r5
007be7f4  27 aa fe eb                                      bl #0x769098
007be7f8  0b 00 a0 e1                                      mov r0, fp
007be7fc  48 62 ff eb                                      bl #0x797124
007be800  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007be804  46 62 ff eb                                      bl #0x797124
007be808  18 00 9d e5                                      ldr r0, [sp, #0x18]
007be80c  44 62 ff eb                                      bl #0x797124
007be810  d6 f7 ff ea                                      b #0x7bc770
007be814  88 00 95 e8                                      ldm r5, {r3, r7}
007be818  0c b0 a0 e3                                      mov fp, #0xc
007be81c  02 70 47 e2                                      sub r7, r7, #2
007be820  9b 37 27 e0                                      mla r7, fp, r7, r3
007be824  07 00 a0 e1                                      mov r0, r7
007be828  95 88 f1 eb                                      bl #0x420a84
007be82c  00 a0 a0 e1                                      mov sl, r0
007be830  04 00 95 e5                                      ldr r0, [r5, #4]
007be834  00 30 95 e5                                      ldr r3, [r5]
007be838  01 00 40 e2                                      sub r0, r0, #1
007be83c  9b 30 20 e0                                      mla r0, fp, r0, r3
007be840  8f 88 f1 eb                                      bl #0x420a84
007be844  00 00 5a e1                                      cmp sl, r0
007be848  00 10 a0 e1                                      mov r1, r0
007be84c  e9 01 00 0a                                      beq #0x7beff8
007be850  d0 30 da e1                                      ldrsb r3, [sl]
007be854  01 00 73 e3                                      cmn r3, #1
007be858  d0 30 d1 e1                                      ldrsb r3, [r1]
007be85c  01 00 8a 12                                      addne r0, sl, #1
007be860  0c 00 9a 05                                      ldreq r0, [sl, #0xc]
007be864  01 00 73 e3                                      cmn r3, #1
007be868  01 10 81 12                                      addne r1, r1, #1
007be86c  0c 10 91 05                                      ldreq r1, [r1, #0xc]
007be870  a9 3e ed eb                                      bl #0x30e31c
007be874  01 10 70 e2                                      rsbs r1, r0, #1
007be878  00 10 a0 33                                      movlo r1, #0
007be87c  07 00 a0 e1                                      mov r0, r7
007be880  00 fb ff ea                                      b #0x7bd488
007be884  04 70 95 e5                                      ldr r7, [r5, #4]
007be888  00 b0 95 e5                                      ldr fp, [r5]
007be88c  0c 30 a0 e3                                      mov r3, #0xc
007be890  01 20 47 e2                                      sub r2, r7, #1
007be894  93 b2 20 e0                                      mla r0, r3, r2, fp
007be898  01 10 d0 e5                                      ldrb r1, [r0, #1]
007be89c  03 10 41 e2                                      sub r1, r1, #3
007be8a0  71 10 ef e6                                      uxtb r1, r1
007be8a4  01 00 51 e3                                      cmp r1, #1
007be8a8  6d 05 00 9a                                      bls #0x7bfe64
007be8ac  01 20 42 e2                                      sub r2, r2, #1
007be8b0  93 b2 2a e0                                      mla sl, r3, r2, fp
007be8b4  01 30 da e5                                      ldrb r3, [sl, #1]
007be8b8  03 30 43 e2                                      sub r3, r3, #3
007be8bc  73 30 ef e6                                      uxtb r3, r3
007be8c0  01 00 53 e3                                      cmp r3, #1
007be8c4  66 05 00 9a                                      bls #0x7bfe64
007be8c8  61 64 ff eb                                      bl #0x797a54
007be8cc  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
007be8d0  0a 00 a0 e1                                      mov r0, sl
007be8d4  5e 64 ff eb                                      bl #0x797a54
007be8d8  00 20 a0 e1                                      mov r2, r0
007be8dc  01 30 a0 e1                                      mov r3, r1
007be8e0  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007be8e4  96 40 ed eb                                      bl #0x30eb44
007be8e8  00 20 a0 e1                                      mov r2, r0
007be8ec  01 30 a0 e1                                      mov r3, r1
007be8f0  0a 00 a0 e1                                      mov r0, sl
007be8f4  e3 62 ff eb                                      bl #0x797488
007be8f8  e3 fa ff ea                                      b #0x7bd48c
007be8fc  04 00 95 e5                                      ldr r0, [r5, #4]
007be900  00 30 95 e5                                      ldr r3, [r5]
007be904  0c 70 a0 e3                                      mov r7, #0xc
007be908  02 00 40 e2                                      sub r0, r0, #2
007be90c  97 30 20 e0                                      mla r0, r7, r0, r3
007be910  4e 3e 8d e2                                      add r3, sp, #0x4e0
007be914  20 30 8d e5                                      str r3, [sp, #0x20]
007be918  59 88 f1 eb                                      bl #0x420a84
007be91c  00 10 a0 e1                                      mov r1, r0
007be920  20 00 9d e5                                      ldr r0, [sp, #0x20]
007be924  89 51 fe eb                                      bl #0x752f50
007be928  04 00 95 e5                                      ldr r0, [r5, #4]
007be92c  00 30 95 e5                                      ldr r3, [r5]
007be930  01 00 40 e2                                      sub r0, r0, #1
007be934  97 30 20 e0                                      mla r0, r7, r0, r3
007be938  51 88 f1 eb                                      bl #0x420a84
007be93c  00 10 a0 e1                                      mov r1, r0
007be940  20 00 9d e5                                      ldr r0, [sp, #0x20]
007be944  f5 51 fe eb                                      bl #0x753120
007be948  04 10 95 e5                                      ldr r1, [r5, #4]
007be94c  05 00 a0 e1                                      mov r0, r5
007be950  01 10 41 e2                                      sub r1, r1, #1
007be954  92 00 ff eb                                      bl #0x77eba4
007be958  04 20 95 e5                                      ldr r2, [r5, #4]
007be95c  00 30 95 e5                                      ldr r3, [r5]
007be960  20 10 9d e5                                      ldr r1, [sp, #0x20]
007be964  01 20 42 e2                                      sub r2, r2, #1
007be968  97 32 20 e0                                      mla r0, r7, r2, r3
007be96c  59 62 ff eb                                      bl #0x7972d8
007be970  7e f7 ff ea                                      b #0x7bc770
007be974  04 10 95 e5                                      ldr r1, [r5, #4]
007be978  00 30 95 e5                                      ldr r3, [r5]
007be97c  0c 70 a0 e3                                      mov r7, #0xc
007be980  02 10 41 e2                                      sub r1, r1, #2
007be984  97 31 21 e0                                      mla r1, r7, r1, r3
007be988  05 00 a0 e1                                      mov r0, r5
007be98c  e3 39 00 eb                                      bl #0x7cd120
007be990  3f ef ff eb                                      bl #0x7ba694
007be994  00 c0 50 e2                                      subs ip, r0, #0
007be998  2a 05 00 0a                                      beq #0x7bfe48
007be99c  08 08 95 e8                                      ldm r5, {r3, fp}
007be9a0  14 c0 8d e5                                      str ip, [sp, #0x14]
007be9a4  01 b0 4b e2                                      sub fp, fp, #1
007be9a8  97 3b 20 e0                                      mla r0, r7, fp, r3
007be9ac  10 30 8d e5                                      str r3, [sp, #0x10]
007be9b0  27 64 ff eb                                      bl #0x797a54
007be9b4  1a 40 ed eb                                      bl #0x30ea24
007be9b8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007be9bc  f2 af 8d e2                                      add sl, sp, #0x3c8
007be9c0  00 20 a0 e1                                      mov r2, r0
007be9c4  0c 10 a0 e1                                      mov r1, ip
007be9c8  0a 00 a0 e1                                      mov r0, sl
007be9cc  61 cd fe eb                                      bl #0x771f58
007be9d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007be9d4  01 00 4b e2                                      sub r0, fp, #1
007be9d8  0a 10 a0 e1                                      mov r1, sl
007be9dc  97 30 20 e0                                      mla r0, r7, r0, r3
007be9e0  55 63 ff eb                                      bl #0x79773c
007be9e4  0a 00 a0 e1                                      mov r0, sl
007be9e8  cd 61 ff eb                                      bl #0x797124
007be9ec  a6 fa ff ea                                      b #0x7bd48c
007be9f0  04 10 95 e5                                      ldr r1, [r5, #4]
007be9f4  00 30 95 e5                                      ldr r3, [r5]
007be9f8  0c 70 a0 e3                                      mov r7, #0xc
007be9fc  03 10 41 e2                                      sub r1, r1, #3
007bea00  97 31 21 e0                                      mla r1, r7, r1, r3
007bea04  05 00 a0 e1                                      mov r0, r5
007bea08  c4 39 00 eb                                      bl #0x7cd120
007bea0c  20 ef ff eb                                      bl #0x7ba694
007bea10  00 a0 50 e2                                      subs sl, r0, #0
007bea14  f8 fa ff 0a                                      beq #0x7bd5fc
007bea18  04 00 95 e5                                      ldr r0, [r5, #4]
007bea1c  00 30 95 e5                                      ldr r3, [r5]
007bea20  02 00 40 e2                                      sub r0, r0, #2
007bea24  97 30 20 e0                                      mla r0, r7, r0, r3
007bea28  09 64 ff eb                                      bl #0x797a54
007bea2c  fc 3f ed eb                                      bl #0x30ea24
007bea30  04 20 95 e5                                      ldr r2, [r5, #4]
007bea34  00 30 95 e5                                      ldr r3, [r5]
007bea38  00 10 a0 e1                                      mov r1, r0
007bea3c  01 20 42 e2                                      sub r2, r2, #1
007bea40  0a 00 a0 e1                                      mov r0, sl
007bea44  97 32 22 e0                                      mla r2, r7, r2, r3
007bea48  10 cd fe eb                                      bl #0x771e90
007bea4c  ea fa ff ea                                      b #0x7bd5fc
007bea50  05 00 a0 e1                                      mov r0, r5
007bea54  1a 39 00 eb                                      bl #0x7ccec4
007bea58  00 10 a0 e3                                      mov r1, #0
007bea5c  00 30 90 e5                                      ldr r3, [r0]
007bea60  0f e0 a0 e1                                      mov lr, pc
007bea64  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007bea68  40 f7 ff ea                                      b #0x7bc770
007bea6c  05 00 a0 e1                                      mov r0, r5
007bea70  13 39 00 eb                                      bl #0x7ccec4
007bea74  01 10 a0 e3                                      mov r1, #1
007bea78  00 30 90 e5                                      ldr r3, [r0]
007bea7c  0f e0 a0 e1                                      mov lr, pc
007bea80  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007bea84  39 f7 ff ea                                      b #0x7bc770
007bea88  d8 0b 9f e5                                      ldr r0, [pc, #0xbd8]
007bea8c  00 00 8f e0                                      add r0, pc, r0
007bea90  bb 89 fe eb                                      bl #0x761184
007bea94  35 f7 ff ea                                      b #0x7bc770
007bea98  40 f8 fe eb                                      bl #0x77cba0
007bea9c  00 30 50 e2                                      subs r3, r0, #0
007beaa0  32 f7 ff 0a                                      beq #0x7bc770
007beaa4  00 30 93 e5                                      ldr r3, [r3]
007beaa8  0f e0 a0 e1                                      mov lr, pc
007beaac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007beab0  2e f7 ff ea                                      b #0x7bc770
007beab4  04 00 95 e5                                      ldr r0, [r5, #4]
007beab8  00 30 95 e5                                      ldr r3, [r5]
007beabc  0c 20 a0 e3                                      mov r2, #0xc
007beac0  01 00 40 e2                                      sub r0, r0, #1
007beac4  01 70 40 e2                                      sub r7, r0, #1
007beac8  92 30 20 e0                                      mla r0, r2, r0, r3
007beacc  92 37 27 e0                                      mla r7, r2, r7, r3
007bead0  df 63 ff eb                                      bl #0x797a54
007bead4  00 a0 a0 e1                                      mov sl, r0
007bead8  07 00 a0 e1                                      mov r0, r7
007beadc  01 b0 a0 e1                                      mov fp, r1
007beae0  db 63 ff eb                                      bl #0x797a54
007beae4  00 20 a0 e1                                      mov r2, r0
007beae8  01 30 a0 e1                                      mov r3, r1
007beaec  0a 00 a0 e1                                      mov r0, sl
007beaf0  0b 10 a0 e1                                      mov r1, fp
007beaf4  12 40 ed eb                                      bl #0x30eb44
007beaf8  6b fc ff ea                                      b #0x7bdcac
007beafc  04 20 95 e5                                      ldr r2, [r5, #4]
007beb00  00 30 95 e5                                      ldr r3, [r5]
007beb04  0c 70 a0 e3                                      mov r7, #0xc
007beb08  01 20 42 e2                                      sub r2, r2, #1
007beb0c  97 32 27 e0                                      mla r7, r7, r2, r3
007beb10  07 00 a0 e1                                      mov r0, r7
007beb14  ce 63 ff eb                                      bl #0x797a54
007beb18  e8 3f ed eb                                      bl #0x30eac0
007beb1c  c0 3f ed eb                                      bl #0x30ea24
007beb20  05 fb ff ea                                      b #0x7bd73c
007beb24  04 00 95 e5                                      ldr r0, [r5, #4]
007beb28  00 30 95 e5                                      ldr r3, [r5]
007beb2c  0c a0 a0 e3                                      mov sl, #0xc
007beb30  01 00 40 e2                                      sub r0, r0, #1
007beb34  9a 30 20 e0                                      mla r0, sl, r0, r3
007beb38  d1 87 f1 eb                                      bl #0x420a84
007beb3c  f5 7f 8d e2                                      add r7, sp, #0x3d4
007beb40  00 20 a0 e1                                      mov r2, r0
007beb44  00 c0 a0 e3                                      mov ip, #0
007beb48  07 00 a0 e1                                      mov r0, r7
007beb4c  05 10 a0 e1                                      mov r1, r5
007beb50  06 30 a0 e1                                      mov r3, r6
007beb54  00 c0 8d e5                                      str ip, [sp]
007beb58  70 3d 00 eb                                      bl #0x7ce120
007beb5c  04 00 95 e5                                      ldr r0, [r5, #4]
007beb60  00 30 95 e5                                      ldr r3, [r5]
007beb64  07 10 a0 e1                                      mov r1, r7
007beb68  01 00 40 e2                                      sub r0, r0, #1
007beb6c  9a 30 20 e0                                      mla r0, sl, r0, r3
007beb70  f1 62 ff eb                                      bl #0x79773c
007beb74  07 00 a0 e1                                      mov r0, r7
007beb78  69 61 ff eb                                      bl #0x797124
007beb7c  fb f6 ff ea                                      b #0x7bc770
007beb80  04 00 95 e5                                      ldr r0, [r5, #4]
007beb84  00 30 95 e5                                      ldr r3, [r5]
007beb88  0c 70 a0 e3                                      mov r7, #0xc
007beb8c  02 00 40 e2                                      sub r0, r0, #2
007beb90  97 30 20 e0                                      mla r0, r7, r0, r3
007beb94  ba 87 f1 eb                                      bl #0x420a84
007beb98  04 20 95 e5                                      ldr r2, [r5, #4]
007beb9c  00 30 95 e5                                      ldr r3, [r5]
007beba0  00 10 a0 e1                                      mov r1, r0
007beba4  01 20 42 e2                                      sub r2, r2, #1
007beba8  97 32 22 e0                                      mla r2, r7, r2, r3
007bebac  05 00 a0 e1                                      mov r0, r5
007bebb0  06 30 a0 e1                                      mov r3, r6
007bebb4  fb 3a 00 eb                                      bl #0x7cd7a8
007bebb8  04 10 95 e5                                      ldr r1, [r5, #4]
007bebbc  05 00 a0 e1                                      mov r0, r5
007bebc0  02 10 41 e2                                      sub r1, r1, #2
007bebc4  f6 ff fe eb                                      bl #0x77eba4
007bebc8  e8 f6 ff ea                                      b #0x7bc770
007bebcc  04 20 95 e5                                      ldr r2, [r5, #4]
007bebd0  00 30 95 e5                                      ldr r3, [r5]
007bebd4  0c 10 a0 e3                                      mov r1, #0xc
007bebd8  01 20 42 e2                                      sub r2, r2, #1
007bebdc  91 32 21 e0                                      mla r1, r1, r2, r3
007bebe0  05 00 a0 e1                                      mov r0, r5
007bebe4  40 20 9d e5                                      ldr r2, [sp, #0x40]
007bebe8  51 3b 00 eb                                      bl #0x7cd934
007bebec  04 10 95 e5                                      ldr r1, [r5, #4]
007bebf0  05 00 a0 e1                                      mov r0, r5
007bebf4  01 10 41 e2                                      sub r1, r1, #1
007bebf8  e9 ff fe eb                                      bl #0x77eba4
007bebfc  db f6 ff ea                                      b #0x7bc770
007bec00  04 00 95 e5                                      ldr r0, [r5, #4]
007bec04  00 30 95 e5                                      ldr r3, [r5]
007bec08  0c 70 a0 e3                                      mov r7, #0xc
007bec0c  01 00 40 e2                                      sub r0, r0, #1
007bec10  97 30 20 e0                                      mla r0, r7, r0, r3
007bec14  8e 63 ff eb                                      bl #0x797a54
007bec18  81 3f ed eb                                      bl #0x30ea24
007bec1c  00 a0 a0 e1                                      mov sl, r0
007bec20  04 00 95 e5                                      ldr r0, [r5, #4]
007bec24  00 30 95 e5                                      ldr r3, [r5]
007bec28  02 00 40 e2                                      sub r0, r0, #2
007bec2c  97 30 20 e0                                      mla r0, r7, r0, r3
007bec30  87 63 ff eb                                      bl #0x797a54
007bec34  7a 3f ed eb                                      bl #0x30ea24
007bec38  04 20 95 e5                                      ldr r2, [r5, #4]
007bec3c  00 30 95 e5                                      ldr r3, [r5]
007bec40  01 b0 40 e2                                      sub fp, r0, #1
007bec44  03 20 42 e2                                      sub r2, r2, #3
007bec48  97 32 20 e0                                      mla r0, r7, r2, r3
007bec4c  8c 87 f1 eb                                      bl #0x420a84
007bec50  d0 30 d0 e1                                      ldrsb r3, [r0]
007bec54  01 00 73 e3                                      cmn r3, #1
007bec58  2d 03 00 0a                                      beq #0x7bf914
007bec5c  01 30 43 e2                                      sub r3, r3, #1
007bec60  03 00 5b e1                                      cmp fp, r3
007bec64  0b 10 a0 b1                                      movlt r1, fp
007bec68  03 10 a0 a1                                      movge r1, r3
007bec6c  c1 1f c1 e1                                      bic r1, r1, r1, asr #31
007bec70  03 30 61 e0                                      rsb r3, r1, r3
007bec74  0a 00 53 e1                                      cmp r3, sl
007bec78  03 70 a0 b1                                      movlt r7, r3
007bec7c  0a 70 a0 a1                                      movge r7, sl
007bec80  01 30 80 e2                                      add r3, r0, #1
007bec84  4e 2e 8d e2                                      add r2, sp, #0x4e0
007bec88  01 10 83 e0                                      add r1, r3, r1
007bec8c  02 00 a0 e1                                      mov r0, r2
007bec90  20 20 8d e5                                      str r2, [sp, #0x20]
007bec94  df b6 fe eb                                      bl #0x76c818
007bec98  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bec9c  07 10 a0 e1                                      mov r1, r7
007beca0  1b 4c fe eb                                      bl #0x751d14
007beca4  04 10 95 e5                                      ldr r1, [r5, #4]
007beca8  05 00 a0 e1                                      mov r0, r5
007becac  02 10 41 e2                                      sub r1, r1, #2
007becb0  bb ff fe eb                                      bl #0x77eba4
007becb4  04 20 95 e5                                      ldr r2, [r5, #4]
007becb8  00 30 95 e5                                      ldr r3, [r5]
007becbc  0c 00 a0 e3                                      mov r0, #0xc
007becc0  01 20 42 e2                                      sub r2, r2, #1
007becc4  90 32 20 e0                                      mla r0, r0, r2, r3
007becc8  20 10 9d e5                                      ldr r1, [sp, #0x20]
007beccc  81 61 ff eb                                      bl #0x7972d8
007becd0  a6 f6 ff ea                                      b #0x7bc770
007becd4  04 10 95 e5                                      ldr r1, [r5, #4]
007becd8  00 00 51 e3                                      cmp r1, #0
007becdc  a3 f6 ff da                                      ble #0x7bc770
007bece0  01 10 41 e2                                      sub r1, r1, #1
007bece4  05 00 a0 e1                                      mov r0, r5
007bece8  ad ff fe eb                                      bl #0x77eba4
007becec  9f f6 ff ea                                      b #0x7bc770
007becf0  04 20 95 e5                                      ldr r2, [r5, #4]
007becf4  00 30 95 e5                                      ldr r3, [r5]
007becf8  0c 70 a0 e3                                      mov r7, #0xc
007becfc  01 20 42 e2                                      sub r2, r2, #1
007bed00  97 32 27 e0                                      mla r7, r7, r2, r3
007bed04  07 00 a0 e1                                      mov r0, r7
007bed08  5d 87 f1 eb                                      bl #0x420a84
007bed0c  d0 30 d0 e1                                      ldrsb r3, [r0]
007bed10  01 00 73 e3                                      cmn r3, #1
007bed14  04 30 90 05                                      ldreq r3, [r0, #4]
007bed18  01 00 80 12                                      addne r0, r0, #1
007bed1c  0c 00 90 05                                      ldreq r0, [r0, #0xc]
007bed20  01 30 43 e2                                      sub r3, r3, #1
007bed24  03 10 a0 e1                                      mov r1, r3
007bed28  d1 4b fe eb                                      bl #0x751c74
007bed2c  82 fa ff ea                                      b #0x7bd73c
007bed30  b3 7f 8d e2                                      add r7, sp, #0x2cc
007bed34  07 00 a0 e1                                      mov r0, r7
007bed38  05 10 a0 e1                                      mov r1, r5
007bed3c  a0 6a ff eb                                      bl #0x7997c4
007bed40  07 00 a0 e1                                      mov r0, r7
007bed44  42 63 ff eb                                      bl #0x797a54
007bed48  35 3f ed eb                                      bl #0x30ea24
007bed4c  18 00 8d e5                                      str r0, [sp, #0x18]
007bed50  07 00 a0 e1                                      mov r0, r7
007bed54  f2 60 ff eb                                      bl #0x797124
007bed58  05 00 a0 e1                                      mov r0, r5
007bed5c  1e f5 ff eb                                      bl #0x7bc1dc
007bed60  00 10 a0 e3                                      mov r1, #0
007bed64  00 a0 a0 e1                                      mov sl, r0
007bed68  38 00 a0 e3                                      mov r0, #0x38
007bed6c  8d 4f fe eb                                      bl #0x752ba8
007bed70  0a 10 a0 e1                                      mov r1, sl
007bed74  00 70 a0 e1                                      mov r7, r0
007bed78  a8 b2 fe eb                                      bl #0x76b820
007bed7c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007bed80  00 00 5e e3                                      cmp lr, #0
007bed84  19 00 00 da                                      ble #0x7bedf0
007bed88  00 a0 a0 e3                                      mov sl, #0
007bed8c  0c b0 a0 e3                                      mov fp, #0xc
007bed90  20 40 8d e5                                      str r4, [sp, #0x20]
007bed94  04 00 95 e5                                      ldr r0, [r5, #4]
007bed98  00 20 95 e5                                      ldr r2, [r5]
007bed9c  00 30 97 e5                                      ldr r3, [r7]
007beda0  02 00 40 e2                                      sub r0, r0, #2
007beda4  9b 20 20 e0                                      mla r0, fp, r0, r2
007beda8  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
007bedac  34 87 f1 eb                                      bl #0x420a84
007bedb0  04 20 95 e5                                      ldr r2, [r5, #4]
007bedb4  00 30 95 e5                                      ldr r3, [r5]
007bedb8  00 10 a0 e1                                      mov r1, r0
007bedbc  01 20 42 e2                                      sub r2, r2, #1
007bedc0  9b 32 22 e0                                      mla r2, fp, r2, r3
007bedc4  07 00 a0 e1                                      mov r0, r7
007bedc8  34 ff 2f e1                                      blx r4
007bedcc  04 10 95 e5                                      ldr r1, [r5, #4]
007bedd0  05 00 a0 e1                                      mov r0, r5
007bedd4  01 a0 8a e2                                      add sl, sl, #1
007bedd8  02 10 41 e2                                      sub r1, r1, #2
007beddc  70 ff fe eb                                      bl #0x77eba4
007bede0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007bede4  00 00 5a e1                                      cmp sl, r0
007bede8  e9 ff ff 1a                                      bne #0x7bed94
007bedec  20 40 9d e5                                      ldr r4, [sp, #0x20]
007bedf0  4f 1e 8d e2                                      add r1, sp, #0x4f0
007bedf4  08 10 81 e2                                      add r1, r1, #8
007bedf8  00 71 21 e5                                      str r7, [r1, #-0x100]!
007bedfc  05 00 a0 e1                                      mov r0, r5
007bee00  2d f1 ff eb                                      bl #0x7bb2bc
007bee04  59 f6 ff ea                                      b #0x7bc770
007bee08  04 20 95 e5                                      ldr r2, [r5, #4]
007bee0c  00 30 95 e5                                      ldr r3, [r5]
007bee10  0c 70 a0 e3                                      mov r7, #0xc
007bee14  01 20 42 e2                                      sub r2, r2, #1
007bee18  97 32 27 e0                                      mla r7, r7, r2, r3
007bee1c  07 00 a0 e1                                      mov r0, r7
007bee20  0b 62 ff eb                                      bl #0x797654
007bee24  00 10 a0 e1                                      mov r1, r0
007bee28  07 00 a0 e1                                      mov r0, r7
007bee2c  47 61 ff eb                                      bl #0x797350
007bee30  4e f6 ff ea                                      b #0x7bc770
007bee34  30 08 9f e5                                      ldr r0, [pc, #0x830]
007bee38  00 00 8f e0                                      add r0, pc, r0
007bee3c  d0 88 fe eb                                      bl #0x761184
007bee40  4a f6 ff ea                                      b #0x7bc770
007bee44  04 20 95 e5                                      ldr r2, [r5, #4]
007bee48  00 30 95 e5                                      ldr r3, [r5]
007bee4c  0c 00 a0 e3                                      mov r0, #0xc
007bee50  01 20 42 e2                                      sub r2, r2, #1
007bee54  90 32 20 e0                                      mla r0, r0, r2, r3
007bee58  09 87 f1 eb                                      bl #0x420a84
007bee5c  0b ad 8d e2                                      add sl, sp, #0x2c0
007bee60  05 10 a0 e1                                      mov r1, r5
007bee64  00 20 a0 e1                                      mov r2, r0
007bee68  00 70 a0 e3                                      mov r7, #0
007bee6c  0a 00 a0 e1                                      mov r0, sl
007bee70  06 30 a0 e1                                      mov r3, r6
007bee74  00 70 8d e5                                      str r7, [sp]
007bee78  a8 3c 00 eb                                      bl #0x7ce120
007bee7c  c1 32 dd e5                                      ldrb r3, [sp, #0x2c1]
007bee80  05 00 a0 e1                                      mov r0, r5
007bee84  05 00 53 e3                                      cmp r3, #5
007bee88  07 10 a0 11                                      movne r1, r7
007bee8c  c4 12 9d 05                                      ldreq r1, [sp, #0x2c4]
007bee90  ab ef ff eb                                      bl #0x7bad44
007bee94  04 10 95 e5                                      ldr r1, [r5, #4]
007bee98  05 00 a0 e1                                      mov r0, r5
007bee9c  01 10 41 e2                                      sub r1, r1, #1
007beea0  3f ff fe eb                                      bl #0x77eba4
007beea4  0a 00 a0 e1                                      mov r0, sl
007beea8  9d 60 ff eb                                      bl #0x797124
007beeac  2f f6 ff ea                                      b #0x7bc770
007beeb0  04 20 95 e5                                      ldr r2, [r5, #4]
007beeb4  00 30 95 e5                                      ldr r3, [r5]
007beeb8  0c 00 a0 e3                                      mov r0, #0xc
007beebc  01 20 42 e2                                      sub r2, r2, #1
007beec0  90 32 20 e0                                      mla r0, r0, r2, r3
007beec4  ee 86 f1 eb                                      bl #0x420a84
007beec8  00 10 a0 e1                                      mov r1, r0
007beecc  05 00 a0 e1                                      mov r0, r5
007beed0  65 39 00 eb                                      bl #0x7cd46c
007beed4  04 10 95 e5                                      ldr r1, [r5, #4]
007beed8  05 00 a0 e1                                      mov r0, r5
007beedc  01 10 41 e2                                      sub r1, r1, #1
007beee0  2f ff fe eb                                      bl #0x77eba4
007beee4  21 f6 ff ea                                      b #0x7bc770
007beee8  e1 13 dd e5                                      ldrb r1, [sp, #0x3e1]
007beeec  00 30 a0 e3                                      mov r3, #0
007beef0  78 27 9f e5                                      ldr r2, [pc, #0x778]
007beef4  05 00 51 e3                                      cmp r1, #5
007beef8  d8 32 cd e5                                      strb r3, [sp, #0x2d8]
007beefc  d9 32 cd e5                                      strb r3, [sp, #0x2d9]
007bef00  30 c0 9d e5                                      ldr ip, [sp, #0x30]
007bef04  e4 33 9d 05                                      ldreq r3, [sp, #0x3e4]
007bef08  02 20 8f e0                                      add r2, pc, r2
007bef0c  00 10 e0 e3                                      mvn r1, #0
007bef10  b6 7f 8d e2                                      add r7, sp, #0x2d8
007bef14  a8 00 8d e2                                      add r0, sp, #0xa8
007bef18  bc 10 8d e5                                      str r1, [sp, #0xbc]
007bef1c  c0 20 8d e5                                      str r2, [sp, #0xc0]
007bef20  b0 c0 8d e5                                      str ip, [sp, #0xb0]
007bef24  b8 10 8d e5                                      str r1, [sp, #0xb8]
007bef28  ac 30 8d e5                                      str r3, [sp, #0xac]
007bef2c  a8 70 8d e5                                      str r7, [sp, #0xa8]
007bef30  b4 50 8d e5                                      str r5, [sp, #0xb4]
007bef34  34 6a ff eb                                      bl #0x79980c
007bef38  05 00 a0 e1                                      mov r0, r5
007bef3c  07 10 a0 e1                                      mov r1, r7
007bef40  54 a8 fe eb                                      bl #0x769098
007bef44  07 00 a0 e1                                      mov r0, r7
007bef48  75 60 ff eb                                      bl #0x797124
007bef4c  07 f6 ff ea                                      b #0x7bc770
007bef50  04 00 95 e5                                      ldr r0, [r5, #4]
007bef54  00 30 95 e5                                      ldr r3, [r5]
007bef58  0c 20 a0 e3                                      mov r2, #0xc
007bef5c  01 00 40 e2                                      sub r0, r0, #1
007bef60  01 70 40 e2                                      sub r7, r0, #1
007bef64  92 30 20 e0                                      mla r0, r2, r0, r3
007bef68  92 37 27 e0                                      mla r7, r2, r7, r3
007bef6c  b8 62 ff eb                                      bl #0x797a54
007bef70  00 a0 a0 e1                                      mov sl, r0
007bef74  07 00 a0 e1                                      mov r0, r7
007bef78  01 b0 a0 e1                                      mov fp, r1
007bef7c  b4 62 ff eb                                      bl #0x797a54
007bef80  00 20 a0 e1                                      mov r2, r0
007bef84  01 30 a0 e1                                      mov r3, r1
007bef88  0a 00 a0 e1                                      mov r0, sl
007bef8c  0b 10 a0 e1                                      mov r1, fp
007bef90  b2 3b ed eb                                      bl #0x30de60
007bef94  00 00 50 e3                                      cmp r0, #0
007bef98  00 10 a0 e3                                      mov r1, #0
007bef9c  01 10 a0 13                                      movne r1, #1
007befa0  07 00 a0 e1                                      mov r0, r7
007befa4  01 10 01 e2                                      and r1, r1, #1
007befa8  36 f9 ff ea                                      b #0x7bd488
007befac  88 00 95 e8                                      ldm r5, {r3, r7}
007befb0  0c a0 a0 e3                                      mov sl, #0xc
007befb4  02 70 47 e2                                      sub r7, r7, #2
007befb8  9a 37 27 e0                                      mla r7, sl, r7, r3
007befbc  07 00 a0 e1                                      mov r0, r7
007befc0  66 62 ff eb                                      bl #0x797960
007befc4  00 00 50 e3                                      cmp r0, #0
007befc8  af 00 00 1a                                      bne #0x7bf28c
007befcc  00 10 a0 e3                                      mov r1, #0
007befd0  07 00 a0 e1                                      mov r0, r7
007befd4  2b f9 ff ea                                      b #0x7bd488
007befd8  88 00 95 e8                                      ldm r5, {r3, r7}
007befdc  0c a0 a0 e3                                      mov sl, #0xc
007befe0  02 70 47 e2                                      sub r7, r7, #2
007befe4  9a 37 27 e0                                      mla r7, sl, r7, r3
007befe8  07 00 a0 e1                                      mov r0, r7
007befec  5b 62 ff eb                                      bl #0x797960
007beff0  00 00 50 e3                                      cmp r0, #0
007beff4  9b 00 00 0a                                      beq #0x7bf268
007beff8  01 10 a0 e3                                      mov r1, #1
007beffc  07 00 a0 e1                                      mov r0, r7
007bf000  20 f9 ff ea                                      b #0x7bd488
007bf004  04 20 95 e5                                      ldr r2, [r5, #4]
007bf008  00 30 95 e5                                      ldr r3, [r5]
007bf00c  0c 70 a0 e3                                      mov r7, #0xc
007bf010  01 20 42 e2                                      sub r2, r2, #1
007bf014  97 32 27 e0                                      mla r7, r7, r2, r3
007bf018  07 00 a0 e1                                      mov r0, r7
007bf01c  4f 62 ff eb                                      bl #0x797960
007bf020  01 10 20 e2                                      eor r1, r0, #1
007bf024  71 10 ef e6                                      uxtb r1, r1
007bf028  07 00 a0 e1                                      mov r0, r7
007bf02c  7f 60 ff eb                                      bl #0x797230
007bf030  ce f5 ff ea                                      b #0x7bc770
007bf034  04 20 95 e5                                      ldr r2, [r5, #4]
007bf038  00 30 95 e5                                      ldr r3, [r5]
007bf03c  0c 10 a0 e3                                      mov r1, #0xc
007bf040  01 20 42 e2                                      sub r2, r2, #1
007bf044  01 70 42 e2                                      sub r7, r2, #1
007bf048  91 37 27 e0                                      mla r7, r1, r7, r3
007bf04c  91 32 21 e0                                      mla r1, r1, r2, r3
007bf050  07 00 a0 e1                                      mov r0, r7
007bf054  59 63 ff eb                                      bl #0x797dc0
007bf058  00 10 a0 e1                                      mov r1, r0
007bf05c  07 00 a0 e1                                      mov r0, r7
007bf060  72 60 ff eb                                      bl #0x797230
007bf064  04 10 95 e5                                      ldr r1, [r5, #4]
007bf068  05 00 a0 e1                                      mov r0, r5
007bf06c  01 10 41 e2                                      sub r1, r1, #1
007bf070  cb fe fe eb                                      bl #0x77eba4
007bf074  bd f5 ff ea                                      b #0x7bc770
007bf078  04 00 95 e5                                      ldr r0, [r5, #4]
007bf07c  00 30 95 e5                                      ldr r3, [r5]
007bf080  0c 20 a0 e3                                      mov r2, #0xc
007bf084  01 00 40 e2                                      sub r0, r0, #1
007bf088  92 30 2a e0                                      mla sl, r2, r0, r3
007bf08c  00 b0 a0 e3                                      mov fp, #0
007bf090  70 b1 cd e5                                      strb fp, [sp, #0x170]
007bf094  71 b1 cd e5                                      strb fp, [sp, #0x171]
007bf098  01 00 40 e2                                      sub r0, r0, #1
007bf09c  d1 10 da e1                                      ldrsb r1, [sl, #1]
007bf0a0  92 30 20 e0                                      mla r0, r2, r0, r3
007bf0a4  05 00 51 e3                                      cmp r1, #5
007bf0a8  18 00 8d e5                                      str r0, [sp, #0x18]
007bf0ac  04 b0 9a 05                                      ldreq fp, [sl, #4]
007bf0b0  bc 15 9f e5                                      ldr r1, [pc, #0x5bc]
007bf0b4  47 3e 8d e2                                      add r3, sp, #0x470
007bf0b8  00 20 9b e5                                      ldr r2, [fp]
007bf0bc  0c 30 83 e2                                      add r3, r3, #0xc
007bf0c0  17 ee 8d e2                                      add lr, sp, #0x170
007bf0c4  20 e0 8d e5                                      str lr, [sp, #0x20]
007bf0c8  01 10 8f e0                                      add r1, pc, r1
007bf0cc  03 00 a0 e1                                      mov r0, r3
007bf0d0  20 70 92 e5                                      ldr r7, [r2, #0x20]
007bf0d4  10 30 8d e5                                      str r3, [sp, #0x10]
007bf0d8  67 52 f1 eb                                      bl #0x413a7c
007bf0dc  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf0e0  0b 00 a0 e1                                      mov r0, fp
007bf0e4  20 20 9d e5                                      ldr r2, [sp, #0x20]
007bf0e8  03 10 a0 e1                                      mov r1, r3
007bf0ec  37 ff 2f e1                                      blx r7
007bf0f0  7c 04 dd e5                                      ldrb r0, [sp, #0x47c]
007bf0f4  70 30 af e6                                      sxtb r3, r0
007bf0f8  01 00 73 e3                                      cmn r3, #1
007bf0fc  2e 03 00 0a                                      beq #0x7bfdbc
007bf100  05 00 a0 e1                                      mov r0, r5
007bf104  34 f4 ff eb                                      bl #0x7bc1dc
007bf108  00 10 a0 e3                                      mov r1, #0
007bf10c  00 b0 a0 e1                                      mov fp, r0
007bf110  38 00 a0 e3                                      mov r0, #0x38
007bf114  a3 4e fe eb                                      bl #0x752ba8
007bf118  0b 10 a0 e1                                      mov r1, fp
007bf11c  00 70 a0 e1                                      mov r7, r0
007bf120  be b1 fe eb                                      bl #0x76b820
007bf124  71 31 dd e5                                      ldrb r3, [sp, #0x171]
007bf128  28 00 87 e2                                      add r0, r7, #0x28
007bf12c  46 be 8d e2                                      add fp, sp, #0x460
007bf130  05 00 53 e3                                      cmp r3, #5
007bf134  00 10 a0 13                                      movne r1, #0
007bf138  74 11 9d 05                                      ldreq r1, [sp, #0x174]
007bf13c  e1 a6 fe eb                                      bl #0x768cc8
007bf140  0a 10 a0 e1                                      mov r1, sl
007bf144  07 00 a0 e1                                      mov r0, r7
007bf148  ee a6 fe eb                                      bl #0x768d08
007bf14c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007bf150  08 b0 8b e2                                      add fp, fp, #8
007bf154  0b 00 a0 e1                                      mov r0, fp
007bf158  d1 30 d1 e1                                      ldrsb r3, [r1, #1]
007bf15c  14 15 9f e5                                      ldr r1, [pc, #0x514]
007bf160  05 00 53 e3                                      cmp r3, #5
007bf164  18 20 9d 05                                      ldreq r2, [sp, #0x18]
007bf168  00 a0 a0 13                                      movne sl, #0
007bf16c  01 10 8f e0                                      add r1, pc, r1
007bf170  04 a0 92 05                                      ldreq sl, [r2, #4]
007bf174  00 30 9a e5                                      ldr r3, [sl]
007bf178  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
007bf17c  18 30 8d e5                                      str r3, [sp, #0x18]
007bf180  3d 52 f1 eb                                      bl #0x413a7c
007bf184  00 30 a0 e3                                      mov r3, #0
007bf188  64 31 cd e5                                      strb r3, [sp, #0x164]
007bf18c  00 00 57 e3                                      cmp r7, #0
007bf190  05 30 83 e2                                      add r3, r3, #5
007bf194  65 31 cd e5                                      strb r3, [sp, #0x165]
007bf198  68 71 8d e5                                      str r7, [sp, #0x168]
007bf19c  01 00 00 0a                                      beq #0x7bf1a8
007bf1a0  07 00 a0 e1                                      mov r0, r7
007bf1a4  ae 6a fe eb                                      bl #0x759c64
007bf1a8  59 7f 8d e2                                      add r7, sp, #0x164
007bf1ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
007bf1b0  0b 10 a0 e1                                      mov r1, fp
007bf1b4  07 20 a0 e1                                      mov r2, r7
007bf1b8  0a 00 a0 e1                                      mov r0, sl
007bf1bc  33 ff 2f e1                                      blx r3
007bf1c0  07 00 a0 e1                                      mov r0, r7
007bf1c4  d6 5f ff eb                                      bl #0x797124
007bf1c8  68 c4 dd e5                                      ldrb ip, [sp, #0x468]
007bf1cc  7c 30 af e6                                      sxtb r3, ip
007bf1d0  01 00 73 e3                                      cmn r3, #1
007bf1d4  f4 02 00 0a                                      beq #0x7bfdac
007bf1d8  04 10 95 e5                                      ldr r1, [r5, #4]
007bf1dc  05 00 a0 e1                                      mov r0, r5
007bf1e0  02 10 41 e2                                      sub r1, r1, #2
007bf1e4  6e fe fe eb                                      bl #0x77eba4
007bf1e8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bf1ec  cc 5f ff eb                                      bl #0x797124
007bf1f0  5e f5 ff ea                                      b #0x7bc770
007bf1f4  04 00 95 e5                                      ldr r0, [r5, #4]
007bf1f8  00 30 95 e5                                      ldr r3, [r5]
007bf1fc  0c a0 a0 e3                                      mov sl, #0xc
007bf200  01 00 40 e2                                      sub r0, r0, #1
007bf204  01 70 40 e2                                      sub r7, r0, #1
007bf208  9a 37 27 e0                                      mla r7, sl, r7, r3
007bf20c  01 20 d7 e5                                      ldrb r2, [r7, #1]
007bf210  03 20 42 e2                                      sub r2, r2, #3
007bf214  72 20 ef e6                                      uxtb r2, r2
007bf218  01 00 52 e3                                      cmp r2, #1
007bf21c  cd 02 00 9a                                      bls #0x7bfd58
007bf220  9a 30 20 e0                                      mla r0, sl, r0, r3
007bf224  0a 62 ff eb                                      bl #0x797a54
007bf228  00 a0 a0 e1                                      mov sl, r0
007bf22c  07 00 a0 e1                                      mov r0, r7
007bf230  01 b0 a0 e1                                      mov fp, r1
007bf234  06 62 ff eb                                      bl #0x797a54
007bf238  00 20 a0 e1                                      mov r2, r0
007bf23c  01 30 a0 e1                                      mov r3, r1
007bf240  0a 00 a0 e1                                      mov r0, sl
007bf244  0b 10 a0 e1                                      mov r1, fp
007bf248  04 3b ed eb                                      bl #0x30de60
007bf24c  00 00 50 e3                                      cmp r0, #0
007bf250  00 10 a0 e3                                      mov r1, #0
007bf254  01 10 a0 13                                      movne r1, #1
007bf258  07 00 a0 e1                                      mov r0, r7
007bf25c  01 10 01 e2                                      and r1, r1, #1
007bf260  f2 5f ff eb                                      bl #0x797230
007bf264  88 f8 ff ea                                      b #0x7bd48c
007bf268  04 00 95 e5                                      ldr r0, [r5, #4]
007bf26c  00 30 95 e5                                      ldr r3, [r5]
007bf270  01 00 40 e2                                      sub r0, r0, #1
007bf274  9a 30 20 e0                                      mla r0, sl, r0, r3
007bf278  b8 61 ff eb                                      bl #0x797960
007bf27c  00 10 50 e2                                      subs r1, r0, #0
007bf280  7f f8 ff 0a                                      beq #0x7bd484
007bf284  01 10 a0 e3                                      mov r1, #1
007bf288  5b ff ff ea                                      b #0x7beffc
007bf28c  04 00 95 e5                                      ldr r0, [r5, #4]
007bf290  00 30 95 e5                                      ldr r3, [r5]
007bf294  01 00 40 e2                                      sub r0, r0, #1
007bf298  9a 30 20 e0                                      mla r0, sl, r0, r3
007bf29c  af 61 ff eb                                      bl #0x797960
007bf2a0  00 00 50 e3                                      cmp r0, #0
007bf2a4  48 ff ff 0a                                      beq #0x7befcc
007bf2a8  01 10 a0 e3                                      mov r1, #1
007bf2ac  52 ff ff ea                                      b #0x7beffc
007bf2b0  44 10 95 e5                                      ldr r1, [r5, #0x44]
007bf2b4  40 20 95 e5                                      ldr r2, [r5, #0x40]
007bf2b8  05 00 a0 e1                                      mov r0, r5
007bf2bc  01 10 41 e2                                      sub r1, r1, #1
007bf2c0  01 30 63 e0                                      rsb r3, r3, r1
007bf2c4  0c 10 a0 e3                                      mov r1, #0xc
007bf2c8  91 23 21 e0                                      mla r1, r1, r3, r2
007bf2cc  71 a7 fe eb                                      bl #0x769098
007bf2d0  c1 f6 ff ea                                      b #0x7bcddc
007bf2d4  05 00 a0 e1                                      mov r0, r5
007bf2d8  c3 10 83 e0                                      add r1, r3, r3, asr #1
007bf2dc  14 20 8d e5                                      str r2, [sp, #0x14]
007bf2e0  10 30 8d e5                                      str r3, [sp, #0x10]
007bf2e4  48 6c fe eb                                      bl #0x75a40c
007bf2e8  04 00 95 e5                                      ldr r0, [r5, #4]
007bf2ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf2f0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bf2f4  d4 f7 ff ea                                      b #0x7bd24c
007bf2f8  11 1d 8d e2                                      add r1, sp, #0x440
007bf2fc  01 70 87 e2                                      add r7, r7, #1
007bf300  05 00 a0 e1                                      mov r0, r5
007bf304  03 b0 87 e0                                      add fp, r7, r3
007bf308  20 10 8d e5                                      str r1, [sp, #0x20]
007bf30c  b2 f3 ff eb                                      bl #0x7bc1dc
007bf310  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007bf314  00 70 a0 e1                                      mov r7, r0
007bf318  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bf31c  d6 51 f1 eb                                      bl #0x413a7c
007bf320  2c 00 87 e2                                      add r0, r7, #0x2c
007bf324  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bf328  e7 73 fe eb                                      bl #0x75c2cc
007bf32c  40 24 dd e5                                      ldrb r2, [sp, #0x440]
007bf330  20 00 8d e5                                      str r0, [sp, #0x20]
007bf334  72 30 af e6                                      sxtb r3, r2
007bf338  01 00 73 e3                                      cmn r3, #1
007bf33c  66 02 00 0a                                      beq #0x7bfcdc
007bf340  0c 00 95 e9                                      ldmib r5, {r2, r3}
007bf344  01 70 82 e2                                      add r7, r2, #1
007bf348  03 00 57 e1                                      cmp r7, r3
007bf34c  03 00 00 da                                      ble #0x7bf360
007bf350  05 00 a0 e1                                      mov r0, r5
007bf354  c7 10 87 e0                                      add r1, r7, r7, asr #1
007bf358  2b 6c fe eb                                      bl #0x75a40c
007bf35c  04 20 95 e5                                      ldr r2, [r5, #4]
007bf360  0c 30 a0 e3                                      mov r3, #0xc
007bf364  00 00 95 e5                                      ldr r0, [r5]
007bf368  93 02 02 e0                                      mul r2, r3, r2
007bf36c  00 10 a0 e3                                      mov r1, #0
007bf370  02 10 c0 e7                                      strb r1, [r0, r2]
007bf374  02 30 80 e0                                      add r3, r0, r2
007bf378  03 20 a0 e3                                      mov r2, #3
007bf37c  08 10 83 e5                                      str r1, [r3, #8]
007bf380  01 20 c3 e5                                      strb r2, [r3, #1]
007bf384  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007bf388  04 c0 83 e5                                      str ip, [r3, #4]
007bf38c  04 70 85 e5                                      str r7, [r5, #4]
007bf390  91 f6 ff ea                                      b #0x7bcddc
007bf394  05 00 a0 e1                                      mov r0, r5
007bf398  c7 10 87 e0                                      add r1, r7, r7, asr #1
007bf39c  10 30 8d e5                                      str r3, [sp, #0x10]
007bf3a0  19 6c fe eb                                      bl #0x75a40c
007bf3a4  04 20 95 e5                                      ldr r2, [r5, #4]
007bf3a8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf3ac  4d f7 ff ea                                      b #0x7bd0e8
007bf3b0  54 00 9d e5                                      ldr r0, [sp, #0x54]
007bf3b4  cb 10 8b e0                                      add r1, fp, fp, asr #1
007bf3b8  10 ed ff eb                                      bl #0x7ba800
007bf3bc  18 30 98 e5                                      ldr r3, [r8, #0x18]
007bf3c0  f6 f7 ff ea                                      b #0x7bd3a0
007bf3c4  00 10 90 e5                                      ldr r1, [r0]
007bf3c8  01 10 41 e2                                      sub r1, r1, #1
007bf3cc  00 00 51 e3                                      cmp r1, #0
007bf3d0  00 10 80 e5                                      str r1, [r0]
007bf3d4  00 00 00 1a                                      bne #0x7bf3dc
007bf3d8  d6 4d fe eb                                      bl #0x752b38
007bf3dc  00 30 a0 e3                                      mov r3, #0
007bf3e0  64 30 85 e5                                      str r3, [r5, #0x64]
007bf3e4  68 30 85 e5                                      str r3, [r5, #0x68]
007bf3e8  08 10 98 e5                                      ldr r1, [r8, #8]
007bf3ec  d6 f7 ff ea                                      b #0x7bd34c
007bf3f0  05 00 a0 e1                                      mov r0, r5
007bf3f4  07 10 a0 e1                                      mov r1, r7
007bf3f8  26 a7 fe eb                                      bl #0x769098
007bf3fc  66 f6 ff ea                                      b #0x7bcd9c
007bf400  0a 00 a0 e1                                      mov r0, sl
007bf404  9e 85 f1 eb                                      bl #0x420a84
007bf408  00 30 94 e5                                      ldr r3, [r4]
007bf40c  00 10 a0 e1                                      mov r1, r0
007bf410  04 00 a0 e1                                      mov r0, r4
007bf414  0f e0 a0 e1                                      mov lr, pc
007bf418  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
007bf41c  00 00 50 e3                                      cmp r0, #0
007bf420  1e 02 00 0a                                      beq #0x7bfca0
007bf424  20 20 9d e5                                      ldr r2, [sp, #0x20]
007bf428  04 00 a0 e1                                      mov r0, r4
007bf42c  00 30 94 e5                                      ldr r3, [r4]
007bf430  01 10 72 e2                                      rsbs r1, r2, #1
007bf434  00 10 a0 33                                      movlo r1, #0
007bf438  0f e0 a0 e1                                      mov lr, pc
007bf43c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007bf440  04 70 95 e5                                      ldr r7, [r5, #4]
007bf444  79 f5 ff ea                                      b #0x7bca30
007bf448  04 00 92 e5                                      ldr r0, [r2, #4]
007bf44c  00 00 50 e3                                      cmp r0, #0
007bf450  0c 04 8d e5                                      str r0, [sp, #0x40c]
007bf454  2f f5 ff 0a                                      beq #0x7bc918
007bf458  01 6a fe eb                                      bl #0x759c64
007bf45c  2d f5 ff ea                                      b #0x7bc918
007bf460  14 02 9f e5                                      ldr r0, [pc, #0x214]
007bf464  09 20 a0 e1                                      mov r2, sb
007bf468  00 00 8f e0                                      add r0, pc, r0
007bf46c  44 87 fe eb                                      bl #0x761184
007bf470  c1 f4 ff ea                                      b #0x7bc77c
007bf474  38 04 9d e5                                      ldr r0, [sp, #0x438]
007bf478  34 14 9d e5                                      ldr r1, [sp, #0x434]
007bf47c  ad 4d fe eb                                      bl #0x752b38
007bf480  c1 f7 ff ea                                      b #0x7bd38c
007bf484  03 00 a0 e1                                      mov r0, r3
007bf488  25 5f ff eb                                      bl #0x797124
007bf48c  04 20 95 e5                                      ldr r2, [r5, #4]
007bf490  00 30 95 e5                                      ldr r3, [r5]
007bf494  0c 00 a0 e3                                      mov r0, #0xc
007bf498  01 20 42 e2                                      sub r2, r2, #1
007bf49c  90 32 20 e0                                      mla r0, r0, r2, r3
007bf4a0  00 10 a0 e3                                      mov r1, #0
007bf4a4  61 5f ff eb                                      bl #0x797230
007bf4a8  2e f9 ff ea                                      b #0x7bd968
007bf4ac  d1 30 d3 e1                                      ldrsb r3, [r3, #1]
007bf4b0  00 00 53 e3                                      cmp r3, #0
007bf4b4  07 00 00 0a                                      beq #0x7bf4d8
007bf4b8  90 e4 dd e5                                      ldrb lr, [sp, #0x490]
007bf4bc  7e 30 af e6                                      sxtb r3, lr
007bf4c0  01 00 73 e3                                      cmn r3, #1
007bf4c4  94 24 9d 05                                      ldreq r2, [sp, #0x494]
007bf4c8  03 20 a0 11                                      movne r2, r3
007bf4cc  01 20 42 e2                                      sub r2, r2, #1
007bf4d0  00 00 52 e3                                      cmp r2, #0
007bf4d4  26 01 00 1a                                      bne #0x7bf974
007bf4d8  04 20 95 e5                                      ldr r2, [r5, #4]
007bf4dc  00 30 95 e5                                      ldr r3, [r5]
007bf4e0  0c 10 a0 e3                                      mov r1, #0xc
007bf4e4  02 20 42 e2                                      sub r2, r2, #2
007bf4e8  91 32 23 e0                                      mla r3, r1, r2, r3
007bf4ec  04 10 a0 e3                                      mov r1, #4
007bf4f0  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007bf4f4  05 00 52 e3                                      cmp r2, #5
007bf4f8  04 70 93 05                                      ldreq r7, [r3, #4]
007bf4fc  00 70 a0 13                                      movne r7, #0
007bf500  00 30 97 e5                                      ldr r3, [r7]
007bf504  07 00 a0 e1                                      mov r0, r7
007bf508  0f e0 a0 e1                                      mov lr, pc
007bf50c  08 f0 93 e5                                      ldr pc, [r3, #8]
007bf510  00 30 50 e2                                      subs r3, r0, #0
007bf514  95 03 00 1a                                      bne #0x7c0370
007bf518  24 20 97 e5                                      ldr r2, [r7, #0x24]
007bf51c  00 00 52 e3                                      cmp r2, #0
007bf520  7f 03 00 0a                                      beq #0x7c0324
007bf524  20 20 97 e5                                      ldr r2, [r7, #0x20]
007bf528  04 b0 d2 e5                                      ldrb fp, [r2, #4]
007bf52c  00 00 5b e3                                      cmp fp, #0
007bf530  77 03 00 0a                                      beq #0x7c0314
007bf534  8f bf 8d e2                                      add fp, sp, #0x23c
007bf538  07 00 a0 e1                                      mov r0, r7
007bf53c  0b 10 a0 e1                                      mov r1, fp
007bf540  3d 32 cd e5                                      strb r3, [sp, #0x23d]
007bf544  3c 32 cd e5                                      strb r3, [sp, #0x23c]
007bf548  f0 a5 fe eb                                      bl #0x768d10
007bf54c  00 00 50 e3                                      cmp r0, #0
007bf550  9e 7f 8d 02                                      addeq r7, sp, #0x278
007bf554  4d 03 00 1a                                      bne #0x7c0290
007bf558  0b 00 a0 e1                                      mov r0, fp
007bf55c  f0 5e ff eb                                      bl #0x797124
007bf560  45 fa ff ea                                      b #0x7bde7c
007bf564  19 32 dd e5                                      ldrb r3, [sp, #0x219]
007bf568  05 00 53 e3                                      cmp r3, #5
007bf56c  1c 02 9d 05                                      ldreq r0, [sp, #0x21c]
007bf570  61 ec ff eb                                      bl #0x7ba6fc
007bf574  00 a0 50 e2                                      subs sl, r0, #0
007bf578  67 01 00 0a                                      beq #0x7bfb1c
007bf57c  05 00 a0 e1                                      mov r0, r5
007bf580  15 f3 ff eb                                      bl #0x7bc1dc
007bf584  00 10 a0 e3                                      mov r1, #0
007bf588  00 a0 a0 e1                                      mov sl, r0
007bf58c  38 00 a0 e3                                      mov r0, #0x38
007bf590  84 4d fe eb                                      bl #0x752ba8
007bf594  0a 10 a0 e1                                      mov r1, sl
007bf598  00 b0 a0 e1                                      mov fp, r0
007bf59c  9f b0 fe eb                                      bl #0x76b820
007bf5a0  0b 10 a0 e1                                      mov r1, fp
007bf5a4  f5 0f 8d e2                                      add r0, sp, #0x3d4
007bf5a8  c6 a5 fe eb                                      bl #0x768cc8
007bf5ac  07 10 a0 e1                                      mov r1, r7
007bf5b0  d4 03 9d e5                                      ldr r0, [sp, #0x3d4]
007bf5b4  bd b0 fe eb                                      bl #0x76b8b0
007bf5b8  7a af 8d e2                                      add sl, sp, #0x1e8
007bf5bc  d4 13 9d e5                                      ldr r1, [sp, #0x3d4]
007bf5c0  20 00 80 e2                                      add r0, r0, #0x20
007bf5c4  af 7d fe eb                                      bl #0x75ec88
007bf5c8  d4 13 9d e5                                      ldr r1, [sp, #0x3d4]
007bf5cc  0a 00 a0 e1                                      mov r0, sl
007bf5d0  76 ed ff eb                                      bl #0x7babb0
007bf5d4  04 c0 95 e5                                      ldr ip, [r5, #4]
007bf5d8  a0 e0 9f e5                                      ldr lr, [pc, #0xa0]
007bf5dc  77 bf 8d e2                                      add fp, sp, #0x1dc
007bf5e0  01 c0 4c e2                                      sub ip, ip, #1
007bf5e4  04 c0 8d e5                                      str ip, [sp, #4]
007bf5e8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bf5ec  0e e0 8f e0                                      add lr, pc, lr
007bf5f0  07 10 a0 e1                                      mov r1, r7
007bf5f4  05 20 a0 e1                                      mov r2, r5
007bf5f8  0a 30 a0 e1                                      mov r3, sl
007bf5fc  0b 00 a0 e1                                      mov r0, fp
007bf600  08 e0 8d e5                                      str lr, [sp, #8]
007bf604  00 c0 8d e5                                      str ip, [sp]
007bf608  bd ec ff eb                                      bl #0x7ba904
007bf60c  0b 00 a0 e1                                      mov r0, fp
007bf610  c3 5e ff eb                                      bl #0x797124
007bf614  0a 00 a0 e1                                      mov r0, sl
007bf618  c1 5e ff eb                                      bl #0x797124
007bf61c  63 fa ff ea                                      b #0x7bdfb0
007bf620  01 10 41 e2                                      sub r1, r1, #1
007bf624  04 70 90 e5                                      ldr r7, [r0, #4]
007bf628  92 31 20 e0                                      mla r0, r2, r1, r3
007bf62c  5e 5d ff eb                                      bl #0x796bac
007bf630  00 00 57 e3                                      cmp r7, #0
007bf634  00 10 a0 e1                                      mov r1, r0
007bf638  1c f8 ff 0a                                      beq #0x7bd6b0
007bf63c  07 00 a0 e1                                      mov r0, r7
007bf640  be a5 fe eb                                      bl #0x768d40
007bf644  00 00 50 e3                                      cmp r0, #0
007bf648  19 f8 ff 1a                                      bne #0x7bd6b4
007bf64c  17 f8 ff ea                                      b #0x7bd6b0
007bf650  fb 4f 8d e2                                      add r4, sp, #0x3ec
007bf654  3e ce 8d e2                                      add ip, sp, #0x3e0
007bf658  34 40 8d e5                                      str r4, [sp, #0x34]
007bf65c  30 c0 8d e5                                      str ip, [sp, #0x30]
007bf660  45 f4 ff ea                                      b #0x7bc77c
; mapping-symbol data/literal pool
007bf664  64 c4 14 00 d4 c0 14 00 28 bd 14 00 70 d6 12 00  .byte 0x64, 0xc4, 0x14, 0x00, 0xd4, 0xc0, 0x14, 0x00, 0x28, 0xbd, 0x14, 0x00, 0x70, 0xd6, 0x12, 0x00
007bf674  68 9f 14 00 c4 9e 14 00 b8 b8 14 00 4c e0 10 00  .byte 0x68, 0x9f, 0x14, 0x00, 0xc4, 0x9e, 0x14, 0x00, 0xb8, 0xb8, 0x14, 0x00, 0x4c, 0xe0, 0x10, 0x00
007bf684  d0 b4 14 00 d8 b2 14 00 dc d9 10 00 2c a9 14 00  .byte 0xd0, 0xb4, 0x14, 0x00, 0xd8, 0xb2, 0x14, 0x00, 0xdc, 0xd9, 0x10, 0x00, 0x2c, 0xa9, 0x14, 0x00
007bf694  c4 a8 14 00 9c a6 14 00 ac d0 10 00 70 a5 14 00  .byte 0xc4, 0xa8, 0x14, 0x00, 0x9c, 0xa6, 0x14, 0x00, 0xac, 0xd0, 0x10, 0x00, 0x70, 0xa5, 0x14, 0x00
007bf6a4  5c a5 14 00                                      .byte 0x5c, 0xa5, 0x14, 0x00
; decoder-mode: arm
007bf6a8  04 a0 93 e5                                      ldr sl, [r3, #4]
007bf6ac  00 00 5a e3                                      cmp sl, #0
007bf6b0  a9 fb ff 0a                                      beq #0x7be55c
007bf6b4  03 00 a0 e1                                      mov r0, r3
007bf6b8  10 30 8d e5                                      str r3, [sp, #0x10]
007bf6bc  98 5e ff eb                                      bl #0x797124
007bf6c0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf6c4  00 20 a0 e3                                      mov r2, #0
007bf6c8  0c c0 a0 e3                                      mov ip, #0xc
007bf6cc  01 20 c3 e5                                      strb r2, [r3, #1]
007bf6d0  88 00 95 e8                                      ldm r5, {r3, r7}
007bf6d4  01 70 47 e2                                      sub r7, r7, #1
007bf6d8  9c 37 27 e0                                      mla r7, ip, r7, r3
007bf6dc  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
007bf6e0  02 00 53 e3                                      cmp r3, #2
007bf6e4  80 01 00 0a                                      beq #0x7bfcec
007bf6e8  00 30 9a e5                                      ldr r3, [sl]
007bf6ec  07 00 a0 e1                                      mov r0, r7
007bf6f0  4e 1e 8d e2                                      add r1, sp, #0x4e0
007bf6f4  20 70 93 e5                                      ldr r7, [r3, #0x20]
007bf6f8  1f 61 ff eb                                      bl #0x797b7c
007bf6fc  04 20 95 e5                                      ldr r2, [r5, #4]
007bf700  00 30 95 e5                                      ldr r3, [r5]
007bf704  00 10 a0 e1                                      mov r1, r0
007bf708  02 20 42 e2                                      sub r2, r2, #2
007bf70c  0c 00 a0 e3                                      mov r0, #0xc
007bf710  90 32 22 e0                                      mla r2, r0, r2, r3
007bf714  0a 00 a0 e1                                      mov r0, sl
007bf718  37 ff 2f e1                                      blx r7
007bf71c  00 00 50 e3                                      cmp r0, #0
007bf720  20 00 8d e5                                      str r0, [sp, #0x20]
007bf724  58 f7 ff 1a                                      bne #0x7bd48c
007bf728  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007bf72c  b0 b0 1f e5                                      ldr fp, [pc, #-0xb0]
007bf730  4a 3e 8d e2                                      add r3, sp, #0x4a0
007bf734  90 e2 cd e5                                      strb lr, [sp, #0x290]
007bf738  91 e2 cd e5                                      strb lr, [sp, #0x291]
007bf73c  00 20 9a e5                                      ldr r2, [sl]
007bf740  04 30 83 e2                                      add r3, r3, #4
007bf744  29 ce 8d e2                                      add ip, sp, #0x290
007bf748  0b b0 8f e0                                      add fp, pc, fp
007bf74c  18 c0 8d e5                                      str ip, [sp, #0x18]
007bf750  0b 10 a0 e1                                      mov r1, fp
007bf754  03 00 a0 e1                                      mov r0, r3
007bf758  20 70 92 e5                                      ldr r7, [r2, #0x20]
007bf75c  10 30 8d e5                                      str r3, [sp, #0x10]
007bf760  c5 50 f1 eb                                      bl #0x413a7c
007bf764  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf768  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bf76c  0a 00 a0 e1                                      mov r0, sl
007bf770  03 10 a0 e1                                      mov r1, r3
007bf774  37 ff 2f e1                                      blx r7
007bf778  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf77c  00 70 a0 e1                                      mov r7, r0
007bf780  03 00 a0 e1                                      mov r0, r3
007bf784  d3 81 f1 eb                                      bl #0x41fed8
007bf788  00 00 57 e3                                      cmp r7, #0
007bf78c  32 00 00 0a                                      beq #0x7bf85c
007bf790  91 32 dd e5                                      ldrb r3, [sp, #0x291]
007bf794  05 00 53 e3                                      cmp r3, #5
007bf798  2f 00 00 1a                                      bne #0x7bf85c
007bf79c  94 72 9d e5                                      ldr r7, [sp, #0x294]
007bf7a0  00 00 57 e3                                      cmp r7, #0
007bf7a4  2c 00 00 0a                                      beq #0x7bf85c
007bf7a8  00 30 97 e5                                      ldr r3, [r7]
007bf7ac  07 00 a0 e1                                      mov r0, r7
007bf7b0  04 10 a0 e3                                      mov r1, #4
007bf7b4  0f e0 a0 e1                                      mov lr, pc
007bf7b8  08 f0 93 e5                                      ldr pc, [r3, #8]
007bf7bc  00 00 50 e3                                      cmp r0, #0
007bf7c0  25 00 00 0a                                      beq #0x7bf85c
007bf7c4  00 20 97 e5                                      ldr r2, [r7]
007bf7c8  a1 3f 8d e2                                      add r3, sp, #0x284
007bf7cc  0a 10 a0 e1                                      mov r1, sl
007bf7d0  03 00 a0 e1                                      mov r0, r3
007bf7d4  64 a0 92 e5                                      ldr sl, [r2, #0x64]
007bf7d8  10 30 8d e5                                      str r3, [sp, #0x10]
007bf7dc  f3 ec ff eb                                      bl #0x7babb0
007bf7e0  04 20 95 e5                                      ldr r2, [r5, #4]
007bf7e4  85 12 dd e5                                      ldrb r1, [sp, #0x285]
007bf7e8  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf7ec  01 20 42 e2                                      sub r2, r2, #1
007bf7f0  05 00 51 e3                                      cmp r1, #5
007bf7f4  a0 20 8d e5                                      str r2, [sp, #0xa0]
007bf7f8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007bf7fc  20 20 9d 15                                      ldrne r2, [sp, #0x20]
007bf800  88 22 9d 05                                      ldreq r2, [sp, #0x288]
007bf804  01 10 a0 e3                                      mov r1, #1
007bf808  9c 10 8d e5                                      str r1, [sp, #0x9c]
007bf80c  98 10 8d e2                                      add r1, sp, #0x98
007bf810  90 20 8d e5                                      str r2, [sp, #0x90]
007bf814  0c 10 41 e2                                      sub r1, r1, #0xc
007bf818  8c e0 8d e5                                      str lr, [sp, #0x8c]
007bf81c  94 30 8d e5                                      str r3, [sp, #0x94]
007bf820  07 00 a0 e1                                      mov r0, r7
007bf824  10 30 8d e5                                      str r3, [sp, #0x10]
007bf828  a4 b0 8d e5                                      str fp, [sp, #0xa4]
007bf82c  98 50 8d e5                                      str r5, [sp, #0x98]
007bf830  3a ff 2f e1                                      blx sl
007bf834  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bf838  03 00 a0 e1                                      mov r0, r3
007bf83c  38 5e ff eb                                      bl #0x797124
007bf840  04 20 95 e5                                      ldr r2, [r5, #4]
007bf844  00 30 95 e5                                      ldr r3, [r5]
007bf848  0c 00 a0 e3                                      mov r0, #0xc
007bf84c  02 20 42 e2                                      sub r2, r2, #2
007bf850  90 32 20 e0                                      mla r0, r0, r2, r3
007bf854  18 10 9d e5                                      ldr r1, [sp, #0x18]
007bf858  b7 5f ff eb                                      bl #0x79773c
007bf85c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007bf860  2f 5e ff eb                                      bl #0x797124
007bf864  08 f7 ff ea                                      b #0x7bd48c
007bf868  04 a0 92 e5                                      ldr sl, [r2, #4]
007bf86c  00 00 5a e3                                      cmp sl, #0
007bf870  5d fb ff 0a                                      beq #0x7be5ec
007bf874  01 10 41 e2                                      sub r1, r1, #1
007bf878  9b 31 27 e0                                      mla r7, fp, r1, r3
007bf87c  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
007bf880  02 00 53 e3                                      cmp r3, #2
007bf884  2e 02 00 0a                                      beq #0x7c0144
007bf888  00 30 9a e5                                      ldr r3, [sl]
007bf88c  07 00 a0 e1                                      mov r0, r7
007bf890  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
007bf894  7a 84 f1 eb                                      bl #0x420a84
007bf898  04 20 95 e5                                      ldr r2, [r5, #4]
007bf89c  00 30 95 e5                                      ldr r3, [r5]
007bf8a0  00 10 a0 e1                                      mov r1, r0
007bf8a4  01 20 42 e2                                      sub r2, r2, #1
007bf8a8  0c 00 a0 e3                                      mov r0, #0xc
007bf8ac  90 32 22 e0                                      mla r2, r0, r2, r3
007bf8b0  0a 00 a0 e1                                      mov r0, sl
007bf8b4  37 ff 2f e1                                      blx r7
007bf8b8  04 70 95 e5                                      ldr r7, [r5, #4]
007bf8bc  4a fb ff ea                                      b #0x7be5ec
007bf8c0  04 70 93 e5                                      ldr r7, [r3, #4]
007bf8c4  05 00 a0 e1                                      mov r0, r5
007bf8c8  b5 fc fe eb                                      bl #0x77eba4
007bf8cc  00 00 57 e3                                      cmp r7, #0
007bf8d0  f1 f7 ff 0a                                      beq #0x7bd89c
007bf8d4  00 30 a0 e3                                      mov r3, #0
007bf8d8  bd 33 cd e5                                      strb r3, [sp, #0x3bd]
007bf8dc  bc 33 cd e5                                      strb r3, [sp, #0x3bc]
007bf8e0  ef af 8d e2                                      add sl, sp, #0x3bc
007bf8e4  00 30 97 e5                                      ldr r3, [r7]
007bf8e8  07 00 a0 e1                                      mov r0, r7
007bf8ec  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bf8f0  0a 20 a0 e1                                      mov r2, sl
007bf8f4  0f e0 a0 e1                                      mov lr, pc
007bf8f8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007bf8fc  00 00 50 e3                                      cmp r0, #0
007bf900  00 70 a0 01                                      moveq r7, r0
007bf904  06 02 00 1a                                      bne #0x7c0124
007bf908  0a 00 a0 e1                                      mov r0, sl
007bf90c  04 5e ff eb                                      bl #0x797124
007bf910  e1 f7 ff ea                                      b #0x7bd89c
007bf914  04 20 90 e5                                      ldr r2, [r0, #4]
007bf918  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007bf91c  01 20 42 e2                                      sub r2, r2, #1
007bf920  02 00 5b e1                                      cmp fp, r2
007bf924  0b 10 a0 b1                                      movlt r1, fp
007bf928  02 10 a0 a1                                      movge r1, r2
007bf92c  c1 1f c1 e1                                      bic r1, r1, r1, asr #31
007bf930  02 20 61 e0                                      rsb r2, r1, r2
007bf934  0a 00 52 e1                                      cmp r2, sl
007bf938  02 70 a0 b1                                      movlt r7, r2
007bf93c  0a 70 a0 a1                                      movge r7, sl
007bf940  cf fc ff ea                                      b #0x7bec84
007bf944  24 33 9d e5                                      ldr r3, [sp, #0x324]
007bf948  00 00 53 e3                                      cmp r3, #0
007bf94c  a1 fb ff 0a                                      beq #0x7be7d8
007bf950  05 00 a0 e1                                      mov r0, r5
007bf954  20 f2 ff eb                                      bl #0x7bc1dc
007bf958  21 33 dd e5                                      ldrb r3, [sp, #0x321]
007bf95c  30 20 90 e5                                      ldr r2, [r0, #0x30]
007bf960  05 00 53 e3                                      cmp r3, #5
007bf964  24 33 9d 05                                      ldreq r3, [sp, #0x324]
007bf968  00 30 a0 13                                      movne r3, #0
007bf96c  34 20 83 e5                                      str r2, [r3, #0x34]
007bf970  98 fb ff ea                                      b #0x7be7d8
007bf974  01 00 73 e3                                      cmn r3, #1
007bf978  01 10 8a 12                                      addne r1, sl, #1
007bf97c  18 03 00 0a                                      beq #0x7c05e4
007bf980  00 03 1f e5                                      ldr r0, [pc, #-0x300]
007bf984  9e 7f 8d e2                                      add r7, sp, #0x278
007bf988  00 00 8f e0                                      add r0, pc, r0
007bf98c  fc 85 fe eb                                      bl #0x761184
007bf990  39 f9 ff ea                                      b #0x7bde7c
007bf994  04 30 9a e5                                      ldr r3, [sl, #4]
007bf998  4f ee 8d e2                                      add lr, sp, #0x4f0
007bf99c  08 e0 8e e2                                      add lr, lr, #8
007bf9a0  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007bf9a4  08 30 9a e5                                      ldr r3, [sl, #8]
007bf9a8  fc 33 8d e5                                      str r3, [sp, #0x3fc]
007bf9ac  ff 30 e0 e3                                      mvn r3, #0xff
007bf9b0  d3 00 8e e1                                      ldrd r0, r1, [lr, r3]
007bf9b4  00 20 a0 e1                                      mov r2, r0
007bf9b8  01 30 a0 e1                                      mov r3, r1
007bf9bc  3e 3a ed eb                                      bl #0x30e2bc
007bf9c0  00 00 50 e3                                      cmp r0, #0
007bf9c4  19 f4 ff 1a                                      bne #0x7bca30
007bf9c8  0a 00 a0 e1                                      mov r0, sl
007bf9cc  20 60 ff eb                                      bl #0x797a54
007bf9d0  13 3c ed eb                                      bl #0x30ea24
007bf9d4  00 70 94 e5                                      ldr r7, [r4]
007bf9d8  00 10 a0 e1                                      mov r1, r0
007bf9dc  04 00 a0 e1                                      mov r0, r4
007bf9e0  0f e0 a0 e1                                      mov lr, pc
007bf9e4  4c f1 97 e5                                      ldr pc, [r7, #0x14c]
007bf9e8  8d fe ff ea                                      b #0x7bf424
007bf9ec  58 40 90 e5                                      ldr r4, [r0, #0x58]
007bf9f0  18 20 9d e5                                      ldr r2, [sp, #0x18]
007bf9f4  02 00 54 e1                                      cmp r4, r2
007bf9f8  30 f5 ff 1a                                      bne #0x7bcec0
007bf9fc  07 00 a0 e1                                      mov r0, r7
007bfa00  c7 5d ff eb                                      bl #0x797124
007bfa04  08 30 98 e5                                      ldr r3, [r8, #8]
007bfa08  05 a0 8b e2                                      add sl, fp, #5
007bfa0c  18 30 8d e5                                      str r3, [sp, #0x18]
007bfa10  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bfa14  0b 30 83 e0                                      add r3, r3, fp
007bfa18  01 30 d3 e5                                      ldrb r3, [r3, #1]
007bfa1c  0b b0 dc e7                                      ldrb fp, [ip, fp]
007bfa20  03 b4 8b e1                                      orr fp, fp, r3, lsl #8
007bfa24  00 00 5b e3                                      cmp fp, #0
007bfa28  0f 00 00 da                                      ble #0x7bfa6c
007bfa2c  20 60 8d e5                                      str r6, [sp, #0x20]
007bfa30  05 60 a0 e1                                      mov r6, r5
007bfa34  04 50 a0 e1                                      mov r5, r4
007bfa38  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bfa3c  00 70 a0 e3                                      mov r7, #0
007bfa40  01 a0 8a e2                                      add sl, sl, #1
007bfa44  0a 00 84 e0                                      add r0, r4, sl
007bfa48  01 39 ed eb                                      bl #0x30de54
007bfa4c  01 70 87 e2                                      add r7, r7, #1
007bfa50  00 a0 8a e0                                      add sl, sl, r0
007bfa54  0b 00 57 e1                                      cmp r7, fp
007bfa58  01 a0 8a e2                                      add sl, sl, #1
007bfa5c  f7 ff ff 1a                                      bne #0x7bfa40
007bfa60  05 40 a0 e1                                      mov r4, r5
007bfa64  06 50 a0 e1                                      mov r5, r6
007bfa68  20 60 9d e5                                      ldr r6, [sp, #0x20]
007bfa6c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007bfa70  0a 30 81 e0                                      add r3, r1, sl
007bfa74  0a 20 d1 e7                                      ldrb r2, [r1, sl]
007bfa78  01 30 d3 e5                                      ldrb r3, [r3, #1]
007bfa7c  03 34 82 e1                                      orr r3, r2, r3, lsl #8
007bfa80  03 40 84 e0                                      add r4, r4, r3
007bfa84  3a f3 ff ea                                      b #0x7bc774
007bfa88  58 40 90 e5                                      ldr r4, [r0, #0x58]
007bfa8c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bfa90  0c 00 54 e1                                      cmp r4, ip
007bfa94  76 f4 ff 1a                                      bne #0x7bcc74
007bfa98  07 00 a0 e1                                      mov r0, r7
007bfa9c  a0 5d ff eb                                      bl #0x797124
007bfaa0  08 e0 98 e5                                      ldr lr, [r8, #8]
007bfaa4  02 70 8b e2                                      add r7, fp, #2
007bfaa8  18 e0 8d e5                                      str lr, [sp, #0x18]
007bfaac  0b 30 8e e0                                      add r3, lr, fp
007bfab0  01 30 d3 e5                                      ldrb r3, [r3, #1]
007bfab4  0b b0 de e7                                      ldrb fp, [lr, fp]
007bfab8  03 b4 8b e1                                      orr fp, fp, r3, lsl #8
007bfabc  00 00 5b e3                                      cmp fp, #0
007bfac0  0e 00 00 da                                      ble #0x7bfb00
007bfac4  20 60 8d e5                                      str r6, [sp, #0x20]
007bfac8  05 60 a0 e1                                      mov r6, r5
007bfacc  04 50 a0 e1                                      mov r5, r4
007bfad0  18 40 9d e5                                      ldr r4, [sp, #0x18]
007bfad4  00 a0 a0 e3                                      mov sl, #0
007bfad8  07 00 84 e0                                      add r0, r4, r7
007bfadc  dc 38 ed eb                                      bl #0x30de54
007bfae0  01 a0 8a e2                                      add sl, sl, #1
007bfae4  01 00 80 e2                                      add r0, r0, #1
007bfae8  0b 00 5a e1                                      cmp sl, fp
007bfaec  00 70 87 e0                                      add r7, r7, r0
007bfaf0  f8 ff ff 1a                                      bne #0x7bfad8
007bfaf4  05 40 a0 e1                                      mov r4, r5
007bfaf8  06 50 a0 e1                                      mov r5, r6
007bfafc  20 60 9d e5                                      ldr r6, [sp, #0x20]
007bfb00  18 00 9d e5                                      ldr r0, [sp, #0x18]
007bfb04  07 30 80 e0                                      add r3, r0, r7
007bfb08  07 20 d0 e7                                      ldrb r2, [r0, r7]
007bfb0c  01 30 d3 e5                                      ldrb r3, [r3, #1]
007bfb10  03 34 82 e1                                      orr r3, r2, r3, lsl #8
007bfb14  03 40 84 e0                                      add r4, r4, r3
007bfb18  15 f3 ff ea                                      b #0x7bc774
007bfb1c  00 00 5b e3                                      cmp fp, #0
007bfb20  1d ee 8d 02                                      addeq lr, sp, #0x1d0
007bfb24  d0 a1 cd e5                                      strb sl, [sp, #0x1d0]
007bfb28  d1 a1 cd e5                                      strb sl, [sp, #0x1d1]
007bfb2c  24 e0 8d 05                                      streq lr, [sp, #0x24]
007bfb30  57 00 00 0a                                      beq #0x7bfc94
007bfb34  00 30 9b e5                                      ldr r3, [fp]
007bfb38  1d 1e 8d e2                                      add r1, sp, #0x1d0
007bfb3c  24 10 8d e5                                      str r1, [sp, #0x24]
007bfb40  20 30 93 e5                                      ldr r3, [r3, #0x20]
007bfb44  07 00 a0 e1                                      mov r0, r7
007bfb48  10 30 8d e5                                      str r3, [sp, #0x10]
007bfb4c  cc 83 f1 eb                                      bl #0x420a84
007bfb50  24 20 9d e5                                      ldr r2, [sp, #0x24]
007bfb54  00 10 a0 e1                                      mov r1, r0
007bfb58  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bfb5c  0b 00 a0 e1                                      mov r0, fp
007bfb60  33 ff 2f e1                                      blx r3
007bfb64  00 00 50 e3                                      cmp r0, #0
007bfb68  49 00 00 0a                                      beq #0x7bfc94
007bfb6c  d1 31 dd e5                                      ldrb r3, [sp, #0x1d1]
007bfb70  05 00 53 e3                                      cmp r3, #5
007bfb74  0a 00 a0 11                                      movne r0, sl
007bfb78  d4 01 9d 05                                      ldreq r0, [sp, #0x1d4]
007bfb7c  de ea ff eb                                      bl #0x7ba6fc
007bfb80  00 30 50 e2                                      subs r3, r0, #0
007bfb84  73 02 00 0a                                      beq #0x7c0558
007bfb88  05 00 a0 e1                                      mov r0, r5
007bfb8c  10 30 8d e5                                      str r3, [sp, #0x10]
007bfb90  91 f1 ff eb                                      bl #0x7bc1dc
007bfb94  00 10 a0 e3                                      mov r1, #0
007bfb98  00 a0 a0 e1                                      mov sl, r0
007bfb9c  38 00 a0 e3                                      mov r0, #0x38
007bfba0  00 4c fe eb                                      bl #0x752ba8
007bfba4  0a 10 a0 e1                                      mov r1, sl
007bfba8  00 b0 a0 e1                                      mov fp, r0
007bfbac  1b af fe eb                                      bl #0x76b820
007bfbb0  0b 10 a0 e1                                      mov r1, fp
007bfbb4  f5 0f 8d e2                                      add r0, sp, #0x3d4
007bfbb8  42 a4 fe eb                                      bl #0x768cc8
007bfbbc  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bfbc0  d4 23 9d e5                                      ldr r2, [sp, #0x3d4]
007bfbc4  71 bf 8d e2                                      add fp, sp, #0x1c4
007bfbc8  03 10 a0 e1                                      mov r1, r3
007bfbcc  00 a0 a0 e3                                      mov sl, #0
007bfbd0  0b 00 a0 e1                                      mov r0, fp
007bfbd4  c4 a1 cd e5                                      strb sl, [sp, #0x1c4]
007bfbd8  c5 a1 cd e5                                      strb sl, [sp, #0x1c5]
007bfbdc  14 20 8d e5                                      str r2, [sp, #0x14]
007bfbe0  9a 5d ff eb                                      bl #0x797250
007bfbe4  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bfbe8  0b 10 a0 e1                                      mov r1, fp
007bfbec  02 00 a0 e1                                      mov r0, r2
007bfbf0  2e af fe eb                                      bl #0x76b8b0
007bfbf4  00 20 a0 e1                                      mov r2, r0
007bfbf8  0b 00 a0 e1                                      mov r0, fp
007bfbfc  14 20 8d e5                                      str r2, [sp, #0x14]
007bfc00  47 5d ff eb                                      bl #0x797124
007bfc04  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bfc08  d4 13 9d e5                                      ldr r1, [sp, #0x3d4]
007bfc0c  6b bf 8d e2                                      add fp, sp, #0x1ac
007bfc10  20 00 82 e2                                      add r0, r2, #0x20
007bfc14  6e 2f 8d e2                                      add r2, sp, #0x1b8
007bfc18  20 20 8d e5                                      str r2, [sp, #0x20]
007bfc1c  19 7c fe eb                                      bl #0x75ec88
007bfc20  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bfc24  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bfc28  b9 a1 cd e5                                      strb sl, [sp, #0x1b9]
007bfc2c  03 10 a0 e1                                      mov r1, r3
007bfc30  b8 a1 cd e5                                      strb sl, [sp, #0x1b8]
007bfc34  85 5d ff eb                                      bl #0x797250
007bfc38  d4 13 9d e5                                      ldr r1, [sp, #0x3d4]
007bfc3c  0b 00 a0 e1                                      mov r0, fp
007bfc40  da eb ff eb                                      bl #0x7babb0
007bfc44  04 c0 95 e5                                      ldr ip, [r5, #4]
007bfc48  c4 e5 1f e5                                      ldr lr, [pc, #-0x5c4]
007bfc4c  1a ae 8d e2                                      add sl, sp, #0x1a0
007bfc50  01 c0 4c e2                                      sub ip, ip, #1
007bfc54  04 c0 8d e5                                      str ip, [sp, #4]
007bfc58  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007bfc5c  0e e0 8f e0                                      add lr, pc, lr
007bfc60  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bfc64  05 20 a0 e1                                      mov r2, r5
007bfc68  0b 30 a0 e1                                      mov r3, fp
007bfc6c  0a 00 a0 e1                                      mov r0, sl
007bfc70  08 e0 8d e5                                      str lr, [sp, #8]
007bfc74  00 c0 8d e5                                      str ip, [sp]
007bfc78  21 eb ff eb                                      bl #0x7ba904
007bfc7c  0a 00 a0 e1                                      mov r0, sl
007bfc80  27 5d ff eb                                      bl #0x797124
007bfc84  0b 00 a0 e1                                      mov r0, fp
007bfc88  25 5d ff eb                                      bl #0x797124
007bfc8c  20 00 9d e5                                      ldr r0, [sp, #0x20]
007bfc90  23 5d ff eb                                      bl #0x797124
007bfc94  24 00 9d e5                                      ldr r0, [sp, #0x24]
007bfc98  21 5d ff eb                                      bl #0x797124
007bfc9c  c3 f8 ff ea                                      b #0x7bdfb0
007bfca0  04 00 95 e5                                      ldr r0, [r5, #4]
007bfca4  00 30 95 e5                                      ldr r3, [r5]
007bfca8  01 00 40 e2                                      sub r0, r0, #1
007bfcac  9b 30 20 e0                                      mla r0, fp, r0, r3
007bfcb0  bf 5c ff eb                                      bl #0x796fb4
007bfcb4  00 10 a0 e1                                      mov r1, r0
007bfcb8  fe 0f 8d e2                                      add r0, sp, #0x3f8
007bfcbc  41 97 ff eb                                      bl #0x7a59c8
007bfcc0  00 00 50 e3                                      cmp r0, #0
007bfcc4  dd fd ff 0a                                      beq #0x7bf440
007bfcc8  4f ce 8d e2                                      add ip, sp, #0x4f0
007bfccc  ff 30 e0 e3                                      mvn r3, #0xff
007bfcd0  08 c0 8c e2                                      add ip, ip, #8
007bfcd4  d3 00 8c e1                                      ldrd r0, r1, [ip, r3]
007bfcd8  3c ff ff ea                                      b #0x7bf9d0
007bfcdc  4c 04 9d e5                                      ldr r0, [sp, #0x44c]
007bfce0  48 14 9d e5                                      ldr r1, [sp, #0x448]
007bfce4  93 4b fe eb                                      bl #0x752b38
007bfce8  94 fd ff ea                                      b #0x7bf340
007bfcec  04 30 97 e5                                      ldr r3, [r7, #4]
007bfcf0  4f ee 8d e2                                      add lr, sp, #0x4f0
007bfcf4  08 e0 8e e2                                      add lr, lr, #8
007bfcf8  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007bfcfc  08 30 97 e5                                      ldr r3, [r7, #8]
007bfd00  fc 33 8d e5                                      str r3, [sp, #0x3fc]
007bfd04  ff 30 e0 e3                                      mvn r3, #0xff
007bfd08  d3 00 8e e1                                      ldrd r0, r1, [lr, r3]
007bfd0c  00 20 a0 e1                                      mov r2, r0
007bfd10  01 30 a0 e1                                      mov r3, r1
007bfd14  68 39 ed eb                                      bl #0x30e2bc
007bfd18  00 00 50 e3                                      cmp r0, #0
007bfd1c  71 fe ff 1a                                      bne #0x7bf6e8
007bfd20  00 30 9a e5                                      ldr r3, [sl]
007bfd24  07 00 a0 e1                                      mov r0, r7
007bfd28  28 70 93 e5                                      ldr r7, [r3, #0x28]
007bfd2c  48 5f ff eb                                      bl #0x797a54
007bfd30  3b 3b ed eb                                      bl #0x30ea24
007bfd34  04 20 95 e5                                      ldr r2, [r5, #4]
007bfd38  00 30 95 e5                                      ldr r3, [r5]
007bfd3c  0c c0 a0 e3                                      mov ip, #0xc
007bfd40  02 20 42 e2                                      sub r2, r2, #2
007bfd44  00 10 a0 e1                                      mov r1, r0
007bfd48  9c 32 22 e0                                      mla r2, ip, r2, r3
007bfd4c  0a 00 a0 e1                                      mov r0, sl
007bfd50  37 ff 2f e1                                      blx r7
007bfd54  cc f5 ff ea                                      b #0x7bd48c
007bfd58  07 00 a0 e1                                      mov r0, r7
007bfd5c  48 83 f1 eb                                      bl #0x420a84
007bfd60  00 b0 a0 e1                                      mov fp, r0
007bfd64  04 00 95 e5                                      ldr r0, [r5, #4]
007bfd68  00 30 95 e5                                      ldr r3, [r5]
007bfd6c  01 00 40 e2                                      sub r0, r0, #1
007bfd70  9a 30 20 e0                                      mla r0, sl, r0, r3
007bfd74  42 83 f1 eb                                      bl #0x420a84
007bfd78  d0 30 d0 e1                                      ldrsb r3, [r0]
007bfd7c  01 00 73 e3                                      cmn r3, #1
007bfd80  d0 30 db e1                                      ldrsb r3, [fp]
007bfd84  01 10 80 12                                      addne r1, r0, #1
007bfd88  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007bfd8c  01 00 73 e3                                      cmn r3, #1
007bfd90  01 00 8b 12                                      addne r0, fp, #1
007bfd94  0c 00 9b 05                                      ldreq r0, [fp, #0xc]
007bfd98  5f 39 ed eb                                      bl #0x30e31c
007bfd9c  a0 1f a0 e1                                      lsr r1, r0, #0x1f
007bfda0  07 00 a0 e1                                      mov r0, r7
007bfda4  21 5d ff eb                                      bl #0x797230
007bfda8  b7 f5 ff ea                                      b #0x7bd48c
007bfdac  74 04 9d e5                                      ldr r0, [sp, #0x474]
007bfdb0  70 14 9d e5                                      ldr r1, [sp, #0x470]
007bfdb4  5f 4b fe eb                                      bl #0x752b38
007bfdb8  06 fd ff ea                                      b #0x7bf1d8
007bfdbc  88 04 9d e5                                      ldr r0, [sp, #0x488]
007bfdc0  84 14 9d e5                                      ldr r1, [sp, #0x484]
007bfdc4  5b 4b fe eb                                      bl #0x752b38
007bfdc8  cc fc ff ea                                      b #0x7bf100
007bfdcc  e9 3f 8d e2                                      add r3, sp, #0x3a4
007bfdd0  03 20 a0 e1                                      mov r2, r3
007bfdd4  05 00 a0 e1                                      mov r0, r5
007bfdd8  0a 10 a0 e1                                      mov r1, sl
007bfddc  10 30 8d e5                                      str r3, [sp, #0x10]
007bfde0  a5 73 cd e5                                      strb r7, [sp, #0x3a5]
007bfde4  a4 73 cd e5                                      strb r7, [sp, #0x3a4]
007bfde8  2a 34 00 eb                                      bl #0x7cce98
007bfdec  00 00 50 e3                                      cmp r0, #0
007bfdf0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bfdf4  a2 fd ff 0a                                      beq #0x7bf484
007bfdf8  0a 10 a0 e1                                      mov r1, sl
007bfdfc  0b 20 a0 e1                                      mov r2, fp
007bfe00  05 00 a0 e1                                      mov r0, r5
007bfe04  18 34 00 eb                                      bl #0x7cce6c
007bfe08  04 00 95 e5                                      ldr r0, [r5, #4]
007bfe0c  00 20 95 e5                                      ldr r2, [r5]
007bfe10  0c c0 a0 e3                                      mov ip, #0xc
007bfe14  01 00 40 e2                                      sub r0, r0, #1
007bfe18  9c 20 20 e0                                      mla r0, ip, r0, r2
007bfe1c  01 10 a0 e3                                      mov r1, #1
007bfe20  02 5d ff eb                                      bl #0x797230
007bfe24  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bfe28  03 00 a0 e1                                      mov r0, r3
007bfe2c  bc 5c ff eb                                      bl #0x797124
007bfe30  cc f6 ff ea                                      b #0x7bd968
007bfe34  3c 00 8a e2                                      add r0, sl, #0x3c
007bfe38  0b 10 a0 e1                                      mov r1, fp
007bfe3c  10 80 f1 eb                                      bl #0x41fe84
007bfe40  40 b0 8a e5                                      str fp, [sl, #0x40]
007bfe44  90 f5 ff ea                                      b #0x7bd48c
007bfe48  04 00 95 e5                                      ldr r0, [r5, #4]
007bfe4c  00 30 95 e5                                      ldr r3, [r5]
007bfe50  34 10 9d e5                                      ldr r1, [sp, #0x34]
007bfe54  02 00 40 e2                                      sub r0, r0, #2
007bfe58  97 30 20 e0                                      mla r0, r7, r0, r3
007bfe5c  36 5e ff eb                                      bl #0x79773c
007bfe60  89 f5 ff ea                                      b #0x7bd48c
007bfe64  c8 34 9d e5                                      ldr r3, [sp, #0x4c8]
007bfe68  00 20 e0 e3                                      mvn r2, #0
007bfe6c  00 c0 a0 e3                                      mov ip, #0
007bfe70  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007bfe74  23 2c a0 e1                                      lsr r2, r3, #0x18
007bfe78  0c a0 a0 e3                                      mov sl, #0xc
007bfe7c  02 00 47 e2                                      sub r0, r7, #2
007bfe80  1c 20 c0 e7                                      bfi r2, ip, #0, #1
007bfe84  01 e0 a0 e3                                      mov lr, #1
007bfe88  4e 1e 8d e2                                      add r1, sp, #0x4e0
007bfe8c  9a b0 20 e0                                      mla r0, sl, r0, fp
007bfe90  b8 e4 cd e5                                      strb lr, [sp, #0x4b8]
007bfe94  b9 c4 cd e5                                      strb ip, [sp, #0x4b9]
007bfe98  c8 34 8d e5                                      str r3, [sp, #0x4c8]
007bfe9c  20 10 8d e5                                      str r1, [sp, #0x20]
007bfea0  cb 24 cd e5                                      strb r2, [sp, #0x4cb]
007bfea4  34 5f ff eb                                      bl #0x797b7c
007bfea8  4b 7e 8d e2                                      add r7, sp, #0x4b0
007bfeac  08 70 87 e2                                      add r7, r7, #8
007bfeb0  00 10 a0 e1                                      mov r1, r0
007bfeb4  07 00 a0 e1                                      mov r0, r7
007bfeb8  24 4c fe eb                                      bl #0x752f50
007bfebc  04 20 95 e5                                      ldr r2, [r5, #4]
007bfec0  00 30 95 e5                                      ldr r3, [r5]
007bfec4  20 10 9d e5                                      ldr r1, [sp, #0x20]
007bfec8  01 20 42 e2                                      sub r2, r2, #1
007bfecc  9a 32 20 e0                                      mla r0, sl, r2, r3
007bfed0  29 5f ff eb                                      bl #0x797b7c
007bfed4  00 10 a0 e1                                      mov r1, r0
007bfed8  07 00 a0 e1                                      mov r0, r7
007bfedc  8f 4c fe eb                                      bl #0x753120
007bfee0  04 00 95 e5                                      ldr r0, [r5, #4]
007bfee4  00 30 95 e5                                      ldr r3, [r5]
007bfee8  07 10 a0 e1                                      mov r1, r7
007bfeec  02 00 40 e2                                      sub r0, r0, #2
007bfef0  9a 30 20 e0                                      mla r0, sl, r0, r3
007bfef4  f7 5c ff eb                                      bl #0x7972d8
007bfef8  07 00 a0 e1                                      mov r0, r7
007bfefc  f5 7f f1 eb                                      bl #0x41fed8
007bff00  61 f5 ff ea                                      b #0x7bd48c
007bff04  2d 33 dd e5                                      ldrb r3, [sp, #0x32d]
007bff08  05 00 53 e3                                      cmp r3, #5
007bff0c  30 03 9d 05                                      ldreq r0, [sp, #0x330]
007bff10  f9 e9 ff eb                                      bl #0x7ba6fc
007bff14  00 b0 50 e2                                      subs fp, r0, #0
007bff18  36 01 00 0a                                      beq #0x7c03f8
007bff1c  05 00 a0 e1                                      mov r0, r5
007bff20  ad f0 ff eb                                      bl #0x7bc1dc
007bff24  00 10 a0 e3                                      mov r1, #0
007bff28  00 70 a0 e1                                      mov r7, r0
007bff2c  38 00 a0 e3                                      mov r0, #0x38
007bff30  1c 4b fe eb                                      bl #0x752ba8
007bff34  07 10 a0 e1                                      mov r1, r7
007bff38  00 a0 a0 e1                                      mov sl, r0
007bff3c  37 ae fe eb                                      bl #0x76b820
007bff40  00 00 5a e3                                      cmp sl, #0
007bff44  01 00 00 0a                                      beq #0x7bff50
007bff48  0a 00 a0 e1                                      mov r0, sl
007bff4c  44 67 fe eb                                      bl #0x759c64
007bff50  c5 2f 8d e2                                      add r2, sp, #0x314
007bff54  00 70 a0 e3                                      mov r7, #0
007bff58  02 00 a0 e1                                      mov r0, r2
007bff5c  0b 10 a0 e1                                      mov r1, fp
007bff60  14 73 cd e5                                      strb r7, [sp, #0x314]
007bff64  15 73 cd e5                                      strb r7, [sp, #0x315]
007bff68  14 20 8d e5                                      str r2, [sp, #0x14]
007bff6c  b7 5c ff eb                                      bl #0x797250
007bff70  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bff74  0a 00 a0 e1                                      mov r0, sl
007bff78  02 10 a0 e1                                      mov r1, r2
007bff7c  4b ae fe eb                                      bl #0x76b8b0
007bff80  14 20 9d e5                                      ldr r2, [sp, #0x14]
007bff84  00 30 a0 e1                                      mov r3, r0
007bff88  10 30 8d e5                                      str r3, [sp, #0x10]
007bff8c  02 00 a0 e1                                      mov r0, r2
007bff90  63 5c ff eb                                      bl #0x797124
007bff94  10 30 9d e5                                      ldr r3, [sp, #0x10]
007bff98  0a 10 a0 e1                                      mov r1, sl
007bff9c  20 00 83 e2                                      add r0, r3, #0x20
007bffa0  c2 3f 8d e2                                      add r3, sp, #0x308
007bffa4  3c 30 8d e5                                      str r3, [sp, #0x3c]
007bffa8  36 7b fe eb                                      bl #0x75ec88
007bffac  bf cf 8d e2                                      add ip, sp, #0x2fc
007bffb0  0b 10 a0 e1                                      mov r1, fp
007bffb4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007bffb8  44 c0 8d e5                                      str ip, [sp, #0x44]
007bffbc  09 73 cd e5                                      strb r7, [sp, #0x309]
007bffc0  08 73 cd e5                                      strb r7, [sp, #0x308]
007bffc4  a1 5c ff eb                                      bl #0x797250
007bffc8  0a 10 a0 e1                                      mov r1, sl
007bffcc  44 00 9d e5                                      ldr r0, [sp, #0x44]
007bffd0  f6 ea ff eb                                      bl #0x7babb0
007bffd4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007bffd8  2f 7e 8d e2                                      add r7, sp, #0x2f0
007bffdc  05 20 a0 e1                                      mov r2, r5
007bffe0  d0 30 de e1                                      ldrsb r3, [lr]
007bffe4  04 e0 95 e5                                      ldr lr, [r5, #4]
007bffe8  01 00 73 e3                                      cmn r3, #1
007bffec  20 10 9d 05                                      ldreq r1, [sp, #0x20]
007bfff0  20 00 9d 15                                      ldrne r0, [sp, #0x20]
007bfff4  01 e0 4e e2                                      sub lr, lr, #1
007bfff8  0c c0 91 05                                      ldreq ip, [r1, #0xc]
007bfffc  01 c0 80 12                                      addne ip, r0, #1
007c0000  44 30 9d e5                                      ldr r3, [sp, #0x44]
007c0004  08 c0 8d e5                                      str ip, [sp, #8]
007c0008  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007c000c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
007c0010  07 00 a0 e1                                      mov r0, r7
007c0014  00 50 8d e8                                      stm sp, {ip, lr}
007c0018  39 ea ff eb                                      bl #0x7ba904
007c001c  07 00 a0 e1                                      mov r0, r7
007c0020  3f 5c ff eb                                      bl #0x797124
007c0024  44 00 9d e5                                      ldr r0, [sp, #0x44]
007c0028  3d 5c ff eb                                      bl #0x797124
007c002c  b9 7f 8d e2                                      add r7, sp, #0x2e4
007c0030  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007c0034  3a 5c ff eb                                      bl #0x797124
007c0038  00 30 a0 e3                                      mov r3, #0
007c003c  0b 10 a0 e1                                      mov r1, fp
007c0040  07 00 a0 e1                                      mov r0, r7
007c0044  e5 32 cd e5                                      strb r3, [sp, #0x2e5]
007c0048  e4 32 cd e5                                      strb r3, [sp, #0x2e4]
007c004c  7f 5c ff eb                                      bl #0x797250
007c0050  07 10 a0 e1                                      mov r1, r7
007c0054  0a 00 a0 e1                                      mov r0, sl
007c0058  2a a3 fe eb                                      bl #0x768d08
007c005c  32 be 8d e2                                      add fp, sp, #0x320
007c0060  07 00 a0 e1                                      mov r0, r7
007c0064  2e 5c ff eb                                      bl #0x797124
007c0068  0b 00 a0 e1                                      mov r0, fp
007c006c  0a 10 a0 e1                                      mov r1, sl
007c0070  76 5c ff eb                                      bl #0x797250
007c0074  00 00 5a e3                                      cmp sl, #0
007c0078  d3 f9 ff 0a                                      beq #0x7be7cc
007c007c  0a 00 a0 e1                                      mov r0, sl
007c0080  6e 68 fe eb                                      bl #0x75a240
007c0084  d0 f9 ff ea                                      b #0x7be7cc
007c0088  07 00 a0 e1                                      mov r0, r7
007c008c  7c 82 f1 eb                                      bl #0x420a84
007c0090  00 a0 a0 e1                                      mov sl, r0
007c0094  04 00 95 e5                                      ldr r0, [r5, #4]
007c0098  00 30 95 e5                                      ldr r3, [r5]
007c009c  01 00 40 e2                                      sub r0, r0, #1
007c00a0  9b 30 20 e0                                      mla r0, fp, r0, r3
007c00a4  76 82 f1 eb                                      bl #0x420a84
007c00a8  d0 30 d0 e1                                      ldrsb r3, [r0]
007c00ac  01 00 73 e3                                      cmn r3, #1
007c00b0  d0 30 da e1                                      ldrsb r3, [sl]
007c00b4  01 10 80 12                                      addne r1, r0, #1
007c00b8  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007c00bc  01 00 73 e3                                      cmn r3, #1
007c00c0  01 00 8a 12                                      addne r0, sl, #1
007c00c4  0c 00 9a 05                                      ldreq r0, [sl, #0xc]
007c00c8  93 38 ed eb                                      bl #0x30e31c
007c00cc  00 00 50 e3                                      cmp r0, #0
007c00d0  00 10 a0 d3                                      movle r1, #0
007c00d4  01 10 a0 c3                                      movgt r1, #1
007c00d8  07 00 a0 e1                                      mov r0, r7
007c00dc  53 5c ff eb                                      bl #0x797230
007c00e0  e9 f4 ff ea                                      b #0x7bd48c
007c00e4  9c 04 9d e5                                      ldr r0, [sp, #0x49c]
007c00e8  98 14 9d e5                                      ldr r1, [sp, #0x498]
007c00ec  91 4a fe eb                                      bl #0x752b38
007c00f0  74 f7 ff ea                                      b #0x7bdec8
007c00f4  03 00 a0 e1                                      mov r0, r3
007c00f8  4e 1e 8d e2                                      add r1, sp, #0x4e0
007c00fc  10 30 8d e5                                      str r3, [sp, #0x10]
007c0100  9d 5e ff eb                                      bl #0x797b7c
007c0104  49 ae 8d e2                                      add sl, sp, #0x490
007c0108  00 10 a0 e1                                      mov r1, r0
007c010c  0a 00 a0 e1                                      mov r0, sl
007c0110  c5 4b fe eb                                      bl #0x75302c
007c0114  04 70 95 e5                                      ldr r7, [r5, #4]
007c0118  00 b0 95 e5                                      ldr fp, [r5]
007c011c  10 30 9d e5                                      ldr r3, [sp, #0x10]
007c0120  2f f7 ff ea                                      b #0x7bdde4
007c0124  07 00 a0 e1                                      mov r0, r7
007c0128  00 30 97 e5                                      ldr r3, [r7]
007c012c  20 10 9d e5                                      ldr r1, [sp, #0x20]
007c0130  34 20 9d e5                                      ldr r2, [sp, #0x34]
007c0134  0f e0 a0 e1                                      mov lr, pc
007c0138  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007c013c  01 70 a0 e3                                      mov r7, #1
007c0140  f0 fd ff ea                                      b #0x7bf908
007c0144  04 30 97 e5                                      ldr r3, [r7, #4]
007c0148  4f 2e 8d e2                                      add r2, sp, #0x4f0
007c014c  08 20 82 e2                                      add r2, r2, #8
007c0150  f8 33 8d e5                                      str r3, [sp, #0x3f8]
007c0154  08 30 97 e5                                      ldr r3, [r7, #8]
007c0158  fc 33 8d e5                                      str r3, [sp, #0x3fc]
007c015c  ff 30 e0 e3                                      mvn r3, #0xff
007c0160  d3 00 82 e1                                      ldrd r0, r1, [r2, r3]
007c0164  00 20 a0 e1                                      mov r2, r0
007c0168  01 30 a0 e1                                      mov r3, r1
007c016c  52 38 ed eb                                      bl #0x30e2bc
007c0170  00 00 50 e3                                      cmp r0, #0
007c0174  c3 fd ff 1a                                      bne #0x7bf888
007c0178  00 30 9a e5                                      ldr r3, [sl]
007c017c  07 00 a0 e1                                      mov r0, r7
007c0180  24 70 93 e5                                      ldr r7, [r3, #0x24]
007c0184  32 5e ff eb                                      bl #0x797a54
007c0188  25 3a ed eb                                      bl #0x30ea24
007c018c  04 20 95 e5                                      ldr r2, [r5, #4]
007c0190  00 30 95 e5                                      ldr r3, [r5]
007c0194  00 10 a0 e1                                      mov r1, r0
007c0198  01 20 42 e2                                      sub r2, r2, #1
007c019c  0a 00 a0 e1                                      mov r0, sl
007c01a0  9b 32 22 e0                                      mla r2, fp, r2, r3
007c01a4  37 ff 2f e1                                      blx r7
007c01a8  04 70 95 e5                                      ldr r7, [r5, #4]
007c01ac  0e f9 ff ea                                      b #0x7be5ec
007c01b0  01 00 a0 e1                                      mov r0, r1
007c01b4  32 82 f1 eb                                      bl #0x420a84
007c01b8  d0 30 d0 e1                                      ldrsb r3, [r0]
007c01bc  0e bd 8d e2                                      add fp, sp, #0x380
007c01c0  00 c0 e0 e3                                      mvn ip, #0
007c01c4  01 00 73 e3                                      cmn r3, #1
007c01c8  0c 20 90 05                                      ldreq r2, [r0, #0xc]
007c01cc  01 10 80 12                                      addne r1, r0, #1
007c01d0  24 10 8d 15                                      strne r1, [sp, #0x24]
007c01d4  24 20 8d 05                                      streq r2, [sp, #0x24]
007c01d8  06 30 a0 e1                                      mov r3, r6
007c01dc  00 20 a0 e1                                      mov r2, r0
007c01e0  05 10 a0 e1                                      mov r1, r5
007c01e4  f8 c3 8d e5                                      str ip, [sp, #0x3f8]
007c01e8  00 70 a0 e1                                      mov r7, r0
007c01ec  fe cf 8d e2                                      add ip, sp, #0x3f8
007c01f0  0b 00 a0 e1                                      mov r0, fp
007c01f4  e6 af 8d e2                                      add sl, sp, #0x398
007c01f8  00 c0 8d e5                                      str ip, [sp]
007c01fc  c7 37 00 eb                                      bl #0x7ce120
007c0200  0b 10 a0 e1                                      mov r1, fp
007c0204  0a 00 a0 e1                                      mov r0, sl
007c0208  4b 5d ff eb                                      bl #0x79773c
007c020c  0b 00 a0 e1                                      mov r0, fp
007c0210  c3 5b ff eb                                      bl #0x797124
007c0214  f8 33 9d e5                                      ldr r3, [sp, #0x3f8]
007c0218  01 00 73 e3                                      cmn r3, #1
007c021c  0c 00 00 0a                                      beq #0x7c0254
007c0220  05 00 a0 e1                                      mov r0, r5
007c0224  26 33 00 eb                                      bl #0x7ccec4
007c0228  00 10 a0 e1                                      mov r1, r0
007c022c  f5 0f 8d e2                                      add r0, sp, #0x3d4
007c0230  d5 53 fe eb                                      bl #0x75518c
007c0234  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
007c0238  f8 23 9d e5                                      ldr r2, [sp, #0x3f8]
007c023c  82 01 93 e7                                      ldr r0, [r3, r2, lsl #3]
007c0240  13 e9 ff eb                                      bl #0x7ba694
007c0244  00 10 50 e2                                      subs r1, r0, #0
007c0248  01 00 00 0a                                      beq #0x7c0254
007c024c  05 00 a0 e1                                      mov r0, r5
007c0250  1d 33 00 eb                                      bl #0x7ccecc
007c0254  99 33 dd e5                                      ldrb r3, [sp, #0x399]
007c0258  05 00 53 e3                                      cmp r3, #5
007c025c  ec 00 00 0a                                      beq #0x7c0614
007c0260  0a 00 a0 e1                                      mov r0, sl
007c0264  45 5a ff eb                                      bl #0x796b80
007c0268  00 00 50 e3                                      cmp r0, #0
007c026c  e1 f5 ff 1a                                      bne #0x7bd9f8
007c0270  d0 30 d7 e1                                      ldrsb r3, [r7]
007c0274  ec 0b 1f e5                                      ldr r0, [pc, #-0xbec]
007c0278  01 00 73 e3                                      cmn r3, #1
007c027c  01 10 87 12                                      addne r1, r7, #1
007c0280  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007c0284  00 00 8f e0                                      add r0, pc, r0
007c0288  bd 83 fe eb                                      bl #0x761184
007c028c  d9 f5 ff ea                                      b #0x7bd9f8
007c0290  23 ee 8d e2                                      add lr, sp, #0x230
007c0294  0b 10 a0 e1                                      mov r1, fp
007c0298  07 00 a0 e1                                      mov r0, r7
007c029c  20 e0 8d e5                                      str lr, [sp, #0x20]
007c02a0  82 ad fe eb                                      bl #0x76b8b0
007c02a4  07 10 a0 e1                                      mov r1, r7
007c02a8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007c02ac  3f ea ff eb                                      bl #0x7babb0
007c02b0  90 04 dd e5                                      ldrb r0, [sp, #0x490]
007c02b4  04 e0 95 e5                                      ldr lr, [r5, #4]
007c02b8  05 20 a0 e1                                      mov r2, r5
007c02bc  70 30 af e6                                      sxtb r3, r0
007c02c0  01 00 73 e3                                      cmn r3, #1
007c02c4  9c c4 9d 05                                      ldreq ip, [sp, #0x49c]
007c02c8  01 c0 8a 12                                      addne ip, sl, #1
007c02cc  89 af 8d e2                                      add sl, sp, #0x224
007c02d0  08 c0 8d e5                                      str ip, [sp, #8]
007c02d4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007c02d8  04 e0 4e e2                                      sub lr, lr, #4
007c02dc  20 30 9d e5                                      ldr r3, [sp, #0x20]
007c02e0  0a 00 a0 e1                                      mov r0, sl
007c02e4  0b 10 a0 e1                                      mov r1, fp
007c02e8  9e 7f 8d e2                                      add r7, sp, #0x278
007c02ec  00 50 8d e8                                      stm sp, {ip, lr}
007c02f0  83 e9 ff eb                                      bl #0x7ba904
007c02f4  0a 10 a0 e1                                      mov r1, sl
007c02f8  07 00 a0 e1                                      mov r0, r7
007c02fc  0e 5d ff eb                                      bl #0x79773c
007c0300  0a 00 a0 e1                                      mov r0, sl
007c0304  86 5b ff eb                                      bl #0x797124
007c0308  20 00 9d e5                                      ldr r0, [sp, #0x20]
007c030c  84 5b ff eb                                      bl #0x797124
007c0310  90 fc ff ea                                      b #0x7bf558
007c0314  20 00 87 e2                                      add r0, r7, #0x20
007c0318  0b 10 a0 e1                                      mov r1, fp
007c031c  d8 7e f1 eb                                      bl #0x41fe84
007c0320  24 b0 87 e5                                      str fp, [r7, #0x24]
007c0324  04 20 95 e5                                      ldr r2, [r5, #4]
007c0328  00 30 95 e5                                      ldr r3, [r5]
007c032c  0c 10 a0 e3                                      mov r1, #0xc
007c0330  02 20 42 e2                                      sub r2, r2, #2
007c0334  91 32 23 e0                                      mla r3, r1, r2, r3
007c0338  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
007c033c  05 00 52 e3                                      cmp r2, #5
007c0340  00 10 a0 13                                      movne r1, #0
007c0344  04 10 93 05                                      ldreq r1, [r3, #4]
007c0348  90 e4 dd e5                                      ldrb lr, [sp, #0x490]
007c034c  c0 0c 1f e5                                      ldr r0, [pc, #-0xcc0]
007c0350  9e 7f 8d e2                                      add r7, sp, #0x278
007c0354  7e 30 af e6                                      sxtb r3, lr
007c0358  01 00 73 e3                                      cmn r3, #1
007c035c  01 20 8a 12                                      addne r2, sl, #1
007c0360  9c 24 9d 05                                      ldreq r2, [sp, #0x49c]
007c0364  00 00 8f e0                                      add r0, pc, r0
007c0368  85 83 fe eb                                      bl #0x761184
007c036c  c2 f6 ff ea                                      b #0x7bde7c
007c0370  04 20 95 e5                                      ldr r2, [r5, #4]
007c0374  00 c0 95 e5                                      ldr ip, [r5]
007c0378  95 bf 8d e2                                      add fp, sp, #0x254
007c037c  02 20 42 e2                                      sub r2, r2, #2
007c0380  07 10 a0 e1                                      mov r1, r7
007c0384  0c 30 a0 e3                                      mov r3, #0xc
007c0388  0b 00 a0 e1                                      mov r0, fp
007c038c  93 c2 27 e0                                      mla r7, r3, r2, ip
007c0390  06 ea ff eb                                      bl #0x7babb0
007c0394  90 04 dd e5                                      ldrb r0, [sp, #0x490]
007c0398  04 e0 95 e5                                      ldr lr, [r5, #4]
007c039c  05 20 a0 e1                                      mov r2, r5
007c03a0  70 30 af e6                                      sxtb r3, r0
007c03a4  01 00 73 e3                                      cmn r3, #1
007c03a8  9c c4 9d 05                                      ldreq ip, [sp, #0x49c]
007c03ac  01 c0 8a 12                                      addne ip, sl, #1
007c03b0  92 af 8d e2                                      add sl, sp, #0x248
007c03b4  08 c0 8d e5                                      str ip, [sp, #8]
007c03b8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007c03bc  04 e0 4e e2                                      sub lr, lr, #4
007c03c0  0b 30 a0 e1                                      mov r3, fp
007c03c4  07 10 a0 e1                                      mov r1, r7
007c03c8  0a 00 a0 e1                                      mov r0, sl
007c03cc  9e 7f 8d e2                                      add r7, sp, #0x278
007c03d0  00 50 8d e8                                      stm sp, {ip, lr}
007c03d4  4a e9 ff eb                                      bl #0x7ba904
007c03d8  0a 10 a0 e1                                      mov r1, sl
007c03dc  07 00 a0 e1                                      mov r0, r7
007c03e0  d5 5c ff eb                                      bl #0x79773c
007c03e4  0a 00 a0 e1                                      mov r0, sl
007c03e8  4d 5b ff eb                                      bl #0x797124
007c03ec  0b 00 a0 e1                                      mov r0, fp
007c03f0  4b 5b ff eb                                      bl #0x797124
007c03f4  a0 f6 ff ea                                      b #0x7bde7c
007c03f8  04 30 95 e5                                      ldr r3, [r5, #4]
007c03fc  0c a0 a0 e3                                      mov sl, #0xc
007c0400  fc b0 8d e5                                      str fp, [sp, #0xfc]
007c0404  01 30 43 e2                                      sub r3, r3, #1
007c0408  9a 03 0a e0                                      mul sl, sl, r3
007c040c  00 b1 8d e5                                      str fp, [sp, #0x100]
007c0410  04 b1 8d e5                                      str fp, [sp, #0x104]
007c0414  08 b1 cd e5                                      strb fp, [sp, #0x108]
007c0418  fc 70 8d e2                                      add r7, sp, #0xfc
007c041c  05 00 00 ea                                      b #0x7c0438
007c0420  00 10 95 e5                                      ldr r1, [r5]
007c0424  07 00 a0 e1                                      mov r0, r7
007c0428  01 b0 8b e2                                      add fp, fp, #1
007c042c  0a 10 81 e0                                      add r1, r1, sl
007c0430  18 a3 fe eb                                      bl #0x769098
007c0434  0c a0 4a e2                                      sub sl, sl, #0xc
007c0438  24 00 9d e5                                      ldr r0, [sp, #0x24]
007c043c  00 00 5b e1                                      cmp fp, r0
007c0440  f6 ff ff ba                                      blt #0x7c0420
007c0444  05 00 a0 e1                                      mov r0, r5
007c0448  63 ef ff eb                                      bl #0x7bc1dc
007c044c  00 a0 a0 e1                                      mov sl, r0
007c0450  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c0454  8a 81 f1 eb                                      bl #0x420a84
007c0458  07 20 a0 e1                                      mov r2, r7
007c045c  00 10 a0 e1                                      mov r1, r0
007c0460  0a 00 a0 e1                                      mov r0, sl
007c0464  1e ed ff eb                                      bl #0x7bb8e4
007c0468  00 10 50 e2                                      subs r1, r0, #0
007c046c  2e 00 00 0a                                      beq #0x7c052c
007c0470  32 be 8d e2                                      add fp, sp, #0x320
007c0474  0b 00 a0 e1                                      mov r0, fp
007c0478  74 5b ff eb                                      bl #0x797250
007c047c  07 00 a0 e1                                      mov r0, r7
007c0480  00 10 a0 e3                                      mov r1, #0
007c0484  c6 f9 fe eb                                      bl #0x77eba4
007c0488  07 00 a0 e1                                      mov r0, r7
007c048c  00 10 a0 e3                                      mov r1, #0
007c0490  dd 67 fe eb                                      bl #0x75a40c
007c0494  cc f8 ff ea                                      b #0x7be7cc
007c0498  04 10 95 e5                                      ldr r1, [r5, #4]
007c049c  00 30 95 e5                                      ldr r3, [r5]
007c04a0  0a 00 a0 e1                                      mov r0, sl
007c04a4  02 10 41 e2                                      sub r1, r1, #2
007c04a8  97 31 21 e0                                      mla r1, r7, r1, r3
007c04ac  0a 20 a0 e1                                      mov r2, sl
007c04b0  a3 59 ff eb                                      bl #0x796b44
007c04b4  3a f8 ff ea                                      b #0x7be5a4
007c04b8  04 20 95 e5                                      ldr r2, [r5, #4]
007c04bc  00 30 95 e5                                      ldr r3, [r5]
007c04c0  4e ee 8d e2                                      add lr, sp, #0x4e0
007c04c4  03 20 42 e2                                      sub r2, r2, #3
007c04c8  0c 00 a0 e3                                      mov r0, #0xc
007c04cc  0e 10 a0 e1                                      mov r1, lr
007c04d0  90 32 20 e0                                      mla r0, r0, r2, r3
007c04d4  20 e0 8d e5                                      str lr, [sp, #0x20]
007c04d8  a7 5d ff eb                                      bl #0x797b7c
007c04dc  78 a0 8d e2                                      add sl, sp, #0x78
007c04e0  0c a0 4a e2                                      sub sl, sl, #0xc
007c04e4  00 20 a0 e1                                      mov r2, r0
007c04e8  05 10 a0 e1                                      mov r1, r5
007c04ec  0a 00 a0 e1                                      mov r0, sl
007c04f0  06 30 a0 e1                                      mov r3, r6
007c04f4  00 70 8d e5                                      str r7, [sp]
007c04f8  08 37 00 eb                                      bl #0x7ce120
007c04fc  6d 30 dd e5                                      ldrb r3, [sp, #0x6d]
007c0500  05 00 53 e3                                      cmp r3, #5
007c0504  07 00 a0 11                                      movne r0, r7
007c0508  70 00 9d 05                                      ldreq r0, [sp, #0x70]
007c050c  60 e8 ff eb                                      bl #0x7ba694
007c0510  00 70 a0 e1                                      mov r7, r0
007c0514  0a 00 a0 e1                                      mov r0, sl
007c0518  01 5b ff eb                                      bl #0x797124
007c051c  00 00 57 e3                                      cmp r7, #0
007c0520  35 f4 ff 0a                                      beq #0x7bd5fc
007c0524  1e f4 ff ea                                      b #0x7bd5a4
007c0528  78 37 ed eb                                      bl #0x30e310
007c052c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c0530  53 81 f1 eb                                      bl #0x420a84
007c0534  d0 30 d0 e1                                      ldrsb r3, [r0]
007c0538  32 be 8d e2                                      add fp, sp, #0x320
007c053c  01 00 73 e3                                      cmn r3, #1
007c0540  01 10 80 12                                      addne r1, r0, #1
007c0544  0c 10 90 05                                      ldreq r1, [r0, #0xc]
007c0548  b8 0e 1f e5                                      ldr r0, [pc, #-0xeb8]
007c054c  00 00 8f e0                                      add r0, pc, r0
007c0550  0b 83 fe eb                                      bl #0x761184
007c0554  c8 ff ff ea                                      b #0x7c047c
007c0558  d1 21 dd e5                                      ldrb r2, [sp, #0x1d1]
007c055c  05 00 52 e3                                      cmp r2, #5
007c0560  03 00 a0 11                                      movne r0, r3
007c0564  d4 01 9d 05                                      ldreq r0, [sp, #0x1d4]
007c0568  56 e8 ff eb                                      bl #0x7ba6c8
007c056c  00 10 50 e2                                      subs r1, r0, #0
007c0570  c7 fd ff 0a                                      beq #0x7bfc94
007c0574  65 af 8d e2                                      add sl, sp, #0x194
007c0578  0a 00 a0 e1                                      mov r0, sl
007c057c  8b e9 ff eb                                      bl #0x7babb0
007c0580  ec ee 1f e5                                      ldr lr, [pc, #-0xeec]
007c0584  04 c0 95 e5                                      ldr ip, [r5, #4]
007c0588  62 bf 8d e2                                      add fp, sp, #0x188
007c058c  0e e0 8f e0                                      add lr, pc, lr
007c0590  08 e0 8d e5                                      str lr, [sp, #8]
007c0594  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007c0598  0a 10 a0 e1                                      mov r1, sl
007c059c  01 c0 4c e2                                      sub ip, ip, #1
007c05a0  05 20 a0 e1                                      mov r2, r5
007c05a4  0b 00 a0 e1                                      mov r0, fp
007c05a8  30 30 9d e5                                      ldr r3, [sp, #0x30]
007c05ac  04 c0 8d e5                                      str ip, [sp, #4]
007c05b0  00 e0 8d e5                                      str lr, [sp]
007c05b4  d2 e8 ff eb                                      bl #0x7ba904
007c05b8  89 31 dd e5                                      ldrb r3, [sp, #0x189]
007c05bc  f5 0f 8d e2                                      add r0, sp, #0x3d4
007c05c0  05 00 53 e3                                      cmp r3, #5
007c05c4  00 10 a0 13                                      movne r1, #0
007c05c8  8c 11 9d 05                                      ldreq r1, [sp, #0x18c]
007c05cc  bd a1 fe eb                                      bl #0x768cc8
007c05d0  0b 00 a0 e1                                      mov r0, fp
007c05d4  d2 5a ff eb                                      bl #0x797124
007c05d8  0a 00 a0 e1                                      mov r0, sl
007c05dc  d0 5a ff eb                                      bl #0x797124
007c05e0  ab fd ff ea                                      b #0x7bfc94
007c05e4  9c 14 9d e5                                      ldr r1, [sp, #0x49c]
007c05e8  e4 fc ff ea                                      b #0x7bf980
007c05ec  04 00 95 e5                                      ldr r0, [r5, #4]
007c05f0  00 30 95 e5                                      ldr r3, [r5]
007c05f4  01 00 40 e2                                      sub r0, r0, #1
007c05f8  97 30 20 e0                                      mla r0, r7, r0, r3
007c05fc  6c 5a ff eb                                      bl #0x796fb4
007c0600  00 10 a0 e1                                      mov r1, r0
007c0604  6c 0f 1f e5                                      ldr r0, [pc, #-0xf6c]
007c0608  00 00 8f e0                                      add r0, pc, r0
007c060c  dc 82 fe eb                                      bl #0x761184
007c0610  14 f0 ff ea                                      b #0x7bc668
007c0614  9c 33 9d e5                                      ldr r3, [sp, #0x39c]
007c0618  00 00 53 e3                                      cmp r3, #0
007c061c  18 30 8d e5                                      str r3, [sp, #0x18]
007c0620  0e ff ff 0a                                      beq #0x7c0260
007c0624  03 00 a0 e1                                      mov r0, r3
007c0628  0a 10 a0 e1                                      mov r1, sl
007c062c  b7 a1 fe eb                                      bl #0x768d10
007c0630  00 00 50 e3                                      cmp r0, #0
007c0634  09 ff ff 0a                                      beq #0x7c0260
007c0638  d0 30 d7 e1                                      ldrsb r3, [r7]
007c063c  a0 1f 1f e5                                      ldr r1, [pc, #-0xfa0]
007c0640  01 00 73 e3                                      cmn r3, #1
007c0644  01 00 87 12                                      addne r0, r7, #1
007c0648  0c 00 97 05                                      ldreq r0, [r7, #0xc]
007c064c  01 10 8f e0                                      add r1, pc, r1
007c0650  31 37 ed eb                                      bl #0x30e31c
007c0654  00 00 50 e3                                      cmp r0, #0
007c0658  00 ff ff 1a                                      bne #0x7c0260
007c065c  dd bf 8d e2                                      add fp, sp, #0x374
007c0660  18 10 9d e5                                      ldr r1, [sp, #0x18]
007c0664  0b 00 a0 e1                                      mov r0, fp
007c0668  50 e9 ff eb                                      bl #0x7babb0
007c066c  0b 10 a0 e1                                      mov r1, fp
007c0670  20 00 9d e5                                      ldr r0, [sp, #0x20]
007c0674  30 5c ff eb                                      bl #0x79773c
007c0678  0b 00 a0 e1                                      mov r0, fp
007c067c  a8 5a ff eb                                      bl #0x797124
007c0680  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c0684  0a 10 a0 e1                                      mov r1, sl
007c0688  88 ac fe eb                                      bl #0x76b8b0
007c068c  f3 fe ff ea                                      b #0x7c0260

; FUNCTION 0x007c0690, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::action_buffer
; alias: _ZN7gameswf13action_buffer7executeEPNS_14as_environmentE
; demangled: gameswf::action_buffer::execute(gameswf::as_environment*)
; decoder-mode: arm
007c0690  30 40 2d e9                                      push {r4, r5, lr}
007c0694  00 40 a0 e3                                      mov r4, #0
007c0698  24 d0 4d e2                                      sub sp, sp, #0x24
007c069c  10 40 8d e5                                      str r4, [sp, #0x10]
007c06a0  14 40 8d e5                                      str r4, [sp, #0x14]
007c06a4  18 40 8d e5                                      str r4, [sp, #0x18]
007c06a8  1c 40 cd e5                                      strb r4, [sp, #0x1c]
007c06ac  00 30 90 e5                                      ldr r3, [r0]
007c06b0  10 50 8d e2                                      add r5, sp, #0x10
007c06b4  04 20 a0 e1                                      mov r2, r4
007c06b8  00 30 93 e5                                      ldr r3, [r3]
007c06bc  30 00 8d e8                                      stm sp, {r4, r5}
007c06c0  08 40 8d e5                                      str r4, [sp, #8]
007c06c4  d9 ee ff eb                                      bl #0x7bc230
007c06c8  05 00 a0 e1                                      mov r0, r5
007c06cc  04 10 a0 e1                                      mov r1, r4
007c06d0  f5 e8 ff eb                                      bl #0x7baaac
007c06d4  05 00 a0 e1                                      mov r0, r5
007c06d8  04 10 a0 e1                                      mov r1, r4
007c06dc  0c 67 fe eb                                      bl #0x75a314
007c06e0  24 d0 8d e2                                      add sp, sp, #0x24
007c06e4  30 80 bd e8                                      pop {r4, r5, pc}
