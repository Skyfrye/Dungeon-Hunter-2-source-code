; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a5ee4, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ItemTable
; alias: _ZN6Arrays9ItemTable13finalizeNamesEv
; demangled: Arrays::ItemTable::finalizeNames()
; decoder-mode: arm
004a5ee4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5ee8  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a5eec  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a5ef0  05 50 8f e0                                      add r5, pc, r5
004a5ef4  06 30 95 e7                                      ldr r3, [r5, r6]
004a5ef8  00 30 93 e5                                      ldr r3, [r3]
004a5efc  00 00 53 e3                                      cmp r3, #0
004a5f00  1a 00 00 0a                                      beq #0x4a5f70
004a5f04  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a5f08  07 20 95 e7                                      ldr r2, [r5, r7]
004a5f0c  00 20 92 e5                                      ldr r2, [r2]
004a5f10  00 00 52 e3                                      cmp r2, #0
004a5f14  10 00 00 0a                                      beq #0x4a5f5c
004a5f18  00 40 a0 e3                                      mov r4, #0
004a5f1c  01 00 00 ea                                      b #0x4a5f28
004a5f20  06 30 95 e7                                      ldr r3, [r5, r6]
004a5f24  00 30 93 e5                                      ldr r3, [r3]
004a5f28  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a5f2c  01 40 84 e2                                      add r4, r4, #1
004a5f30  00 00 50 e3                                      cmp r0, #0
004a5f34  02 00 00 0a                                      beq #0x4a5f44
004a5f38  40 a9 f9 eb                                      bl #0x310440
004a5f3c  06 30 95 e7                                      ldr r3, [r5, r6]
004a5f40  00 30 93 e5                                      ldr r3, [r3]
004a5f44  07 20 95 e7                                      ldr r2, [r5, r7]
004a5f48  00 20 92 e5                                      ldr r2, [r2]
004a5f4c  04 00 52 e1                                      cmp r2, r4
004a5f50  f2 ff ff 8a                                      bhi #0x4a5f20
004a5f54  00 00 53 e3                                      cmp r3, #0
004a5f58  01 00 00 0a                                      beq #0x4a5f64
004a5f5c  03 00 a0 e1                                      mov r0, r3
004a5f60  36 a9 f9 eb                                      bl #0x310440
004a5f64  06 30 95 e7                                      ldr r3, [r5, r6]
004a5f68  00 20 a0 e3                                      mov r2, #0
004a5f6c  00 20 83 e5                                      str r2, [r3]
004a5f70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a5f74  a0 eb 4e 00 54 1c 00 00 60 0d 00 00              .byte 0xa0, 0xeb, 0x4e, 0x00, 0x54, 0x1c, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00

