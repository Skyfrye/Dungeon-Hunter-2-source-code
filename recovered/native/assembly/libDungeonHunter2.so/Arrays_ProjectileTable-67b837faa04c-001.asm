; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5764, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ProjectileTable
; alias: _ZN6Arrays15ProjectileTable13finalizeNamesEv
; demangled: Arrays::ProjectileTable::finalizeNames()
; decoder-mode: arm
004a5764  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5768  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a576c  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5770  05 50 8f e0                                      add r5, pc, r5
004a5774  06 30 95 e7                                      ldr r3, [r5, r6]
004a5778  00 30 93 e5                                      ldr r3, [r3]
004a577c  00 00 53 e3                                      cmp r3, #0
004a5780  1a 00 00 0a                                      beq #0x4a57f0
004a5784  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5788  07 20 95 e7                                      ldr r2, [r5, r7]
004a578c  00 20 92 e5                                      ldr r2, [r2]
004a5790  00 00 52 e3                                      cmp r2, #0
004a5794  10 00 00 0a                                      beq #0x4a57dc
004a5798  00 40 a0 e3                                      mov r4, #0
004a579c  01 00 00 ea                                      b #0x4a57a8
004a57a0  06 30 95 e7                                      ldr r3, [r5, r6]
004a57a4  00 30 93 e5                                      ldr r3, [r3]
004a57a8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a57ac  01 40 84 e2                                      add r4, r4, #1
004a57b0  00 00 50 e3                                      cmp r0, #0
004a57b4  02 00 00 0a                                      beq #0x4a57c4
004a57b8  20 ab f9 eb                                      bl #0x310440
004a57bc  06 30 95 e7                                      ldr r3, [r5, r6]
004a57c0  00 30 93 e5                                      ldr r3, [r3]
004a57c4  07 20 95 e7                                      ldr r2, [r5, r7]
004a57c8  00 20 92 e5                                      ldr r2, [r2]
004a57cc  04 00 52 e1                                      cmp r2, r4
004a57d0  f2 ff ff 8a                                      bhi #0x4a57a0
004a57d4  00 00 53 e3                                      cmp r3, #0
004a57d8  01 00 00 0a                                      beq #0x4a57e4
004a57dc  03 00 a0 e1                                      mov r0, r3
004a57e0  16 ab f9 eb                                      bl #0x310440
004a57e4  06 30 95 e7                                      ldr r3, [r5, r6]
004a57e8  00 20 a0 e3                                      mov r2, #0
004a57ec  00 20 83 e5                                      str r2, [r3]
004a57f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a57f4  20 f3 4e 00 78 2a 00 00 70 09 00 00              .byte 0x20, 0xf3, 0x4e, 0x00, 0x78, 0x2a, 0x00, 0x00, 0x70, 0x09, 0x00, 0x00

