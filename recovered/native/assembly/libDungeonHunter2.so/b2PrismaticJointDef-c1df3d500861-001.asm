; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ed658, declared_size=400, range_size=400, mode=arm
; class-group: b2PrismaticJointDef
; alias: _ZN19b2PrismaticJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_
; demangled: b2PrismaticJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&)
; decoder-mode: arm
007ed658  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ed65c  00 50 a0 e1                                      mov r5, r0
007ed660  0c 20 85 e5                                      str r2, [r5, #0xc]
007ed664  08 10 85 e5                                      str r1, [r5, #8]
007ed668  00 00 93 e5                                      ldr r0, [r3]
007ed66c  01 40 a0 e1                                      mov r4, r1
007ed670  04 10 91 e5                                      ldr r1, [r1, #4]
007ed674  02 60 a0 e1                                      mov r6, r2
007ed678  03 70 a0 e1                                      mov r7, r3
007ed67c  4a 83 ec eb                                      bl #0x30e3ac
007ed680  08 10 94 e5                                      ldr r1, [r4, #8]
007ed684  00 a0 a0 e1                                      mov sl, r0
007ed688  04 00 97 e5                                      ldr r0, [r7, #4]
007ed68c  46 83 ec eb                                      bl #0x30e3ac
007ed690  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed694  00 80 a0 e1                                      mov r8, r0
007ed698  0a 00 a0 e1                                      mov r0, sl
007ed69c  b2 85 ec eb                                      bl #0x30ed6c
007ed6a0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed6a4  00 90 a0 e1                                      mov sb, r0
007ed6a8  08 00 a0 e1                                      mov r0, r8
007ed6ac  ae 85 ec eb                                      bl #0x30ed6c
007ed6b0  00 10 a0 e1                                      mov r1, r0
007ed6b4  09 00 a0 e1                                      mov r0, sb
007ed6b8  39 85 ec eb                                      bl #0x30eba4
007ed6bc  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed6c0  00 90 a0 e1                                      mov sb, r0
007ed6c4  0a 00 a0 e1                                      mov r0, sl
007ed6c8  a7 85 ec eb                                      bl #0x30ed6c
007ed6cc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed6d0  00 a0 a0 e1                                      mov sl, r0
007ed6d4  08 00 a0 e1                                      mov r0, r8
007ed6d8  a3 85 ec eb                                      bl #0x30ed6c
007ed6dc  00 10 a0 e1                                      mov r1, r0
007ed6e0  0a 00 a0 e1                                      mov r0, sl
007ed6e4  2e 85 ec eb                                      bl #0x30eba4
007ed6e8  14 90 85 e5                                      str sb, [r5, #0x14]
007ed6ec  18 00 85 e5                                      str r0, [r5, #0x18]
007ed6f0  04 10 96 e5                                      ldr r1, [r6, #4]
007ed6f4  00 00 97 e5                                      ldr r0, [r7]
007ed6f8  2b 83 ec eb                                      bl #0x30e3ac
007ed6fc  08 10 96 e5                                      ldr r1, [r6, #8]
007ed700  00 80 a0 e1                                      mov r8, r0
007ed704  04 00 97 e5                                      ldr r0, [r7, #4]
007ed708  27 83 ec eb                                      bl #0x30e3ac
007ed70c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007ed710  00 70 a0 e1                                      mov r7, r0
007ed714  08 00 a0 e1                                      mov r0, r8
007ed718  93 85 ec eb                                      bl #0x30ed6c
007ed71c  10 10 96 e5                                      ldr r1, [r6, #0x10]
007ed720  00 a0 a0 e1                                      mov sl, r0
007ed724  07 00 a0 e1                                      mov r0, r7
007ed728  8f 85 ec eb                                      bl #0x30ed6c
007ed72c  00 10 a0 e1                                      mov r1, r0
007ed730  0a 00 a0 e1                                      mov r0, sl
007ed734  1a 85 ec eb                                      bl #0x30eba4
007ed738  14 10 96 e5                                      ldr r1, [r6, #0x14]
007ed73c  00 a0 a0 e1                                      mov sl, r0
007ed740  08 00 a0 e1                                      mov r0, r8
007ed744  88 85 ec eb                                      bl #0x30ed6c
007ed748  18 10 96 e5                                      ldr r1, [r6, #0x18]
007ed74c  00 80 a0 e1                                      mov r8, r0
007ed750  07 00 a0 e1                                      mov r0, r7
007ed754  84 85 ec eb                                      bl #0x30ed6c
007ed758  00 10 a0 e1                                      mov r1, r0
007ed75c  08 00 a0 e1                                      mov r0, r8
007ed760  0f 85 ec eb                                      bl #0x30eba4
007ed764  20 30 9d e5                                      ldr r3, [sp, #0x20]
007ed768  20 00 85 e5                                      str r0, [r5, #0x20]
007ed76c  1c a0 85 e5                                      str sl, [r5, #0x1c]
007ed770  00 80 93 e5                                      ldr r8, [r3]
007ed774  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed778  04 70 93 e5                                      ldr r7, [r3, #4]
007ed77c  08 00 a0 e1                                      mov r0, r8
007ed780  79 85 ec eb                                      bl #0x30ed6c
007ed784  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed788  00 a0 a0 e1                                      mov sl, r0
007ed78c  07 00 a0 e1                                      mov r0, r7
007ed790  75 85 ec eb                                      bl #0x30ed6c
007ed794  00 10 a0 e1                                      mov r1, r0
007ed798  0a 00 a0 e1                                      mov r0, sl
007ed79c  00 85 ec eb                                      bl #0x30eba4
007ed7a0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed7a4  00 a0 a0 e1                                      mov sl, r0
007ed7a8  08 00 a0 e1                                      mov r0, r8
007ed7ac  6e 85 ec eb                                      bl #0x30ed6c
007ed7b0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed7b4  00 80 a0 e1                                      mov r8, r0
007ed7b8  07 00 a0 e1                                      mov r0, r7
007ed7bc  6a 85 ec eb                                      bl #0x30ed6c
007ed7c0  00 10 a0 e1                                      mov r1, r0
007ed7c4  08 00 a0 e1                                      mov r0, r8
007ed7c8  f5 84 ec eb                                      bl #0x30eba4
007ed7cc  24 a0 85 e5                                      str sl, [r5, #0x24]
007ed7d0  28 00 85 e5                                      str r0, [r5, #0x28]
007ed7d4  38 00 96 e5                                      ldr r0, [r6, #0x38]
007ed7d8  38 10 94 e5                                      ldr r1, [r4, #0x38]
007ed7dc  f2 82 ec eb                                      bl #0x30e3ac
007ed7e0  2c 00 85 e5                                      str r0, [r5, #0x2c]
007ed7e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