; FUNCTION 0x004a5f80, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ItemTable
; alias: _ZN6Arrays9ItemTable8finalizeEv
; demangled: Arrays::ItemTable::finalize()
; decoder-mode: arm
004a5f80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a5f84  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a5f88  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a5f8c  05 50 8f e0                                      add r5, pc, r5
004a5f90  07 30 95 e7                                      ldr r3, [r5, r7]
004a5f94  00 30 93 e5                                      ldr r3, [r3]
004a5f98  00 00 53 e3                                      cmp r3, #0
004a5f9c  2c 00 00 0a                                      beq #0x4a6054
004a5fa0  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a5fa4  08 20 95 e7                                      ldr r2, [r5, r8]
004a5fa8  00 20 92 e5                                      ldr r2, [r2]
004a5fac  00 00 52 e3                                      cmp r2, #0
004a5fb0  12 00 00 0a                                      beq #0x4a6000
004a5fb4  00 40 a0 e3                                      mov r4, #0
004a5fb8  04 60 a0 e1                                      mov r6, r4
004a5fbc  01 00 00 ea                                      b #0x4a5fc8
004a5fc0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5fc4  00 30 93 e5                                      ldr r3, [r3]
004a5fc8  04 00 83 e0                                      add r0, r3, r4
004a5fcc  04 30 93 e7                                      ldr r3, [r3, r4]
004a5fd0  0f e0 a0 e1                                      mov lr, pc
004a5fd4  08 f0 93 e5                                      ldr pc, [r3, #8]
004a5fd8  08 30 95 e7                                      ldr r3, [r5, r8]
004a5fdc  01 60 86 e2                                      add r6, r6, #1
004a5fe0  a4 40 84 e2                                      add r4, r4, #0xa4
004a5fe4  00 30 93 e5                                      ldr r3, [r3]
004a5fe8  06 00 53 e1                                      cmp r3, r6
004a5fec  f3 ff ff 8a                                      bhi #0x4a5fc0
004a5ff0  07 30 95 e7                                      ldr r3, [r5, r7]
004a5ff4  00 30 93 e5                                      ldr r3, [r3]
004a5ff8  00 00 53 e3                                      cmp r3, #0
004a5ffc  11 00 00 0a                                      beq #0x4a6048
004a6000  04 20 13 e5                                      ldr r2, [r3, #-4]
004a6004  a4 00 a0 e3                                      mov r0, #0xa4
004a6008  90 32 20 e0                                      mla r0, r0, r2, r3
004a600c  00 00 53 e1                                      cmp r3, r0
004a6010  01 00 00 1a                                      bne #0x4a601c
004a6014  09 00 00 ea                                      b #0x4a6040
004a6018  04 00 a0 e1                                      mov r0, r4
004a601c  a4 40 40 e2                                      sub r4, r0, #0xa4
004a6020  a4 30 10 e5                                      ldr r3, [r0, #-0xa4]
004a6024  04 00 a0 e1                                      mov r0, r4
004a6028  0f e0 a0 e1                                      mov lr, pc
004a602c  00 f0 93 e5                                      ldr pc, [r3]
004a6030  07 30 95 e7                                      ldr r3, [r5, r7]
004a6034  00 00 93 e5                                      ldr r0, [r3]
004a6038  04 00 50 e1                                      cmp r0, r4
004a603c  f5 ff ff 1a                                      bne #0x4a6018
004a6040  08 00 40 e2                                      sub r0, r0, #8
004a6044  fd a8 f9 eb                                      bl #0x310440
004a6048  07 30 95 e7                                      ldr r3, [r5, r7]
004a604c  00 20 a0 e3                                      mov r2, #0
004a6050  00 20 83 e5                                      str r2, [r3]
004a6054  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a6058  04 eb 4e 00 6c 28 00 00 60 0d 00 00              .byte 0x04, 0xeb, 0x4e, 0x00, 0x6c, 0x28, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00

; FUNCTION 0x004b4724, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ItemTable
; alias: _ZN6Arrays9ItemTable9readNamesEP11IStreamBase
; demangled: Arrays::ItemTable::readNames(IStreamBase*)
; decoder-mode: arm
004b4724  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b4728  00 70 a0 e1                                      mov r7, r0
004b472c  1c d0 4d e2                                      sub sp, sp, #0x1c
004b4730  eb c5 ff eb                                      bl #0x4a5ee4
004b4734  07 00 a0 e1                                      mov r0, r7
004b4738  d4 7c f9 eb                                      bl #0x313a90
004b473c  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b4740  01 30 a0 e3                                      mov r3, #1
004b4744  00 00 53 e3                                      cmp r3, #0
004b4748  06 60 8f e0                                      add r6, pc, r6
004b474c  14 00 8d e5                                      str r0, [sp, #0x14]
004b4750  0c 30 8d e5                                      str r3, [sp, #0xc]
004b4754  12 00 00 1a                                      bne #0x4b47a4
004b4758  14 30 8d e2                                      add r3, sp, #0x14
004b475c  02 20 83 e2                                      add r2, r3, #2
004b4760  01 30 83 e2                                      add r3, r3, #1
004b4764  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4768  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b476c  03 00 52 e1                                      cmp r2, r3
004b4770  02 40 a0 e1                                      mov r4, r2
004b4774  01 10 20 e0                                      eor r1, r0, r1
004b4778  01 10 43 e5                                      strb r1, [r3, #-1]
004b477c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4780  00 10 21 e0                                      eor r1, r1, r0
004b4784  01 10 c2 e5                                      strb r1, [r2, #1]
004b4788  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b478c  01 20 42 e2                                      sub r2, r2, #1
004b4790  00 10 21 e0                                      eor r1, r1, r0
004b4794  01 10 43 e5                                      strb r1, [r3, #-1]
004b4798  01 30 83 e2                                      add r3, r3, #1
004b479c  f0 ff ff 8a                                      bhi #0x4b4764
004b47a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b47a4  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b47a8  03 30 96 e7                                      ldr r3, [r6, r3]
004b47ac  00 30 93 e5                                      ldr r3, [r3]
004b47b0  00 00 53 e1                                      cmp r3, r0
004b47b4  01 00 00 0a                                      beq #0x4b47c0
004b47b8  1c d0 8d e2                                      add sp, sp, #0x1c
004b47bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b47c0  00 01 a0 e1                                      lsl r0, r0, #2
004b47c4  01 10 a0 e3                                      mov r1, #1
004b47c8  67 6f f9 eb                                      bl #0x31056c
004b47cc  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b47d0  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b47d4  09 30 96 e7                                      ldr r3, [r6, sb]
004b47d8  00 00 52 e3                                      cmp r2, #0
004b47dc  00 00 83 e5                                      str r0, [r3]
004b47e0  f4 ff ff 0a                                      beq #0x4b47b8
004b47e4  10 a0 8d e2                                      add sl, sp, #0x10
004b47e8  01 80 a0 e3                                      mov r8, #1
004b47ec  08 10 8a e0                                      add r1, sl, r8
004b47f0  02 30 8a e2                                      add r3, sl, #2
004b47f4  00 40 a0 e3                                      mov r4, #0
004b47f8  0a 00 8d e8                                      stm sp, {r1, r3}
004b47fc  07 00 a0 e1                                      mov r0, r7
004b4800  0a 10 a0 e1                                      mov r1, sl
004b4804  65 aa fc eb                                      bl #0x3df1a0
004b4808  00 00 58 e3                                      cmp r8, #0
004b480c  0c 80 8d e5                                      str r8, [sp, #0xc]
004b4810  0f 00 00 1a                                      bne #0x4b4854
004b4814  00 30 9d e5                                      ldr r3, [sp]
004b4818  04 20 9d e5                                      ldr r2, [sp, #4]
004b481c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4820  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b4824  03 00 52 e1                                      cmp r2, r3
004b4828  01 10 20 e0                                      eor r1, r0, r1
004b482c  01 10 43 e5                                      strb r1, [r3, #-1]
004b4830  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b4834  00 10 21 e0                                      eor r1, r1, r0
004b4838  01 10 c2 e5                                      strb r1, [r2, #1]
004b483c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b4840  01 20 42 e2                                      sub r2, r2, #1
004b4844  00 10 21 e0                                      eor r1, r1, r0
004b4848  01 10 43 e5                                      strb r1, [r3, #-1]
004b484c  01 30 83 e2                                      add r3, r3, #1
004b4850  f1 ff ff 8a                                      bhi #0x4b481c
004b4854  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b4858  09 50 96 e7                                      ldr r5, [r6, sb]
004b485c  01 10 a0 e3                                      mov r1, #1
004b4860  01 00 80 e0                                      add r0, r0, r1
004b4864  00 b0 95 e5                                      ldr fp, [r5]
004b4868  3f 6f f9 eb                                      bl #0x31056c
004b486c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b4870  00 30 95 e5                                      ldr r3, [r5]
004b4874  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b4878  07 00 a0 e1                                      mov r0, r7
004b487c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b4880  00 30 a0 e3                                      mov r3, #0
004b4884  f2 8a f9 eb                                      bl #0x317454
004b4888  00 30 95 e5                                      ldr r3, [r5]
004b488c  00 10 a0 e3                                      mov r1, #0
004b4890  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b4894  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b4898  01 40 84 e2                                      add r4, r4, #1
004b489c  03 10 c2 e7                                      strb r1, [r2, r3]
004b48a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b48a4  04 00 53 e1                                      cmp r3, r4
004b48a8  d3 ff ff 8a                                      bhi #0x4b47fc
004b48ac  c1 ff ff ea                                      b #0x4b47b8
; mapping-symbol data/literal pool
004b48b0  48 03 4e 00 60 0d 00 00 54 1c 00 00              .byte 0x48, 0x03, 0x4e, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00

; FUNCTION 0x004ba12c, declared_size=336, range_size=336, mode=arm
; class-group: Arrays::ItemTable
; alias: _ZN6Arrays9ItemTable4readEP11IStreamBase
; demangled: Arrays::ItemTable::read(IStreamBase*)
; decoder-mode: arm
004ba12c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004ba130  0c d0 4d e2                                      sub sp, sp, #0xc
004ba134  00 a0 a0 e1                                      mov sl, r0
004ba138  54 66 f9 eb                                      bl #0x313a90
004ba13c  28 61 9f e5                                      ldr r6, [pc, #0x128]
004ba140  01 30 a0 e3                                      mov r3, #1
004ba144  00 00 53 e3                                      cmp r3, #0
004ba148  04 00 8d e5                                      str r0, [sp, #4]
004ba14c  00 30 8d e5                                      str r3, [sp]
004ba150  06 60 8f e0                                      add r6, pc, r6
004ba154  10 00 00 1a                                      bne #0x4ba19c
004ba158  04 30 8d e2                                      add r3, sp, #4
004ba15c  02 20 83 e2                                      add r2, r3, #2
004ba160  01 30 83 e2                                      add r3, r3, #1
004ba164  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba168  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ba16c  03 00 52 e1                                      cmp r2, r3
004ba170  01 10 20 e0                                      eor r1, r0, r1
004ba174  01 10 43 e5                                      strb r1, [r3, #-1]
004ba178  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ba17c  00 10 21 e0                                      eor r1, r1, r0
004ba180  01 10 c2 e5                                      strb r1, [r2, #1]
004ba184  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ba188  01 20 42 e2                                      sub r2, r2, #1
004ba18c  00 10 21 e0                                      eor r1, r1, r0
004ba190  01 10 43 e5                                      strb r1, [r3, #-1]
004ba194  01 30 83 e2                                      add r3, r3, #1
004ba198  f1 ff ff 8a                                      bhi #0x4ba164
004ba19c  77 af ff eb                                      bl #0x4a5f80
004ba1a0  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
004ba1a4  04 40 9d e5                                      ldr r4, [sp, #4]
004ba1a8  a4 50 a0 e3                                      mov r5, #0xa4
004ba1ac  07 30 96 e7                                      ldr r3, [r6, r7]
004ba1b0  95 04 00 e0                                      mul r0, r5, r4
004ba1b4  00 40 83 e5                                      str r4, [r3]
004ba1b8  08 00 80 e2                                      add r0, r0, #8
004ba1bc  01 10 a0 e3                                      mov r1, #1
004ba1c0  e9 58 f9 eb                                      bl #0x31056c
004ba1c4  00 00 54 e3                                      cmp r4, #0
004ba1c8  00 50 80 e5                                      str r5, [r0]
004ba1cc  04 40 80 e5                                      str r4, [r0, #4]
004ba1d0  08 30 80 e2                                      add r3, r0, #8
004ba1d4  0b 00 00 0a                                      beq #0x4ba208
004ba1d8  94 10 9f e5                                      ldr r1, [pc, #0x94]
004ba1dc  00 20 a0 e3                                      mov r2, #0
004ba1e0  01 c0 96 e7                                      ldr ip, [r6, r1]
004ba1e4  02 10 a0 e1                                      mov r1, r2
004ba1e8  08 c0 8c e2                                      add ip, ip, #8
004ba1ec  01 20 82 e2                                      add r2, r2, #1
004ba1f0  04 00 52 e1                                      cmp r2, r4
004ba1f4  10 10 80 e5                                      str r1, [r0, #0x10]
004ba1f8  08 c0 80 e5                                      str ip, [r0, #8]
004ba1fc  58 10 80 e5                                      str r1, [r0, #0x58]
004ba200  a4 00 80 e2                                      add r0, r0, #0xa4
004ba204  f8 ff ff 1a                                      bne #0x4ba1ec
004ba208  07 20 96 e7                                      ldr r2, [r6, r7]
004ba20c  64 80 9f e5                                      ldr r8, [pc, #0x64]
004ba210  00 10 92 e5                                      ldr r1, [r2]
004ba214  08 20 96 e7                                      ldr r2, [r6, r8]
004ba218  00 00 51 e3                                      cmp r1, #0
004ba21c  00 30 82 e5                                      str r3, [r2]
004ba220  0f 00 00 0a                                      beq #0x4ba264
004ba224  00 40 a0 e3                                      mov r4, #0
004ba228  04 50 a0 e1                                      mov r5, r4
004ba22c  01 00 00 ea                                      b #0x4ba238
004ba230  08 30 96 e7                                      ldr r3, [r6, r8]
004ba234  00 30 93 e5                                      ldr r3, [r3]
004ba238  04 00 83 e0                                      add r0, r3, r4
004ba23c  0a 10 a0 e1                                      mov r1, sl
004ba240  04 30 93 e7                                      ldr r3, [r3, r4]
004ba244  0f e0 a0 e1                                      mov lr, pc
004ba248  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ba24c  07 30 96 e7                                      ldr r3, [r6, r7]
004ba250  01 50 85 e2                                      add r5, r5, #1
004ba254  a4 40 84 e2                                      add r4, r4, #0xa4
004ba258  00 30 93 e5                                      ldr r3, [r3]
004ba25c  05 00 53 e1                                      cmp r3, r5
004ba260  f2 ff ff 8a                                      bhi #0x4ba230
004ba264  0c d0 8d e2                                      add sp, sp, #0xc
004ba268  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004ba26c  40 a9 4d 00 60 0d 00 00 54 41 00 00 6c 28 00 00  .byte 0x40, 0xa9, 0x4d, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x41, 0x00, 0x00, 0x6c, 0x28, 0x00, 0x00
