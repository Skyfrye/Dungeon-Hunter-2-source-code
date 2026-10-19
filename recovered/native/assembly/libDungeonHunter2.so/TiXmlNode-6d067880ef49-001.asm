; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514228, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode10ToDocumentEv
; demangled: TiXmlNode::ToDocument() const
; decoder-mode: arm
00514228  00 00 a0 e3                                      mov r0, #0
0051422c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514230, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode9ToElementEv
; demangled: TiXmlNode::ToElement() const
; decoder-mode: arm
00514230  00 00 a0 e3                                      mov r0, #0
00514234  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514238, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode9ToCommentEv
; demangled: TiXmlNode::ToComment() const
; decoder-mode: arm
00514238  00 00 a0 e3                                      mov r0, #0
0051423c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514240, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode9ToUnknownEv
; demangled: TiXmlNode::ToUnknown() const
; decoder-mode: arm
00514240  00 00 a0 e3                                      mov r0, #0
00514244  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514248, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode6ToTextEv
; demangled: TiXmlNode::ToText() const
; decoder-mode: arm
00514248  00 00 a0 e3                                      mov r0, #0
0051424c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514250, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode13ToDeclarationEv
; demangled: TiXmlNode::ToDeclaration() const
; decoder-mode: arm
00514250  00 00 a0 e3                                      mov r0, #0
00514254  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514258, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode10ToDocumentEv
; demangled: TiXmlNode::ToDocument()
; decoder-mode: arm
00514258  00 00 a0 e3                                      mov r0, #0
0051425c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514260, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode9ToElementEv
; demangled: TiXmlNode::ToElement()
; decoder-mode: arm
00514260  00 00 a0 e3                                      mov r0, #0
00514264  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514268, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode9ToCommentEv
; demangled: TiXmlNode::ToComment()
; decoder-mode: arm
00514268  00 00 a0 e3                                      mov r0, #0
0051426c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514270, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode9ToUnknownEv
; demangled: TiXmlNode::ToUnknown()
; decoder-mode: arm
00514270  00 00 a0 e3                                      mov r0, #0
00514274  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514278, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode6ToTextEv
; demangled: TiXmlNode::ToText()
; decoder-mode: arm
00514278  00 00 a0 e3                                      mov r0, #0
0051427c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514280, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode13ToDeclarationEv
; demangled: TiXmlNode::ToDeclaration()
; decoder-mode: arm
00514280  00 00 a0 e3                                      mov r0, #0
00514284  1e ff 2f e1                                      bx lr

