; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558f4, declared_size=8, range_size=8, mode=arm
; class-group: Script_RestartLevel
; alias: _ZNK19Script_RestartLevel10IsBlockingEv
; demangled: Script_RestartLevel::IsBlocking() const
; decoder-mode: arm
004558f4  00 00 a0 e3                                      mov r0, #0
004558f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045cdd0, declared_size=168, range_size=168, mode=arm
; class-group: Script_RestartLevel
; alias: _ZN19Script_RestartLevel7ExecuteEbi
; demangled: Script_RestartLevel::Execute(bool, int)
; decoder-mode: arm
0045cdd0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0045cdd4  88 40 9f e5                                      ldr r4, [pc, #0x88]
0045cdd8  88 60 9f e5                                      ldr r6, [pc, #0x88]
0045cddc  88 20 9f e5                                      ldr r2, [pc, #0x88]
0045cde0  04 40 8f e0                                      add r4, pc, r4
0045cde4  06 30 94 e7                                      ldr r3, [r4, r6]
0045cde8  02 70 94 e7                                      ldr r7, [r4, r2]
0045cdec  24 d0 4d e2                                      sub sp, sp, #0x24
0045cdf0  00 30 93 e5                                      ldr r3, [r3]
0045cdf4  07 00 a0 e1                                      mov r0, r7
0045cdf8  04 50 8d e2                                      add r5, sp, #4
0045cdfc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045ce00  a0 6a fb eb                                      bl #0x337888
0045ce04  64 10 9f e5                                      ldr r1, [pc, #0x64]
0045ce08  0d 20 a0 e1                                      mov r2, sp
0045ce0c  05 00 a0 e1                                      mov r0, r5
0045ce10  01 10 8f e0                                      add r1, pc, r1
0045ce14  b4 dc fa eb                                      bl #0x3140ec
0045ce18  05 10 a0 e1                                      mov r1, r5
0045ce1c  07 00 a0 e1                                      mov r0, r7
0045ce20  18 6b fb eb                                      bl #0x337a88
0045ce24  05 00 a0 e1                                      mov r0, r5
0045ce28  09 ed fa eb                                      bl #0x318254
0045ce2c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0045ce30  03 00 94 e7                                      ldr r0, [r4, r3]
0045ce34  d6 09 fb eb                                      bl #0x31f594
0045ce38  00 00 50 e3                                      cmp r0, #0
0045ce3c  00 00 00 0a                                      beq #0x45ce44
0045ce40  d6 4a fe eb                                      bl #0x3ef9a0
0045ce44  06 30 94 e7                                      ldr r3, [r4, r6]
0045ce48  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045ce4c  00 30 93 e5                                      ldr r3, [r3]
0045ce50  03 00 52 e1                                      cmp r2, r3
0045ce54  01 00 00 1a                                      bne #0x45ce60
0045ce58  24 d0 8d e2                                      add sp, sp, #0x24
0045ce5c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0045ce60  2a c5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045ce64  b0 7c 53 00 ac 40 00 00 84 08 00 00 70 02 47 00  .byte 0xb0, 0x7c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x70, 0x02, 0x47, 0x00
0045ce74  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
