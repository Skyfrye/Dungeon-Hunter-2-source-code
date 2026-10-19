; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045568c, declared_size=8, range_size=8, mode=arm
; class-group: Script_StartDialog
; alias: _ZNK18Script_StartDialog10IsBlockingEv
; demangled: Script_StartDialog::IsBlocking() const
; decoder-mode: arm
0045568c  00 00 a0 e3                                      mov r0, #0
00455690  1e ff 2f e1                                      bx lr

; FUNCTION 0x00459034, declared_size=92, range_size=92, mode=arm
; class-group: Script_StartDialog
; alias: _ZN18Script_StartDialog4InitEv
; demangled: Script_StartDialog::Init()
; decoder-mode: arm
00459034  44 30 9f e5                                      ldr r3, [pc, #0x44]
00459038  44 20 9f e5                                      ldr r2, [pc, #0x44]
0045903c  70 40 2d e9                                      push {r4, r5, r6, lr}
00459040  03 30 8f e0                                      add r3, pc, r3
00459044  02 20 93 e7                                      ldr r2, [r3, r2]
00459048  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0045904c  00 40 a0 e1                                      mov r4, r0
00459050  30 10 9f e5                                      ldr r1, [pc, #0x30]
00459054  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
00459058  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0045905c  01 10 8f e0                                      add r1, pc, r1
00459060  0c 50 9c e5                                      ldr r5, [ip, #0xc]
00459064  02 20 8f e0                                      add r2, pc, r2
00459068  db ae 01 eb                                      bl #0x4c4bdc
0045906c  00 00 55 e1                                      cmp r5, r0
00459070  00 00 a0 13                                      movne r0, #0
00459074  01 00 a0 03                                      moveq r0, #1
00459078  04 00 c4 e5                                      strb r0, [r4, #4]
0045907c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00459080  50 ba 53 00 f4 37 00 00 cc 3b 47 00 04 3e 47 00  .byte 0x50, 0xba, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x3b, 0x47, 0x00, 0x04, 0x3e, 0x47, 0x00

; FUNCTION 0x00460fe8, declared_size=300, range_size=300, mode=arm
; class-group: Script_StartDialog
; alias: _ZN18Script_StartDialog7ExecuteEbi
; demangled: Script_StartDialog::Execute(bool, int)
; decoder-mode: arm
00460fe8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00460fec  00 41 9f e5                                      ldr r4, [pc, #0x100]
00460ff0  00 51 9f e5                                      ldr r5, [pc, #0x100]
00460ff4  78 d0 4d e2                                      sub sp, sp, #0x78
00460ff8  04 40 8f e0                                      add r4, pc, r4
00460ffc  05 30 94 e7                                      ldr r3, [r4, r5]
00461000  00 00 51 e3                                      cmp r1, #0
00461004  00 30 93 e5                                      ldr r3, [r3]
00461008  74 30 8d e5                                      str r3, [sp, #0x74]
0046100c  06 00 00 0a                                      beq #0x46102c
00461010  05 30 94 e7                                      ldr r3, [r4, r5]
00461014  74 20 9d e5                                      ldr r2, [sp, #0x74]
00461018  00 30 93 e5                                      ldr r3, [r3]
0046101c  03 00 52 e1                                      cmp r2, r3
00461020  32 00 00 1a                                      bne #0x4610f0
00461024  78 d0 8d e2                                      add sp, sp, #0x78
00461028  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046102c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00461030  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00461034  5c 70 8d e2                                      add r7, sp, #0x5c
00461038  03 80 94 e7                                      ldr r8, [r4, r3]
0046103c  08 00 a0 e1                                      mov r0, r8
00461040  10 5a fb eb                                      bl #0x337888
00461044  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
00461048  0c 20 8d e2                                      add r2, sp, #0xc
0046104c  07 00 a0 e1                                      mov r0, r7
00461050  01 10 8f e0                                      add r1, pc, r1
00461054  24 cc fa eb                                      bl #0x3140ec
00461058  07 10 a0 e1                                      mov r1, r7
0046105c  08 00 a0 e1                                      mov r0, r8
00461060  88 5a fb eb                                      bl #0x337a88
00461064  07 00 a0 e1                                      mov r0, r7
00461068  79 dc fa eb                                      bl #0x318254
0046106c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00461070  90 10 9f e5                                      ldr r1, [pc, #0x90]
00461074  90 20 9f e5                                      ldr r2, [pc, #0x90]
00461078  03 30 94 e7                                      ldr r3, [r4, r3]
0046107c  01 10 8f e0                                      add r1, pc, r1
00461080  02 20 8f e0                                      add r2, pc, r2
00461084  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00461088  0c 70 96 e5                                      ldr r7, [r6, #0xc]
0046108c  d2 8e 01 eb                                      bl #0x4c4bdc
00461090  00 00 57 e1                                      cmp r7, r0
00461094  0d 00 00 0a                                      beq #0x4610d0
00461098  08 c0 96 e5                                      ldr ip, [r6, #8]
0046109c  10 20 96 e5                                      ldr r2, [r6, #0x10]
004610a0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
004610a4  10 60 8d e2                                      add r6, sp, #0x10
004610a8  00 10 a0 e3                                      mov r1, #0
004610ac  06 00 a0 e1                                      mov r0, r6
004610b0  00 c0 8d e5                                      str ip, [sp]
004610b4  de 4c ff eb                                      bl #0x434434
004610b8  06 00 a0 e1                                      mov r0, r6
004610bc  01 10 a0 e3                                      mov r1, #1
004610c0  49 ff ff eb                                      bl #0x460dec
004610c4  06 00 a0 e1                                      mov r0, r6
004610c8  78 fb fa eb                                      bl #0x31feb0
004610cc  cf ff ff ea                                      b #0x461010
004610d0  38 30 9f e5                                      ldr r3, [pc, #0x38]
004610d4  03 30 94 e7                                      ldr r3, [r4, r3]
004610d8  04 20 93 e5                                      ldr r2, [r3, #4]
004610dc  14 30 93 e5                                      ldr r3, [r3, #0x14]
004610e0  02 00 53 e1                                      cmp r3, r2
004610e4  eb ff ff 0a                                      beq #0x461098
004610e8  e1 fc ff eb                                      bl #0x460474
004610ec  c7 ff ff ea                                      b #0x461010
004610f0  86 b4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004610f4  98 3a 53 00 ac 40 00 00 84 08 00 00 30 c0 46 00  .byte 0x98, 0x3a, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x30, 0xc0, 0x46, 0x00
00461104  f4 37 00 00 ac bb 46 00 e8 bd 46 00 74 1e 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xac, 0xbb, 0x46, 0x00, 0xe8, 0xbd, 0x46, 0x00, 0x74, 0x1e, 0x00, 0x00