; FUNCTION 0x005142c8, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode5ClearEv
; demangled: TiXmlNode::Clear()
; decoder-mode: arm
005142c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005142cc  18 30 90 e5                                      ldr r3, [r0, #0x18]
005142d0  00 50 a0 e1                                      mov r5, r0
005142d4  00 00 53 e3                                      cmp r3, #0
005142d8  01 00 00 1a                                      bne #0x5142e4
005142dc  07 00 00 ea                                      b #0x514300
005142e0  04 30 a0 e1                                      mov r3, r4
005142e4  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
005142e8  03 00 a0 e1                                      mov r0, r3
005142ec  00 30 93 e5                                      ldr r3, [r3]
005142f0  0f e0 a0 e1                                      mov lr, pc
005142f4  04 f0 93 e5                                      ldr pc, [r3, #4]
005142f8  00 00 54 e3                                      cmp r4, #0
005142fc  f7 ff ff 1a                                      bne #0x5142e0
00514300  00 30 a0 e3                                      mov r3, #0
00514304  1c 30 85 e5                                      str r3, [r5, #0x1c]
00514308  18 30 85 e5                                      str r3, [r5, #0x18]
0051430c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514310, declared_size=144, range_size=144, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode12ReplaceChildEPS_RKS_
; demangled: TiXmlNode::ReplaceChild(TiXmlNode*, TiXmlNode const&)
; decoder-mode: arm
00514310  30 40 2d e9                                      push {r4, r5, lr}
00514314  10 30 91 e5                                      ldr r3, [r1, #0x10]
00514318  0c d0 4d e2                                      sub sp, sp, #0xc
0051431c  00 40 a0 e1                                      mov r4, r0
00514320  00 00 53 e1                                      cmp r3, r0
00514324  00 50 a0 13                                      movne r5, #0
00514328  02 00 00 0a                                      beq #0x514338
0051432c  05 00 a0 e1                                      mov r0, r5
00514330  0c d0 8d e2                                      add sp, sp, #0xc
00514334  30 80 bd e8                                      pop {r4, r5, pc}
00514338  04 10 8d e5                                      str r1, [sp, #4]
0051433c  02 00 a0 e1                                      mov r0, r2
00514340  00 30 92 e5                                      ldr r3, [r2]
00514344  0f e0 a0 e1                                      mov lr, pc
00514348  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0051434c  00 50 50 e2                                      subs r5, r0, #0
00514350  04 10 9d e5                                      ldr r1, [sp, #4]
00514354  f4 ff ff 0a                                      beq #0x51432c
00514358  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0051435c  01 00 a0 e1                                      mov r0, r1
00514360  3c 30 85 e5                                      str r3, [r5, #0x3c]
00514364  38 30 91 e5                                      ldr r3, [r1, #0x38]
00514368  38 30 85 e5                                      str r3, [r5, #0x38]
0051436c  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
00514370  00 00 53 e3                                      cmp r3, #0
00514374  38 50 83 15                                      strne r5, [r3, #0x38]
00514378  1c 50 84 05                                      streq r5, [r4, #0x1c]
0051437c  38 30 91 e5                                      ldr r3, [r1, #0x38]
00514380  00 00 53 e3                                      cmp r3, #0
00514384  3c 50 83 15                                      strne r5, [r3, #0x3c]
00514388  18 50 84 05                                      streq r5, [r4, #0x18]
0051438c  00 30 91 e5                                      ldr r3, [r1]
00514390  0f e0 a0 e1                                      mov lr, pc
00514394  04 f0 93 e5                                      ldr pc, [r3, #4]
00514398  10 40 85 e5                                      str r4, [r5, #0x10]
0051439c  e2 ff ff ea                                      b #0x51432c

; FUNCTION 0x005143a0, declared_size=96, range_size=96, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode11RemoveChildEPS_
; demangled: TiXmlNode::RemoveChild(TiXmlNode*)
; decoder-mode: arm
005143a0  10 30 91 e5                                      ldr r3, [r1, #0x10]
005143a4  10 40 2d e9                                      push {r4, lr}
005143a8  00 00 53 e1                                      cmp r3, r0
005143ac  01 00 00 0a                                      beq #0x5143b8
005143b0  00 00 a0 e3                                      mov r0, #0
005143b4  10 80 bd e8                                      pop {r4, pc}
005143b8  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
005143bc  00 00 53 e3                                      cmp r3, #0
005143c0  38 20 91 15                                      ldrne r2, [r1, #0x38]
005143c4  38 30 91 05                                      ldreq r3, [r1, #0x38]
005143c8  38 20 83 15                                      strne r2, [r3, #0x38]
005143cc  1c 30 80 05                                      streq r3, [r0, #0x1c]
005143d0  38 30 91 e5                                      ldr r3, [r1, #0x38]
005143d4  00 00 53 e3                                      cmp r3, #0
005143d8  3c 30 91 05                                      ldreq r3, [r1, #0x3c]
005143dc  3c 20 91 15                                      ldrne r2, [r1, #0x3c]
005143e0  18 30 80 05                                      streq r3, [r0, #0x18]
005143e4  3c 20 83 15                                      strne r2, [r3, #0x3c]
005143e8  01 00 a0 e1                                      mov r0, r1
005143ec  00 30 91 e5                                      ldr r3, [r1]
005143f0  0f e0 a0 e1                                      mov lr, pc
005143f4  04 f0 93 e5                                      ldr pc, [r3, #4]
005143f8  01 00 a0 e3                                      mov r0, #1
005143fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514400, declared_size=16, range_size=16, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode15IterateChildrenEPKS_
; demangled: TiXmlNode::IterateChildren(TiXmlNode const*) const
; decoder-mode: arm
00514400  00 00 51 e3                                      cmp r1, #0
00514404  18 00 90 05                                      ldreq r0, [r0, #0x18]
00514408  3c 00 91 15                                      ldrne r0, [r1, #0x3c]
0051440c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514410, declared_size=84, range_size=84, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode17FirstChildElementEv
; demangled: TiXmlNode::FirstChildElement() const
; decoder-mode: arm
00514410  10 40 2d e9                                      push {r4, lr}
00514414  18 40 90 e5                                      ldr r4, [r0, #0x18]
00514418  00 00 54 e3                                      cmp r4, #0
0051441c  03 00 00 1a                                      bne #0x514430
00514420  0d 00 00 ea                                      b #0x51445c
00514424  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
00514428  00 00 54 e3                                      cmp r4, #0
0051442c  0a 00 00 0a                                      beq #0x51445c
00514430  00 30 94 e5                                      ldr r3, [r4]
00514434  04 00 a0 e1                                      mov r0, r4
00514438  0f e0 a0 e1                                      mov lr, pc
0051443c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514440  00 00 50 e3                                      cmp r0, #0
00514444  f6 ff ff 0a                                      beq #0x514424
00514448  04 00 a0 e1                                      mov r0, r4
0051444c  00 30 94 e5                                      ldr r3, [r4]
00514450  0f e0 a0 e1                                      mov lr, pc
00514454  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514458  10 80 bd e8                                      pop {r4, pc}
0051445c  00 00 a0 e3                                      mov r0, #0
00514460  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514464, declared_size=84, range_size=84, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode18NextSiblingElementEv
; demangled: TiXmlNode::NextSiblingElement() const
; decoder-mode: arm
00514464  10 40 2d e9                                      push {r4, lr}
00514468  3c 40 90 e5                                      ldr r4, [r0, #0x3c]
0051446c  00 00 54 e3                                      cmp r4, #0
00514470  03 00 00 1a                                      bne #0x514484
00514474  0d 00 00 ea                                      b #0x5144b0
00514478  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
0051447c  00 00 54 e3                                      cmp r4, #0
00514480  0a 00 00 0a                                      beq #0x5144b0
00514484  00 30 94 e5                                      ldr r3, [r4]
00514488  04 00 a0 e1                                      mov r0, r4
0051448c  0f e0 a0 e1                                      mov lr, pc
00514490  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514494  00 00 50 e3                                      cmp r0, #0
00514498  f6 ff ff 0a                                      beq #0x514478
0051449c  04 00 a0 e1                                      mov r0, r4
005144a0  00 30 94 e5                                      ldr r3, [r4]
005144a4  0f e0 a0 e1                                      mov lr, pc
005144a8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005144ac  10 80 bd e8                                      pop {r4, pc}
005144b0  00 00 a0 e3                                      mov r0, #0
005144b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005144b8, declared_size=80, range_size=80, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode11GetDocumentEv
; demangled: TiXmlNode::GetDocument() const
; decoder-mode: arm
005144b8  10 40 2d e9                                      push {r4, lr}
005144bc  00 40 50 e2                                      subs r4, r0, #0
005144c0  03 00 00 1a                                      bne #0x5144d4
005144c4  0d 00 00 ea                                      b #0x514500
005144c8  10 40 94 e5                                      ldr r4, [r4, #0x10]
005144cc  00 00 54 e3                                      cmp r4, #0
005144d0  0a 00 00 0a                                      beq #0x514500
005144d4  00 30 94 e5                                      ldr r3, [r4]
005144d8  04 00 a0 e1                                      mov r0, r4
005144dc  0f e0 a0 e1                                      mov lr, pc
005144e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005144e4  00 00 50 e3                                      cmp r0, #0
005144e8  f6 ff ff 0a                                      beq #0x5144c8
005144ec  04 00 a0 e1                                      mov r0, r4
005144f0  00 30 94 e5                                      ldr r3, [r4]
005144f4  0f e0 a0 e1                                      mov lr, pc
005144f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005144fc  10 80 bd e8                                      pop {r4, pc}
00514500  00 00 a0 e3                                      mov r0, #0
00514504  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514a30, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNodeD1Ev
; demangled: TiXmlNode::~TiXmlNode()
; decoder-mode: arm
00514a30  70 40 2d e9                                      push {r4, r5, r6, lr}
00514a34  54 20 9f e5                                      ldr r2, [pc, #0x54]
00514a38  54 10 9f e5                                      ldr r1, [pc, #0x54]
00514a3c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00514a40  02 20 8f e0                                      add r2, pc, r2
00514a44  01 10 92 e7                                      ldr r1, [r2, r1]
00514a48  00 00 53 e3                                      cmp r3, #0
00514a4c  00 50 a0 e1                                      mov r5, r0
00514a50  08 10 81 e2                                      add r1, r1, #8
00514a54  00 10 80 e5                                      str r1, [r0]
00514a58  01 00 00 1a                                      bne #0x514a64
00514a5c  07 00 00 ea                                      b #0x514a80
00514a60  04 30 a0 e1                                      mov r3, r4
00514a64  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
00514a68  03 00 a0 e1                                      mov r0, r3
00514a6c  00 30 93 e5                                      ldr r3, [r3]
00514a70  0f e0 a0 e1                                      mov lr, pc
00514a74  04 f0 93 e5                                      ldr pc, [r3, #4]
00514a78  00 00 54 e3                                      cmp r4, #0
00514a7c  f7 ff ff 1a                                      bne #0x514a60
00514a80  20 00 85 e2                                      add r0, r5, #0x20
00514a84  c8 fb f7 eb                                      bl #0x3139ac
00514a88  05 00 a0 e1                                      mov r0, r5
00514a8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00514a90  50 00 48 00 98 3d 00 00                          .byte 0x50, 0x00, 0x48, 0x00, 0x98, 0x3d, 0x00, 0x00

; FUNCTION 0x00514a98, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNodeD0Ev
; demangled: TiXmlNode::~TiXmlNode()
; decoder-mode: arm
00514a98  10 40 2d e9                                      push {r4, lr}
00514a9c  00 40 a0 e1                                      mov r4, r0
00514aa0  e2 ff ff eb                                      bl #0x514a30
00514aa4  04 00 a0 e1                                      mov r0, r4
00514aa8  64 ee f7 eb                                      bl #0x310440
00514aac  04 00 a0 e1                                      mov r0, r4
00514ab0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514ab4, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNodeD2Ev
; demangled: TiXmlNode::~TiXmlNode()
; decoder-mode: arm
00514ab4  70 40 2d e9                                      push {r4, r5, r6, lr}
00514ab8  54 20 9f e5                                      ldr r2, [pc, #0x54]
00514abc  54 10 9f e5                                      ldr r1, [pc, #0x54]
00514ac0  18 30 90 e5                                      ldr r3, [r0, #0x18]
00514ac4  02 20 8f e0                                      add r2, pc, r2
00514ac8  01 10 92 e7                                      ldr r1, [r2, r1]
00514acc  00 00 53 e3                                      cmp r3, #0
00514ad0  00 50 a0 e1                                      mov r5, r0
00514ad4  08 10 81 e2                                      add r1, r1, #8
00514ad8  00 10 80 e5                                      str r1, [r0]
00514adc  01 00 00 1a                                      bne #0x514ae8
00514ae0  07 00 00 ea                                      b #0x514b04
00514ae4  04 30 a0 e1                                      mov r3, r4
00514ae8  3c 40 93 e5                                      ldr r4, [r3, #0x3c]
00514aec  03 00 a0 e1                                      mov r0, r3
00514af0  00 30 93 e5                                      ldr r3, [r3]
00514af4  0f e0 a0 e1                                      mov lr, pc
00514af8  04 f0 93 e5                                      ldr pc, [r3, #4]
00514afc  00 00 54 e3                                      cmp r4, #0
00514b00  f7 ff ff 1a                                      bne #0x514ae4
00514b04  20 00 85 e2                                      add r0, r5, #0x20
00514b08  a7 fb f7 eb                                      bl #0x3139ac
00514b0c  05 00 a0 e1                                      mov r0, r5
00514b10  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00514b14  cc ff 47 00 98 3d 00 00                          .byte 0xcc, 0xff, 0x47, 0x00, 0x98, 0x3d, 0x00, 0x00

; FUNCTION 0x00514c88, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode15PreviousSiblingEPKc
; demangled: TiXmlNode::PreviousSibling(char const*) const
; decoder-mode: arm
00514c88  70 40 2d e9                                      push {r4, r5, r6, lr}
00514c8c  38 40 90 e5                                      ldr r4, [r0, #0x38]
00514c90  01 50 a0 e1                                      mov r5, r1
00514c94  00 00 54 e3                                      cmp r4, #0
00514c98  03 00 00 1a                                      bne #0x514cac
00514c9c  07 00 00 ea                                      b #0x514cc0
00514ca0  38 40 94 e5                                      ldr r4, [r4, #0x38]
00514ca4  00 00 54 e3                                      cmp r4, #0
00514ca8  04 00 00 0a                                      beq #0x514cc0
00514cac  34 00 94 e5                                      ldr r0, [r4, #0x34]
00514cb0  05 10 a0 e1                                      mov r1, r5
00514cb4  98 e5 f7 eb                                      bl #0x30e31c
00514cb8  00 00 50 e3                                      cmp r0, #0
00514cbc  f7 ff ff 1a                                      bne #0x514ca0
00514cc0  04 00 a0 e1                                      mov r0, r4
00514cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514cc8, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode11NextSiblingEPKc
; demangled: TiXmlNode::NextSibling(char const*) const
; decoder-mode: arm
00514cc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00514ccc  3c 40 90 e5                                      ldr r4, [r0, #0x3c]
00514cd0  01 50 a0 e1                                      mov r5, r1
00514cd4  00 00 54 e3                                      cmp r4, #0
00514cd8  03 00 00 1a                                      bne #0x514cec
00514cdc  07 00 00 ea                                      b #0x514d00
00514ce0  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
00514ce4  00 00 54 e3                                      cmp r4, #0
00514ce8  04 00 00 0a                                      beq #0x514d00
00514cec  34 00 94 e5                                      ldr r0, [r4, #0x34]
00514cf0  05 10 a0 e1                                      mov r1, r5
00514cf4  88 e5 f7 eb                                      bl #0x30e31c
00514cf8  00 00 50 e3                                      cmp r0, #0
00514cfc  f7 ff ff 1a                                      bne #0x514ce0
00514d00  04 00 a0 e1                                      mov r0, r4
00514d04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514d08, declared_size=80, range_size=80, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode18NextSiblingElementEPKc
; demangled: TiXmlNode::NextSiblingElement(char const*) const
; decoder-mode: arm
00514d08  70 40 2d e9                                      push {r4, r5, r6, lr}
00514d0c  01 50 a0 e1                                      mov r5, r1
00514d10  07 00 00 ea                                      b #0x514d34
00514d14  00 30 94 e5                                      ldr r3, [r4]
00514d18  04 00 a0 e1                                      mov r0, r4
00514d1c  0f e0 a0 e1                                      mov lr, pc
00514d20  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514d24  00 00 50 e3                                      cmp r0, #0
00514d28  05 10 a0 e1                                      mov r1, r5
00514d2c  04 00 a0 e1                                      mov r0, r4
00514d30  04 00 00 1a                                      bne #0x514d48
00514d34  e3 ff ff eb                                      bl #0x514cc8
00514d38  00 40 50 e2                                      subs r4, r0, #0
00514d3c  f4 ff ff 1a                                      bne #0x514d14
00514d40  00 00 a0 e3                                      mov r0, #0
00514d44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00514d48  00 30 94 e5                                      ldr r3, [r4]
00514d4c  0f e0 a0 e1                                      mov lr, pc
00514d50  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514d54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514d58, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode9LastChildEPKc
; demangled: TiXmlNode::LastChild(char const*) const
; decoder-mode: arm
00514d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00514d5c  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
00514d60  01 50 a0 e1                                      mov r5, r1
00514d64  00 00 54 e3                                      cmp r4, #0
00514d68  03 00 00 1a                                      bne #0x514d7c
00514d6c  07 00 00 ea                                      b #0x514d90
00514d70  38 40 94 e5                                      ldr r4, [r4, #0x38]
00514d74  00 00 54 e3                                      cmp r4, #0
00514d78  04 00 00 0a                                      beq #0x514d90
00514d7c  34 00 94 e5                                      ldr r0, [r4, #0x34]
00514d80  05 10 a0 e1                                      mov r1, r5
00514d84  64 e5 f7 eb                                      bl #0x30e31c
00514d88  00 00 50 e3                                      cmp r0, #0
00514d8c  f7 ff ff 1a                                      bne #0x514d70
00514d90  04 00 a0 e1                                      mov r0, r4
00514d94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514d98, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode10FirstChildEPKc
; demangled: TiXmlNode::FirstChild(char const*) const
; decoder-mode: arm
00514d98  70 40 2d e9                                      push {r4, r5, r6, lr}
00514d9c  18 40 90 e5                                      ldr r4, [r0, #0x18]
00514da0  01 50 a0 e1                                      mov r5, r1
00514da4  00 00 54 e3                                      cmp r4, #0
00514da8  03 00 00 1a                                      bne #0x514dbc
00514dac  07 00 00 ea                                      b #0x514dd0
00514db0  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
00514db4  00 00 54 e3                                      cmp r4, #0
00514db8  04 00 00 0a                                      beq #0x514dd0
00514dbc  34 00 94 e5                                      ldr r0, [r4, #0x34]
00514dc0  05 10 a0 e1                                      mov r1, r5
00514dc4  54 e5 f7 eb                                      bl #0x30e31c
00514dc8  00 00 50 e3                                      cmp r0, #0
00514dcc  f7 ff ff 1a                                      bne #0x514db0
00514dd0  04 00 a0 e1                                      mov r0, r4
00514dd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514e90, declared_size=92, range_size=92, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode17FirstChildElementEPKc
; demangled: TiXmlNode::FirstChildElement(char const*) const
; decoder-mode: arm
00514e90  70 40 2d e9                                      push {r4, r5, r6, lr}
00514e94  01 50 a0 e1                                      mov r5, r1
00514e98  be ff ff eb                                      bl #0x514d98
00514e9c  00 40 50 e2                                      subs r4, r0, #0
00514ea0  03 00 00 1a                                      bne #0x514eb4
00514ea4  0e 00 00 ea                                      b #0x514ee4
00514ea8  86 ff ff eb                                      bl #0x514cc8
00514eac  00 40 50 e2                                      subs r4, r0, #0
00514eb0  0b 00 00 0a                                      beq #0x514ee4
00514eb4  00 30 94 e5                                      ldr r3, [r4]
00514eb8  04 00 a0 e1                                      mov r0, r4
00514ebc  0f e0 a0 e1                                      mov lr, pc
00514ec0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514ec4  00 00 50 e3                                      cmp r0, #0
00514ec8  05 10 a0 e1                                      mov r1, r5
00514ecc  04 00 a0 e1                                      mov r0, r4
00514ed0  f4 ff ff 0a                                      beq #0x514ea8
00514ed4  00 30 94 e5                                      ldr r3, [r4]
00514ed8  0f e0 a0 e1                                      mov lr, pc
00514edc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00514ee0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00514ee4  00 00 a0 e3                                      mov r0, #0
00514ee8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514fa4, declared_size=20, range_size=20, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode15IterateChildrenEPKcPKS_
; demangled: TiXmlNode::IterateChildren(char const*, TiXmlNode const*) const
; decoder-mode: arm
00514fa4  00 00 52 e3                                      cmp r2, #0
00514fa8  01 00 00 0a                                      beq #0x514fb4
00514fac  02 00 a0 e1                                      mov r0, r2
00514fb0  44 ff ff ea                                      b #0x514cc8
00514fb4  77 ff ff ea                                      b #0x514d98

; FUNCTION 0x0051581c, declared_size=164, range_size=164, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode16InsertAfterChildEPS_RKS_
; demangled: TiXmlNode::InsertAfterChild(TiXmlNode*, TiXmlNode const&)
; decoder-mode: arm
0051581c  70 40 2d e9                                      push {r4, r5, r6, lr}
00515820  00 50 51 e2                                      subs r5, r1, #0
00515824  08 d0 4d e2                                      sub sp, sp, #8
00515828  02 00 00 1a                                      bne #0x515838
0051582c  00 00 a0 e3                                      mov r0, #0
00515830  08 d0 8d e2                                      add sp, sp, #8
00515834  70 80 bd e8                                      pop {r4, r5, r6, pc}
00515838  10 60 95 e5                                      ldr r6, [r5, #0x10]
0051583c  00 00 56 e1                                      cmp r6, r0
00515840  f9 ff ff 1a                                      bne #0x51582c
00515844  14 40 92 e5                                      ldr r4, [r2, #0x14]
00515848  00 00 54 e3                                      cmp r4, #0
0051584c  0b 00 00 1a                                      bne #0x515880
00515850  18 fb ff eb                                      bl #0x5144b8
00515854  00 00 50 e3                                      cmp r0, #0
00515858  f3 ff ff 0a                                      beq #0x51582c
0051585c  06 00 a0 e1                                      mov r0, r6
00515860  14 fb ff eb                                      bl #0x5144b8
00515864  10 10 a0 e3                                      mov r1, #0x10
00515868  04 20 a0 e1                                      mov r2, r4
0051586c  04 30 a0 e1                                      mov r3, r4
00515870  00 40 8d e5                                      str r4, [sp]
00515874  1b 0f 00 eb                                      bl #0x5194e8
00515878  04 00 a0 e1                                      mov r0, r4
0051587c  eb ff ff ea                                      b #0x515830
00515880  02 00 a0 e1                                      mov r0, r2
00515884  00 30 92 e5                                      ldr r3, [r2]
00515888  0f e0 a0 e1                                      mov lr, pc
0051588c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00515890  00 00 50 e3                                      cmp r0, #0
00515894  e5 ff ff 0a                                      beq #0x515830
00515898  10 60 80 e5                                      str r6, [r0, #0x10]
0051589c  38 50 80 e5                                      str r5, [r0, #0x38]
005158a0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
005158a4  3c 30 80 e5                                      str r3, [r0, #0x3c]
005158a8  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
005158ac  00 00 53 e3                                      cmp r3, #0
005158b0  38 00 83 15                                      strne r0, [r3, #0x38]
005158b4  1c 00 86 05                                      streq r0, [r6, #0x1c]
005158b8  3c 00 85 e5                                      str r0, [r5, #0x3c]
005158bc  db ff ff ea                                      b #0x515830

; FUNCTION 0x005158c0, declared_size=164, range_size=164, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode17InsertBeforeChildEPS_RKS_
; demangled: TiXmlNode::InsertBeforeChild(TiXmlNode*, TiXmlNode const&)
; decoder-mode: arm
005158c0  70 40 2d e9                                      push {r4, r5, r6, lr}
005158c4  00 50 51 e2                                      subs r5, r1, #0
005158c8  08 d0 4d e2                                      sub sp, sp, #8
005158cc  02 00 00 1a                                      bne #0x5158dc
005158d0  00 00 a0 e3                                      mov r0, #0
005158d4  08 d0 8d e2                                      add sp, sp, #8
005158d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005158dc  10 60 95 e5                                      ldr r6, [r5, #0x10]
005158e0  00 00 56 e1                                      cmp r6, r0
005158e4  f9 ff ff 1a                                      bne #0x5158d0
005158e8  14 40 92 e5                                      ldr r4, [r2, #0x14]
005158ec  00 00 54 e3                                      cmp r4, #0
005158f0  0b 00 00 1a                                      bne #0x515924
005158f4  ef fa ff eb                                      bl #0x5144b8
005158f8  00 00 50 e3                                      cmp r0, #0
005158fc  f3 ff ff 0a                                      beq #0x5158d0
00515900  06 00 a0 e1                                      mov r0, r6
00515904  eb fa ff eb                                      bl #0x5144b8
00515908  10 10 a0 e3                                      mov r1, #0x10
0051590c  04 20 a0 e1                                      mov r2, r4
00515910  04 30 a0 e1                                      mov r3, r4
00515914  00 40 8d e5                                      str r4, [sp]
00515918  f2 0e 00 eb                                      bl #0x5194e8
0051591c  04 00 a0 e1                                      mov r0, r4
00515920  eb ff ff ea                                      b #0x5158d4
00515924  02 00 a0 e1                                      mov r0, r2
00515928  00 30 92 e5                                      ldr r3, [r2]
0051592c  0f e0 a0 e1                                      mov lr, pc
00515930  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00515934  00 00 50 e3                                      cmp r0, #0
00515938  e5 ff ff 0a                                      beq #0x5158d4
0051593c  10 60 80 e5                                      str r6, [r0, #0x10]
00515940  3c 50 80 e5                                      str r5, [r0, #0x3c]
00515944  38 30 95 e5                                      ldr r3, [r5, #0x38]
00515948  38 30 80 e5                                      str r3, [r0, #0x38]
0051594c  38 30 95 e5                                      ldr r3, [r5, #0x38]
00515950  00 00 53 e3                                      cmp r3, #0
00515954  3c 00 83 15                                      strne r0, [r3, #0x3c]
00515958  18 00 86 05                                      streq r0, [r6, #0x18]
0051595c  38 00 85 e5                                      str r0, [r5, #0x38]
00515960  db ff ff ea                                      b #0x5158d4

; FUNCTION 0x00515964, declared_size=144, range_size=144, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode12LinkEndChildEPS_
; demangled: TiXmlNode::LinkEndChild(TiXmlNode*)
; decoder-mode: arm
00515964  30 40 2d e9                                      push {r4, r5, lr}
00515968  14 40 91 e5                                      ldr r4, [r1, #0x14]
0051596c  0c d0 4d e2                                      sub sp, sp, #0xc
00515970  00 50 a0 e1                                      mov r5, r0
00515974  00 00 54 e3                                      cmp r4, #0
00515978  0c 00 00 0a                                      beq #0x5159b0
0051597c  10 00 81 e5                                      str r0, [r1, #0x10]
00515980  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00515984  00 20 a0 e3                                      mov r2, #0
00515988  3c 20 81 e5                                      str r2, [r1, #0x3c]
0051598c  38 30 81 e5                                      str r3, [r1, #0x38]
00515990  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00515994  02 00 53 e1                                      cmp r3, r2
00515998  3c 10 83 15                                      strne r1, [r3, #0x3c]
0051599c  18 10 80 05                                      streq r1, [r0, #0x18]
005159a0  1c 10 80 e5                                      str r1, [r0, #0x1c]
005159a4  01 00 a0 e1                                      mov r0, r1
005159a8  0c d0 8d e2                                      add sp, sp, #0xc
005159ac  30 80 bd e8                                      pop {r4, r5, pc}
005159b0  01 00 a0 e1                                      mov r0, r1
005159b4  00 30 91 e5                                      ldr r3, [r1]
005159b8  0f e0 a0 e1                                      mov lr, pc
005159bc  04 f0 93 e5                                      ldr pc, [r3, #4]
005159c0  05 00 a0 e1                                      mov r0, r5
005159c4  bb fa ff eb                                      bl #0x5144b8
005159c8  00 10 50 e2                                      subs r1, r0, #0
005159cc  f4 ff ff 0a                                      beq #0x5159a4
005159d0  05 00 a0 e1                                      mov r0, r5
005159d4  b7 fa ff eb                                      bl #0x5144b8
005159d8  10 10 a0 e3                                      mov r1, #0x10
005159dc  04 20 a0 e1                                      mov r2, r4
005159e0  04 30 a0 e1                                      mov r3, r4
005159e4  00 40 8d e5                                      str r4, [sp]
005159e8  be 0e 00 eb                                      bl #0x5194e8
005159ec  04 10 a0 e1                                      mov r1, r4
005159f0  eb ff ff ea                                      b #0x5159a4

; FUNCTION 0x005159f4, declared_size=120, range_size=120, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode14InsertEndChildERKS_
; demangled: TiXmlNode::InsertEndChild(TiXmlNode const&)
; decoder-mode: arm
005159f4  30 40 2d e9                                      push {r4, r5, lr}
005159f8  14 40 91 e5                                      ldr r4, [r1, #0x14]
005159fc  0c d0 4d e2                                      sub sp, sp, #0xc
00515a00  00 50 a0 e1                                      mov r5, r0
00515a04  00 00 54 e3                                      cmp r4, #0
00515a08  05 00 00 1a                                      bne #0x515a24
00515a0c  a9 fa ff eb                                      bl #0x5144b8
00515a10  00 00 50 e3                                      cmp r0, #0
00515a14  0c 00 00 1a                                      bne #0x515a4c
00515a18  00 00 a0 e3                                      mov r0, #0
00515a1c  0c d0 8d e2                                      add sp, sp, #0xc
00515a20  30 80 bd e8                                      pop {r4, r5, pc}
00515a24  01 00 a0 e1                                      mov r0, r1
00515a28  00 30 91 e5                                      ldr r3, [r1]
00515a2c  0f e0 a0 e1                                      mov lr, pc
00515a30  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00515a34  00 10 50 e2                                      subs r1, r0, #0
00515a38  f6 ff ff 0a                                      beq #0x515a18
00515a3c  05 00 a0 e1                                      mov r0, r5
00515a40  0c d0 8d e2                                      add sp, sp, #0xc
00515a44  30 40 bd e8                                      pop {r4, r5, lr}
00515a48  c5 ff ff ea                                      b #0x515964
00515a4c  05 00 a0 e1                                      mov r0, r5
00515a50  98 fa ff eb                                      bl #0x5144b8
00515a54  04 20 a0 e1                                      mov r2, r4
00515a58  10 10 a0 e3                                      mov r1, #0x10
00515a5c  04 30 a0 e1                                      mov r3, r4
00515a60  00 40 8d e5                                      str r4, [sp]
00515a64  9f 0e 00 eb                                      bl #0x5194e8
00515a68  ea ff ff ea                                      b #0x515a18

; FUNCTION 0x00515d98, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNodeC1ENS_8NodeTypeE
; demangled: TiXmlNode::TiXmlNode(TiXmlNode::NodeType)
; decoder-mode: arm
00515d98  70 20 9f e5                                      ldr r2, [pc, #0x70]
00515d9c  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00515da0  70 40 2d e9                                      push {r4, r5, r6, lr}
00515da4  02 20 8f e0                                      add r2, pc, r2
00515da8  0c c0 92 e7                                      ldr ip, [r2, ip]
00515dac  00 40 a0 e1                                      mov r4, r0
00515db0  00 50 a0 e3                                      mov r5, #0
00515db4  00 30 a0 e1                                      mov r3, r0
00515db8  08 c0 8c e2                                      add ip, ip, #8
00515dbc  00 00 e0 e3                                      mvn r0, #0
00515dc0  04 00 84 e5                                      str r0, [r4, #4]
00515dc4  08 00 84 e5                                      str r0, [r4, #8]
00515dc8  0c 50 84 e5                                      str r5, [r4, #0xc]
00515dcc  20 c0 83 e4                                      str ip, [r3], #0x20
00515dd0  01 60 a0 e1                                      mov r6, r1
00515dd4  03 00 a0 e1                                      mov r0, r3
00515dd8  30 30 84 e5                                      str r3, [r4, #0x30]
00515ddc  34 30 84 e5                                      str r3, [r4, #0x34]
00515de0  10 10 a0 e3                                      mov r1, #0x10
00515de4  24 ee f7 eb                                      bl #0x31167c
00515de8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00515dec  04 00 a0 e1                                      mov r0, r4
00515df0  00 50 c3 e5                                      strb r5, [r3]
00515df4  14 60 84 e5                                      str r6, [r4, #0x14]
00515df8  3c 50 84 e5                                      str r5, [r4, #0x3c]
00515dfc  10 50 84 e5                                      str r5, [r4, #0x10]
00515e00  18 50 84 e5                                      str r5, [r4, #0x18]
00515e04  1c 50 84 e5                                      str r5, [r4, #0x1c]
00515e08  38 50 84 e5                                      str r5, [r4, #0x38]
00515e0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515e10  ec ec 47 00 98 3d 00 00                          .byte 0xec, 0xec, 0x47, 0x00, 0x98, 0x3d, 0x00, 0x00

; FUNCTION 0x00515e18, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNodeC2ENS_8NodeTypeE
; demangled: TiXmlNode::TiXmlNode(TiXmlNode::NodeType)
; decoder-mode: arm
00515e18  70 20 9f e5                                      ldr r2, [pc, #0x70]
00515e1c  70 c0 9f e5                                      ldr ip, [pc, #0x70]
00515e20  70 40 2d e9                                      push {r4, r5, r6, lr}
00515e24  02 20 8f e0                                      add r2, pc, r2
00515e28  0c c0 92 e7                                      ldr ip, [r2, ip]
00515e2c  00 40 a0 e1                                      mov r4, r0
00515e30  00 50 a0 e3                                      mov r5, #0
00515e34  00 30 a0 e1                                      mov r3, r0
00515e38  08 c0 8c e2                                      add ip, ip, #8
00515e3c  00 00 e0 e3                                      mvn r0, #0
00515e40  04 00 84 e5                                      str r0, [r4, #4]
00515e44  08 00 84 e5                                      str r0, [r4, #8]
00515e48  0c 50 84 e5                                      str r5, [r4, #0xc]
00515e4c  20 c0 83 e4                                      str ip, [r3], #0x20
00515e50  01 60 a0 e1                                      mov r6, r1
00515e54  03 00 a0 e1                                      mov r0, r3
00515e58  30 30 84 e5                                      str r3, [r4, #0x30]
00515e5c  34 30 84 e5                                      str r3, [r4, #0x34]
00515e60  10 10 a0 e3                                      mov r1, #0x10
00515e64  04 ee f7 eb                                      bl #0x31167c
00515e68  30 30 94 e5                                      ldr r3, [r4, #0x30]
00515e6c  04 00 a0 e1                                      mov r0, r4
00515e70  00 50 c3 e5                                      strb r5, [r3]
00515e74  14 60 84 e5                                      str r6, [r4, #0x14]
00515e78  3c 50 84 e5                                      str r5, [r4, #0x3c]
00515e7c  10 50 84 e5                                      str r5, [r4, #0x10]
00515e80  18 50 84 e5                                      str r5, [r4, #0x18]
00515e84  1c 50 84 e5                                      str r5, [r4, #0x1c]
00515e88  38 50 84 e5                                      str r5, [r4, #0x38]
00515e8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515e90  6c ec 47 00 98 3d 00 00                          .byte 0x6c, 0xec, 0x47, 0x00, 0x98, 0x3d, 0x00, 0x00

; FUNCTION 0x00516954, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlNode
; alias: _ZNK9TiXmlNode6CopyToEPS_
; demangled: TiXmlNode::CopyTo(TiXmlNode*) const
; decoder-mode: arm
00516954  70 40 2d e9                                      push {r4, r5, r6, lr}
00516958  34 60 90 e5                                      ldr r6, [r0, #0x34]
0051695c  00 50 a0 e1                                      mov r5, r0
00516960  01 40 a0 e1                                      mov r4, r1
00516964  06 00 a0 e1                                      mov r0, r6
00516968  39 dd f7 eb                                      bl #0x30de54
0051696c  06 10 a0 e1                                      mov r1, r6
00516970  00 20 86 e0                                      add r2, r6, r0
00516974  20 00 84 e2                                      add r0, r4, #0x20
00516978  18 e8 f7 eb                                      bl #0x3109e0
0051697c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00516980  0c 30 84 e5                                      str r3, [r4, #0xc]
00516984  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00519b10, declared_size=544, range_size=544, mode=arm
; class-group: TiXmlNode
; alias: _ZN9TiXmlNode8IdentifyEPKc13TiXmlEncoding
; demangled: TiXmlNode::Identify(char const*, TiXmlEncoding)
; decoder-mode: arm
00519b10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00519b14  00 60 a0 e1                                      mov r6, r0
00519b18  08 d0 4d e2                                      sub sp, sp, #8
00519b1c  01 00 a0 e1                                      mov r0, r1
00519b20  02 10 a0 e1                                      mov r1, r2
00519b24  02 50 a0 e1                                      mov r5, r2
00519b28  16 fb ff eb                                      bl #0x518788
00519b2c  dc 41 9f e5                                      ldr r4, [pc, #0x1dc]
00519b30  00 70 50 e2                                      subs r7, r0, #0
00519b34  04 40 8f e0                                      add r4, pc, r4
00519b38  03 00 00 1a                                      bne #0x519b4c
00519b3c  00 50 a0 e3                                      mov r5, #0
00519b40  05 00 a0 e1                                      mov r0, r5
00519b44  08 d0 8d e2                                      add sp, sp, #8
00519b48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00519b4c  00 30 d7 e5                                      ldrb r3, [r7]
00519b50  00 00 53 e3                                      cmp r3, #0
00519b54  f8 ff ff 0a                                      beq #0x519b3c
00519b58  3c 00 53 e3                                      cmp r3, #0x3c
00519b5c  f6 ff ff 1a                                      bne #0x519b3c
00519b60  06 00 a0 e1                                      mov r0, r6
00519b64  53 ea ff eb                                      bl #0x5144b8
00519b68  05 10 a0 e1                                      mov r1, r5
00519b6c  00 90 a0 e1                                      mov sb, r0
00519b70  07 00 a0 e1                                      mov r0, r7
00519b74  03 fb ff eb                                      bl #0x518788
00519b78  00 70 50 e2                                      subs r7, r0, #0
00519b7c  ee ff ff 0a                                      beq #0x519b3c
00519b80  d0 30 d7 e1                                      ldrsb r3, [r7]
00519b84  00 00 53 e3                                      cmp r3, #0
00519b88  eb ff ff 0a                                      beq #0x519b3c
00519b8c  80 11 9f e5                                      ldr r1, [pc, #0x180]
00519b90  01 20 a0 e3                                      mov r2, #1
00519b94  05 30 a0 e1                                      mov r3, r5
00519b98  01 10 8f e0                                      add r1, pc, r1
00519b9c  3e fb ff eb                                      bl #0x51889c
00519ba0  00 80 50 e2                                      subs r8, r0, #0
00519ba4  10 00 00 0a                                      beq #0x519bec
00519ba8  00 10 a0 e3                                      mov r1, #0
00519bac  88 00 a0 e3                                      mov r0, #0x88
00519bb0  6e da f7 eb                                      bl #0x310570
00519bb4  00 50 a0 e1                                      mov r5, r0
00519bb8  ea f0 ff eb                                      bl #0x515f68
00519bbc  00 00 55 e3                                      cmp r5, #0
00519bc0  10 60 85 15                                      strne r6, [r5, #0x10]
00519bc4  dd ff ff 1a                                      bne #0x519b40
00519bc8  00 00 59 e3                                      cmp sb, #0
00519bcc  db ff ff 0a                                      beq #0x519b40
00519bd0  09 00 a0 e1                                      mov r0, sb
00519bd4  03 10 a0 e3                                      mov r1, #3
00519bd8  05 20 a0 e1                                      mov r2, r5
00519bdc  05 30 a0 e1                                      mov r3, r5
00519be0  00 50 8d e5                                      str r5, [sp]
00519be4  3f fe ff eb                                      bl #0x5194e8
00519be8  d4 ff ff ea                                      b #0x519b40
00519bec  24 11 9f e5                                      ldr r1, [pc, #0x124]
00519bf0  07 00 a0 e1                                      mov r0, r7
00519bf4  08 20 a0 e1                                      mov r2, r8
00519bf8  01 10 8f e0                                      add r1, pc, r1
00519bfc  05 30 a0 e1                                      mov r3, r5
00519c00  25 fb ff eb                                      bl #0x51889c
00519c04  00 a0 50 e2                                      subs sl, r0, #0
00519c08  0b 00 00 0a                                      beq #0x519c3c
00519c0c  08 10 a0 e1                                      mov r1, r8
00519c10  40 00 a0 e3                                      mov r0, #0x40
00519c14  55 da f7 eb                                      bl #0x310570
00519c18  02 10 a0 e3                                      mov r1, #2
00519c1c  00 70 a0 e1                                      mov r7, r0
00519c20  7c f0 ff eb                                      bl #0x515e18
00519c24  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00519c28  07 50 a0 e1                                      mov r5, r7
00519c2c  03 30 94 e7                                      ldr r3, [r4, r3]
00519c30  08 30 83 e2                                      add r3, r3, #8
00519c34  00 30 87 e5                                      str r3, [r7]
00519c38  df ff ff ea                                      b #0x519bbc
00519c3c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00519c40  07 00 a0 e1                                      mov r0, r7
00519c44  0a 20 a0 e1                                      mov r2, sl
00519c48  01 10 8f e0                                      add r1, pc, r1
00519c4c  05 30 a0 e1                                      mov r3, r5
00519c50  11 fb ff eb                                      bl #0x51889c
00519c54  00 80 50 e2                                      subs r8, r0, #0
00519c58  07 00 00 0a                                      beq #0x519c7c
00519c5c  0a 10 a0 e1                                      mov r1, sl
00519c60  44 00 a0 e3                                      mov r0, #0x44
00519c64  41 da f7 eb                                      bl #0x310570
00519c68  00 50 a0 e1                                      mov r5, r0
00519c6c  03 fd ff eb                                      bl #0x519080
00519c70  01 30 a0 e3                                      mov r3, #1
00519c74  40 30 c5 e5                                      strb r3, [r5, #0x40]
00519c78  cf ff ff ea                                      b #0x519bbc
00519c7c  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00519c80  07 00 a0 e1                                      mov r0, r7
00519c84  08 20 a0 e1                                      mov r2, r8
00519c88  01 10 8f e0                                      add r1, pc, r1
00519c8c  05 30 a0 e1                                      mov r3, r5
00519c90  01 fb ff eb                                      bl #0x51889c
00519c94  00 00 50 e3                                      cmp r0, #0
00519c98  08 10 a0 11                                      movne r1, r8
00519c9c  08 00 00 1a                                      bne #0x519cc4
00519ca0  05 10 a0 e1                                      mov r1, r5
00519ca4  01 00 d7 e5                                      ldrb r0, [r7, #1]
00519ca8  3e fa ff eb                                      bl #0x5185a8
00519cac  00 00 50 e3                                      cmp r0, #0
00519cb0  0e 00 00 1a                                      bne #0x519cf0
00519cb4  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
00519cb8  5f 00 53 e3                                      cmp r3, #0x5f
00519cbc  00 10 a0 13                                      movne r1, #0
00519cc0  0a 00 00 0a                                      beq #0x519cf0
00519cc4  40 00 a0 e3                                      mov r0, #0x40
00519cc8  28 da f7 eb                                      bl #0x310570
00519ccc  03 10 a0 e3                                      mov r1, #3
00519cd0  00 70 a0 e1                                      mov r7, r0
00519cd4  4f f0 ff eb                                      bl #0x515e18
00519cd8  48 30 9f e5                                      ldr r3, [pc, #0x48]
00519cdc  07 50 a0 e1                                      mov r5, r7
00519ce0  03 30 94 e7                                      ldr r3, [r4, r3]
00519ce4  08 30 83 e2                                      add r3, r3, #8
00519ce8  00 30 87 e5                                      str r3, [r7]
00519cec  b2 ff ff ea                                      b #0x519bbc
00519cf0  00 10 a0 e3                                      mov r1, #0
00519cf4  8c 00 a0 e3                                      mov r0, #0x8c
00519cf8  1c da f7 eb                                      bl #0x310570
00519cfc  28 10 9f e5                                      ldr r1, [pc, #0x28]
00519d00  00 50 a0 e1                                      mov r5, r0
00519d04  01 10 8f e0                                      add r1, pc, r1
00519d08  d3 f5 ff eb                                      bl #0x51745c
00519d0c  aa ff ff ea                                      b #0x519bbc
; mapping-symbol data/literal pool
00519d10  5c af 47 00 68 2c 3c 00 20 25 3c 00 84 0e 00 00  .byte 0x5c, 0xaf, 0x47, 0x00, 0x68, 0x2c, 0x3c, 0x00, 0x20, 0x25, 0x3c, 0x00, 0x84, 0x0e, 0x00, 0x00
00519d20  68 25 3c 00 80 2b 3c 00 40 47 00 00 04 1b 3b 00  .byte 0x68, 0x25, 0x3c, 0x00, 0x80, 0x2b, 0x3c, 0x00, 0x40, 0x47, 0x00, 0x00, 0x04, 0x1b, 0x3b, 0x00