; FUNCTION 0x004a5800, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ProjectileTable
; alias: _ZN6Arrays15ProjectileTable8finalizeEv
; demangled: Arrays::ProjectileTable::finalize()
; decoder-mode: arm
004a5800  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5804  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5808  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a580c  05 50 8f e0                                      add r5, pc, r5
004a5810  07 30 95 e7                                      ldr r3, [r5, r7]
004a5814  00 30 93 e5                                      ldr r3, [r3]
004a5818  00 00 53 e3                                      cmp r3, #0
004a581c  2c 00 00 0a                                      beq #0x4a58d4
004a5820  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5824  08 20 95 e7                                      ldr r2, [r5, r8]
004a5828  00 20 92 e5                                      ldr r2, [r2]
004a582c  00 00 52 e3                                      cmp r2, #0
004a5830  12 00 00 0a                                      beq #0x4a5880
004a5834  00 40 a0 e3                                      mov r4, #0
004a5838  04 60 a0 e1                                      mov r6, r4
004a583c  01 00 00 ea                                      b #0x4a5848
004a5840  07 30 95 e7                                      ldr r3, [r5, r7]
004a5844  00 30 93 e5                                      ldr r3, [r3]
004a5848  04 00 83 e0                                      add r0, r3, r4
004a584c  04 30 93 e7                                      ldr r3, [r3, r4]
004a5850  0f e0 a0 e1                                      mov lr, pc
004a5854  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5858  08 30 95 e7                                      ldr r3, [r5, r8]
004a585c  01 60 86 e2                                      add r6, r6, #1
004a5860  48 40 84 e2                                      add r4, r4, #0x48
004a5864  00 30 93 e5                                      ldr r3, [r3]
004a5868  06 00 53 e1                                      cmp r3, r6
004a586c  f3 ff ff 8a                                      bhi #0x4a5840
004a5870  07 30 95 e7                                      ldr r3, [r5, r7]
004a5874  00 30 93 e5                                      ldr r3, [r3]
004a5878  00 00 53 e3                                      cmp r3, #0
004a587c  11 00 00 0a                                      beq #0x4a58c8
004a5880  04 20 13 e5                                      ldr r2, [r3, #-4]
004a5884  48 00 a0 e3                                      mov r0, #0x48
004a5888  90 32 20 e0                                      mla r0, r0, r2, r3
004a588c  00 00 53 e1                                      cmp r3, r0
004a5890  01 00 00 1a                                      bne #0x4a589c
004a5894  09 00 00 ea                                      b #0x4a58c0
004a5898  04 00 a0 e1                                      mov r0, r4
004a589c  48 40 40 e2                                      sub r4, r0, #0x48
004a58a0  48 30 10 e5                                      ldr r3, [r0, #-0x48]
004a58a4  04 00 a0 e1                                      mov r0, r4
004a58a8  0f e0 a0 e1                                      mov lr, pc
004a58ac  00 f0 93 e5                                      ldr pc, [r3]
004a58b0  07 30 95 e7                                      ldr r3, [r5, r7]
004a58b4  00 00 93 e5                                      ldr r0, [r3]
004a58b8  04 00 50 e1                                      cmp r0, r4
004a58bc  f5 ff ff 1a                                      bne #0x4a5898
004a58c0  08 00 40 e2                                      sub r0, r0, #8
004a58c4  dd aa f9 eb                                      bl #0x310440
004a58c8  07 30 95 e7                                      ldr r3, [r5, r7]
004a58cc  00 20 a0 e3                                      mov r2, #0
004a58d0  00 20 83 e5                                      str r2, [r3]
004a58d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a58d8  84 f2 4e 00 40 23 00 00 70 09 00 00              .byte 0x84, 0xf2, 0x4e, 0x00, 0x40, 0x23, 0x00, 0x00, 0x70, 0x09, 0x00, 0x00

; FUNCTION 0x004b0600, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ProjectileTable
; alias: _ZN6Arrays15ProjectileTable9readNamesEP11IStreamBase
; demangled: Arrays::ProjectileTable::readNames(IStreamBase*)
; decoder-mode: arm
004b0600  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b0604  00 70 a0 e1                                      mov r7, r0
004b0608  1c d0 4d e2                                      sub sp, sp, #0x1c
004b060c  54 d4 ff eb                                      bl #0x4a5764
004b0610  07 00 a0 e1                                      mov r0, r7
004b0614  1d 8d f9 eb                                      bl #0x313a90
004b0618  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b061c  01 30 a0 e3                                      mov r3, #1
004b0620  00 00 53 e3                                      cmp r3, #0
004b0624  06 60 8f e0                                      add r6, pc, r6
004b0628  14 00 8d e5                                      str r0, [sp, #0x14]
004b062c  0c 30 8d e5                                      str r3, [sp, #0xc]
004b0630  12 00 00 1a                                      bne #0x4b0680
004b0634  14 30 8d e2                                      add r3, sp, #0x14
004b0638  02 20 83 e2                                      add r2, r3, #2
004b063c  01 30 83 e2                                      add r3, r3, #1
004b0640  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0644  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0648  03 00 52 e1                                      cmp r2, r3
004b064c  02 40 a0 e1                                      mov r4, r2
004b0650  01 10 20 e0                                      eor r1, r0, r1
004b0654  01 10 43 e5                                      strb r1, [r3, #-1]
004b0658  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b065c  00 10 21 e0                                      eor r1, r1, r0
004b0660  01 10 c2 e5                                      strb r1, [r2, #1]
004b0664  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b0668  01 20 42 e2                                      sub r2, r2, #1
004b066c  00 10 21 e0                                      eor r1, r1, r0
004b0670  01 10 43 e5                                      strb r1, [r3, #-1]
004b0674  01 30 83 e2                                      add r3, r3, #1
004b0678  f0 ff ff 8a                                      bhi #0x4b0640
004b067c  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b0680  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b0684  03 30 96 e7                                      ldr r3, [r6, r3]
004b0688  00 30 93 e5                                      ldr r3, [r3]
004b068c  00 00 53 e1                                      cmp r3, r0
004b0690  01 00 00 0a                                      beq #0x4b069c
004b0694  1c d0 8d e2                                      add sp, sp, #0x1c
004b0698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b069c  00 01 a0 e1                                      lsl r0, r0, #2
004b06a0  01 10 a0 e3                                      mov r1, #1
004b06a4  b0 7f f9 eb                                      bl #0x31056c
004b06a8  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b06ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b06b0  09 30 96 e7                                      ldr r3, [r6, sb]
004b06b4  00 00 52 e3                                      cmp r2, #0
004b06b8  00 00 83 e5                                      str r0, [r3]
004b06bc  f4 ff ff 0a                                      beq #0x4b0694
004b06c0  10 a0 8d e2                                      add sl, sp, #0x10
004b06c4  01 80 a0 e3                                      mov r8, #1
004b06c8  08 10 8a e0                                      add r1, sl, r8
004b06cc  02 30 8a e2                                      add r3, sl, #2
004b06d0  00 40 a0 e3                                      mov r4, #0
004b06d4  0a 00 8d e8                                      stm sp, {r1, r3}
004b06d8  07 00 a0 e1                                      mov r0, r7
004b06dc  0a 10 a0 e1                                      mov r1, sl
004b06e0  ae ba fc eb                                      bl #0x3df1a0
004b06e4  00 00 58 e3                                      cmp r8, #0
004b06e8  0c 80 8d e5                                      str r8, [sp, #0xc]
004b06ec  0f 00 00 1a                                      bne #0x4b0730
004b06f0  00 30 9d e5                                      ldr r3, [sp]
004b06f4  04 20 9d e5                                      ldr r2, [sp, #4]
004b06f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b06fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b0700  03 00 52 e1                                      cmp r2, r3
004b0704  01 10 20 e0                                      eor r1, r0, r1
004b0708  01 10 43 e5                                      strb r1, [r3, #-1]
004b070c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b0710  00 10 21 e0                                      eor r1, r1, r0
004b0714  01 10 c2 e5                                      strb r1, [r2, #1]
004b0718  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b071c  01 20 42 e2                                      sub r2, r2, #1
004b0720  00 10 21 e0                                      eor r1, r1, r0
004b0724  01 10 43 e5                                      strb r1, [r3, #-1]
004b0728  01 30 83 e2                                      add r3, r3, #1
004b072c  f1 ff ff 8a                                      bhi #0x4b06f8
004b0730  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b0734  09 50 96 e7                                      ldr r5, [r6, sb]
004b0738  01 10 a0 e3                                      mov r1, #1
004b073c  01 00 80 e0                                      add r0, r0, r1
004b0740  00 b0 95 e5                                      ldr fp, [r5]
004b0744  88 7f f9 eb                                      bl #0x31056c
004b0748  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b074c  00 30 95 e5                                      ldr r3, [r5]
004b0750  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b0754  07 00 a0 e1                                      mov r0, r7
004b0758  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b075c  00 30 a0 e3                                      mov r3, #0
004b0760  3b 9b f9 eb                                      bl #0x317454
004b0764  00 30 95 e5                                      ldr r3, [r5]
004b0768  00 10 a0 e3                                      mov r1, #0
004b076c  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b0770  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b0774  01 40 84 e2                                      add r4, r4, #1
004b0778  03 10 c2 e7                                      strb r1, [r2, r3]
004b077c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b0780  04 00 53 e1                                      cmp r3, r4
004b0784  d3 ff ff 8a                                      bhi #0x4b06d8
004b0788  c1 ff ff ea                                      b #0x4b0694
; mapping-symbol data/literal pool
004b078c  6c 44 4e 00 70 09 00 00 78 2a 00 00              .byte 0x6c, 0x44, 0x4e, 0x00, 0x70, 0x09, 0x00, 0x00, 0x78, 0x2a, 0x00, 0x00

; FUNCTION 0x004b0798, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ProjectileTable
; alias: _ZN6Arrays15ProjectileTable9skipNamesEP11IStreamBase
; demangled: Arrays::ProjectileTable::skipNames(IStreamBase*)
; decoder-mode: arm
004b0798  98 ff ff ea                                      b #0x4b0600

; FUNCTION 0x004b9ab0, declared_size=324, range_size=324, mode=arm
; class-group: Arrays::ProjectileTable
; alias: _ZN6Arrays15ProjectileTable4readEP11IStreamBase
; demangled: Arrays::ProjectileTable::read(IStreamBase*)
; decoder-mode: arm
004b9ab0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b9ab4  0c d0 4d e2                                      sub sp, sp, #0xc
004b9ab8  00 a0 a0 e1                                      mov sl, r0
004b9abc  f3 67 f9 eb                                      bl #0x313a90
004b9ac0  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
004b9ac4  01 30 a0 e3                                      mov r3, #1
004b9ac8  00 00 53 e3                                      cmp r3, #0
004b9acc  04 00 8d e5                                      str r0, [sp, #4]
004b9ad0  00 30 8d e5                                      str r3, [sp]
004b9ad4  06 60 8f e0                                      add r6, pc, r6
004b9ad8  10 00 00 1a                                      bne #0x4b9b20
004b9adc  04 30 8d e2                                      add r3, sp, #4
004b9ae0  02 20 83 e2                                      add r2, r3, #2
004b9ae4  01 30 83 e2                                      add r3, r3, #1
004b9ae8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9aec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b9af0  03 00 52 e1                                      cmp r2, r3
004b9af4  01 10 20 e0                                      eor r1, r0, r1
004b9af8  01 10 43 e5                                      strb r1, [r3, #-1]
004b9afc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b9b00  00 10 21 e0                                      eor r1, r1, r0
004b9b04  01 10 c2 e5                                      strb r1, [r2, #1]
004b9b08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b9b0c  01 20 42 e2                                      sub r2, r2, #1
004b9b10  00 10 21 e0                                      eor r1, r1, r0
004b9b14  01 10 43 e5                                      strb r1, [r3, #-1]
004b9b18  01 30 83 e2                                      add r3, r3, #1
004b9b1c  f1 ff ff 8a                                      bhi #0x4b9ae8
004b9b20  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
004b9b24  35 af ff eb                                      bl #0x4a5800
004b9b28  04 40 9d e5                                      ldr r4, [sp, #4]
004b9b2c  07 30 96 e7                                      ldr r3, [r6, r7]
004b9b30  01 10 a0 e3                                      mov r1, #1
004b9b34  84 01 84 e0                                      add r0, r4, r4, lsl #3
004b9b38  01 00 80 e0                                      add r0, r0, r1
004b9b3c  00 40 83 e5                                      str r4, [r3]
004b9b40  80 01 a0 e1                                      lsl r0, r0, #3
004b9b44  88 5a f9 eb                                      bl #0x31056c
004b9b48  48 30 a0 e3                                      mov r3, #0x48
004b9b4c  00 00 54 e3                                      cmp r4, #0
004b9b50  18 00 80 e8                                      stm r0, {r3, r4}
004b9b54  08 30 80 e2                                      add r3, r0, #8
004b9b58  08 00 00 0a                                      beq #0x4b9b80
004b9b5c  88 10 9f e5                                      ldr r1, [pc, #0x88]
004b9b60  00 20 a0 e3                                      mov r2, #0
004b9b64  01 10 96 e7                                      ldr r1, [r6, r1]
004b9b68  08 10 81 e2                                      add r1, r1, #8
004b9b6c  01 20 82 e2                                      add r2, r2, #1
004b9b70  04 00 52 e1                                      cmp r2, r4
004b9b74  08 10 80 e5                                      str r1, [r0, #8]
004b9b78  48 00 80 e2                                      add r0, r0, #0x48
004b9b7c  fa ff ff 1a                                      bne #0x4b9b6c
004b9b80  07 20 96 e7                                      ldr r2, [r6, r7]
004b9b84  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b9b88  00 10 92 e5                                      ldr r1, [r2]
004b9b8c  08 20 96 e7                                      ldr r2, [r6, r8]
004b9b90  00 00 51 e3                                      cmp r1, #0
004b9b94  00 30 82 e5                                      str r3, [r2]
004b9b98  0f 00 00 0a                                      beq #0x4b9bdc
004b9b9c  00 40 a0 e3                                      mov r4, #0
004b9ba0  04 50 a0 e1                                      mov r5, r4
004b9ba4  01 00 00 ea                                      b #0x4b9bb0
004b9ba8  08 30 96 e7                                      ldr r3, [r6, r8]
004b9bac  00 30 93 e5                                      ldr r3, [r3]
004b9bb0  04 00 83 e0                                      add r0, r3, r4
004b9bb4  0a 10 a0 e1                                      mov r1, sl
004b9bb8  04 30 93 e7                                      ldr r3, [r3, r4]
004b9bbc  0f e0 a0 e1                                      mov lr, pc
004b9bc0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b9bc4  07 30 96 e7                                      ldr r3, [r6, r7]
004b9bc8  01 50 85 e2                                      add r5, r5, #1
004b9bcc  48 40 84 e2                                      add r4, r4, #0x48
004b9bd0  00 30 93 e5                                      ldr r3, [r3]
004b9bd4  05 00 53 e1                                      cmp r3, r5
004b9bd8  f2 ff ff 8a                                      bhi #0x4b9ba8
004b9bdc  0c d0 8d e2                                      add sp, sp, #0xc
004b9be0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b9be4  bc af 4d 00 70 09 00 00 50 06 00 00 40 23 00 00  .byte 0xbc, 0xaf, 0x4d, 0x00, 0x70, 0x09, 0x00, 0x00, 0x50, 0x06, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00
