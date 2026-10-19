; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005865d0, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::COctTreeTriangleSelector::SOctTreeNode
; alias: _ZN6glitch5scene24COctTreeTriangleSelector12SOctTreeNodeD1Ev
; demangled: glitch::scene::COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode()
; decoder-mode: arm
005865d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005865d4  00 70 a0 e1                                      mov r7, r0
005865d8  00 60 a0 e1                                      mov r6, r0
005865dc  00 50 a0 e3                                      mov r5, #0
005865e0  0c 40 96 e5                                      ldr r4, [r6, #0xc]
005865e4  01 50 85 e2                                      add r5, r5, #1
005865e8  04 60 86 e2                                      add r6, r6, #4
005865ec  00 00 54 e2                                      subs r0, r4, #0
005865f0  02 00 00 0a                                      beq #0x586600
005865f4  f5 ff ff eb                                      bl #0x5865d0
005865f8  04 00 a0 e1                                      mov r0, r4
005865fc  2b 1f f6 eb                                      bl #0x30e2b0
00586600  08 00 55 e3                                      cmp r5, #8
00586604  f5 ff ff 1a                                      bne #0x5865e0
00586608  00 00 97 e5                                      ldr r0, [r7]
0058660c  00 00 50 e3                                      cmp r0, #0
00586610  00 00 00 0a                                      beq #0x586618
00586614  8d 27 f6 eb                                      bl #0x310450
00586618  07 00 a0 e1                                      mov r0, r7
0058661c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
