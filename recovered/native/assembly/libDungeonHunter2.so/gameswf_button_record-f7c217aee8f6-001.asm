; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c708c, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::button_record
; alias: _ZN7gameswf13button_recordC1ERKS0_
; demangled: gameswf::button_record::button_record(gameswf::button_record const&)
; decoder-mode: arm
007c708c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c7090  00 30 d1 e5                                      ldrb r3, [r1]
007c7094  14 e0 80 e2                                      add lr, r0, #0x14
007c7098  14 40 81 e2                                      add r4, r1, #0x14
007c709c  00 30 c0 e5                                      strb r3, [r0]
007c70a0  01 30 d1 e5                                      ldrb r3, [r1, #1]
007c70a4  00 60 a0 e1                                      mov r6, r0
007c70a8  01 70 a0 e1                                      mov r7, r1
007c70ac  01 30 c0 e5                                      strb r3, [r0, #1]
007c70b0  02 30 d1 e5                                      ldrb r3, [r1, #2]
007c70b4  2c c0 80 e2                                      add ip, r0, #0x2c
007c70b8  2c 80 81 e2                                      add r8, r1, #0x2c
007c70bc  02 30 c0 e5                                      strb r3, [r0, #2]
007c70c0  03 30 d1 e5                                      ldrb r3, [r1, #3]
007c70c4  00 50 a0 e3                                      mov r5, #0
007c70c8  03 30 c0 e5                                      strb r3, [r0, #3]
007c70cc  04 30 d1 e5                                      ldrb r3, [r1, #4]
007c70d0  04 30 c0 e5                                      strb r3, [r0, #4]
007c70d4  05 30 d1 e5                                      ldrb r3, [r1, #5]
007c70d8  05 30 c0 e5                                      strb r3, [r0, #5]
007c70dc  08 30 91 e5                                      ldr r3, [r1, #8]
007c70e0  08 30 80 e5                                      str r3, [r0, #8]
007c70e4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007c70e8  0c 30 80 e5                                      str r3, [r0, #0xc]
007c70ec  10 30 91 e5                                      ldr r3, [r1, #0x10]
007c70f0  10 30 80 e5                                      str r3, [r0, #0x10]
007c70f4  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007c70f8  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
007c70fc  03 00 94 e8                                      ldm r4, {r0, r1}
007c7100  03 00 8e e8                                      stm lr, {r0, r1}
007c7104  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
007c7108  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007c710c  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
007c7110  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007c7114  4c 30 97 e5                                      ldr r3, [r7, #0x4c]
007c7118  50 50 86 e5                                      str r5, [r6, #0x50]
007c711c  54 50 86 e5                                      str r5, [r6, #0x54]
007c7120  4c 30 86 e5                                      str r3, [r6, #0x4c]
007c7124  58 50 86 e5                                      str r5, [r6, #0x58]
007c7128  5c 50 c6 e5                                      strb r5, [r6, #0x5c]
007c712c  50 00 86 e2                                      add r0, r6, #0x50
007c7130  54 10 97 e5                                      ldr r1, [r7, #0x54]
007c7134  67 3a fe eb                                      bl #0x755ad8
007c7138  54 30 96 e5                                      ldr r3, [r6, #0x54]
007c713c  05 00 53 e1                                      cmp r3, r5
007c7140  0f 00 00 da                                      ble #0x7c7184
007c7144  05 80 a0 e1                                      mov r8, r5
007c7148  50 c0 96 e5                                      ldr ip, [r6, #0x50]
007c714c  50 40 97 e5                                      ldr r4, [r7, #0x50]
007c7150  01 80 88 e2                                      add r8, r8, #1
007c7154  05 c0 8c e0                                      add ip, ip, r5
007c7158  05 40 84 e0                                      add r4, r4, r5
007c715c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007c7160  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007c7164  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
007c7168  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007c716c  07 00 94 e8                                      ldm r4, {r0, r1, r2}
007c7170  07 00 8c e8                                      stm ip, {r0, r1, r2}
007c7174  54 30 96 e5                                      ldr r3, [r6, #0x54]
007c7178  2c 50 85 e2                                      add r5, r5, #0x2c
007c717c  03 00 58 e1                                      cmp r8, r3
007c7180  f0 ff ff ba                                      blt #0x7c7148
007c7184  60 30 97 e5                                      ldr r3, [r7, #0x60]
007c7188  06 00 a0 e1                                      mov r0, r6
007c718c  60 30 86 e5                                      str r3, [r6, #0x60]
007c7190  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007c753c, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::button_record
; alias: _ZN7gameswf13button_record4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::button_record::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
007c753c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c7540  00 40 a0 e1                                      mov r4, r0
007c7544  01 00 a0 e1                                      mov r0, r1
007c7548  01 50 a0 e1                                      mov r5, r1
007c754c  02 60 a0 e1                                      mov r6, r2
007c7550  74 f1 fe eb                                      bl #0x783b28
007c7554  00 00 50 e3                                      cmp r0, #0
007c7558  00 00 00 1a                                      bne #0x7c7560
007c755c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c7560  d0 e2 e0 e7                                      ubfx lr, r0, #5, #1
007c7564  50 c2 e0 e7                                      ubfx ip, r0, #4, #1
007c7568  d0 11 e0 e7                                      ubfx r1, r0, #3, #1
007c756c  50 21 e0 e7                                      ubfx r2, r0, #2, #1
007c7570  01 30 00 e2                                      and r3, r0, #1
007c7574  d0 00 e0 e7                                      ubfx r0, r0, #1, #1
007c7578  00 e0 c4 e5                                      strb lr, [r4]
007c757c  01 c0 c4 e5                                      strb ip, [r4, #1]
007c7580  02 10 c4 e5                                      strb r1, [r4, #2]
007c7584  03 20 c4 e5                                      strb r2, [r4, #3]
007c7588  04 00 c4 e5                                      strb r0, [r4, #4]
007c758c  05 30 c4 e5                                      strb r3, [r4, #5]
007c7590  05 00 a0 e1                                      mov r0, r5
007c7594  9e f1 fe eb                                      bl #0x783c14
007c7598  00 30 a0 e3                                      mov r3, #0
007c759c  08 00 84 e5                                      str r0, [r4, #8]
007c75a0  0c 30 84 e5                                      str r3, [r4, #0xc]
007c75a4  05 00 a0 e1                                      mov r0, r5
007c75a8  99 f1 fe eb                                      bl #0x783c14
007c75ac  05 10 a0 e1                                      mov r1, r5
007c75b0  10 00 84 e5                                      str r0, [r4, #0x10]
007c75b4  14 00 84 e2                                      add r0, r4, #0x14
007c75b8  05 3c ff eb                                      bl #0x7965d4
007c75bc  22 00 56 e3                                      cmp r6, #0x22
007c75c0  01 00 00 0a                                      beq #0x7c75cc
007c75c4  01 00 a0 e3                                      mov r0, #1
007c75c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c75cc  2c 00 84 e2                                      add r0, r4, #0x2c
007c75d0  05 10 a0 e1                                      mov r1, r5
007c75d4  a2 3a ff eb                                      bl #0x796064
007c75d8  01 30 d4 e5                                      ldrb r3, [r4, #1]
007c75dc  00 00 53 e3                                      cmp r3, #0
007c75e0  07 00 00 1a                                      bne #0x7c7604
007c75e4  00 30 d4 e5                                      ldrb r3, [r4]
007c75e8  00 00 53 e3                                      cmp r3, #0
007c75ec  f4 ff ff 0a                                      beq #0x7c75c4
007c75f0  05 00 a0 e1                                      mov r0, r5
007c75f4  4b f1 fe eb                                      bl #0x783b28
007c75f8  60 00 84 e5                                      str r0, [r4, #0x60]
007c75fc  01 00 a0 e3                                      mov r0, #1
007c7600  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c7604  05 00 a0 e1                                      mov r0, r5
007c7608  4c 10 84 e2                                      add r1, r4, #0x4c
007c760c  a5 45 fe eb                                      bl #0x758ca8
007c7610  f3 ff ff ea                                      b #0x7c75e4
