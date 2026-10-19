; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863714, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxCallbackManager
; alias: _ZN3vox18VoxCallbackManager7SendAllEv
; demangled: vox::VoxCallbackManager::SendAll()
; decoder-mode: arm
00863714  70 40 2d e9                                      push {r4, r5, r6, lr}
00863718  00 40 a0 e1                                      mov r4, r0
0086371c  00 00 94 e5                                      ldr r0, [r4]
00863720  04 00 50 e1                                      cmp r0, r4
00863724  16 00 00 0a                                      beq #0x863784
00863728  00 30 a0 e1                                      mov r3, r0
0086372c  00 30 93 e5                                      ldr r3, [r3]
00863730  03 00 54 e1                                      cmp r4, r3
00863734  fc ff ff 1a                                      bne #0x86372c
00863738  04 20 90 e5                                      ldr r2, [r0, #4]
0086373c  00 30 90 e5                                      ldr r3, [r0]
00863740  08 50 90 e5                                      ldr r5, [r0, #8]
00863744  00 30 82 e5                                      str r3, [r2]
00863748  04 20 83 e5                                      str r2, [r3, #4]
0086374c  3c b3 ea eb                                      bl #0x310444
00863750  05 00 a0 e1                                      mov r0, r5
00863754  00 30 95 e5                                      ldr r3, [r5]
00863758  0f e0 a0 e1                                      mov lr, pc
0086375c  08 f0 93 e5                                      ldr pc, [r3, #8]
00863760  00 30 95 e5                                      ldr r3, [r5]
00863764  05 00 a0 e1                                      mov r0, r5
00863768  0f e0 a0 e1                                      mov lr, pc
0086376c  00 f0 93 e5                                      ldr pc, [r3]
00863770  05 00 a0 e1                                      mov r0, r5
00863774  32 b3 ea eb                                      bl #0x310444
00863778  00 00 94 e5                                      ldr r0, [r4]
0086377c  04 00 50 e1                                      cmp r0, r4
00863780  e8 ff ff 1a                                      bne #0x863728
00863784  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00863788, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxCallbackManager
; alias: _ZN3vox18VoxCallbackManagerD1Ev
; demangled: vox::VoxCallbackManager::~VoxCallbackManager()
; decoder-mode: arm
00863788  70 40 2d e9                                      push {r4, r5, r6, lr}
0086378c  00 40 a0 e1                                      mov r4, r0
00863790  00 00 94 e5                                      ldr r0, [r4]
00863794  04 00 50 e1                                      cmp r0, r4
00863798  13 00 00 0a                                      beq #0x8637ec
0086379c  00 30 a0 e1                                      mov r3, r0
008637a0  00 30 93 e5                                      ldr r3, [r3]
008637a4  03 00 54 e1                                      cmp r4, r3
008637a8  fc ff ff 1a                                      bne #0x8637a0
008637ac  00 30 90 e5                                      ldr r3, [r0]
008637b0  24 00 90 e9                                      ldmib r0, {r2, r5}
008637b4  00 30 82 e5                                      str r3, [r2]
008637b8  04 20 83 e5                                      str r2, [r3, #4]
008637bc  20 b3 ea eb                                      bl #0x310444
008637c0  00 00 55 e3                                      cmp r5, #0
008637c4  f1 ff ff 0a                                      beq #0x863790
008637c8  00 30 95 e5                                      ldr r3, [r5]
008637cc  05 00 a0 e1                                      mov r0, r5
008637d0  0f e0 a0 e1                                      mov lr, pc
008637d4  00 f0 93 e5                                      ldr pc, [r3]
008637d8  05 00 a0 e1                                      mov r0, r5
008637dc  18 b3 ea eb                                      bl #0x310444
008637e0  00 00 94 e5                                      ldr r0, [r4]
008637e4  04 00 50 e1                                      cmp r0, r4
008637e8  eb ff ff 1a                                      bne #0x86379c
008637ec  00 40 84 e5                                      str r4, [r4]
008637f0  04 40 84 e5                                      str r4, [r4, #4]
008637f4  04 00 a0 e1                                      mov r0, r4
008637f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008637fc, declared_size=116, range_size=116, mode=arm
; class-group: vox::VoxCallbackManager
; alias: _ZN3vox18VoxCallbackManagerD2Ev
; demangled: vox::VoxCallbackManager::~VoxCallbackManager()
; decoder-mode: arm
008637fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00863800  00 40 a0 e1                                      mov r4, r0
00863804  00 00 94 e5                                      ldr r0, [r4]
00863808  04 00 50 e1                                      cmp r0, r4
0086380c  13 00 00 0a                                      beq #0x863860
00863810  00 30 a0 e1                                      mov r3, r0
00863814  00 30 93 e5                                      ldr r3, [r3]
00863818  03 00 54 e1                                      cmp r4, r3
0086381c  fc ff ff 1a                                      bne #0x863814
00863820  00 30 90 e5                                      ldr r3, [r0]
00863824  24 00 90 e9                                      ldmib r0, {r2, r5}
00863828  00 30 82 e5                                      str r3, [r2]
0086382c  04 20 83 e5                                      str r2, [r3, #4]
00863830  03 b3 ea eb                                      bl #0x310444
00863834  00 00 55 e3                                      cmp r5, #0
00863838  f1 ff ff 0a                                      beq #0x863804
0086383c  00 30 95 e5                                      ldr r3, [r5]
00863840  05 00 a0 e1                                      mov r0, r5
00863844  0f e0 a0 e1                                      mov lr, pc
00863848  00 f0 93 e5                                      ldr pc, [r3]
0086384c  05 00 a0 e1                                      mov r0, r5
00863850  fb b2 ea eb                                      bl #0x310444
00863854  00 00 94 e5                                      ldr r0, [r4]
00863858  04 00 50 e1                                      cmp r0, r4
0086385c  eb ff ff 1a                                      bne #0x863810
00863860  00 40 84 e5                                      str r4, [r4]
00863864  04 40 84 e5                                      str r4, [r4, #4]
00863868  04 00 a0 e1                                      mov r0, r4
0086386c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00863cc8, declared_size=56, range_size=56, mode=arm
; class-group: vox::VoxCallbackManager
; alias: _ZN3vox18VoxCallbackManager3AddEPNS_11VoxCallbackE
; demangled: vox::VoxCallbackManager::Add(vox::VoxCallback*)
; decoder-mode: arm
00863cc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00863ccc  00 50 51 e2                                      subs r5, r1, #0
00863cd0  00 40 a0 e1                                      mov r4, r0
00863cd4  08 00 00 0a                                      beq #0x863cfc
00863cd8  0c 00 a0 e3                                      mov r0, #0xc
00863cdc  00 10 a0 e3                                      mov r1, #0
00863ce0  58 b2 ea eb                                      bl #0x310648
00863ce4  08 50 80 e5                                      str r5, [r0, #8]
00863ce8  04 30 94 e5                                      ldr r3, [r4, #4]
00863cec  00 40 80 e5                                      str r4, [r0]
00863cf0  04 30 80 e5                                      str r3, [r0, #4]
00863cf4  00 00 83 e5                                      str r0, [r3]
00863cf8  04 00 84 e5                                      str r0, [r4, #4]
00863cfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
