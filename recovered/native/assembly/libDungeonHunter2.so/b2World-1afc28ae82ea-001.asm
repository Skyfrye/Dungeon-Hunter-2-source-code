; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e65d4, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World22SetDestructionListenerEP21b2DestructionListener
; demangled: b2World::SetDestructionListener(b2DestructionListener*)
; decoder-mode: arm
007e65d4  19 3a a0 e3                                      mov r3, #0x19000
007e65d8  96 3f 83 e2                                      add r3, r3, #0x258
007e65dc  03 10 80 e7                                      str r1, [r0, r3]
007e65e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e65e4, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World19SetBoundaryListenerEP18b2BoundaryListener
; demangled: b2World::SetBoundaryListener(b2BoundaryListener*)
; decoder-mode: arm
007e65e4  19 3a a0 e3                                      mov r3, #0x19000
007e65e8  97 3f 83 e2                                      add r3, r3, #0x25c
007e65ec  03 10 80 e7                                      str r1, [r0, r3]
007e65f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e65f4, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World16SetContactFilterEP15b2ContactFilter
; demangled: b2World::SetContactFilter(b2ContactFilter*)
; decoder-mode: arm
007e65f4  19 3a a0 e3                                      mov r3, #0x19000
007e65f8  26 3e 83 e2                                      add r3, r3, #0x260
007e65fc  03 10 80 e7                                      str r1, [r0, r3]
007e6600  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e6604, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World18SetContactListenerEP17b2ContactListener
; demangled: b2World::SetContactListener(b2ContactListener*)
; decoder-mode: arm
007e6604  19 3a a0 e3                                      mov r3, #0x19000
007e6608  99 3f 83 e2                                      add r3, r3, #0x264
007e660c  03 10 80 e7                                      str r1, [r0, r3]
007e6610  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e6614, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World12SetDebugDrawEP11b2DebugDraw
; demangled: b2World::SetDebugDraw(b2DebugDraw*)
; decoder-mode: arm
007e6614  19 3a a0 e3                                      mov r3, #0x19000
007e6618  9a 3f 83 e2                                      add r3, r3, #0x268
007e661c  03 10 80 e7                                      str r1, [r0, r3]
007e6620  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e6624, declared_size=836, range_size=836, mode=arm
; class-group: b2World
; alias: _ZN7b2World9DrawShapeEP7b2ShapeRK7b2XFormRK7b2Colorb
; demangled: b2World::DrawShape(b2Shape*, b2XForm const&, b2Color const&, bool)
; decoder-mode: arm
007e6624  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e6628  66 46 06 e3                                      movw r4, #0x6666
007e662c  7c d0 4d e2                                      sub sp, sp, #0x7c
007e6630  66 4f 43 e3                                      movt r4, #0x3f66
007e6634  01 60 a0 e1                                      mov r6, r1
007e6638  04 10 91 e5                                      ldr r1, [r1, #4]
007e663c  64 40 8d e5                                      str r4, [sp, #0x64]
007e6640  02 40 a0 e1                                      mov r4, r2
007e6644  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
007e6648  9a c9 09 e3                                      movw ip, #0x999a
007e664c  19 cf 43 e3                                      movt ip, #0x3f19
007e6650  00 00 51 e3                                      cmp r1, #0
007e6654  6c c0 8d e5                                      str ip, [sp, #0x6c]
007e6658  0c 00 8d e5                                      str r0, [sp, #0xc]
007e665c  14 30 8d e5                                      str r3, [sp, #0x14]
007e6660  68 c0 8d e5                                      str ip, [sp, #0x68]
007e6664  18 20 8d e5                                      str r2, [sp, #0x18]
007e6668  36 00 00 1a                                      bne #0x7e6748
007e666c  30 70 96 e5                                      ldr r7, [r6, #0x30]
007e6670  08 10 94 e5                                      ldr r1, [r4, #8]
007e6674  34 50 96 e5                                      ldr r5, [r6, #0x34]
007e6678  07 00 a0 e1                                      mov r0, r7
007e667c  ba a1 ec eb                                      bl #0x30ed6c
007e6680  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e6684  00 80 a0 e1                                      mov r8, r0
007e6688  05 00 a0 e1                                      mov r0, r5
007e668c  b6 a1 ec eb                                      bl #0x30ed6c
007e6690  00 10 a0 e1                                      mov r1, r0
007e6694  08 00 a0 e1                                      mov r0, r8
007e6698  41 a1 ec eb                                      bl #0x30eba4
007e669c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e66a0  00 80 a0 e1                                      mov r8, r0
007e66a4  07 00 a0 e1                                      mov r0, r7
007e66a8  af a1 ec eb                                      bl #0x30ed6c
007e66ac  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e66b0  00 70 a0 e1                                      mov r7, r0
007e66b4  05 00 a0 e1                                      mov r0, r5
007e66b8  ab a1 ec eb                                      bl #0x30ed6c
007e66bc  00 10 a0 e1                                      mov r1, r0
007e66c0  07 00 a0 e1                                      mov r0, r7
007e66c4  36 a1 ec eb                                      bl #0x30eba4
007e66c8  04 10 94 e5                                      ldr r1, [r4, #4]
007e66cc  34 a1 ec eb                                      bl #0x30eba4
007e66d0  00 10 94 e5                                      ldr r1, [r4]
007e66d4  00 70 a0 e1                                      mov r7, r0
007e66d8  08 00 a0 e1                                      mov r0, r8
007e66dc  30 a1 ec eb                                      bl #0x30eba4
007e66e0  08 10 94 e5                                      ldr r1, [r4, #8]
007e66e4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e66e8  19 5a a0 e3                                      mov r5, #0x19000
007e66ec  0c 20 94 e5                                      ldr r2, [r4, #0xc]
007e66f0  9a 5f 85 e2                                      add r5, r5, #0x268
007e66f4  05 30 9c e7                                      ldr r3, [ip, r5]
007e66f8  38 40 96 e5                                      ldr r4, [r6, #0x38]
007e66fc  24 10 8d e5                                      str r1, [sp, #0x24]
007e6700  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e6704  70 00 8d e5                                      str r0, [sp, #0x70]
007e6708  28 20 8d e5                                      str r2, [sp, #0x28]
007e670c  74 70 8d e5                                      str r7, [sp, #0x74]
007e6710  70 60 8d e2                                      add r6, sp, #0x70
007e6714  00 c0 93 e5                                      ldr ip, [r3]
007e6718  03 00 a0 e1                                      mov r0, r3
007e671c  00 10 8d e5                                      str r1, [sp]
007e6720  04 20 a0 e1                                      mov r2, r4
007e6724  06 10 a0 e1                                      mov r1, r6
007e6728  24 30 8d e2                                      add r3, sp, #0x24
007e672c  0f e0 a0 e1                                      mov lr, pc
007e6730  14 f0 9c e5                                      ldr pc, [ip, #0x14]
007e6734  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e6738  00 00 52 e3                                      cmp r2, #0
007e673c  7b 00 00 1a                                      bne #0x7e6930
007e6740  7c d0 8d e2                                      add sp, sp, #0x7c
007e6744  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e6748  01 00 51 e3                                      cmp r1, #1
007e674c  fb ff ff 1a                                      bne #0x7e6740
007e6750  18 c1 96 e5                                      ldr ip, [r6, #0x118]
007e6754  00 00 5c e3                                      cmp ip, #0
007e6758  10 c0 8d e5                                      str ip, [sp, #0x10]
007e675c  24 50 8d d2                                      addle r5, sp, #0x24
007e6760  2d 00 00 da                                      ble #0x7e681c
007e6764  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e6768  06 80 a0 e1                                      mov r8, r6
007e676c  00 70 a0 e3                                      mov r7, #0
007e6770  81 31 a0 e1                                      lsl r3, r1, #3
007e6774  24 50 8d e2                                      add r5, sp, #0x24
007e6778  03 b0 a0 e1                                      mov fp, r3
007e677c  1c 60 8d e5                                      str r6, [sp, #0x1c]
007e6780  58 a0 98 e5                                      ldr sl, [r8, #0x58]
007e6784  08 10 94 e5                                      ldr r1, [r4, #8]
007e6788  5c 60 98 e5                                      ldr r6, [r8, #0x5c]
007e678c  0a 00 a0 e1                                      mov r0, sl
007e6790  75 a1 ec eb                                      bl #0x30ed6c
007e6794  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e6798  00 90 a0 e1                                      mov sb, r0
007e679c  06 00 a0 e1                                      mov r0, r6
007e67a0  71 a1 ec eb                                      bl #0x30ed6c
007e67a4  00 10 a0 e1                                      mov r1, r0
007e67a8  09 00 a0 e1                                      mov r0, sb
007e67ac  fc a0 ec eb                                      bl #0x30eba4
007e67b0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e67b4  00 90 a0 e1                                      mov sb, r0
007e67b8  0a 00 a0 e1                                      mov r0, sl
007e67bc  6a a1 ec eb                                      bl #0x30ed6c
007e67c0  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e67c4  00 a0 a0 e1                                      mov sl, r0
007e67c8  06 00 a0 e1                                      mov r0, r6
007e67cc  66 a1 ec eb                                      bl #0x30ed6c
007e67d0  00 10 a0 e1                                      mov r1, r0
007e67d4  0a 00 a0 e1                                      mov r0, sl
007e67d8  f1 a0 ec eb                                      bl #0x30eba4
007e67dc  00 10 94 e5                                      ldr r1, [r4]
007e67e0  00 60 a0 e1                                      mov r6, r0
007e67e4  09 00 a0 e1                                      mov r0, sb
007e67e8  ed a0 ec eb                                      bl #0x30eba4
007e67ec  04 10 94 e5                                      ldr r1, [r4, #4]
007e67f0  00 a0 a0 e1                                      mov sl, r0
007e67f4  06 00 a0 e1                                      mov r0, r6
007e67f8  e9 a0 ec eb                                      bl #0x30eba4
007e67fc  07 30 85 e0                                      add r3, r5, r7
007e6800  04 00 83 e5                                      str r0, [r3, #4]
007e6804  07 a0 85 e7                                      str sl, [r5, r7]
007e6808  08 70 87 e2                                      add r7, r7, #8
007e680c  0b 00 57 e1                                      cmp r7, fp
007e6810  08 80 88 e2                                      add r8, r8, #8
007e6814  d9 ff ff 1a                                      bne #0x7e6780
007e6818  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
007e681c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e6820  19 3a a0 e3                                      mov r3, #0x19000
007e6824  9a 3f 83 e2                                      add r3, r3, #0x268
007e6828  03 20 9c e7                                      ldr r2, [ip, r3]
007e682c  05 10 a0 e1                                      mov r1, r5
007e6830  14 30 9d e5                                      ldr r3, [sp, #0x14]
007e6834  02 00 a0 e1                                      mov r0, r2
007e6838  00 c0 92 e5                                      ldr ip, [r2]
007e683c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007e6840  0f e0 a0 e1                                      mov lr, pc
007e6844  0c f0 9c e5                                      ldr pc, [ip, #0xc]
007e6848  18 10 9d e5                                      ldr r1, [sp, #0x18]
007e684c  00 00 51 e3                                      cmp r1, #0
007e6850  ba ff ff 0a                                      beq #0x7e6740
007e6854  10 20 9d e5                                      ldr r2, [sp, #0x10]
007e6858  00 00 52 e3                                      cmp r2, #0
007e685c  27 00 00 da                                      ble #0x7e6900
007e6860  82 b1 a0 e1                                      lsl fp, r2, #3
007e6864  00 70 a0 e3                                      mov r7, #0
007e6868  d8 a0 96 e5                                      ldr sl, [r6, #0xd8]
007e686c  08 10 94 e5                                      ldr r1, [r4, #8]
007e6870  dc 80 96 e5                                      ldr r8, [r6, #0xdc]
007e6874  0a 00 a0 e1                                      mov r0, sl
007e6878  3b a1 ec eb                                      bl #0x30ed6c
007e687c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e6880  00 90 a0 e1                                      mov sb, r0
007e6884  08 00 a0 e1                                      mov r0, r8
007e6888  37 a1 ec eb                                      bl #0x30ed6c
007e688c  00 10 a0 e1                                      mov r1, r0
007e6890  09 00 a0 e1                                      mov r0, sb
007e6894  c2 a0 ec eb                                      bl #0x30eba4
007e6898  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e689c  00 90 a0 e1                                      mov sb, r0
007e68a0  0a 00 a0 e1                                      mov r0, sl
007e68a4  30 a1 ec eb                                      bl #0x30ed6c
007e68a8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e68ac  00 a0 a0 e1                                      mov sl, r0
007e68b0  08 00 a0 e1                                      mov r0, r8
007e68b4  2c a1 ec eb                                      bl #0x30ed6c
007e68b8  00 10 a0 e1                                      mov r1, r0
007e68bc  0a 00 a0 e1                                      mov r0, sl
007e68c0  b7 a0 ec eb                                      bl #0x30eba4
007e68c4  00 10 94 e5                                      ldr r1, [r4]
007e68c8  00 80 a0 e1                                      mov r8, r0
007e68cc  09 00 a0 e1                                      mov r0, sb
007e68d0  b3 a0 ec eb                                      bl #0x30eba4
007e68d4  04 10 94 e5                                      ldr r1, [r4, #4]
007e68d8  00 a0 a0 e1                                      mov sl, r0
007e68dc  08 00 a0 e1                                      mov r0, r8
007e68e0  af a0 ec eb                                      bl #0x30eba4
007e68e4  07 30 85 e0                                      add r3, r5, r7
007e68e8  04 00 83 e5                                      str r0, [r3, #4]
007e68ec  07 a0 85 e7                                      str sl, [r5, r7]
007e68f0  08 70 87 e2                                      add r7, r7, #8
007e68f4  0b 00 57 e1                                      cmp r7, fp
007e68f8  08 60 86 e2                                      add r6, r6, #8
007e68fc  d9 ff ff 1a                                      bne #0x7e6868
007e6900  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e6904  19 3a a0 e3                                      mov r3, #0x19000
007e6908  9a 3f 83 e2                                      add r3, r3, #0x268
007e690c  03 30 9c e7                                      ldr r3, [ip, r3]
007e6910  05 10 a0 e1                                      mov r1, r5
007e6914  10 20 9d e5                                      ldr r2, [sp, #0x10]
007e6918  03 00 a0 e1                                      mov r0, r3
007e691c  00 c0 93 e5                                      ldr ip, [r3]
007e6920  64 30 8d e2                                      add r3, sp, #0x64
007e6924  0f e0 a0 e1                                      mov lr, pc
007e6928  08 f0 9c e5                                      ldr pc, [ip, #8]
007e692c  83 ff ff ea                                      b #0x7e6740
007e6930  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007e6934  0a 17 0d e3                                      movw r1, #0xd70a
007e6938  04 00 a0 e1                                      mov r0, r4
007e693c  23 1d 43 e3                                      movt r1, #0x3d23
007e6940  05 50 93 e7                                      ldr r5, [r3, r5]
007e6944  98 9e ec eb                                      bl #0x30e3ac
007e6948  06 10 a0 e1                                      mov r1, r6
007e694c  00 20 a0 e1                                      mov r2, r0
007e6950  00 c0 95 e5                                      ldr ip, [r5]
007e6954  05 00 a0 e1                                      mov r0, r5
007e6958  64 30 8d e2                                      add r3, sp, #0x64
007e695c  0f e0 a0 e1                                      mov lr, pc
007e6960  10 f0 9c e5                                      ldr pc, [ip, #0x10]
007e6964  75 ff ff ea                                      b #0x7e6740

; FUNCTION 0x007e6968, declared_size=28, range_size=28, mode=arm
; class-group: b2World
; alias: _ZNK7b2World13GetProxyCountEv
; demangled: b2World::GetProxyCount() const
; decoder-mode: arm
007e6968  19 3a a0 e3                                      mov r3, #0x19000
007e696c  76 3f 83 e2                                      add r3, r3, #0x1d8
007e6970  03 20 90 e7                                      ldr r2, [r0, r3]
007e6974  5d 3a a0 e3                                      mov r3, #0x5d000
007e6978  34 30 83 e2                                      add r3, r3, #0x34
007e697c  03 00 92 e7                                      ldr r0, [r2, r3]
007e6980  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e6984, declared_size=28, range_size=28, mode=arm
; class-group: b2World
; alias: _ZNK7b2World12GetPairCountEv
; demangled: b2World::GetPairCount() const
; decoder-mode: arm
007e6984  19 3a a0 e3                                      mov r3, #0x19000
007e6988  76 3f 83 e2                                      add r3, r3, #0x1d8
007e698c  03 20 90 e7                                      ldr r2, [r0, r3]
007e6990  03 38 a0 e3                                      mov r3, #0x30000
007e6994  0c 30 83 e2                                      add r3, r3, #0xc
007e6998  03 00 92 e7                                      ldr r0, [r2, r3]
007e699c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e69a0, declared_size=16, range_size=16, mode=arm
; class-group: b2World
; alias: _ZN7b2World8ValidateEv
; demangled: b2World::Validate()
; decoder-mode: arm
007e69a0  19 3a a0 e3                                      mov r3, #0x19000
007e69a4  76 3f 83 e2                                      add r3, r3, #0x1d8
007e69a8  03 00 90 e7                                      ldr r0, [r0, r3]
007e69ac  44 f0 ff ea                                      b #0x7e2ac4

; FUNCTION 0x007e69b0, declared_size=456, range_size=456, mode=arm
; class-group: b2World
; alias: _ZN7b2World9DrawJointEP7b2Joint
; demangled: b2World::DrawJoint(b2Joint*)
; decoder-mode: arm
007e69b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e69b4  30 c0 91 e5                                      ldr ip, [r1, #0x30]
007e69b8  40 d0 4d e2                                      sub sp, sp, #0x40
007e69bc  34 20 91 e5                                      ldr r2, [r1, #0x34]
007e69c0  04 e0 9c e5                                      ldr lr, [ip, #4]
007e69c4  00 30 91 e5                                      ldr r3, [r1]
007e69c8  28 50 8d e2                                      add r5, sp, #0x28
007e69cc  38 e0 8d e5                                      str lr, [sp, #0x38]
007e69d0  08 c0 9c e5                                      ldr ip, [ip, #8]
007e69d4  01 90 a0 e1                                      mov sb, r1
007e69d8  00 60 a0 e1                                      mov r6, r0
007e69dc  3c c0 8d e5                                      str ip, [sp, #0x3c]
007e69e0  04 c0 92 e5                                      ldr ip, [r2, #4]
007e69e4  05 00 a0 e1                                      mov r0, r5
007e69e8  20 40 8d e2                                      add r4, sp, #0x20
007e69ec  30 c0 8d e5                                      str ip, [sp, #0x30]
007e69f0  08 20 92 e5                                      ldr r2, [r2, #8]
007e69f4  34 20 8d e5                                      str r2, [sp, #0x34]
007e69f8  0f e0 a0 e1                                      mov lr, pc
007e69fc  00 f0 93 e5                                      ldr pc, [r3]
007e6a00  00 30 99 e5                                      ldr r3, [sb]
007e6a04  09 10 a0 e1                                      mov r1, sb
007e6a08  04 00 a0 e1                                      mov r0, r4
007e6a0c  0f e0 a0 e1                                      mov lr, pc
007e6a10  04 f0 93 e5                                      ldr pc, [r3, #4]
007e6a14  04 30 99 e5                                      ldr r3, [sb, #4]
007e6a18  cd 2c 0c e3                                      movw r2, #0xcccd
007e6a1c  4c 2f 43 e3                                      movt r2, #0x3f4c
007e6a20  3f 14 a0 e3                                      mov r1, #0x3f000000
007e6a24  04 00 53 e3                                      cmp r3, #4
007e6a28  0c 20 8d e5                                      str r2, [sp, #0xc]
007e6a2c  04 10 8d e5                                      str r1, [sp, #4]
007e6a30  08 20 8d e5                                      str r2, [sp, #8]
007e6a34  2b 00 00 0a                                      beq #0x7e6ae8
007e6a38  05 00 53 e3                                      cmp r3, #5
007e6a3c  1c 00 00 0a                                      beq #0x7e6ab4
007e6a40  03 00 53 e3                                      cmp r3, #3
007e6a44  1c 00 00 0a                                      beq #0x7e6abc
007e6a48  19 7a a0 e3                                      mov r7, #0x19000
007e6a4c  9a 7f 87 e2                                      add r7, r7, #0x268
007e6a50  07 c0 96 e7                                      ldr ip, [r6, r7]
007e6a54  04 80 8d e2                                      add r8, sp, #4
007e6a58  38 10 8d e2                                      add r1, sp, #0x38
007e6a5c  0c 00 a0 e1                                      mov r0, ip
007e6a60  05 20 a0 e1                                      mov r2, r5
007e6a64  08 30 a0 e1                                      mov r3, r8
007e6a68  00 c0 9c e5                                      ldr ip, [ip]
007e6a6c  0f e0 a0 e1                                      mov lr, pc
007e6a70  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6a74  07 c0 96 e7                                      ldr ip, [r6, r7]
007e6a78  05 10 a0 e1                                      mov r1, r5
007e6a7c  04 20 a0 e1                                      mov r2, r4
007e6a80  0c 00 a0 e1                                      mov r0, ip
007e6a84  08 30 a0 e1                                      mov r3, r8
007e6a88  00 c0 9c e5                                      ldr ip, [ip]
007e6a8c  0f e0 a0 e1                                      mov lr, pc
007e6a90  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6a94  07 10 96 e7                                      ldr r1, [r6, r7]
007e6a98  04 20 a0 e1                                      mov r2, r4
007e6a9c  08 30 a0 e1                                      mov r3, r8
007e6aa0  01 00 a0 e1                                      mov r0, r1
007e6aa4  00 c0 91 e5                                      ldr ip, [r1]
007e6aa8  30 10 8d e2                                      add r1, sp, #0x30
007e6aac  0f e0 a0 e1                                      mov lr, pc
007e6ab0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6ab4  40 d0 8d e2                                      add sp, sp, #0x40
007e6ab8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e6abc  19 3a a0 e3                                      mov r3, #0x19000
007e6ac0  9a 3f 83 e2                                      add r3, r3, #0x268
007e6ac4  03 30 96 e7                                      ldr r3, [r6, r3]
007e6ac8  05 10 a0 e1                                      mov r1, r5
007e6acc  04 20 a0 e1                                      mov r2, r4
007e6ad0  03 00 a0 e1                                      mov r0, r3
007e6ad4  00 c0 93 e5                                      ldr ip, [r3]
007e6ad8  04 30 8d e2                                      add r3, sp, #4
007e6adc  0f e0 a0 e1                                      mov lr, pc
007e6ae0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6ae4  f2 ff ff ea                                      b #0x7e6ab4
007e6ae8  18 80 8d e2                                      add r8, sp, #0x18
007e6aec  10 a0 8d e2                                      add sl, sp, #0x10
007e6af0  08 00 a0 e1                                      mov r0, r8
007e6af4  09 10 a0 e1                                      mov r1, sb
007e6af8  19 7a a0 e3                                      mov r7, #0x19000
007e6afc  5d 26 00 eb                                      bl #0x7f0478
007e6b00  9a 7f 87 e2                                      add r7, r7, #0x268
007e6b04  09 10 a0 e1                                      mov r1, sb
007e6b08  0a 00 a0 e1                                      mov r0, sl
007e6b0c  68 26 00 eb                                      bl #0x7f04b4
007e6b10  07 c0 96 e7                                      ldr ip, [r6, r7]
007e6b14  04 90 8d e2                                      add sb, sp, #4
007e6b18  05 20 a0 e1                                      mov r2, r5
007e6b1c  0c 00 a0 e1                                      mov r0, ip
007e6b20  08 10 a0 e1                                      mov r1, r8
007e6b24  09 30 a0 e1                                      mov r3, sb
007e6b28  00 c0 9c e5                                      ldr ip, [ip]
007e6b2c  0f e0 a0 e1                                      mov lr, pc
007e6b30  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6b34  07 c0 96 e7                                      ldr ip, [r6, r7]
007e6b38  04 20 a0 e1                                      mov r2, r4
007e6b3c  0a 10 a0 e1                                      mov r1, sl
007e6b40  0c 00 a0 e1                                      mov r0, ip
007e6b44  09 30 a0 e1                                      mov r3, sb
007e6b48  00 c0 9c e5                                      ldr ip, [ip]
007e6b4c  0f e0 a0 e1                                      mov lr, pc
007e6b50  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6b54  07 c0 96 e7                                      ldr ip, [r6, r7]
007e6b58  08 10 a0 e1                                      mov r1, r8
007e6b5c  0a 20 a0 e1                                      mov r2, sl
007e6b60  0c 00 a0 e1                                      mov r0, ip
007e6b64  09 30 a0 e1                                      mov r3, sb
007e6b68  00 c0 9c e5                                      ldr ip, [ip]
007e6b6c  0f e0 a0 e1                                      mov lr, pc
007e6b70  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e6b74  ce ff ff ea                                      b #0x7e6ab4

; FUNCTION 0x007e6b78, declared_size=2596, range_size=2596, mode=arm
; class-group: b2World
; alias: _ZN7b2World13DrawDebugDataEv
; demangled: b2World::DrawDebugData()
; decoder-mode: arm
007e6b78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e6b7c  19 3a a0 e3                                      mov r3, #0x19000
007e6b80  dc d0 4d e2                                      sub sp, sp, #0xdc
007e6b84  2c 00 8d e5                                      str r0, [sp, #0x2c]
007e6b88  9a 3f 83 e2                                      add r3, r3, #0x268
007e6b8c  03 00 90 e7                                      ldr r0, [r0, r3]
007e6b90  00 00 50 e3                                      cmp r0, #0
007e6b94  73 02 00 0a                                      beq #0x7e7568
007e6b98  57 08 00 eb                                      bl #0x7e8cfc
007e6b9c  01 00 10 e3                                      tst r0, #1
007e6ba0  4c 00 8d e5                                      str r0, [sp, #0x4c]
007e6ba4  3a 00 00 0a                                      beq #0x7e6c94
007e6ba8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007e6bac  19 3a a0 e3                                      mov r3, #0x19000
007e6bb0  23 3e 83 e2                                      add r3, r3, #0x230
007e6bb4  03 50 90 e7                                      ldr r5, [r0, r3]
007e6bb8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007e6bbc  00 00 55 e3                                      cmp r5, #0
007e6bc0  51 a1 e0 e7                                      ubfx sl, r1, #2, #1
007e6bc4  32 00 00 0a                                      beq #0x7e6c94
007e6bc8  cc 90 8d e2                                      add sb, sp, #0xcc
007e6bcc  66 66 06 e3                                      movw r6, #0x6666
007e6bd0  c0 20 8d e2                                      add r2, sp, #0xc0
007e6bd4  14 90 8d e5                                      str sb, [sp, #0x14]
007e6bd8  3f 74 a0 e3                                      mov r7, #0x3f000000
007e6bdc  66 6f 43 e3                                      movt r6, #0x3f66
007e6be0  b4 b0 8d e2                                      add fp, sp, #0xb4
007e6be4  18 20 8d e5                                      str r2, [sp, #0x18]
007e6be8  00 80 a0 e1                                      mov r8, r0
007e6bec  0a 90 a0 e1                                      mov sb, sl
007e6bf0  64 40 95 e5                                      ldr r4, [r5, #0x64]
007e6bf4  04 a0 85 e2                                      add sl, r5, #4
007e6bf8  00 00 54 e3                                      cmp r4, #0
007e6bfc  0a 00 00 1a                                      bne #0x7e6c2c
007e6c00  20 00 00 ea                                      b #0x7e6c88
007e6c04  0a 20 a0 e1                                      mov r2, sl
007e6c08  14 30 9d e5                                      ldr r3, [sp, #0x14]
007e6c0c  cc 70 8d e5                                      str r7, [sp, #0xcc]
007e6c10  d0 60 8d e5                                      str r6, [sp, #0xd0]
007e6c14  d4 70 8d e5                                      str r7, [sp, #0xd4]
007e6c18  00 90 8d e5                                      str sb, [sp]
007e6c1c  80 fe ff eb                                      bl #0x7e6624
007e6c20  08 40 94 e5                                      ldr r4, [r4, #8]
007e6c24  00 00 54 e3                                      cmp r4, #0
007e6c28  16 00 00 0a                                      beq #0x7e6c88
007e6c2c  f2 30 d5 e1                                      ldrsh r3, [r5, #2]
007e6c30  08 00 a0 e1                                      mov r0, r8
007e6c34  04 10 a0 e1                                      mov r1, r4
007e6c38  00 00 53 e3                                      cmp r3, #0
007e6c3c  f0 ff ff 0a                                      beq #0x7e6c04
007e6c40  b0 30 d5 e1                                      ldrh r3, [r5]
007e6c44  04 10 a0 e1                                      mov r1, r4
007e6c48  08 00 a0 e1                                      mov r0, r8
007e6c4c  08 00 13 e3                                      tst r3, #8
007e6c50  0a 20 a0 e1                                      mov r2, sl
007e6c54  0b 30 a0 e1                                      mov r3, fp
007e6c58  18 30 9d 15                                      ldrne r3, [sp, #0x18]
007e6c5c  c0 70 8d 15                                      strne r7, [sp, #0xc0]
007e6c60  c4 70 8d 15                                      strne r7, [sp, #0xc4]
007e6c64  c8 60 8d 15                                      strne r6, [sp, #0xc8]
007e6c68  b4 60 8d 05                                      streq r6, [sp, #0xb4]
007e6c6c  b8 60 8d 05                                      streq r6, [sp, #0xb8]
007e6c70  bc 60 8d 05                                      streq r6, [sp, #0xbc]
007e6c74  00 90 8d e5                                      str sb, [sp]
007e6c78  69 fe ff eb                                      bl #0x7e6624
007e6c7c  08 40 94 e5                                      ldr r4, [r4, #8]
007e6c80  00 00 54 e3                                      cmp r4, #0
007e6c84  e8 ff ff 1a                                      bne #0x7e6c2c
007e6c88  60 50 95 e5                                      ldr r5, [r5, #0x60]
007e6c8c  00 00 55 e3                                      cmp r5, #0
007e6c90  d6 ff ff 1a                                      bne #0x7e6bf0
007e6c94  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
007e6c98  02 00 13 e3                                      tst r3, #2
007e6c9c  0f 00 00 0a                                      beq #0x7e6ce0
007e6ca0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007e6ca4  19 3a a0 e3                                      mov r3, #0x19000
007e6ca8  8d 3f 83 e2                                      add r3, r3, #0x234
007e6cac  03 40 90 e7                                      ldr r4, [r0, r3]
007e6cb0  00 00 54 e3                                      cmp r4, #0
007e6cb4  09 00 00 0a                                      beq #0x7e6ce0
007e6cb8  00 50 a0 e1                                      mov r5, r0
007e6cbc  04 30 94 e5                                      ldr r3, [r4, #4]
007e6cc0  04 10 a0 e1                                      mov r1, r4
007e6cc4  05 00 a0 e1                                      mov r0, r5
007e6cc8  05 00 53 e3                                      cmp r3, #5
007e6ccc  00 00 00 0a                                      beq #0x7e6cd4
007e6cd0  36 ff ff eb                                      bl #0x7e69b0
007e6cd4  0c 40 94 e5                                      ldr r4, [r4, #0xc]
007e6cd8  00 00 54 e3                                      cmp r4, #0
007e6cdc  f6 ff ff 1a                                      bne #0x7e6cbc
007e6ce0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
007e6ce4  20 00 11 e3                                      tst r1, #0x20
007e6ce8  ed 00 00 0a                                      beq #0x7e70a4
007e6cec  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007e6cf0  19 3a a0 e3                                      mov r3, #0x19000
007e6cf4  76 3f 83 e2                                      add r3, r3, #0x1d8
007e6cf8  03 40 92 e7                                      ldr r4, [r2, r3]
007e6cfc  5d 3a a0 e3                                      mov r3, #0x5d000
007e6d00  2c 30 83 e2                                      add r3, r3, #0x2c
007e6d04  03 10 94 e7                                      ldr r1, [r4, r3]
007e6d08  fe 05 a0 e3                                      mov r0, #0x3f800000
007e6d0c  e0 9f ec eb                                      bl #0x30ec94
007e6d10  5d 3a a0 e3                                      mov r3, #0x5d000
007e6d14  30 30 83 e2                                      add r3, r3, #0x30
007e6d18  03 10 94 e7                                      ldr r1, [r4, r3]
007e6d1c  00 60 a0 e1                                      mov r6, r0
007e6d20  fe 05 a0 e3                                      mov r0, #0x3f800000
007e6d24  da 9f ec eb                                      bl #0x30ec94
007e6d28  66 36 06 e3                                      movw r3, #0x6666
007e6d2c  01 17 84 e2                                      add r1, r4, #0x40000
007e6d30  12 29 84 e2                                      add r2, r4, #0x48000
007e6d34  66 3f 43 e3                                      movt r3, #0x3f66
007e6d38  14 10 81 e2                                      add r1, r1, #0x14
007e6d3c  14 20 82 e2                                      add r2, r2, #0x14
007e6d40  00 70 a0 e1                                      mov r7, r0
007e6d44  94 30 8d e5                                      str r3, [sp, #0x94]
007e6d48  9a 09 09 e3                                      movw r0, #0x999a
007e6d4c  90 30 8d e5                                      str r3, [sp, #0x90]
007e6d50  44 10 8d e5                                      str r1, [sp, #0x44]
007e6d54  48 20 8d e5                                      str r2, [sp, #0x48]
007e6d58  5d 1a a0 e3                                      mov r1, #0x5d000
007e6d5c  5d 2a a0 e3                                      mov r2, #0x5d000
007e6d60  19 3a a0 e3                                      mov r3, #0x19000
007e6d64  99 0e 43 e3                                      movt r0, #0x3e99
007e6d68  1c 10 81 e2                                      add r1, r1, #0x1c
007e6d6c  20 20 82 e2                                      add r2, r2, #0x20
007e6d70  9a 3f 83 e2                                      add r3, r3, #0x268
007e6d74  98 00 8d e5                                      str r0, [sp, #0x98]
007e6d78  38 10 8d e5                                      str r1, [sp, #0x38]
007e6d7c  3c 20 8d e5                                      str r2, [sp, #0x3c]
007e6d80  40 30 8d e5                                      str r3, [sp, #0x40]
007e6d84  44 00 9d e5                                      ldr r0, [sp, #0x44]
007e6d88  ff 2f 0f e3                                      movw r2, #0xffff
007e6d8c  b0 30 d0 e1                                      ldrh r3, [r0]
007e6d90  02 00 53 e1                                      cmp r3, r2
007e6d94  bc 00 00 0a                                      beq #0x7e708c
007e6d98  50 10 8d e2                                      add r1, sp, #0x50
007e6d9c  70 20 8d e2                                      add r2, sp, #0x70
007e6da0  90 00 8d e2                                      add r0, sp, #0x90
007e6da4  28 10 8d e5                                      str r1, [sp, #0x28]
007e6da8  30 20 8d e5                                      str r2, [sp, #0x30]
007e6dac  34 00 8d e5                                      str r0, [sp, #0x34]
007e6db0  06 50 a0 e3                                      mov r5, #6
007e6db4  0c 10 a0 e3                                      mov r1, #0xc
007e6db8  91 43 23 e0                                      mla r3, r1, r3, r4
007e6dbc  38 20 9d e5                                      ldr r2, [sp, #0x38]
007e6dc0  18 30 8d e5                                      str r3, [sp, #0x18]
007e6dc4  08 30 83 e2                                      add r3, r3, #8
007e6dc8  b4 90 d3 e1                                      ldrh sb, [r3, #4]
007e6dcc  b6 30 d3 e1                                      ldrh r3, [r3, #6]
007e6dd0  02 a0 94 e7                                      ldr sl, [r4, r2]
007e6dd4  12 bb 89 e2                                      add fp, sb, #0x4800
007e6dd8  01 b0 8b e2                                      add fp, fp, #1
007e6ddc  14 30 8d e5                                      str r3, [sp, #0x14]
007e6de0  0b b2 84 e0                                      add fp, r4, fp, lsl #4
007e6de4  b4 30 db e1                                      ldrh r3, [fp, #4]
007e6de8  09 92 84 e0                                      add sb, r4, sb, lsl #4
007e6dec  12 99 89 e2                                      add sb, sb, #0x48000
007e6df0  95 43 23 e0                                      mla r3, r5, r3, r4
007e6df4  12 90 89 e2                                      add sb, sb, #0x12
007e6df8  05 38 83 e2                                      add r3, r3, #0x50000
007e6dfc  10 30 83 e2                                      add r3, r3, #0x10
007e6e00  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e6e04  d6 9e ec eb                                      bl #0x30e964
007e6e08  00 10 a0 e1                                      mov r1, r0
007e6e0c  06 00 a0 e1                                      mov r0, r6
007e6e10  d5 9f ec eb                                      bl #0x30ed6c
007e6e14  00 10 a0 e1                                      mov r1, r0
007e6e18  0a 00 a0 e1                                      mov r0, sl
007e6e1c  60 9f ec eb                                      bl #0x30eba4
007e6e20  1c 00 8d e5                                      str r0, [sp, #0x1c]
007e6e24  b4 30 d9 e1                                      ldrh r3, [sb, #4]
007e6e28  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007e6e2c  95 43 23 e0                                      mla r3, r5, r3, r4
007e6e30  00 80 94 e7                                      ldr r8, [r4, r0]
007e6e34  56 3a 83 e2                                      add r3, r3, #0x56000
007e6e38  10 30 83 e2                                      add r3, r3, #0x10
007e6e3c  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e6e40  c7 9e ec eb                                      bl #0x30e964
007e6e44  00 10 a0 e1                                      mov r1, r0
007e6e48  07 00 a0 e1                                      mov r0, r7
007e6e4c  c6 9f ec eb                                      bl #0x30ed6c
007e6e50  00 10 a0 e1                                      mov r1, r0
007e6e54  08 00 a0 e1                                      mov r0, r8
007e6e58  51 9f ec eb                                      bl #0x30eba4
007e6e5c  20 00 8d e5                                      str r0, [sp, #0x20]
007e6e60  b8 30 db e1                                      ldrh r3, [fp, #8]
007e6e64  95 43 23 e0                                      mla r3, r5, r3, r4
007e6e68  05 38 83 e2                                      add r3, r3, #0x50000
007e6e6c  10 30 83 e2                                      add r3, r3, #0x10
007e6e70  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e6e74  ba 9e ec eb                                      bl #0x30e964
007e6e78  00 10 a0 e1                                      mov r1, r0
007e6e7c  06 00 a0 e1                                      mov r0, r6
007e6e80  b9 9f ec eb                                      bl #0x30ed6c
007e6e84  00 10 a0 e1                                      mov r1, r0
007e6e88  0a 00 a0 e1                                      mov r0, sl
007e6e8c  44 9f ec eb                                      bl #0x30eba4
007e6e90  b8 20 d9 e1                                      ldrh r2, [sb, #8]
007e6e94  00 30 a0 e1                                      mov r3, r0
007e6e98  95 42 22 e0                                      mla r2, r5, r2, r4
007e6e9c  56 2a 82 e2                                      add r2, r2, #0x56000
007e6ea0  10 20 82 e2                                      add r2, r2, #0x10
007e6ea4  b6 00 d2 e1                                      ldrh r0, [r2, #6]
007e6ea8  08 30 8d e5                                      str r3, [sp, #8]
007e6eac  ac 9e ec eb                                      bl #0x30e964
007e6eb0  00 10 a0 e1                                      mov r1, r0
007e6eb4  07 00 a0 e1                                      mov r0, r7
007e6eb8  ab 9f ec eb                                      bl #0x30ed6c
007e6ebc  00 10 a0 e1                                      mov r1, r0
007e6ec0  08 00 a0 e1                                      mov r0, r8
007e6ec4  36 9f ec eb                                      bl #0x30eba4
007e6ec8  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e6ecc  00 20 a0 e1                                      mov r2, r0
007e6ed0  12 9b 81 e2                                      add sb, r1, #0x4800
007e6ed4  01 90 89 e2                                      add sb, sb, #1
007e6ed8  09 92 84 e0                                      add sb, r4, sb, lsl #4
007e6edc  b4 10 d9 e1                                      ldrh r1, [sb, #4]
007e6ee0  95 41 21 e0                                      mla r1, r5, r1, r4
007e6ee4  05 18 81 e2                                      add r1, r1, #0x50000
007e6ee8  10 10 81 e2                                      add r1, r1, #0x10
007e6eec  b6 00 d1 e1                                      ldrh r0, [r1, #6]
007e6ef0  0c 20 8d e5                                      str r2, [sp, #0xc]
007e6ef4  9a 9e ec eb                                      bl #0x30e964
007e6ef8  00 10 a0 e1                                      mov r1, r0
007e6efc  06 00 a0 e1                                      mov r0, r6
007e6f00  99 9f ec eb                                      bl #0x30ed6c
007e6f04  00 10 a0 e1                                      mov r1, r0
007e6f08  0a 00 a0 e1                                      mov r0, sl
007e6f0c  24 9f ec eb                                      bl #0x30eba4
007e6f10  24 00 8d e5                                      str r0, [sp, #0x24]
007e6f14  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e6f18  00 b2 84 e0                                      add fp, r4, r0, lsl #4
007e6f1c  12 b9 8b e2                                      add fp, fp, #0x48000
007e6f20  12 b0 8b e2                                      add fp, fp, #0x12
007e6f24  b4 10 db e1                                      ldrh r1, [fp, #4]
007e6f28  95 41 21 e0                                      mla r1, r5, r1, r4
007e6f2c  56 1a 81 e2                                      add r1, r1, #0x56000
007e6f30  10 10 81 e2                                      add r1, r1, #0x10
007e6f34  b6 00 d1 e1                                      ldrh r0, [r1, #6]
007e6f38  89 9e ec eb                                      bl #0x30e964
007e6f3c  00 10 a0 e1                                      mov r1, r0
007e6f40  07 00 a0 e1                                      mov r0, r7
007e6f44  88 9f ec eb                                      bl #0x30ed6c
007e6f48  00 10 a0 e1                                      mov r1, r0
007e6f4c  08 00 a0 e1                                      mov r0, r8
007e6f50  13 9f ec eb                                      bl #0x30eba4
007e6f54  b8 10 d9 e1                                      ldrh r1, [sb, #8]
007e6f58  00 c0 a0 e1                                      mov ip, r0
007e6f5c  95 41 21 e0                                      mla r1, r5, r1, r4
007e6f60  05 18 81 e2                                      add r1, r1, #0x50000
007e6f64  10 10 81 e2                                      add r1, r1, #0x10
007e6f68  b6 00 d1 e1                                      ldrh r0, [r1, #6]
007e6f6c  10 c0 8d e5                                      str ip, [sp, #0x10]
007e6f70  7b 9e ec eb                                      bl #0x30e964
007e6f74  00 10 a0 e1                                      mov r1, r0
007e6f78  06 00 a0 e1                                      mov r0, r6
007e6f7c  7a 9f ec eb                                      bl #0x30ed6c
007e6f80  00 10 a0 e1                                      mov r1, r0
007e6f84  0a 00 a0 e1                                      mov r0, sl
007e6f88  05 9f ec eb                                      bl #0x30eba4
007e6f8c  b8 10 db e1                                      ldrh r1, [fp, #8]
007e6f90  00 a0 a0 e1                                      mov sl, r0
007e6f94  95 41 21 e0                                      mla r1, r5, r1, r4
007e6f98  56 1a 81 e2                                      add r1, r1, #0x56000
007e6f9c  10 10 81 e2                                      add r1, r1, #0x10
007e6fa0  b6 00 d1 e1                                      ldrh r0, [r1, #6]
007e6fa4  6e 9e ec eb                                      bl #0x30e964
007e6fa8  00 10 a0 e1                                      mov r1, r0
007e6fac  07 00 a0 e1                                      mov r0, r7
007e6fb0  6d 9f ec eb                                      bl #0x30ed6c
007e6fb4  00 10 a0 e1                                      mov r1, r0
007e6fb8  08 00 a0 e1                                      mov r0, r8
007e6fbc  f8 9e ec eb                                      bl #0x30eba4
007e6fc0  08 30 9d e5                                      ldr r3, [sp, #8]
007e6fc4  00 80 a0 e1                                      mov r8, r0
007e6fc8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007e6fcc  03 10 a0 e1                                      mov r1, r3
007e6fd0  f3 9e ec eb                                      bl #0x30eba4
007e6fd4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e6fd8  00 b0 a0 e1                                      mov fp, r0
007e6fdc  20 00 9d e5                                      ldr r0, [sp, #0x20]
007e6fe0  02 10 a0 e1                                      mov r1, r2
007e6fe4  ee 9e ec eb                                      bl #0x30eba4
007e6fe8  3f 14 a0 e3                                      mov r1, #0x3f000000
007e6fec  00 90 a0 e1                                      mov sb, r0
007e6ff0  0b 00 a0 e1                                      mov r0, fp
007e6ff4  5c 9f ec eb                                      bl #0x30ed6c
007e6ff8  3f 14 a0 e3                                      mov r1, #0x3f000000
007e6ffc  50 00 8d e5                                      str r0, [sp, #0x50]
007e7000  09 00 a0 e1                                      mov r0, sb
007e7004  58 9f ec eb                                      bl #0x30ed6c
007e7008  0a 10 a0 e1                                      mov r1, sl
007e700c  54 00 8d e5                                      str r0, [sp, #0x54]
007e7010  24 00 9d e5                                      ldr r0, [sp, #0x24]
007e7014  e2 9e ec eb                                      bl #0x30eba4
007e7018  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007e701c  08 10 a0 e1                                      mov r1, r8
007e7020  00 a0 a0 e1                                      mov sl, r0
007e7024  0c 00 a0 e1                                      mov r0, ip
007e7028  dd 9e ec eb                                      bl #0x30eba4
007e702c  3f 14 a0 e3                                      mov r1, #0x3f000000
007e7030  00 80 a0 e1                                      mov r8, r0
007e7034  0a 00 a0 e1                                      mov r0, sl
007e7038  4b 9f ec eb                                      bl #0x30ed6c
007e703c  3f 14 a0 e3                                      mov r1, #0x3f000000
007e7040  70 00 8d e5                                      str r0, [sp, #0x70]
007e7044  08 00 a0 e1                                      mov r0, r8
007e7048  47 9f ec eb                                      bl #0x30ed6c
007e704c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007e7050  40 10 9d e5                                      ldr r1, [sp, #0x40]
007e7054  01 30 92 e7                                      ldr r3, [r2, r1]
007e7058  74 00 8d e5                                      str r0, [sp, #0x74]
007e705c  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e7060  03 00 a0 e1                                      mov r0, r3
007e7064  00 c0 93 e5                                      ldr ip, [r3]
007e7068  30 20 9d e5                                      ldr r2, [sp, #0x30]
007e706c  34 30 9d e5                                      ldr r3, [sp, #0x34]
007e7070  0f e0 a0 e1                                      mov lr, pc
007e7074  18 f0 9c e5                                      ldr pc, [ip, #0x18]
007e7078  18 00 9d e5                                      ldr r0, [sp, #0x18]
007e707c  ff 1f 0f e3                                      movw r1, #0xffff
007e7080  b0 31 d0 e1                                      ldrh r3, [r0, #0x10]
007e7084  01 00 53 e1                                      cmp r3, r1
007e7088  49 ff ff 1a                                      bne #0x7e6db4
007e708c  44 20 9d e5                                      ldr r2, [sp, #0x44]
007e7090  48 30 9d e5                                      ldr r3, [sp, #0x48]
007e7094  02 20 82 e2                                      add r2, r2, #2
007e7098  03 00 52 e1                                      cmp r2, r3
007e709c  44 20 8d e5                                      str r2, [sp, #0x44]
007e70a0  37 ff ff 1a                                      bne #0x7e6d84
007e70a4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007e70a8  08 00 10 e3                                      tst r0, #8
007e70ac  95 00 00 0a                                      beq #0x7e7308
007e70b0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e70b4  19 3a a0 e3                                      mov r3, #0x19000
007e70b8  76 3f 83 e2                                      add r3, r3, #0x1d8
007e70bc  03 50 91 e7                                      ldr r5, [r1, r3]
007e70c0  5d ea a0 e3                                      mov lr, #0x5d000
007e70c4  0e 20 a0 e1                                      mov r2, lr
007e70c8  28 20 82 e2                                      add r2, r2, #0x28
007e70cc  02 20 95 e7                                      ldr r2, [r5, r2]
007e70d0  0e c0 a0 e1                                      mov ip, lr
007e70d4  5d 1a a0 e3                                      mov r1, #0x5d000
007e70d8  1c c0 8c e2                                      add ip, ip, #0x1c
007e70dc  0e 30 a0 e1                                      mov r3, lr
007e70e0  2c 10 81 e2                                      add r1, r1, #0x2c
007e70e4  20 e0 8e e2                                      add lr, lr, #0x20
007e70e8  01 10 95 e7                                      ldr r1, [r5, r1]
007e70ec  0e b0 95 e7                                      ldr fp, [r5, lr]
007e70f0  0c 70 95 e7                                      ldr r7, [r5, ip]
007e70f4  24 30 83 e2                                      add r3, r3, #0x24
007e70f8  34 20 8d e5                                      str r2, [sp, #0x34]
007e70fc  03 30 95 e7                                      ldr r3, [r5, r3]
007e7100  fe 05 a0 e3                                      mov r0, #0x3f800000
007e7104  12 49 85 e2                                      add r4, r5, #0x48000
007e7108  30 30 8d e5                                      str r3, [sp, #0x30]
007e710c  e0 9e ec eb                                      bl #0x30ec94
007e7110  5d 3a a0 e3                                      mov r3, #0x5d000
007e7114  18 00 8d e5                                      str r0, [sp, #0x18]
007e7118  30 30 83 e2                                      add r3, r3, #0x30
007e711c  03 10 95 e7                                      ldr r1, [r5, r3]
007e7120  fe 05 a0 e3                                      mov r0, #0x3f800000
007e7124  da 9e ec eb                                      bl #0x30ec94
007e7128  05 28 85 e2                                      add r2, r5, #0x50000
007e712c  9a 19 09 e3                                      movw r1, #0x999a
007e7130  99 1e 43 e3                                      movt r1, #0x3e99
007e7134  1c 20 82 e2                                      add r2, r2, #0x1c
007e7138  14 00 8d e5                                      str r0, [sp, #0x14]
007e713c  66 36 06 e3                                      movw r3, #0x6666
007e7140  19 0a a0 e3                                      mov r0, #0x19000
007e7144  66 3f 43 e3                                      movt r3, #0x3f66
007e7148  94 10 8d e5                                      str r1, [sp, #0x94]
007e714c  1c 20 8d e5                                      str r2, [sp, #0x1c]
007e7150  9a 0f 80 e2                                      add r0, r0, #0x268
007e7154  70 10 8d e2                                      add r1, sp, #0x70
007e7158  90 20 8d e2                                      add r2, sp, #0x90
007e715c  98 30 8d e5                                      str r3, [sp, #0x98]
007e7160  90 30 8d e5                                      str r3, [sp, #0x90]
007e7164  1c 40 84 e2                                      add r4, r4, #0x1c
007e7168  20 00 8d e5                                      str r0, [sp, #0x20]
007e716c  06 60 a0 e3                                      mov r6, #6
007e7170  24 10 8d e5                                      str r1, [sp, #0x24]
007e7174  28 20 8d e5                                      str r2, [sp, #0x28]
007e7178  b0 30 d4 e1                                      ldrh r3, [r4]
007e717c  ff 0f 0f e3                                      movw r0, #0xffff
007e7180  00 00 53 e1                                      cmp r3, r0
007e7184  40 00 00 0a                                      beq #0x7e728c
007e7188  b8 30 54 e1                                      ldrh r3, [r4, #-8]
007e718c  96 53 23 e0                                      mla r3, r6, r3, r5
007e7190  05 38 83 e2                                      add r3, r3, #0x50000
007e7194  10 30 83 e2                                      add r3, r3, #0x10
007e7198  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e719c  f0 9d ec eb                                      bl #0x30e964
007e71a0  00 10 a0 e1                                      mov r1, r0
007e71a4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007e71a8  ef 9e ec eb                                      bl #0x30ed6c
007e71ac  07 10 a0 e1                                      mov r1, r7
007e71b0  7b 9e ec eb                                      bl #0x30eba4
007e71b4  b6 30 54 e1                                      ldrh r3, [r4, #-6]
007e71b8  00 90 a0 e1                                      mov sb, r0
007e71bc  96 53 23 e0                                      mla r3, r6, r3, r5
007e71c0  56 3a 83 e2                                      add r3, r3, #0x56000
007e71c4  10 30 83 e2                                      add r3, r3, #0x10
007e71c8  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e71cc  e4 9d ec eb                                      bl #0x30e964
007e71d0  00 10 a0 e1                                      mov r1, r0
007e71d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e71d8  e3 9e ec eb                                      bl #0x30ed6c
007e71dc  0b 10 a0 e1                                      mov r1, fp
007e71e0  6f 9e ec eb                                      bl #0x30eba4
007e71e4  b4 30 54 e1                                      ldrh r3, [r4, #-4]
007e71e8  00 a0 a0 e1                                      mov sl, r0
007e71ec  96 53 23 e0                                      mla r3, r6, r3, r5
007e71f0  05 38 83 e2                                      add r3, r3, #0x50000
007e71f4  10 30 83 e2                                      add r3, r3, #0x10
007e71f8  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e71fc  d8 9d ec eb                                      bl #0x30e964
007e7200  00 10 a0 e1                                      mov r1, r0
007e7204  18 00 9d e5                                      ldr r0, [sp, #0x18]
007e7208  d7 9e ec eb                                      bl #0x30ed6c
007e720c  07 10 a0 e1                                      mov r1, r7
007e7210  63 9e ec eb                                      bl #0x30eba4
007e7214  b2 30 54 e1                                      ldrh r3, [r4, #-2]
007e7218  00 80 a0 e1                                      mov r8, r0
007e721c  96 53 23 e0                                      mla r3, r6, r3, r5
007e7220  56 3a 83 e2                                      add r3, r3, #0x56000
007e7224  10 30 83 e2                                      add r3, r3, #0x10
007e7228  b6 00 d3 e1                                      ldrh r0, [r3, #6]
007e722c  cc 9d ec eb                                      bl #0x30e964
007e7230  00 10 a0 e1                                      mov r1, r0
007e7234  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e7238  cb 9e ec eb                                      bl #0x30ed6c
007e723c  0b 10 a0 e1                                      mov r1, fp
007e7240  57 9e ec eb                                      bl #0x30eba4
007e7244  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007e7248  20 10 9d e5                                      ldr r1, [sp, #0x20]
007e724c  01 30 92 e7                                      ldr r3, [r2, r1]
007e7250  8c 00 8d e5                                      str r0, [sp, #0x8c]
007e7254  7c a0 8d e5                                      str sl, [sp, #0x7c]
007e7258  80 80 8d e5                                      str r8, [sp, #0x80]
007e725c  88 90 8d e5                                      str sb, [sp, #0x88]
007e7260  70 90 8d e5                                      str sb, [sp, #0x70]
007e7264  74 a0 8d e5                                      str sl, [sp, #0x74]
007e7268  78 80 8d e5                                      str r8, [sp, #0x78]
007e726c  84 00 8d e5                                      str r0, [sp, #0x84]
007e7270  00 c0 93 e5                                      ldr ip, [r3]
007e7274  03 00 a0 e1                                      mov r0, r3
007e7278  24 10 9d e5                                      ldr r1, [sp, #0x24]
007e727c  04 20 a0 e3                                      mov r2, #4
007e7280  28 30 9d e5                                      ldr r3, [sp, #0x28]
007e7284  0f e0 a0 e1                                      mov lr, pc
007e7288  08 f0 9c e5                                      ldr pc, [ip, #8]
007e728c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007e7290  10 40 84 e2                                      add r4, r4, #0x10
007e7294  03 00 54 e1                                      cmp r4, r3
007e7298  b6 ff ff 1a                                      bne #0x7e7178
007e729c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e72a0  19 3a a0 e3                                      mov r3, #0x19000
007e72a4  9a 3f 83 e2                                      add r3, r3, #0x268
007e72a8  03 00 91 e7                                      ldr r0, [r1, r3]
007e72ac  30 20 9d e5                                      ldr r2, [sp, #0x30]
007e72b0  34 30 9d e5                                      ldr r3, [sp, #0x34]
007e72b4  5c b0 8d e5                                      str fp, [sp, #0x5c]
007e72b8  60 20 8d e5                                      str r2, [sp, #0x60]
007e72bc  6c 30 8d e5                                      str r3, [sp, #0x6c]
007e72c0  64 30 8d e5                                      str r3, [sp, #0x64]
007e72c4  68 70 8d e5                                      str r7, [sp, #0x68]
007e72c8  50 70 8d e5                                      str r7, [sp, #0x50]
007e72cc  54 b0 8d e5                                      str fp, [sp, #0x54]
007e72d0  58 20 8d e5                                      str r2, [sp, #0x58]
007e72d4  00 20 90 e5                                      ldr r2, [r0]
007e72d8  66 36 06 e3                                      movw r3, #0x6666
007e72dc  66 3f 43 e3                                      movt r3, #0x3f66
007e72e0  08 c0 92 e5                                      ldr ip, [r2, #8]
007e72e4  9a 29 09 e3                                      movw r2, #0x999a
007e72e8  99 2e 43 e3                                      movt r2, #0x3e99
007e72ec  b0 30 8d e5                                      str r3, [sp, #0xb0]
007e72f0  a8 20 8d e5                                      str r2, [sp, #0xa8]
007e72f4  ac 30 8d e5                                      str r3, [sp, #0xac]
007e72f8  50 10 8d e2                                      add r1, sp, #0x50
007e72fc  04 20 a0 e3                                      mov r2, #4
007e7300  a8 30 8d e2                                      add r3, sp, #0xa8
007e7304  3c ff 2f e1                                      blx ip
007e7308  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007e730c  10 00 10 e3                                      tst r0, #0x10
007e7310  72 00 00 0a                                      beq #0x7e74e0
007e7314  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e7318  19 3a a0 e3                                      mov r3, #0x19000
007e731c  23 3e 83 e2                                      add r3, r3, #0x230
007e7320  03 50 91 e7                                      ldr r5, [r1, r3]
007e7324  9a 29 09 e3                                      movw r2, #0x999a
007e7328  3f 34 a0 e3                                      mov r3, #0x3f000000
007e732c  99 2e 43 e3                                      movt r2, #0x3e99
007e7330  00 00 55 e3                                      cmp r5, #0
007e7334  98 30 8d e5                                      str r3, [sp, #0x98]
007e7338  94 20 8d e5                                      str r2, [sp, #0x94]
007e733c  90 30 8d e5                                      str r3, [sp, #0x90]
007e7340  66 00 00 0a                                      beq #0x7e74e0
007e7344  19 2a a0 e3                                      mov r2, #0x19000
007e7348  9a 2f 82 e2                                      add r2, r2, #0x268
007e734c  90 30 8d e2                                      add r3, sp, #0x90
007e7350  14 20 8d e5                                      str r2, [sp, #0x14]
007e7354  50 60 8d e2                                      add r6, sp, #0x50
007e7358  18 30 8d e5                                      str r3, [sp, #0x18]
007e735c  64 40 95 e5                                      ldr r4, [r5, #0x64]
007e7360  00 00 54 e3                                      cmp r4, #0
007e7364  03 00 00 1a                                      bne #0x7e7378
007e7368  59 00 00 ea                                      b #0x7e74d4
007e736c  08 40 94 e5                                      ldr r4, [r4, #8]
007e7370  00 00 54 e3                                      cmp r4, #0
007e7374  56 00 00 0a                                      beq #0x7e74d4
007e7378  04 30 94 e5                                      ldr r3, [r4, #4]
007e737c  01 00 53 e3                                      cmp r3, #1
007e7380  f9 ff ff 1a                                      bne #0x7e736c
007e7384  54 30 94 e5                                      ldr r3, [r4, #0x54]
007e7388  50 20 94 e5                                      ldr r2, [r4, #0x50]
007e738c  00 70 a0 e3                                      mov r7, #0
007e7390  02 a1 83 e2                                      add sl, r3, #0x80000000
007e7394  02 81 82 e2                                      add r8, r2, #0x80000000
007e7398  60 20 8d e5                                      str r2, [sp, #0x60]
007e739c  6c 30 8d e5                                      str r3, [sp, #0x6c]
007e73a0  50 80 8d e5                                      str r8, [sp, #0x50]
007e73a4  54 a0 8d e5                                      str sl, [sp, #0x54]
007e73a8  58 20 8d e5                                      str r2, [sp, #0x58]
007e73ac  5c a0 8d e5                                      str sl, [sp, #0x5c]
007e73b0  64 30 8d e5                                      str r3, [sp, #0x64]
007e73b4  68 80 8d e5                                      str r8, [sp, #0x68]
007e73b8  38 10 94 e5                                      ldr r1, [r4, #0x38]
007e73bc  08 00 a0 e1                                      mov r0, r8
007e73c0  69 9e ec eb                                      bl #0x30ed6c
007e73c4  40 10 94 e5                                      ldr r1, [r4, #0x40]
007e73c8  00 90 a0 e1                                      mov sb, r0
007e73cc  0a 00 a0 e1                                      mov r0, sl
007e73d0  65 9e ec eb                                      bl #0x30ed6c
007e73d4  00 10 a0 e1                                      mov r1, r0
007e73d8  09 00 a0 e1                                      mov r0, sb
007e73dc  f0 9d ec eb                                      bl #0x30eba4
007e73e0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
007e73e4  00 90 a0 e1                                      mov sb, r0
007e73e8  08 00 a0 e1                                      mov r0, r8
007e73ec  5e 9e ec eb                                      bl #0x30ed6c
007e73f0  44 10 94 e5                                      ldr r1, [r4, #0x44]
007e73f4  00 80 a0 e1                                      mov r8, r0
007e73f8  0a 00 a0 e1                                      mov r0, sl
007e73fc  5a 9e ec eb                                      bl #0x30ed6c
007e7400  00 10 a0 e1                                      mov r1, r0
007e7404  08 00 a0 e1                                      mov r0, r8
007e7408  e5 9d ec eb                                      bl #0x30eba4
007e740c  48 10 94 e5                                      ldr r1, [r4, #0x48]
007e7410  00 a0 a0 e1                                      mov sl, r0
007e7414  09 00 a0 e1                                      mov r0, sb
007e7418  e1 9d ec eb                                      bl #0x30eba4
007e741c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007e7420  00 80 a0 e1                                      mov r8, r0
007e7424  0a 00 a0 e1                                      mov r0, sl
007e7428  dd 9d ec eb                                      bl #0x30eba4
007e742c  07 a0 86 e0                                      add sl, r6, r7
007e7430  04 00 8a e5                                      str r0, [sl, #4]
007e7434  07 80 86 e7                                      str r8, [r6, r7]
007e7438  00 90 a0 e1                                      mov sb, r0
007e743c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007e7440  08 00 a0 e1                                      mov r0, r8
007e7444  48 9e ec eb                                      bl #0x30ed6c
007e7448  14 10 95 e5                                      ldr r1, [r5, #0x14]
007e744c  00 b0 a0 e1                                      mov fp, r0
007e7450  09 00 a0 e1                                      mov r0, sb
007e7454  44 9e ec eb                                      bl #0x30ed6c
007e7458  00 10 a0 e1                                      mov r1, r0
007e745c  0b 00 a0 e1                                      mov r0, fp
007e7460  cf 9d ec eb                                      bl #0x30eba4
007e7464  10 10 95 e5                                      ldr r1, [r5, #0x10]
007e7468  00 b0 a0 e1                                      mov fp, r0
007e746c  08 00 a0 e1                                      mov r0, r8
007e7470  3d 9e ec eb                                      bl #0x30ed6c
007e7474  18 10 95 e5                                      ldr r1, [r5, #0x18]
007e7478  00 80 a0 e1                                      mov r8, r0
007e747c  09 00 a0 e1                                      mov r0, sb
007e7480  39 9e ec eb                                      bl #0x30ed6c
007e7484  00 10 a0 e1                                      mov r1, r0
007e7488  08 00 a0 e1                                      mov r0, r8
007e748c  c4 9d ec eb                                      bl #0x30eba4
007e7490  04 10 95 e5                                      ldr r1, [r5, #4]
007e7494  00 80 a0 e1                                      mov r8, r0
007e7498  0b 00 a0 e1                                      mov r0, fp
007e749c  c0 9d ec eb                                      bl #0x30eba4
007e74a0  08 10 95 e5                                      ldr r1, [r5, #8]
007e74a4  00 90 a0 e1                                      mov sb, r0
007e74a8  08 00 a0 e1                                      mov r0, r8
007e74ac  bc 9d ec eb                                      bl #0x30eba4
007e74b0  04 00 8a e5                                      str r0, [sl, #4]
007e74b4  07 90 86 e7                                      str sb, [r6, r7]
007e74b8  08 70 87 e2                                      add r7, r7, #8
007e74bc  20 00 57 e3                                      cmp r7, #0x20
007e74c0  2a 00 00 0a                                      beq #0x7e7570
007e74c4  06 30 a0 e1                                      mov r3, r6
007e74c8  07 80 b3 e7                                      ldr r8, [r3, r7]!
007e74cc  04 a0 93 e5                                      ldr sl, [r3, #4]
007e74d0  b8 ff ff ea                                      b #0x7e73b8
007e74d4  60 50 95 e5                                      ldr r5, [r5, #0x60]
007e74d8  00 00 55 e3                                      cmp r5, #0
007e74dc  9e ff ff 1a                                      bne #0x7e735c
007e74e0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007e74e4  40 00 12 e3                                      tst r2, #0x40
007e74e8  1e 00 00 0a                                      beq #0x7e7568
007e74ec  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007e74f0  19 3a a0 e3                                      mov r3, #0x19000
007e74f4  23 3e 83 e2                                      add r3, r3, #0x230
007e74f8  03 50 90 e7                                      ldr r5, [r0, r3]
007e74fc  00 00 55 e3                                      cmp r5, #0
007e7500  18 00 00 0a                                      beq #0x7e7568
007e7504  90 40 8d e2                                      add r4, sp, #0x90
007e7508  19 7a a0 e3                                      mov r7, #0x19000
007e750c  9a 7f 87 e2                                      add r7, r7, #0x268
007e7510  04 60 a0 e1                                      mov r6, r4
007e7514  00 80 a0 e1                                      mov r8, r0
007e7518  04 c0 85 e2                                      add ip, r5, #4
007e751c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
007e7520  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
007e7524  03 00 9c e8                                      ldm ip, {r0, r1}
007e7528  04 30 a0 e1                                      mov r3, r4
007e752c  03 00 83 e8                                      stm r3, {r0, r1}
007e7530  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
007e7534  07 30 98 e7                                      ldr r3, [r8, r7]
007e7538  06 10 a0 e1                                      mov r1, r6
007e753c  90 20 8d e5                                      str r2, [sp, #0x90]
007e7540  30 20 95 e5                                      ldr r2, [r5, #0x30]
007e7544  03 00 a0 e1                                      mov r0, r3
007e7548  06 40 a0 e1                                      mov r4, r6
007e754c  94 20 8d e5                                      str r2, [sp, #0x94]
007e7550  00 30 93 e5                                      ldr r3, [r3]
007e7554  0f e0 a0 e1                                      mov lr, pc
007e7558  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007e755c  60 50 95 e5                                      ldr r5, [r5, #0x60]
007e7560  00 00 55 e3                                      cmp r5, #0
007e7564  eb ff ff 1a                                      bne #0x7e7518
007e7568  dc d0 8d e2                                      add sp, sp, #0xdc
007e756c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e7570  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e7574  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e7578  04 20 a0 e3                                      mov r2, #4
007e757c  00 30 91 e7                                      ldr r3, [r1, r0]
007e7580  06 10 a0 e1                                      mov r1, r6
007e7584  03 00 a0 e1                                      mov r0, r3
007e7588  00 c0 93 e5                                      ldr ip, [r3]
007e758c  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e7590  0f e0 a0 e1                                      mov lr, pc
007e7594  08 f0 9c e5                                      ldr pc, [ip, #8]
007e7598  73 ff ff ea                                      b #0x7e736c

; FUNCTION 0x007e759c, declared_size=128, range_size=128, mode=arm
; class-group: b2World
; alias: _ZN7b2World5QueryERK6b2AABBPP7b2Shapei
; demangled: b2World::Query(b2AABB const&, b2Shape**, int)
; decoder-mode: arm
007e759c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e75a0  44 60 80 e2                                      add r6, r0, #0x44
007e75a4  00 70 a0 e1                                      mov r7, r0
007e75a8  01 a0 a0 e1                                      mov sl, r1
007e75ac  06 00 a0 e1                                      mov r0, r6
007e75b0  03 11 a0 e1                                      lsl r1, r3, #2
007e75b4  03 80 a0 e1                                      mov r8, r3
007e75b8  02 50 a0 e1                                      mov r5, r2
007e75bc  20 30 00 eb                                      bl #0x7f3644
007e75c0  19 3a a0 e3                                      mov r3, #0x19000
007e75c4  00 40 a0 e1                                      mov r4, r0
007e75c8  76 3f 83 e2                                      add r3, r3, #0x1d8
007e75cc  03 00 97 e7                                      ldr r0, [r7, r3]
007e75d0  0a 10 a0 e1                                      mov r1, sl
007e75d4  08 30 a0 e1                                      mov r3, r8
007e75d8  04 20 a0 e1                                      mov r2, r4
007e75dc  ef ec ff eb                                      bl #0x7e29a0
007e75e0  00 70 50 e2                                      subs r7, r0, #0
007e75e4  07 00 00 da                                      ble #0x7e7608
007e75e8  00 30 a0 e3                                      mov r3, #0
007e75ec  03 20 a0 e1                                      mov r2, r3
007e75f0  03 10 94 e7                                      ldr r1, [r4, r3]
007e75f4  01 20 82 e2                                      add r2, r2, #1
007e75f8  07 00 52 e1                                      cmp r2, r7
007e75fc  03 10 85 e7                                      str r1, [r5, r3]
007e7600  04 30 83 e2                                      add r3, r3, #4
007e7604  f9 ff ff 1a                                      bne #0x7e75f0
007e7608  06 00 a0 e1                                      mov r0, r6
007e760c  04 10 a0 e1                                      mov r1, r4
007e7610  e4 2f 00 eb                                      bl #0x7f35a8
007e7614  07 00 a0 e1                                      mov r0, r7
007e7618  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e76dc, declared_size=1056, range_size=1056, mode=arm
; class-group: b2World
; alias: _ZN7b2World5SolveERK10b2TimeStep
; demangled: b2World::Solve(b2TimeStep const&)
; decoder-mode: arm
007e76dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e76e0  19 3a a0 e3                                      mov r3, #0x19000
007e76e4  00 70 a0 e1                                      mov r7, r0
007e76e8  27 3e 83 e2                                      add r3, r3, #0x270
007e76ec  19 0a a0 e3                                      mov r0, #0x19000
007e76f0  00 c0 a0 e3                                      mov ip, #0
007e76f4  03 c0 87 e7                                      str ip, [r7, r3]
007e76f8  00 20 a0 e1                                      mov r2, r0
007e76fc  00 e0 a0 e1                                      mov lr, r0
007e7700  8f 0f 80 e2                                      add r0, r0, #0x23c
007e7704  00 00 97 e7                                      ldr r0, [r7, r0]
007e7708  19 ca a0 e3                                      mov ip, #0x19000
007e770c  99 cf 8c e2                                      add ip, ip, #0x264
007e7710  4c d0 4d e2                                      sub sp, sp, #0x4c
007e7714  0c c0 97 e7                                      ldr ip, [r7, ip]
007e7718  91 ef 8e e2                                      add lr, lr, #0x244
007e771c  09 2d 82 e2                                      add r2, r2, #0x240
007e7720  0e 30 97 e7                                      ldr r3, [r7, lr]
007e7724  02 20 97 e7                                      ldr r2, [r7, r2]
007e7728  10 10 8d e5                                      str r1, [sp, #0x10]
007e772c  00 10 a0 e1                                      mov r1, r0
007e7730  44 00 87 e2                                      add r0, r7, #0x44
007e7734  0c 00 8d e5                                      str r0, [sp, #0xc]
007e7738  04 c0 8d e5                                      str ip, [sp, #4]
007e773c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e7740  18 a0 8d e2                                      add sl, sp, #0x18
007e7744  0a 00 a0 e1                                      mov r0, sl
007e7748  00 c0 8d e5                                      str ip, [sp]
007e774c  63 0e 00 eb                                      bl #0x7eb0e0
007e7750  19 3a a0 e3                                      mov r3, #0x19000
007e7754  23 3e 83 e2                                      add r3, r3, #0x230
007e7758  03 30 97 e7                                      ldr r3, [r7, r3]
007e775c  00 00 53 e3                                      cmp r3, #0
007e7760  05 00 00 0a                                      beq #0x7e777c
007e7764  b0 20 d3 e1                                      ldrh r2, [r3]
007e7768  04 20 c2 e3                                      bic r2, r2, #4
007e776c  b0 20 c3 e1                                      strh r2, [r3]
007e7770  60 30 93 e5                                      ldr r3, [r3, #0x60]
007e7774  00 00 53 e3                                      cmp r3, #0
007e7778  f9 ff ff 1a                                      bne #0x7e7764
007e777c  19 3a a0 e3                                      mov r3, #0x19000
007e7780  8e 3f 83 e2                                      add r3, r3, #0x238
007e7784  03 30 97 e7                                      ldr r3, [r7, r3]
007e7788  00 00 53 e3                                      cmp r3, #0
007e778c  05 00 00 0a                                      beq #0x7e77a8
007e7790  04 20 93 e5                                      ldr r2, [r3, #4]
007e7794  04 20 c2 e3                                      bic r2, r2, #4
007e7798  04 20 83 e5                                      str r2, [r3, #4]
007e779c  10 30 93 e5                                      ldr r3, [r3, #0x10]
007e77a0  00 00 53 e3                                      cmp r3, #0
007e77a4  f9 ff ff 1a                                      bne #0x7e7790
007e77a8  19 3a a0 e3                                      mov r3, #0x19000
007e77ac  8d 3f 83 e2                                      add r3, r3, #0x234
007e77b0  03 30 97 e7                                      ldr r3, [r7, r3]
007e77b4  00 00 53 e3                                      cmp r3, #0
007e77b8  04 00 00 0a                                      beq #0x7e77d0
007e77bc  00 20 a0 e3                                      mov r2, #0
007e77c0  3c 20 c3 e5                                      strb r2, [r3, #0x3c]
007e77c4  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e77c8  00 00 53 e3                                      cmp r3, #0
007e77cc  fb ff ff 1a                                      bne #0x7e77c0
007e77d0  19 3a a0 e3                                      mov r3, #0x19000
007e77d4  8f 3f 83 e2                                      add r3, r3, #0x23c
007e77d8  03 10 97 e7                                      ldr r1, [r7, r3]
007e77dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e77e0  01 11 a0 e1                                      lsl r1, r1, #2
007e77e4  96 2f 00 eb                                      bl #0x7f3644
007e77e8  19 3a a0 e3                                      mov r3, #0x19000
007e77ec  23 3e 83 e2                                      add r3, r3, #0x230
007e77f0  03 60 97 e7                                      ldr r6, [r7, r3]
007e77f4  00 40 a0 e1                                      mov r4, r0
007e77f8  00 00 56 e3                                      cmp r6, #0
007e77fc  93 00 00 0a                                      beq #0x7e7a50
007e7800  19 9a a0 e3                                      mov sb, #0x19000
007e7804  09 80 a0 e1                                      mov r8, sb
007e7808  19 3a 87 e2                                      add r3, r7, #0x19000
007e780c  25 0e 88 e2                                      add r0, r8, #0x250
007e7810  92 3f 83 e2                                      add r3, r3, #0x248
007e7814  14 30 8d e5                                      str r3, [sp, #0x14]
007e7818  9d 9f 89 e2                                      add sb, sb, #0x274
007e781c  08 00 8d e5                                      str r0, [sp, #8]
007e7820  27 8e 88 e2                                      add r8, r8, #0x270
007e7824  01 50 a0 e3                                      mov r5, #1
007e7828  b0 30 d6 e1                                      ldrh r3, [r6]
007e782c  0e 30 13 e2                                      ands r3, r3, #0xe
007e7830  83 00 00 1a                                      bne #0x7e7a44
007e7834  f2 20 d6 e1                                      ldrsh r2, [r6, #2]
007e7838  00 00 52 e3                                      cmp r2, #0
007e783c  80 00 00 0a                                      beq #0x7e7a44
007e7840  30 30 8d e5                                      str r3, [sp, #0x30]
007e7844  2c 30 8d e5                                      str r3, [sp, #0x2c]
007e7848  34 30 8d e5                                      str r3, [sp, #0x34]
007e784c  00 60 84 e5                                      str r6, [r4]
007e7850  b0 30 d6 e1                                      ldrh r3, [r6]
007e7854  01 b0 a0 e3                                      mov fp, #1
007e7858  04 30 83 e3                                      orr r3, r3, #4
007e785c  b0 30 c6 e1                                      strh r3, [r6]
007e7860  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e7864  01 10 4b e2                                      sub r1, fp, #1
007e7868  01 01 94 e7                                      ldr r0, [r4, r1, lsl #2]
007e786c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
007e7870  01 20 83 e2                                      add r2, r3, #1
007e7874  03 01 8c e7                                      str r0, [ip, r3, lsl #2]
007e7878  2c 20 8d e5                                      str r2, [sp, #0x2c]
007e787c  b0 20 d0 e1                                      ldrh r2, [r0]
007e7880  f2 30 d0 e1                                      ldrsh r3, [r0, #2]
007e7884  08 20 c2 e3                                      bic r2, r2, #8
007e7888  00 00 53 e3                                      cmp r3, #0
007e788c  b0 20 c0 e1                                      strh r2, [r0]
007e7890  0b b1 84 00                                      addeq fp, r4, fp, lsl #2
007e7894  3a 00 00 0a                                      beq #0x7e7984
007e7898  70 30 90 e5                                      ldr r3, [r0, #0x70]
007e789c  00 00 53 e3                                      cmp r3, #0
007e78a0  1a 00 00 0a                                      beq #0x7e7910
007e78a4  04 20 93 e5                                      ldr r2, [r3, #4]
007e78a8  04 c0 92 e5                                      ldr ip, [r2, #4]
007e78ac  05 00 1c e3                                      tst ip, #5
007e78b0  13 00 00 1a                                      bne #0x7e7904
007e78b4  08 c0 92 e5                                      ldr ip, [r2, #8]
007e78b8  00 00 5c e3                                      cmp ip, #0
007e78bc  10 00 00 0a                                      beq #0x7e7904
007e78c0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007e78c4  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007e78c8  01 e0 8c e2                                      add lr, ip, #1
007e78cc  0c 21 8b e7                                      str r2, [fp, ip, lsl #2]
007e78d0  34 e0 8d e5                                      str lr, [sp, #0x34]
007e78d4  04 20 93 e5                                      ldr r2, [r3, #4]
007e78d8  04 c0 92 e5                                      ldr ip, [r2, #4]
007e78dc  04 c0 8c e3                                      orr ip, ip, #4
007e78e0  04 c0 82 e5                                      str ip, [r2, #4]
007e78e4  00 20 93 e5                                      ldr r2, [r3]
007e78e8  b0 c0 d2 e1                                      ldrh ip, [r2]
007e78ec  04 00 1c e3                                      tst ip, #4
007e78f0  01 21 84 07                                      streq r2, [r4, r1, lsl #2]
007e78f4  b0 c0 d2 01                                      ldrheq ip, [r2]
007e78f8  01 10 81 02                                      addeq r1, r1, #1
007e78fc  04 c0 8c 03                                      orreq ip, ip, #4
007e7900  b0 c0 c2 01                                      strheq ip, [r2]
007e7904  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e7908  00 00 53 e3                                      cmp r3, #0
007e790c  e4 ff ff 1a                                      bne #0x7e78a4
007e7910  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
007e7914  00 00 53 e3                                      cmp r3, #0
007e7918  15 00 00 0a                                      beq #0x7e7974
007e791c  04 20 93 e5                                      ldr r2, [r3, #4]
007e7920  3c 00 d2 e5                                      ldrb r0, [r2, #0x3c]
007e7924  00 00 50 e3                                      cmp r0, #0
007e7928  0e 00 00 1a                                      bne #0x7e7968
007e792c  30 00 9d e5                                      ldr r0, [sp, #0x30]
007e7930  28 e0 9d e5                                      ldr lr, [sp, #0x28]
007e7934  01 c0 80 e2                                      add ip, r0, #1
007e7938  00 21 8e e7                                      str r2, [lr, r0, lsl #2]
007e793c  30 c0 8d e5                                      str ip, [sp, #0x30]
007e7940  04 20 93 e5                                      ldr r2, [r3, #4]
007e7944  3c 50 c2 e5                                      strb r5, [r2, #0x3c]
007e7948  00 20 93 e5                                      ldr r2, [r3]
007e794c  b0 00 d2 e1                                      ldrh r0, [r2]
007e7950  04 00 10 e3                                      tst r0, #4
007e7954  01 21 84 07                                      streq r2, [r4, r1, lsl #2]
007e7958  b0 00 d2 01                                      ldrheq r0, [r2]
007e795c  01 10 81 02                                      addeq r1, r1, #1
007e7960  04 00 80 03                                      orreq r0, r0, #4
007e7964  b0 00 c2 01                                      strheq r0, [r2]
007e7968  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e796c  00 00 53 e3                                      cmp r3, #0
007e7970  e9 ff ff 1a                                      bne #0x7e791c
007e7974  00 00 51 e3                                      cmp r1, #0
007e7978  15 00 00 0a                                      beq #0x7e79d4
007e797c  01 b0 a0 e1                                      mov fp, r1
007e7980  b6 ff ff ea                                      b #0x7e7860
007e7984  00 00 51 e3                                      cmp r1, #0
007e7988  03 00 8b e0                                      add r0, fp, r3
007e798c  10 00 00 0a                                      beq #0x7e79d4
007e7990  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007e7994  08 00 10 e5                                      ldr r0, [r0, #-8]
007e7998  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007e799c  01 c0 82 e2                                      add ip, r2, #1
007e79a0  01 10 41 e2                                      sub r1, r1, #1
007e79a4  02 01 8e e7                                      str r0, [lr, r2, lsl #2]
007e79a8  2c c0 8d e5                                      str ip, [sp, #0x2c]
007e79ac  b0 20 d0 e1                                      ldrh r2, [r0]
007e79b0  f2 c0 d0 e1                                      ldrsh ip, [r0, #2]
007e79b4  04 30 43 e2                                      sub r3, r3, #4
007e79b8  08 20 c2 e3                                      bic r2, r2, #8
007e79bc  00 00 5c e3                                      cmp ip, #0
007e79c0  b0 20 c0 e1                                      strh r2, [r0]
007e79c4  b3 ff ff 1a                                      bne #0x7e7898
007e79c8  00 00 51 e3                                      cmp r1, #0
007e79cc  03 00 8b e0                                      add r0, fp, r3
007e79d0  ee ff ff 1a                                      bne #0x7e7990
007e79d4  08 20 9d e5                                      ldr r2, [sp, #8]
007e79d8  09 30 d7 e7                                      ldrb r3, [r7, sb]
007e79dc  0a 00 a0 e1                                      mov r0, sl
007e79e0  02 c0 d7 e7                                      ldrb ip, [r7, r2]
007e79e4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e79e8  14 20 9d e5                                      ldr r2, [sp, #0x14]
007e79ec  00 c0 8d e5                                      str ip, [sp]
007e79f0  f6 0b 00 eb                                      bl #0x7ea9d0
007e79f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
007e79f8  08 30 97 e7                                      ldr r3, [r7, r8]
007e79fc  44 20 9d e5                                      ldr r2, [sp, #0x44]
007e7a00  03 00 52 e1                                      cmp r2, r3
007e7a04  08 20 87 a7                                      strge r2, [r7, r8]
007e7a08  08 30 87 b7                                      strlt r3, [r7, r8]
007e7a0c  00 00 50 e3                                      cmp r0, #0
007e7a10  0b 00 00 da                                      ble #0x7e7a44
007e7a14  00 30 a0 e3                                      mov r3, #0
007e7a18  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e7a1c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
007e7a20  01 30 83 e2                                      add r3, r3, #1
007e7a24  f2 10 d2 e1                                      ldrsh r1, [r2, #2]
007e7a28  00 00 51 e3                                      cmp r1, #0
007e7a2c  b0 10 d2 01                                      ldrheq r1, [r2]
007e7a30  04 10 c1 03                                      biceq r1, r1, #4
007e7a34  b0 10 c2 01                                      strheq r1, [r2]
007e7a38  2c 00 9d 05                                      ldreq r0, [sp, #0x2c]
007e7a3c  03 00 50 e1                                      cmp r0, r3
007e7a40  f4 ff ff ca                                      bgt #0x7e7a18
007e7a44  60 60 96 e5                                      ldr r6, [r6, #0x60]
007e7a48  00 00 56 e3                                      cmp r6, #0
007e7a4c  75 ff ff 1a                                      bne #0x7e7828
007e7a50  04 10 a0 e1                                      mov r1, r4
007e7a54  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e7a58  d2 2e 00 eb                                      bl #0x7f35a8
007e7a5c  19 3a a0 e3                                      mov r3, #0x19000
007e7a60  23 3e 83 e2                                      add r3, r3, #0x230
007e7a64  03 40 97 e7                                      ldr r4, [r7, r3]
007e7a68  00 00 54 e3                                      cmp r4, #0
007e7a6c  1a 00 00 0a                                      beq #0x7e7adc
007e7a70  19 5a a0 e3                                      mov r5, #0x19000
007e7a74  97 5f 85 e2                                      add r5, r5, #0x25c
007e7a78  02 00 00 ea                                      b #0x7e7a88
007e7a7c  60 40 94 e5                                      ldr r4, [r4, #0x60]
007e7a80  00 00 54 e3                                      cmp r4, #0
007e7a84  14 00 00 0a                                      beq #0x7e7adc
007e7a88  b0 30 d4 e1                                      ldrh r3, [r4]
007e7a8c  0a 00 13 e3                                      tst r3, #0xa
007e7a90  f9 ff ff 1a                                      bne #0x7e7a7c
007e7a94  f2 30 d4 e1                                      ldrsh r3, [r4, #2]
007e7a98  00 00 53 e3                                      cmp r3, #0
007e7a9c  f6 ff ff 0a                                      beq #0x7e7a7c
007e7aa0  04 00 a0 e1                                      mov r0, r4
007e7aa4  80 e9 ff eb                                      bl #0x7e20ac
007e7aa8  00 00 50 e3                                      cmp r0, #0
007e7aac  f2 ff ff 1a                                      bne #0x7e7a7c
007e7ab0  05 30 97 e7                                      ldr r3, [r7, r5]
007e7ab4  04 10 a0 e1                                      mov r1, r4
007e7ab8  00 00 53 e3                                      cmp r3, #0
007e7abc  03 00 a0 e1                                      mov r0, r3
007e7ac0  ed ff ff 0a                                      beq #0x7e7a7c
007e7ac4  00 30 93 e5                                      ldr r3, [r3]
007e7ac8  0f e0 a0 e1                                      mov lr, pc
007e7acc  08 f0 93 e5                                      ldr pc, [r3, #8]
007e7ad0  60 40 94 e5                                      ldr r4, [r4, #0x60]
007e7ad4  00 00 54 e3                                      cmp r4, #0
007e7ad8  ea ff ff 1a                                      bne #0x7e7a88
007e7adc  19 3a a0 e3                                      mov r3, #0x19000
007e7ae0  76 3f 83 e2                                      add r3, r3, #0x1d8
007e7ae4  03 00 97 e7                                      ldr r0, [r7, r3]
007e7ae8  f6 eb ff eb                                      bl #0x7e2ac8
007e7aec  0a 00 a0 e1                                      mov r0, sl
007e7af0  60 0d 00 eb                                      bl #0x7eb078
007e7af4  4c d0 8d e2                                      add sp, sp, #0x4c
007e7af8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e7afc, declared_size=32, range_size=32, mode=arm
; class-group: b2World
; alias: _ZN7b2World8RefilterEP7b2Shape
; demangled: b2World::Refilter(b2Shape*)
; decoder-mode: arm
007e7afc  19 3a a0 e3                                      mov r3, #0x19000
007e7b00  76 3f 83 e2                                      add r3, r3, #0x1d8
007e7b04  03 30 90 e7                                      ldr r3, [r0, r3]
007e7b08  0c 20 91 e5                                      ldr r2, [r1, #0xc]
007e7b0c  01 00 a0 e1                                      mov r0, r1
007e7b10  03 10 a0 e1                                      mov r1, r3
007e7b14  04 20 82 e2                                      add r2, r2, #4
007e7b18  a4 f9 ff ea                                      b #0x7e61b0

; FUNCTION 0x007e7b1c, declared_size=356, range_size=356, mode=arm
; class-group: b2World
; alias: _ZN7b2World12DestroyJointEP7b2Joint
; demangled: b2World::DestroyJoint(b2Joint*)
; decoder-mode: arm
007e7b1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e7b20  08 30 91 e5                                      ldr r3, [r1, #8]
007e7b24  3d 70 d1 e5                                      ldrb r7, [r1, #0x3d]
007e7b28  00 50 a0 e1                                      mov r5, r0
007e7b2c  00 00 53 e3                                      cmp r3, #0
007e7b30  0c 20 91 15                                      ldrne r2, [r1, #0xc]
007e7b34  0c 20 83 15                                      strne r2, [r3, #0xc]
007e7b38  0c 30 91 e5                                      ldr r3, [r1, #0xc]
007e7b3c  00 00 53 e3                                      cmp r3, #0
007e7b40  08 20 91 15                                      ldrne r2, [r1, #8]
007e7b44  08 20 83 15                                      strne r2, [r3, #8]
007e7b48  19 3a a0 e3                                      mov r3, #0x19000
007e7b4c  8d 3f 83 e2                                      add r3, r3, #0x234
007e7b50  03 20 90 e7                                      ldr r2, [r0, r3]
007e7b54  01 00 52 e1                                      cmp r2, r1
007e7b58  0c 20 91 05                                      ldreq r2, [r1, #0xc]
007e7b5c  03 20 80 07                                      streq r2, [r0, r3]
007e7b60  30 60 91 e5                                      ldr r6, [r1, #0x30]
007e7b64  34 40 91 e5                                      ldr r4, [r1, #0x34]
007e7b68  00 30 a0 e3                                      mov r3, #0
007e7b6c  b0 20 d6 e1                                      ldrh r2, [r6]
007e7b70  8c 30 86 e5                                      str r3, [r6, #0x8c]
007e7b74  01 00 a0 e1                                      mov r0, r1
007e7b78  08 20 c2 e3                                      bic r2, r2, #8
007e7b7c  b0 20 c6 e1                                      strh r2, [r6]
007e7b80  b0 20 d4 e1                                      ldrh r2, [r4]
007e7b84  8c 30 84 e5                                      str r3, [r4, #0x8c]
007e7b88  08 30 c2 e3                                      bic r3, r2, #8
007e7b8c  b0 30 c4 e1                                      strh r3, [r4]
007e7b90  18 30 91 e5                                      ldr r3, [r1, #0x18]
007e7b94  00 00 53 e3                                      cmp r3, #0
007e7b98  1c 20 91 15                                      ldrne r2, [r1, #0x1c]
007e7b9c  0c 20 83 15                                      strne r2, [r3, #0xc]
007e7ba0  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
007e7ba4  00 00 53 e3                                      cmp r3, #0
007e7ba8  18 20 91 15                                      ldrne r2, [r1, #0x18]
007e7bac  08 20 83 15                                      strne r2, [r3, #8]
007e7bb0  6c 20 96 e5                                      ldr r2, [r6, #0x6c]
007e7bb4  10 30 81 e2                                      add r3, r1, #0x10
007e7bb8  03 00 52 e1                                      cmp r2, r3
007e7bbc  1c 30 91 05                                      ldreq r3, [r1, #0x1c]
007e7bc0  6c 30 86 05                                      streq r3, [r6, #0x6c]
007e7bc4  28 20 91 e5                                      ldr r2, [r1, #0x28]
007e7bc8  00 30 a0 e3                                      mov r3, #0
007e7bcc  1c 30 81 e5                                      str r3, [r1, #0x1c]
007e7bd0  03 00 52 e1                                      cmp r2, r3
007e7bd4  18 30 81 e5                                      str r3, [r1, #0x18]
007e7bd8  2c 30 91 15                                      ldrne r3, [r1, #0x2c]
007e7bdc  0c 30 82 15                                      strne r3, [r2, #0xc]
007e7be0  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
007e7be4  00 00 53 e3                                      cmp r3, #0
007e7be8  28 20 91 15                                      ldrne r2, [r1, #0x28]
007e7bec  08 20 83 15                                      strne r2, [r3, #8]
007e7bf0  6c 20 94 e5                                      ldr r2, [r4, #0x6c]
007e7bf4  20 30 81 e2                                      add r3, r1, #0x20
007e7bf8  03 00 52 e1                                      cmp r2, r3
007e7bfc  2c 30 91 05                                      ldreq r3, [r1, #0x2c]
007e7c00  6c 30 84 05                                      streq r3, [r4, #0x6c]
007e7c04  00 30 a0 e3                                      mov r3, #0
007e7c08  2c 30 81 e5                                      str r3, [r1, #0x2c]
007e7c0c  28 30 81 e5                                      str r3, [r1, #0x28]
007e7c10  05 10 a0 e1                                      mov r1, r5
007e7c14  a8 0d 00 eb                                      bl #0x7eb2bc
007e7c18  19 3a a0 e3                                      mov r3, #0x19000
007e7c1c  91 3f 83 e2                                      add r3, r3, #0x244
007e7c20  03 20 95 e7                                      ldr r2, [r5, r3]
007e7c24  00 00 57 e3                                      cmp r7, #0
007e7c28  01 20 42 e2                                      sub r2, r2, #1
007e7c2c  03 20 85 e7                                      str r2, [r5, r3]
007e7c30  11 00 00 1a                                      bne #0x7e7c7c
007e7c34  68 70 96 e5                                      ldr r7, [r6, #0x68]
007e7c38  68 30 94 e5                                      ldr r3, [r4, #0x68]
007e7c3c  03 00 57 e1                                      cmp r7, r3
007e7c40  06 70 a0 b1                                      movlt r7, r6
007e7c44  04 70 a0 a1                                      movge r7, r4
007e7c48  64 40 97 e5                                      ldr r4, [r7, #0x64]
007e7c4c  00 00 54 e3                                      cmp r4, #0
007e7c50  09 00 00 0a                                      beq #0x7e7c7c
007e7c54  19 6a a0 e3                                      mov r6, #0x19000
007e7c58  04 70 87 e2                                      add r7, r7, #4
007e7c5c  76 6f 86 e2                                      add r6, r6, #0x1d8
007e7c60  04 00 a0 e1                                      mov r0, r4
007e7c64  06 10 95 e7                                      ldr r1, [r5, r6]
007e7c68  07 20 a0 e1                                      mov r2, r7
007e7c6c  4f f9 ff eb                                      bl #0x7e61b0
007e7c70  08 40 94 e5                                      ldr r4, [r4, #8]
007e7c74  00 00 54 e3                                      cmp r4, #0
007e7c78  f8 ff ff 1a                                      bne #0x7e7c60
007e7c7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e7c80, declared_size=304, range_size=304, mode=arm
; class-group: b2World
; alias: _ZN7b2World11CreateJointEPK10b2JointDef
; demangled: b2World::CreateJoint(b2JointDef const*)
; decoder-mode: arm
007e7c80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e7c84  00 60 a0 e1                                      mov r6, r0
007e7c88  01 40 a0 e1                                      mov r4, r1
007e7c8c  01 00 a0 e1                                      mov r0, r1
007e7c90  06 10 a0 e1                                      mov r1, r6
007e7c94  b8 0d 00 eb                                      bl #0x7eb37c
007e7c98  00 20 a0 e3                                      mov r2, #0
007e7c9c  19 3a a0 e3                                      mov r3, #0x19000
007e7ca0  08 20 80 e5                                      str r2, [r0, #8]
007e7ca4  8d 3f 83 e2                                      add r3, r3, #0x234
007e7ca8  03 20 96 e7                                      ldr r2, [r6, r3]
007e7cac  00 50 a0 e1                                      mov r5, r0
007e7cb0  00 10 a0 e3                                      mov r1, #0
007e7cb4  0c 20 80 e5                                      str r2, [r0, #0xc]
007e7cb8  03 30 96 e7                                      ldr r3, [r6, r3]
007e7cbc  19 2a a0 e3                                      mov r2, #0x19000
007e7cc0  8d 2f 82 e2                                      add r2, r2, #0x234
007e7cc4  00 00 53 e3                                      cmp r3, #0
007e7cc8  08 00 83 15                                      strne r0, [r3, #8]
007e7ccc  19 3a a0 e3                                      mov r3, #0x19000
007e7cd0  02 00 86 e7                                      str r0, [r6, r2]
007e7cd4  91 3f 83 e2                                      add r3, r3, #0x244
007e7cd8  03 20 96 e7                                      ldr r2, [r6, r3]
007e7cdc  01 20 82 e2                                      add r2, r2, #1
007e7ce0  03 20 86 e7                                      str r2, [r6, r3]
007e7ce4  34 20 90 e5                                      ldr r2, [r0, #0x34]
007e7ce8  30 30 90 e5                                      ldr r3, [r0, #0x30]
007e7cec  18 10 80 e5                                      str r1, [r0, #0x18]
007e7cf0  10 20 80 e5                                      str r2, [r0, #0x10]
007e7cf4  14 00 85 e5                                      str r0, [r5, #0x14]
007e7cf8  6c 20 93 e5                                      ldr r2, [r3, #0x6c]
007e7cfc  1c 20 80 e5                                      str r2, [r0, #0x1c]
007e7d00  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007e7d04  10 20 80 e2                                      add r2, r0, #0x10
007e7d08  00 00 51 e3                                      cmp r1, #0
007e7d0c  08 20 81 15                                      strne r2, [r1, #8]
007e7d10  30 30 90 15                                      ldrne r3, [r0, #0x30]
007e7d14  6c 20 83 e5                                      str r2, [r3, #0x6c]
007e7d18  30 20 90 e5                                      ldr r2, [r0, #0x30]
007e7d1c  34 30 90 e5                                      ldr r3, [r0, #0x34]
007e7d20  20 20 80 e5                                      str r2, [r0, #0x20]
007e7d24  00 20 a0 e3                                      mov r2, #0
007e7d28  28 20 80 e5                                      str r2, [r0, #0x28]
007e7d2c  24 00 85 e5                                      str r0, [r5, #0x24]
007e7d30  6c 20 93 e5                                      ldr r2, [r3, #0x6c]
007e7d34  2c 20 80 e5                                      str r2, [r0, #0x2c]
007e7d38  6c 10 93 e5                                      ldr r1, [r3, #0x6c]
007e7d3c  20 20 80 e2                                      add r2, r0, #0x20
007e7d40  00 00 51 e3                                      cmp r1, #0
007e7d44  08 20 81 15                                      strne r2, [r1, #8]
007e7d48  34 30 90 15                                      ldrne r3, [r0, #0x34]
007e7d4c  6c 20 83 e5                                      str r2, [r3, #0x6c]
007e7d50  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
007e7d54  00 00 53 e3                                      cmp r3, #0
007e7d58  12 00 00 1a                                      bne #0x7e7da8
007e7d5c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007e7d60  08 80 94 e5                                      ldr r8, [r4, #8]
007e7d64  68 20 93 e5                                      ldr r2, [r3, #0x68]
007e7d68  68 10 98 e5                                      ldr r1, [r8, #0x68]
007e7d6c  02 00 51 e1                                      cmp r1, r2
007e7d70  03 80 a0 a1                                      movge r8, r3
007e7d74  64 40 98 e5                                      ldr r4, [r8, #0x64]
007e7d78  00 00 54 e3                                      cmp r4, #0
007e7d7c  09 00 00 0a                                      beq #0x7e7da8
007e7d80  19 7a a0 e3                                      mov r7, #0x19000
007e7d84  04 80 88 e2                                      add r8, r8, #4
007e7d88  76 7f 87 e2                                      add r7, r7, #0x1d8
007e7d8c  04 00 a0 e1                                      mov r0, r4
007e7d90  07 10 96 e7                                      ldr r1, [r6, r7]
007e7d94  08 20 a0 e1                                      mov r2, r8
007e7d98  04 f9 ff eb                                      bl #0x7e61b0
007e7d9c  08 40 94 e5                                      ldr r4, [r4, #8]
007e7da0  00 00 54 e3                                      cmp r4, #0
007e7da4  f8 ff ff 1a                                      bne #0x7e7d8c
007e7da8  05 00 a0 e1                                      mov r0, r5
007e7dac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e7db0, declared_size=328, range_size=328, mode=arm
; class-group: b2World
; alias: _ZN7b2World11DestroyBodyEP6b2Body
; demangled: b2World::DestroyBody(b2Body*)
; decoder-mode: arm
007e7db0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e7db4  19 3a a0 e3                                      mov r3, #0x19000
007e7db8  75 3f 83 e2                                      add r3, r3, #0x1d4
007e7dbc  03 30 d0 e7                                      ldrb r3, [r0, r3]
007e7dc0  00 40 a0 e1                                      mov r4, r0
007e7dc4  01 70 a0 e1                                      mov r7, r1
007e7dc8  00 00 53 e3                                      cmp r3, #0
007e7dcc  48 00 00 1a                                      bne #0x7e7ef4
007e7dd0  6c 50 91 e5                                      ldr r5, [r1, #0x6c]
007e7dd4  00 00 55 e3                                      cmp r5, #0
007e7dd8  11 00 00 0a                                      beq #0x7e7e24
007e7ddc  19 8a a0 e3                                      mov r8, #0x19000
007e7de0  96 8f 88 e2                                      add r8, r8, #0x258
007e7de4  00 00 00 ea                                      b #0x7e7dec
007e7de8  06 50 a0 e1                                      mov r5, r6
007e7dec  08 30 94 e7                                      ldr r3, [r4, r8]
007e7df0  0c 60 95 e5                                      ldr r6, [r5, #0xc]
007e7df4  00 00 53 e3                                      cmp r3, #0
007e7df8  03 00 a0 e1                                      mov r0, r3
007e7dfc  03 00 00 0a                                      beq #0x7e7e10
007e7e00  04 10 95 e5                                      ldr r1, [r5, #4]
007e7e04  00 30 93 e5                                      ldr r3, [r3]
007e7e08  0f e0 a0 e1                                      mov lr, pc
007e7e0c  08 f0 93 e5                                      ldr pc, [r3, #8]
007e7e10  04 10 95 e5                                      ldr r1, [r5, #4]
007e7e14  04 00 a0 e1                                      mov r0, r4
007e7e18  3f ff ff eb                                      bl #0x7e7b1c
007e7e1c  00 00 56 e3                                      cmp r6, #0
007e7e20  f0 ff ff 1a                                      bne #0x7e7de8
007e7e24  64 50 97 e5                                      ldr r5, [r7, #0x64]
007e7e28  00 00 55 e3                                      cmp r5, #0
007e7e2c  16 00 00 0a                                      beq #0x7e7e8c
007e7e30  19 aa a0 e3                                      mov sl, #0x19000
007e7e34  0a 80 a0 e1                                      mov r8, sl
007e7e38  76 8f 88 e2                                      add r8, r8, #0x1d8
007e7e3c  96 af 8a e2                                      add sl, sl, #0x258
007e7e40  00 00 00 ea                                      b #0x7e7e48
007e7e44  06 50 a0 e1                                      mov r5, r6
007e7e48  0a 30 94 e7                                      ldr r3, [r4, sl]
007e7e4c  05 10 a0 e1                                      mov r1, r5
007e7e50  08 60 95 e5                                      ldr r6, [r5, #8]
007e7e54  00 00 53 e3                                      cmp r3, #0
007e7e58  03 00 a0 e1                                      mov r0, r3
007e7e5c  02 00 00 0a                                      beq #0x7e7e6c
007e7e60  00 30 93 e5                                      ldr r3, [r3]
007e7e64  0f e0 a0 e1                                      mov lr, pc
007e7e68  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007e7e6c  05 00 a0 e1                                      mov r0, r5
007e7e70  08 10 94 e7                                      ldr r1, [r4, r8]
007e7e74  c1 f8 ff eb                                      bl #0x7e6180
007e7e78  05 00 a0 e1                                      mov r0, r5
007e7e7c  04 10 a0 e1                                      mov r1, r4
007e7e80  9b f9 ff eb                                      bl #0x7e64f4
007e7e84  00 00 56 e3                                      cmp r6, #0
007e7e88  ed ff ff 1a                                      bne #0x7e7e44
007e7e8c  5c 30 97 e5                                      ldr r3, [r7, #0x5c]
007e7e90  07 00 a0 e1                                      mov r0, r7
007e7e94  00 00 53 e3                                      cmp r3, #0
007e7e98  60 20 97 15                                      ldrne r2, [r7, #0x60]
007e7e9c  60 20 83 15                                      strne r2, [r3, #0x60]
007e7ea0  60 30 97 e5                                      ldr r3, [r7, #0x60]
007e7ea4  00 00 53 e3                                      cmp r3, #0
007e7ea8  5c 20 97 15                                      ldrne r2, [r7, #0x5c]
007e7eac  5c 20 83 15                                      strne r2, [r3, #0x5c]
007e7eb0  19 3a a0 e3                                      mov r3, #0x19000
007e7eb4  23 3e 83 e2                                      add r3, r3, #0x230
007e7eb8  03 20 94 e7                                      ldr r2, [r4, r3]
007e7ebc  07 00 52 e1                                      cmp r2, r7
007e7ec0  60 20 97 05                                      ldreq r2, [r7, #0x60]
007e7ec4  03 20 84 07                                      streq r2, [r4, r3]
007e7ec8  19 3a a0 e3                                      mov r3, #0x19000
007e7ecc  8f 3f 83 e2                                      add r3, r3, #0x23c
007e7ed0  03 20 94 e7                                      ldr r2, [r4, r3]
007e7ed4  01 20 42 e2                                      sub r2, r2, #1
007e7ed8  03 20 84 e7                                      str r2, [r4, r3]
007e7edc  d9 e5 ff eb                                      bl #0x7e1648
007e7ee0  04 00 a0 e1                                      mov r0, r4
007e7ee4  07 10 a0 e1                                      mov r1, r7
007e7ee8  94 20 a0 e3                                      mov r2, #0x94
007e7eec  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
007e7ef0  aa 03 00 ea                                      b #0x7e8da0
007e7ef4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e7ef8, declared_size=132, range_size=132, mode=arm
; class-group: b2World
; alias: _ZN7b2World10CreateBodyEPK9b2BodyDef
; demangled: b2World::CreateBody(b2BodyDef const*)
; decoder-mode: arm
007e7ef8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e7efc  19 3a a0 e3                                      mov r3, #0x19000
007e7f00  75 3f 83 e2                                      add r3, r3, #0x1d4
007e7f04  03 60 d0 e7                                      ldrb r6, [r0, r3]
007e7f08  00 40 a0 e1                                      mov r4, r0
007e7f0c  01 70 a0 e1                                      mov r7, r1
007e7f10  00 00 56 e3                                      cmp r6, #0
007e7f14  00 50 a0 13                                      movne r5, #0
007e7f18  15 00 00 1a                                      bne #0x7e7f74
007e7f1c  94 10 a0 e3                                      mov r1, #0x94
007e7f20  65 04 00 eb                                      bl #0x7e90bc
007e7f24  04 20 a0 e1                                      mov r2, r4
007e7f28  07 10 a0 e1                                      mov r1, r7
007e7f2c  00 50 a0 e1                                      mov r5, r0
007e7f30  b8 e8 ff eb                                      bl #0x7e2218
007e7f34  19 3a a0 e3                                      mov r3, #0x19000
007e7f38  5c 60 85 e5                                      str r6, [r5, #0x5c]
007e7f3c  23 3e 83 e2                                      add r3, r3, #0x230
007e7f40  03 20 94 e7                                      ldr r2, [r4, r3]
007e7f44  60 20 85 e5                                      str r2, [r5, #0x60]
007e7f48  03 30 94 e7                                      ldr r3, [r4, r3]
007e7f4c  19 2a a0 e3                                      mov r2, #0x19000
007e7f50  23 2e 82 e2                                      add r2, r2, #0x230
007e7f54  00 00 53 e3                                      cmp r3, #0
007e7f58  5c 50 83 15                                      strne r5, [r3, #0x5c]
007e7f5c  19 3a a0 e3                                      mov r3, #0x19000
007e7f60  02 50 84 e7                                      str r5, [r4, r2]
007e7f64  8f 3f 83 e2                                      add r3, r3, #0x23c
007e7f68  03 20 94 e7                                      ldr r2, [r4, r3]
007e7f6c  01 20 82 e2                                      add r2, r2, #1
007e7f70  03 20 84 e7                                      str r2, [r4, r3]
007e7f74  05 00 a0 e1                                      mov r0, r5
007e7f78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e7f7c, declared_size=128, range_size=128, mode=arm
; class-group: b2World
; alias: _ZN7b2WorldD1Ev
; demangled: b2World::~b2World()
; decoder-mode: arm
007e7f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
007e7f80  19 5a a0 e3                                      mov r5, #0x19000
007e7f84  95 3f 85 e2                                      add r3, r5, #0x254
007e7f88  00 40 a0 e1                                      mov r4, r0
007e7f8c  03 10 90 e7                                      ldr r1, [r0, r3]
007e7f90  76 6f 85 e2                                      add r6, r5, #0x1d8
007e7f94  85 ff ff eb                                      bl #0x7e7db0
007e7f98  06 00 94 e7                                      ldr r0, [r4, r6]
007e7f9c  36 e9 ff eb                                      bl #0x7e247c
007e7fa0  06 00 94 e7                                      ldr r0, [r4, r6]
007e7fa4  44 60 9f e5                                      ldr r6, [pc, #0x44]
007e7fa8  43 2d 00 eb                                      bl #0x7f34bc
007e7fac  40 20 9f e5                                      ldr r2, [pc, #0x40]
007e7fb0  40 30 9f e5                                      ldr r3, [pc, #0x40]
007e7fb4  06 60 8f e0                                      add r6, pc, r6
007e7fb8  02 20 96 e7                                      ldr r2, [r6, r2]
007e7fbc  03 30 96 e7                                      ldr r3, [r6, r3]
007e7fc0  79 1f 85 e2                                      add r1, r5, #0x1e4
007e7fc4  08 20 82 e2                                      add r2, r2, #8
007e7fc8  08 30 83 e2                                      add r3, r3, #8
007e7fcc  77 5f 85 e2                                      add r5, r5, #0x1dc
007e7fd0  01 20 84 e7                                      str r2, [r4, r1]
007e7fd4  44 00 84 e2                                      add r0, r4, #0x44
007e7fd8  05 30 84 e7                                      str r3, [r4, r5]
007e7fdc  6c 2d 00 eb                                      bl #0x7f3594
007e7fe0  04 00 a0 e1                                      mov r0, r4
007e7fe4  7c 03 00 eb                                      bl #0x7e8ddc
007e7fe8  04 00 a0 e1                                      mov r0, r4
007e7fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007e7ff0  dc ca 1a 00 34 23 00 00 94 08 00 00              .byte 0xdc, 0xca, 0x1a, 0x00, 0x34, 0x23, 0x00, 0x00, 0x94, 0x08, 0x00, 0x00

; FUNCTION 0x007e7ffc, declared_size=128, range_size=128, mode=arm
; class-group: b2World
; alias: _ZN7b2WorldD2Ev
; demangled: b2World::~b2World()
; decoder-mode: arm
007e7ffc  70 40 2d e9                                      push {r4, r5, r6, lr}
007e8000  19 5a a0 e3                                      mov r5, #0x19000
007e8004  95 3f 85 e2                                      add r3, r5, #0x254
007e8008  00 40 a0 e1                                      mov r4, r0
007e800c  03 10 90 e7                                      ldr r1, [r0, r3]
007e8010  76 6f 85 e2                                      add r6, r5, #0x1d8
007e8014  65 ff ff eb                                      bl #0x7e7db0
007e8018  06 00 94 e7                                      ldr r0, [r4, r6]
007e801c  16 e9 ff eb                                      bl #0x7e247c
007e8020  06 00 94 e7                                      ldr r0, [r4, r6]
007e8024  44 60 9f e5                                      ldr r6, [pc, #0x44]
007e8028  23 2d 00 eb                                      bl #0x7f34bc
007e802c  40 20 9f e5                                      ldr r2, [pc, #0x40]
007e8030  40 30 9f e5                                      ldr r3, [pc, #0x40]
007e8034  06 60 8f e0                                      add r6, pc, r6
007e8038  02 20 96 e7                                      ldr r2, [r6, r2]
007e803c  03 30 96 e7                                      ldr r3, [r6, r3]
007e8040  79 1f 85 e2                                      add r1, r5, #0x1e4
007e8044  08 20 82 e2                                      add r2, r2, #8
007e8048  08 30 83 e2                                      add r3, r3, #8
007e804c  77 5f 85 e2                                      add r5, r5, #0x1dc
007e8050  01 20 84 e7                                      str r2, [r4, r1]
007e8054  44 00 84 e2                                      add r0, r4, #0x44
007e8058  05 30 84 e7                                      str r3, [r4, r5]
007e805c  4c 2d 00 eb                                      bl #0x7f3594
007e8060  04 00 a0 e1                                      mov r0, r4
007e8064  5c 03 00 eb                                      bl #0x7e8ddc
007e8068  04 00 a0 e1                                      mov r0, r4
007e806c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007e8070  5c ca 1a 00 34 23 00 00 94 08 00 00              .byte 0x5c, 0xca, 0x1a, 0x00, 0x34, 0x23, 0x00, 0x00, 0x94, 0x08, 0x00, 0x00

; FUNCTION 0x007e80b8, declared_size=464, range_size=464, mode=arm
; class-group: b2World
; alias: _ZN7b2WorldC1ERK6b2AABBRK6b2Vec2b
; demangled: b2World::b2World(b2AABB const&, b2Vec2 const&, bool)
; decoder-mode: arm
007e80b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e80bc  00 40 a0 e1                                      mov r4, r0
007e80c0  44 d0 4d e2                                      sub sp, sp, #0x44
007e80c4  02 70 a0 e1                                      mov r7, r2
007e80c8  0a 00 8d e9                                      stmib sp, {r1, r3}
007e80cc  a4 81 9f e5                                      ldr r8, [pc, #0x1a4]
007e80d0  89 03 00 eb                                      bl #0x7e8efc
007e80d4  44 00 84 e2                                      add r0, r4, #0x44
007e80d8  20 2d 00 eb                                      bl #0x7f3560
007e80dc  98 b1 9f e5                                      ldr fp, [pc, #0x198]
007e80e0  98 e1 9f e5                                      ldr lr, [pc, #0x198]
007e80e4  98 31 9f e5                                      ldr r3, [pc, #0x198]
007e80e8  08 80 8f e0                                      add r8, pc, r8
007e80ec  0b b0 98 e7                                      ldr fp, [r8, fp]
007e80f0  0e e0 98 e7                                      ldr lr, [r8, lr]
007e80f4  03 30 98 e7                                      ldr r3, [r8, r3]
007e80f8  19 5a a0 e3                                      mov r5, #0x19000
007e80fc  77 9f 85 e2                                      add sb, r5, #0x1dc
007e8100  79 cf 85 e2                                      add ip, r5, #0x1e4
007e8104  08 b0 8b e2                                      add fp, fp, #8
007e8108  08 e0 8e e2                                      add lr, lr, #8
007e810c  0c 30 8d e5                                      str r3, [sp, #0xc]
007e8110  09 b0 84 e7                                      str fp, [r4, sb]
007e8114  0c e0 84 e7                                      str lr, [r4, ip]
007e8118  0c e0 9d e5                                      ldr lr, [sp, #0xc]
007e811c  7c c0 8c e2                                      add ip, ip, #0x7c
007e8120  00 60 a0 e3                                      mov r6, #0
007e8124  0c e0 84 e7                                      str lr, [r4, ip]
007e8128  87 ef 85 e2                                      add lr, r5, #0x21c
007e812c  48 c0 4c e2                                      sub ip, ip, #0x48
007e8130  0c 60 84 e7                                      str r6, [r4, ip]
007e8134  0e 60 84 e7                                      str r6, [r4, lr]
007e8138  14 c0 8c e2                                      add ip, ip, #0x14
007e813c  3c e0 8e e2                                      add lr, lr, #0x3c
007e8140  0c 60 c4 e7                                      strb r6, [r4, ip]
007e8144  0e 60 84 e7                                      str r6, [r4, lr]
007e8148  30 c0 8c e2                                      add ip, ip, #0x30
007e814c  0c e0 8e e2                                      add lr, lr, #0xc
007e8150  0c 60 84 e7                                      str r6, [r4, ip]
007e8154  0e 60 84 e7                                      str r6, [r4, lr]
007e8158  0c c0 8c e2                                      add ip, ip, #0xc
007e815c  34 e0 4e e2                                      sub lr, lr, #0x34
007e8160  0c 60 84 e7                                      str r6, [r4, ip]
007e8164  0e 60 84 e7                                      str r6, [r4, lr]
007e8168  30 c0 4c e2                                      sub ip, ip, #0x30
007e816c  04 e0 8e e2                                      add lr, lr, #4
007e8170  0c 60 84 e7                                      str r6, [r4, ip]
007e8174  75 12 09 e3                                      movw r1, #0x9275
007e8178  0e 60 84 e7                                      str r6, [r4, lr]
007e817c  04 c0 8c e2                                      add ip, ip, #4
007e8180  0c e0 8e e2                                      add lr, lr, #0xc
007e8184  76 22 09 e3                                      movw r2, #0x9276
007e8188  0c 60 84 e7                                      str r6, [r4, ip]
007e818c  1e 3e 85 e2                                      add r3, r5, #0x1e0
007e8190  0e 60 84 e7                                      str r6, [r4, lr]
007e8194  01 a0 a0 e3                                      mov sl, #1
007e8198  01 10 40 e3                                      movt r1, #1
007e819c  01 20 40 e3                                      movt r2, #1
007e81a0  08 c0 8c e2                                      add ip, ip, #8
007e81a4  34 e0 8e e2                                      add lr, lr, #0x34
007e81a8  0c 60 84 e7                                      str r6, [r4, ip]
007e81ac  0e a0 c4 e7                                      strb sl, [r4, lr]
007e81b0  03 60 84 e7                                      str r6, [r4, r3]
007e81b4  01 a0 c4 e7                                      strb sl, [r4, r1]
007e81b8  02 a0 c4 e7                                      strb sl, [r4, r2]
007e81bc  08 20 9d e5                                      ldr r2, [sp, #8]
007e81c0  25 0e 85 e2                                      add r0, r5, #0x250
007e81c4  75 cf 85 e2                                      add ip, r5, #0x1d4
007e81c8  00 20 c4 e7                                      strb r2, [r4, r0]
007e81cc  00 10 97 e5                                      ldr r1, [r7]
007e81d0  04 20 a0 e1                                      mov r2, r4
007e81d4  92 0f 85 e2                                      add r0, r5, #0x248
007e81d8  00 10 a2 e7                                      str r1, [r2, r0]!
007e81dc  04 e0 97 e5                                      ldr lr, [r7, #4]
007e81e0  5d 0a a0 e3                                      mov r0, #0x5d000
007e81e4  00 70 a0 e3                                      mov r7, #0
007e81e8  9b 1f 85 e2                                      add r1, r5, #0x26c
007e81ec  3c 00 80 e2                                      add r0, r0, #0x3c
007e81f0  04 e0 82 e5                                      str lr, [r2, #4]
007e81f4  0c 60 c4 e7                                      strb r6, [r4, ip]
007e81f8  01 70 84 e7                                      str r7, [r4, r1]
007e81fc  03 40 84 e7                                      str r4, [r4, r3]
007e8200  bb 2c 00 eb                                      bl #0x7f34f4
007e8204  05 20 84 e0                                      add r2, r4, r5
007e8208  04 10 9d e5                                      ldr r1, [sp, #4]
007e820c  77 2f 82 e2                                      add r2, r2, #0x1dc
007e8210  00 90 a0 e1                                      mov sb, r0
007e8214  8b eb ff eb                                      bl #0x7e3048
007e8218  76 3f 85 e2                                      add r3, r5, #0x1d8
007e821c  03 90 84 e7                                      str sb, [r4, r3]
007e8220  04 00 a0 e1                                      mov r0, r4
007e8224  14 10 8d e2                                      add r1, sp, #0x14
007e8228  38 70 8d e5                                      str r7, [sp, #0x38]
007e822c  3c a0 cd e5                                      strb sl, [sp, #0x3c]
007e8230  3f 60 cd e5                                      strb r6, [sp, #0x3f]
007e8234  18 70 8d e5                                      str r7, [sp, #0x18]
007e8238  1c 70 8d e5                                      str r7, [sp, #0x1c]
007e823c  14 70 8d e5                                      str r7, [sp, #0x14]
007e8240  20 70 8d e5                                      str r7, [sp, #0x20]
007e8244  24 60 8d e5                                      str r6, [sp, #0x24]
007e8248  28 70 8d e5                                      str r7, [sp, #0x28]
007e824c  2c 70 8d e5                                      str r7, [sp, #0x2c]
007e8250  30 70 8d e5                                      str r7, [sp, #0x30]
007e8254  34 70 8d e5                                      str r7, [sp, #0x34]
007e8258  3d 60 cd e5                                      strb r6, [sp, #0x3d]
007e825c  3e 60 cd e5                                      strb r6, [sp, #0x3e]
007e8260  24 ff ff eb                                      bl #0x7e7ef8
007e8264  95 5f 85 e2                                      add r5, r5, #0x254
007e8268  05 00 84 e7                                      str r0, [r4, r5]
007e826c  04 00 a0 e1                                      mov r0, r4
007e8270  44 d0 8d e2                                      add sp, sp, #0x44
007e8274  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e8278  a8 c9 1a 00 88 20 00 00 88 29 00 00 c0 10 00 00  .byte 0xa8, 0xc9, 0x1a, 0x00, 0x88, 0x20, 0x00, 0x00, 0x88, 0x29, 0x00, 0x00, 0xc0, 0x10, 0x00, 0x00

; FUNCTION 0x007e8288, declared_size=464, range_size=464, mode=arm
; class-group: b2World
; alias: _ZN7b2WorldC2ERK6b2AABBRK6b2Vec2b
; demangled: b2World::b2World(b2AABB const&, b2Vec2 const&, bool)
; decoder-mode: arm
007e8288  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e828c  00 40 a0 e1                                      mov r4, r0
007e8290  44 d0 4d e2                                      sub sp, sp, #0x44
007e8294  02 70 a0 e1                                      mov r7, r2
007e8298  0a 00 8d e9                                      stmib sp, {r1, r3}
007e829c  a4 81 9f e5                                      ldr r8, [pc, #0x1a4]
007e82a0  15 03 00 eb                                      bl #0x7e8efc
007e82a4  44 00 84 e2                                      add r0, r4, #0x44
007e82a8  ac 2c 00 eb                                      bl #0x7f3560
007e82ac  98 b1 9f e5                                      ldr fp, [pc, #0x198]
007e82b0  98 e1 9f e5                                      ldr lr, [pc, #0x198]
007e82b4  98 31 9f e5                                      ldr r3, [pc, #0x198]
007e82b8  08 80 8f e0                                      add r8, pc, r8
007e82bc  0b b0 98 e7                                      ldr fp, [r8, fp]
007e82c0  0e e0 98 e7                                      ldr lr, [r8, lr]
007e82c4  03 30 98 e7                                      ldr r3, [r8, r3]
007e82c8  19 5a a0 e3                                      mov r5, #0x19000
007e82cc  77 9f 85 e2                                      add sb, r5, #0x1dc
007e82d0  79 cf 85 e2                                      add ip, r5, #0x1e4
007e82d4  08 b0 8b e2                                      add fp, fp, #8
007e82d8  08 e0 8e e2                                      add lr, lr, #8
007e82dc  0c 30 8d e5                                      str r3, [sp, #0xc]
007e82e0  09 b0 84 e7                                      str fp, [r4, sb]
007e82e4  0c e0 84 e7                                      str lr, [r4, ip]
007e82e8  0c e0 9d e5                                      ldr lr, [sp, #0xc]
007e82ec  7c c0 8c e2                                      add ip, ip, #0x7c
007e82f0  00 60 a0 e3                                      mov r6, #0
007e82f4  0c e0 84 e7                                      str lr, [r4, ip]
007e82f8  87 ef 85 e2                                      add lr, r5, #0x21c
007e82fc  48 c0 4c e2                                      sub ip, ip, #0x48
007e8300  0c 60 84 e7                                      str r6, [r4, ip]
007e8304  0e 60 84 e7                                      str r6, [r4, lr]
007e8308  14 c0 8c e2                                      add ip, ip, #0x14
007e830c  3c e0 8e e2                                      add lr, lr, #0x3c
007e8310  0c 60 c4 e7                                      strb r6, [r4, ip]
007e8314  0e 60 84 e7                                      str r6, [r4, lr]
007e8318  30 c0 8c e2                                      add ip, ip, #0x30
007e831c  0c e0 8e e2                                      add lr, lr, #0xc
007e8320  0c 60 84 e7                                      str r6, [r4, ip]
007e8324  0e 60 84 e7                                      str r6, [r4, lr]
007e8328  0c c0 8c e2                                      add ip, ip, #0xc
007e832c  34 e0 4e e2                                      sub lr, lr, #0x34
007e8330  0c 60 84 e7                                      str r6, [r4, ip]
007e8334  0e 60 84 e7                                      str r6, [r4, lr]
007e8338  30 c0 4c e2                                      sub ip, ip, #0x30
007e833c  04 e0 8e e2                                      add lr, lr, #4
007e8340  0c 60 84 e7                                      str r6, [r4, ip]
007e8344  75 12 09 e3                                      movw r1, #0x9275
007e8348  0e 60 84 e7                                      str r6, [r4, lr]
007e834c  04 c0 8c e2                                      add ip, ip, #4
007e8350  0c e0 8e e2                                      add lr, lr, #0xc
007e8354  76 22 09 e3                                      movw r2, #0x9276
007e8358  0c 60 84 e7                                      str r6, [r4, ip]
007e835c  1e 3e 85 e2                                      add r3, r5, #0x1e0
007e8360  0e 60 84 e7                                      str r6, [r4, lr]
007e8364  01 a0 a0 e3                                      mov sl, #1
007e8368  01 10 40 e3                                      movt r1, #1
007e836c  01 20 40 e3                                      movt r2, #1
007e8370  08 c0 8c e2                                      add ip, ip, #8
007e8374  34 e0 8e e2                                      add lr, lr, #0x34
007e8378  0c 60 84 e7                                      str r6, [r4, ip]
007e837c  0e a0 c4 e7                                      strb sl, [r4, lr]
007e8380  03 60 84 e7                                      str r6, [r4, r3]
007e8384  01 a0 c4 e7                                      strb sl, [r4, r1]
007e8388  02 a0 c4 e7                                      strb sl, [r4, r2]
007e838c  08 20 9d e5                                      ldr r2, [sp, #8]
007e8390  25 0e 85 e2                                      add r0, r5, #0x250
007e8394  75 cf 85 e2                                      add ip, r5, #0x1d4
007e8398  00 20 c4 e7                                      strb r2, [r4, r0]
007e839c  00 10 97 e5                                      ldr r1, [r7]
007e83a0  04 20 a0 e1                                      mov r2, r4
007e83a4  92 0f 85 e2                                      add r0, r5, #0x248
007e83a8  00 10 a2 e7                                      str r1, [r2, r0]!
007e83ac  04 e0 97 e5                                      ldr lr, [r7, #4]
007e83b0  5d 0a a0 e3                                      mov r0, #0x5d000
007e83b4  00 70 a0 e3                                      mov r7, #0
007e83b8  9b 1f 85 e2                                      add r1, r5, #0x26c
007e83bc  3c 00 80 e2                                      add r0, r0, #0x3c
007e83c0  04 e0 82 e5                                      str lr, [r2, #4]
007e83c4  0c 60 c4 e7                                      strb r6, [r4, ip]
007e83c8  01 70 84 e7                                      str r7, [r4, r1]
007e83cc  03 40 84 e7                                      str r4, [r4, r3]
007e83d0  47 2c 00 eb                                      bl #0x7f34f4
007e83d4  05 20 84 e0                                      add r2, r4, r5
007e83d8  04 10 9d e5                                      ldr r1, [sp, #4]
007e83dc  77 2f 82 e2                                      add r2, r2, #0x1dc
007e83e0  00 90 a0 e1                                      mov sb, r0
007e83e4  17 eb ff eb                                      bl #0x7e3048
007e83e8  76 3f 85 e2                                      add r3, r5, #0x1d8
007e83ec  03 90 84 e7                                      str sb, [r4, r3]
007e83f0  04 00 a0 e1                                      mov r0, r4
007e83f4  14 10 8d e2                                      add r1, sp, #0x14
007e83f8  38 70 8d e5                                      str r7, [sp, #0x38]
007e83fc  3c a0 cd e5                                      strb sl, [sp, #0x3c]
007e8400  3f 60 cd e5                                      strb r6, [sp, #0x3f]
007e8404  18 70 8d e5                                      str r7, [sp, #0x18]
007e8408  1c 70 8d e5                                      str r7, [sp, #0x1c]
007e840c  14 70 8d e5                                      str r7, [sp, #0x14]
007e8410  20 70 8d e5                                      str r7, [sp, #0x20]
007e8414  24 60 8d e5                                      str r6, [sp, #0x24]
007e8418  28 70 8d e5                                      str r7, [sp, #0x28]
007e841c  2c 70 8d e5                                      str r7, [sp, #0x2c]
007e8420  30 70 8d e5                                      str r7, [sp, #0x30]
007e8424  34 70 8d e5                                      str r7, [sp, #0x34]
007e8428  3d 60 cd e5                                      strb r6, [sp, #0x3d]
007e842c  3e 60 cd e5                                      strb r6, [sp, #0x3e]
007e8430  b0 fe ff eb                                      bl #0x7e7ef8
007e8434  95 5f 85 e2                                      add r5, r5, #0x254
007e8438  05 00 84 e7                                      str r0, [r4, r5]
007e843c  04 00 a0 e1                                      mov r0, r4
007e8440  44 d0 8d e2                                      add sp, sp, #0x44
007e8444  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e8448  d8 c7 1a 00 88 20 00 00 88 29 00 00 c0 10 00 00  .byte 0xd8, 0xc7, 0x1a, 0x00, 0x88, 0x20, 0x00, 0x00, 0x88, 0x29, 0x00, 0x00, 0xc0, 0x10, 0x00, 0x00

; FUNCTION 0x007e8458, declared_size=1732, range_size=1732, mode=arm
; class-group: b2World
; alias: _ZN7b2World8SolveTOIERK10b2TimeStep
; demangled: b2World::SolveTOI(b2TimeStep const&)
; decoder-mode: arm
007e8458  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e845c  19 4a a0 e3                                      mov r4, #0x19000
007e8460  74 d0 4d e2                                      sub sp, sp, #0x74
007e8464  0c 00 8d e5                                      str r0, [sp, #0xc]
007e8468  8f 4f 84 e2                                      add r4, r4, #0x23c
007e846c  04 20 90 e7                                      ldr r2, [r0, r4]
007e8470  19 3a a0 e3                                      mov r3, #0x19000
007e8474  99 3f 83 e2                                      add r3, r3, #0x264
007e8478  03 c0 90 e7                                      ldr ip, [r0, r3]
007e847c  18 10 8d e5                                      str r1, [sp, #0x18]
007e8480  02 10 a0 e1                                      mov r1, r2
007e8484  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e8488  04 c0 8d e5                                      str ip, [sp, #4]
007e848c  00 30 a0 e3                                      mov r3, #0
007e8490  44 20 82 e2                                      add r2, r2, #0x44
007e8494  24 20 8d e5                                      str r2, [sp, #0x24]
007e8498  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007e849c  2c 00 8d e2                                      add r0, sp, #0x2c
007e84a0  20 20 a0 e3                                      mov r2, #0x20
007e84a4  00 c0 8d e5                                      str ip, [sp]
007e84a8  1c 00 8d e5                                      str r0, [sp, #0x1c]
007e84ac  0b 0b 00 eb                                      bl #0x7eb0e0
007e84b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e84b4  04 10 90 e7                                      ldr r1, [r0, r4]
007e84b8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007e84bc  01 11 a0 e1                                      lsl r1, r1, #2
007e84c0  5f 2c 00 eb                                      bl #0x7f3644
007e84c4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e84c8  19 3a a0 e3                                      mov r3, #0x19000
007e84cc  23 3e 83 e2                                      add r3, r3, #0x230
007e84d0  03 30 91 e7                                      ldr r3, [r1, r3]
007e84d4  00 80 a0 e1                                      mov r8, r0
007e84d8  00 00 53 e3                                      cmp r3, #0
007e84dc  07 00 00 0a                                      beq #0x7e8500
007e84e0  00 10 a0 e3                                      mov r1, #0
007e84e4  b0 20 d3 e1                                      ldrh r2, [r3]
007e84e8  3c 10 83 e5                                      str r1, [r3, #0x3c]
007e84ec  04 20 c2 e3                                      bic r2, r2, #4
007e84f0  b0 20 c3 e1                                      strh r2, [r3]
007e84f4  60 30 93 e5                                      ldr r3, [r3, #0x60]
007e84f8  00 00 53 e3                                      cmp r3, #0
007e84fc  f8 ff ff 1a                                      bne #0x7e84e4
007e8500  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e8504  19 3a a0 e3                                      mov r3, #0x19000
007e8508  8e 3f 83 e2                                      add r3, r3, #0x238
007e850c  03 30 92 e7                                      ldr r3, [r2, r3]
007e8510  00 00 53 e3                                      cmp r3, #0
007e8514  05 00 00 0a                                      beq #0x7e8530
007e8518  04 20 93 e5                                      ldr r2, [r3, #4]
007e851c  0c 20 c2 e3                                      bic r2, r2, #0xc
007e8520  04 20 83 e5                                      str r2, [r3, #4]
007e8524  10 30 93 e5                                      ldr r3, [r3, #0x10]
007e8528  00 00 53 e3                                      cmp r3, #0
007e852c  f9 ff ff 1a                                      bne #0x7e8518
007e8530  19 3a a0 e3                                      mov r3, #0x19000
007e8534  97 3f 83 e2                                      add r3, r3, #0x25c
007e8538  20 30 8d e5                                      str r3, [sp, #0x20]
007e853c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e8540  19 3a a0 e3                                      mov r3, #0x19000
007e8544  8e 3f 83 e2                                      add r3, r3, #0x238
007e8548  03 40 9c e7                                      ldr r4, [ip, r3]
007e854c  00 00 54 e3                                      cmp r4, #0
007e8550  48 01 00 0a                                      beq #0x7e8a78
007e8554  00 50 a0 e3                                      mov r5, #0
007e8558  fe 65 a0 e3                                      mov r6, #0x3f800000
007e855c  10 50 8d e5                                      str r5, [sp, #0x10]
007e8560  14 80 8d e5                                      str r8, [sp, #0x14]
007e8564  11 00 00 ea                                      b #0x7e85b0
007e8568  44 50 94 e5                                      ldr r5, [r4, #0x44]
007e856c  0d 13 a0 e3                                      mov r1, #0x34000000
007e8570  05 00 a0 e1                                      mov r0, r5
007e8574  5f 97 ec eb                                      bl #0x30e2f8
007e8578  00 00 50 e3                                      cmp r0, #0
007e857c  01 70 a0 13                                      movne r7, #1
007e8580  77 70 ef e6                                      uxtb r7, r7
007e8584  00 00 57 e3                                      cmp r7, #0
007e8588  05 00 00 0a                                      beq #0x7e85a4
007e858c  06 10 a0 e1                                      mov r1, r6
007e8590  05 00 a0 e1                                      mov r0, r5
007e8594  5c 98 ec eb                                      bl #0x30e70c
007e8598  00 00 50 e3                                      cmp r0, #0
007e859c  05 60 a0 11                                      movne r6, r5
007e85a0  10 40 8d 15                                      strne r4, [sp, #0x10]
007e85a4  10 40 94 e5                                      ldr r4, [r4, #0x10]
007e85a8  00 00 54 e3                                      cmp r4, #0
007e85ac  50 00 00 0a                                      beq #0x7e86f4
007e85b0  04 30 94 e5                                      ldr r3, [r4, #4]
007e85b4  03 70 13 e2                                      ands r7, r3, #3
007e85b8  f9 ff ff 1a                                      bne #0x7e85a4
007e85bc  08 00 13 e3                                      tst r3, #8
007e85c0  e8 ff ff 1a                                      bne #0x7e8568
007e85c4  34 50 94 e5                                      ldr r5, [r4, #0x34]
007e85c8  38 90 94 e5                                      ldr sb, [r4, #0x38]
007e85cc  0c 80 95 e5                                      ldr r8, [r5, #0xc]
007e85d0  0c a0 99 e5                                      ldr sl, [sb, #0xc]
007e85d4  f2 30 d8 e1                                      ldrsh r3, [r8, #2]
007e85d8  00 00 53 e3                                      cmp r3, #0
007e85dc  3b 00 00 0a                                      beq #0x7e86d0
007e85e0  b0 30 d8 e1                                      ldrh r3, [r8]
007e85e4  08 00 13 e3                                      tst r3, #8
007e85e8  38 00 00 1a                                      bne #0x7e86d0
007e85ec  3c b0 98 e5                                      ldr fp, [r8, #0x3c]
007e85f0  3c 70 9a e5                                      ldr r7, [sl, #0x3c]
007e85f4  0b 00 a0 e1                                      mov r0, fp
007e85f8  07 10 a0 e1                                      mov r1, r7
007e85fc  42 98 ec eb                                      bl #0x30e70c
007e8600  00 00 50 e3                                      cmp r0, #0
007e8604  33 01 00 1a                                      bne #0x7e8ad8
007e8608  07 10 a0 e1                                      mov r1, r7
007e860c  0b 00 a0 e1                                      mov r0, fp
007e8610  38 97 ec eb                                      bl #0x30e2f8
007e8614  00 00 50 e3                                      cmp r0, #0
007e8618  0b 70 a0 01                                      moveq r7, fp
007e861c  1c 80 88 02                                      addeq r8, r8, #0x1c
007e8620  1c a0 8a 02                                      addeq sl, sl, #0x1c
007e8624  33 01 00 1a                                      bne #0x7e8af8
007e8628  08 10 a0 e1                                      mov r1, r8
007e862c  09 20 a0 e1                                      mov r2, sb
007e8630  0a 30 a0 e1                                      mov r3, sl
007e8634  05 00 a0 e1                                      mov r0, r5
007e8638  3a 2c 00 eb                                      bl #0x7f3728
007e863c  00 10 a0 e3                                      mov r1, #0
007e8640  00 50 a0 e1                                      mov r5, r0
007e8644  2b 97 ec eb                                      bl #0x30e2f8
007e8648  00 00 50 e3                                      cmp r0, #0
007e864c  13 00 00 0a                                      beq #0x7e86a0
007e8650  05 00 a0 e1                                      mov r0, r5
007e8654  fe 15 a0 e3                                      mov r1, #0x3f800000
007e8658  2b 98 ec eb                                      bl #0x30e70c
007e865c  00 00 50 e3                                      cmp r0, #0
007e8660  0e 00 00 0a                                      beq #0x7e86a0
007e8664  05 10 a0 e1                                      mov r1, r5
007e8668  fe 05 a0 e3                                      mov r0, #0x3f800000
007e866c  4e 97 ec eb                                      bl #0x30e3ac
007e8670  07 10 a0 e1                                      mov r1, r7
007e8674  bc 99 ec eb                                      bl #0x30ed6c
007e8678  00 10 a0 e1                                      mov r1, r0
007e867c  05 00 a0 e1                                      mov r0, r5
007e8680  47 99 ec eb                                      bl #0x30eba4
007e8684  fe 15 a0 e3                                      mov r1, #0x3f800000
007e8688  00 50 a0 e1                                      mov r5, r0
007e868c  1e 98 ec eb                                      bl #0x30e70c
007e8690  00 00 50 e3                                      cmp r0, #0
007e8694  01 70 a0 03                                      moveq r7, #1
007e8698  fe 55 a0 03                                      moveq r5, #0x3f800000
007e869c  06 00 00 0a                                      beq #0x7e86bc
007e86a0  05 00 a0 e1                                      mov r0, r5
007e86a4  0d 13 a0 e3                                      mov r1, #0x34000000
007e86a8  12 97 ec eb                                      bl #0x30e2f8
007e86ac  00 00 50 e3                                      cmp r0, #0
007e86b0  00 70 a0 e3                                      mov r7, #0
007e86b4  01 70 a0 13                                      movne r7, #1
007e86b8  77 70 ef e6                                      uxtb r7, r7
007e86bc  04 30 94 e5                                      ldr r3, [r4, #4]
007e86c0  44 50 84 e5                                      str r5, [r4, #0x44]
007e86c4  08 30 83 e3                                      orr r3, r3, #8
007e86c8  04 30 84 e5                                      str r3, [r4, #4]
007e86cc  ac ff ff ea                                      b #0x7e8584
007e86d0  f2 30 da e1                                      ldrsh r3, [sl, #2]
007e86d4  00 00 53 e3                                      cmp r3, #0
007e86d8  b1 ff ff 0a                                      beq #0x7e85a4
007e86dc  b0 30 da e1                                      ldrh r3, [sl]
007e86e0  08 00 13 e3                                      tst r3, #8
007e86e4  c0 ff ff 0a                                      beq #0x7e85ec
007e86e8  10 40 94 e5                                      ldr r4, [r4, #0x10]
007e86ec  00 00 54 e3                                      cmp r4, #0
007e86f0  ae ff ff 1a                                      bne #0x7e85b0
007e86f4  10 50 9d e5                                      ldr r5, [sp, #0x10]
007e86f8  14 80 9d e5                                      ldr r8, [sp, #0x14]
007e86fc  00 00 55 e3                                      cmp r5, #0
007e8700  dc 00 00 0a                                      beq #0x7e8a78
007e8704  fe 15 a0 e3                                      mov r1, #0x3f800000
007e8708  06 00 a0 e1                                      mov r0, r6
007e870c  c8 10 41 e2                                      sub r1, r1, #0xc8
007e8710  f8 96 ec eb                                      bl #0x30e2f8
007e8714  00 00 50 e3                                      cmp r0, #0
007e8718  d6 00 00 1a                                      bne #0x7e8a78
007e871c  34 20 95 e5                                      ldr r2, [r5, #0x34]
007e8720  38 30 95 e5                                      ldr r3, [r5, #0x38]
007e8724  06 10 a0 e1                                      mov r1, r6
007e8728  0c 70 92 e5                                      ldr r7, [r2, #0xc]
007e872c  0c a0 93 e5                                      ldr sl, [r3, #0xc]
007e8730  1c 00 87 e2                                      add r0, r7, #0x1c
007e8734  d6 ec ff eb                                      bl #0x7e3a94
007e8738  28 20 97 e5                                      ldr r2, [r7, #0x28]
007e873c  34 30 97 e5                                      ldr r3, [r7, #0x34]
007e8740  24 10 97 e5                                      ldr r1, [r7, #0x24]
007e8744  30 20 87 e5                                      str r2, [r7, #0x30]
007e8748  38 30 87 e5                                      str r3, [r7, #0x38]
007e874c  2c 10 87 e5                                      str r1, [r7, #0x2c]
007e8750  07 00 a0 e1                                      mov r0, r7
007e8754  b0 fb ff eb                                      bl #0x7e761c
007e8758  06 10 a0 e1                                      mov r1, r6
007e875c  1c 00 8a e2                                      add r0, sl, #0x1c
007e8760  cb ec ff eb                                      bl #0x7e3a94
007e8764  28 20 9a e5                                      ldr r2, [sl, #0x28]
007e8768  24 10 9a e5                                      ldr r1, [sl, #0x24]
007e876c  34 30 9a e5                                      ldr r3, [sl, #0x34]
007e8770  30 20 8a e5                                      str r2, [sl, #0x30]
007e8774  2c 10 8a e5                                      str r1, [sl, #0x2c]
007e8778  38 30 8a e5                                      str r3, [sl, #0x38]
007e877c  0a 00 a0 e1                                      mov r0, sl
007e8780  a5 fb ff eb                                      bl #0x7e761c
007e8784  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e8788  19 3a a0 e3                                      mov r3, #0x19000
007e878c  99 3f 83 e2                                      add r3, r3, #0x264
007e8790  03 10 90 e7                                      ldr r1, [r0, r3]
007e8794  05 00 a0 e1                                      mov r0, r5
007e8798  61 05 00 eb                                      bl #0x7e9d24
007e879c  04 30 95 e5                                      ldr r3, [r5, #4]
007e87a0  08 20 95 e5                                      ldr r2, [r5, #8]
007e87a4  08 30 c3 e3                                      bic r3, r3, #8
007e87a8  00 00 52 e3                                      cmp r2, #0
007e87ac  04 30 85 e5                                      str r3, [r5, #4]
007e87b0  61 ff ff 0a                                      beq #0x7e853c
007e87b4  f2 30 d7 e1                                      ldrsh r3, [r7, #2]
007e87b8  44 40 8d e5                                      str r4, [sp, #0x44]
007e87bc  40 40 8d e5                                      str r4, [sp, #0x40]
007e87c0  00 00 53 e3                                      cmp r3, #0
007e87c4  0a 70 a0 01                                      moveq r7, sl
007e87c8  48 40 8d e5                                      str r4, [sp, #0x48]
007e87cc  00 70 88 e5                                      str r7, [r8]
007e87d0  b0 30 d7 e1                                      ldrh r3, [r7]
007e87d4  01 10 a0 e3                                      mov r1, #1
007e87d8  04 30 83 e3                                      orr r3, r3, #4
007e87dc  b0 30 c7 e1                                      strh r3, [r7]
007e87e0  40 20 9d e5                                      ldr r2, [sp, #0x40]
007e87e4  01 70 41 e2                                      sub r7, r1, #1
007e87e8  07 31 98 e7                                      ldr r3, [r8, r7, lsl #2]
007e87ec  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007e87f0  01 00 82 e2                                      add r0, r2, #1
007e87f4  02 31 8c e7                                      str r3, [ip, r2, lsl #2]
007e87f8  40 00 8d e5                                      str r0, [sp, #0x40]
007e87fc  b0 00 d3 e1                                      ldrh r0, [r3]
007e8800  f2 20 d3 e1                                      ldrsh r2, [r3, #2]
007e8804  08 00 c0 e3                                      bic r0, r0, #8
007e8808  00 00 52 e3                                      cmp r2, #0
007e880c  b0 00 c3 e1                                      strh r0, [r3]
007e8810  01 c1 88 00                                      addeq ip, r8, r1, lsl #2
007e8814  28 00 00 0a                                      beq #0x7e88bc
007e8818  70 40 93 e5                                      ldr r4, [r3, #0x70]
007e881c  00 00 54 e3                                      cmp r4, #0
007e8820  21 00 00 0a                                      beq #0x7e88ac
007e8824  48 30 9d e5                                      ldr r3, [sp, #0x48]
007e8828  50 20 9d e5                                      ldr r2, [sp, #0x50]
007e882c  02 00 53 e1                                      cmp r3, r2
007e8830  1a 00 00 0a                                      beq #0x7e88a0
007e8834  04 20 94 e5                                      ldr r2, [r4, #4]
007e8838  04 10 92 e5                                      ldr r1, [r2, #4]
007e883c  07 00 11 e3                                      tst r1, #7
007e8840  16 00 00 1a                                      bne #0x7e88a0
007e8844  08 10 92 e5                                      ldr r1, [r2, #8]
007e8848  01 00 83 e2                                      add r0, r3, #1
007e884c  00 00 51 e3                                      cmp r1, #0
007e8850  12 00 00 0a                                      beq #0x7e88a0
007e8854  38 10 9d e5                                      ldr r1, [sp, #0x38]
007e8858  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
007e885c  48 00 8d e5                                      str r0, [sp, #0x48]
007e8860  04 30 94 e5                                      ldr r3, [r4, #4]
007e8864  04 20 93 e5                                      ldr r2, [r3, #4]
007e8868  04 20 82 e3                                      orr r2, r2, #4
007e886c  04 20 83 e5                                      str r2, [r3, #4]
007e8870  00 50 94 e5                                      ldr r5, [r4]
007e8874  b0 30 d5 e1                                      ldrh r3, [r5]
007e8878  04 00 13 e3                                      tst r3, #4
007e887c  07 00 00 1a                                      bne #0x7e88a0
007e8880  f2 30 d5 e1                                      ldrsh r3, [r5, #2]
007e8884  00 00 53 e3                                      cmp r3, #0
007e8888  81 00 00 1a                                      bne #0x7e8a94
007e888c  07 51 88 e7                                      str r5, [r8, r7, lsl #2]
007e8890  b0 30 d5 e1                                      ldrh r3, [r5]
007e8894  01 70 87 e2                                      add r7, r7, #1
007e8898  04 30 83 e3                                      orr r3, r3, #4
007e889c  b0 30 c5 e1                                      strh r3, [r5]
007e88a0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
007e88a4  00 00 54 e3                                      cmp r4, #0
007e88a8  dd ff ff 1a                                      bne #0x7e8824
007e88ac  00 00 57 e3                                      cmp r7, #0
007e88b0  15 00 00 0a                                      beq #0x7e890c
007e88b4  07 10 a0 e1                                      mov r1, r7
007e88b8  c8 ff ff ea                                      b #0x7e87e0
007e88bc  00 00 57 e3                                      cmp r7, #0
007e88c0  02 30 8c e0                                      add r3, ip, r2
007e88c4  10 00 00 0a                                      beq #0x7e890c
007e88c8  40 10 9d e5                                      ldr r1, [sp, #0x40]
007e88cc  08 30 13 e5                                      ldr r3, [r3, #-8]
007e88d0  34 e0 9d e5                                      ldr lr, [sp, #0x34]
007e88d4  01 00 81 e2                                      add r0, r1, #1
007e88d8  01 70 47 e2                                      sub r7, r7, #1
007e88dc  01 31 8e e7                                      str r3, [lr, r1, lsl #2]
007e88e0  40 00 8d e5                                      str r0, [sp, #0x40]
007e88e4  b0 10 d3 e1                                      ldrh r1, [r3]
007e88e8  f2 00 d3 e1                                      ldrsh r0, [r3, #2]
007e88ec  04 20 42 e2                                      sub r2, r2, #4
007e88f0  08 10 c1 e3                                      bic r1, r1, #8
007e88f4  00 00 50 e3                                      cmp r0, #0
007e88f8  b0 10 c3 e1                                      strh r1, [r3]
007e88fc  c5 ff ff 1a                                      bne #0x7e8818
007e8900  00 00 57 e3                                      cmp r7, #0
007e8904  02 30 8c e0                                      add r3, ip, r2
007e8908  ee ff ff 1a                                      bne #0x7e88c8
007e890c  06 10 a0 e1                                      mov r1, r6
007e8910  fe 05 a0 e3                                      mov r0, #0x3f800000
007e8914  a4 96 ec eb                                      bl #0x30e3ac
007e8918  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e891c  00 10 92 e5                                      ldr r1, [r2]
007e8920  11 99 ec eb                                      bl #0x30ed6c
007e8924  00 30 a0 e1                                      mov r3, r0
007e8928  00 10 a0 e1                                      mov r1, r0
007e892c  fe 05 a0 e3                                      mov r0, #0x3f800000
007e8930  5c 30 8d e5                                      str r3, [sp, #0x5c]
007e8934  d6 98 ec eb                                      bl #0x30ec94
007e8938  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007e893c  5c 10 8d e2                                      add r1, sp, #0x5c
007e8940  0c 30 9c e5                                      ldr r3, [ip, #0xc]
007e8944  60 00 8d e5                                      str r0, [sp, #0x60]
007e8948  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007e894c  68 30 8d e5                                      str r3, [sp, #0x68]
007e8950  c8 07 00 eb                                      bl #0x7ea878
007e8954  40 30 9d e5                                      ldr r3, [sp, #0x40]
007e8958  00 00 53 e3                                      cmp r3, #0
007e895c  2d 00 00 da                                      ble #0x7e8a18
007e8960  00 40 a0 e3                                      mov r4, #0
007e8964  03 00 00 ea                                      b #0x7e8978
007e8968  40 30 9d e5                                      ldr r3, [sp, #0x40]
007e896c  01 40 84 e2                                      add r4, r4, #1
007e8970  04 00 53 e1                                      cmp r3, r4
007e8974  27 00 00 da                                      ble #0x7e8a18
007e8978  34 30 9d e5                                      ldr r3, [sp, #0x34]
007e897c  04 51 93 e7                                      ldr r5, [r3, r4, lsl #2]
007e8980  b0 20 d5 e1                                      ldrh r2, [r5]
007e8984  04 30 c2 e3                                      bic r3, r2, #4
007e8988  03 38 a0 e1                                      lsl r3, r3, #0x10
007e898c  0a 00 12 e3                                      tst r2, #0xa
007e8990  23 38 a0 e1                                      lsr r3, r3, #0x10
007e8994  b0 30 c5 e1                                      strh r3, [r5]
007e8998  f2 ff ff 1a                                      bne #0x7e8968
007e899c  f2 30 d5 e1                                      ldrsh r3, [r5, #2]
007e89a0  00 00 53 e3                                      cmp r3, #0
007e89a4  ef ff ff 0a                                      beq #0x7e8968
007e89a8  05 00 a0 e1                                      mov r0, r5
007e89ac  be e5 ff eb                                      bl #0x7e20ac
007e89b0  00 00 50 e3                                      cmp r0, #0
007e89b4  09 00 00 1a                                      bne #0x7e89e0
007e89b8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e89bc  20 00 9d e5                                      ldr r0, [sp, #0x20]
007e89c0  00 30 91 e7                                      ldr r3, [r1, r0]
007e89c4  00 00 53 e3                                      cmp r3, #0
007e89c8  04 00 00 0a                                      beq #0x7e89e0
007e89cc  03 00 a0 e1                                      mov r0, r3
007e89d0  05 10 a0 e1                                      mov r1, r5
007e89d4  00 30 93 e5                                      ldr r3, [r3]
007e89d8  0f e0 a0 e1                                      mov lr, pc
007e89dc  08 f0 93 e5                                      ldr pc, [r3, #8]
007e89e0  70 30 95 e5                                      ldr r3, [r5, #0x70]
007e89e4  00 00 53 e3                                      cmp r3, #0
007e89e8  de ff ff 0a                                      beq #0x7e8968
007e89ec  04 20 93 e5                                      ldr r2, [r3, #4]
007e89f0  04 10 92 e5                                      ldr r1, [r2, #4]
007e89f4  08 10 c1 e3                                      bic r1, r1, #8
007e89f8  04 10 82 e5                                      str r1, [r2, #4]
007e89fc  0c 30 93 e5                                      ldr r3, [r3, #0xc]
007e8a00  00 00 53 e3                                      cmp r3, #0
007e8a04  f8 ff ff 1a                                      bne #0x7e89ec
007e8a08  40 30 9d e5                                      ldr r3, [sp, #0x40]
007e8a0c  01 40 84 e2                                      add r4, r4, #1
007e8a10  04 00 53 e1                                      cmp r3, r4
007e8a14  d7 ff ff ca                                      bgt #0x7e8978
007e8a18  48 30 9d e5                                      ldr r3, [sp, #0x48]
007e8a1c  00 00 53 e3                                      cmp r3, #0
007e8a20  09 00 00 da                                      ble #0x7e8a4c
007e8a24  00 30 a0 e3                                      mov r3, #0
007e8a28  38 20 9d e5                                      ldr r2, [sp, #0x38]
007e8a2c  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
007e8a30  01 30 83 e2                                      add r3, r3, #1
007e8a34  04 10 92 e5                                      ldr r1, [r2, #4]
007e8a38  0c 10 c1 e3                                      bic r1, r1, #0xc
007e8a3c  04 10 82 e5                                      str r1, [r2, #4]
007e8a40  48 20 9d e5                                      ldr r2, [sp, #0x48]
007e8a44  03 00 52 e1                                      cmp r2, r3
007e8a48  f6 ff ff ca                                      bgt #0x7e8a28
007e8a4c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e8a50  19 3a a0 e3                                      mov r3, #0x19000
007e8a54  76 3f 83 e2                                      add r3, r3, #0x1d8
007e8a58  03 00 92 e7                                      ldr r0, [r2, r3]
007e8a5c  19 e8 ff eb                                      bl #0x7e2ac8
007e8a60  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e8a64  19 3a a0 e3                                      mov r3, #0x19000
007e8a68  8e 3f 83 e2                                      add r3, r3, #0x238
007e8a6c  03 40 9c e7                                      ldr r4, [ip, r3]
007e8a70  00 00 54 e3                                      cmp r4, #0
007e8a74  b6 fe ff 1a                                      bne #0x7e8554
007e8a78  24 00 9d e5                                      ldr r0, [sp, #0x24]
007e8a7c  08 10 a0 e1                                      mov r1, r8
007e8a80  c8 2a 00 eb                                      bl #0x7f35a8
007e8a84  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007e8a88  7a 09 00 eb                                      bl #0x7eb078
007e8a8c  74 d0 8d e2                                      add sp, sp, #0x74
007e8a90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e8a94  1c 00 85 e2                                      add r0, r5, #0x1c
007e8a98  06 10 a0 e1                                      mov r1, r6
007e8a9c  fc eb ff eb                                      bl #0x7e3a94
007e8aa0  24 10 95 e5                                      ldr r1, [r5, #0x24]
007e8aa4  34 30 95 e5                                      ldr r3, [r5, #0x34]
007e8aa8  28 20 95 e5                                      ldr r2, [r5, #0x28]
007e8aac  2c 10 85 e5                                      str r1, [r5, #0x2c]
007e8ab0  38 30 85 e5                                      str r3, [r5, #0x38]
007e8ab4  30 20 85 e5                                      str r2, [r5, #0x30]
007e8ab8  05 00 a0 e1                                      mov r0, r5
007e8abc  d6 fa ff eb                                      bl #0x7e761c
007e8ac0  b0 30 d5 e1                                      ldrh r3, [r5]
007e8ac4  00 10 a0 e3                                      mov r1, #0
007e8ac8  8c 10 85 e5                                      str r1, [r5, #0x8c]
007e8acc  08 30 c3 e3                                      bic r3, r3, #8
007e8ad0  b0 30 c5 e1                                      strh r3, [r5]
007e8ad4  6c ff ff ea                                      b #0x7e888c
007e8ad8  1c 80 88 e2                                      add r8, r8, #0x1c
007e8adc  08 00 a0 e1                                      mov r0, r8
007e8ae0  07 10 a0 e1                                      mov r1, r7
007e8ae4  ea eb ff eb                                      bl #0x7e3a94
007e8ae8  1c a0 8a e2                                      add sl, sl, #0x1c
007e8aec  34 50 94 e5                                      ldr r5, [r4, #0x34]
007e8af0  38 90 94 e5                                      ldr sb, [r4, #0x38]
007e8af4  cb fe ff ea                                      b #0x7e8628
007e8af8  1c a0 8a e2                                      add sl, sl, #0x1c
007e8afc  0a 00 a0 e1                                      mov r0, sl
007e8b00  0b 10 a0 e1                                      mov r1, fp
007e8b04  e2 eb ff eb                                      bl #0x7e3a94
007e8b08  0b 70 a0 e1                                      mov r7, fp
007e8b0c  34 50 94 e5                                      ldr r5, [r4, #0x34]
007e8b10  38 90 94 e5                                      ldr sb, [r4, #0x38]
007e8b14  1c 80 88 e2                                      add r8, r8, #0x1c
007e8b18  c2 fe ff ea                                      b #0x7e8628

; FUNCTION 0x007e8b1c, declared_size=292, range_size=292, mode=arm
; class-group: b2World
; alias: _ZN7b2World4StepEfi
; demangled: b2World::Step(float, int)
; decoder-mode: arm
007e8b1c  70 40 2d e9                                      push {r4, r5, r6, lr}
007e8b20  19 3a a0 e3                                      mov r3, #0x19000
007e8b24  01 50 a0 e1                                      mov r5, r1
007e8b28  00 60 a0 e3                                      mov r6, #0
007e8b2c  75 3f 83 e2                                      add r3, r3, #0x1d4
007e8b30  01 10 a0 e3                                      mov r1, #1
007e8b34  03 10 c0 e7                                      strb r1, [r0, r3]
007e8b38  18 d0 4d e2                                      sub sp, sp, #0x18
007e8b3c  00 40 a0 e1                                      mov r4, r0
007e8b40  06 10 a0 e1                                      mov r1, r6
007e8b44  05 00 a0 e1                                      mov r0, r5
007e8b48  10 20 8d e5                                      str r2, [sp, #0x10]
007e8b4c  04 50 8d e5                                      str r5, [sp, #4]
007e8b50  e8 95 ec eb                                      bl #0x30e2f8
007e8b54  00 00 50 e3                                      cmp r0, #0
007e8b58  08 60 8d 05                                      streq r6, [sp, #8]
007e8b5c  03 00 00 0a                                      beq #0x7e8b70
007e8b60  fe 05 a0 e3                                      mov r0, #0x3f800000
007e8b64  05 10 a0 e1                                      mov r1, r5
007e8b68  49 98 ec eb                                      bl #0x30ec94
007e8b6c  08 00 8d e5                                      str r0, [sp, #8]
007e8b70  19 3a a0 e3                                      mov r3, #0x19000
007e8b74  9b 3f 83 e2                                      add r3, r3, #0x26c
007e8b78  03 00 94 e7                                      ldr r0, [r4, r3]
007e8b7c  05 10 a0 e1                                      mov r1, r5
007e8b80  79 98 ec eb                                      bl #0x30ed6c
007e8b84  19 2a a0 e3                                      mov r2, #0x19000
007e8b88  75 32 09 e3                                      movw r3, #0x9275
007e8b8c  9d 2f 82 e2                                      add r2, r2, #0x274
007e8b90  01 30 40 e3                                      movt r3, #1
007e8b94  02 20 d4 e7                                      ldrb r2, [r4, r2]
007e8b98  03 30 d4 e7                                      ldrb r3, [r4, r3]
007e8b9c  19 1a 84 e2                                      add r1, r4, #0x19000
007e8ba0  0c 00 8d e5                                      str r0, [sp, #0xc]
007e8ba4  77 0f 81 e2                                      add r0, r1, #0x1dc
007e8ba8  15 20 cd e5                                      strb r2, [sp, #0x15]
007e8bac  14 30 cd e5                                      strb r3, [sp, #0x14]
007e8bb0  16 05 00 eb                                      bl #0x7ea010
007e8bb4  04 00 9d e5                                      ldr r0, [sp, #4]
007e8bb8  00 10 a0 e3                                      mov r1, #0
007e8bbc  cd 95 ec eb                                      bl #0x30e2f8
007e8bc0  00 00 50 e3                                      cmp r0, #0
007e8bc4  19 00 00 1a                                      bne #0x7e8c30
007e8bc8  76 32 09 e3                                      movw r3, #0x9276
007e8bcc  01 30 40 e3                                      movt r3, #1
007e8bd0  03 30 d4 e7                                      ldrb r3, [r4, r3]
007e8bd4  00 00 53 e3                                      cmp r3, #0
007e8bd8  04 00 00 0a                                      beq #0x7e8bf0
007e8bdc  04 00 9d e5                                      ldr r0, [sp, #4]
007e8be0  00 10 a0 e3                                      mov r1, #0
007e8be4  c3 95 ec eb                                      bl #0x30e2f8
007e8be8  00 00 50 e3                                      cmp r0, #0
007e8bec  0b 00 00 1a                                      bne #0x7e8c20
007e8bf0  04 00 a0 e1                                      mov r0, r4
007e8bf4  df f7 ff eb                                      bl #0x7e6b78
007e8bf8  08 10 9d e5                                      ldr r1, [sp, #8]
007e8bfc  19 2a a0 e3                                      mov r2, #0x19000
007e8c00  02 30 a0 e1                                      mov r3, r2
007e8c04  9b 2f 82 e2                                      add r2, r2, #0x26c
007e8c08  02 10 84 e7                                      str r1, [r4, r2]
007e8c0c  75 3f 83 e2                                      add r3, r3, #0x1d4
007e8c10  00 20 a0 e3                                      mov r2, #0
007e8c14  03 20 c4 e7                                      strb r2, [r4, r3]
007e8c18  18 d0 8d e2                                      add sp, sp, #0x18
007e8c1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e8c20  04 00 a0 e1                                      mov r0, r4
007e8c24  04 10 8d e2                                      add r1, sp, #4
007e8c28  0a fe ff eb                                      bl #0x7e8458
007e8c2c  ef ff ff ea                                      b #0x7e8bf0
007e8c30  04 00 a0 e1                                      mov r0, r4
007e8c34  04 10 8d e2                                      add r1, sp, #4
007e8c38  a7 fa ff eb                                      bl #0x7e76dc
007e8c3c  e1 ff ff ea                                      b #0x7e8bc8
