; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005353c8, declared_size=464, range_size=464, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment8setFocusEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::setFocus(glitch::gui::IGUIElement*)
; decoder-mode: arm
005353c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005353cc  b0 41 90 e5                                      ldr r4, [r0, #0x1b0]
005353d0  30 d0 4d e2                                      sub sp, sp, #0x30
005353d4  00 60 a0 e1                                      mov r6, r0
005353d8  01 00 54 e1                                      cmp r4, r1
005353dc  01 50 a0 e1                                      mov r5, r1
005353e0  04 70 a0 e1                                      mov r7, r4
005353e4  69 00 00 0a                                      beq #0x535590
005353e8  08 30 80 e2                                      add r3, r0, #8
005353ec  03 00 51 e1                                      cmp r1, r3
005353f0  00 50 a0 03                                      moveq r5, #0
005353f4  09 00 00 0a                                      beq #0x535420
005353f8  00 00 55 e3                                      cmp r5, #0
005353fc  07 00 00 0a                                      beq #0x535420
00535400  00 30 95 e5                                      ldr r3, [r5]
00535404  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00535408  03 30 85 e0                                      add r3, r5, r3
0053540c  04 20 93 e5                                      ldr r2, [r3, #4]
00535410  01 20 82 e2                                      add r2, r2, #1
00535414  04 20 83 e5                                      str r2, [r3, #4]
00535418  b0 41 90 e5                                      ldr r4, [r0, #0x1b0]
0053541c  04 70 a0 e1                                      mov r7, r4
00535420  00 00 54 e3                                      cmp r4, #0
00535424  25 00 00 0a                                      beq #0x5354c0
00535428  00 30 94 e5                                      ldr r3, [r4]
0053542c  00 20 a0 e3                                      mov r2, #0
00535430  18 10 8d e2                                      add r1, sp, #0x18
00535434  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00535438  03 30 84 e0                                      add r3, r4, r3
0053543c  04 00 93 e5                                      ldr r0, [r3, #4]
00535440  01 00 80 e2                                      add r0, r0, #1
00535444  04 00 83 e5                                      str r0, [r3, #4]
00535448  b0 31 96 e5                                      ldr r3, [r6, #0x1b0]
0053544c  28 20 8d e5                                      str r2, [sp, #0x28]
00535450  18 20 8d e5                                      str r2, [sp, #0x18]
00535454  20 30 8d e5                                      str r3, [sp, #0x20]
00535458  24 50 8d e5                                      str r5, [sp, #0x24]
0053545c  03 00 a0 e1                                      mov r0, r3
00535460  00 30 93 e5                                      ldr r3, [r3]
00535464  0f e0 a0 e1                                      mov lr, pc
00535468  08 f0 93 e5                                      ldr pc, [r3, #8]
0053546c  00 00 50 e3                                      cmp r0, #0
00535470  0c 00 00 0a                                      beq #0x5354a8
00535474  00 00 55 e3                                      cmp r5, #0
00535478  03 00 00 0a                                      beq #0x53548c
0053547c  00 30 95 e5                                      ldr r3, [r5]
00535480  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00535484  00 00 85 e0                                      add r0, r5, r0
00535488  3d a0 f7 eb                                      bl #0x31d584
0053548c  00 30 94 e5                                      ldr r3, [r4]
00535490  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00535494  00 00 84 e0                                      add r0, r4, r0
00535498  39 a0 f7 eb                                      bl #0x31d584
0053549c  00 00 a0 e3                                      mov r0, #0
005354a0  30 d0 8d e2                                      add sp, sp, #0x30
005354a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005354a8  00 30 94 e5                                      ldr r3, [r4]
005354ac  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005354b0  00 00 84 e0                                      add r0, r4, r0
005354b4  32 a0 f7 eb                                      bl #0x31d584
005354b8  b0 41 96 e5                                      ldr r4, [r6, #0x1b0]
005354bc  04 70 a0 e1                                      mov r7, r4
005354c0  00 00 55 e3                                      cmp r5, #0
005354c4  28 00 00 0a                                      beq #0x53556c
005354c8  00 00 54 e3                                      cmp r4, #0
005354cc  06 00 00 0a                                      beq #0x5354ec
005354d0  00 30 94 e5                                      ldr r3, [r4]
005354d4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005354d8  03 40 84 e0                                      add r4, r4, r3
005354dc  04 30 94 e5                                      ldr r3, [r4, #4]
005354e0  01 30 83 e2                                      add r3, r3, #1
005354e4  04 30 84 e5                                      str r3, [r4, #4]
005354e8  b0 41 96 e5                                      ldr r4, [r6, #0x1b0]
005354ec  00 80 a0 e3                                      mov r8, #0
005354f0  01 30 a0 e3                                      mov r3, #1
005354f4  0c 40 8d e5                                      str r4, [sp, #0xc]
005354f8  10 30 8d e5                                      str r3, [sp, #0x10]
005354fc  00 80 8d e5                                      str r8, [sp]
00535500  08 50 8d e5                                      str r5, [sp, #8]
00535504  00 30 95 e5                                      ldr r3, [r5]
00535508  05 00 a0 e1                                      mov r0, r5
0053550c  0d 10 a0 e1                                      mov r1, sp
00535510  0f e0 a0 e1                                      mov lr, pc
00535514  08 f0 93 e5                                      ldr pc, [r3, #8]
00535518  08 00 50 e1                                      cmp r0, r8
0053551c  0b 00 00 0a                                      beq #0x535550
00535520  00 30 95 e5                                      ldr r3, [r5]
00535524  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00535528  00 00 85 e0                                      add r0, r5, r0
0053552c  14 a0 f7 eb                                      bl #0x31d584
00535530  08 00 57 e1                                      cmp r7, r8
00535534  15 00 00 0a                                      beq #0x535590
00535538  00 30 97 e5                                      ldr r3, [r7]
0053553c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00535540  00 00 87 e0                                      add r0, r7, r0
00535544  0e a0 f7 eb                                      bl #0x31d584
00535548  08 00 a0 e1                                      mov r0, r8
0053554c  d3 ff ff ea                                      b #0x5354a0
00535550  00 00 57 e3                                      cmp r7, #0
00535554  03 00 00 0a                                      beq #0x535568
00535558  00 30 97 e5                                      ldr r3, [r7]
0053555c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00535560  00 00 87 e0                                      add r0, r7, r0
00535564  06 a0 f7 eb                                      bl #0x31d584
00535568  b0 71 96 e5                                      ldr r7, [r6, #0x1b0]
0053556c  00 00 57 e3                                      cmp r7, #0
00535570  03 00 00 0a                                      beq #0x535584
00535574  00 30 97 e5                                      ldr r3, [r7]
00535578  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053557c  00 00 87 e0                                      add r0, r7, r0
00535580  ff 9f f7 eb                                      bl #0x31d584
00535584  b0 51 86 e5                                      str r5, [r6, #0x1b0]
00535588  01 00 a0 e3                                      mov r0, #1
0053558c  c3 ff ff ea                                      b #0x5354a0
00535590  00 00 a0 e3                                      mov r0, #0
00535594  c1 ff ff ea                                      b #0x5354a0

; FUNCTION 0x00535598, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment8getFocusEv
; demangled: glitch::gui::CGUIEnvironment::getFocus() const
; decoder-mode: arm
00535598  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
0053559c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005355a0, declared_size=140, range_size=140, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment11removeFocusEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::removeFocus(glitch::gui::IGUIElement*)
; decoder-mode: arm
005355a0  30 40 2d e9                                      push {r4, r5, lr}
005355a4  b0 31 90 e5                                      ldr r3, [r0, #0x1b0]
005355a8  1c d0 4d e2                                      sub sp, sp, #0x1c
005355ac  00 40 a0 e1                                      mov r4, r0
005355b0  00 00 53 e3                                      cmp r3, #0
005355b4  1a 00 00 0a                                      beq #0x535624
005355b8  01 00 53 e1                                      cmp r3, r1
005355bc  08 00 00 0a                                      beq #0x5355e4
005355c0  00 20 93 e5                                      ldr r2, [r3]
005355c4  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005355c8  00 00 83 e0                                      add r0, r3, r0
005355cc  ec 9f f7 eb                                      bl #0x31d584
005355d0  00 30 a0 e3                                      mov r3, #0
005355d4  b0 31 84 e5                                      str r3, [r4, #0x1b0]
005355d8  01 00 a0 e3                                      mov r0, #1
005355dc  1c d0 8d e2                                      add sp, sp, #0x1c
005355e0  30 80 bd e8                                      pop {r4, r5, pc}
005355e4  00 50 a0 e3                                      mov r5, #0
005355e8  00 50 8d e5                                      str r5, [sp]
005355ec  08 30 8d e5                                      str r3, [sp, #8]
005355f0  0c 50 8d e5                                      str r5, [sp, #0xc]
005355f4  10 50 8d e5                                      str r5, [sp, #0x10]
005355f8  03 00 a0 e1                                      mov r0, r3
005355fc  0d 10 a0 e1                                      mov r1, sp
00535600  00 30 93 e5                                      ldr r3, [r3]
00535604  0f e0 a0 e1                                      mov lr, pc
00535608  08 f0 93 e5                                      ldr pc, [r3, #8]
0053560c  05 00 50 e1                                      cmp r0, r5
00535610  05 00 a0 11                                      movne r0, r5
00535614  f0 ff ff 1a                                      bne #0x5355dc
00535618  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0053561c  00 00 53 e3                                      cmp r3, #0
00535620  e6 ff ff 1a                                      bne #0x5355c0
00535624  01 00 a0 e3                                      mov r0, #1
00535628  eb ff ff ea                                      b #0x5355dc

; FUNCTION 0x0053562c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment8hasFocusEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::hasFocus(glitch::gui::IGUIElement*) const
; decoder-mode: arm
0053562c  b0 01 90 e5                                      ldr r0, [r0, #0x1b0]
00535630  01 00 50 e1                                      cmp r0, r1
00535634  00 00 a0 13                                      movne r0, #0
00535638  01 00 a0 03                                      moveq r0, #1
0053563c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535640, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment14getVideoDriverEv
; demangled: glitch::gui::CGUIEnvironment::getVideoDriver() const
; decoder-mode: arm
00535640  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
00535644  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535648, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment13getFileSystemEv
; demangled: glitch::gui::CGUIEnvironment::getFileSystem() const
; decoder-mode: arm
00535648  07 0d 80 e2                                      add r0, r0, #0x1c0
0053564c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535650, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment13getOSOperatorEv
; demangled: glitch::gui::CGUIEnvironment::getOSOperator() const
; decoder-mode: arm
00535650  c8 01 90 e5                                      ldr r0, [r0, #0x1c8]
00535654  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535658, declared_size=176, range_size=176, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment5clearEv
; demangled: glitch::gui::CGUIEnvironment::clear()
; decoder-mode: arm
00535658  10 40 2d e9                                      push {r4, lr}
0053565c  b0 31 90 e5                                      ldr r3, [r0, #0x1b0]
00535660  00 40 a0 e1                                      mov r4, r0
00535664  00 00 53 e3                                      cmp r3, #0
00535668  05 00 00 0a                                      beq #0x535684
0053566c  00 20 93 e5                                      ldr r2, [r3]
00535670  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00535674  00 00 83 e0                                      add r0, r3, r0
00535678  c1 9f f7 eb                                      bl #0x31d584
0053567c  00 30 a0 e3                                      mov r3, #0
00535680  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00535684  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
00535688  00 00 53 e3                                      cmp r3, #0
0053568c  08 00 00 0a                                      beq #0x5356b4
00535690  08 20 84 e2                                      add r2, r4, #8
00535694  02 00 53 e1                                      cmp r3, r2
00535698  05 00 00 0a                                      beq #0x5356b4
0053569c  00 20 93 e5                                      ldr r2, [r3]
005356a0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005356a4  00 00 83 e0                                      add r0, r3, r0
005356a8  b5 9f f7 eb                                      bl #0x31d584
005356ac  00 30 a0 e3                                      mov r3, #0
005356b0  ac 31 84 e5                                      str r3, [r4, #0x1ac]
005356b4  00 30 94 e5                                      ldr r3, [r4]
005356b8  04 00 a0 e1                                      mov r0, r4
005356bc  0f e0 a0 e1                                      mov lr, pc
005356c0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005356c4  00 30 90 e5                                      ldr r3, [r0]
005356c8  0f e0 a0 e1                                      mov lr, pc
005356cc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005356d0  00 30 90 e5                                      ldr r3, [r0]
005356d4  00 40 a0 e1                                      mov r4, r0
005356d8  00 00 53 e1                                      cmp r3, r0
005356dc  08 00 00 0a                                      beq #0x535704
005356e0  04 30 94 e5                                      ldr r3, [r4, #4]
005356e4  08 30 93 e5                                      ldr r3, [r3, #8]
005356e8  03 00 a0 e1                                      mov r0, r3
005356ec  00 30 93 e5                                      ldr r3, [r3]
005356f0  0f e0 a0 e1                                      mov lr, pc
005356f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005356f8  00 30 94 e5                                      ldr r3, [r4]
005356fc  04 00 53 e1                                      cmp r3, r4
00535700  f6 ff ff 1a                                      bne #0x5356e0
00535704  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00535708, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_N6glitch3gui15CGUIEnvironment7onEventERKNS_6SEventE
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00535708  08 00 40 e2                                      sub r0, r0, #8
0053570c  ff ff ff ea                                      b #0x535710

; FUNCTION 0x00535710, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIEnvironment::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00535710  10 40 2d e9                                      push {r4, lr}
00535714  c4 31 90 e5                                      ldr r3, [r0, #0x1c4]
00535718  00 00 53 e3                                      cmp r3, #0
0053571c  0f 00 00 0a                                      beq #0x535760
00535720  00 20 91 e5                                      ldr r2, [r1]
00535724  01 00 52 e3                                      cmp r2, #1
00535728  0c 00 00 0a                                      beq #0x535760
0053572c  02 00 52 e3                                      cmp r2, #2
00535730  0a 00 00 0a                                      beq #0x535760
00535734  00 00 52 e3                                      cmp r2, #0
00535738  03 00 00 1a                                      bne #0x53574c
0053573c  08 20 91 e5                                      ldr r2, [r1, #8]
00535740  08 00 80 e2                                      add r0, r0, #8
00535744  00 00 52 e1                                      cmp r2, r0
00535748  04 00 00 0a                                      beq #0x535760
0053574c  03 00 a0 e1                                      mov r0, r3
00535750  00 30 93 e5                                      ldr r3, [r3]
00535754  0f e0 a0 e1                                      mov lr, pc
00535758  08 f0 93 e5                                      ldr pc, [r3, #8]
0053575c  10 80 bd e8                                      pop {r4, pc}
00535760  00 00 a0 e3                                      mov r0, #0
00535764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00535768, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment20setUserEventReceiverEPNS_14IEventReceiverE
; demangled: glitch::gui::CGUIEnvironment::setUserEventReceiver(glitch::IEventReceiver*)
; decoder-mode: arm
00535768  c4 11 80 e5                                      str r1, [r0, #0x1c4]
0053576c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535770, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment7getSkinEv
; demangled: glitch::gui::CGUIEnvironment::getSkin() const
; decoder-mode: arm
00535770  bc 01 90 e5                                      ldr r0, [r0, #0x1bc]
00535774  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535778, declared_size=88, range_size=88, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7setSkinEPNS0_8IGUISkinE
; demangled: glitch::gui::CGUIEnvironment::setSkin(glitch::gui::IGUISkin*)
; decoder-mode: arm
00535778  70 40 2d e9                                      push {r4, r5, r6, lr}
0053577c  bc 31 90 e5                                      ldr r3, [r0, #0x1bc]
00535780  00 40 a0 e1                                      mov r4, r0
00535784  01 50 a0 e1                                      mov r5, r1
00535788  01 00 53 e1                                      cmp r3, r1
0053578c  0e 00 00 0a                                      beq #0x5357cc
00535790  00 00 53 e3                                      cmp r3, #0
00535794  03 00 00 0a                                      beq #0x5357a8
00535798  00 20 93 e5                                      ldr r2, [r3]
0053579c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005357a0  00 00 83 e0                                      add r0, r3, r0
005357a4  76 9f f7 eb                                      bl #0x31d584
005357a8  00 00 55 e3                                      cmp r5, #0
005357ac  bc 51 84 e5                                      str r5, [r4, #0x1bc]
005357b0  05 00 00 0a                                      beq #0x5357cc
005357b4  00 30 95 e5                                      ldr r3, [r5]
005357b8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005357bc  03 50 85 e0                                      add r5, r5, r3
005357c0  04 30 95 e5                                      ldr r3, [r5, #4]
005357c4  01 30 83 e2                                      add r3, r3, #1
005357c8  04 30 85 e5                                      str r3, [r5, #4]
005357cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005357d0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment27getDefaultGUIElementFactoryEv
; demangled: glitch::gui::CGUIEnvironment::getDefaultGUIElementFactory() const
; decoder-mode: arm
005357d0  10 40 2d e9                                      push {r4, lr}
005357d4  00 10 a0 e3                                      mov r1, #0
005357d8  00 30 90 e5                                      ldr r3, [r0]
005357dc  0f e0 a0 e1                                      mov lr, pc
005357e0  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
005357e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005357e8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment35getRegisteredGUIElementFactoryCountEv
; demangled: glitch::gui::CGUIEnvironment::getRegisteredGUIElementFactoryCount() const
; decoder-mode: arm
005357e8  6c 31 90 e5                                      ldr r3, [r0, #0x16c]
005357ec  70 01 90 e5                                      ldr r0, [r0, #0x170]
005357f0  00 00 63 e0                                      rsb r0, r3, r0
005357f4  40 01 a0 e1                                      asr r0, r0, #2
005357f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005357fc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment20getGUIElementFactoryEj
; demangled: glitch::gui::CGUIEnvironment::getGUIElementFactory(unsigned int) const
; decoder-mode: arm
005357fc  70 21 90 e5                                      ldr r2, [r0, #0x170]
00535800  6c 31 90 e5                                      ldr r3, [r0, #0x16c]
00535804  02 20 63 e0                                      rsb r2, r3, r2
00535808  42 01 51 e1                                      cmp r1, r2, asr #2
0053580c  00 00 a0 23                                      movhs r0, #0
00535810  01 01 93 37                                      ldrlo r0, [r3, r1, lsl #2]
00535814  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535818, declared_size=108, range_size=108, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addGUIElementEPKcPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::addGUIElement(char const*, glitch::gui::IGUIElement*)
; decoder-mode: arm
00535818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053581c  00 60 52 e2                                      subs r6, r2, #0
00535820  08 60 80 02                                      addeq r6, r0, #8
00535824  6c 31 90 e5                                      ldr r3, [r0, #0x16c]
00535828  00 40 a0 e1                                      mov r4, r0
0053582c  70 01 90 e5                                      ldr r0, [r0, #0x170]
00535830  01 70 a0 e1                                      mov r7, r1
00535834  00 00 63 e0                                      rsb r0, r3, r0
00535838  40 01 b0 e1                                      asrs r0, r0, #2
0053583c  00 50 a0 13                                      movne r5, #0
00535840  0e 00 00 0a                                      beq #0x535880
00535844  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00535848  06 20 a0 e1                                      mov r2, r6
0053584c  07 10 a0 e1                                      mov r1, r7
00535850  03 00 a0 e1                                      mov r0, r3
00535854  00 30 93 e5                                      ldr r3, [r3]
00535858  0f e0 a0 e1                                      mov lr, pc
0053585c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00535860  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
00535864  70 21 94 e5                                      ldr r2, [r4, #0x170]
00535868  01 50 85 e2                                      add r5, r5, #1
0053586c  02 20 63 e0                                      rsb r2, r3, r2
00535870  42 01 55 e1                                      cmp r5, r2, asr #2
00535874  01 00 00 2a                                      bhs #0x535880
00535878  00 00 50 e3                                      cmp r0, #0
0053587c  f0 ff ff 0a                                      beq #0x535844
00535880  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00535884, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7saveGUIEPKcPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::saveGUI(char const*, glitch::gui::IGUIElement*)
; decoder-mode: arm
00535884  70 40 2d e9                                      push {r4, r5, r6, lr}
00535888  c0 31 90 e5                                      ldr r3, [r0, #0x1c0]
0053588c  00 40 a0 e1                                      mov r4, r0
00535890  02 60 a0 e1                                      mov r6, r2
00535894  03 00 a0 e1                                      mov r0, r3
00535898  00 20 a0 e3                                      mov r2, #0
0053589c  00 30 93 e5                                      ldr r3, [r3]
005358a0  0f e0 a0 e1                                      mov lr, pc
005358a4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005358a8  00 50 50 e2                                      subs r5, r0, #0
005358ac  05 40 a0 01                                      moveq r4, r5
005358b0  08 00 00 0a                                      beq #0x5358d8
005358b4  04 00 a0 e1                                      mov r0, r4
005358b8  00 30 94 e5                                      ldr r3, [r4]
005358bc  06 20 a0 e1                                      mov r2, r6
005358c0  05 10 a0 e1                                      mov r1, r5
005358c4  0f e0 a0 e1                                      mov lr, pc
005358c8  ec f0 93 e5                                      ldr pc, [r3, #0xec]
005358cc  00 40 a0 e1                                      mov r4, r0
005358d0  05 00 a0 e1                                      mov r0, r5
005358d4  2a 9f f7 eb                                      bl #0x31d584
005358d8  04 00 a0 e1                                      mov r0, r4
005358dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005358e0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7saveGUIEPNS_2io10IWriteFileEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::saveGUI(glitch::io::IWriteFile*, glitch::gui::IGUIElement*)
; decoder-mode: arm
005358e0  00 00 51 e3                                      cmp r1, #0
005358e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005358e8  00 40 a0 e1                                      mov r4, r0
005358ec  02 60 a0 e1                                      mov r6, r2
005358f0  15 00 00 0a                                      beq #0x53594c
005358f4  c0 31 90 e5                                      ldr r3, [r0, #0x1c0]
005358f8  03 00 a0 e1                                      mov r0, r3
005358fc  00 30 93 e5                                      ldr r3, [r3]
00535900  0f e0 a0 e1                                      mov lr, pc
00535904  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00535908  00 50 50 e2                                      subs r5, r0, #0
0053590c  0e 00 00 0a                                      beq #0x53594c
00535910  00 30 95 e5                                      ldr r3, [r5]
00535914  0f e0 a0 e1                                      mov lr, pc
00535918  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053591c  00 30 94 e5                                      ldr r3, [r4]
00535920  00 00 56 e3                                      cmp r6, #0
00535924  08 60 84 02                                      addeq r6, r4, #8
00535928  00 31 93 e5                                      ldr r3, [r3, #0x100]
0053592c  06 20 a0 e1                                      mov r2, r6
00535930  04 00 a0 e1                                      mov r0, r4
00535934  05 10 a0 e1                                      mov r1, r5
00535938  33 ff 2f e1                                      blx r3
0053593c  05 00 a0 e1                                      mov r0, r5
00535940  0f 9f f7 eb                                      bl #0x31d584
00535944  01 00 a0 e3                                      mov r0, #1
00535948  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053594c  00 00 a0 e3                                      mov r0, #0
00535950  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00535954, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_NK6glitch3gui15CGUIEnvironment19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00535954  08 00 40 e2                                      sub r0, r0, #8
00535958  ff ff ff ea                                      b #0x53595c

; FUNCTION 0x0053595c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0053595c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00535960  0c d0 4d e2                                      sub sp, sp, #0xc
00535964  00 30 90 e5                                      ldr r3, [r0]
00535968  00 70 a0 e1                                      mov r7, r0
0053596c  01 50 a0 e1                                      mov r5, r1
00535970  02 60 a0 e1                                      mov r6, r2
00535974  0f e0 a0 e1                                      mov lr, pc
00535978  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053597c  00 40 50 e2                                      subs r4, r0, #0
00535980  1a 00 00 0a                                      beq #0x5359f0
00535984  00 30 97 e5                                      ldr r3, [r7]
00535988  07 00 a0 e1                                      mov r0, r7
0053598c  0f e0 a0 e1                                      mov lr, pc
00535990  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00535994  00 30 90 e5                                      ldr r3, [r0]
00535998  0f e0 a0 e1                                      mov lr, pc
0053599c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005359a0  00 10 a0 e3                                      mov r1, #0
005359a4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005359a8  00 10 8d e5                                      str r1, [sp]
005359ac  48 10 9f e5                                      ldr r1, [pc, #0x48]
005359b0  03 30 8f e0                                      add r3, pc, r3
005359b4  00 20 a0 e1                                      mov r2, r0
005359b8  01 10 8f e0                                      add r1, pc, r1
005359bc  70 30 83 e2                                      add r3, r3, #0x70
005359c0  05 00 a0 e1                                      mov r0, r5
005359c4  00 c0 95 e5                                      ldr ip, [r5]
005359c8  0f e0 a0 e1                                      mov lr, pc
005359cc  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005359d0  00 30 94 e5                                      ldr r3, [r4]
005359d4  05 10 a0 e1                                      mov r1, r5
005359d8  06 20 a0 e1                                      mov r2, r6
005359dc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
005359e0  03 00 84 e0                                      add r0, r4, r3
005359e4  03 30 94 e7                                      ldr r3, [r4, r3]
005359e8  0f e0 a0 e1                                      mov lr, pc
005359ec  00 f0 93 e5                                      ldr pc, [r3]
005359f0  0c d0 8d e2                                      add sp, sp, #0xc
005359f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005359f8  88 11 42 00 90 84 3a 00                          .byte 0x88, 0x11, 0x42, 0x00, 0x90, 0x84, 0x3a, 0x00

; FUNCTION 0x00535a00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_N6glitch3gui15CGUIEnvironment21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00535a00  08 00 40 e2                                      sub r0, r0, #8
00535a04  ff ff ff ea                                      b #0x535a08

; FUNCTION 0x00535a08, declared_size=336, range_size=336, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00535a08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535a0c  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
00535a10  00 30 91 e5                                      ldr r3, [r1]
00535a14  01 60 a0 e1                                      mov r6, r1
00535a18  05 50 8f e0                                      add r5, pc, r5
00535a1c  00 40 a0 e1                                      mov r4, r0
00535a20  01 00 a0 e1                                      mov r0, r1
00535a24  05 10 a0 e1                                      mov r1, r5
00535a28  02 70 a0 e1                                      mov r7, r2
00535a2c  0f e0 a0 e1                                      mov lr, pc
00535a30  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00535a34  00 00 50 e3                                      cmp r0, #0
00535a38  10 00 00 1a                                      bne #0x535a80
00535a3c  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
00535a40  00 00 52 e3                                      cmp r2, #0
00535a44  cc 30 92 15                                      ldrne r3, [r2, #0xcc]
00535a48  02 10 a0 01                                      moveq r1, r2
00535a4c  04 30 13 15                                      ldrne r3, [r3, #-4]
00535a50  0c 20 93 15                                      ldrne r2, [r3, #0xc]
00535a54  10 10 93 15                                      ldrne r1, [r3, #0x10]
00535a58  00 30 a0 e3                                      mov r3, #0
00535a5c  34 30 84 e5                                      str r3, [r4, #0x34]
00535a60  3c 10 84 e5                                      str r1, [r4, #0x3c]
00535a64  38 20 84 e5                                      str r2, [r4, #0x38]
00535a68  40 30 84 e5                                      str r3, [r4, #0x40]
00535a6c  44 30 84 e5                                      str r3, [r4, #0x44]
00535a70  48 20 84 e5                                      str r2, [r4, #0x48]
00535a74  4c 10 84 e5                                      str r1, [r4, #0x4c]
00535a78  30 30 84 e5                                      str r3, [r4, #0x30]
00535a7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00535a80  00 30 94 e5                                      ldr r3, [r4]
00535a84  04 00 a0 e1                                      mov r0, r4
00535a88  0f e0 a0 e1                                      mov lr, pc
00535a8c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00535a90  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00535a94  00 80 a0 e1                                      mov r8, r0
00535a98  05 10 a0 e1                                      mov r1, r5
00535a9c  02 20 8f e0                                      add r2, pc, r2
00535aa0  00 30 96 e5                                      ldr r3, [r6]
00535aa4  70 20 82 e2                                      add r2, r2, #0x70
00535aa8  06 00 a0 e1                                      mov r0, r6
00535aac  0f e0 a0 e1                                      mov lr, pc
00535ab0  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00535ab4  00 00 58 e3                                      cmp r8, #0
00535ab8  00 50 a0 e1                                      mov r5, r0
00535abc  05 00 00 0a                                      beq #0x535ad8
00535ac0  08 00 a0 e1                                      mov r0, r8
00535ac4  00 30 98 e5                                      ldr r3, [r8]
00535ac8  0f e0 a0 e1                                      mov lr, pc
00535acc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00535ad0  05 00 50 e1                                      cmp r0, r5
00535ad4  0e 00 00 0a                                      beq #0x535b14
00535ad8  05 10 a0 e1                                      mov r1, r5
00535adc  00 30 94 e5                                      ldr r3, [r4]
00535ae0  04 00 a0 e1                                      mov r0, r4
00535ae4  0f e0 a0 e1                                      mov lr, pc
00535ae8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00535aec  00 50 a0 e1                                      mov r5, r0
00535af0  00 30 94 e5                                      ldr r3, [r4]
00535af4  04 00 a0 e1                                      mov r0, r4
00535af8  05 10 a0 e1                                      mov r1, r5
00535afc  0f e0 a0 e1                                      mov lr, pc
00535b00  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00535b04  00 30 95 e5                                      ldr r3, [r5]
00535b08  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00535b0c  00 00 85 e0                                      add r0, r5, r0
00535b10  9b 9e f7 eb                                      bl #0x31d584
00535b14  00 30 94 e5                                      ldr r3, [r4]
00535b18  04 00 a0 e1                                      mov r0, r4
00535b1c  0f e0 a0 e1                                      mov lr, pc
00535b20  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00535b24  00 30 50 e2                                      subs r3, r0, #0
00535b28  c3 ff ff 0a                                      beq #0x535a3c
00535b2c  00 00 93 e5                                      ldr r0, [r3]
00535b30  06 10 a0 e1                                      mov r1, r6
00535b34  07 20 a0 e1                                      mov r2, r7
00535b38  1c c0 10 e5                                      ldr ip, [r0, #-0x1c]
00535b3c  0c 00 83 e0                                      add r0, r3, ip
00535b40  0c 30 93 e7                                      ldr r3, [r3, ip]
00535b44  0f e0 a0 e1                                      mov lr, pc
00535b48  04 f0 93 e5                                      ldr pc, [r3, #4]
00535b4c  ba ff ff ea                                      b #0x535a3c
; mapping-symbol data/literal pool
00535b50  30 84 3a 00 9c 10 42 00                          .byte 0x30, 0x84, 0x3a, 0x00, 0x9c, 0x10, 0x42, 0x00

; FUNCTION 0x00535b58, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment14getElementByIdEiPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::getElementById(int, glitch::gui::IGUIElement*)
; decoder-mode: arm
00535b58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535b5c  00 40 52 e2                                      subs r4, r2, #0
00535b60  01 60 a0 e1                                      mov r6, r1
00535b64  00 50 a0 e1                                      mov r5, r0
00535b68  1b 00 00 0a                                      beq #0x535bdc
00535b6c  00 30 94 e5                                      ldr r3, [r4]
00535b70  04 00 a0 e1                                      mov r0, r4
00535b74  0f e0 a0 e1                                      mov lr, pc
00535b78  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00535b7c  06 00 50 e1                                      cmp r0, r6
00535b80  01 00 00 1a                                      bne #0x535b8c
00535b84  04 00 a0 e1                                      mov r0, r4
00535b88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00535b8c  04 00 a0 e1                                      mov r0, r4
00535b90  00 30 94 e5                                      ldr r3, [r4]
00535b94  0f e0 a0 e1                                      mov lr, pc
00535b98  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00535b9c  00 70 a0 e1                                      mov r7, r0
00535ba0  00 40 90 e5                                      ldr r4, [r0]
00535ba4  06 00 00 ea                                      b #0x535bc4
00535ba8  08 20 94 e5                                      ldr r2, [r4, #8]
00535bac  00 30 95 e5                                      ldr r3, [r5]
00535bb0  0f e0 a0 e1                                      mov lr, pc
00535bb4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00535bb8  00 00 50 e3                                      cmp r0, #0
00535bbc  0b 00 00 1a                                      bne #0x535bf0
00535bc0  00 40 94 e5                                      ldr r4, [r4]
00535bc4  04 00 57 e1                                      cmp r7, r4
00535bc8  05 00 a0 e1                                      mov r0, r5
00535bcc  06 10 a0 e1                                      mov r1, r6
00535bd0  f4 ff ff 1a                                      bne #0x535ba8
00535bd4  00 40 a0 e3                                      mov r4, #0
00535bd8  e9 ff ff ea                                      b #0x535b84
00535bdc  00 30 90 e5                                      ldr r3, [r0]
00535be0  0f e0 a0 e1                                      mov lr, pc
00535be4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00535be8  00 40 a0 e1                                      mov r4, r0
00535bec  de ff ff ea                                      b #0x535b6c
00535bf0  00 40 a0 e1                                      mov r4, r0
00535bf4  e2 ff ff ea                                      b #0x535b84

; FUNCTION 0x00535bf8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZNK6glitch3gui15CGUIEnvironment14getBuiltInFontEv
; demangled: glitch::gui::CGUIEnvironment::getBuiltInFont() const
; decoder-mode: arm
00535bf8  7c 21 90 e5                                      ldr r2, [r0, #0x17c]
00535bfc  78 31 90 e5                                      ldr r3, [r0, #0x178]
00535c00  02 00 53 e1                                      cmp r3, r2
00535c04  00 00 a0 03                                      moveq r0, #0
00535c08  18 00 93 15                                      ldrne r0, [r3, #0x18]
00535c0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00535c10, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment17getRootGUIElementEv
; demangled: glitch::gui::CGUIEnvironment::getRootGUIElement()
; decoder-mode: arm
00535c10  08 00 80 e2                                      add r0, r0, #8
00535c14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00536388, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7loadGUIEPKcPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::loadGUI(char const*, glitch::gui::IGUIElement*)
; decoder-mode: arm
00536388  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053638c  c0 31 90 e5                                      ldr r3, [r0, #0x1c0]
00536390  00 40 a0 e1                                      mov r4, r0
00536394  02 60 a0 e1                                      mov r6, r2
00536398  03 00 a0 e1                                      mov r0, r3
0053639c  00 30 93 e5                                      ldr r3, [r3]
005363a0  01 70 a0 e1                                      mov r7, r1
005363a4  0f e0 a0 e1                                      mov lr, pc
005363a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005363ac  00 50 50 e2                                      subs r5, r0, #0
005363b0  0a 00 00 0a                                      beq #0x5363e0
005363b4  00 30 94 e5                                      ldr r3, [r4]
005363b8  06 20 a0 e1                                      mov r2, r6
005363bc  05 10 a0 e1                                      mov r1, r5
005363c0  04 00 a0 e1                                      mov r0, r4
005363c4  0f e0 a0 e1                                      mov lr, pc
005363c8  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
005363cc  00 40 a0 e1                                      mov r4, r0
005363d0  05 00 a0 e1                                      mov r0, r5
005363d4  6a 9c f7 eb                                      bl #0x31d584
005363d8  04 00 a0 e1                                      mov r0, r4
005363dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005363e0  18 00 9f e5                                      ldr r0, [pc, #0x18]
005363e4  07 10 a0 e1                                      mov r1, r7
005363e8  03 20 a0 e3                                      mov r2, #3
005363ec  00 00 8f e0                                      add r0, pc, r0
005363f0  05 40 a0 e1                                      mov r4, r5
005363f4  3b 52 03 eb                                      bl #0x60ace8
005363f8  04 00 a0 e1                                      mov r0, r4
005363fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00536400  64 7a 3a 00                                      .byte 0x64, 0x7a, 0x3a, 0x00

; FUNCTION 0x0053644c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment16getElementByNameEPKcPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::getElementByName(char const*, glitch::gui::IGUIElement*)
; decoder-mode: arm
0053644c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536450  00 60 52 e2                                      subs r6, r2, #0
00536454  01 40 a0 e1                                      mov r4, r1
00536458  00 50 a0 e1                                      mov r5, r0
0053645c  09 00 00 0a                                      beq #0x536488
00536460  00 30 96 e5                                      ldr r3, [r6]
00536464  06 00 a0 e1                                      mov r0, r6
00536468  0f e0 a0 e1                                      mov lr, pc
0053646c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00536470  04 10 a0 e1                                      mov r1, r4
00536474  a8 5f f7 eb                                      bl #0x30e31c
00536478  00 00 50 e3                                      cmp r0, #0
0053647c  06 00 00 1a                                      bne #0x53649c
00536480  06 00 a0 e1                                      mov r0, r6
00536484  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00536488  00 30 90 e5                                      ldr r3, [r0]
0053648c  0f e0 a0 e1                                      mov lr, pc
00536490  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00536494  00 60 a0 e1                                      mov r6, r0
00536498  f0 ff ff ea                                      b #0x536460
0053649c  06 00 a0 e1                                      mov r0, r6
005364a0  00 30 96 e5                                      ldr r3, [r6]
005364a4  0f e0 a0 e1                                      mov lr, pc
005364a8  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005364ac  00 70 a0 e1                                      mov r7, r0
005364b0  00 60 90 e5                                      ldr r6, [r0]
005364b4  06 00 00 ea                                      b #0x5364d4
005364b8  08 20 96 e5                                      ldr r2, [r6, #8]
005364bc  00 30 95 e5                                      ldr r3, [r5]
005364c0  0f e0 a0 e1                                      mov lr, pc
005364c4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
005364c8  00 00 50 e3                                      cmp r0, #0
005364cc  06 00 00 1a                                      bne #0x5364ec
005364d0  00 60 96 e5                                      ldr r6, [r6]
005364d4  06 00 57 e1                                      cmp r7, r6
005364d8  05 00 a0 e1                                      mov r0, r5
005364dc  04 10 a0 e1                                      mov r1, r4
005364e0  f4 ff ff 1a                                      bne #0x5364b8
005364e4  00 60 a0 e3                                      mov r6, #0
005364e8  e4 ff ff ea                                      b #0x536480
005364ec  00 60 a0 e1                                      mov r6, r0
005364f0  e2 ff ff ea                                      b #0x536480

; FUNCTION 0x005364f4, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment11addComboBoxERKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addComboBox(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005364f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005364f8  08 e0 91 e5                                      ldr lr, [r1, #8]
005364fc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00536500  00 70 91 e5                                      ldr r7, [r1]
00536504  04 40 91 e5                                      ldr r4, [r1, #4]
00536508  1c d0 4d e2                                      sub sp, sp, #0x1c
0053650c  00 60 a0 e1                                      mov r6, r0
00536510  00 10 a0 e3                                      mov r1, #0
00536514  19 0e a0 e3                                      mov r0, #0x190
00536518  02 50 a0 e1                                      mov r5, r2
0053651c  10 e0 8d e5                                      str lr, [sp, #0x10]
00536520  08 70 8d e5                                      str r7, [sp, #8]
00536524  0c 40 8d e5                                      str r4, [sp, #0xc]
00536528  14 c0 8d e5                                      str ip, [sp, #0x14]
0053652c  03 70 a0 e1                                      mov r7, r3
00536530  1d f7 ff eb                                      bl #0x5341ac
00536534  00 00 55 e3                                      cmp r5, #0
00536538  08 50 86 02                                      addeq r5, r6, #8
0053653c  00 40 a0 e1                                      mov r4, r0
00536540  08 c0 8d e2                                      add ip, sp, #8
00536544  06 10 a0 e1                                      mov r1, r6
00536548  05 20 a0 e1                                      mov r2, r5
0053654c  07 30 a0 e1                                      mov r3, r7
00536550  00 c0 8d e5                                      str ip, [sp]
00536554  79 d4 05 eb                                      bl #0x6ab740
00536558  00 30 94 e5                                      ldr r3, [r4]
0053655c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536560  00 00 84 e0                                      add r0, r4, r0
00536564  06 9c f7 eb                                      bl #0x31d584
00536568  04 00 a0 e1                                      mov r0, r4
0053656c  1c d0 8d e2                                      add sp, sp, #0x1c
00536570  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00536574, declared_size=180, range_size=180, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addInOutFaderEPKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addInOutFader(glitch::core::rect<int> const*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536574  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00536578  00 00 51 e3                                      cmp r1, #0
0053657c  1c d0 4d e2                                      sub sp, sp, #0x1c
00536580  00 50 a0 e1                                      mov r5, r0
00536584  02 60 a0 e1                                      mov r6, r2
00536588  03 70 a0 e1                                      mov r7, r3
0053658c  19 00 00 0a                                      beq #0x5365f8
00536590  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00536594  08 40 91 e8                                      ldm r1, {r3, lr}
00536598  08 c0 91 e5                                      ldr ip, [r1, #8]
0053659c  00 00 56 e3                                      cmp r6, #0
005365a0  00 10 a0 e3                                      mov r1, #0
005365a4  06 0d a0 e3                                      mov r0, #0x180
005365a8  08 60 85 02                                      addeq r6, r5, #8
005365ac  0c e0 8d e5                                      str lr, [sp, #0xc]
005365b0  08 30 8d e5                                      str r3, [sp, #8]
005365b4  10 c0 8d e5                                      str ip, [sp, #0x10]
005365b8  14 20 8d e5                                      str r2, [sp, #0x14]
005365bc  fa f6 ff eb                                      bl #0x5341ac
005365c0  08 c0 8d e2                                      add ip, sp, #8
005365c4  00 40 a0 e1                                      mov r4, r0
005365c8  05 10 a0 e1                                      mov r1, r5
005365cc  06 20 a0 e1                                      mov r2, r6
005365d0  07 30 a0 e1                                      mov r3, r7
005365d4  00 c0 8d e5                                      str ip, [sp]
005365d8  33 2c 00 eb                                      bl #0x5416ac
005365dc  00 30 94 e5                                      ldr r3, [r4]
005365e0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005365e4  00 00 84 e0                                      add r0, r4, r0
005365e8  e5 9b f7 eb                                      bl #0x31d584
005365ec  04 00 a0 e1                                      mov r0, r4
005365f0  1c d0 8d e2                                      add sp, sp, #0x1c
005365f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005365f8  a8 31 90 e5                                      ldr r3, [r0, #0x1a8]
005365fc  00 00 53 e3                                      cmp r3, #0
00536600  cc 20 93 15                                      ldrne r2, [r3, #0xcc]
00536604  01 30 a0 11                                      movne r3, r1
00536608  03 e0 a0 01                                      moveq lr, r3
0053660c  04 10 12 15                                      ldrne r1, [r2, #-4]
00536610  03 c0 a0 01                                      moveq ip, r3
00536614  03 20 a0 01                                      moveq r2, r3
00536618  03 e0 a0 11                                      movne lr, r3
0053661c  10 20 91 15                                      ldrne r2, [r1, #0x10]
00536620  0c c0 91 15                                      ldrne ip, [r1, #0xc]
00536624  dc ff ff ea                                      b #0x53659c

; FUNCTION 0x00536628, declared_size=116, range_size=116, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment10addToolBarEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addToolBar(glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536628  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0053662c  00 30 a0 e3                                      mov r3, #0
00536630  00 50 51 e2                                      subs r5, r1, #0
00536634  1c d0 4d e2                                      sub sp, sp, #0x1c
00536638  08 50 80 02                                      addeq r5, r0, #8
0053663c  00 60 a0 e1                                      mov r6, r0
00536640  02 70 a0 e1                                      mov r7, r2
00536644  03 10 a0 e1                                      mov r1, r3
00536648  0a 20 a0 e3                                      mov r2, #0xa
0053664c  5a 0f a0 e3                                      mov r0, #0x168
00536650  14 20 8d e5                                      str r2, [sp, #0x14]
00536654  08 30 8d e5                                      str r3, [sp, #8]
00536658  0c 30 8d e5                                      str r3, [sp, #0xc]
0053665c  10 20 8d e5                                      str r2, [sp, #0x10]
00536660  d1 f6 ff eb                                      bl #0x5341ac
00536664  08 c0 8d e2                                      add ip, sp, #8
00536668  00 40 a0 e1                                      mov r4, r0
0053666c  06 10 a0 e1                                      mov r1, r6
00536670  05 20 a0 e1                                      mov r2, r5
00536674  07 30 a0 e1                                      mov r3, r7
00536678  00 c0 8d e5                                      str ip, [sp]
0053667c  73 93 00 eb                                      bl #0x55b450
00536680  00 30 94 e5                                      ldr r3, [r4]
00536684  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536688  00 00 84 e0                                      add r0, r4, r0
0053668c  bc 9b f7 eb                                      bl #0x31d584
00536690  04 00 a0 e1                                      mov r0, r4
00536694  1c d0 8d e2                                      add sp, sp, #0x1c
00536698  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0053669c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7addMenuEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addMenu(glitch::gui::IGUIElement*, int)
; decoder-mode: arm
0053669c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005366a0  00 50 51 e2                                      subs r5, r1, #0
005366a4  08 50 80 02                                      addeq r5, r0, #8
005366a8  44 10 95 e5                                      ldr r1, [r5, #0x44]
005366ac  40 c0 95 e5                                      ldr ip, [r5, #0x40]
005366b0  00 60 a0 e1                                      mov r6, r0
005366b4  02 70 a0 e1                                      mov r7, r2
005366b8  38 00 95 e5                                      ldr r0, [r5, #0x38]
005366bc  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
005366c0  00 30 a0 e3                                      mov r3, #0
005366c4  1c d0 4d e2                                      sub sp, sp, #0x1c
005366c8  0c c0 60 e0                                      rsb ip, r0, ip
005366cc  01 20 62 e0                                      rsb r2, r2, r1
005366d0  63 0f a0 e3                                      mov r0, #0x18c
005366d4  03 10 a0 e1                                      mov r1, r3
005366d8  10 c0 8d e5                                      str ip, [sp, #0x10]
005366dc  14 20 8d e5                                      str r2, [sp, #0x14]
005366e0  08 30 8d e5                                      str r3, [sp, #8]
005366e4  0c 30 8d e5                                      str r3, [sp, #0xc]
005366e8  af f6 ff eb                                      bl #0x5341ac
005366ec  08 c0 8d e2                                      add ip, sp, #8
005366f0  00 40 a0 e1                                      mov r4, r0
005366f4  06 10 a0 e1                                      mov r1, r6
005366f8  05 20 a0 e1                                      mov r2, r5
005366fc  07 30 a0 e1                                      mov r3, r7
00536700  00 c0 8d e5                                      str ip, [sp]
00536704  87 3c 00 eb                                      bl #0x545928
00536708  00 30 94 e5                                      ldr r3, [r4]
0053670c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536710  00 00 84 e0                                      add r0, r4, r0
00536714  9a 9b f7 eb                                      bl #0x31d584
00536718  04 00 a0 e1                                      mov r0, r4
0053671c  1c d0 8d e2                                      add sp, sp, #0x1c
00536720  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00536724, declared_size=136, range_size=136, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment14addContextMenuERKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addContextMenu(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536724  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00536728  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0053672c  00 70 91 e5                                      ldr r7, [r1]
00536730  10 40 91 e9                                      ldmib r1, {r4, lr}
00536734  24 d0 4d e2                                      sub sp, sp, #0x24
00536738  00 60 a0 e1                                      mov r6, r0
0053673c  00 10 a0 e3                                      mov r1, #0
00536740  63 0f a0 e3                                      mov r0, #0x18c
00536744  02 50 a0 e1                                      mov r5, r2
00536748  10 70 8d e5                                      str r7, [sp, #0x10]
0053674c  14 40 8d e5                                      str r4, [sp, #0x14]
00536750  18 e0 8d e5                                      str lr, [sp, #0x18]
00536754  1c c0 8d e5                                      str ip, [sp, #0x1c]
00536758  03 70 a0 e1                                      mov r7, r3
0053675c  92 f6 ff eb                                      bl #0x5341ac
00536760  00 00 55 e3                                      cmp r5, #0
00536764  08 50 86 02                                      addeq r5, r6, #8
00536768  00 40 a0 e1                                      mov r4, r0
0053676c  01 c0 a0 e3                                      mov ip, #1
00536770  10 e0 8d e2                                      add lr, sp, #0x10
00536774  06 10 a0 e1                                      mov r1, r6
00536778  05 20 a0 e1                                      mov r2, r5
0053677c  07 30 a0 e1                                      mov r3, r7
00536780  00 e0 8d e5                                      str lr, [sp]
00536784  08 c0 8d e5                                      str ip, [sp, #8]
00536788  04 c0 8d e5                                      str ip, [sp, #4]
0053678c  09 de 05 eb                                      bl #0x6adfb8
00536790  00 30 94 e5                                      ldr r3, [r4]
00536794  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536798  00 00 84 e0                                      add r0, r4, r0
0053679c  78 9b f7 eb                                      bl #0x31d584
005367a0  04 00 a0 e1                                      mov r0, r4
005367a4  24 d0 8d e2                                      add sp, sp, #0x24
005367a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005367ac, declared_size=100, range_size=100, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment6addTabERKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addTab(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005367ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005367b0  00 80 a0 e1                                      mov r8, r0
005367b4  08 d0 4d e2                                      sub sp, sp, #8
005367b8  01 70 a0 e1                                      mov r7, r1
005367bc  5d 0f a0 e3                                      mov r0, #0x174
005367c0  00 10 a0 e3                                      mov r1, #0
005367c4  02 50 a0 e1                                      mov r5, r2
005367c8  03 60 a0 e1                                      mov r6, r3
005367cc  76 f6 ff eb                                      bl #0x5341ac
005367d0  00 00 55 e3                                      cmp r5, #0
005367d4  08 50 88 02                                      addeq r5, r8, #8
005367d8  00 40 a0 e1                                      mov r4, r0
005367dc  08 20 a0 e1                                      mov r2, r8
005367e0  05 30 a0 e1                                      mov r3, r5
005367e4  00 10 e0 e3                                      mvn r1, #0
005367e8  00 70 8d e5                                      str r7, [sp]
005367ec  04 60 8d e5                                      str r6, [sp, #4]
005367f0  16 74 00 eb                                      bl #0x553850
005367f4  00 30 94 e5                                      ldr r3, [r4]
005367f8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005367fc  00 00 84 e0                                      add r0, r4, r0
00536800  5f 9b f7 eb                                      bl #0x31d584
00536804  04 00 a0 e1                                      mov r0, r4
00536808  08 d0 8d e2                                      add sp, sp, #8
0053680c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00536810, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addTabControlERKNS_4core4rectIiEEPNS0_11IGUIElementEbbi
; demangled: glitch::gui::CGUIEnvironment::addTabControl(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, bool, bool, int)
; decoder-mode: arm
00536810  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00536814  00 a0 a0 e1                                      mov sl, r0
00536818  14 d0 4d e2                                      sub sp, sp, #0x14
0053681c  01 70 a0 e1                                      mov r7, r1
00536820  65 0f a0 e3                                      mov r0, #0x194
00536824  00 10 a0 e3                                      mov r1, #0
00536828  02 80 a0 e1                                      mov r8, r2
0053682c  03 60 a0 e1                                      mov r6, r3
00536830  30 50 dd e5                                      ldrb r5, [sp, #0x30]
00536834  5c f6 ff eb                                      bl #0x5341ac
00536838  00 00 58 e3                                      cmp r8, #0
0053683c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00536840  08 80 8a 02                                      addeq r8, sl, #8
00536844  00 40 a0 e1                                      mov r4, r0
00536848  0a 10 a0 e1                                      mov r1, sl
0053684c  08 20 a0 e1                                      mov r2, r8
00536850  07 30 a0 e1                                      mov r3, r7
00536854  08 c0 8d e5                                      str ip, [sp, #8]
00536858  00 60 8d e5                                      str r6, [sp]
0053685c  04 50 8d e5                                      str r5, [sp, #4]
00536860  b7 71 00 eb                                      bl #0x552f44
00536864  00 30 94 e5                                      ldr r3, [r4]
00536868  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053686c  00 00 84 e0                                      add r0, r4, r0
00536870  43 9b f7 eb                                      bl #0x31d584
00536874  04 00 a0 e1                                      mov r0, r4
00536878  14 d0 8d e2                                      add sp, sp, #0x14
0053687c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00536880, declared_size=104, range_size=104, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment10addSpinBoxEPKwRKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addSpinBox(wchar_t const*, glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536880  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536884  00 70 a0 e1                                      mov r7, r0
00536888  08 d0 4d e2                                      sub sp, sp, #8
0053688c  01 80 a0 e1                                      mov r8, r1
00536890  72 0f a0 e3                                      mov r0, #0x1c8
00536894  00 10 a0 e3                                      mov r1, #0
00536898  03 60 a0 e1                                      mov r6, r3
0053689c  02 50 a0 e1                                      mov r5, r2
005368a0  41 f6 ff eb                                      bl #0x5341ac
005368a4  00 00 56 e3                                      cmp r6, #0
005368a8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005368ac  08 60 87 02                                      addeq r6, r7, #8
005368b0  00 40 a0 e1                                      mov r4, r0
005368b4  08 10 a0 e1                                      mov r1, r8
005368b8  07 20 a0 e1                                      mov r2, r7
005368bc  06 30 a0 e1                                      mov r3, r6
005368c0  00 c0 8d e5                                      str ip, [sp]
005368c4  04 50 8d e5                                      str r5, [sp, #4]
005368c8  77 60 00 eb                                      bl #0x54eaac
005368cc  00 30 94 e5                                      ldr r3, [r4]
005368d0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005368d4  00 00 84 e0                                      add r0, r4, r0
005368d8  29 9b f7 eb                                      bl #0x31d584
005368dc  04 00 a0 e1                                      mov r0, r4
005368e0  08 d0 8d e2                                      add sp, sp, #8
005368e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005368e8, declared_size=108, range_size=108, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment10addEditBoxEPKwRKNS_4core4rectIiEEbPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addEditBox(wchar_t const*, glitch::core::rect<int> const&, bool, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005368e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005368ec  00 60 a0 e1                                      mov r6, r0
005368f0  14 d0 4d e2                                      sub sp, sp, #0x14
005368f4  01 70 a0 e1                                      mov r7, r1
005368f8  77 0f a0 e3                                      mov r0, #0x1dc
005368fc  00 10 a0 e3                                      mov r1, #0
00536900  30 50 9d e5                                      ldr r5, [sp, #0x30]
00536904  02 80 a0 e1                                      mov r8, r2
00536908  03 a0 a0 e1                                      mov sl, r3
0053690c  26 f6 ff eb                                      bl #0x5341ac
00536910  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00536914  00 00 55 e3                                      cmp r5, #0
00536918  00 40 a0 e1                                      mov r4, r0
0053691c  08 50 86 02                                      addeq r5, r6, #8
00536920  07 10 a0 e1                                      mov r1, r7
00536924  0a 20 a0 e1                                      mov r2, sl
00536928  06 30 a0 e1                                      mov r3, r6
0053692c  20 10 8d e8                                      stm sp, {r5, ip}
00536930  08 80 8d e5                                      str r8, [sp, #8]
00536934  33 ef 05 eb                                      bl #0x6b2608
00536938  00 30 94 e5                                      ldr r3, [r4]
0053693c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536940  00 00 84 e0                                      add r0, r4, r0
00536944  0e 9b f7 eb                                      bl #0x31d584
00536948  04 00 a0 e1                                      mov r0, r4
0053694c  14 d0 8d e2                                      add sp, sp, #0x14
00536950  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00536954, declared_size=140, range_size=140, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addStaticTextEPKwRKNS_4core4rectIiEEbbPNS0_11IGUIElementEib
; demangled: glitch::gui::CGUIEnvironment::addStaticText(wchar_t const*, glitch::core::rect<int> const&, bool, bool, glitch::gui::IGUIElement*, int, bool)
; decoder-mode: arm
00536954  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00536958  00 60 a0 e1                                      mov r6, r0
0053695c  14 d0 4d e2                                      sub sp, sp, #0x14
00536960  01 70 a0 e1                                      mov r7, r1
00536964  19 0e a0 e3                                      mov r0, #0x190
00536968  00 10 a0 e3                                      mov r1, #0
0053696c  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00536970  02 80 a0 e1                                      mov r8, r2
00536974  03 b0 a0 e1                                      mov fp, r3
00536978  38 90 dd e5                                      ldrb sb, [sp, #0x38]
0053697c  44 a0 dd e5                                      ldrb sl, [sp, #0x44]
00536980  09 f6 ff eb                                      bl #0x5341ac
00536984  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00536988  00 00 55 e3                                      cmp r5, #0
0053698c  00 40 a0 e1                                      mov r4, r0
00536990  08 50 86 02                                      addeq r5, r6, #8
00536994  0b 20 a0 e1                                      mov r2, fp
00536998  06 30 a0 e1                                      mov r3, r6
0053699c  07 10 a0 e1                                      mov r1, r7
005369a0  20 10 8d e8                                      stm sp, {r5, ip}
005369a4  08 80 8d e5                                      str r8, [sp, #8]
005369a8  0c a0 8d e5                                      str sl, [sp, #0xc]
005369ac  1a 67 00 eb                                      bl #0x55061c
005369b0  09 10 a0 e1                                      mov r1, sb
005369b4  04 00 a0 e1                                      mov r0, r4
005369b8  00 30 94 e5                                      ldr r3, [r4]
005369bc  0f e0 a0 e1                                      mov lr, pc
005369c0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
005369c4  00 30 94 e5                                      ldr r3, [r4]
005369c8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005369cc  00 00 84 e0                                      add r0, r4, r0
005369d0  eb 9a f7 eb                                      bl #0x31d584
005369d4  04 00 a0 e1                                      mov r0, r4
005369d8  14 d0 8d e2                                      add sp, sp, #0x14
005369dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005369e0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment14addModalScreenEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::addModalScreen(glitch::gui::IGUIElement*)
; decoder-mode: arm
005369e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005369e4  00 50 51 e2                                      subs r5, r1, #0
005369e8  08 50 80 02                                      addeq r5, r0, #8
005369ec  00 60 a0 e1                                      mov r6, r0
005369f0  00 10 a0 e3                                      mov r1, #0
005369f4  5a 0f a0 e3                                      mov r0, #0x168
005369f8  eb f5 ff eb                                      bl #0x5341ac
005369fc  06 10 a0 e1                                      mov r1, r6
00536a00  00 40 a0 e1                                      mov r4, r0
00536a04  05 20 a0 e1                                      mov r2, r5
00536a08  00 30 e0 e3                                      mvn r3, #0
00536a0c  15 47 00 eb                                      bl #0x548668
00536a10  00 30 94 e5                                      ldr r3, [r4]
00536a14  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536a18  00 00 84 e0                                      add r0, r4, r0
00536a1c  d8 9a f7 eb                                      bl #0x31d584
00536a20  04 00 a0 e1                                      mov r0, r4
00536a24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00536a28, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment20addColorSelectDialogEPKwbPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addColorSelectDialog(wchar_t const*, bool, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536a28  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00536a2c  00 50 53 e2                                      subs r5, r3, #0
00536a30  08 50 80 02                                      addeq r5, r0, #8
00536a34  00 00 52 e3                                      cmp r2, #0
00536a38  0c d0 4d e2                                      sub sp, sp, #0xc
00536a3c  00 60 a0 e1                                      mov r6, r0
00536a40  01 70 a0 e1                                      mov r7, r1
00536a44  0b 00 00 0a                                      beq #0x536a78
00536a48  00 10 a0 e3                                      mov r1, #0
00536a4c  5a 0f a0 e3                                      mov r0, #0x168
00536a50  d5 f5 ff eb                                      bl #0x5341ac
00536a54  05 20 a0 e1                                      mov r2, r5
00536a58  00 30 e0 e3                                      mvn r3, #0
00536a5c  00 50 a0 e1                                      mov r5, r0
00536a60  06 10 a0 e1                                      mov r1, r6
00536a64  ff 46 00 eb                                      bl #0x548668
00536a68  00 30 95 e5                                      ldr r3, [r5]
00536a6c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536a70  00 00 85 e0                                      add r0, r5, r0
00536a74  c2 9a f7 eb                                      bl #0x31d584
00536a78  00 10 a0 e3                                      mov r1, #0
00536a7c  19 0e a0 e3                                      mov r0, #0x190
00536a80  c9 f5 ff eb                                      bl #0x5341ac
00536a84  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00536a88  00 40 a0 e1                                      mov r4, r0
00536a8c  07 10 a0 e1                                      mov r1, r7
00536a90  06 20 a0 e1                                      mov r2, r6
00536a94  05 30 a0 e1                                      mov r3, r5
00536a98  00 c0 8d e5                                      str ip, [sp]
00536a9c  46 c9 05 eb                                      bl #0x6a8fbc
00536aa0  00 30 94 e5                                      ldr r3, [r4]
00536aa4  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536aa8  00 00 84 e0                                      add r0, r4, r0
00536aac  b4 9a f7 eb                                      bl #0x31d584
00536ab0  04 00 a0 e1                                      mov r0, r4
00536ab4  0c d0 8d e2                                      add sp, sp, #0xc
00536ab8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00536abc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment17addFileOpenDialogEPKwbPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addFileOpenDialog(wchar_t const*, bool, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00536abc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00536ac0  00 50 53 e2                                      subs r5, r3, #0
00536ac4  08 50 80 02                                      addeq r5, r0, #8
00536ac8  00 00 52 e3                                      cmp r2, #0
00536acc  0c d0 4d e2                                      sub sp, sp, #0xc
00536ad0  00 60 a0 e1                                      mov r6, r0
00536ad4  01 70 a0 e1                                      mov r7, r1
00536ad8  0b 00 00 0a                                      beq #0x536b0c
00536adc  00 10 a0 e3                                      mov r1, #0
00536ae0  5a 0f a0 e3                                      mov r0, #0x168
00536ae4  b0 f5 ff eb                                      bl #0x5341ac
00536ae8  05 20 a0 e1                                      mov r2, r5
00536aec  00 30 e0 e3                                      mvn r3, #0
00536af0  00 50 a0 e1                                      mov r5, r0
00536af4  06 10 a0 e1                                      mov r1, r6
00536af8  da 46 00 eb                                      bl #0x548668
00536afc  00 30 95 e5                                      ldr r3, [r5]
00536b00  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536b04  00 00 85 e0                                      add r0, r5, r0
00536b08  9d 9a f7 eb                                      bl #0x31d584
00536b0c  00 10 a0 e3                                      mov r1, #0
00536b10  76 0f a0 e3                                      mov r0, #0x1d8
00536b14  a4 f5 ff eb                                      bl #0x5341ac
00536b18  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00536b1c  00 40 a0 e1                                      mov r4, r0
00536b20  07 10 a0 e1                                      mov r1, r7
00536b24  06 20 a0 e1                                      mov r2, r6
00536b28  05 30 a0 e1                                      mov r3, r5
00536b2c  00 c0 8d e5                                      str ip, [sp]
00536b30  d9 17 00 eb                                      bl #0x53ca9c
00536b34  00 30 94 e5                                      ldr r3, [r4]
00536b38  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536b3c  00 00 84 e0                                      add r0, r4, r0
00536b40  8f 9a f7 eb                                      bl #0x31d584
00536b44  04 00 a0 e1                                      mov r0, r4
00536b48  0c d0 8d e2                                      add sp, sp, #0xc
00536b4c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00536b50, declared_size=336, range_size=336, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment10addListBoxERKNS_4core4rectIiEEPNS0_11IGUIElementEib
; demangled: glitch::gui::CGUIEnvironment::addListBox(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, bool)
; decoder-mode: arm
00536b50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536b54  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00536b58  00 60 91 e5                                      ldr r6, [r1]
00536b5c  10 40 91 e9                                      ldmib r1, {r4, lr}
00536b60  20 d0 4d e2                                      sub sp, sp, #0x20
00536b64  00 50 a0 e1                                      mov r5, r0
00536b68  00 10 a0 e3                                      mov r1, #0
00536b6c  7a 0f a0 e3                                      mov r0, #0x1e8
00536b70  02 70 a0 e1                                      mov r7, r2
00536b74  10 60 8d e5                                      str r6, [sp, #0x10]
00536b78  14 40 8d e5                                      str r4, [sp, #0x14]
00536b7c  18 e0 8d e5                                      str lr, [sp, #0x18]
00536b80  1c c0 8d e5                                      str ip, [sp, #0x1c]
00536b84  03 80 a0 e1                                      mov r8, r3
00536b88  38 60 dd e5                                      ldrb r6, [sp, #0x38]
00536b8c  86 f5 ff eb                                      bl #0x5341ac
00536b90  00 00 57 e3                                      cmp r7, #0
00536b94  10 c0 8d e2                                      add ip, sp, #0x10
00536b98  08 70 85 02                                      addeq r7, r5, #8
00536b9c  00 c0 8d e5                                      str ip, [sp]
00536ba0  01 c0 a0 e3                                      mov ip, #1
00536ba4  08 30 a0 e1                                      mov r3, r8
00536ba8  04 c0 8d e5                                      str ip, [sp, #4]
00536bac  07 20 a0 e1                                      mov r2, r7
00536bb0  00 c0 a0 e3                                      mov ip, #0
00536bb4  05 10 a0 e1                                      mov r1, r5
00536bb8  00 40 a0 e1                                      mov r4, r0
00536bbc  08 60 8d e5                                      str r6, [sp, #8]
00536bc0  0c c0 8d e5                                      str ip, [sp, #0xc]
00536bc4  26 30 00 eb                                      bl #0x542c64
00536bc8  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
00536bcc  00 00 53 e3                                      cmp r3, #0
00536bd0  16 00 00 0a                                      beq #0x536c30
00536bd4  03 00 a0 e1                                      mov r0, r3
00536bd8  00 30 93 e5                                      ldr r3, [r3]
00536bdc  0f e0 a0 e1                                      mov lr, pc
00536be0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00536be4  00 00 50 e3                                      cmp r0, #0
00536be8  10 00 00 0a                                      beq #0x536c30
00536bec  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
00536bf0  00 20 94 e5                                      ldr r2, [r4]
00536bf4  03 00 a0 e1                                      mov r0, r3
00536bf8  00 30 93 e5                                      ldr r3, [r3]
00536bfc  94 50 92 e5                                      ldr r5, [r2, #0x94]
00536c00  0f e0 a0 e1                                      mov lr, pc
00536c04  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00536c08  00 10 a0 e1                                      mov r1, r0
00536c0c  04 00 a0 e1                                      mov r0, r4
00536c10  35 ff 2f e1                                      blx r5
00536c14  00 30 94 e5                                      ldr r3, [r4]
00536c18  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536c1c  00 00 84 e0                                      add r0, r4, r0
00536c20  57 9a f7 eb                                      bl #0x31d584
00536c24  04 00 a0 e1                                      mov r0, r4
00536c28  20 d0 8d e2                                      add sp, sp, #0x20
00536c2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00536c30  00 30 95 e5                                      ldr r3, [r5]
00536c34  05 00 a0 e1                                      mov r0, r5
00536c38  0f e0 a0 e1                                      mov lr, pc
00536c3c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00536c40  00 00 50 e3                                      cmp r0, #0
00536c44  f2 ff ff 0a                                      beq #0x536c14
00536c48  00 30 95 e5                                      ldr r3, [r5]
00536c4c  05 00 a0 e1                                      mov r0, r5
00536c50  0f e0 a0 e1                                      mov lr, pc
00536c54  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00536c58  00 30 90 e5                                      ldr r3, [r0]
00536c5c  0f e0 a0 e1                                      mov lr, pc
00536c60  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00536c64  00 00 50 e3                                      cmp r0, #0
00536c68  e9 ff ff 1a                                      bne #0x536c14
00536c6c  00 20 94 e5                                      ldr r2, [r4]
00536c70  00 30 95 e5                                      ldr r3, [r5]
00536c74  05 00 a0 e1                                      mov r0, r5
00536c78  94 50 92 e5                                      ldr r5, [r2, #0x94]
00536c7c  0f e0 a0 e1                                      mov lr, pc
00536c80  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00536c84  00 30 90 e5                                      ldr r3, [r0]
00536c88  0f e0 a0 e1                                      mov lr, pc
00536c8c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00536c90  00 10 a0 e1                                      mov r1, r0
00536c94  04 00 a0 e1                                      mov r0, r4
00536c98  35 ff 2f e1                                      blx r5
00536c9c  dc ff ff ea                                      b #0x536c14

; FUNCTION 0x00536ca0, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment11addCheckBoxEbRKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
; demangled: glitch::gui::CGUIEnvironment::addCheckBox(bool, glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, wchar_t const*)
; decoder-mode: arm
00536ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536ca4  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00536ca8  10 40 92 e8                                      ldm r2, {r4, lr}
00536cac  08 20 92 e5                                      ldr r2, [r2, #8]
00536cb0  18 d0 4d e2                                      sub sp, sp, #0x18
00536cb4  00 70 a0 e1                                      mov r7, r0
00536cb8  01 80 a0 e1                                      mov r8, r1
00536cbc  5b 0f a0 e3                                      mov r0, #0x16c
00536cc0  00 10 a0 e3                                      mov r1, #0
00536cc4  03 60 a0 e1                                      mov r6, r3
00536cc8  08 40 8d e5                                      str r4, [sp, #8]
00536ccc  0c e0 8d e5                                      str lr, [sp, #0xc]
00536cd0  10 20 8d e5                                      str r2, [sp, #0x10]
00536cd4  14 c0 8d e5                                      str ip, [sp, #0x14]
00536cd8  34 50 9d e5                                      ldr r5, [sp, #0x34]
00536cdc  32 f5 ff eb                                      bl #0x5341ac
00536ce0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00536ce4  00 00 56 e3                                      cmp r6, #0
00536ce8  08 60 87 02                                      addeq r6, r7, #8
00536cec  00 c0 8d e5                                      str ip, [sp]
00536cf0  08 10 a0 e1                                      mov r1, r8
00536cf4  08 c0 8d e2                                      add ip, sp, #8
00536cf8  07 20 a0 e1                                      mov r2, r7
00536cfc  06 30 a0 e1                                      mov r3, r6
00536d00  00 40 a0 e1                                      mov r4, r0
00536d04  04 c0 8d e5                                      str ip, [sp, #4]
00536d08  b1 c3 05 eb                                      bl #0x6a7bd4
00536d0c  00 00 55 e3                                      cmp r5, #0
00536d10  04 00 00 0a                                      beq #0x536d28
00536d14  05 10 a0 e1                                      mov r1, r5
00536d18  00 30 94 e5                                      ldr r3, [r4]
00536d1c  04 00 a0 e1                                      mov r0, r4
00536d20  0f e0 a0 e1                                      mov lr, pc
00536d24  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00536d28  00 30 94 e5                                      ldr r3, [r4]
00536d2c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536d30  00 00 84 e0                                      add r0, r4, r0
00536d34  12 9a f7 eb                                      bl #0x31d584
00536d38  04 00 a0 e1                                      mov r0, r4
00536d3c  18 d0 8d e2                                      add sp, sp, #0x18
00536d40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00536d44, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addMeshViewerERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
; demangled: glitch::gui::CGUIEnvironment::addMeshViewer(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, wchar_t const*)
; decoder-mode: arm
00536d44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536d48  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00536d4c  00 50 91 e5                                      ldr r5, [r1]
00536d50  10 40 91 e9                                      ldmib r1, {r4, lr}
00536d54  18 d0 4d e2                                      sub sp, sp, #0x18
00536d58  00 70 a0 e1                                      mov r7, r0
00536d5c  00 10 a0 e3                                      mov r1, #0
00536d60  5b 0f a0 e3                                      mov r0, #0x16c
00536d64  02 60 a0 e1                                      mov r6, r2
00536d68  08 50 8d e5                                      str r5, [sp, #8]
00536d6c  0c 40 8d e5                                      str r4, [sp, #0xc]
00536d70  10 e0 8d e5                                      str lr, [sp, #0x10]
00536d74  14 c0 8d e5                                      str ip, [sp, #0x14]
00536d78  03 80 a0 e1                                      mov r8, r3
00536d7c  30 50 9d e5                                      ldr r5, [sp, #0x30]
00536d80  09 f5 ff eb                                      bl #0x5341ac
00536d84  00 00 56 e3                                      cmp r6, #0
00536d88  08 60 87 02                                      addeq r6, r7, #8
00536d8c  08 c0 8d e2                                      add ip, sp, #8
00536d90  07 10 a0 e1                                      mov r1, r7
00536d94  06 20 a0 e1                                      mov r2, r6
00536d98  08 30 a0 e1                                      mov r3, r8
00536d9c  00 40 a0 e1                                      mov r4, r0
00536da0  00 c0 8d e5                                      str ip, [sp]
00536da4  29 3e 00 eb                                      bl #0x546650
00536da8  00 00 55 e3                                      cmp r5, #0
00536dac  04 00 00 0a                                      beq #0x536dc4
00536db0  05 10 a0 e1                                      mov r1, r5
00536db4  00 30 94 e5                                      ldr r3, [r4]
00536db8  04 00 a0 e1                                      mov r0, r4
00536dbc  0f e0 a0 e1                                      mov lr, pc
00536dc0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00536dc4  00 30 94 e5                                      ldr r3, [r4]
00536dc8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536dcc  00 00 84 e0                                      add r0, r4, r0
00536dd0  eb 99 f7 eb                                      bl #0x31d584
00536dd4  04 00 a0 e1                                      mov r0, r4
00536dd8  18 d0 8d e2                                      add sp, sp, #0x18
00536ddc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00536de0, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment8addImageERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
; demangled: glitch::gui::CGUIEnvironment::addImage(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, wchar_t const*)
; decoder-mode: arm
00536de0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536de4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00536de8  00 50 91 e5                                      ldr r5, [r1]
00536dec  10 40 91 e9                                      ldmib r1, {r4, lr}
00536df0  18 d0 4d e2                                      sub sp, sp, #0x18
00536df4  00 70 a0 e1                                      mov r7, r0
00536df8  00 10 a0 e3                                      mov r1, #0
00536dfc  17 0e a0 e3                                      mov r0, #0x170
00536e00  02 60 a0 e1                                      mov r6, r2
00536e04  08 50 8d e5                                      str r5, [sp, #8]
00536e08  0c 40 8d e5                                      str r4, [sp, #0xc]
00536e0c  10 e0 8d e5                                      str lr, [sp, #0x10]
00536e10  14 c0 8d e5                                      str ip, [sp, #0x14]
00536e14  03 80 a0 e1                                      mov r8, r3
00536e18  30 50 9d e5                                      ldr r5, [sp, #0x30]
00536e1c  e2 f4 ff eb                                      bl #0x5341ac
00536e20  00 00 56 e3                                      cmp r6, #0
00536e24  08 60 87 02                                      addeq r6, r7, #8
00536e28  08 c0 8d e2                                      add ip, sp, #8
00536e2c  07 10 a0 e1                                      mov r1, r7
00536e30  06 20 a0 e1                                      mov r2, r6
00536e34  08 30 a0 e1                                      mov r3, r8
00536e38  00 40 a0 e1                                      mov r4, r0
00536e3c  00 c0 8d e5                                      str ip, [sp]
00536e40  a9 26 00 eb                                      bl #0x5408ec
00536e44  00 00 55 e3                                      cmp r5, #0
00536e48  04 00 00 0a                                      beq #0x536e60
00536e4c  05 10 a0 e1                                      mov r1, r5
00536e50  00 30 94 e5                                      ldr r3, [r4]
00536e54  04 00 a0 e1                                      mov r0, r4
00536e58  0f e0 a0 e1                                      mov lr, pc
00536e5c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00536e60  00 30 94 e5                                      ldr r3, [r4]
00536e64  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536e68  00 00 84 e0                                      add r0, r4, r0
00536e6c  c4 99 f7 eb                                      bl #0x31d584
00536e70  04 00 a0 e1                                      mov r0, r4
00536e74  18 d0 8d e2                                      add sp, sp, #0x18
00536e78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00536e7c, declared_size=252, range_size=252, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment8addImageERKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10position2dIiEEbPNS0_11IGUIElementEiPKw
; demangled: glitch::gui::CGUIEnvironment::addImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int>, bool, glitch::gui::IGUIElement*, int, wchar_t const*)
; decoder-mode: arm
00536e7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00536e80  01 50 a0 e1                                      mov r5, r1
00536e84  00 10 91 e5                                      ldr r1, [r1]
00536e88  03 70 a0 e1                                      mov r7, r3
00536e8c  04 30 92 e5                                      ldr r3, [r2, #4]
00536e90  00 00 51 e3                                      cmp r1, #0
00536e94  20 e0 91 15                                      ldrne lr, [r1, #0x20]
00536e98  24 c0 91 15                                      ldrne ip, [r1, #0x24]
00536e9c  00 20 92 e5                                      ldr r2, [r2]
00536ea0  01 e0 a0 01                                      moveq lr, r1
00536ea4  0e c0 a0 01                                      moveq ip, lr
00536ea8  1c d0 4d e2                                      sub sp, sp, #0x1c
00536eac  03 c0 8c e0                                      add ip, ip, r3
00536eb0  02 e0 8e e0                                      add lr, lr, r2
00536eb4  00 60 a0 e1                                      mov r6, r0
00536eb8  00 10 a0 e3                                      mov r1, #0
00536ebc  17 0e a0 e3                                      mov r0, #0x170
00536ec0  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00536ec4  40 80 9d e5                                      ldr r8, [sp, #0x40]
00536ec8  10 e0 8d e5                                      str lr, [sp, #0x10]
00536ecc  14 c0 8d e5                                      str ip, [sp, #0x14]
00536ed0  08 20 8d e5                                      str r2, [sp, #8]
00536ed4  0c 30 8d e5                                      str r3, [sp, #0xc]
00536ed8  b3 f4 ff eb                                      bl #0x5341ac
00536edc  00 00 5a e3                                      cmp sl, #0
00536ee0  08 a0 86 02                                      addeq sl, r6, #8
00536ee4  08 c0 8d e2                                      add ip, sp, #8
00536ee8  06 10 a0 e1                                      mov r1, r6
00536eec  0a 20 a0 e1                                      mov r2, sl
00536ef0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00536ef4  00 40 a0 e1                                      mov r4, r0
00536ef8  00 c0 8d e5                                      str ip, [sp]
00536efc  7a 26 00 eb                                      bl #0x5408ec
00536f00  00 00 58 e3                                      cmp r8, #0
00536f04  04 00 00 0a                                      beq #0x536f1c
00536f08  08 10 a0 e1                                      mov r1, r8
00536f0c  00 30 94 e5                                      ldr r3, [r4]
00536f10  04 00 a0 e1                                      mov r0, r4
00536f14  0f e0 a0 e1                                      mov lr, pc
00536f18  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00536f1c  00 00 57 e3                                      cmp r7, #0
00536f20  0e 00 00 1a                                      bne #0x536f60
00536f24  00 30 95 e5                                      ldr r3, [r5]
00536f28  00 00 53 e3                                      cmp r3, #0
00536f2c  04 00 00 0a                                      beq #0x536f44
00536f30  05 10 a0 e1                                      mov r1, r5
00536f34  00 30 94 e5                                      ldr r3, [r4]
00536f38  04 00 a0 e1                                      mov r0, r4
00536f3c  0f e0 a0 e1                                      mov lr, pc
00536f40  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00536f44  00 30 94 e5                                      ldr r3, [r4]
00536f48  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536f4c  00 00 84 e0                                      add r0, r4, r0
00536f50  8b 99 f7 eb                                      bl #0x31d584
00536f54  04 00 a0 e1                                      mov r0, r4
00536f58  1c d0 8d e2                                      add sp, sp, #0x1c
00536f5c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00536f60  00 30 94 e5                                      ldr r3, [r4]
00536f64  04 00 a0 e1                                      mov r0, r4
00536f68  01 10 a0 e3                                      mov r1, #1
00536f6c  0f e0 a0 e1                                      mov lr, pc
00536f70  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00536f74  ea ff ff ea                                      b #0x536f24

; FUNCTION 0x00536f78, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment8addTableERKNS_4core4rectIiEEPNS0_11IGUIElementEib
; demangled: glitch::gui::CGUIEnvironment::addTable(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, bool)
; decoder-mode: arm
00536f78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536f7c  08 e0 91 e5                                      ldr lr, [r1, #8]
00536f80  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00536f84  00 50 91 e5                                      ldr r5, [r1]
00536f88  04 40 91 e5                                      ldr r4, [r1, #4]
00536f8c  20 d0 4d e2                                      sub sp, sp, #0x20
00536f90  00 70 a0 e1                                      mov r7, r0
00536f94  00 10 a0 e3                                      mov r1, #0
00536f98  07 0d a0 e3                                      mov r0, #0x1c0
00536f9c  02 60 a0 e1                                      mov r6, r2
00536fa0  18 e0 8d e5                                      str lr, [sp, #0x18]
00536fa4  10 50 8d e5                                      str r5, [sp, #0x10]
00536fa8  14 40 8d e5                                      str r4, [sp, #0x14]
00536fac  1c c0 8d e5                                      str ip, [sp, #0x1c]
00536fb0  03 80 a0 e1                                      mov r8, r3
00536fb4  38 50 dd e5                                      ldrb r5, [sp, #0x38]
00536fb8  7b f4 ff eb                                      bl #0x5341ac
00536fbc  00 00 56 e3                                      cmp r6, #0
00536fc0  10 c0 8d e2                                      add ip, sp, #0x10
00536fc4  08 60 87 02                                      addeq r6, r7, #8
00536fc8  00 c0 8d e5                                      str ip, [sp]
00536fcc  01 c0 a0 e3                                      mov ip, #1
00536fd0  00 40 a0 e1                                      mov r4, r0
00536fd4  07 10 a0 e1                                      mov r1, r7
00536fd8  06 20 a0 e1                                      mov r2, r6
00536fdc  08 30 a0 e1                                      mov r3, r8
00536fe0  04 c0 8d e5                                      str ip, [sp, #4]
00536fe4  00 c0 a0 e3                                      mov ip, #0
00536fe8  0c c0 8d e5                                      str ip, [sp, #0xc]
00536fec  08 50 8d e5                                      str r5, [sp, #8]
00536ff0  01 7d 00 eb                                      bl #0x5563fc
00536ff4  00 30 94 e5                                      ldr r3, [r4]
00536ff8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00536ffc  00 00 84 e0                                      add r0, r4, r0
00537000  5f 99 f7 eb                                      bl #0x31d584
00537004  04 00 a0 e1                                      mov r0, r4
00537008  20 d0 8d e2                                      add sp, sp, #0x20
0053700c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00537010, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment12addScrollBarEbRKNS_4core4rectIiEEPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addScrollBar(bool, glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
00537010  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00537014  04 e0 92 e5                                      ldr lr, [r2, #4]
00537018  0c c0 92 e5                                      ldr ip, [r2, #0xc]
0053701c  00 40 92 e5                                      ldr r4, [r2]
00537020  08 20 92 e5                                      ldr r2, [r2, #8]
00537024  24 d0 4d e2                                      sub sp, sp, #0x24
00537028  00 60 a0 e1                                      mov r6, r0
0053702c  01 70 a0 e1                                      mov r7, r1
00537030  1a 0e a0 e3                                      mov r0, #0x1a0
00537034  00 10 a0 e3                                      mov r1, #0
00537038  03 50 a0 e1                                      mov r5, r3
0053703c  14 e0 8d e5                                      str lr, [sp, #0x14]
00537040  10 40 8d e5                                      str r4, [sp, #0x10]
00537044  18 20 8d e5                                      str r2, [sp, #0x18]
00537048  1c c0 8d e5                                      str ip, [sp, #0x1c]
0053704c  56 f4 ff eb                                      bl #0x5341ac
00537050  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00537054  00 00 55 e3                                      cmp r5, #0
00537058  08 50 86 02                                      addeq r5, r6, #8
0053705c  00 c0 8d e5                                      str ip, [sp]
00537060  10 c0 8d e2                                      add ip, sp, #0x10
00537064  00 40 a0 e1                                      mov r4, r0
00537068  07 10 a0 e1                                      mov r1, r7
0053706c  06 20 a0 e1                                      mov r2, r6
00537070  05 30 a0 e1                                      mov r3, r5
00537074  04 c0 8d e5                                      str ip, [sp, #4]
00537078  00 c0 a0 e3                                      mov ip, #0
0053707c  08 c0 8d e5                                      str ip, [sp, #8]
00537080  1d 4b 00 eb                                      bl #0x549cfc
00537084  00 30 94 e5                                      ldr r3, [r4]
00537088  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053708c  00 00 84 e0                                      add r0, r4, r0
00537090  3b 99 f7 eb                                      bl #0x31d584
00537094  04 00 a0 e1                                      mov r0, r4
00537098  24 d0 8d e2                                      add sp, sp, #0x24
0053709c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005370a0, declared_size=320, range_size=320, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13addMessageBoxEPKwS3_biPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addMessageBox(wchar_t const*, wchar_t const*, bool, int, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005370a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005370a4  bc c1 90 e5                                      ldr ip, [r0, #0x1bc]
005370a8  2c d0 4d e2                                      sub sp, sp, #0x2c
005370ac  00 50 a0 e1                                      mov r5, r0
005370b0  00 00 5c e3                                      cmp ip, #0
005370b4  01 80 a0 e1                                      mov r8, r1
005370b8  14 20 8d e5                                      str r2, [sp, #0x14]
005370bc  03 b0 a0 e1                                      mov fp, r3
005370c0  54 40 9d e5                                      ldr r4, [sp, #0x54]
005370c4  0c 60 a0 01                                      moveq r6, ip
005370c8  34 00 00 0a                                      beq #0x5371a0
005370cc  00 00 54 e3                                      cmp r4, #0
005370d0  08 40 80 02                                      addeq r4, r0, #8
005370d4  38 20 94 e5                                      ldr r2, [r4, #0x38]
005370d8  3c e0 94 e5                                      ldr lr, [r4, #0x3c]
005370dc  40 70 94 e5                                      ldr r7, [r4, #0x40]
005370e0  44 60 94 e5                                      ldr r6, [r4, #0x44]
005370e4  00 30 9c e5                                      ldr r3, [ip]
005370e8  0c 00 a0 e1                                      mov r0, ip
005370ec  04 10 a0 e3                                      mov r1, #4
005370f0  07 70 62 e0                                      rsb r7, r2, r7
005370f4  06 60 6e e0                                      rsb r6, lr, r6
005370f8  0f e0 a0 e1                                      mov lr, pc
005370fc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00537100  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
00537104  00 a0 a0 e1                                      mov sl, r0
00537108  05 10 a0 e3                                      mov r1, #5
0053710c  03 00 a0 e1                                      mov r0, r3
00537110  00 30 93 e5                                      ldr r3, [r3]
00537114  0f e0 a0 e1                                      mov lr, pc
00537118  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053711c  07 70 6a e0                                      rsb r7, sl, r7
00537120  06 60 60 e0                                      rsb r6, r0, r6
00537124  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
00537128  a6 6f 86 e0                                      add r6, r6, r6, lsr #31
0053712c  c7 70 a0 e1                                      asr r7, r7, #1
00537130  c6 60 a0 e1                                      asr r6, r6, #1
00537134  00 00 5b e3                                      cmp fp, #0
00537138  0a a0 87 e0                                      add sl, r7, sl
0053713c  00 90 86 e0                                      add sb, r6, r0
00537140  19 00 00 1a                                      bne #0x5371ac
00537144  00 10 a0 e3                                      mov r1, #0
00537148  1e 0e a0 e3                                      mov r0, #0x1e0
0053714c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00537150  18 70 8d e5                                      str r7, [sp, #0x18]
00537154  20 a0 8d e5                                      str sl, [sp, #0x20]
00537158  24 90 8d e5                                      str sb, [sp, #0x24]
0053715c  12 f4 ff eb                                      bl #0x5341ac
00537160  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00537164  00 60 a0 e1                                      mov r6, r0
00537168  14 30 9d e5                                      ldr r3, [sp, #0x14]
0053716c  00 c0 8d e5                                      str ip, [sp]
00537170  58 c0 9d e5                                      ldr ip, [sp, #0x58]
00537174  05 10 a0 e1                                      mov r1, r5
00537178  08 20 a0 e1                                      mov r2, r8
0053717c  08 c0 8d e5                                      str ip, [sp, #8]
00537180  18 c0 8d e2                                      add ip, sp, #0x18
00537184  04 40 8d e5                                      str r4, [sp, #4]
00537188  0c c0 8d e5                                      str ip, [sp, #0xc]
0053718c  b7 43 00 eb                                      bl #0x548070
00537190  00 30 96 e5                                      ldr r3, [r6]
00537194  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00537198  00 00 86 e0                                      add r0, r6, r0
0053719c  f8 98 f7 eb                                      bl #0x31d584
005371a0  06 00 a0 e1                                      mov r0, r6
005371a4  2c d0 8d e2                                      add sp, sp, #0x2c
005371a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005371ac  00 10 a0 e3                                      mov r1, #0
005371b0  5a 0f a0 e3                                      mov r0, #0x168
005371b4  fc f3 ff eb                                      bl #0x5341ac
005371b8  04 20 a0 e1                                      mov r2, r4
005371bc  05 10 a0 e1                                      mov r1, r5
005371c0  00 40 a0 e1                                      mov r4, r0
005371c4  00 30 e0 e3                                      mvn r3, #0
005371c8  26 45 00 eb                                      bl #0x548668
005371cc  00 30 94 e5                                      ldr r3, [r4]
005371d0  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005371d4  00 00 84 e0                                      add r0, r4, r0
005371d8  e9 98 f7 eb                                      bl #0x31d584
005371dc  d8 ff ff ea                                      b #0x537144

; FUNCTION 0x005371e0, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment9addWindowERKNS_4core4rectIiEEbPKwPNS0_11IGUIElementEi
; demangled: glitch::gui::CGUIEnvironment::addWindow(glitch::core::rect<int> const&, bool, wchar_t const*, glitch::gui::IGUIElement*, int)
; decoder-mode: arm
005371e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005371e4  1c d0 4d e2                                      sub sp, sp, #0x1c
005371e8  30 50 9d e5                                      ldr r5, [sp, #0x30]
005371ec  00 70 a0 e1                                      mov r7, r0
005371f0  01 40 a0 e1                                      mov r4, r1
005371f4  00 00 55 e3                                      cmp r5, #0
005371f8  08 50 80 02                                      addeq r5, r0, #8
005371fc  00 00 52 e3                                      cmp r2, #0
00537200  03 60 a0 e1                                      mov r6, r3
00537204  1f 00 00 1a                                      bne #0x537288
00537208  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0053720c  00 e0 94 e5                                      ldr lr, [r4]
00537210  04 c0 94 e5                                      ldr ip, [r4, #4]
00537214  08 20 94 e5                                      ldr r2, [r4, #8]
00537218  00 10 a0 e3                                      mov r1, #0
0053721c  5f 0f a0 e3                                      mov r0, #0x17c
00537220  08 e0 8d e5                                      str lr, [sp, #8]
00537224  0c c0 8d e5                                      str ip, [sp, #0xc]
00537228  10 20 8d e5                                      str r2, [sp, #0x10]
0053722c  14 30 8d e5                                      str r3, [sp, #0x14]
00537230  dd f3 ff eb                                      bl #0x5341ac
00537234  08 c0 8d e2                                      add ip, sp, #8
00537238  07 10 a0 e1                                      mov r1, r7
0053723c  05 20 a0 e1                                      mov r2, r5
00537240  34 30 9d e5                                      ldr r3, [sp, #0x34]
00537244  00 40 a0 e1                                      mov r4, r0
00537248  00 c0 8d e5                                      str ip, [sp]
0053724c  7b 9f 00 eb                                      bl #0x55f040
00537250  00 00 56 e3                                      cmp r6, #0
00537254  04 00 00 0a                                      beq #0x53726c
00537258  06 10 a0 e1                                      mov r1, r6
0053725c  00 30 94 e5                                      ldr r3, [r4]
00537260  04 00 a0 e1                                      mov r0, r4
00537264  0f e0 a0 e1                                      mov lr, pc
00537268  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0053726c  00 30 94 e5                                      ldr r3, [r4]
00537270  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00537274  00 00 84 e0                                      add r0, r4, r0
00537278  c1 98 f7 eb                                      bl #0x31d584
0053727c  04 00 a0 e1                                      mov r0, r4
00537280  1c d0 8d e2                                      add sp, sp, #0x1c
00537284  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00537288  00 10 a0 e3                                      mov r1, #0
0053728c  5a 0f a0 e3                                      mov r0, #0x168
00537290  c5 f3 ff eb                                      bl #0x5341ac
00537294  05 20 a0 e1                                      mov r2, r5
00537298  07 10 a0 e1                                      mov r1, r7
0053729c  00 50 a0 e1                                      mov r5, r0
005372a0  00 30 e0 e3                                      mvn r3, #0
005372a4  ef 44 00 eb                                      bl #0x548668
005372a8  00 30 95 e5                                      ldr r3, [r5]
005372ac  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005372b0  00 00 85 e0                                      add r0, r5, r0
005372b4  b2 98 f7 eb                                      bl #0x31d584
005372b8  d2 ff ff ea                                      b #0x537208

; FUNCTION 0x005372bc, declared_size=196, range_size=196, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment9addButtonERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKwSA_
; demangled: glitch::gui::CGUIEnvironment::addButton(glitch::core::rect<int> const&, glitch::gui::IGUIElement*, int, wchar_t const*, wchar_t const*)
; decoder-mode: arm
005372bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005372c0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005372c4  00 50 91 e5                                      ldr r5, [r1]
005372c8  10 40 91 e9                                      ldmib r1, {r4, lr}
005372cc  1c d0 4d e2                                      sub sp, sp, #0x1c
005372d0  00 80 a0 e1                                      mov r8, r0
005372d4  00 10 a0 e3                                      mov r1, #0
005372d8  79 0f a0 e3                                      mov r0, #0x1e4
005372dc  02 70 a0 e1                                      mov r7, r2
005372e0  08 50 8d e5                                      str r5, [sp, #8]
005372e4  0c 40 8d e5                                      str r4, [sp, #0xc]
005372e8  10 e0 8d e5                                      str lr, [sp, #0x10]
005372ec  14 c0 8d e5                                      str ip, [sp, #0x14]
005372f0  03 a0 a0 e1                                      mov sl, r3
005372f4  38 60 9d e5                                      ldr r6, [sp, #0x38]
005372f8  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
005372fc  aa f3 ff eb                                      bl #0x5341ac
00537300  00 00 57 e3                                      cmp r7, #0
00537304  08 70 88 02                                      addeq r7, r8, #8
00537308  08 c0 8d e2                                      add ip, sp, #8
0053730c  00 c0 8d e5                                      str ip, [sp]
00537310  08 10 a0 e1                                      mov r1, r8
00537314  00 c0 a0 e3                                      mov ip, #0
00537318  07 20 a0 e1                                      mov r2, r7
0053731c  0a 30 a0 e1                                      mov r3, sl
00537320  00 40 a0 e1                                      mov r4, r0
00537324  04 c0 8d e5                                      str ip, [sp, #4]
00537328  33 bc 05 eb                                      bl #0x6a63fc
0053732c  00 00 56 e3                                      cmp r6, #0
00537330  04 00 00 0a                                      beq #0x537348
00537334  06 10 a0 e1                                      mov r1, r6
00537338  00 30 94 e5                                      ldr r3, [r4]
0053733c  04 00 a0 e1                                      mov r0, r4
00537340  0f e0 a0 e1                                      mov lr, pc
00537344  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00537348  00 00 55 e3                                      cmp r5, #0
0053734c  04 00 00 0a                                      beq #0x537364
00537350  05 10 a0 e1                                      mov r1, r5
00537354  00 30 94 e5                                      ldr r3, [r4]
00537358  04 00 a0 e1                                      mov r0, r4
0053735c  0f e0 a0 e1                                      mov lr, pc
00537360  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00537364  00 30 94 e5                                      ldr r3, [r4]
00537368  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053736c  00 00 84 e0                                      add r0, r4, r0
00537370  83 98 f7 eb                                      bl #0x31d584
00537374  04 00 a0 e1                                      mov r0, r4
00537378  1c d0 8d e2                                      add sp, sp, #0x1c
0053737c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00537380, declared_size=192, range_size=192, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7loadGUIEPNS_2io9IReadFileEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::loadGUI(glitch::io::IReadFile*, glitch::gui::IGUIElement*)
; decoder-mode: arm
00537380  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00537384  00 70 51 e2                                      subs r7, r1, #0
00537388  00 50 a0 e1                                      mov r5, r0
0053738c  02 60 a0 e1                                      mov r6, r2
00537390  17 00 00 0a                                      beq #0x5373f4
00537394  c0 31 90 e5                                      ldr r3, [r0, #0x1c0]
00537398  03 00 a0 e1                                      mov r0, r3
0053739c  00 30 93 e5                                      ldr r3, [r3]
005373a0  0f e0 a0 e1                                      mov lr, pc
005373a4  50 f0 93 e5                                      ldr pc, [r3, #0x50]
005373a8  00 40 50 e2                                      subs r4, r0, #0
005373ac  03 00 00 1a                                      bne #0x5373c0
005373b0  15 00 00 ea                                      b #0x53740c
005373b4  00 30 95 e5                                      ldr r3, [r5]
005373b8  0f e0 a0 e1                                      mov lr, pc
005373bc  04 f1 93 e5                                      ldr pc, [r3, #0x104]
005373c0  00 30 94 e5                                      ldr r3, [r4]
005373c4  04 00 a0 e1                                      mov r0, r4
005373c8  0f e0 a0 e1                                      mov lr, pc
005373cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005373d0  00 00 50 e3                                      cmp r0, #0
005373d4  04 10 a0 e1                                      mov r1, r4
005373d8  05 00 a0 e1                                      mov r0, r5
005373dc  06 20 a0 e1                                      mov r2, r6
005373e0  f3 ff ff 1a                                      bne #0x5373b4
005373e4  04 00 a0 e1                                      mov r0, r4
005373e8  65 98 f7 eb                                      bl #0x31d584
005373ec  01 00 a0 e3                                      mov r0, #1
005373f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005373f4  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
005373f8  03 10 a0 e3                                      mov r1, #3
005373fc  00 00 8f e0                                      add r0, pc, r0
00537400  26 4e 03 eb                                      bl #0x60aca0
00537404  07 00 a0 e1                                      mov r0, r7
00537408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053740c  00 30 97 e5                                      ldr r3, [r7]
00537410  07 00 a0 e1                                      mov r0, r7
00537414  0f e0 a0 e1                                      mov lr, pc
00537418  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053741c  00 10 a0 e1                                      mov r1, r0
00537420  14 00 9f e5                                      ldr r0, [pc, #0x14]
00537424  03 20 a0 e3                                      mov r2, #3
00537428  00 00 8f e0                                      add r0, pc, r0
0053742c  2d 4e 03 eb                                      bl #0x60ace8
00537430  04 00 a0 e1                                      mov r0, r4
00537434  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00537438  6c 6a 3a 00 58 6a 3a 00                          .byte 0x6c, 0x6a, 0x3a, 0x00, 0x58, 0x6a, 0x3a, 0x00

; FUNCTION 0x00537440, declared_size=180, range_size=180, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment10createSkinENS0_14EGUI_SKIN_TYPEE
; demangled: glitch::gui::CGUIEnvironment::createSkin(glitch::gui::EGUI_SKIN_TYPE)
; decoder-mode: arm
00537440  70 40 2d e9                                      push {r4, r5, r6, lr}
00537444  00 50 a0 e1                                      mov r5, r0
00537448  01 60 a0 e1                                      mov r6, r1
0053744c  d2 0f a0 e3                                      mov r0, #0x348
00537450  00 10 a0 e3                                      mov r1, #0
00537454  54 f3 ff eb                                      bl #0x5341ac
00537458  a8 21 95 e5                                      ldr r2, [r5, #0x1a8]
0053745c  06 10 a0 e1                                      mov r1, r6
00537460  00 40 a0 e1                                      mov r4, r0
00537464  26 57 00 eb                                      bl #0x54d104
00537468  05 00 a0 e1                                      mov r0, r5
0053746c  00 30 95 e5                                      ldr r3, [r5]
00537470  0f e0 a0 e1                                      mov lr, pc
00537474  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00537478  00 50 50 e2                                      subs r5, r0, #0
0053747c  04 00 00 0a                                      beq #0x537494
00537480  00 30 95 e5                                      ldr r3, [r5]
00537484  0f e0 a0 e1                                      mov lr, pc
00537488  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053748c  00 20 50 e2                                      subs r2, r0, #0
00537490  0c 00 00 0a                                      beq #0x5374c8
00537494  05 10 a0 e1                                      mov r1, r5
00537498  00 30 94 e5                                      ldr r3, [r4]
0053749c  04 00 a0 e1                                      mov r0, r4
005374a0  00 20 a0 e3                                      mov r2, #0
005374a4  0f e0 a0 e1                                      mov lr, pc
005374a8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005374ac  00 10 a0 e3                                      mov r1, #0
005374b0  04 00 a0 e1                                      mov r0, r4
005374b4  00 30 94 e5                                      ldr r3, [r4]
005374b8  0f e0 a0 e1                                      mov lr, pc
005374bc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
005374c0  04 00 a0 e1                                      mov r0, r4
005374c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005374c8  05 10 a0 e1                                      mov r1, r5
005374cc  04 00 a0 e1                                      mov r0, r4
005374d0  00 30 94 e5                                      ldr r3, [r4]
005374d4  0f e0 a0 e1                                      mov lr, pc
005374d8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005374dc  05 00 a0 e1                                      mov r0, r5
005374e0  00 30 95 e5                                      ldr r3, [r5]
005374e4  0f e0 a0 e1                                      mov lr, pc
005374e8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
005374ec  00 10 a0 e1                                      mov r1, r0
005374f0  ee ff ff ea                                      b #0x5374b0

; FUNCTION 0x005374f4, declared_size=340, range_size=340, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment20updateHoveredElementENS_4core10position2dIiEE
; demangled: glitch::gui::CGUIEnvironment::updateHoveredElement(glitch::core::position2d<int>)
; decoder-mode: arm
005374f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005374f8  00 20 91 e5                                      ldr r2, [r1]
005374fc  00 40 a0 e1                                      mov r4, r0
00537500  08 60 80 e2                                      add r6, r0, #8
00537504  b4 21 80 e5                                      str r2, [r0, #0x1b4]
00537508  04 30 91 e5                                      ldr r3, [r1, #4]
0053750c  18 d0 4d e2                                      sub sp, sp, #0x18
00537510  06 00 a0 e1                                      mov r0, r6
00537514  b8 31 84 e5                                      str r3, [r4, #0x1b8]
00537518  ac 51 94 e5                                      ldr r5, [r4, #0x1ac]
0053751c  2b f6 ff eb                                      bl #0x534dd0
00537520  00 00 50 e3                                      cmp r0, #0
00537524  ac 01 84 e5                                      str r0, [r4, #0x1ac]
00537528  35 00 00 0a                                      beq #0x537604
0053752c  6c 4e 03 eb                                      bl #0x60aee4
00537530  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
00537534  00 80 a0 e1                                      mov r8, r0
00537538  03 00 56 e1                                      cmp r6, r3
0053753c  00 20 93 15                                      ldrne r2, [r3]
00537540  06 30 a0 01                                      moveq r3, r6
00537544  10 20 12 15                                      ldrne r2, [r2, #-0x10]
00537548  02 30 83 10                                      addne r3, r3, r2
0053754c  04 20 93 15                                      ldrne r2, [r3, #4]
00537550  01 20 82 12                                      addne r2, r2, #1
00537554  04 20 83 15                                      strne r2, [r3, #4]
00537558  ac 31 94 15                                      ldrne r3, [r4, #0x1ac]
0053755c  03 00 55 e1                                      cmp r5, r3
00537560  27 00 00 0a                                      beq #0x537604
00537564  00 00 55 e3                                      cmp r5, #0
00537568  00 30 a0 e3                                      mov r3, #0
0053756c  00 30 8d e5                                      str r3, [sp]
00537570  0d 70 a0 01                                      moveq r7, sp
00537574  08 00 00 0a                                      beq #0x53759c
00537578  03 30 a0 e3                                      mov r3, #3
0053757c  10 30 8d e5                                      str r3, [sp, #0x10]
00537580  08 50 8d e5                                      str r5, [sp, #8]
00537584  00 30 95 e5                                      ldr r3, [r5]
00537588  05 00 a0 e1                                      mov r0, r5
0053758c  0d 10 a0 e1                                      mov r1, sp
00537590  0d 70 a0 e1                                      mov r7, sp
00537594  0f e0 a0 e1                                      mov lr, pc
00537598  08 f0 93 e5                                      ldr pc, [r3, #8]
0053759c  68 31 94 e5                                      ldr r3, [r4, #0x168]
005375a0  00 00 53 e3                                      cmp r3, #0
005375a4  20 00 00 0a                                      beq #0x53762c
005375a8  03 00 a0 e1                                      mov r0, r3
005375ac  00 30 93 e5                                      ldr r3, [r3]
005375b0  0f e0 a0 e1                                      mov lr, pc
005375b4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005375b8  68 31 94 e5                                      ldr r3, [r4, #0x168]
005375bc  00 20 93 e5                                      ldr r2, [r3]
005375c0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005375c4  00 00 83 e0                                      add r0, r3, r0
005375c8  ed 97 f7 eb                                      bl #0x31d584
005375cc  60 31 94 e5                                      ldr r3, [r4, #0x160]
005375d0  00 20 a0 e3                                      mov r2, #0
005375d4  68 21 84 e5                                      str r2, [r4, #0x168]
005375d8  7d 3f 83 e2                                      add r3, r3, #0x1f4
005375dc  60 31 84 e5                                      str r3, [r4, #0x160]
005375e0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
005375e4  02 20 a0 e3                                      mov r2, #2
005375e8  10 20 8d e5                                      str r2, [sp, #0x10]
005375ec  08 30 8d e5                                      str r3, [sp, #8]
005375f0  03 00 a0 e1                                      mov r0, r3
005375f4  0d 10 a0 e1                                      mov r1, sp
005375f8  00 30 93 e5                                      ldr r3, [r3]
005375fc  0f e0 a0 e1                                      mov lr, pc
00537600  08 f0 93 e5                                      ldr pc, [r3, #8]
00537604  00 00 55 e3                                      cmp r5, #0
00537608  05 00 00 0a                                      beq #0x537624
0053760c  06 00 55 e1                                      cmp r5, r6
00537610  03 00 00 0a                                      beq #0x537624
00537614  00 30 95 e5                                      ldr r3, [r5]
00537618  10 00 13 e5                                      ldr r0, [r3, #-0x10]
0053761c  00 00 85 e0                                      add r0, r5, r0
00537620  d7 97 f7 eb                                      bl #0x31d584
00537624  18 d0 8d e2                                      add sp, sp, #0x18
00537628  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053762c  60 31 94 e5                                      ldr r3, [r4, #0x160]
00537630  08 20 63 e0                                      rsb r2, r3, r8
00537634  02 00 53 e1                                      cmp r3, r2
00537638  7d 3f 83 82                                      addhi r3, r3, #0x1f4
0053763c  60 31 84 85                                      strhi r3, [r4, #0x160]
00537640  60 81 84 95                                      strls r8, [r4, #0x160]
00537644  e5 ff ff ea                                      b #0x5375e0

; FUNCTION 0x00537648, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7drawAllEv
; demangled: glitch::gui::CGUIEnvironment::drawAll()
; decoder-mode: arm
00537648  70 40 2d e9                                      push {r4, r5, r6, lr}
0053764c  a8 31 90 e5                                      ldr r3, [r0, #0x1a8]
00537650  00 40 a0 e1                                      mov r4, r0
00537654  00 00 53 e3                                      cmp r3, #0
00537658  2f 00 00 0a                                      beq #0x53771c
0053765c  cc 20 93 e5                                      ldr r2, [r3, #0xcc]
00537660  48 00 90 e5                                      ldr r0, [r0, #0x48]
00537664  04 10 12 e5                                      ldr r1, [r2, #-4]
00537668  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0053766c  10 10 91 e5                                      ldr r1, [r1, #0x10]
00537670  02 00 50 e1                                      cmp r0, r2
00537674  25 00 00 0a                                      beq #0x537710
00537678  68 20 84 e5                                      str r2, [r4, #0x68]
0053767c  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
00537680  64 00 94 e5                                      ldr r0, [r4, #0x64]
00537684  60 c0 94 e5                                      ldr ip, [r4, #0x60]
00537688  04 10 13 e5                                      ldr r1, [r3, #-4]
0053768c  08 50 84 e2                                      add r5, r4, #8
00537690  08 30 94 e5                                      ldr r3, [r4, #8]
00537694  10 10 91 e5                                      ldr r1, [r1, #0x10]
00537698  44 00 84 e5                                      str r0, [r4, #0x44]
0053769c  54 00 84 e5                                      str r0, [r4, #0x54]
005376a0  40 c0 84 e5                                      str ip, [r4, #0x40]
005376a4  48 20 84 e5                                      str r2, [r4, #0x48]
005376a8  4c 10 84 e5                                      str r1, [r4, #0x4c]
005376ac  6c 10 84 e5                                      str r1, [r4, #0x6c]
005376b0  50 c0 84 e5                                      str ip, [r4, #0x50]
005376b4  58 20 84 e5                                      str r2, [r4, #0x58]
005376b8  5c 10 84 e5                                      str r1, [r4, #0x5c]
005376bc  05 00 a0 e1                                      mov r0, r5
005376c0  0f e0 a0 e1                                      mov lr, pc
005376c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005376c8  68 11 94 e5                                      ldr r1, [r4, #0x168]
005376cc  00 00 51 e3                                      cmp r1, #0
005376d0  03 00 00 0a                                      beq #0x5376e4
005376d4  08 30 94 e5                                      ldr r3, [r4, #8]
005376d8  05 00 a0 e1                                      mov r0, r5
005376dc  0f e0 a0 e1                                      mov lr, pc
005376e0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005376e4  05 00 a0 e1                                      mov r0, r5
005376e8  08 30 94 e5                                      ldr r3, [r4, #8]
005376ec  0f e0 a0 e1                                      mov lr, pc
005376f0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005376f4  00 30 94 e5                                      ldr r3, [r4]
005376f8  0c 51 93 e5                                      ldr r5, [r3, #0x10c]
005376fc  f8 4d 03 eb                                      bl #0x60aee4
00537700  00 10 a0 e1                                      mov r1, r0
00537704  04 00 a0 e1                                      mov r0, r4
00537708  35 ff 2f e1                                      blx r5
0053770c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00537710  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00537714  01 00 50 e1                                      cmp r0, r1
00537718  d6 ff ff 1a                                      bne #0x537678
0053771c  08 50 84 e2                                      add r5, r4, #8
00537720  e8 ff ff ea                                      b #0x5376c8

; FUNCTION 0x00537b44, declared_size=280, range_size=280, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment14getNextElementEbb
; demangled: glitch::gui::CGUIEnvironment::getNextElement(bool, bool)
; decoder-mode: arm
00537b44  30 40 2d e9                                      push {r4, r5, lr}
00537b48  b0 c1 90 e5                                      ldr ip, [r0, #0x1b0]
00537b4c  14 d0 4d e2                                      sub sp, sp, #0x14
00537b50  00 50 a0 e1                                      mov r5, r0
00537b54  00 00 5c e3                                      cmp ip, #0
00537b58  01 30 a0 e1                                      mov r3, r1
00537b5c  02 40 a0 e1                                      mov r4, r2
00537b60  03 00 00 0a                                      beq #0x537b74
00537b64  3c 21 dc e5                                      ldrb r2, [ip, #0x13c]
00537b68  00 00 52 e3                                      cmp r2, #0
00537b6c  0c 00 a0 01                                      moveq r0, ip
00537b70  01 00 00 0a                                      beq #0x537b7c
00537b74  0c 00 a0 e1                                      mov r0, ip
00537b78  05 00 00 ea                                      b #0x537b94
00537b7c  24 00 90 e5                                      ldr r0, [r0, #0x24]
00537b80  00 00 50 e3                                      cmp r0, #0
00537b84  02 00 00 0a                                      beq #0x537b94
00537b88  3c 21 d0 e5                                      ldrb r2, [r0, #0x13c]
00537b8c  00 00 52 e3                                      cmp r2, #0
00537b90  f9 ff ff 0a                                      beq #0x537b7c
00537b94  00 00 54 e3                                      cmp r4, #0
00537b98  19 00 00 1a                                      bne #0x537c04
00537b9c  00 00 5c e3                                      cmp ip, #0
00537ba0  2b 00 00 0a                                      beq #0x537c54
00537ba4  3c 21 dc e5                                      ldrb r2, [ip, #0x13c]
00537ba8  00 00 52 e3                                      cmp r2, #0
00537bac  28 00 00 1a                                      bne #0x537c54
00537bb0  38 11 9c e5                                      ldr r1, [ip, #0x138]
00537bb4  01 00 71 e3                                      cmn r1, #1
00537bb8  1b 00 00 0a                                      beq #0x537c2c
00537bbc  00 00 50 e3                                      cmp r0, #0
00537bc0  00 00 00 1a                                      bne #0x537bc8
00537bc4  08 00 85 e2                                      add r0, r5, #8
00537bc8  00 e0 a0 e3                                      mov lr, #0
00537bcc  10 c0 8d e2                                      add ip, sp, #0x10
00537bd0  08 e0 2c e5                                      str lr, [ip, #-8]!
00537bd4  03 20 a0 e1                                      mov r2, r3
00537bd8  00 c0 8d e5                                      str ip, [sp]
00537bdc  04 30 a0 e1                                      mov r3, r4
00537be0  0c c0 8d e2                                      add ip, sp, #0xc
00537be4  04 c0 8d e5                                      str ip, [sp, #4]
00537be8  0c e0 8d e5                                      str lr, [sp, #0xc]
00537bec  70 ff ff eb                                      bl #0x5379b4
00537bf0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00537bf4  00 00 50 e3                                      cmp r0, #0
00537bf8  05 00 00 0a                                      beq #0x537c14
00537bfc  14 d0 8d e2                                      add sp, sp, #0x14
00537c00  30 80 bd e8                                      pop {r4, r5, pc}
00537c04  00 00 50 e3                                      cmp r0, #0
00537c08  00 10 e0 03                                      mvneq r1, #0
00537c0c  38 11 90 15                                      ldrne r1, [r0, #0x138]
00537c10  eb ff ff ea                                      b #0x537bc4
00537c14  08 00 9d e5                                      ldr r0, [sp, #8]
00537c18  00 00 50 e3                                      cmp r0, #0
00537c1c  f6 ff ff 1a                                      bne #0x537bfc
00537c20  00 00 54 e3                                      cmp r4, #0
00537c24  08 00 85 12                                      addne r0, r5, #8
00537c28  f3 ff ff ea                                      b #0x537bfc
00537c2c  24 20 9c e5                                      ldr r2, [ip, #0x24]
00537c30  00 00 52 e3                                      cmp r2, #0
00537c34  e0 ff ff 0a                                      beq #0x537bbc
00537c38  38 11 92 e5                                      ldr r1, [r2, #0x138]
00537c3c  24 20 92 e5                                      ldr r2, [r2, #0x24]
00537c40  00 00 52 e3                                      cmp r2, #0
00537c44  dc ff ff 0a                                      beq #0x537bbc
00537c48  01 00 71 e3                                      cmn r1, #1
00537c4c  da ff ff 1a                                      bne #0x537bbc
00537c50  f8 ff ff ea                                      b #0x537c38
00537c54  00 10 e0 e3                                      mvn r1, #0
00537c58  d7 ff ff ea                                      b #0x537bbc

; FUNCTION 0x00537c5c, declared_size=336, range_size=336, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment17postEventFromUserERKNS_6SEventE
; demangled: glitch::gui::CGUIEnvironment::postEventFromUser(glitch::SEvent const&)
; decoder-mode: arm
00537c5c  30 40 2d e9                                      push {r4, r5, lr}
00537c60  00 30 91 e5                                      ldr r3, [r1]
00537c64  0c d0 4d e2                                      sub sp, sp, #0xc
00537c68  01 40 a0 e1                                      mov r4, r1
00537c6c  01 00 53 e3                                      cmp r3, #1
00537c70  00 50 a0 e1                                      mov r5, r0
00537c74  04 00 00 0a                                      beq #0x537c8c
00537c78  02 00 53 e3                                      cmp r3, #2
00537c7c  22 00 00 0a                                      beq #0x537d0c
00537c80  00 00 a0 e3                                      mov r0, #0
00537c84  0c d0 8d e2                                      add sp, sp, #0xc
00537c88  30 80 bd e8                                      pop {r4, r5, pc}
00537c8c  08 30 91 e5                                      ldr r3, [r1, #8]
00537c90  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00537c94  0d 10 a0 e1                                      mov r1, sp
00537c98  00 30 8d e5                                      str r3, [sp]
00537c9c  04 20 8d e5                                      str r2, [sp, #4]
00537ca0  13 fe ff eb                                      bl #0x5374f4
00537ca4  14 30 94 e5                                      ldr r3, [r4, #0x14]
00537ca8  00 00 53 e3                                      cmp r3, #0
00537cac  0a 00 00 1a                                      bne #0x537cdc
00537cb0  ac 11 95 e5                                      ldr r1, [r5, #0x1ac]
00537cb4  00 00 51 e3                                      cmp r1, #0
00537cb8  b0 31 95 05                                      ldreq r3, [r5, #0x1b0]
00537cbc  37 00 00 0a                                      beq #0x537da0
00537cc0  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00537cc4  03 00 51 e1                                      cmp r1, r3
00537cc8  33 00 00 0a                                      beq #0x537d9c
00537ccc  00 30 95 e5                                      ldr r3, [r5]
00537cd0  05 00 a0 e1                                      mov r0, r5
00537cd4  0f e0 a0 e1                                      mov lr, pc
00537cd8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00537cdc  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00537ce0  00 00 53 e3                                      cmp r3, #0
00537ce4  28 00 00 0a                                      beq #0x537d8c
00537ce8  03 00 a0 e1                                      mov r0, r3
00537cec  04 10 a0 e1                                      mov r1, r4
00537cf0  00 30 93 e5                                      ldr r3, [r3]
00537cf4  0f e0 a0 e1                                      mov lr, pc
00537cf8  08 f0 93 e5                                      ldr pc, [r3, #8]
00537cfc  00 00 50 e3                                      cmp r0, #0
00537d00  1e 00 00 0a                                      beq #0x537d80
00537d04  01 00 a0 e3                                      mov r0, #1
00537d08  dd ff ff ea                                      b #0x537c84
00537d0c  10 30 d1 e5                                      ldrb r3, [r1, #0x10]
00537d10  00 00 53 e3                                      cmp r3, #0
00537d14  10 00 00 0a                                      beq #0x537d5c
00537d18  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00537d1c  09 00 53 e3                                      cmp r3, #9
00537d20  0d 00 00 1a                                      bne #0x537d5c
00537d24  11 10 d1 e5                                      ldrb r1, [r1, #0x11]
00537d28  12 20 d4 e5                                      ldrb r2, [r4, #0x12]
00537d2c  84 ff ff eb                                      bl #0x537b44
00537d30  00 10 50 e2                                      subs r1, r0, #0
00537d34  08 00 00 0a                                      beq #0x537d5c
00537d38  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00537d3c  03 00 51 e1                                      cmp r1, r3
00537d40  06 00 00 0a                                      beq #0x537d60
00537d44  00 30 95 e5                                      ldr r3, [r5]
00537d48  05 00 a0 e1                                      mov r0, r5
00537d4c  0f e0 a0 e1                                      mov lr, pc
00537d50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00537d54  00 00 50 e3                                      cmp r0, #0
00537d58  e9 ff ff 1a                                      bne #0x537d04
00537d5c  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00537d60  00 00 53 e3                                      cmp r3, #0
00537d64  c5 ff ff 0a                                      beq #0x537c80
00537d68  03 00 a0 e1                                      mov r0, r3
00537d6c  04 10 a0 e1                                      mov r1, r4
00537d70  00 30 93 e5                                      ldr r3, [r3]
00537d74  0f e0 a0 e1                                      mov lr, pc
00537d78  08 f0 93 e5                                      ldr pc, [r3, #8]
00537d7c  c0 ff ff ea                                      b #0x537c84
00537d80  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00537d84  00 00 53 e3                                      cmp r3, #0
00537d88  bc ff ff 1a                                      bne #0x537c80
00537d8c  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
00537d90  00 00 53 e3                                      cmp r3, #0
00537d94  f3 ff ff 1a                                      bne #0x537d68
00537d98  b8 ff ff ea                                      b #0x537c80
00537d9c  01 30 a0 e1                                      mov r3, r1
00537da0  00 00 53 e3                                      cmp r3, #0
00537da4  cf ff ff 1a                                      bne #0x537ce8
00537da8  c7 ff ff ea                                      b #0x537ccc

; FUNCTION 0x00537dac, declared_size=200, range_size=200, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment25registerGUIElementFactoryEPNS0_18IGUIElementFactoryE
; demangled: glitch::gui::CGUIEnvironment::registerGUIElementFactory(glitch::gui::IGUIElementFactory*)
; decoder-mode: arm
00537dac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00537db0  00 50 51 e2                                      subs r5, r1, #0
00537db4  00 40 a0 e1                                      mov r4, r0
00537db8  0b 00 00 0a                                      beq #0x537dec
00537dbc  04 30 95 e5                                      ldr r3, [r5, #4]
00537dc0  01 30 83 e2                                      add r3, r3, #1
00537dc4  04 30 85 e5                                      str r3, [r5, #4]
00537dc8  70 81 90 e5                                      ldr r8, [r0, #0x170]
00537dcc  74 31 90 e5                                      ldr r3, [r0, #0x174]
00537dd0  03 00 58 e1                                      cmp r8, r3
00537dd4  05 00 00 0a                                      beq #0x537df0
00537dd8  00 50 88 e5                                      str r5, [r8]
00537ddc  70 31 90 e5                                      ldr r3, [r0, #0x170]
00537de0  04 30 83 e2                                      add r3, r3, #4
00537de4  70 31 80 e5                                      str r3, [r0, #0x170]
00537de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00537dec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00537df0  6c 31 90 e5                                      ldr r3, [r0, #0x16c]
00537df4  08 30 63 e0                                      rsb r3, r3, r8
00537df8  43 31 a0 e1                                      asr r3, r3, #2
00537dfc  01 00 53 e3                                      cmp r3, #1
00537e00  03 70 83 20                                      addhs r7, r3, r3
00537e04  01 70 83 32                                      addlo r7, r3, #1
00537e08  07 01 77 e3                                      cmn r7, #0xc0000001
00537e0c  10 00 00 9a                                      bls #0x537e54
00537e10  03 70 e0 e3                                      mvn r7, #3
00537e14  00 10 a0 e3                                      mov r1, #0
00537e18  07 00 a0 e1                                      mov r0, r7
00537e1c  d1 61 f7 eb                                      bl #0x310568
00537e20  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
00537e24  00 60 a0 e1                                      mov r6, r0
00537e28  01 80 58 e0                                      subs r8, r8, r1
00537e2c  00 80 a0 01                                      moveq r8, r0
00537e30  0b 00 00 1a                                      bne #0x537e64
00537e34  04 50 88 e4                                      str r5, [r8], #4
00537e38  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
00537e3c  07 70 86 e0                                      add r7, r6, r7
00537e40  82 61 f7 eb                                      bl #0x310450
00537e44  74 71 84 e5                                      str r7, [r4, #0x174]
00537e48  70 81 84 e5                                      str r8, [r4, #0x170]
00537e4c  6c 61 84 e5                                      str r6, [r4, #0x16c]
00537e50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00537e54  07 00 53 e1                                      cmp r3, r7
00537e58  07 71 a0 91                                      lslls r7, r7, #2
00537e5c  ec ff ff 9a                                      bls #0x537e14
00537e60  ea ff ff ea                                      b #0x537e10
00537e64  08 20 a0 e1                                      mov r2, r8
00537e68  32 58 f7 eb                                      bl #0x30df38
00537e6c  08 80 80 e0                                      add r8, r0, r8
00537e70  ef ff ff ea                                      b #0x537e34

; FUNCTION 0x00537e74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_N6glitch3gui15CGUIEnvironment12OnPostRenderEj
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::OnPostRender(unsigned int)
; decoder-mode: arm
00537e74  08 00 40 e2                                      sub r0, r0, #8
00537e78  ff ff ff ea                                      b #0x537e7c

; FUNCTION 0x00537e7c, declared_size=952, range_size=952, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment12OnPostRenderEj
; demangled: glitch::gui::CGUIEnvironment::OnPostRender(unsigned int)
; decoder-mode: arm
00537e7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00537e80  60 21 90 e5                                      ldr r2, [r0, #0x160]
00537e84  64 31 90 e5                                      ldr r3, [r0, #0x164]
00537e88  4c d0 4d e2                                      sub sp, sp, #0x4c
00537e8c  01 20 62 e0                                      rsb r2, r2, r1
00537e90  03 00 52 e1                                      cmp r2, r3
00537e94  00 50 a0 e1                                      mov r5, r0
00537e98  01 40 a0 e1                                      mov r4, r1
00537e9c  08 00 00 3a                                      blo #0x537ec4
00537ea0  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
00537ea4  00 00 53 e3                                      cmp r3, #0
00537ea8  05 00 00 0a                                      beq #0x537ec4
00537eac  08 a0 80 e2                                      add sl, r0, #8
00537eb0  0a 00 53 e1                                      cmp r3, sl
00537eb4  02 00 00 0a                                      beq #0x537ec4
00537eb8  68 61 90 e5                                      ldr r6, [r0, #0x168]
00537ebc  00 00 56 e3                                      cmp r6, #0
00537ec0  0f 00 00 0a                                      beq #0x537f04
00537ec4  a0 30 d5 e5                                      ldrb r3, [r5, #0xa0]
00537ec8  00 00 53 e3                                      cmp r3, #0
00537ecc  0c 60 b5 15                                      ldrne r6, [r5, #0xc]!
00537ed0  07 00 00 1a                                      bne #0x537ef4
00537ed4  08 00 00 ea                                      b #0x537efc
00537ed8  08 30 96 e5                                      ldr r3, [r6, #8]
00537edc  04 10 a0 e1                                      mov r1, r4
00537ee0  03 00 a0 e1                                      mov r0, r3
00537ee4  00 30 93 e5                                      ldr r3, [r3]
00537ee8  0f e0 a0 e1                                      mov lr, pc
00537eec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00537ef0  00 60 96 e5                                      ldr r6, [r6]
00537ef4  05 00 56 e1                                      cmp r6, r5
00537ef8  f6 ff ff 1a                                      bne #0x537ed8
00537efc  4c d0 8d e2                                      add sp, sp, #0x4c
00537f00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00537f04  03 00 a0 e1                                      mov r0, r3
00537f08  00 30 93 e5                                      ldr r3, [r3]
00537f0c  0f e0 a0 e1                                      mov lr, pc
00537f10  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00537f14  44 30 90 e5                                      ldr r3, [r0, #0x44]
00537f18  40 20 90 e5                                      ldr r2, [r0, #0x40]
00537f1c  02 30 63 e0                                      rsb r3, r3, r2
00537f20  23 31 b0 e1                                      lsrs r3, r3, #2
00537f24  e6 ff ff 0a                                      beq #0x537ec4
00537f28  00 30 95 e5                                      ldr r3, [r5]
00537f2c  05 00 a0 e1                                      mov r0, r5
00537f30  0f e0 a0 e1                                      mov lr, pc
00537f34  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00537f38  00 00 50 e3                                      cmp r0, #0
00537f3c  e0 ff ff 0a                                      beq #0x537ec4
00537f40  00 30 95 e5                                      ldr r3, [r5]
00537f44  05 00 a0 e1                                      mov r0, r5
00537f48  0f e0 a0 e1                                      mov lr, pc
00537f4c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00537f50  04 10 a0 e3                                      mov r1, #4
00537f54  00 30 90 e5                                      ldr r3, [r0]
00537f58  0f e0 a0 e1                                      mov lr, pc
00537f5c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00537f60  00 00 50 e3                                      cmp r0, #0
00537f64  d6 ff ff 0a                                      beq #0x537ec4
00537f68  b4 21 95 e5                                      ldr r2, [r5, #0x1b4]
00537f6c  b8 31 95 e5                                      ldr r3, [r5, #0x1b8]
00537f70  34 60 8d e5                                      str r6, [sp, #0x34]
00537f74  28 20 8d e5                                      str r2, [sp, #0x28]
00537f78  30 60 8d e5                                      str r6, [sp, #0x30]
00537f7c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00537f80  00 30 95 e5                                      ldr r3, [r5]
00537f84  05 00 a0 e1                                      mov r0, r5
00537f88  0f e0 a0 e1                                      mov lr, pc
00537f8c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00537f90  04 10 a0 e3                                      mov r1, #4
00537f94  00 30 90 e5                                      ldr r3, [r0]
00537f98  0f e0 a0 e1                                      mov lr, pc
00537f9c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00537fa0  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
00537fa4  00 20 90 e5                                      ldr r2, [r0]
00537fa8  00 80 a0 e1                                      mov r8, r0
00537fac  03 00 a0 e1                                      mov r0, r3
00537fb0  00 30 93 e5                                      ldr r3, [r3]
00537fb4  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
00537fb8  0f e0 a0 e1                                      mov lr, pc
00537fbc  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00537fc0  08 10 a0 e1                                      mov r1, r8
00537fc4  44 20 90 e5                                      ldr r2, [r0, #0x44]
00537fc8  38 00 8d e2                                      add r0, sp, #0x38
00537fcc  36 ff 2f e1                                      blx r6
00537fd0  00 30 95 e5                                      ldr r3, [r5]
00537fd4  05 00 a0 e1                                      mov r0, r5
00537fd8  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00537fdc  38 80 9d e5                                      ldr r8, [sp, #0x38]
00537fe0  0f e0 a0 e1                                      mov lr, pc
00537fe4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00537fe8  08 10 a0 e3                                      mov r1, #8
00537fec  00 30 90 e5                                      ldr r3, [r0]
00537ff0  0f e0 a0 e1                                      mov lr, pc
00537ff4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00537ff8  00 30 95 e5                                      ldr r3, [r5]
00537ffc  00 60 a0 e1                                      mov r6, r0
00538000  05 00 a0 e1                                      mov r0, r5
00538004  0f e0 a0 e1                                      mov lr, pc
00538008  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053800c  09 10 a0 e3                                      mov r1, #9
00538010  00 30 90 e5                                      ldr r3, [r0]
00538014  0f e0 a0 e1                                      mov lr, pc
00538018  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0053801c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00538020  80 00 89 e0                                      add r0, sb, r0, lsl #1
00538024  00 10 e0 e1                                      mvn r1, r0
00538028  03 30 81 e0                                      add r3, r1, r3
0053802c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00538030  40 e0 95 e5                                      ldr lr, [r5, #0x40]
00538034  44 c0 95 e5                                      ldr ip, [r5, #0x44]
00538038  48 20 95 e5                                      ldr r2, [r5, #0x48]
0053803c  4c b0 95 e5                                      ldr fp, [r5, #0x4c]
00538040  28 70 8d e2                                      add r7, sp, #0x28
00538044  01 80 88 e0                                      add r8, r8, r1
00538048  01 00 40 e2                                      sub r0, r0, #1
0053804c  03 90 80 e0                                      add sb, r0, r3
00538050  18 10 8d e2                                      add r1, sp, #0x18
00538054  86 60 88 e0                                      add r6, r8, r6, lsl #1
00538058  07 00 a0 e1                                      mov r0, r7
0053805c  18 e0 8d e5                                      str lr, [sp, #0x18]
00538060  1c c0 8d e5                                      str ip, [sp, #0x1c]
00538064  30 60 8d e5                                      str r6, [sp, #0x30]
00538068  20 20 8d e5                                      str r2, [sp, #0x20]
0053806c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00538070  34 90 8d e5                                      str sb, [sp, #0x34]
00538074  24 b0 8d e5                                      str fp, [sp, #0x24]
00538078  e6 f6 ff eb                                      bl #0x535c18
0053807c  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
00538080  00 20 95 e5                                      ldr r2, [r5]
00538084  01 60 a0 e3                                      mov r6, #1
00538088  03 00 a0 e1                                      mov r0, r3
0053808c  00 30 93 e5                                      ldr r3, [r3]
00538090  a8 80 92 e5                                      ldr r8, [r2, #0xa8]
00538094  0f e0 a0 e1                                      mov lr, pc
00538098  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0053809c  00 30 e0 e3                                      mvn r3, #0
005380a0  44 10 90 e5                                      ldr r1, [r0, #0x44]
005380a4  07 20 a0 e1                                      mov r2, r7
005380a8  04 a0 8d e5                                      str sl, [sp, #4]
005380ac  08 30 8d e5                                      str r3, [sp, #8]
005380b0  00 60 8d e5                                      str r6, [sp]
005380b4  0c 60 8d e5                                      str r6, [sp, #0xc]
005380b8  06 30 a0 e1                                      mov r3, r6
005380bc  05 00 a0 e1                                      mov r0, r5
005380c0  38 ff 2f e1                                      blx r8
005380c4  68 01 85 e5                                      str r0, [r5, #0x168]
005380c8  00 20 90 e5                                      ldr r2, [r0]
005380cc  00 80 a0 e1                                      mov r8, r0
005380d0  00 30 95 e5                                      ldr r3, [r5]
005380d4  05 00 a0 e1                                      mov r0, r5
005380d8  84 a0 92 e5                                      ldr sl, [r2, #0x84]
005380dc  0f e0 a0 e1                                      mov lr, pc
005380e0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005380e4  0e 10 a0 e3                                      mov r1, #0xe
005380e8  00 30 90 e5                                      ldr r3, [r0]
005380ec  0f e0 a0 e1                                      mov lr, pc
005380f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005380f4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005380f8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005380fc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00538100  11 10 cd e5                                      strb r1, [sp, #0x11]
00538104  12 20 cd e5                                      strb r2, [sp, #0x12]
00538108  10 00 cd e5                                      strb r0, [sp, #0x10]
0053810c  13 30 cd e5                                      strb r3, [sp, #0x13]
00538110  10 30 9d e5                                      ldr r3, [sp, #0x10]
00538114  08 00 a0 e1                                      mov r0, r8
00538118  03 10 a0 e1                                      mov r1, r3
0053811c  44 30 8d e5                                      str r3, [sp, #0x44]
00538120  3a ff 2f e1                                      blx sl
00538124  68 81 95 e5                                      ldr r8, [r5, #0x168]
00538128  00 30 95 e5                                      ldr r3, [r5]
0053812c  05 00 a0 e1                                      mov r0, r5
00538130  00 20 98 e5                                      ldr r2, [r8]
00538134  94 a0 92 e5                                      ldr sl, [r2, #0x94]
00538138  0f e0 a0 e1                                      mov lr, pc
0053813c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00538140  0f 10 a0 e3                                      mov r1, #0xf
00538144  00 30 90 e5                                      ldr r3, [r0]
00538148  0f e0 a0 e1                                      mov lr, pc
0053814c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00538150  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00538154  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00538158  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0053815c  11 10 cd e5                                      strb r1, [sp, #0x11]
00538160  12 20 cd e5                                      strb r2, [sp, #0x12]
00538164  10 00 cd e5                                      strb r0, [sp, #0x10]
00538168  13 30 cd e5                                      strb r3, [sp, #0x13]
0053816c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00538170  08 00 a0 e1                                      mov r0, r8
00538174  03 10 a0 e1                                      mov r1, r3
00538178  40 30 8d e5                                      str r3, [sp, #0x40]
0053817c  3a ff 2f e1                                      blx sl
00538180  68 81 95 e5                                      ldr r8, [r5, #0x168]
00538184  00 30 95 e5                                      ldr r3, [r5]
00538188  05 00 a0 e1                                      mov r0, r5
0053818c  00 20 98 e5                                      ldr r2, [r8]
00538190  7c a0 92 e5                                      ldr sl, [r2, #0x7c]
00538194  0f e0 a0 e1                                      mov lr, pc
00538198  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053819c  04 10 a0 e3                                      mov r1, #4
005381a0  00 30 90 e5                                      ldr r3, [r0]
005381a4  0f e0 a0 e1                                      mov lr, pc
005381a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005381ac  00 10 a0 e1                                      mov r1, r0
005381b0  08 00 a0 e1                                      mov r0, r8
005381b4  3a ff 2f e1                                      blx sl
005381b8  68 31 95 e5                                      ldr r3, [r5, #0x168]
005381bc  06 10 a0 e1                                      mov r1, r6
005381c0  03 00 a0 e1                                      mov r0, r3
005381c4  00 30 93 e5                                      ldr r3, [r3]
005381c8  0f e0 a0 e1                                      mov lr, pc
005381cc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005381d0  68 31 95 e5                                      ldr r3, [r5, #0x168]
005381d4  00 20 93 e5                                      ldr r2, [r3]
005381d8  10 20 12 e5                                      ldr r2, [r2, #-0x10]
005381dc  02 30 83 e0                                      add r3, r3, r2
005381e0  04 20 93 e5                                      ldr r2, [r3, #4]
005381e4  06 20 82 e0                                      add r2, r2, r6
005381e8  04 20 83 e5                                      str r2, [r3, #4]
005381ec  68 31 95 e5                                      ldr r3, [r5, #0x168]
005381f0  03 00 a0 e1                                      mov r0, r3
005381f4  00 30 93 e5                                      ldr r3, [r3]
005381f8  0f e0 a0 e1                                      mov lr, pc
005381fc  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00538200  68 31 95 e5                                      ldr r3, [r5, #0x168]
00538204  07 10 a0 e1                                      mov r1, r7
00538208  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0053820c  28 60 93 e5                                      ldr r6, [r3, #0x28]
00538210  30 e0 93 e5                                      ldr lr, [r3, #0x30]
00538214  02 c0 80 e0                                      add ip, r0, r2
00538218  03 00 a0 e1                                      mov r0, r3
0053821c  28 60 8d e5                                      str r6, [sp, #0x28]
00538220  30 e0 8d e5                                      str lr, [sp, #0x30]
00538224  34 c0 8d e5                                      str ip, [sp, #0x34]
00538228  2c 20 8d e5                                      str r2, [sp, #0x2c]
0053822c  43 f1 ff eb                                      bl #0x534740
00538230  23 ff ff ea                                      b #0x537ec4

; FUNCTION 0x00538670, declared_size=700, range_size=700, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment15writeGUIElementEPNS_2io10IXMLWriterEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::writeGUIElement(glitch::io::IXMLWriter*, glitch::gui::IGUIElement*)
; decoder-mode: arm
00538670  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00538674  a0 a2 9f e5                                      ldr sl, [pc, #0x2a0]
00538678  00 00 51 e3                                      cmp r1, #0
0053867c  00 00 52 13                                      cmpne r2, #0
00538680  84 d0 4d e2                                      sub sp, sp, #0x84
00538684  02 40 a0 e1                                      mov r4, r2
00538688  01 50 a0 e1                                      mov r5, r1
0053868c  00 80 a0 13                                      movne r8, #0
00538690  01 80 a0 03                                      moveq r8, #1
00538694  0a a0 8f e0                                      add sl, pc, sl
00538698  00 60 a0 e1                                      mov r6, r0
0053869c  01 00 00 1a                                      bne #0x5386a8
005386a0  84 d0 8d e2                                      add sp, sp, #0x84
005386a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005386a8  c0 31 90 e5                                      ldr r3, [r0, #0x1c0]
005386ac  08 10 a0 e1                                      mov r1, r8
005386b0  03 00 a0 e1                                      mov r0, r3
005386b4  00 30 93 e5                                      ldr r3, [r3]
005386b8  0f e0 a0 e1                                      mov lr, pc
005386bc  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005386c0  08 20 a0 e1                                      mov r2, r8
005386c4  00 70 a0 e1                                      mov r7, r0
005386c8  00 10 a0 e1                                      mov r1, r0
005386cc  00 30 94 e5                                      ldr r3, [r4]
005386d0  04 00 a0 e1                                      mov r0, r4
005386d4  0f e0 a0 e1                                      mov lr, pc
005386d8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
005386dc  00 30 97 e5                                      ldr r3, [r7]
005386e0  07 00 a0 e1                                      mov r0, r7
005386e4  0f e0 a0 e1                                      mov lr, pc
005386e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005386ec  00 90 50 e2                                      subs sb, r0, #0
005386f0  3d 00 00 0a                                      beq #0x5387ec
005386f4  08 30 86 e2                                      add r3, r6, #8
005386f8  03 00 54 e1                                      cmp r4, r3
005386fc  72 00 00 0a                                      beq #0x5388cc
00538700  18 22 9f e5                                      ldr r2, [pc, #0x218]
00538704  00 30 94 e5                                      ldr r3, [r4]
00538708  04 00 a0 e1                                      mov r0, r4
0053870c  02 20 9a e7                                      ldr r2, [sl, r2]
00538710  28 b0 8d e2                                      add fp, sp, #0x28
00538714  00 90 92 e5                                      ldr sb, [r2]
00538718  0f e0 a0 e1                                      mov lr, pc
0053871c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00538720  00 10 a0 e1                                      mov r1, r0
00538724  0b 00 a0 e1                                      mov r0, fp
00538728  e6 b6 f7 eb                                      bl #0x3262c8
0053872c  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
00538730  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00538734  00 c0 95 e5                                      ldr ip, [r5]
00538738  03 30 9a e7                                      ldr r3, [sl, r3]
0053873c  00 10 8d e5                                      str r1, [sp]
00538740  05 00 a0 e1                                      mov r0, r5
00538744  00 30 93 e5                                      ldr r3, [r3]
00538748  08 20 a0 e1                                      mov r2, r8
0053874c  04 80 8d e5                                      str r8, [sp, #4]
00538750  08 80 8d e5                                      str r8, [sp, #8]
00538754  0c 80 8d e5                                      str r8, [sp, #0xc]
00538758  10 80 8d e5                                      str r8, [sp, #0x10]
0053875c  14 80 8d e5                                      str r8, [sp, #0x14]
00538760  18 80 8d e5                                      str r8, [sp, #0x18]
00538764  1c 80 8d e5                                      str r8, [sp, #0x1c]
00538768  20 80 8d e5                                      str r8, [sp, #0x20]
0053876c  09 10 a0 e1                                      mov r1, sb
00538770  0f e0 a0 e1                                      mov lr, pc
00538774  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00538778  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0053877c  0b 00 50 e1                                      cmp r0, fp
00538780  02 00 00 0a                                      beq #0x538790
00538784  00 00 50 e3                                      cmp r0, #0
00538788  00 00 00 0a                                      beq #0x538790
0053878c  2f 5f f7 eb                                      bl #0x310450
00538790  05 00 a0 e1                                      mov r0, r5
00538794  00 30 95 e5                                      ldr r3, [r5]
00538798  0f e0 a0 e1                                      mov lr, pc
0053879c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005387a0  70 80 8d e2                                      add r8, sp, #0x70
005387a4  05 00 a0 e1                                      mov r0, r5
005387a8  00 30 95 e5                                      ldr r3, [r5]
005387ac  0f e0 a0 e1                                      mov lr, pc
005387b0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005387b4  01 20 a0 e3                                      mov r2, #1
005387b8  00 30 a0 e3                                      mov r3, #0
005387bc  05 10 a0 e1                                      mov r1, r5
005387c0  08 00 a0 e1                                      mov r0, r8
005387c4  df e4 00 eb                                      bl #0x571b48
005387c8  07 10 a0 e1                                      mov r1, r7
005387cc  08 00 a0 e1                                      mov r0, r8
005387d0  08 e7 00 eb                                      bl #0x5723f8
005387d4  05 00 a0 e1                                      mov r0, r5
005387d8  00 30 95 e5                                      ldr r3, [r5]
005387dc  0f e0 a0 e1                                      mov lr, pc
005387e0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005387e4  08 00 a0 e1                                      mov r0, r8
005387e8  f6 e4 00 eb                                      bl #0x571bc8
005387ec  00 30 94 e5                                      ldr r3, [r4]
005387f0  04 00 a0 e1                                      mov r0, r4
005387f4  0f e0 a0 e1                                      mov lr, pc
005387f8  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005387fc  00 30 94 e5                                      ldr r3, [r4]
00538800  00 80 90 e5                                      ldr r8, [r0]
00538804  04 00 a0 e1                                      mov r0, r4
00538808  0f e0 a0 e1                                      mov lr, pc
0053880c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00538810  00 00 58 e1                                      cmp r8, r0
00538814  0d 00 00 0a                                      beq #0x538850
00538818  08 30 98 e5                                      ldr r3, [r8, #8]
0053881c  03 00 a0 e1                                      mov r0, r3
00538820  00 30 93 e5                                      ldr r3, [r3]
00538824  0f e0 a0 e1                                      mov lr, pc
00538828  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0053882c  00 00 50 e3                                      cmp r0, #0
00538830  0f 00 00 0a                                      beq #0x538874
00538834  00 80 98 e5                                      ldr r8, [r8]
00538838  00 30 94 e5                                      ldr r3, [r4]
0053883c  04 00 a0 e1                                      mov r0, r4
00538840  0f e0 a0 e1                                      mov lr, pc
00538844  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00538848  00 00 58 e1                                      cmp r8, r0
0053884c  f1 ff ff 1a                                      bne #0x538818
00538850  00 30 97 e5                                      ldr r3, [r7]
00538854  07 00 a0 e1                                      mov r0, r7
00538858  0f e0 a0 e1                                      mov lr, pc
0053885c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00538860  00 00 50 e3                                      cmp r0, #0
00538864  0a 00 00 1a                                      bne #0x538894
00538868  07 00 a0 e1                                      mov r0, r7
0053886c  44 93 f7 eb                                      bl #0x31d584
00538870  8a ff ff ea                                      b #0x5386a0
00538874  08 20 98 e5                                      ldr r2, [r8, #8]
00538878  00 30 96 e5                                      ldr r3, [r6]
0053887c  06 00 a0 e1                                      mov r0, r6
00538880  05 10 a0 e1                                      mov r1, r5
00538884  0f e0 a0 e1                                      mov lr, pc
00538888  00 f1 93 e5                                      ldr pc, [r3, #0x100]
0053888c  00 80 98 e5                                      ldr r8, [r8]
00538890  e8 ff ff ea                                      b #0x538838
00538894  09 10 a0 e1                                      mov r1, sb
00538898  05 00 a0 e1                                      mov r0, r5
0053889c  00 30 95 e5                                      ldr r3, [r5]
005388a0  0f e0 a0 e1                                      mov lr, pc
005388a4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005388a8  05 00 a0 e1                                      mov r0, r5
005388ac  00 30 95 e5                                      ldr r3, [r5]
005388b0  0f e0 a0 e1                                      mov lr, pc
005388b4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005388b8  05 00 a0 e1                                      mov r0, r5
005388bc  00 30 95 e5                                      ldr r3, [r5]
005388c0  0f e0 a0 e1                                      mov lr, pc
005388c4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005388c8  e6 ff ff ea                                      b #0x538868
005388cc  54 30 9f e5                                      ldr r3, [pc, #0x54]
005388d0  00 c0 95 e5                                      ldr ip, [r5]
005388d4  00 80 8d e5                                      str r8, [sp]
005388d8  03 30 9a e7                                      ldr r3, [sl, r3]
005388dc  04 80 8d e5                                      str r8, [sp, #4]
005388e0  08 20 a0 e1                                      mov r2, r8
005388e4  00 90 93 e5                                      ldr sb, [r3]
005388e8  05 00 a0 e1                                      mov r0, r5
005388ec  08 80 8d e5                                      str r8, [sp, #8]
005388f0  0c 80 8d e5                                      str r8, [sp, #0xc]
005388f4  10 80 8d e5                                      str r8, [sp, #0x10]
005388f8  14 80 8d e5                                      str r8, [sp, #0x14]
005388fc  18 80 8d e5                                      str r8, [sp, #0x18]
00538900  1c 80 8d e5                                      str r8, [sp, #0x1c]
00538904  20 80 8d e5                                      str r8, [sp, #0x20]
00538908  09 10 a0 e1                                      mov r1, sb
0053890c  08 30 a0 e1                                      mov r3, r8
00538910  0f e0 a0 e1                                      mov lr, pc
00538914  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00538918  9c ff ff ea                                      b #0x538790
; mapping-symbol data/literal pool
0053891c  fc c3 45 00 3c 1a 00 00 a4 07 00 00 c0 49 00 00  .byte 0xfc, 0xc3, 0x45, 0x00, 0x3c, 0x1a, 0x00, 0x00, 0xa4, 0x07, 0x00, 0x00, 0xc0, 0x49, 0x00, 0x00

; FUNCTION 0x00539110, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_N6glitch3gui15CGUIEnvironmentD1Ev
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
00539110  08 00 40 e2                                      sub r0, r0, #8
00539114  ff ff ff ea                                      b #0x539118

; FUNCTION 0x00539118, declared_size=852, range_size=852, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironmentD1Ev
; demangled: glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
00539118  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053911c  3c 73 9f e5                                      ldr r7, [pc, #0x33c]
00539120  3c 33 9f e5                                      ldr r3, [pc, #0x33c]
00539124  ac 21 90 e5                                      ldr r2, [r0, #0x1ac]
00539128  07 70 8f e0                                      add r7, pc, r7
0053912c  03 30 97 e7                                      ldr r3, [r7, r3]
00539130  00 40 a0 e1                                      mov r4, r0
00539134  00 00 52 e3                                      cmp r2, #0
00539138  79 1f 83 e2                                      add r1, r3, #0x1e4
0053913c  10 c0 83 e2                                      add ip, r3, #0x10
00539140  13 0e 83 e2                                      add r0, r3, #0x130
00539144  71 3f 83 e2                                      add r3, r3, #0x1c4
00539148  00 c0 84 e5                                      str ip, [r4]
0053914c  08 00 84 e5                                      str r0, [r4, #8]
00539150  cc 31 84 e5                                      str r3, [r4, #0x1cc]
00539154  d0 11 84 e5                                      str r1, [r4, #0x1d0]
00539158  08 80 84 02                                      addeq r8, r4, #8
0053915c  08 00 00 0a                                      beq #0x539184
00539160  08 80 84 e2                                      add r8, r4, #8
00539164  08 00 52 e1                                      cmp r2, r8
00539168  05 00 00 0a                                      beq #0x539184
0053916c  00 30 92 e5                                      ldr r3, [r2]
00539170  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00539174  00 00 82 e0                                      add r0, r2, r0
00539178  01 91 f7 eb                                      bl #0x31d584
0053917c  00 30 a0 e3                                      mov r3, #0
00539180  ac 31 84 e5                                      str r3, [r4, #0x1ac]
00539184  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
00539188  00 00 50 e3                                      cmp r0, #0
0053918c  02 00 00 0a                                      beq #0x53919c
00539190  fb 90 f7 eb                                      bl #0x31d584
00539194  00 30 a0 e3                                      mov r3, #0
00539198  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0053919c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
005391a0  00 00 53 e3                                      cmp r3, #0
005391a4  05 00 00 0a                                      beq #0x5391c0
005391a8  00 20 93 e5                                      ldr r2, [r3]
005391ac  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005391b0  00 00 83 e0                                      add r0, r3, r0
005391b4  f2 90 f7 eb                                      bl #0x31d584
005391b8  00 30 a0 e3                                      mov r3, #0
005391bc  b0 31 84 e5                                      str r3, [r4, #0x1b0]
005391c0  68 31 94 e5                                      ldr r3, [r4, #0x168]
005391c4  00 00 53 e3                                      cmp r3, #0
005391c8  05 00 00 0a                                      beq #0x5391e4
005391cc  00 20 93 e5                                      ldr r2, [r3]
005391d0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005391d4  00 00 83 e0                                      add r0, r3, r0
005391d8  e9 90 f7 eb                                      bl #0x31d584
005391dc  00 30 a0 e3                                      mov r3, #0
005391e0  68 31 84 e5                                      str r3, [r4, #0x168]
005391e4  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
005391e8  00 00 50 e3                                      cmp r0, #0
005391ec  02 00 00 0a                                      beq #0x5391fc
005391f0  e3 90 f7 eb                                      bl #0x31d584
005391f4  00 30 a0 e3                                      mov r3, #0
005391f8  c8 31 84 e5                                      str r3, [r4, #0x1c8]
005391fc  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00539200  00 00 53 e3                                      cmp r3, #0
00539204  05 00 00 0a                                      beq #0x539220
00539208  00 20 93 e5                                      ldr r2, [r3]
0053920c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00539210  00 00 83 e0                                      add r0, r3, r0
00539214  da 90 f7 eb                                      bl #0x31d584
00539218  00 30 a0 e3                                      mov r3, #0
0053921c  bc 31 84 e5                                      str r3, [r4, #0x1bc]
00539220  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00539224  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
00539228  0c 30 61 e0                                      rsb r3, r1, ip
0053922c  43 31 a0 e1                                      asr r3, r3, #2
00539230  83 21 83 e0                                      add r2, r3, r3, lsl #3
00539234  02 23 82 e0                                      add r2, r2, r2, lsl #6
00539238  82 21 83 e0                                      add r2, r3, r2, lsl #3
0053923c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00539240  82 31 83 e0                                      add r3, r3, r2, lsl #3
00539244  00 00 53 e3                                      cmp r3, #0
00539248  14 00 00 0a                                      beq #0x5392a0
0053924c  00 50 a0 e3                                      mov r5, #0
00539250  05 60 a0 e1                                      mov r6, r5
00539254  05 30 81 e0                                      add r3, r1, r5
00539258  18 00 93 e5                                      ldr r0, [r3, #0x18]
0053925c  01 60 86 e2                                      add r6, r6, #1
00539260  1c 50 85 e2                                      add r5, r5, #0x1c
00539264  00 00 50 e3                                      cmp r0, #0
00539268  02 00 00 0a                                      beq #0x539278
0053926c  c4 90 f7 eb                                      bl #0x31d584
00539270  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00539274  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
00539278  0c 30 61 e0                                      rsb r3, r1, ip
0053927c  43 31 a0 e1                                      asr r3, r3, #2
00539280  83 21 83 e0                                      add r2, r3, r3, lsl #3
00539284  02 23 82 e0                                      add r2, r2, r2, lsl #6
00539288  82 21 83 e0                                      add r2, r3, r2, lsl #3
0053928c  82 27 82 e0                                      add r2, r2, r2, lsl #15
00539290  82 31 83 e0                                      add r3, r3, r2, lsl #3
00539294  00 30 63 e2                                      rsb r3, r3, #0
00539298  03 00 56 e1                                      cmp r6, r3
0053929c  ec ff ff 3a                                      blo #0x539254
005392a0  78 21 94 e5                                      ldr r2, [r4, #0x178]
005392a4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005392a8  03 30 62 e0                                      rsb r3, r2, r3
005392ac  43 31 a0 e1                                      asr r3, r3, #2
005392b0  83 11 83 e0                                      add r1, r3, r3, lsl #3
005392b4  01 13 81 e0                                      add r1, r1, r1, lsl #6
005392b8  81 11 83 e0                                      add r1, r3, r1, lsl #3
005392bc  81 17 81 e0                                      add r1, r1, r1, lsl #15
005392c0  81 31 83 e0                                      add r3, r3, r1, lsl #3
005392c4  00 00 53 e3                                      cmp r3, #0
005392c8  12 00 00 0a                                      beq #0x539318
005392cc  00 50 a0 e3                                      mov r5, #0
005392d0  05 60 a0 e1                                      mov r6, r5
005392d4  05 20 82 e0                                      add r2, r2, r5
005392d8  18 00 92 e5                                      ldr r0, [r2, #0x18]
005392dc  a8 90 f7 eb                                      bl #0x31d584
005392e0  78 21 94 e5                                      ldr r2, [r4, #0x178]
005392e4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005392e8  01 60 86 e2                                      add r6, r6, #1
005392ec  1c 50 85 e2                                      add r5, r5, #0x1c
005392f0  03 30 62 e0                                      rsb r3, r2, r3
005392f4  43 31 a0 e1                                      asr r3, r3, #2
005392f8  83 11 83 e0                                      add r1, r3, r3, lsl #3
005392fc  01 13 81 e0                                      add r1, r1, r1, lsl #6
00539300  81 11 83 e0                                      add r1, r3, r1, lsl #3
00539304  81 17 81 e0                                      add r1, r1, r1, lsl #15
00539308  81 31 83 e0                                      add r3, r3, r1, lsl #3
0053930c  00 30 63 e2                                      rsb r3, r3, #0
00539310  03 00 56 e1                                      cmp r6, r3
00539314  ee ff ff 3a                                      blo #0x5392d4
00539318  90 21 94 e5                                      ldr r2, [r4, #0x190]
0053931c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00539320  03 30 62 e0                                      rsb r3, r2, r3
00539324  43 31 a0 e1                                      asr r3, r3, #2
00539328  83 11 83 e0                                      add r1, r3, r3, lsl #3
0053932c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00539330  81 11 83 e0                                      add r1, r3, r1, lsl #3
00539334  81 17 81 e0                                      add r1, r1, r1, lsl #15
00539338  81 31 83 e0                                      add r3, r3, r1, lsl #3
0053933c  00 00 53 e3                                      cmp r3, #0
00539340  12 00 00 0a                                      beq #0x539390
00539344  00 50 a0 e3                                      mov r5, #0
00539348  05 60 a0 e1                                      mov r6, r5
0053934c  05 20 82 e0                                      add r2, r2, r5
00539350  18 00 92 e5                                      ldr r0, [r2, #0x18]
00539354  8a 90 f7 eb                                      bl #0x31d584
00539358  90 21 94 e5                                      ldr r2, [r4, #0x190]
0053935c  94 31 94 e5                                      ldr r3, [r4, #0x194]
00539360  01 60 86 e2                                      add r6, r6, #1
00539364  1c 50 85 e2                                      add r5, r5, #0x1c
00539368  03 30 62 e0                                      rsb r3, r2, r3
0053936c  43 31 a0 e1                                      asr r3, r3, #2
00539370  83 11 83 e0                                      add r1, r3, r3, lsl #3
00539374  01 13 81 e0                                      add r1, r1, r1, lsl #6
00539378  81 11 83 e0                                      add r1, r3, r1, lsl #3
0053937c  81 17 81 e0                                      add r1, r1, r1, lsl #15
00539380  81 31 83 e0                                      add r3, r3, r1, lsl #3
00539384  00 30 63 e2                                      rsb r3, r3, #0
00539388  03 00 56 e1                                      cmp r6, r3
0053938c  ee ff ff 3a                                      blo #0x53934c
00539390  84 31 94 e5                                      ldr r3, [r4, #0x184]
00539394  88 21 94 e5                                      ldr r2, [r4, #0x188]
00539398  02 20 63 e0                                      rsb r2, r3, r2
0053939c  a2 22 b0 e1                                      lsrs r2, r2, #5
005393a0  09 00 00 0a                                      beq #0x5393cc
005393a4  00 50 a0 e3                                      mov r5, #0
005393a8  85 32 83 e0                                      add r3, r3, r5, lsl #5
005393ac  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
005393b0  73 90 f7 eb                                      bl #0x31d584
005393b4  84 31 94 e5                                      ldr r3, [r4, #0x184]
005393b8  88 21 94 e5                                      ldr r2, [r4, #0x188]
005393bc  01 50 85 e2                                      add r5, r5, #1
005393c0  02 20 63 e0                                      rsb r2, r3, r2
005393c4  c2 02 55 e1                                      cmp r5, r2, asr #5
005393c8  f6 ff ff 3a                                      blo #0x5393a8
005393cc  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
005393d0  70 21 94 e5                                      ldr r2, [r4, #0x170]
005393d4  02 20 63 e0                                      rsb r2, r3, r2
005393d8  22 21 b0 e1                                      lsrs r2, r2, #2
005393dc  08 00 00 0a                                      beq #0x539404
005393e0  00 50 a0 e3                                      mov r5, #0
005393e4  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
005393e8  65 90 f7 eb                                      bl #0x31d584
005393ec  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
005393f0  70 21 94 e5                                      ldr r2, [r4, #0x170]
005393f4  01 50 85 e2                                      add r5, r5, #1
005393f8  02 20 63 e0                                      rsb r2, r3, r2
005393fc  42 01 55 e1                                      cmp r5, r2, asr #2
00539400  f7 ff ff 3a                                      blo #0x5393e4
00539404  c0 01 94 e5                                      ldr r0, [r4, #0x1c0]
00539408  00 00 50 e3                                      cmp r0, #0
0053940c  00 00 00 0a                                      beq #0x539414
00539410  5b 90 f7 eb                                      bl #0x31d584
00539414  67 0f 84 e2                                      add r0, r4, #0x19c
00539418  43 fd ff eb                                      bl #0x53892c
0053941c  19 0e 84 e2                                      add r0, r4, #0x190
00539420  57 fd ff eb                                      bl #0x538984
00539424  61 0f 84 e2                                      add r0, r4, #0x184
00539428  6b fd ff eb                                      bl #0x5389dc
0053942c  5e 0f 84 e2                                      add r0, r4, #0x178
00539430  7f fd ff eb                                      bl #0x538a34
00539434  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
00539438  00 00 50 e3                                      cmp r0, #0
0053943c  00 00 00 0a                                      beq #0x539444
00539440  02 5c f7 eb                                      bl #0x310450
00539444  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00539448  08 00 a0 e1                                      mov r0, r8
0053944c  01 10 97 e7                                      ldr r1, [r7, r1]
00539450  04 10 81 e2                                      add r1, r1, #4
00539454  f1 fe ff eb                                      bl #0x539020
00539458  04 00 a0 e1                                      mov r0, r4
0053945c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00539460  68 b9 45 00 ec 33 00 00 e4 1f 00 00              .byte 0x68, 0xb9, 0x45, 0x00, 0xec, 0x33, 0x00, 0x00, 0xe4, 0x1f, 0x00, 0x00

; FUNCTION 0x0053946c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZThn8_N6glitch3gui15CGUIEnvironmentD0Ev
; demangled: non-virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
0053946c  08 00 40 e2                                      sub r0, r0, #8
00539470  ff ff ff ea                                      b #0x539474

; FUNCTION 0x00539474, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironmentD0Ev
; demangled: glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
00539474  10 40 2d e9                                      push {r4, lr}
00539478  00 40 a0 e1                                      mov r4, r0
0053947c  25 ff ff eb                                      bl #0x539118
00539480  04 00 a0 e1                                      mov r0, r4
00539484  89 53 f7 eb                                      bl #0x30e2b0
00539488  04 00 a0 e1                                      mov r0, r4
0053948c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00539490, declared_size=832, range_size=832, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironmentD2Ev
; demangled: glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
00539490  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00539494  00 30 91 e5                                      ldr r3, [r1]
00539498  01 70 a0 e1                                      mov r7, r1
0053949c  00 40 a0 e1                                      mov r4, r0
005394a0  00 30 80 e5                                      str r3, [r0]
005394a4  10 20 91 e5                                      ldr r2, [r1, #0x10]
005394a8  08 20 80 e5                                      str r2, [r0, #8]
005394ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005394b0  14 20 91 e5                                      ldr r2, [r1, #0x14]
005394b4  03 20 80 e7                                      str r2, [r0, r3]
005394b8  00 30 90 e5                                      ldr r3, [r0]
005394bc  18 20 91 e5                                      ldr r2, [r1, #0x18]
005394c0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005394c4  03 20 80 e7                                      str r2, [r0, r3]
005394c8  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
005394cc  00 00 53 e3                                      cmp r3, #0
005394d0  08 80 80 02                                      addeq r8, r0, #8
005394d4  08 00 00 0a                                      beq #0x5394fc
005394d8  08 80 80 e2                                      add r8, r0, #8
005394dc  08 00 53 e1                                      cmp r3, r8
005394e0  05 00 00 0a                                      beq #0x5394fc
005394e4  00 20 93 e5                                      ldr r2, [r3]
005394e8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005394ec  00 00 83 e0                                      add r0, r3, r0
005394f0  23 90 f7 eb                                      bl #0x31d584
005394f4  00 30 a0 e3                                      mov r3, #0
005394f8  ac 31 84 e5                                      str r3, [r4, #0x1ac]
005394fc  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
00539500  00 00 50 e3                                      cmp r0, #0
00539504  02 00 00 0a                                      beq #0x539514
00539508  1d 90 f7 eb                                      bl #0x31d584
0053950c  00 30 a0 e3                                      mov r3, #0
00539510  a8 31 84 e5                                      str r3, [r4, #0x1a8]
00539514  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00539518  00 00 53 e3                                      cmp r3, #0
0053951c  05 00 00 0a                                      beq #0x539538
00539520  00 20 93 e5                                      ldr r2, [r3]
00539524  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00539528  00 00 83 e0                                      add r0, r3, r0
0053952c  14 90 f7 eb                                      bl #0x31d584
00539530  00 30 a0 e3                                      mov r3, #0
00539534  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00539538  68 31 94 e5                                      ldr r3, [r4, #0x168]
0053953c  00 00 53 e3                                      cmp r3, #0
00539540  05 00 00 0a                                      beq #0x53955c
00539544  00 20 93 e5                                      ldr r2, [r3]
00539548  10 00 12 e5                                      ldr r0, [r2, #-0x10]
0053954c  00 00 83 e0                                      add r0, r3, r0
00539550  0b 90 f7 eb                                      bl #0x31d584
00539554  00 30 a0 e3                                      mov r3, #0
00539558  68 31 84 e5                                      str r3, [r4, #0x168]
0053955c  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
00539560  00 00 50 e3                                      cmp r0, #0
00539564  02 00 00 0a                                      beq #0x539574
00539568  05 90 f7 eb                                      bl #0x31d584
0053956c  00 30 a0 e3                                      mov r3, #0
00539570  c8 31 84 e5                                      str r3, [r4, #0x1c8]
00539574  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00539578  00 00 53 e3                                      cmp r3, #0
0053957c  05 00 00 0a                                      beq #0x539598
00539580  00 20 93 e5                                      ldr r2, [r3]
00539584  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00539588  00 00 83 e0                                      add r0, r3, r0
0053958c  fc 8f f7 eb                                      bl #0x31d584
00539590  00 30 a0 e3                                      mov r3, #0
00539594  bc 31 84 e5                                      str r3, [r4, #0x1bc]
00539598  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
0053959c  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
005395a0  0c 30 61 e0                                      rsb r3, r1, ip
005395a4  43 31 a0 e1                                      asr r3, r3, #2
005395a8  83 21 83 e0                                      add r2, r3, r3, lsl #3
005395ac  02 23 82 e0                                      add r2, r2, r2, lsl #6
005395b0  82 21 83 e0                                      add r2, r3, r2, lsl #3
005395b4  82 27 82 e0                                      add r2, r2, r2, lsl #15
005395b8  82 31 83 e0                                      add r3, r3, r2, lsl #3
005395bc  00 00 53 e3                                      cmp r3, #0
005395c0  14 00 00 0a                                      beq #0x539618
005395c4  00 50 a0 e3                                      mov r5, #0
005395c8  05 60 a0 e1                                      mov r6, r5
005395cc  05 30 81 e0                                      add r3, r1, r5
005395d0  18 00 93 e5                                      ldr r0, [r3, #0x18]
005395d4  01 60 86 e2                                      add r6, r6, #1
005395d8  1c 50 85 e2                                      add r5, r5, #0x1c
005395dc  00 00 50 e3                                      cmp r0, #0
005395e0  02 00 00 0a                                      beq #0x5395f0
005395e4  e6 8f f7 eb                                      bl #0x31d584
005395e8  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
005395ec  a0 c1 94 e5                                      ldr ip, [r4, #0x1a0]
005395f0  0c 30 61 e0                                      rsb r3, r1, ip
005395f4  43 31 a0 e1                                      asr r3, r3, #2
005395f8  83 21 83 e0                                      add r2, r3, r3, lsl #3
005395fc  02 23 82 e0                                      add r2, r2, r2, lsl #6
00539600  82 21 83 e0                                      add r2, r3, r2, lsl #3
00539604  82 27 82 e0                                      add r2, r2, r2, lsl #15
00539608  82 31 83 e0                                      add r3, r3, r2, lsl #3
0053960c  00 30 63 e2                                      rsb r3, r3, #0
00539610  03 00 56 e1                                      cmp r6, r3
00539614  ec ff ff 3a                                      blo #0x5395cc
00539618  78 21 94 e5                                      ldr r2, [r4, #0x178]
0053961c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00539620  03 30 62 e0                                      rsb r3, r2, r3
00539624  43 31 a0 e1                                      asr r3, r3, #2
00539628  83 11 83 e0                                      add r1, r3, r3, lsl #3
0053962c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00539630  81 11 83 e0                                      add r1, r3, r1, lsl #3
00539634  81 17 81 e0                                      add r1, r1, r1, lsl #15
00539638  81 31 83 e0                                      add r3, r3, r1, lsl #3
0053963c  00 00 53 e3                                      cmp r3, #0
00539640  12 00 00 0a                                      beq #0x539690
00539644  00 50 a0 e3                                      mov r5, #0
00539648  05 60 a0 e1                                      mov r6, r5
0053964c  05 20 82 e0                                      add r2, r2, r5
00539650  18 00 92 e5                                      ldr r0, [r2, #0x18]
00539654  ca 8f f7 eb                                      bl #0x31d584
00539658  78 21 94 e5                                      ldr r2, [r4, #0x178]
0053965c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00539660  01 60 86 e2                                      add r6, r6, #1
00539664  1c 50 85 e2                                      add r5, r5, #0x1c
00539668  03 30 62 e0                                      rsb r3, r2, r3
0053966c  43 31 a0 e1                                      asr r3, r3, #2
00539670  83 11 83 e0                                      add r1, r3, r3, lsl #3
00539674  01 13 81 e0                                      add r1, r1, r1, lsl #6
00539678  81 11 83 e0                                      add r1, r3, r1, lsl #3
0053967c  81 17 81 e0                                      add r1, r1, r1, lsl #15
00539680  81 31 83 e0                                      add r3, r3, r1, lsl #3
00539684  00 30 63 e2                                      rsb r3, r3, #0
00539688  03 00 56 e1                                      cmp r6, r3
0053968c  ee ff ff 3a                                      blo #0x53964c
00539690  90 21 94 e5                                      ldr r2, [r4, #0x190]
00539694  94 31 94 e5                                      ldr r3, [r4, #0x194]
00539698  03 30 62 e0                                      rsb r3, r2, r3
0053969c  43 31 a0 e1                                      asr r3, r3, #2
005396a0  83 11 83 e0                                      add r1, r3, r3, lsl #3
005396a4  01 13 81 e0                                      add r1, r1, r1, lsl #6
005396a8  81 11 83 e0                                      add r1, r3, r1, lsl #3
005396ac  81 17 81 e0                                      add r1, r1, r1, lsl #15
005396b0  81 31 83 e0                                      add r3, r3, r1, lsl #3
005396b4  00 00 53 e3                                      cmp r3, #0
005396b8  12 00 00 0a                                      beq #0x539708
005396bc  00 50 a0 e3                                      mov r5, #0
005396c0  05 60 a0 e1                                      mov r6, r5
005396c4  05 20 82 e0                                      add r2, r2, r5
005396c8  18 00 92 e5                                      ldr r0, [r2, #0x18]
005396cc  ac 8f f7 eb                                      bl #0x31d584
005396d0  90 21 94 e5                                      ldr r2, [r4, #0x190]
005396d4  94 31 94 e5                                      ldr r3, [r4, #0x194]
005396d8  01 60 86 e2                                      add r6, r6, #1
005396dc  1c 50 85 e2                                      add r5, r5, #0x1c
005396e0  03 30 62 e0                                      rsb r3, r2, r3
005396e4  43 31 a0 e1                                      asr r3, r3, #2
005396e8  83 11 83 e0                                      add r1, r3, r3, lsl #3
005396ec  01 13 81 e0                                      add r1, r1, r1, lsl #6
005396f0  81 11 83 e0                                      add r1, r3, r1, lsl #3
005396f4  81 17 81 e0                                      add r1, r1, r1, lsl #15
005396f8  81 31 83 e0                                      add r3, r3, r1, lsl #3
005396fc  00 30 63 e2                                      rsb r3, r3, #0
00539700  03 00 56 e1                                      cmp r6, r3
00539704  ee ff ff 3a                                      blo #0x5396c4
00539708  84 31 94 e5                                      ldr r3, [r4, #0x184]
0053970c  88 21 94 e5                                      ldr r2, [r4, #0x188]
00539710  02 20 63 e0                                      rsb r2, r3, r2
00539714  a2 22 b0 e1                                      lsrs r2, r2, #5
00539718  09 00 00 0a                                      beq #0x539744
0053971c  00 50 a0 e3                                      mov r5, #0
00539720  85 32 83 e0                                      add r3, r3, r5, lsl #5
00539724  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00539728  95 8f f7 eb                                      bl #0x31d584
0053972c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00539730  88 21 94 e5                                      ldr r2, [r4, #0x188]
00539734  01 50 85 e2                                      add r5, r5, #1
00539738  02 20 63 e0                                      rsb r2, r3, r2
0053973c  c2 02 55 e1                                      cmp r5, r2, asr #5
00539740  f6 ff ff 3a                                      blo #0x539720
00539744  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
00539748  70 21 94 e5                                      ldr r2, [r4, #0x170]
0053974c  02 20 63 e0                                      rsb r2, r3, r2
00539750  22 21 b0 e1                                      lsrs r2, r2, #2
00539754  08 00 00 0a                                      beq #0x53977c
00539758  00 50 a0 e3                                      mov r5, #0
0053975c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00539760  87 8f f7 eb                                      bl #0x31d584
00539764  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
00539768  70 21 94 e5                                      ldr r2, [r4, #0x170]
0053976c  01 50 85 e2                                      add r5, r5, #1
00539770  02 20 63 e0                                      rsb r2, r3, r2
00539774  42 01 55 e1                                      cmp r5, r2, asr #2
00539778  f7 ff ff 3a                                      blo #0x53975c
0053977c  c0 01 94 e5                                      ldr r0, [r4, #0x1c0]
00539780  00 00 50 e3                                      cmp r0, #0
00539784  00 00 00 0a                                      beq #0x53978c
00539788  7d 8f f7 eb                                      bl #0x31d584
0053978c  67 0f 84 e2                                      add r0, r4, #0x19c
00539790  65 fc ff eb                                      bl #0x53892c
00539794  19 0e 84 e2                                      add r0, r4, #0x190
00539798  79 fc ff eb                                      bl #0x538984
0053979c  61 0f 84 e2                                      add r0, r4, #0x184
005397a0  8d fc ff eb                                      bl #0x5389dc
005397a4  5e 0f 84 e2                                      add r0, r4, #0x178
005397a8  a1 fc ff eb                                      bl #0x538a34
005397ac  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
005397b0  00 00 50 e3                                      cmp r0, #0
005397b4  00 00 00 0a                                      beq #0x5397bc
005397b8  24 5b f7 eb                                      bl #0x310450
005397bc  08 00 a0 e1                                      mov r0, r8
005397c0  04 10 87 e2                                      add r1, r7, #4
005397c4  15 fe ff eb                                      bl #0x539020
005397c8  04 00 a0 e1                                      mov r0, r4
005397cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00539ef0, declared_size=464, range_size=464, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment15loadBuiltInFontEv
; demangled: glitch::gui::CGUIEnvironment::loadBuiltInFont()
; decoder-mode: arm
00539ef0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00539ef4  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
00539ef8  ac b1 9f e5                                      ldr fp, [pc, #0x1ac]
00539efc  a8 51 90 e5                                      ldr r5, [r0, #0x1a8]
00539f00  04 40 8f e0                                      add r4, pc, r4
00539f04  0b 30 94 e7                                      ldr r3, [r4, fp]
00539f08  2c d0 4d e2                                      sub sp, sp, #0x2c
00539f0c  00 00 55 e3                                      cmp r5, #0
00539f10  00 30 93 e5                                      ldr r3, [r3]
00539f14  00 70 a0 e1                                      mov r7, r0
00539f18  24 30 8d e5                                      str r3, [sp, #0x24]
00539f1c  02 00 00 0a                                      beq #0x539f2c
00539f20  88 30 95 e5                                      ldr r3, [r5, #0x88]
00539f24  02 0a 13 e3                                      tst r3, #0x2000
00539f28  44 00 00 1a                                      bne #0x53a040
00539f2c  00 30 a0 e3                                      mov r3, #0
00539f30  04 30 8d e5                                      str r3, [sp, #4]
00539f34  74 31 9f e5                                      ldr r3, [pc, #0x174]
00539f38  74 61 9f e5                                      ldr r6, [pc, #0x174]
00539f3c  74 21 9f e5                                      ldr r2, [pc, #0x174]
00539f40  03 30 94 e7                                      ldr r3, [r4, r3]
00539f44  06 60 8f e0                                      add r6, pc, r6
00539f48  02 00 94 e7                                      ldr r0, [r4, r2]
00539f4c  00 10 93 e5                                      ldr r1, [r3]
00539f50  06 20 a0 e1                                      mov r2, r6
00539f54  00 30 a0 e3                                      mov r3, #0
00539f58  04 d5 00 eb                                      bl #0x56f370
00539f5c  00 10 a0 e3                                      mov r1, #0
00539f60  00 90 a0 e1                                      mov sb, r0
00539f64  48 00 a0 e3                                      mov r0, #0x48
00539f68  8f e8 ff eb                                      bl #0x5341ac
00539f6c  07 10 a0 e1                                      mov r1, r7
00539f70  00 a0 a0 e1                                      mov sl, r0
00539f74  06 20 a0 e1                                      mov r2, r6
00539f78  61 0f 00 eb                                      bl #0x53dd04
00539f7c  0a 00 a0 e1                                      mov r0, sl
00539f80  09 10 a0 e1                                      mov r1, sb
00539f84  f5 16 00 eb                                      bl #0x53fb60
00539f88  00 00 50 e3                                      cmp r0, #0
00539f8c  34 00 00 0a                                      beq #0x53a064
00539f90  08 80 8d e2                                      add r8, sp, #8
00539f94  08 00 a0 e1                                      mov r0, r8
00539f98  10 10 a0 e3                                      mov r1, #0x10
00539f9c  18 80 8d e5                                      str r8, [sp, #0x18]
00539fa0  1c 80 8d e5                                      str r8, [sp, #0x1c]
00539fa4  7f 9a f7 eb                                      bl #0x3209a8
00539fa8  18 30 9d e5                                      ldr r3, [sp, #0x18]
00539fac  00 20 a0 e3                                      mov r2, #0
00539fb0  06 10 a0 e1                                      mov r1, r6
00539fb4  00 20 c3 e5                                      strb r2, [r3]
00539fb8  08 00 a0 e1                                      mov r0, r8
00539fbc  0c 20 86 e2                                      add r2, r6, #0xc
00539fc0  f0 9a f7 eb                                      bl #0x320b88
00539fc4  5e 0f 87 e2                                      add r0, r7, #0x178
00539fc8  08 10 a0 e1                                      mov r1, r8
00539fcc  20 a0 8d e5                                      str sl, [sp, #0x20]
00539fd0  ad fa ff eb                                      bl #0x538a8c
00539fd4  09 00 a0 e1                                      mov r0, sb
00539fd8  69 8d f7 eb                                      bl #0x31d584
00539fdc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00539fe0  08 00 50 e1                                      cmp r0, r8
00539fe4  02 00 00 0a                                      beq #0x539ff4
00539fe8  00 00 50 e3                                      cmp r0, #0
00539fec  00 00 00 0a                                      beq #0x539ff4
00539ff0  16 59 f7 eb                                      bl #0x310450
00539ff4  00 00 55 e3                                      cmp r5, #0
00539ff8  09 00 00 0a                                      beq #0x53a024
00539ffc  88 30 95 e5                                      ldr r3, [r5, #0x88]
0053a000  04 20 9d e5                                      ldr r2, [sp, #4]
0053a004  d3 36 e0 e7                                      ubfx r3, r3, #0xd, #1
0053a008  03 00 52 e1                                      cmp r2, r3
0053a00c  04 00 00 0a                                      beq #0x53a024
0053a010  05 00 a0 e1                                      mov r0, r5
0053a014  00 30 95 e5                                      ldr r3, [r5]
0053a018  02 1a a0 e3                                      mov r1, #0x2000
0053a01c  0f e0 a0 e1                                      mov lr, pc
0053a020  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053a024  0b 30 94 e7                                      ldr r3, [r4, fp]
0053a028  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053a02c  00 30 93 e5                                      ldr r3, [r3]
0053a030  03 00 52 e1                                      cmp r2, r3
0053a034  1a 00 00 1a                                      bne #0x53a0a4
0053a038  2c d0 8d e2                                      add sp, sp, #0x2c
0053a03c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053a040  00 20 a0 e3                                      mov r2, #0
0053a044  00 30 95 e5                                      ldr r3, [r5]
0053a048  05 00 a0 e1                                      mov r0, r5
0053a04c  02 1a a0 e3                                      mov r1, #0x2000
0053a050  0f e0 a0 e1                                      mov lr, pc
0053a054  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0053a058  01 20 a0 e3                                      mov r2, #1
0053a05c  04 20 8d e5                                      str r2, [sp, #4]
0053a060  b3 ff ff ea                                      b #0x539f34
0053a064  50 00 9f e5                                      ldr r0, [pc, #0x50]
0053a068  03 10 a0 e3                                      mov r1, #3
0053a06c  00 00 8f e0                                      add r0, pc, r0
0053a070  0a 43 03 eb                                      bl #0x60aca0
0053a074  0a 00 a0 e1                                      mov r0, sl
0053a078  41 8d f7 eb                                      bl #0x31d584
0053a07c  09 00 a0 e1                                      mov r0, sb
0053a080  3f 8d f7 eb                                      bl #0x31d584
0053a084  00 00 55 e3                                      cmp r5, #0
0053a088  e5 ff ff 0a                                      beq #0x53a024
0053a08c  88 30 95 e5                                      ldr r3, [r5, #0x88]
0053a090  04 20 9d e5                                      ldr r2, [sp, #4]
0053a094  d3 36 e0 e7                                      ubfx r3, r3, #0xd, #1
0053a098  02 00 53 e1                                      cmp r3, r2
0053a09c  db ff ff 1a                                      bne #0x53a010
0053a0a0  df ff ff ea                                      b #0x53a024
0053a0a4  99 50 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053a0a8  90 ab 45 00 ac 40 00 00 2c 34 00 00 5c 3f 3a 00  .byte 0x90, 0xab, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x34, 0x00, 0x00, 0x5c, 0x3f, 0x3a, 0x00
0053a0b8  28 44 00 00 44 3e 3a 00                          .byte 0x28, 0x44, 0x00, 0x00, 0x44, 0x3e, 0x3a, 0x00

; FUNCTION 0x0053a0c0, declared_size=528, range_size=528, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironmentC1ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
; demangled: glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)
; decoder-mode: arm
0053a0c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0053a0c4  f0 51 9f e5                                      ldr r5, [pc, #0x1f0]
0053a0c8  f0 61 9f e5                                      ldr r6, [pc, #0x1f0]
0053a0cc  f0 e1 9f e5                                      ldr lr, [pc, #0x1f0]
0053a0d0  05 50 8f e0                                      add r5, pc, r5
0053a0d4  06 70 95 e7                                      ldr r7, [r5, r6]
0053a0d8  0e e0 95 e7                                      ldr lr, [r5, lr]
0053a0dc  e4 c1 9f e5                                      ldr ip, [pc, #0x1e4]
0053a0e0  1c 80 97 e5                                      ldr r8, [r7, #0x1c]
0053a0e4  01 a0 a0 e3                                      mov sl, #1
0053a0e8  08 e0 8e e2                                      add lr, lr, #8
0053a0ec  d4 a1 80 e5                                      str sl, [r0, #0x1d4]
0053a0f0  cc 81 80 e5                                      str r8, [r0, #0x1cc]
0053a0f4  d0 e1 80 e5                                      str lr, [r0, #0x1d0]
0053a0f8  0c c0 95 e7                                      ldr ip, [r5, ip]
0053a0fc  0c e0 18 e5                                      ldr lr, [r8, #-0xc]
0053a100  20 80 97 e5                                      ldr r8, [r7, #0x20]
0053a104  00 40 a0 e1                                      mov r4, r0
0053a108  08 c0 8c e2                                      add ip, ip, #8
0053a10c  00 70 52 e2                                      subs r7, r2, #0
0053a110  73 2f 80 e2                                      add r2, r0, #0x1cc
0053a114  0e 80 82 e7                                      str r8, [r2, lr]
0053a118  04 a0 84 e5                                      str sl, [r4, #4]
0053a11c  08 c0 80 e4                                      str ip, [r0], #8
0053a120  03 80 a0 e1                                      mov r8, r3
0053a124  cc 30 97 15                                      ldrne r3, [r7, #0xcc]
0053a128  01 a0 a0 e1                                      mov sl, r1
0053a12c  06 10 95 e7                                      ldr r1, [r5, r6]
0053a130  04 30 13 15                                      ldrne r3, [r3, #-4]
0053a134  14 d0 4d e2                                      sub sp, sp, #0x14
0053a138  00 60 a0 e3                                      mov r6, #0
0053a13c  0c c0 93 15                                      ldrne ip, [r3, #0xc]
0053a140  10 30 93 15                                      ldrne r3, [r3, #0x10]
0053a144  07 c0 a0 01                                      moveq ip, r7
0053a148  07 30 a0 01                                      moveq r3, r7
0053a14c  0d 20 a0 e1                                      mov r2, sp
0053a150  04 10 81 e2                                      add r1, r1, #4
0053a154  08 c0 8d e5                                      str ip, [sp, #8]
0053a158  0c 30 8d e5                                      str r3, [sp, #0xc]
0053a15c  00 60 8d e5                                      str r6, [sp]
0053a160  04 60 8d e5                                      str r6, [sp, #4]
0053a164  6e f5 ff eb                                      bl #0x537724
0053a168  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
0053a16c  a8 71 84 e5                                      str r7, [r4, #0x1a8]
0053a170  bc 61 84 e5                                      str r6, [r4, #0x1bc]
0053a174  03 30 95 e7                                      ldr r3, [r5, r3]
0053a178  6c 61 84 e5                                      str r6, [r4, #0x16c]
0053a17c  70 61 84 e5                                      str r6, [r4, #0x170]
0053a180  79 2f 83 e2                                      add r2, r3, #0x1e4
0053a184  10 00 83 e2                                      add r0, r3, #0x10
0053a188  13 1e 83 e2                                      add r1, r3, #0x130
0053a18c  71 3f 83 e2                                      add r3, r3, #0x1c4
0053a190  d0 21 84 e5                                      str r2, [r4, #0x1d0]
0053a194  00 00 84 e5                                      str r0, [r4]
0053a198  08 10 84 e5                                      str r1, [r4, #8]
0053a19c  cc 31 84 e5                                      str r3, [r4, #0x1cc]
0053a1a0  74 61 84 e5                                      str r6, [r4, #0x174]
0053a1a4  78 61 84 e5                                      str r6, [r4, #0x178]
0053a1a8  7c 61 84 e5                                      str r6, [r4, #0x17c]
0053a1ac  80 61 84 e5                                      str r6, [r4, #0x180]
0053a1b0  84 61 84 e5                                      str r6, [r4, #0x184]
0053a1b4  88 61 84 e5                                      str r6, [r4, #0x188]
0053a1b8  8c 61 84 e5                                      str r6, [r4, #0x18c]
0053a1bc  90 61 84 e5                                      str r6, [r4, #0x190]
0053a1c0  94 61 84 e5                                      str r6, [r4, #0x194]
0053a1c4  98 61 84 e5                                      str r6, [r4, #0x198]
0053a1c8  9c 61 84 e5                                      str r6, [r4, #0x19c]
0053a1cc  a0 61 84 e5                                      str r6, [r4, #0x1a0]
0053a1d0  a4 61 84 e5                                      str r6, [r4, #0x1a4]
0053a1d4  ac 61 84 e5                                      str r6, [r4, #0x1ac]
0053a1d8  b0 61 84 e5                                      str r6, [r4, #0x1b0]
0053a1dc  b4 61 84 e5                                      str r6, [r4, #0x1b4]
0053a1e0  b8 61 84 e5                                      str r6, [r4, #0x1b8]
0053a1e4  00 30 9a e5                                      ldr r3, [sl]
0053a1e8  00 10 a0 e3                                      mov r1, #0
0053a1ec  0c 00 a0 e3                                      mov r0, #0xc
0053a1f0  06 00 53 e1                                      cmp r3, r6
0053a1f4  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0053a1f8  04 20 93 15                                      ldrne r2, [r3, #4]
0053a1fc  01 20 82 12                                      addne r2, r2, #1
0053a200  04 20 83 15                                      strne r2, [r3, #4]
0053a204  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
0053a208  00 20 a0 e3                                      mov r2, #0
0053a20c  c4 21 84 e5                                      str r2, [r4, #0x1c4]
0053a210  02 00 53 e1                                      cmp r3, r2
0053a214  c8 81 84 e5                                      str r8, [r4, #0x1c8]
0053a218  04 20 93 15                                      ldrne r2, [r3, #4]
0053a21c  01 20 82 12                                      addne r2, r2, #1
0053a220  04 20 83 15                                      strne r2, [r3, #4]
0053a224  c8 81 94 15                                      ldrne r8, [r4, #0x1c8]
0053a228  00 00 58 e3                                      cmp r8, #0
0053a22c  04 30 98 15                                      ldrne r3, [r8, #4]
0053a230  01 30 83 12                                      addne r3, r3, #1
0053a234  04 30 88 15                                      strne r3, [r8, #4]
0053a238  db e7 ff eb                                      bl #0x5341ac
0053a23c  04 10 a0 e1                                      mov r1, r4
0053a240  00 50 a0 e1                                      mov r5, r0
0053a244  34 ad 05 eb                                      bl #0x6a571c
0053a248  05 10 a0 e1                                      mov r1, r5
0053a24c  04 00 a0 e1                                      mov r0, r4
0053a250  d5 f6 ff eb                                      bl #0x537dac
0053a254  05 00 a0 e1                                      mov r0, r5
0053a258  c9 8c f7 eb                                      bl #0x31d584
0053a25c  04 00 a0 e1                                      mov r0, r4
0053a260  22 ff ff eb                                      bl #0x539ef0
0053a264  04 00 a0 e1                                      mov r0, r4
0053a268  01 10 a0 e3                                      mov r1, #1
0053a26c  73 f4 ff eb                                      bl #0x537440
0053a270  00 50 a0 e1                                      mov r5, r0
0053a274  05 10 a0 e1                                      mov r1, r5
0053a278  04 00 a0 e1                                      mov r0, r4
0053a27c  3d ed ff eb                                      bl #0x535778
0053a280  00 30 95 e5                                      ldr r3, [r5]
0053a284  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0053a288  00 00 85 e0                                      add r0, r5, r0
0053a28c  bc 8c f7 eb                                      bl #0x31d584
0053a290  fa 2f a0 e3                                      mov r2, #0x3e8
0053a294  00 30 a0 e3                                      mov r3, #0
0053a298  64 21 84 e5                                      str r2, [r4, #0x164]
0053a29c  01 20 a0 e3                                      mov r2, #1
0053a2a0  68 31 84 e5                                      str r3, [r4, #0x168]
0053a2a4  44 21 c4 e5                                      strb r2, [r4, #0x144]
0053a2a8  60 31 84 e5                                      str r3, [r4, #0x160]
0053a2ac  58 41 84 e5                                      str r4, [r4, #0x158]
0053a2b0  04 00 a0 e1                                      mov r0, r4
0053a2b4  14 d0 8d e2                                      add sp, sp, #0x14
0053a2b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0053a2bc  c0 a9 45 00 e4 1f 00 00 44 2b 00 00 e0 26 00 00  .byte 0xc0, 0xa9, 0x45, 0x00, 0xe4, 0x1f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x26, 0x00, 0x00
0053a2cc  ec 33 00 00                                      .byte 0xec, 0x33, 0x00, 0x00

; FUNCTION 0x0053a308, declared_size=468, range_size=468, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironmentC2ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
; demangled: glitch::gui::CGUIEnvironment::CGUIEnvironment(boost::intrusive_ptr<glitch::io::IFileSystem> const&, glitch::video::IVideoDriver*, glitch::IOSOperator*)
; decoder-mode: arm
0053a308  c4 c1 9f e5                                      ldr ip, [pc, #0x1c4]
0053a30c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0053a310  c0 e1 9f e5                                      ldr lr, [pc, #0x1c0]
0053a314  0c c0 8f e0                                      add ip, pc, ip
0053a318  00 40 a0 e1                                      mov r4, r0
0053a31c  0e e0 9c e7                                      ldr lr, [ip, lr]
0053a320  00 80 53 e2                                      subs r8, r3, #0
0053a324  01 30 a0 e3                                      mov r3, #1
0053a328  08 e0 8e e2                                      add lr, lr, #8
0053a32c  04 30 84 e5                                      str r3, [r4, #4]
0053a330  08 e0 80 e4                                      str lr, [r0], #8
0053a334  cc 30 98 15                                      ldrne r3, [r8, #0xcc]
0053a338  14 d0 4d e2                                      sub sp, sp, #0x14
0053a33c  00 60 a0 e3                                      mov r6, #0
0053a340  04 30 13 15                                      ldrne r3, [r3, #-4]
0053a344  08 c0 a0 01                                      moveq ip, r8
0053a348  01 50 a0 e1                                      mov r5, r1
0053a34c  0c c0 93 15                                      ldrne ip, [r3, #0xc]
0053a350  10 30 93 15                                      ldrne r3, [r3, #0x10]
0053a354  08 30 a0 01                                      moveq r3, r8
0053a358  02 a0 a0 e1                                      mov sl, r2
0053a35c  04 10 81 e2                                      add r1, r1, #4
0053a360  0d 20 a0 e1                                      mov r2, sp
0053a364  08 c0 8d e5                                      str ip, [sp, #8]
0053a368  30 70 9d e5                                      ldr r7, [sp, #0x30]
0053a36c  0c 30 8d e5                                      str r3, [sp, #0xc]
0053a370  00 60 8d e5                                      str r6, [sp]
0053a374  04 60 8d e5                                      str r6, [sp, #4]
0053a378  e9 f4 ff eb                                      bl #0x537724
0053a37c  00 30 95 e5                                      ldr r3, [r5]
0053a380  00 10 a0 e3                                      mov r1, #0
0053a384  0c 00 a0 e3                                      mov r0, #0xc
0053a388  00 30 84 e5                                      str r3, [r4]
0053a38c  10 20 95 e5                                      ldr r2, [r5, #0x10]
0053a390  08 20 84 e5                                      str r2, [r4, #8]
0053a394  14 20 95 e5                                      ldr r2, [r5, #0x14]
0053a398  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053a39c  03 20 84 e7                                      str r2, [r4, r3]
0053a3a0  00 30 94 e5                                      ldr r3, [r4]
0053a3a4  18 20 95 e5                                      ldr r2, [r5, #0x18]
0053a3a8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053a3ac  03 20 84 e7                                      str r2, [r4, r3]
0053a3b0  a8 81 84 e5                                      str r8, [r4, #0x1a8]
0053a3b4  bc 61 84 e5                                      str r6, [r4, #0x1bc]
0053a3b8  6c 61 84 e5                                      str r6, [r4, #0x16c]
0053a3bc  70 61 84 e5                                      str r6, [r4, #0x170]
0053a3c0  74 61 84 e5                                      str r6, [r4, #0x174]
0053a3c4  78 61 84 e5                                      str r6, [r4, #0x178]
0053a3c8  7c 61 84 e5                                      str r6, [r4, #0x17c]
0053a3cc  80 61 84 e5                                      str r6, [r4, #0x180]
0053a3d0  84 61 84 e5                                      str r6, [r4, #0x184]
0053a3d4  88 61 84 e5                                      str r6, [r4, #0x188]
0053a3d8  8c 61 84 e5                                      str r6, [r4, #0x18c]
0053a3dc  90 61 84 e5                                      str r6, [r4, #0x190]
0053a3e0  94 61 84 e5                                      str r6, [r4, #0x194]
0053a3e4  98 61 84 e5                                      str r6, [r4, #0x198]
0053a3e8  9c 61 84 e5                                      str r6, [r4, #0x19c]
0053a3ec  a0 61 84 e5                                      str r6, [r4, #0x1a0]
0053a3f0  a4 61 84 e5                                      str r6, [r4, #0x1a4]
0053a3f4  ac 61 84 e5                                      str r6, [r4, #0x1ac]
0053a3f8  b0 61 84 e5                                      str r6, [r4, #0x1b0]
0053a3fc  b4 61 84 e5                                      str r6, [r4, #0x1b4]
0053a400  b8 61 84 e5                                      str r6, [r4, #0x1b8]
0053a404  00 30 9a e5                                      ldr r3, [sl]
0053a408  06 00 53 e1                                      cmp r3, r6
0053a40c  c0 31 84 e5                                      str r3, [r4, #0x1c0]
0053a410  04 20 93 15                                      ldrne r2, [r3, #4]
0053a414  01 20 82 12                                      addne r2, r2, #1
0053a418  04 20 83 15                                      strne r2, [r3, #4]
0053a41c  a8 31 94 e5                                      ldr r3, [r4, #0x1a8]
0053a420  00 20 a0 e3                                      mov r2, #0
0053a424  c4 21 84 e5                                      str r2, [r4, #0x1c4]
0053a428  02 00 53 e1                                      cmp r3, r2
0053a42c  c8 71 84 e5                                      str r7, [r4, #0x1c8]
0053a430  04 20 93 15                                      ldrne r2, [r3, #4]
0053a434  01 20 82 12                                      addne r2, r2, #1
0053a438  04 20 83 15                                      strne r2, [r3, #4]
0053a43c  c8 71 94 15                                      ldrne r7, [r4, #0x1c8]
0053a440  00 00 57 e3                                      cmp r7, #0
0053a444  04 30 97 15                                      ldrne r3, [r7, #4]
0053a448  01 30 83 12                                      addne r3, r3, #1
0053a44c  04 30 87 15                                      strne r3, [r7, #4]
0053a450  55 e7 ff eb                                      bl #0x5341ac
0053a454  04 10 a0 e1                                      mov r1, r4
0053a458  00 50 a0 e1                                      mov r5, r0
0053a45c  ae ac 05 eb                                      bl #0x6a571c
0053a460  05 10 a0 e1                                      mov r1, r5
0053a464  04 00 a0 e1                                      mov r0, r4
0053a468  4f f6 ff eb                                      bl #0x537dac
0053a46c  05 00 a0 e1                                      mov r0, r5
0053a470  43 8c f7 eb                                      bl #0x31d584
0053a474  04 00 a0 e1                                      mov r0, r4
0053a478  9c fe ff eb                                      bl #0x539ef0
0053a47c  04 00 a0 e1                                      mov r0, r4
0053a480  01 10 a0 e3                                      mov r1, #1
0053a484  ed f3 ff eb                                      bl #0x537440
0053a488  00 50 a0 e1                                      mov r5, r0
0053a48c  05 10 a0 e1                                      mov r1, r5
0053a490  04 00 a0 e1                                      mov r0, r4
0053a494  b7 ec ff eb                                      bl #0x535778
0053a498  00 30 95 e5                                      ldr r3, [r5]
0053a49c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0053a4a0  00 00 85 e0                                      add r0, r5, r0
0053a4a4  36 8c f7 eb                                      bl #0x31d584
0053a4a8  fa 2f a0 e3                                      mov r2, #0x3e8
0053a4ac  00 30 a0 e3                                      mov r3, #0
0053a4b0  64 21 84 e5                                      str r2, [r4, #0x164]
0053a4b4  01 20 a0 e3                                      mov r2, #1
0053a4b8  68 31 84 e5                                      str r3, [r4, #0x168]
0053a4bc  44 21 c4 e5                                      strb r2, [r4, #0x144]
0053a4c0  60 31 84 e5                                      str r3, [r4, #0x160]
0053a4c4  58 41 84 e5                                      str r4, [r4, #0x158]
0053a4c8  04 00 a0 e1                                      mov r0, r4
0053a4cc  14 d0 8d e2                                      add sp, sp, #0x14
0053a4d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0053a4d4  7c a7 45 00 e0 26 00 00                          .byte 0x7c, 0xa7, 0x45, 0x00, 0xe0, 0x26, 0x00, 0x00

; FUNCTION 0x0053a4dc, declared_size=440, range_size=440, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment16removeTTFontFaceEPKc
; demangled: glitch::gui::CGUIEnvironment::removeTTFontFace(char const*)
; decoder-mode: arm
0053a4dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053a4e0  a0 71 9f e5                                      ldr r7, [pc, #0x1a0]
0053a4e4  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
0053a4e8  2c d0 4d e2                                      sub sp, sp, #0x2c
0053a4ec  07 70 8f e0                                      add r7, pc, r7
0053a4f0  08 30 97 e7                                      ldr r3, [r7, r8]
0053a4f4  08 60 8d e2                                      add r6, sp, #8
0053a4f8  01 50 a0 e1                                      mov r5, r1
0053a4fc  00 30 93 e5                                      ldr r3, [r3]
0053a500  00 40 a0 e1                                      mov r4, r0
0053a504  10 10 a0 e3                                      mov r1, #0x10
0053a508  06 00 a0 e1                                      mov r0, r6
0053a50c  24 30 8d e5                                      str r3, [sp, #0x24]
0053a510  18 60 8d e5                                      str r6, [sp, #0x18]
0053a514  1c 60 8d e5                                      str r6, [sp, #0x1c]
0053a518  22 99 f7 eb                                      bl #0x3209a8
0053a51c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0053a520  00 20 a0 e3                                      mov r2, #0
0053a524  00 00 55 e3                                      cmp r5, #0
0053a528  00 20 c3 e5                                      strb r2, [r3]
0053a52c  4e 00 00 0a                                      beq #0x53a66c
0053a530  05 00 a0 e1                                      mov r0, r5
0053a534  46 4e f7 eb                                      bl #0x30de54
0053a538  05 10 a0 e1                                      mov r1, r5
0053a53c  00 20 85 e0                                      add r2, r5, r0
0053a540  06 00 a0 e1                                      mov r0, r6
0053a544  8f 99 f7 eb                                      bl #0x320b88
0053a548  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053a54c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0053a550  02 00 53 e1                                      cmp r3, r2
0053a554  0f 00 00 0a                                      beq #0x53a598
0053a558  00 30 a0 e3                                      mov r3, #0
0053a55c  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053a560  03 20 82 e0                                      add r2, r2, r3
0053a564  01 30 83 e2                                      add r3, r3, #1
0053a568  71 00 ef e6                                      uxtb r0, r1
0053a56c  41 c0 40 e2                                      sub ip, r0, #0x41
0053a570  7c c0 ef e6                                      uxtb ip, ip
0053a574  19 00 5c e3                                      cmp ip, #0x19
0053a578  20 10 80 92                                      addls r1, r0, #0x20
0053a57c  71 10 ef 96                                      uxtbls r1, r1
0053a580  00 10 c2 e5                                      strb r1, [r2]
0053a584  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053a588  18 10 9d e5                                      ldr r1, [sp, #0x18]
0053a58c  01 10 62 e0                                      rsb r1, r2, r1
0053a590  01 00 53 e1                                      cmp r3, r1
0053a594  f0 ff ff 3a                                      blo #0x53a55c
0053a598  19 9e 84 e2                                      add sb, r4, #0x190
0053a59c  09 00 a0 e1                                      mov r0, sb
0053a5a0  06 10 a0 e1                                      mov r1, r6
0053a5a4  08 f8 ff eb                                      bl #0x5385cc
0053a5a8  01 00 70 e3                                      cmn r0, #1
0053a5ac  00 b0 a0 e1                                      mov fp, r0
0053a5b0  11 00 00 0a                                      beq #0x53a5fc
0053a5b4  84 01 94 e5                                      ldr r0, [r4, #0x184]
0053a5b8  88 31 94 e5                                      ldr r3, [r4, #0x188]
0053a5bc  03 30 60 e0                                      rsb r3, r0, r3
0053a5c0  a3 32 b0 e1                                      lsrs r3, r3, #5
0053a5c4  1b 00 00 0a                                      beq #0x53a638
0053a5c8  00 a0 a0 e3                                      mov sl, #0
0053a5cc  05 00 00 ea                                      b #0x53a5e8
0053a5d0  84 01 94 e5                                      ldr r0, [r4, #0x184]
0053a5d4  88 31 94 e5                                      ldr r3, [r4, #0x188]
0053a5d8  01 a0 8a e2                                      add sl, sl, #1
0053a5dc  03 30 60 e0                                      rsb r3, r0, r3
0053a5e0  c3 02 5a e1                                      cmp sl, r3, asr #5
0053a5e4  13 00 00 2a                                      bhs #0x53a638
0053a5e8  8a 02 80 e0                                      add r0, r0, sl, lsl #5
0053a5ec  05 10 a0 e1                                      mov r1, r5
0053a5f0  52 ef ff eb                                      bl #0x536340
0053a5f4  00 00 50 e3                                      cmp r0, #0
0053a5f8  f4 ff ff 0a                                      beq #0x53a5d0
0053a5fc  00 50 a0 e3                                      mov r5, #0
0053a600  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0053a604  06 00 50 e1                                      cmp r0, r6
0053a608  02 00 00 0a                                      beq #0x53a618
0053a60c  00 00 50 e3                                      cmp r0, #0
0053a610  00 00 00 0a                                      beq #0x53a618
0053a614  8d 57 f7 eb                                      bl #0x310450
0053a618  08 30 97 e7                                      ldr r3, [r7, r8]
0053a61c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053a620  05 00 a0 e1                                      mov r0, r5
0053a624  00 30 93 e5                                      ldr r3, [r3]
0053a628  03 00 52 e1                                      cmp r2, r3
0053a62c  14 00 00 1a                                      bne #0x53a684
0053a630  2c d0 8d e2                                      add sp, sp, #0x2c
0053a634  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053a638  1c 30 a0 e3                                      mov r3, #0x1c
0053a63c  93 0b 0b e0                                      mul fp, r3, fp
0053a640  90 31 94 e5                                      ldr r3, [r4, #0x190]
0053a644  01 50 a0 e3                                      mov r5, #1
0053a648  0b 30 83 e0                                      add r3, r3, fp
0053a64c  18 00 93 e5                                      ldr r0, [r3, #0x18]
0053a650  cb 8b f7 eb                                      bl #0x31d584
0053a654  90 11 94 e5                                      ldr r1, [r4, #0x190]
0053a658  09 00 a0 e1                                      mov r0, sb
0053a65c  04 20 8d e2                                      add r2, sp, #4
0053a660  0b 10 81 e0                                      add r1, r1, fp
0053a664  53 fa ff eb                                      bl #0x538fb8
0053a668  e4 ff ff ea                                      b #0x53a600
0053a66c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0053a670  06 00 a0 e1                                      mov r0, r6
0053a674  01 10 8f e0                                      add r1, pc, r1
0053a678  01 20 a0 e1                                      mov r2, r1
0053a67c  41 99 f7 eb                                      bl #0x320b88
0053a680  b0 ff ff ea                                      b #0x53a548
0053a684  21 4f f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053a688  a4 a5 45 00 ac 40 00 00 94 11 39 00              .byte 0xa4, 0xa5, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x11, 0x39, 0x00

; FUNCTION 0x0053a694, declared_size=384, range_size=384, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment13getSpriteBankEPKc
; demangled: glitch::gui::CGUIEnvironment::getSpriteBank(char const*)
; decoder-mode: arm
0053a694  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053a698  64 51 9f e5                                      ldr r5, [pc, #0x164]
0053a69c  64 71 9f e5                                      ldr r7, [pc, #0x164]
0053a6a0  20 d0 4d e2                                      sub sp, sp, #0x20
0053a6a4  05 50 8f e0                                      add r5, pc, r5
0053a6a8  07 30 95 e7                                      ldr r3, [r5, r7]
0053a6ac  01 60 a0 e1                                      mov r6, r1
0053a6b0  00 80 a0 e1                                      mov r8, r0
0053a6b4  00 30 93 e5                                      ldr r3, [r3]
0053a6b8  0d 00 a0 e1                                      mov r0, sp
0053a6bc  10 10 a0 e3                                      mov r1, #0x10
0053a6c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053a6c4  10 d0 8d e5                                      str sp, [sp, #0x10]
0053a6c8  14 d0 8d e5                                      str sp, [sp, #0x14]
0053a6cc  b5 98 f7 eb                                      bl #0x3209a8
0053a6d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053a6d4  00 20 a0 e3                                      mov r2, #0
0053a6d8  00 00 56 e3                                      cmp r6, #0
0053a6dc  0d 40 a0 e1                                      mov r4, sp
0053a6e0  00 20 c3 e5                                      strb r2, [r3]
0053a6e4  30 00 00 0a                                      beq #0x53a7ac
0053a6e8  06 00 a0 e1                                      mov r0, r6
0053a6ec  d8 4d f7 eb                                      bl #0x30de54
0053a6f0  06 10 a0 e1                                      mov r1, r6
0053a6f4  00 20 86 e0                                      add r2, r6, r0
0053a6f8  0d 00 a0 e1                                      mov r0, sp
0053a6fc  21 99 f7 eb                                      bl #0x320b88
0053a700  14 20 9d e5                                      ldr r2, [sp, #0x14]
0053a704  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053a708  03 00 52 e1                                      cmp r2, r3
0053a70c  0f 00 00 0a                                      beq #0x53a750
0053a710  00 30 a0 e3                                      mov r3, #0
0053a714  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053a718  03 20 82 e0                                      add r2, r2, r3
0053a71c  01 30 83 e2                                      add r3, r3, #1
0053a720  71 00 ef e6                                      uxtb r0, r1
0053a724  41 c0 40 e2                                      sub ip, r0, #0x41
0053a728  7c c0 ef e6                                      uxtb ip, ip
0053a72c  19 00 5c e3                                      cmp ip, #0x19
0053a730  20 10 80 92                                      addls r1, r0, #0x20
0053a734  71 10 ef 96                                      uxtbls r1, r1
0053a738  00 10 c2 e5                                      strb r1, [r2]
0053a73c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0053a740  10 10 9d e5                                      ldr r1, [sp, #0x10]
0053a744  01 10 62 e0                                      rsb r1, r2, r1
0053a748  01 00 53 e1                                      cmp r3, r1
0053a74c  f0 ff ff 3a                                      blo #0x53a714
0053a750  67 0f 88 e2                                      add r0, r8, #0x19c
0053a754  0d 10 a0 e1                                      mov r1, sp
0053a758  44 f7 ff eb                                      bl #0x538470
0053a75c  01 00 70 e3                                      cmn r0, #1
0053a760  17 00 00 0a                                      beq #0x53a7c4
0053a764  9c 31 98 e5                                      ldr r3, [r8, #0x19c]
0053a768  1c 20 a0 e3                                      mov r2, #0x1c
0053a76c  92 30 20 e0                                      mla r0, r2, r0, r3
0053a770  18 80 90 e5                                      ldr r8, [r0, #0x18]
0053a774  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053a778  04 00 50 e1                                      cmp r0, r4
0053a77c  02 00 00 0a                                      beq #0x53a78c
0053a780  00 00 50 e3                                      cmp r0, #0
0053a784  00 00 00 0a                                      beq #0x53a78c
0053a788  30 57 f7 eb                                      bl #0x310450
0053a78c  07 30 95 e7                                      ldr r3, [r5, r7]
0053a790  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053a794  08 00 a0 e1                                      mov r0, r8
0053a798  00 30 93 e5                                      ldr r3, [r3]
0053a79c  03 00 52 e1                                      cmp r2, r3
0053a7a0  16 00 00 1a                                      bne #0x53a800
0053a7a4  20 d0 8d e2                                      add sp, sp, #0x20
0053a7a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053a7ac  58 10 9f e5                                      ldr r1, [pc, #0x58]
0053a7b0  0d 00 a0 e1                                      mov r0, sp
0053a7b4  01 10 8f e0                                      add r1, pc, r1
0053a7b8  01 20 a0 e1                                      mov r2, r1
0053a7bc  f1 98 f7 eb                                      bl #0x320b88
0053a7c0  ce ff ff ea                                      b #0x53a700
0053a7c4  c0 31 98 e5                                      ldr r3, [r8, #0x1c0]
0053a7c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0053a7cc  03 00 a0 e1                                      mov r0, r3
0053a7d0  00 30 93 e5                                      ldr r3, [r3]
0053a7d4  0f e0 a0 e1                                      mov lr, pc
0053a7d8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0053a7dc  00 80 50 e2                                      subs r8, r0, #0
0053a7e0  00 80 a0 13                                      movne r8, #0
0053a7e4  e2 ff ff 1a                                      bne #0x53a774
0053a7e8  20 00 9f e5                                      ldr r0, [pc, #0x20]
0053a7ec  06 10 a0 e1                                      mov r1, r6
0053a7f0  03 20 a0 e3                                      mov r2, #3
0053a7f4  00 00 8f e0                                      add r0, pc, r0
0053a7f8  3a 41 03 eb                                      bl #0x60ace8
0053a7fc  dc ff ff ea                                      b #0x53a774
0053a800  c2 4e f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053a804  ec a3 45 00 ac 40 00 00 54 10 39 00 0c 37 3a 00  .byte 0xec, 0xa3, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x10, 0x39, 0x00, 0x0c, 0x37, 0x3a, 0x00

; FUNCTION 0x0053a814, declared_size=476, range_size=476, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment16removeTTFontFaceEPNS_2io9IReadFileE
; demangled: glitch::gui::CGUIEnvironment::removeTTFontFace(glitch::io::IReadFile*)
; decoder-mode: arm
0053a814  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053a818  c4 71 9f e5                                      ldr r7, [pc, #0x1c4]
0053a81c  c4 81 9f e5                                      ldr r8, [pc, #0x1c4]
0053a820  34 d0 4d e2                                      sub sp, sp, #0x34
0053a824  07 70 8f e0                                      add r7, pc, r7
0053a828  08 30 97 e7                                      ldr r3, [r7, r8]
0053a82c  10 60 8d e2                                      add r6, sp, #0x10
0053a830  01 40 a0 e1                                      mov r4, r1
0053a834  00 30 93 e5                                      ldr r3, [r3]
0053a838  00 50 a0 e1                                      mov r5, r0
0053a83c  10 10 a0 e3                                      mov r1, #0x10
0053a840  06 00 a0 e1                                      mov r0, r6
0053a844  2c 30 8d e5                                      str r3, [sp, #0x2c]
0053a848  20 60 8d e5                                      str r6, [sp, #0x20]
0053a84c  24 60 8d e5                                      str r6, [sp, #0x24]
0053a850  54 98 f7 eb                                      bl #0x3209a8
0053a854  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053a858  00 20 a0 e3                                      mov r2, #0
0053a85c  00 00 54 e3                                      cmp r4, #0
0053a860  00 20 c3 e5                                      strb r2, [r3]
0053a864  57 00 00 0a                                      beq #0x53a9c8
0053a868  00 30 94 e5                                      ldr r3, [r4]
0053a86c  04 00 a0 e1                                      mov r0, r4
0053a870  0f e0 a0 e1                                      mov lr, pc
0053a874  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053a878  00 a0 a0 e1                                      mov sl, r0
0053a87c  74 4d f7 eb                                      bl #0x30de54
0053a880  0a 10 a0 e1                                      mov r1, sl
0053a884  00 20 8a e0                                      add r2, sl, r0
0053a888  06 00 a0 e1                                      mov r0, r6
0053a88c  bd 98 f7 eb                                      bl #0x320b88
0053a890  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053a894  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053a898  02 00 53 e1                                      cmp r3, r2
0053a89c  0f 00 00 0a                                      beq #0x53a8e0
0053a8a0  00 30 a0 e3                                      mov r3, #0
0053a8a4  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053a8a8  03 20 82 e0                                      add r2, r2, r3
0053a8ac  01 30 83 e2                                      add r3, r3, #1
0053a8b0  71 00 ef e6                                      uxtb r0, r1
0053a8b4  41 c0 40 e2                                      sub ip, r0, #0x41
0053a8b8  7c c0 ef e6                                      uxtb ip, ip
0053a8bc  19 00 5c e3                                      cmp ip, #0x19
0053a8c0  20 10 80 92                                      addls r1, r0, #0x20
0053a8c4  71 10 ef 96                                      uxtbls r1, r1
0053a8c8  00 10 c2 e5                                      strb r1, [r2]
0053a8cc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0053a8d0  20 10 9d e5                                      ldr r1, [sp, #0x20]
0053a8d4  01 10 62 e0                                      rsb r1, r2, r1
0053a8d8  01 00 53 e1                                      cmp r3, r1
0053a8dc  f0 ff ff 3a                                      blo #0x53a8a4
0053a8e0  19 3e 85 e2                                      add r3, r5, #0x190
0053a8e4  03 00 a0 e1                                      mov r0, r3
0053a8e8  06 10 a0 e1                                      mov r1, r6
0053a8ec  04 30 8d e5                                      str r3, [sp, #4]
0053a8f0  35 f7 ff eb                                      bl #0x5385cc
0053a8f4  01 00 70 e3                                      cmn r0, #1
0053a8f8  00 b0 a0 e1                                      mov fp, r0
0053a8fc  15 00 00 0a                                      beq #0x53a958
0053a900  84 91 95 e5                                      ldr sb, [r5, #0x184]
0053a904  88 31 95 e5                                      ldr r3, [r5, #0x188]
0053a908  03 30 69 e0                                      rsb r3, sb, r3
0053a90c  a3 32 b0 e1                                      lsrs r3, r3, #5
0053a910  1f 00 00 0a                                      beq #0x53a994
0053a914  00 a0 a0 e3                                      mov sl, #0
0053a918  05 00 00 ea                                      b #0x53a934
0053a91c  84 91 95 e5                                      ldr sb, [r5, #0x184]
0053a920  88 31 95 e5                                      ldr r3, [r5, #0x188]
0053a924  01 a0 8a e2                                      add sl, sl, #1
0053a928  03 30 69 e0                                      rsb r3, sb, r3
0053a92c  c3 02 5a e1                                      cmp sl, r3, asr #5
0053a930  17 00 00 2a                                      bhs #0x53a994
0053a934  00 30 94 e5                                      ldr r3, [r4]
0053a938  04 00 a0 e1                                      mov r0, r4
0053a93c  0f e0 a0 e1                                      mov lr, pc
0053a940  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053a944  00 10 a0 e1                                      mov r1, r0
0053a948  8a 02 89 e0                                      add r0, sb, sl, lsl #5
0053a94c  7b ee ff eb                                      bl #0x536340
0053a950  00 00 50 e3                                      cmp r0, #0
0053a954  f0 ff ff 0a                                      beq #0x53a91c
0053a958  00 40 a0 e3                                      mov r4, #0
0053a95c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0053a960  06 00 50 e1                                      cmp r0, r6
0053a964  02 00 00 0a                                      beq #0x53a974
0053a968  00 00 50 e3                                      cmp r0, #0
0053a96c  00 00 00 0a                                      beq #0x53a974
0053a970  b6 56 f7 eb                                      bl #0x310450
0053a974  08 30 97 e7                                      ldr r3, [r7, r8]
0053a978  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0053a97c  04 00 a0 e1                                      mov r0, r4
0053a980  00 30 93 e5                                      ldr r3, [r3]
0053a984  03 00 52 e1                                      cmp r2, r3
0053a988  14 00 00 1a                                      bne #0x53a9e0
0053a98c  34 d0 8d e2                                      add sp, sp, #0x34
0053a990  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053a994  1c 30 a0 e3                                      mov r3, #0x1c
0053a998  93 0b 0b e0                                      mul fp, r3, fp
0053a99c  90 31 95 e5                                      ldr r3, [r5, #0x190]
0053a9a0  01 40 a0 e3                                      mov r4, #1
0053a9a4  0b 30 83 e0                                      add r3, r3, fp
0053a9a8  18 00 93 e5                                      ldr r0, [r3, #0x18]
0053a9ac  f4 8a f7 eb                                      bl #0x31d584
0053a9b0  90 11 95 e5                                      ldr r1, [r5, #0x190]
0053a9b4  04 00 9d e5                                      ldr r0, [sp, #4]
0053a9b8  0c 20 8d e2                                      add r2, sp, #0xc
0053a9bc  0b 10 81 e0                                      add r1, r1, fp
0053a9c0  7c f9 ff eb                                      bl #0x538fb8
0053a9c4  e4 ff ff ea                                      b #0x53a95c
0053a9c8  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0053a9cc  06 00 a0 e1                                      mov r0, r6
0053a9d0  01 10 8f e0                                      add r1, pc, r1
0053a9d4  01 20 a0 e1                                      mov r2, r1
0053a9d8  6a 98 f7 eb                                      bl #0x320b88
0053a9dc  ab ff ff ea                                      b #0x53a890
0053a9e0  4a 4e f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053a9e4  6c a2 45 00 ac 40 00 00 38 0e 39 00              .byte 0x6c, 0xa2, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0x0e, 0x39, 0x00

; FUNCTION 0x0053a9f0, declared_size=304, range_size=304, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment18addEmptySpriteBankEPKc
; demangled: glitch::gui::CGUIEnvironment::addEmptySpriteBank(char const*)
; decoder-mode: arm
0053a9f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0053a9f4  18 51 9f e5                                      ldr r5, [pc, #0x118]
0053a9f8  18 61 9f e5                                      ldr r6, [pc, #0x118]
0053a9fc  24 d0 4d e2                                      sub sp, sp, #0x24
0053aa00  05 50 8f e0                                      add r5, pc, r5
0053aa04  06 30 95 e7                                      ldr r3, [r5, r6]
0053aa08  01 80 a0 e1                                      mov r8, r1
0053aa0c  00 70 a0 e1                                      mov r7, r0
0053aa10  00 30 93 e5                                      ldr r3, [r3]
0053aa14  0d 00 a0 e1                                      mov r0, sp
0053aa18  10 10 a0 e3                                      mov r1, #0x10
0053aa1c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053aa20  10 d0 8d e5                                      str sp, [sp, #0x10]
0053aa24  14 d0 8d e5                                      str sp, [sp, #0x14]
0053aa28  de 97 f7 eb                                      bl #0x3209a8
0053aa2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053aa30  00 20 a0 e3                                      mov r2, #0
0053aa34  00 00 58 e3                                      cmp r8, #0
0053aa38  0d 40 a0 e1                                      mov r4, sp
0053aa3c  00 20 c3 e5                                      strb r2, [r3]
0053aa40  1a 00 00 0a                                      beq #0x53aab0
0053aa44  08 00 a0 e1                                      mov r0, r8
0053aa48  01 4d f7 eb                                      bl #0x30de54
0053aa4c  08 10 a0 e1                                      mov r1, r8
0053aa50  00 20 88 e0                                      add r2, r8, r0
0053aa54  67 8f 87 e2                                      add r8, r7, #0x19c
0053aa58  0d 00 a0 e1                                      mov r0, sp
0053aa5c  49 98 f7 eb                                      bl #0x320b88
0053aa60  08 00 a0 e1                                      mov r0, r8
0053aa64  0d 10 a0 e1                                      mov r1, sp
0053aa68  80 f6 ff eb                                      bl #0x538470
0053aa6c  01 00 70 e3                                      cmn r0, #1
0053aa70  00 70 a0 13                                      movne r7, #0
0053aa74  19 00 00 0a                                      beq #0x53aae0
0053aa78  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053aa7c  04 00 50 e1                                      cmp r0, r4
0053aa80  02 00 00 0a                                      beq #0x53aa90
0053aa84  00 00 50 e3                                      cmp r0, #0
0053aa88  00 00 00 0a                                      beq #0x53aa90
0053aa8c  6f 56 f7 eb                                      bl #0x310450
0053aa90  06 30 95 e7                                      ldr r3, [r5, r6]
0053aa94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053aa98  07 00 a0 e1                                      mov r0, r7
0053aa9c  00 30 93 e5                                      ldr r3, [r3]
0053aaa0  03 00 52 e1                                      cmp r2, r3
0053aaa4  19 00 00 1a                                      bne #0x53ab10
0053aaa8  24 d0 8d e2                                      add sp, sp, #0x24
0053aaac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0053aab0  64 10 9f e5                                      ldr r1, [pc, #0x64]
0053aab4  67 8f 87 e2                                      add r8, r7, #0x19c
0053aab8  0d 00 a0 e1                                      mov r0, sp
0053aabc  01 10 8f e0                                      add r1, pc, r1
0053aac0  01 20 a0 e1                                      mov r2, r1
0053aac4  2f 98 f7 eb                                      bl #0x320b88
0053aac8  08 00 a0 e1                                      mov r0, r8
0053aacc  0d 10 a0 e1                                      mov r1, sp
0053aad0  66 f6 ff eb                                      bl #0x538470
0053aad4  01 00 70 e3                                      cmn r0, #1
0053aad8  00 70 a0 13                                      movne r7, #0
0053aadc  e5 ff ff 1a                                      bne #0x53aa78
0053aae0  00 10 a0 e3                                      mov r1, #0
0053aae4  34 00 a0 e3                                      mov r0, #0x34
0053aae8  af e5 ff eb                                      bl #0x5341ac
0053aaec  07 10 a0 e1                                      mov r1, r7
0053aaf0  00 a0 a0 e1                                      mov sl, r0
0053aaf4  49 53 00 eb                                      bl #0x54f820
0053aaf8  08 00 a0 e1                                      mov r0, r8
0053aafc  0d 10 a0 e1                                      mov r1, sp
0053ab00  18 a0 8d e5                                      str sl, [sp, #0x18]
0053ab04  34 f8 ff eb                                      bl #0x538bdc
0053ab08  18 70 9d e5                                      ldr r7, [sp, #0x18]
0053ab0c  d9 ff ff ea                                      b #0x53aa78
0053ab10  fe 4d f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053ab14  90 a0 45 00 ac 40 00 00 4c 0d 39 00              .byte 0x90, 0xa0, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x0d, 0x39, 0x00

; FUNCTION 0x0053ab20, declared_size=648, range_size=648, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment12removeTTFontEPNS_2io9IReadFileEj
; demangled: glitch::gui::CGUIEnvironment::removeTTFont(glitch::io::IReadFile*, unsigned int)
; decoder-mode: arm
0053ab20  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053ab24  6c 52 9f e5                                      ldr r5, [pc, #0x26c]
0053ab28  6c a2 9f e5                                      ldr sl, [pc, #0x26c]
0053ab2c  54 d0 4d e2                                      sub sp, sp, #0x54
0053ab30  05 50 8f e0                                      add r5, pc, r5
0053ab34  0a 30 95 e7                                      ldr r3, [r5, sl]
0053ab38  30 40 8d e2                                      add r4, sp, #0x30
0053ab3c  01 60 a0 e1                                      mov r6, r1
0053ab40  00 30 93 e5                                      ldr r3, [r3]
0053ab44  00 80 a0 e1                                      mov r8, r0
0053ab48  10 10 a0 e3                                      mov r1, #0x10
0053ab4c  04 00 a0 e1                                      mov r0, r4
0053ab50  4c 30 8d e5                                      str r3, [sp, #0x4c]
0053ab54  02 90 a0 e1                                      mov sb, r2
0053ab58  40 40 8d e5                                      str r4, [sp, #0x40]
0053ab5c  44 40 8d e5                                      str r4, [sp, #0x44]
0053ab60  90 97 f7 eb                                      bl #0x3209a8
0053ab64  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053ab68  00 20 a0 e3                                      mov r2, #0
0053ab6c  00 00 56 e3                                      cmp r6, #0
0053ab70  00 20 c3 e5                                      strb r2, [r3]
0053ab74  7a 00 00 0a                                      beq #0x53ad64
0053ab78  00 30 96 e5                                      ldr r3, [r6]
0053ab7c  06 00 a0 e1                                      mov r0, r6
0053ab80  0f e0 a0 e1                                      mov lr, pc
0053ab84  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053ab88  00 70 a0 e1                                      mov r7, r0
0053ab8c  b0 4c f7 eb                                      bl #0x30de54
0053ab90  07 10 a0 e1                                      mov r1, r7
0053ab94  00 20 87 e0                                      add r2, r7, r0
0053ab98  04 00 a0 e1                                      mov r0, r4
0053ab9c  f9 97 f7 eb                                      bl #0x320b88
0053aba0  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053aba4  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053aba8  02 00 53 e1                                      cmp r3, r2
0053abac  0f 00 00 0a                                      beq #0x53abf0
0053abb0  00 30 a0 e3                                      mov r3, #0
0053abb4  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053abb8  03 20 82 e0                                      add r2, r2, r3
0053abbc  01 30 83 e2                                      add r3, r3, #1
0053abc0  71 00 ef e6                                      uxtb r0, r1
0053abc4  41 c0 40 e2                                      sub ip, r0, #0x41
0053abc8  7c c0 ef e6                                      uxtb ip, ip
0053abcc  19 00 5c e3                                      cmp ip, #0x19
0053abd0  20 10 80 92                                      addls r1, r0, #0x20
0053abd4  71 10 ef 96                                      uxtbls r1, r1
0053abd8  00 10 c2 e5                                      strb r1, [r2]
0053abdc  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053abe0  40 10 9d e5                                      ldr r1, [sp, #0x40]
0053abe4  01 10 62 e0                                      rsb r1, r2, r1
0053abe8  01 00 53 e1                                      cmp r3, r1
0053abec  f0 ff ff 3a                                      blo #0x53abb4
0053abf0  19 0e 88 e2                                      add r0, r8, #0x190
0053abf4  04 10 a0 e1                                      mov r1, r4
0053abf8  73 f6 ff eb                                      bl #0x5385cc
0053abfc  01 00 70 e3                                      cmn r0, #1
0053ac00  00 90 a0 03                                      moveq sb, #0
0053ac04  48 00 00 0a                                      beq #0x53ad2c
0053ac08  10 70 8d e2                                      add r7, sp, #0x10
0053ac0c  07 00 a0 e1                                      mov r0, r7
0053ac10  10 10 a0 e3                                      mov r1, #0x10
0053ac14  20 70 8d e5                                      str r7, [sp, #0x20]
0053ac18  24 70 8d e5                                      str r7, [sp, #0x24]
0053ac1c  61 97 f7 eb                                      bl #0x3209a8
0053ac20  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053ac24  00 20 a0 e3                                      mov r2, #0
0053ac28  00 00 56 e3                                      cmp r6, #0
0053ac2c  00 20 c3 e5                                      strb r2, [r3]
0053ac30  51 00 00 0a                                      beq #0x53ad7c
0053ac34  00 30 96 e5                                      ldr r3, [r6]
0053ac38  06 00 a0 e1                                      mov r0, r6
0053ac3c  0f e0 a0 e1                                      mov lr, pc
0053ac40  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053ac44  00 b0 a0 e1                                      mov fp, r0
0053ac48  81 4c f7 eb                                      bl #0x30de54
0053ac4c  0b 10 a0 e1                                      mov r1, fp
0053ac50  00 20 8b e0                                      add r2, fp, r0
0053ac54  07 00 a0 e1                                      mov r0, r7
0053ac58  ca 97 f7 eb                                      bl #0x320b88
0053ac5c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053ac60  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053ac64  03 00 52 e1                                      cmp r2, r3
0053ac68  0f 00 00 0a                                      beq #0x53acac
0053ac6c  00 30 a0 e3                                      mov r3, #0
0053ac70  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053ac74  03 20 82 e0                                      add r2, r2, r3
0053ac78  01 30 83 e2                                      add r3, r3, #1
0053ac7c  71 00 ef e6                                      uxtb r0, r1
0053ac80  41 c0 40 e2                                      sub ip, r0, #0x41
0053ac84  7c c0 ef e6                                      uxtb ip, ip
0053ac88  19 00 5c e3                                      cmp ip, #0x19
0053ac8c  20 10 80 92                                      addls r1, r0, #0x20
0053ac90  71 10 ef 96                                      uxtbls r1, r1
0053ac94  00 10 c2 e5                                      strb r1, [r2]
0053ac98  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053ac9c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0053aca0  01 10 62 e0                                      rsb r1, r2, r1
0053aca4  01 00 53 e1                                      cmp r3, r1
0053aca8  f0 ff ff 3a                                      blo #0x53ac70
0053acac  61 bf 88 e2                                      add fp, r8, #0x184
0053acb0  0b 00 a0 e1                                      mov r0, fp
0053acb4  07 10 a0 e1                                      mov r1, r7
0053acb8  28 90 8d e5                                      str sb, [sp, #0x28]
0053acbc  5e fc ff eb                                      bl #0x539e3c
0053acc0  01 00 70 e3                                      cmn r0, #1
0053acc4  00 90 a0 03                                      moveq sb, #0
0053acc8  11 00 00 0a                                      beq #0x53ad14
0053accc  84 21 98 e5                                      ldr r2, [r8, #0x184]
0053acd0  80 32 a0 e1                                      lsl r3, r0, #5
0053acd4  01 90 a0 e3                                      mov sb, #1
0053acd8  03 20 82 e0                                      add r2, r2, r3
0053acdc  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
0053ace0  04 30 8d e5                                      str r3, [sp, #4]
0053ace4  26 8a f7 eb                                      bl #0x31d584
0053ace8  04 30 9d e5                                      ldr r3, [sp, #4]
0053acec  84 11 98 e5                                      ldr r1, [r8, #0x184]
0053acf0  0b 00 a0 e1                                      mov r0, fp
0053acf4  0c 20 8d e2                                      add r2, sp, #0xc
0053acf8  03 10 81 e0                                      add r1, r1, r3
0053acfc  b3 fa ff eb                                      bl #0x5397d0
0053ad00  08 00 a0 e1                                      mov r0, r8
0053ad04  06 10 a0 e1                                      mov r1, r6
0053ad08  00 30 98 e5                                      ldr r3, [r8]
0053ad0c  0f e0 a0 e1                                      mov lr, pc
0053ad10  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0053ad14  24 00 9d e5                                      ldr r0, [sp, #0x24]
0053ad18  07 00 50 e1                                      cmp r0, r7
0053ad1c  02 00 00 0a                                      beq #0x53ad2c
0053ad20  00 00 50 e3                                      cmp r0, #0
0053ad24  00 00 00 0a                                      beq #0x53ad2c
0053ad28  c8 55 f7 eb                                      bl #0x310450
0053ad2c  44 00 9d e5                                      ldr r0, [sp, #0x44]
0053ad30  04 00 50 e1                                      cmp r0, r4
0053ad34  02 00 00 0a                                      beq #0x53ad44
0053ad38  00 00 50 e3                                      cmp r0, #0
0053ad3c  00 00 00 0a                                      beq #0x53ad44
0053ad40  c2 55 f7 eb                                      bl #0x310450
0053ad44  0a 30 95 e7                                      ldr r3, [r5, sl]
0053ad48  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053ad4c  09 00 a0 e1                                      mov r0, sb
0053ad50  00 30 93 e5                                      ldr r3, [r3]
0053ad54  03 00 52 e1                                      cmp r2, r3
0053ad58  0d 00 00 1a                                      bne #0x53ad94
0053ad5c  54 d0 8d e2                                      add sp, sp, #0x54
0053ad60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053ad64  34 10 9f e5                                      ldr r1, [pc, #0x34]
0053ad68  04 00 a0 e1                                      mov r0, r4
0053ad6c  01 10 8f e0                                      add r1, pc, r1
0053ad70  01 20 a0 e1                                      mov r2, r1
0053ad74  83 97 f7 eb                                      bl #0x320b88
0053ad78  88 ff ff ea                                      b #0x53aba0
0053ad7c  20 10 9f e5                                      ldr r1, [pc, #0x20]
0053ad80  07 00 a0 e1                                      mov r0, r7
0053ad84  01 10 8f e0                                      add r1, pc, r1
0053ad88  01 20 a0 e1                                      mov r2, r1
0053ad8c  7d 97 f7 eb                                      bl #0x320b88
0053ad90  b1 ff ff ea                                      b #0x53ac5c
0053ad94  5d 4d f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053ad98  60 9f 45 00 ac 40 00 00 9c 0a 39 00 84 0a 39 00  .byte 0x60, 0x9f, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x0a, 0x39, 0x00, 0x84, 0x0a, 0x39, 0x00

; FUNCTION 0x0053ada8, declared_size=804, range_size=804, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj
; demangled: glitch::gui::CGUIEnvironment::getTTFont(char const*, unsigned int)
; decoder-mode: arm
0053ada8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053adac  08 63 9f e5                                      ldr r6, [pc, #0x308]
0053adb0  08 73 9f e5                                      ldr r7, [pc, #0x308]
0053adb4  5c d0 4d e2                                      sub sp, sp, #0x5c
0053adb8  06 60 8f e0                                      add r6, pc, r6
0053adbc  07 30 96 e7                                      ldr r3, [r6, r7]
0053adc0  38 40 8d e2                                      add r4, sp, #0x38
0053adc4  01 80 a0 e1                                      mov r8, r1
0053adc8  00 30 93 e5                                      ldr r3, [r3]
0053adcc  00 a0 a0 e1                                      mov sl, r0
0053add0  10 10 a0 e3                                      mov r1, #0x10
0053add4  04 00 a0 e1                                      mov r0, r4
0053add8  54 30 8d e5                                      str r3, [sp, #0x54]
0053addc  02 90 a0 e1                                      mov sb, r2
0053ade0  48 40 8d e5                                      str r4, [sp, #0x48]
0053ade4  4c 40 8d e5                                      str r4, [sp, #0x4c]
0053ade8  ee 96 f7 eb                                      bl #0x3209a8
0053adec  48 30 9d e5                                      ldr r3, [sp, #0x48]
0053adf0  00 50 a0 e3                                      mov r5, #0
0053adf4  00 00 58 e3                                      cmp r8, #0
0053adf8  00 50 c3 e5                                      strb r5, [r3]
0053adfc  63 00 00 0a                                      beq #0x53af90
0053ae00  08 00 a0 e1                                      mov r0, r8
0053ae04  12 4c f7 eb                                      bl #0x30de54
0053ae08  08 10 a0 e1                                      mov r1, r8
0053ae0c  00 20 88 e0                                      add r2, r8, r0
0053ae10  04 00 a0 e1                                      mov r0, r4
0053ae14  5b 97 f7 eb                                      bl #0x320b88
0053ae18  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0053ae1c  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053ae20  02 00 53 e1                                      cmp r3, r2
0053ae24  0e 00 00 0a                                      beq #0x53ae64
0053ae28  05 20 d3 e7                                      ldrb r2, [r3, r5]
0053ae2c  05 30 83 e0                                      add r3, r3, r5
0053ae30  01 50 85 e2                                      add r5, r5, #1
0053ae34  72 10 ef e6                                      uxtb r1, r2
0053ae38  41 00 41 e2                                      sub r0, r1, #0x41
0053ae3c  70 00 ef e6                                      uxtb r0, r0
0053ae40  19 00 50 e3                                      cmp r0, #0x19
0053ae44  20 20 81 92                                      addls r2, r1, #0x20
0053ae48  72 20 ef 96                                      uxtbls r2, r2
0053ae4c  00 20 c3 e5                                      strb r2, [r3]
0053ae50  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0053ae54  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053ae58  02 20 63 e0                                      rsb r2, r3, r2
0053ae5c  02 00 55 e1                                      cmp r5, r2
0053ae60  f0 ff ff 3a                                      blo #0x53ae28
0053ae64  19 5e 8a e2                                      add r5, sl, #0x190
0053ae68  05 00 a0 e1                                      mov r0, r5
0053ae6c  04 10 a0 e1                                      mov r1, r4
0053ae70  d5 f5 ff eb                                      bl #0x5385cc
0053ae74  01 00 70 e3                                      cmn r0, #1
0053ae78  4f 00 00 0a                                      beq #0x53afbc
0053ae7c  90 31 9a e5                                      ldr r3, [sl, #0x190]
0053ae80  1c 20 a0 e3                                      mov r2, #0x1c
0053ae84  92 30 20 e0                                      mla r0, r2, r0, r3
0053ae88  18 b0 90 e5                                      ldr fp, [r0, #0x18]
0053ae8c  18 50 8d e2                                      add r5, sp, #0x18
0053ae90  05 00 a0 e1                                      mov r0, r5
0053ae94  10 10 a0 e3                                      mov r1, #0x10
0053ae98  28 50 8d e5                                      str r5, [sp, #0x28]
0053ae9c  2c 50 8d e5                                      str r5, [sp, #0x2c]
0053aea0  c0 96 f7 eb                                      bl #0x3209a8
0053aea4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0053aea8  00 20 a0 e3                                      mov r2, #0
0053aeac  00 00 58 e3                                      cmp r8, #0
0053aeb0  00 20 c3 e5                                      strb r2, [r3]
0053aeb4  4f 00 00 0a                                      beq #0x53aff8
0053aeb8  05 00 a0 e1                                      mov r0, r5
0053aebc  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0053aec0  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053aec4  2f 97 f7 eb                                      bl #0x320b88
0053aec8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053aecc  48 30 9d e5                                      ldr r3, [sp, #0x48]
0053aed0  03 00 52 e1                                      cmp r2, r3
0053aed4  0f 00 00 0a                                      beq #0x53af18
0053aed8  00 30 a0 e3                                      mov r3, #0
0053aedc  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053aee0  03 20 82 e0                                      add r2, r2, r3
0053aee4  01 30 83 e2                                      add r3, r3, #1
0053aee8  71 00 ef e6                                      uxtb r0, r1
0053aeec  41 c0 40 e2                                      sub ip, r0, #0x41
0053aef0  7c c0 ef e6                                      uxtb ip, ip
0053aef4  19 00 5c e3                                      cmp ip, #0x19
0053aef8  20 10 80 92                                      addls r1, r0, #0x20
0053aefc  71 10 ef 96                                      uxtbls r1, r1
0053af00  00 10 c2 e5                                      strb r1, [r2]
0053af04  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053af08  48 10 9d e5                                      ldr r1, [sp, #0x48]
0053af0c  01 10 62 e0                                      rsb r1, r2, r1
0053af10  01 00 53 e1                                      cmp r3, r1
0053af14  f0 ff ff 3a                                      blo #0x53aedc
0053af18  61 8f 8a e2                                      add r8, sl, #0x184
0053af1c  08 00 a0 e1                                      mov r0, r8
0053af20  05 10 a0 e1                                      mov r1, r5
0053af24  30 90 8d e5                                      str sb, [sp, #0x30]
0053af28  c3 fb ff eb                                      bl #0x539e3c
0053af2c  01 00 70 e3                                      cmn r0, #1
0053af30  36 00 00 0a                                      beq #0x53b010
0053af34  84 31 9a e5                                      ldr r3, [sl, #0x184]
0053af38  80 02 83 e0                                      add r0, r3, r0, lsl #5
0053af3c  1c 80 90 e5                                      ldr r8, [r0, #0x1c]
0053af40  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0053af44  05 00 50 e1                                      cmp r0, r5
0053af48  02 00 00 0a                                      beq #0x53af58
0053af4c  00 00 50 e3                                      cmp r0, #0
0053af50  00 00 00 0a                                      beq #0x53af58
0053af54  3d 55 f7 eb                                      bl #0x310450
0053af58  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0053af5c  04 00 50 e1                                      cmp r0, r4
0053af60  02 00 00 0a                                      beq #0x53af70
0053af64  00 00 50 e3                                      cmp r0, #0
0053af68  00 00 00 0a                                      beq #0x53af70
0053af6c  37 55 f7 eb                                      bl #0x310450
0053af70  07 30 96 e7                                      ldr r3, [r6, r7]
0053af74  54 20 9d e5                                      ldr r2, [sp, #0x54]
0053af78  08 00 a0 e1                                      mov r0, r8
0053af7c  00 30 93 e5                                      ldr r3, [r3]
0053af80  03 00 52 e1                                      cmp r2, r3
0053af84  4b 00 00 1a                                      bne #0x53b0b8
0053af88  5c d0 8d e2                                      add sp, sp, #0x5c
0053af8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053af90  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
0053af94  04 00 a0 e1                                      mov r0, r4
0053af98  19 5e 8a e2                                      add r5, sl, #0x190
0053af9c  01 10 8f e0                                      add r1, pc, r1
0053afa0  01 20 a0 e1                                      mov r2, r1
0053afa4  f7 96 f7 eb                                      bl #0x320b88
0053afa8  05 00 a0 e1                                      mov r0, r5
0053afac  04 10 a0 e1                                      mov r1, r4
0053afb0  85 f5 ff eb                                      bl #0x5385cc
0053afb4  01 00 70 e3                                      cmn r0, #1
0053afb8  af ff ff 1a                                      bne #0x53ae7c
0053afbc  00 10 a0 e3                                      mov r1, #0
0053afc0  0c 00 a0 e3                                      mov r0, #0xc
0053afc4  78 e4 ff eb                                      bl #0x5341ac
0053afc8  00 b0 a0 e1                                      mov fp, r0
0053afcc  64 85 00 eb                                      bl #0x55c564
0053afd0  0b 00 a0 e1                                      mov r0, fp
0053afd4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0053afd8  1c 85 00 eb                                      bl #0x55c450
0053afdc  00 30 50 e2                                      subs r3, r0, #0
0053afe0  30 00 00 0a                                      beq #0x53b0a8
0053afe4  05 00 a0 e1                                      mov r0, r5
0053afe8  04 10 a0 e1                                      mov r1, r4
0053afec  50 b0 8d e5                                      str fp, [sp, #0x50]
0053aff0  4d f7 ff eb                                      bl #0x538d2c
0053aff4  a4 ff ff ea                                      b #0x53ae8c
0053aff8  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0053affc  05 00 a0 e1                                      mov r0, r5
0053b000  01 10 8f e0                                      add r1, pc, r1
0053b004  01 20 a0 e1                                      mov r2, r1
0053b008  de 96 f7 eb                                      bl #0x320b88
0053b00c  ad ff ff ea                                      b #0x53aec8
0053b010  00 10 a0 e3                                      mov r1, #0
0053b014  40 00 a0 e3                                      mov r0, #0x40
0053b018  63 e4 ff eb                                      bl #0x5341ac
0053b01c  a8 11 9a e5                                      ldr r1, [sl, #0x1a8]
0053b020  0c 00 8d e5                                      str r0, [sp, #0xc]
0053b024  e2 82 00 eb                                      bl #0x55bbb4
0053b028  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b02c  00 00 5c e3                                      cmp ip, #0
0053b030  1a 00 00 0a                                      beq #0x53b0a0
0053b034  00 20 9c e5                                      ldr r2, [ip]
0053b038  00 30 a0 e3                                      mov r3, #0
0053b03c  0b 10 a0 e1                                      mov r1, fp
0053b040  6c a0 92 e5                                      ldr sl, [r2, #0x6c]
0053b044  14 30 cd e5                                      strb r3, [sp, #0x14]
0053b048  15 30 cd e5                                      strb r3, [sp, #0x15]
0053b04c  16 30 cd e5                                      strb r3, [sp, #0x16]
0053b050  17 30 cd e5                                      strb r3, [sp, #0x17]
0053b054  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053b058  0c c0 8d e5                                      str ip, [sp, #0xc]
0053b05c  09 20 a0 e1                                      mov r2, sb
0053b060  00 00 8d e5                                      str r0, [sp]
0053b064  0c 00 a0 e1                                      mov r0, ip
0053b068  3a ff 2f e1                                      blx sl
0053b06c  00 30 50 e2                                      subs r3, r0, #0
0053b070  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b074  03 00 00 1a                                      bne #0x53b088
0053b078  0c 00 a0 e1                                      mov r0, ip
0053b07c  03 80 a0 e1                                      mov r8, r3
0053b080  3f 89 f7 eb                                      bl #0x31d584
0053b084  ad ff ff ea                                      b #0x53af40
0053b088  08 00 a0 e1                                      mov r0, r8
0053b08c  05 10 a0 e1                                      mov r1, r5
0053b090  34 c0 8d e5                                      str ip, [sp, #0x34]
0053b094  0c c0 8d e5                                      str ip, [sp, #0xc]
0053b098  77 f7 ff eb                                      bl #0x538e7c
0053b09c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b0a0  0c 80 a0 e1                                      mov r8, ip
0053b0a4  a5 ff ff ea                                      b #0x53af40
0053b0a8  0b 00 a0 e1                                      mov r0, fp
0053b0ac  03 80 a0 e1                                      mov r8, r3
0053b0b0  33 89 f7 eb                                      bl #0x31d584
0053b0b4  a7 ff ff ea                                      b #0x53af58
0053b0b8  94 4c f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053b0bc  d8 9c 45 00 ac 40 00 00 6c 08 39 00 08 08 39 00  .byte 0xd8, 0x9c, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0x08, 0x39, 0x00, 0x08, 0x08, 0x39, 0x00

; FUNCTION 0x0053b0cc, declared_size=844, range_size=844, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj
; demangled: glitch::gui::CGUIEnvironment::getTTFont(glitch::io::IReadFile*, unsigned int)
; decoder-mode: arm
0053b0cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053b0d0  30 63 9f e5                                      ldr r6, [pc, #0x330]
0053b0d4  30 73 9f e5                                      ldr r7, [pc, #0x330]
0053b0d8  5c d0 4d e2                                      sub sp, sp, #0x5c
0053b0dc  06 60 8f e0                                      add r6, pc, r6
0053b0e0  07 30 96 e7                                      ldr r3, [r6, r7]
0053b0e4  38 40 8d e2                                      add r4, sp, #0x38
0053b0e8  01 80 a0 e1                                      mov r8, r1
0053b0ec  00 30 93 e5                                      ldr r3, [r3]
0053b0f0  00 a0 a0 e1                                      mov sl, r0
0053b0f4  10 10 a0 e3                                      mov r1, #0x10
0053b0f8  04 00 a0 e1                                      mov r0, r4
0053b0fc  54 30 8d e5                                      str r3, [sp, #0x54]
0053b100  02 90 a0 e1                                      mov sb, r2
0053b104  48 40 8d e5                                      str r4, [sp, #0x48]
0053b108  4c 40 8d e5                                      str r4, [sp, #0x4c]
0053b10c  25 96 f7 eb                                      bl #0x3209a8
0053b110  48 30 9d e5                                      ldr r3, [sp, #0x48]
0053b114  00 50 a0 e3                                      mov r5, #0
0053b118  00 00 58 e3                                      cmp r8, #0
0053b11c  00 50 c3 e5                                      strb r5, [r3]
0053b120  6d 00 00 0a                                      beq #0x53b2dc
0053b124  00 30 98 e5                                      ldr r3, [r8]
0053b128  08 00 a0 e1                                      mov r0, r8
0053b12c  0f e0 a0 e1                                      mov lr, pc
0053b130  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053b134  00 b0 a0 e1                                      mov fp, r0
0053b138  45 4b f7 eb                                      bl #0x30de54
0053b13c  0b 10 a0 e1                                      mov r1, fp
0053b140  00 20 8b e0                                      add r2, fp, r0
0053b144  04 00 a0 e1                                      mov r0, r4
0053b148  8e 96 f7 eb                                      bl #0x320b88
0053b14c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0053b150  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053b154  02 00 53 e1                                      cmp r3, r2
0053b158  0e 00 00 0a                                      beq #0x53b198
0053b15c  05 20 d3 e7                                      ldrb r2, [r3, r5]
0053b160  05 30 83 e0                                      add r3, r3, r5
0053b164  01 50 85 e2                                      add r5, r5, #1
0053b168  72 10 ef e6                                      uxtb r1, r2
0053b16c  41 00 41 e2                                      sub r0, r1, #0x41
0053b170  70 00 ef e6                                      uxtb r0, r0
0053b174  19 00 50 e3                                      cmp r0, #0x19
0053b178  20 20 81 92                                      addls r2, r1, #0x20
0053b17c  72 20 ef 96                                      uxtbls r2, r2
0053b180  00 20 c3 e5                                      strb r2, [r3]
0053b184  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0053b188  48 20 9d e5                                      ldr r2, [sp, #0x48]
0053b18c  02 20 63 e0                                      rsb r2, r3, r2
0053b190  02 00 55 e1                                      cmp r5, r2
0053b194  f0 ff ff 3a                                      blo #0x53b15c
0053b198  19 5e 8a e2                                      add r5, sl, #0x190
0053b19c  05 00 a0 e1                                      mov r0, r5
0053b1a0  04 10 a0 e1                                      mov r1, r4
0053b1a4  08 f5 ff eb                                      bl #0x5385cc
0053b1a8  01 00 70 e3                                      cmn r0, #1
0053b1ac  55 00 00 0a                                      beq #0x53b308
0053b1b0  90 31 9a e5                                      ldr r3, [sl, #0x190]
0053b1b4  1c 20 a0 e3                                      mov r2, #0x1c
0053b1b8  92 30 20 e0                                      mla r0, r2, r0, r3
0053b1bc  18 b0 90 e5                                      ldr fp, [r0, #0x18]
0053b1c0  18 50 8d e2                                      add r5, sp, #0x18
0053b1c4  05 00 a0 e1                                      mov r0, r5
0053b1c8  10 10 a0 e3                                      mov r1, #0x10
0053b1cc  28 50 8d e5                                      str r5, [sp, #0x28]
0053b1d0  2c 50 8d e5                                      str r5, [sp, #0x2c]
0053b1d4  f3 95 f7 eb                                      bl #0x3209a8
0053b1d8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0053b1dc  00 20 a0 e3                                      mov r2, #0
0053b1e0  00 00 58 e3                                      cmp r8, #0
0053b1e4  00 20 c3 e5                                      strb r2, [r3]
0053b1e8  55 00 00 0a                                      beq #0x53b344
0053b1ec  00 30 98 e5                                      ldr r3, [r8]
0053b1f0  08 00 a0 e1                                      mov r0, r8
0053b1f4  0f e0 a0 e1                                      mov lr, pc
0053b1f8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0053b1fc  00 80 a0 e1                                      mov r8, r0
0053b200  13 4b f7 eb                                      bl #0x30de54
0053b204  08 10 a0 e1                                      mov r1, r8
0053b208  00 20 88 e0                                      add r2, r8, r0
0053b20c  05 00 a0 e1                                      mov r0, r5
0053b210  5c 96 f7 eb                                      bl #0x320b88
0053b214  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053b218  48 30 9d e5                                      ldr r3, [sp, #0x48]
0053b21c  02 00 53 e1                                      cmp r3, r2
0053b220  0f 00 00 0a                                      beq #0x53b264
0053b224  00 30 a0 e3                                      mov r3, #0
0053b228  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053b22c  03 20 82 e0                                      add r2, r2, r3
0053b230  01 30 83 e2                                      add r3, r3, #1
0053b234  71 00 ef e6                                      uxtb r0, r1
0053b238  41 c0 40 e2                                      sub ip, r0, #0x41
0053b23c  7c c0 ef e6                                      uxtb ip, ip
0053b240  19 00 5c e3                                      cmp ip, #0x19
0053b244  20 10 80 92                                      addls r1, r0, #0x20
0053b248  71 10 ef 96                                      uxtbls r1, r1
0053b24c  00 10 c2 e5                                      strb r1, [r2]
0053b250  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053b254  48 10 9d e5                                      ldr r1, [sp, #0x48]
0053b258  01 10 62 e0                                      rsb r1, r2, r1
0053b25c  01 00 53 e1                                      cmp r3, r1
0053b260  f0 ff ff 3a                                      blo #0x53b228
0053b264  61 8f 8a e2                                      add r8, sl, #0x184
0053b268  08 00 a0 e1                                      mov r0, r8
0053b26c  05 10 a0 e1                                      mov r1, r5
0053b270  30 90 8d e5                                      str sb, [sp, #0x30]
0053b274  f0 fa ff eb                                      bl #0x539e3c
0053b278  01 00 70 e3                                      cmn r0, #1
0053b27c  36 00 00 0a                                      beq #0x53b35c
0053b280  84 31 9a e5                                      ldr r3, [sl, #0x184]
0053b284  80 02 83 e0                                      add r0, r3, r0, lsl #5
0053b288  1c 80 90 e5                                      ldr r8, [r0, #0x1c]
0053b28c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0053b290  05 00 50 e1                                      cmp r0, r5
0053b294  02 00 00 0a                                      beq #0x53b2a4
0053b298  00 00 50 e3                                      cmp r0, #0
0053b29c  00 00 00 0a                                      beq #0x53b2a4
0053b2a0  6a 54 f7 eb                                      bl #0x310450
0053b2a4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0053b2a8  04 00 50 e1                                      cmp r0, r4
0053b2ac  02 00 00 0a                                      beq #0x53b2bc
0053b2b0  00 00 50 e3                                      cmp r0, #0
0053b2b4  00 00 00 0a                                      beq #0x53b2bc
0053b2b8  64 54 f7 eb                                      bl #0x310450
0053b2bc  07 30 96 e7                                      ldr r3, [r6, r7]
0053b2c0  54 20 9d e5                                      ldr r2, [sp, #0x54]
0053b2c4  08 00 a0 e1                                      mov r0, r8
0053b2c8  00 30 93 e5                                      ldr r3, [r3]
0053b2cc  03 00 52 e1                                      cmp r2, r3
0053b2d0  4b 00 00 1a                                      bne #0x53b404
0053b2d4  5c d0 8d e2                                      add sp, sp, #0x5c
0053b2d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053b2dc  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
0053b2e0  04 00 a0 e1                                      mov r0, r4
0053b2e4  19 5e 8a e2                                      add r5, sl, #0x190
0053b2e8  01 10 8f e0                                      add r1, pc, r1
0053b2ec  01 20 a0 e1                                      mov r2, r1
0053b2f0  24 96 f7 eb                                      bl #0x320b88
0053b2f4  05 00 a0 e1                                      mov r0, r5
0053b2f8  04 10 a0 e1                                      mov r1, r4
0053b2fc  b2 f4 ff eb                                      bl #0x5385cc
0053b300  01 00 70 e3                                      cmn r0, #1
0053b304  a9 ff ff 1a                                      bne #0x53b1b0
0053b308  00 10 a0 e3                                      mov r1, #0
0053b30c  0c 00 a0 e3                                      mov r0, #0xc
0053b310  a5 e3 ff eb                                      bl #0x5341ac
0053b314  00 b0 a0 e1                                      mov fp, r0
0053b318  91 84 00 eb                                      bl #0x55c564
0053b31c  0b 00 a0 e1                                      mov r0, fp
0053b320  08 10 a0 e1                                      mov r1, r8
0053b324  28 84 00 eb                                      bl #0x55c3cc
0053b328  00 30 50 e2                                      subs r3, r0, #0
0053b32c  30 00 00 0a                                      beq #0x53b3f4
0053b330  05 00 a0 e1                                      mov r0, r5
0053b334  04 10 a0 e1                                      mov r1, r4
0053b338  50 b0 8d e5                                      str fp, [sp, #0x50]
0053b33c  7a f6 ff eb                                      bl #0x538d2c
0053b340  9e ff ff ea                                      b #0x53b1c0
0053b344  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0053b348  05 00 a0 e1                                      mov r0, r5
0053b34c  01 10 8f e0                                      add r1, pc, r1
0053b350  01 20 a0 e1                                      mov r2, r1
0053b354  0b 96 f7 eb                                      bl #0x320b88
0053b358  ad ff ff ea                                      b #0x53b214
0053b35c  00 10 a0 e3                                      mov r1, #0
0053b360  40 00 a0 e3                                      mov r0, #0x40
0053b364  90 e3 ff eb                                      bl #0x5341ac
0053b368  a8 11 9a e5                                      ldr r1, [sl, #0x1a8]
0053b36c  0c 00 8d e5                                      str r0, [sp, #0xc]
0053b370  0f 82 00 eb                                      bl #0x55bbb4
0053b374  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b378  00 00 5c e3                                      cmp ip, #0
0053b37c  1a 00 00 0a                                      beq #0x53b3ec
0053b380  00 20 9c e5                                      ldr r2, [ip]
0053b384  00 30 a0 e3                                      mov r3, #0
0053b388  0b 10 a0 e1                                      mov r1, fp
0053b38c  6c a0 92 e5                                      ldr sl, [r2, #0x6c]
0053b390  14 30 cd e5                                      strb r3, [sp, #0x14]
0053b394  15 30 cd e5                                      strb r3, [sp, #0x15]
0053b398  16 30 cd e5                                      strb r3, [sp, #0x16]
0053b39c  17 30 cd e5                                      strb r3, [sp, #0x17]
0053b3a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053b3a4  0c c0 8d e5                                      str ip, [sp, #0xc]
0053b3a8  09 20 a0 e1                                      mov r2, sb
0053b3ac  00 00 8d e5                                      str r0, [sp]
0053b3b0  0c 00 a0 e1                                      mov r0, ip
0053b3b4  3a ff 2f e1                                      blx sl
0053b3b8  00 30 50 e2                                      subs r3, r0, #0
0053b3bc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b3c0  03 00 00 1a                                      bne #0x53b3d4
0053b3c4  0c 00 a0 e1                                      mov r0, ip
0053b3c8  03 80 a0 e1                                      mov r8, r3
0053b3cc  6c 88 f7 eb                                      bl #0x31d584
0053b3d0  ad ff ff ea                                      b #0x53b28c
0053b3d4  08 00 a0 e1                                      mov r0, r8
0053b3d8  05 10 a0 e1                                      mov r1, r5
0053b3dc  34 c0 8d e5                                      str ip, [sp, #0x34]
0053b3e0  0c c0 8d e5                                      str ip, [sp, #0xc]
0053b3e4  a4 f6 ff eb                                      bl #0x538e7c
0053b3e8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0053b3ec  0c 80 a0 e1                                      mov r8, ip
0053b3f0  a5 ff ff ea                                      b #0x53b28c
0053b3f4  0b 00 a0 e1                                      mov r0, fp
0053b3f8  03 80 a0 e1                                      mov r8, r3
0053b3fc  60 88 f7 eb                                      bl #0x31d584
0053b400  a7 ff ff ea                                      b #0x53b2a4
0053b404  c1 4b f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053b408  b4 99 45 00 ac 40 00 00 20 05 39 00 bc 04 39 00  .byte 0xb4, 0x99, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x05, 0x39, 0x00, 0xbc, 0x04, 0x39, 0x00

; FUNCTION 0x0053b418, declared_size=956, range_size=956, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment14readGUIElementEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIEnvironment::readGUIElement(glitch::io::IIrrXMLReader<wchar_t, glitch::IReferenceCounted>*, glitch::gui::IGUIElement*)
; decoder-mode: arm
0053b418  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053b41c  90 53 9f e5                                      ldr r5, [pc, #0x390]
0053b420  90 63 9f e5                                      ldr r6, [pc, #0x390]
0053b424  64 d0 4d e2                                      sub sp, sp, #0x64
0053b428  05 50 8f e0                                      add r5, pc, r5
0053b42c  06 30 95 e7                                      ldr r3, [r5, r6]
0053b430  00 40 51 e2                                      subs r4, r1, #0
0053b434  00 70 a0 e1                                      mov r7, r0
0053b438  00 30 93 e5                                      ldr r3, [r3]
0053b43c  02 80 a0 e1                                      mov r8, r2
0053b440  5c 30 8d e5                                      str r3, [sp, #0x5c]
0053b444  40 00 00 0a                                      beq #0x53b54c
0053b448  00 30 94 e5                                      ldr r3, [r4]
0053b44c  04 00 a0 e1                                      mov r0, r4
0053b450  0f e0 a0 e1                                      mov lr, pc
0053b454  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053b458  00 00 50 e3                                      cmp r0, #0
0053b45c  06 00 50 13                                      cmpne r0, #6
0053b460  39 00 00 0a                                      beq #0x53b54c
0053b464  02 00 50 e3                                      cmp r0, #2
0053b468  37 00 00 0a                                      beq #0x53b54c
0053b46c  00 00 58 e3                                      cmp r8, #0
0053b470  ba 00 00 0a                                      beq #0x53b760
0053b474  40 23 9f e5                                      ldr r2, [pc, #0x340]
0053b478  00 30 94 e5                                      ldr r3, [r4]
0053b47c  04 00 a0 e1                                      mov r0, r4
0053b480  02 20 95 e7                                      ldr r2, [r5, r2]
0053b484  00 a0 92 e5                                      ldr sl, [r2]
0053b488  0f e0 a0 e1                                      mov lr, pc
0053b48c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b490  00 10 a0 e1                                      mov r1, r0
0053b494  0a 00 a0 e1                                      mov r0, sl
0053b498  5f 4c f7 eb                                      bl #0x30e61c
0053b49c  00 00 50 e3                                      cmp r0, #0
0053b4a0  00 80 a0 13                                      movne r8, #0
0053b4a4  93 00 00 0a                                      beq #0x53b6f8
0053b4a8  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
0053b4ac  00 30 8d e5                                      str r3, [sp]
0053b4b0  08 33 9f e5                                      ldr r3, [pc, #0x308]
0053b4b4  0c 30 8d e5                                      str r3, [sp, #0xc]
0053b4b8  04 33 9f e5                                      ldr r3, [pc, #0x304]
0053b4bc  03 30 8f e0                                      add r3, pc, r3
0053b4c0  08 30 8d e5                                      str r3, [sp, #8]
0053b4c4  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
0053b4c8  03 30 8f e0                                      add r3, pc, r3
0053b4cc  14 30 8d e5                                      str r3, [sp, #0x14]
0053b4d0  2c 30 8d e2                                      add r3, sp, #0x2c
0053b4d4  10 30 8d e5                                      str r3, [sp, #0x10]
0053b4d8  1c 30 8d e2                                      add r3, sp, #0x1c
0053b4dc  04 30 8d e5                                      str r3, [sp, #4]
0053b4e0  00 30 94 e5                                      ldr r3, [r4]
0053b4e4  04 00 a0 e1                                      mov r0, r4
0053b4e8  0f e0 a0 e1                                      mov lr, pc
0053b4ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053b4f0  00 00 50 e3                                      cmp r0, #0
0053b4f4  14 00 00 0a                                      beq #0x53b54c
0053b4f8  00 30 94 e5                                      ldr r3, [r4]
0053b4fc  04 00 a0 e1                                      mov r0, r4
0053b500  0f e0 a0 e1                                      mov lr, pc
0053b504  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053b508  01 00 50 e3                                      cmp r0, #1
0053b50c  00 b0 a0 e1                                      mov fp, r0
0053b510  14 00 00 0a                                      beq #0x53b568
0053b514  02 00 50 e3                                      cmp r0, #2
0053b518  f0 ff ff 1a                                      bne #0x53b4e0
0053b51c  00 30 9d e5                                      ldr r3, [sp]
0053b520  04 00 a0 e1                                      mov r0, r4
0053b524  03 20 95 e7                                      ldr r2, [r5, r3]
0053b528  00 30 94 e5                                      ldr r3, [r4]
0053b52c  00 a0 92 e5                                      ldr sl, [r2]
0053b530  0f e0 a0 e1                                      mov lr, pc
0053b534  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b538  00 10 a0 e1                                      mov r1, r0
0053b53c  0a 00 a0 e1                                      mov r0, sl
0053b540  35 4c f7 eb                                      bl #0x30e61c
0053b544  00 00 50 e3                                      cmp r0, #0
0053b548  3e 00 00 1a                                      bne #0x53b648
0053b54c  06 30 95 e7                                      ldr r3, [r5, r6]
0053b550  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0053b554  00 30 93 e5                                      ldr r3, [r3]
0053b558  03 00 52 e1                                      cmp r2, r3
0053b55c  93 00 00 1a                                      bne #0x53b7b0
0053b560  64 d0 8d e2                                      add sp, sp, #0x64
0053b564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053b568  00 30 94 e5                                      ldr r3, [r4]
0053b56c  04 00 a0 e1                                      mov r0, r4
0053b570  0f e0 a0 e1                                      mov lr, pc
0053b574  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b578  00 10 a0 e1                                      mov r1, r0
0053b57c  08 00 9d e5                                      ldr r0, [sp, #8]
0053b580  25 4c f7 eb                                      bl #0x30e61c
0053b584  00 a0 50 e2                                      subs sl, r0, #0
0053b588  1b 00 00 1a                                      bne #0x53b5fc
0053b58c  c0 31 97 e5                                      ldr r3, [r7, #0x1c0]
0053b590  a8 11 97 e5                                      ldr r1, [r7, #0x1a8]
0053b594  03 00 a0 e1                                      mov r0, r3
0053b598  00 30 93 e5                                      ldr r3, [r3]
0053b59c  0f e0 a0 e1                                      mov lr, pc
0053b5a0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0053b5a4  04 10 a0 e1                                      mov r1, r4
0053b5a8  00 90 a0 e1                                      mov sb, r0
0053b5ac  0b 20 a0 e1                                      mov r2, fp
0053b5b0  0a 30 a0 e1                                      mov r3, sl
0053b5b4  04 00 9d e5                                      ldr r0, [sp, #4]
0053b5b8  d6 d5 00 eb                                      bl #0x570d18
0053b5bc  04 00 9d e5                                      ldr r0, [sp, #4]
0053b5c0  09 10 a0 e1                                      mov r1, sb
0053b5c4  d5 d8 00 eb                                      bl #0x571920
0053b5c8  00 00 58 e3                                      cmp r8, #0
0053b5cc  05 00 00 0a                                      beq #0x53b5e8
0053b5d0  0a 20 a0 e1                                      mov r2, sl
0053b5d4  00 30 98 e5                                      ldr r3, [r8]
0053b5d8  08 00 a0 e1                                      mov r0, r8
0053b5dc  09 10 a0 e1                                      mov r1, sb
0053b5e0  0f e0 a0 e1                                      mov lr, pc
0053b5e4  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0053b5e8  09 00 a0 e1                                      mov r0, sb
0053b5ec  e4 87 f7 eb                                      bl #0x31d584
0053b5f0  04 00 9d e5                                      ldr r0, [sp, #4]
0053b5f4  e7 d5 00 eb                                      bl #0x570d98
0053b5f8  b8 ff ff ea                                      b #0x53b4e0
0053b5fc  00 30 9d e5                                      ldr r3, [sp]
0053b600  04 00 a0 e1                                      mov r0, r4
0053b604  03 20 95 e7                                      ldr r2, [r5, r3]
0053b608  00 30 94 e5                                      ldr r3, [r4]
0053b60c  00 a0 92 e5                                      ldr sl, [r2]
0053b610  0f e0 a0 e1                                      mov lr, pc
0053b614  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b618  00 10 a0 e1                                      mov r1, r0
0053b61c  0a 00 a0 e1                                      mov r0, sl
0053b620  fd 4b f7 eb                                      bl #0x30e61c
0053b624  00 00 50 e3                                      cmp r0, #0
0053b628  13 00 00 1a                                      bne #0x53b67c
0053b62c  00 30 97 e5                                      ldr r3, [r7]
0053b630  07 00 a0 e1                                      mov r0, r7
0053b634  04 10 a0 e1                                      mov r1, r4
0053b638  08 20 a0 e1                                      mov r2, r8
0053b63c  0f e0 a0 e1                                      mov lr, pc
0053b640  04 f1 93 e5                                      ldr pc, [r3, #0x104]
0053b644  a5 ff ff ea                                      b #0x53b4e0
0053b648  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053b64c  04 00 a0 e1                                      mov r0, r4
0053b650  03 20 95 e7                                      ldr r2, [r5, r3]
0053b654  00 30 94 e5                                      ldr r3, [r4]
0053b658  00 a0 92 e5                                      ldr sl, [r2]
0053b65c  0f e0 a0 e1                                      mov lr, pc
0053b660  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b664  00 10 a0 e1                                      mov r1, r0
0053b668  0a 00 a0 e1                                      mov r0, sl
0053b66c  ea 4b f7 eb                                      bl #0x30e61c
0053b670  00 00 50 e3                                      cmp r0, #0
0053b674  b4 ff ff 0a                                      beq #0x53b54c
0053b678  98 ff ff ea                                      b #0x53b4e0
0053b67c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053b680  04 00 a0 e1                                      mov r0, r4
0053b684  03 20 95 e7                                      ldr r2, [r5, r3]
0053b688  00 30 94 e5                                      ldr r3, [r4]
0053b68c  00 a0 92 e5                                      ldr sl, [r2]
0053b690  0f e0 a0 e1                                      mov lr, pc
0053b694  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b698  00 10 a0 e1                                      mov r1, r0
0053b69c  0a 00 a0 e1                                      mov r0, sl
0053b6a0  dd 4b f7 eb                                      bl #0x30e61c
0053b6a4  00 00 50 e3                                      cmp r0, #0
0053b6a8  df ff ff 0a                                      beq #0x53b62c
0053b6ac  00 30 94 e5                                      ldr r3, [r4]
0053b6b0  04 00 a0 e1                                      mov r0, r4
0053b6b4  0f e0 a0 e1                                      mov lr, pc
0053b6b8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b6bc  00 10 a0 e1                                      mov r1, r0
0053b6c0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0053b6c4  63 ad f7 eb                                      bl #0x326c58
0053b6c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0053b6cc  0b 20 a0 e1                                      mov r2, fp
0053b6d0  40 10 9d e5                                      ldr r1, [sp, #0x40]
0053b6d4  83 3d 03 eb                                      bl #0x60ace8
0053b6d8  40 00 9d e5                                      ldr r0, [sp, #0x40]
0053b6dc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0053b6e0  03 00 50 e1                                      cmp r0, r3
0053b6e4  7d ff ff 0a                                      beq #0x53b4e0
0053b6e8  00 00 50 e3                                      cmp r0, #0
0053b6ec  7b ff ff 0a                                      beq #0x53b4e0
0053b6f0  56 53 f7 eb                                      bl #0x310450
0053b6f4  79 ff ff ea                                      b #0x53b4e0
0053b6f8  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0053b6fc  00 30 94 e5                                      ldr r3, [r4]
0053b700  04 00 a0 e1                                      mov r0, r4
0053b704  02 20 95 e7                                      ldr r2, [r5, r2]
0053b708  44 a0 8d e2                                      add sl, sp, #0x44
0053b70c  00 10 92 e5                                      ldr r1, [r2]
0053b710  0f e0 a0 e1                                      mov lr, pc
0053b714  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053b718  00 10 a0 e1                                      mov r1, r0
0053b71c  0a 00 a0 e1                                      mov r0, sl
0053b720  4c ad f7 eb                                      bl #0x326c58
0053b724  08 20 a0 e1                                      mov r2, r8
0053b728  00 30 97 e5                                      ldr r3, [r7]
0053b72c  07 00 a0 e1                                      mov r0, r7
0053b730  58 10 9d e5                                      ldr r1, [sp, #0x58]
0053b734  0f e0 a0 e1                                      mov lr, pc
0053b738  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0053b73c  00 80 50 e2                                      subs r8, r0, #0
0053b740  14 00 00 0a                                      beq #0x53b798
0053b744  58 00 9d e5                                      ldr r0, [sp, #0x58]
0053b748  0a 00 50 e1                                      cmp r0, sl
0053b74c  55 ff ff 0a                                      beq #0x53b4a8
0053b750  00 00 50 e3                                      cmp r0, #0
0053b754  53 ff ff 0a                                      beq #0x53b4a8
0053b758  3c 53 f7 eb                                      bl #0x310450
0053b75c  51 ff ff ea                                      b #0x53b4a8
0053b760  58 20 9f e5                                      ldr r2, [pc, #0x58]
0053b764  00 30 94 e5                                      ldr r3, [r4]
0053b768  04 00 a0 e1                                      mov r0, r4
0053b76c  02 20 95 e7                                      ldr r2, [r5, r2]
0053b770  00 a0 92 e5                                      ldr sl, [r2]
0053b774  0f e0 a0 e1                                      mov lr, pc
0053b778  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0053b77c  00 10 a0 e1                                      mov r1, r0
0053b780  0a 00 a0 e1                                      mov r0, sl
0053b784  a4 4b f7 eb                                      bl #0x30e61c
0053b788  00 00 50 e3                                      cmp r0, #0
0053b78c  08 80 87 02                                      addeq r8, r7, #8
0053b790  44 ff ff 0a                                      beq #0x53b4a8
0053b794  36 ff ff ea                                      b #0x53b474
0053b798  30 00 9f e5                                      ldr r0, [pc, #0x30]
0053b79c  58 10 9d e5                                      ldr r1, [sp, #0x58]
0053b7a0  01 20 a0 e3                                      mov r2, #1
0053b7a4  00 00 8f e0                                      add r0, pc, r0
0053b7a8  4e 3d 03 eb                                      bl #0x60ace8
0053b7ac  e4 ff ff ea                                      b #0x53b744
0053b7b0  d6 4a f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053b7b4  68 96 45 00 ac 40 00 00 3c 1a 00 00 c0 49 00 00  .byte 0x68, 0x96, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x1a, 0x00, 0x00, 0xc0, 0x49, 0x00, 0x00
0053b7c4  1c 37 38 00 a8 2a 3a 00 a4 07 00 00 9c 27 3a 00  .byte 0x1c, 0x37, 0x38, 0x00, 0xa8, 0x2a, 0x3a, 0x00, 0xa4, 0x07, 0x00, 0x00, 0x9c, 0x27, 0x3a, 0x00

; FUNCTION 0x0053b7d4, declared_size=1296, range_size=1296, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment7getFontEPKc
; demangled: glitch::gui::CGUIEnvironment::getFont(char const*)
; decoder-mode: arm
0053b7d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053b7d8  dc 64 9f e5                                      ldr r6, [pc, #0x4dc]
0053b7dc  dc a4 9f e5                                      ldr sl, [pc, #0x4dc]
0053b7e0  57 df 4d e2                                      sub sp, sp, #0x15c
0053b7e4  06 60 8f e0                                      add r6, pc, r6
0053b7e8  0a 30 96 e7                                      ldr r3, [r6, sl]
0053b7ec  42 4f 8d e2                                      add r4, sp, #0x108
0053b7f0  01 70 a0 e1                                      mov r7, r1
0053b7f4  00 30 93 e5                                      ldr r3, [r3]
0053b7f8  00 80 a0 e1                                      mov r8, r0
0053b7fc  10 10 a0 e3                                      mov r1, #0x10
0053b800  04 00 a0 e1                                      mov r0, r4
0053b804  54 31 8d e5                                      str r3, [sp, #0x154]
0053b808  18 41 8d e5                                      str r4, [sp, #0x118]
0053b80c  1c 41 8d e5                                      str r4, [sp, #0x11c]
0053b810  64 94 f7 eb                                      bl #0x3209a8
0053b814  18 31 9d e5                                      ldr r3, [sp, #0x118]
0053b818  00 20 a0 e3                                      mov r2, #0
0053b81c  00 00 57 e3                                      cmp r7, #0
0053b820  00 20 c3 e5                                      strb r2, [r3]
0053b824  31 00 00 0a                                      beq #0x53b8f0
0053b828  07 00 a0 e1                                      mov r0, r7
0053b82c  88 49 f7 eb                                      bl #0x30de54
0053b830  07 10 a0 e1                                      mov r1, r7
0053b834  00 20 87 e0                                      add r2, r7, r0
0053b838  04 00 a0 e1                                      mov r0, r4
0053b83c  d1 94 f7 eb                                      bl #0x320b88
0053b840  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
0053b844  18 31 9d e5                                      ldr r3, [sp, #0x118]
0053b848  03 00 52 e1                                      cmp r2, r3
0053b84c  0f 00 00 0a                                      beq #0x53b890
0053b850  00 30 a0 e3                                      mov r3, #0
0053b854  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053b858  03 20 82 e0                                      add r2, r2, r3
0053b85c  01 30 83 e2                                      add r3, r3, #1
0053b860  71 00 ef e6                                      uxtb r0, r1
0053b864  41 c0 40 e2                                      sub ip, r0, #0x41
0053b868  7c c0 ef e6                                      uxtb ip, ip
0053b86c  19 00 5c e3                                      cmp ip, #0x19
0053b870  20 10 80 92                                      addls r1, r0, #0x20
0053b874  71 10 ef 96                                      uxtbls r1, r1
0053b878  00 10 c2 e5                                      strb r1, [r2]
0053b87c  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
0053b880  18 11 9d e5                                      ldr r1, [sp, #0x118]
0053b884  01 10 62 e0                                      rsb r1, r2, r1
0053b888  01 00 53 e1                                      cmp r3, r1
0053b88c  f0 ff ff 3a                                      blo #0x53b854
0053b890  5e 9f 88 e2                                      add sb, r8, #0x178
0053b894  09 00 a0 e1                                      mov r0, sb
0053b898  04 10 a0 e1                                      mov r1, r4
0053b89c  9c f2 ff eb                                      bl #0x538314
0053b8a0  01 00 70 e3                                      cmn r0, #1
0053b8a4  17 00 00 0a                                      beq #0x53b908
0053b8a8  78 31 98 e5                                      ldr r3, [r8, #0x178]
0053b8ac  1c 20 a0 e3                                      mov r2, #0x1c
0053b8b0  92 30 20 e0                                      mla r0, r2, r0, r3
0053b8b4  18 70 90 e5                                      ldr r7, [r0, #0x18]
0053b8b8  1c 01 9d e5                                      ldr r0, [sp, #0x11c]
0053b8bc  04 00 50 e1                                      cmp r0, r4
0053b8c0  02 00 00 0a                                      beq #0x53b8d0
0053b8c4  00 00 50 e3                                      cmp r0, #0
0053b8c8  00 00 00 0a                                      beq #0x53b8d0
0053b8cc  df 52 f7 eb                                      bl #0x310450
0053b8d0  0a 30 96 e7                                      ldr r3, [r6, sl]
0053b8d4  54 21 9d e5                                      ldr r2, [sp, #0x154]
0053b8d8  07 00 a0 e1                                      mov r0, r7
0053b8dc  00 30 93 e5                                      ldr r3, [r3]
0053b8e0  03 00 52 e1                                      cmp r2, r3
0053b8e4  f3 00 00 1a                                      bne #0x53bcb8
0053b8e8  57 df 8d e2                                      add sp, sp, #0x15c
0053b8ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053b8f0  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
0053b8f4  04 00 a0 e1                                      mov r0, r4
0053b8f8  01 10 8f e0                                      add r1, pc, r1
0053b8fc  01 20 a0 e1                                      mov r2, r1
0053b900  a0 94 f7 eb                                      bl #0x320b88
0053b904  cd ff ff ea                                      b #0x53b840
0053b908  c0 31 98 e5                                      ldr r3, [r8, #0x1c0]
0053b90c  07 10 a0 e1                                      mov r1, r7
0053b910  03 00 a0 e1                                      mov r0, r3
0053b914  00 30 93 e5                                      ldr r3, [r3]
0053b918  0f e0 a0 e1                                      mov lr, pc
0053b91c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0053b920  00 50 50 e2                                      subs r5, r0, #0
0053b924  d3 00 00 0a                                      beq #0x53bc78
0053b928  c0 31 98 e5                                      ldr r3, [r8, #0x1c0]
0053b92c  07 10 a0 e1                                      mov r1, r7
0053b930  03 00 a0 e1                                      mov r0, r3
0053b934  00 30 93 e5                                      ldr r3, [r3]
0053b938  0f e0 a0 e1                                      mov lr, pc
0053b93c  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0053b940  00 50 50 e2                                      subs r5, r0, #0
0053b944  1e 00 00 0a                                      beq #0x53b9c4
0053b948  78 33 9f e5                                      ldr r3, [pc, #0x378]
0053b94c  03 20 a0 e3                                      mov r2, #3
0053b950  00 b0 a0 e3                                      mov fp, #0
0053b954  03 30 8f e0                                      add r3, pc, r3
0053b958  08 30 8d e5                                      str r3, [sp, #8]
0053b95c  68 33 9f e5                                      ldr r3, [pc, #0x368]
0053b960  0c 20 8d e5                                      str r2, [sp, #0xc]
0053b964  03 30 8f e0                                      add r3, pc, r3
0053b968  10 30 8d e5                                      str r3, [sp, #0x10]
0053b96c  5c 33 9f e5                                      ldr r3, [pc, #0x35c]
0053b970  03 30 8f e0                                      add r3, pc, r3
0053b974  14 30 8d e5                                      str r3, [sp, #0x14]
0053b978  54 33 9f e5                                      ldr r3, [pc, #0x354]
0053b97c  03 30 8f e0                                      add r3, pc, r3
0053b980  18 30 8d e5                                      str r3, [sp, #0x18]
0053b984  4c 33 9f e5                                      ldr r3, [pc, #0x34c]
0053b988  1c 30 8d e5                                      str r3, [sp, #0x1c]
0053b98c  00 30 95 e5                                      ldr r3, [r5]
0053b990  05 00 a0 e1                                      mov r0, r5
0053b994  0f e0 a0 e1                                      mov lr, pc
0053b998  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0053b99c  00 00 50 e3                                      cmp r0, #0
0053b9a0  1a 00 00 1a                                      bne #0x53ba10
0053b9a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053b9a8  00 00 53 e3                                      cmp r3, #0
0053b9ac  73 00 00 0a                                      beq #0x53bb80
0053b9b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053b9b4  01 00 53 e3                                      cmp r3, #1
0053b9b8  b5 00 00 0a                                      beq #0x53bc94
0053b9bc  05 00 a0 e1                                      mov r0, r5
0053b9c0  ef 86 f7 eb                                      bl #0x31d584
0053b9c4  00 10 a0 e3                                      mov r1, #0
0053b9c8  48 00 a0 e3                                      mov r0, #0x48
0053b9cc  1c 71 9d e5                                      ldr r7, [sp, #0x11c]
0053b9d0  f5 e1 ff eb                                      bl #0x5341ac
0053b9d4  07 20 a0 e1                                      mov r2, r7
0053b9d8  00 50 a0 e1                                      mov r5, r0
0053b9dc  08 10 a0 e1                                      mov r1, r8
0053b9e0  c7 08 00 eb                                      bl #0x53dd04
0053b9e4  05 00 a0 e1                                      mov r0, r5
0053b9e8  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
0053b9ec  42 10 00 eb                                      bl #0x53fafc
0053b9f0  00 70 50 e2                                      subs r7, r0, #0
0053b9f4  05 70 a0 11                                      movne r7, r5
0053b9f8  5d 00 00 0a                                      beq #0x53bb74
0053b9fc  09 00 a0 e1                                      mov r0, sb
0053ba00  04 10 a0 e1                                      mov r1, r4
0053ba04  20 71 8d e5                                      str r7, [sp, #0x120]
0053ba08  1f f4 ff eb                                      bl #0x538a8c
0053ba0c  a9 ff ff ea                                      b #0x53b8b8
0053ba10  00 00 5b e3                                      cmp fp, #0
0053ba14  e2 ff ff 1a                                      bne #0x53b9a4
0053ba18  00 30 95 e5                                      ldr r3, [r5]
0053ba1c  05 00 a0 e1                                      mov r0, r5
0053ba20  0f e0 a0 e1                                      mov lr, pc
0053ba24  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0053ba28  01 00 50 e3                                      cmp r0, #1
0053ba2c  d6 ff ff 1a                                      bne #0x53b98c
0053ba30  b0 30 8d e2                                      add r3, sp, #0xb0
0053ba34  08 10 9d e5                                      ldr r1, [sp, #8]
0053ba38  03 00 a0 e1                                      mov r0, r3
0053ba3c  41 2f 8d e2                                      add r2, sp, #0x104
0053ba40  04 30 8d e5                                      str r3, [sp, #4]
0053ba44  2c a9 f7 eb                                      bl #0x325efc
0053ba48  00 20 95 e5                                      ldr r2, [r5]
0053ba4c  05 00 a0 e1                                      mov r0, r5
0053ba50  0f e0 a0 e1                                      mov lr, pc
0053ba54  3c f0 92 e5                                      ldr pc, [r2, #0x3c]
0053ba58  04 30 9d e5                                      ldr r3, [sp, #4]
0053ba5c  00 10 a0 e1                                      mov r1, r0
0053ba60  03 00 a0 e1                                      mov r0, r3
0053ba64  66 ea ff eb                                      bl #0x536404
0053ba68  04 30 9d e5                                      ldr r3, [sp, #4]
0053ba6c  00 20 a0 e1                                      mov r2, r0
0053ba70  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
0053ba74  03 00 50 e1                                      cmp r0, r3
0053ba78  04 00 00 0a                                      beq #0x53ba90
0053ba7c  00 00 50 e3                                      cmp r0, #0
0053ba80  02 00 00 0a                                      beq #0x53ba90
0053ba84  04 20 8d e5                                      str r2, [sp, #4]
0053ba88  70 52 f7 eb                                      bl #0x310450
0053ba8c  04 20 9d e5                                      ldr r2, [sp, #4]
0053ba90  00 00 52 e3                                      cmp r2, #0
0053ba94  bc ff ff 0a                                      beq #0x53b98c
0053ba98  68 b0 8d e2                                      add fp, sp, #0x68
0053ba9c  01 2c 8d e2                                      add r2, sp, #0x100
0053baa0  10 10 9d e5                                      ldr r1, [sp, #0x10]
0053baa4  0b 00 a0 e1                                      mov r0, fp
0053baa8  13 a9 f7 eb                                      bl #0x325efc
0053baac  00 30 95 e5                                      ldr r3, [r5]
0053bab0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0053bab4  05 00 a0 e1                                      mov r0, r5
0053bab8  0f e0 a0 e1                                      mov lr, pc
0053babc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053bac0  00 10 a0 e1                                      mov r1, r0
0053bac4  0b 00 a0 e1                                      mov r0, fp
0053bac8  4d ea ff eb                                      bl #0x536404
0053bacc  00 30 a0 e1                                      mov r3, r0
0053bad0  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0053bad4  0b 00 50 e1                                      cmp r0, fp
0053bad8  04 00 00 0a                                      beq #0x53baf0
0053badc  00 00 50 e3                                      cmp r0, #0
0053bae0  02 00 00 0a                                      beq #0x53baf0
0053bae4  04 30 8d e5                                      str r3, [sp, #4]
0053bae8  58 52 f7 eb                                      bl #0x310450
0053baec  04 30 9d e5                                      ldr r3, [sp, #4]
0053baf0  00 00 53 e3                                      cmp r3, #0
0053baf4  01 b0 a0 e3                                      mov fp, #1
0053baf8  0c b0 8d 15                                      strne fp, [sp, #0xc]
0053bafc  a2 ff ff 1a                                      bne #0x53b98c
0053bb00  20 b0 8d e2                                      add fp, sp, #0x20
0053bb04  fc 20 8d e2                                      add r2, sp, #0xfc
0053bb08  18 10 9d e5                                      ldr r1, [sp, #0x18]
0053bb0c  0b 00 a0 e1                                      mov r0, fp
0053bb10  f9 a8 f7 eb                                      bl #0x325efc
0053bb14  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0053bb18  00 30 95 e5                                      ldr r3, [r5]
0053bb1c  05 00 a0 e1                                      mov r0, r5
0053bb20  02 10 8f e0                                      add r1, pc, r2
0053bb24  0f e0 a0 e1                                      mov lr, pc
0053bb28  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0053bb2c  00 10 a0 e1                                      mov r1, r0
0053bb30  0b 00 a0 e1                                      mov r0, fp
0053bb34  32 ea ff eb                                      bl #0x536404
0053bb38  00 30 a0 e1                                      mov r3, r0
0053bb3c  64 00 9d e5                                      ldr r0, [sp, #0x64]
0053bb40  0b 00 50 e1                                      cmp r0, fp
0053bb44  04 00 00 0a                                      beq #0x53bb5c
0053bb48  00 00 50 e3                                      cmp r0, #0
0053bb4c  02 00 00 0a                                      beq #0x53bb5c
0053bb50  04 30 8d e5                                      str r3, [sp, #4]
0053bb54  3d 52 f7 eb                                      bl #0x310450
0053bb58  04 30 9d e5                                      ldr r3, [sp, #4]
0053bb5c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0053bb60  00 00 53 e3                                      cmp r3, #0
0053bb64  00 20 a0 13                                      movne r2, #0
0053bb68  0c 20 8d e5                                      str r2, [sp, #0xc]
0053bb6c  01 b0 a0 e3                                      mov fp, #1
0053bb70  85 ff ff ea                                      b #0x53b98c
0053bb74  05 00 a0 e1                                      mov r0, r5
0053bb78  81 86 f7 eb                                      bl #0x31d584
0053bb7c  4d ff ff ea                                      b #0x53b8b8
0053bb80  03 10 a0 e1                                      mov r1, r3
0053bb84  48 00 a0 e3                                      mov r0, #0x48
0053bb88  87 e1 ff eb                                      bl #0x5341ac
0053bb8c  08 10 a0 e1                                      mov r1, r8
0053bb90  07 20 a0 e1                                      mov r2, r7
0053bb94  08 00 8d e5                                      str r0, [sp, #8]
0053bb98  59 08 00 eb                                      bl #0x53dd04
0053bb9c  c0 31 98 e5                                      ldr r3, [r8, #0x1c0]
0053bba0  4f 2f 8d e2                                      add r2, sp, #0x13c
0053bba4  10 20 8d e5                                      str r2, [sp, #0x10]
0053bba8  49 2f 8d e2                                      add r2, sp, #0x124
0053bbac  0c 20 8d e5                                      str r2, [sp, #0xc]
0053bbb0  03 00 a0 e1                                      mov r0, r3
0053bbb4  00 30 93 e5                                      ldr r3, [r3]
0053bbb8  0f e0 a0 e1                                      mov lr, pc
0053bbbc  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0053bbc0  f8 20 8d e2                                      add r2, sp, #0xf8
0053bbc4  00 10 a0 e1                                      mov r1, r0
0053bbc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0053bbcc  1a a9 f7 eb                                      bl #0x32603c
0053bbd0  c0 b1 98 e5                                      ldr fp, [r8, #0x1c0]
0053bbd4  04 20 a0 e1                                      mov r2, r4
0053bbd8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0053bbdc  00 30 9b e5                                      ldr r3, [fp]
0053bbe0  0b 10 a0 e1                                      mov r1, fp
0053bbe4  30 70 93 e5                                      ldr r7, [r3, #0x30]
0053bbe8  0f e0 a0 e1                                      mov lr, pc
0053bbec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0053bbf0  0b 00 a0 e1                                      mov r0, fp
0053bbf4  38 11 9d e5                                      ldr r1, [sp, #0x138]
0053bbf8  37 ff 2f e1                                      blx r7
0053bbfc  38 01 9d e5                                      ldr r0, [sp, #0x138]
0053bc00  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0053bc04  03 00 50 e1                                      cmp r0, r3
0053bc08  02 00 00 0a                                      beq #0x53bc18
0053bc0c  00 00 50 e3                                      cmp r0, #0
0053bc10  00 00 00 0a                                      beq #0x53bc18
0053bc14  0d 52 f7 eb                                      bl #0x310450
0053bc18  08 00 9d e5                                      ldr r0, [sp, #8]
0053bc1c  05 10 a0 e1                                      mov r1, r5
0053bc20  eb 0f 00 eb                                      bl #0x53fbd4
0053bc24  00 70 50 e2                                      subs r7, r0, #0
0053bc28  08 70 9d 15                                      ldrne r7, [sp, #8]
0053bc2c  1e 00 00 0a                                      beq #0x53bcac
0053bc30  c0 31 98 e5                                      ldr r3, [r8, #0x1c0]
0053bc34  50 11 9d e5                                      ldr r1, [sp, #0x150]
0053bc38  03 00 a0 e1                                      mov r0, r3
0053bc3c  00 30 93 e5                                      ldr r3, [r3]
0053bc40  0f e0 a0 e1                                      mov lr, pc
0053bc44  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0053bc48  50 01 9d e5                                      ldr r0, [sp, #0x150]
0053bc4c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0053bc50  02 00 50 e1                                      cmp r0, r2
0053bc54  02 00 00 0a                                      beq #0x53bc64
0053bc58  00 00 50 e3                                      cmp r0, #0
0053bc5c  00 00 00 0a                                      beq #0x53bc64
0053bc60  fa 51 f7 eb                                      bl #0x310450
0053bc64  05 00 a0 e1                                      mov r0, r5
0053bc68  45 86 f7 eb                                      bl #0x31d584
0053bc6c  00 00 57 e3                                      cmp r7, #0
0053bc70  61 ff ff 1a                                      bne #0x53b9fc
0053bc74  52 ff ff ea                                      b #0x53b9c4
0053bc78  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0053bc7c  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
0053bc80  03 20 a0 e3                                      mov r2, #3
0053bc84  00 00 8f e0                                      add r0, pc, r0
0053bc88  16 3c 03 eb                                      bl #0x60ace8
0053bc8c  05 70 a0 e1                                      mov r7, r5
0053bc90  08 ff ff ea                                      b #0x53b8b8
0053bc94  44 00 9f e5                                      ldr r0, [pc, #0x44]
0053bc98  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
0053bc9c  03 20 a0 e3                                      mov r2, #3
0053bca0  00 00 8f e0                                      add r0, pc, r0
0053bca4  0f 3c 03 eb                                      bl #0x60ace8
0053bca8  43 ff ff ea                                      b #0x53b9bc
0053bcac  08 00 9d e5                                      ldr r0, [sp, #8]
0053bcb0  33 86 f7 eb                                      bl #0x31d584
0053bcb4  dd ff ff ea                                      b #0x53bc30
0053bcb8  94 49 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053bcbc  ac 92 45 00 ac 40 00 00 10 ff 38 00 b4 23 3a 00  .byte 0xac, 0x92, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0x10, 0xff, 0x38, 0x00, 0xb4, 0x23, 0x3a, 0x00
0053bccc  bc 23 3a 00 d0 23 3a 00 dc 23 3a 00 20 22 3a 00  .byte 0xbc, 0x23, 0x3a, 0x00, 0xd0, 0x23, 0x3a, 0x00, 0xdc, 0x23, 0x3a, 0x00, 0x20, 0x22, 0x3a, 0x00
0053bcdc  1c 23 3a 00 38 23 3a 00                          .byte 0x1c, 0x23, 0x3a, 0x00, 0x38, 0x23, 0x3a, 0x00

; FUNCTION 0x0053bce4, declared_size=616, range_size=616, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZN6glitch3gui15CGUIEnvironment12removeTTFontEPKcj
; demangled: glitch::gui::CGUIEnvironment::removeTTFont(char const*, unsigned int)
; decoder-mode: arm
0053bce4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0053bce8  4c 62 9f e5                                      ldr r6, [pc, #0x24c]
0053bcec  4c a2 9f e5                                      ldr sl, [pc, #0x24c]
0053bcf0  54 d0 4d e2                                      sub sp, sp, #0x54
0053bcf4  06 60 8f e0                                      add r6, pc, r6
0053bcf8  0a 30 96 e7                                      ldr r3, [r6, sl]
0053bcfc  30 50 8d e2                                      add r5, sp, #0x30
0053bd00  01 40 a0 e1                                      mov r4, r1
0053bd04  00 30 93 e5                                      ldr r3, [r3]
0053bd08  00 80 a0 e1                                      mov r8, r0
0053bd0c  10 10 a0 e3                                      mov r1, #0x10
0053bd10  05 00 a0 e1                                      mov r0, r5
0053bd14  4c 30 8d e5                                      str r3, [sp, #0x4c]
0053bd18  02 90 a0 e1                                      mov sb, r2
0053bd1c  40 50 8d e5                                      str r5, [sp, #0x40]
0053bd20  44 50 8d e5                                      str r5, [sp, #0x44]
0053bd24  1f 93 f7 eb                                      bl #0x3209a8
0053bd28  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053bd2c  00 20 a0 e3                                      mov r2, #0
0053bd30  00 00 54 e3                                      cmp r4, #0
0053bd34  00 20 c3 e5                                      strb r2, [r3]
0053bd38  72 00 00 0a                                      beq #0x53bf08
0053bd3c  04 00 a0 e1                                      mov r0, r4
0053bd40  43 48 f7 eb                                      bl #0x30de54
0053bd44  04 10 a0 e1                                      mov r1, r4
0053bd48  00 20 84 e0                                      add r2, r4, r0
0053bd4c  05 00 a0 e1                                      mov r0, r5
0053bd50  8c 93 f7 eb                                      bl #0x320b88
0053bd54  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053bd58  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053bd5c  02 00 53 e1                                      cmp r3, r2
0053bd60  0f 00 00 0a                                      beq #0x53bda4
0053bd64  00 30 a0 e3                                      mov r3, #0
0053bd68  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053bd6c  03 20 82 e0                                      add r2, r2, r3
0053bd70  01 30 83 e2                                      add r3, r3, #1
0053bd74  71 00 ef e6                                      uxtb r0, r1
0053bd78  41 c0 40 e2                                      sub ip, r0, #0x41
0053bd7c  7c c0 ef e6                                      uxtb ip, ip
0053bd80  19 00 5c e3                                      cmp ip, #0x19
0053bd84  20 10 80 92                                      addls r1, r0, #0x20
0053bd88  71 10 ef 96                                      uxtbls r1, r1
0053bd8c  00 10 c2 e5                                      strb r1, [r2]
0053bd90  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053bd94  40 10 9d e5                                      ldr r1, [sp, #0x40]
0053bd98  01 10 62 e0                                      rsb r1, r2, r1
0053bd9c  01 00 53 e1                                      cmp r3, r1
0053bda0  f0 ff ff 3a                                      blo #0x53bd68
0053bda4  19 0e 88 e2                                      add r0, r8, #0x190
0053bda8  05 10 a0 e1                                      mov r1, r5
0053bdac  06 f2 ff eb                                      bl #0x5385cc
0053bdb0  01 00 70 e3                                      cmn r0, #1
0053bdb4  00 90 a0 03                                      moveq sb, #0
0053bdb8  44 00 00 0a                                      beq #0x53bed0
0053bdbc  10 70 8d e2                                      add r7, sp, #0x10
0053bdc0  07 00 a0 e1                                      mov r0, r7
0053bdc4  10 10 a0 e3                                      mov r1, #0x10
0053bdc8  20 70 8d e5                                      str r7, [sp, #0x20]
0053bdcc  24 70 8d e5                                      str r7, [sp, #0x24]
0053bdd0  f4 92 f7 eb                                      bl #0x3209a8
0053bdd4  20 30 9d e5                                      ldr r3, [sp, #0x20]
0053bdd8  00 20 a0 e3                                      mov r2, #0
0053bddc  00 00 54 e3                                      cmp r4, #0
0053bde0  00 20 c3 e5                                      strb r2, [r3]
0053bde4  4d 00 00 0a                                      beq #0x53bf20
0053bde8  04 00 a0 e1                                      mov r0, r4
0053bdec  18 48 f7 eb                                      bl #0x30de54
0053bdf0  04 10 a0 e1                                      mov r1, r4
0053bdf4  00 20 84 e0                                      add r2, r4, r0
0053bdf8  07 00 a0 e1                                      mov r0, r7
0053bdfc  61 93 f7 eb                                      bl #0x320b88
0053be00  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053be04  40 30 9d e5                                      ldr r3, [sp, #0x40]
0053be08  03 00 52 e1                                      cmp r2, r3
0053be0c  0f 00 00 0a                                      beq #0x53be50
0053be10  00 30 a0 e3                                      mov r3, #0
0053be14  03 10 d2 e7                                      ldrb r1, [r2, r3]
0053be18  03 20 82 e0                                      add r2, r2, r3
0053be1c  01 30 83 e2                                      add r3, r3, #1
0053be20  71 00 ef e6                                      uxtb r0, r1
0053be24  41 c0 40 e2                                      sub ip, r0, #0x41
0053be28  7c c0 ef e6                                      uxtb ip, ip
0053be2c  19 00 5c e3                                      cmp ip, #0x19
0053be30  20 10 80 92                                      addls r1, r0, #0x20
0053be34  71 10 ef 96                                      uxtbls r1, r1
0053be38  00 10 c2 e5                                      strb r1, [r2]
0053be3c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0053be40  40 10 9d e5                                      ldr r1, [sp, #0x40]
0053be44  01 10 62 e0                                      rsb r1, r2, r1
0053be48  01 00 53 e1                                      cmp r3, r1
0053be4c  f0 ff ff 3a                                      blo #0x53be14
0053be50  61 bf 88 e2                                      add fp, r8, #0x184
0053be54  0b 00 a0 e1                                      mov r0, fp
0053be58  07 10 a0 e1                                      mov r1, r7
0053be5c  28 90 8d e5                                      str sb, [sp, #0x28]
0053be60  f5 f7 ff eb                                      bl #0x539e3c
0053be64  01 00 70 e3                                      cmn r0, #1
0053be68  00 90 a0 03                                      moveq sb, #0
0053be6c  11 00 00 0a                                      beq #0x53beb8
0053be70  84 21 98 e5                                      ldr r2, [r8, #0x184]
0053be74  80 32 a0 e1                                      lsl r3, r0, #5
0053be78  01 90 a0 e3                                      mov sb, #1
0053be7c  03 20 82 e0                                      add r2, r2, r3
0053be80  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
0053be84  04 30 8d e5                                      str r3, [sp, #4]
0053be88  bd 85 f7 eb                                      bl #0x31d584
0053be8c  04 30 9d e5                                      ldr r3, [sp, #4]
0053be90  84 11 98 e5                                      ldr r1, [r8, #0x184]
0053be94  0b 00 a0 e1                                      mov r0, fp
0053be98  0c 20 8d e2                                      add r2, sp, #0xc
0053be9c  03 10 81 e0                                      add r1, r1, r3
0053bea0  4a f6 ff eb                                      bl #0x5397d0
0053bea4  08 00 a0 e1                                      mov r0, r8
0053bea8  04 10 a0 e1                                      mov r1, r4
0053beac  00 30 98 e5                                      ldr r3, [r8]
0053beb0  0f e0 a0 e1                                      mov lr, pc
0053beb4  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0053beb8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0053bebc  07 00 50 e1                                      cmp r0, r7
0053bec0  02 00 00 0a                                      beq #0x53bed0
0053bec4  00 00 50 e3                                      cmp r0, #0
0053bec8  00 00 00 0a                                      beq #0x53bed0
0053becc  5f 51 f7 eb                                      bl #0x310450
0053bed0  44 00 9d e5                                      ldr r0, [sp, #0x44]
0053bed4  05 00 50 e1                                      cmp r0, r5
0053bed8  02 00 00 0a                                      beq #0x53bee8
0053bedc  00 00 50 e3                                      cmp r0, #0
0053bee0  00 00 00 0a                                      beq #0x53bee8
0053bee4  59 51 f7 eb                                      bl #0x310450
0053bee8  0a 30 96 e7                                      ldr r3, [r6, sl]
0053beec  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0053bef0  09 00 a0 e1                                      mov r0, sb
0053bef4  00 30 93 e5                                      ldr r3, [r3]
0053bef8  03 00 52 e1                                      cmp r2, r3
0053befc  0d 00 00 1a                                      bne #0x53bf38
0053bf00  54 d0 8d e2                                      add sp, sp, #0x54
0053bf04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053bf08  34 10 9f e5                                      ldr r1, [pc, #0x34]
0053bf0c  05 00 a0 e1                                      mov r0, r5
0053bf10  01 10 8f e0                                      add r1, pc, r1
0053bf14  01 20 a0 e1                                      mov r2, r1
0053bf18  1a 93 f7 eb                                      bl #0x320b88
0053bf1c  8c ff ff ea                                      b #0x53bd54
0053bf20  20 10 9f e5                                      ldr r1, [pc, #0x20]
0053bf24  07 00 a0 e1                                      mov r0, r7
0053bf28  01 10 8f e0                                      add r1, pc, r1
0053bf2c  01 20 a0 e1                                      mov r2, r1
0053bf30  14 93 f7 eb                                      bl #0x320b88
0053bf34  b1 ff ff ea                                      b #0x53be00
0053bf38  f4 48 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0053bf3c  9c 8d 45 00 ac 40 00 00 f8 f8 38 00 e0 f8 38 00  .byte 0x9c, 0x8d, 0x45, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xf8, 0x38, 0x00, 0xe0, 0xf8, 0x38, 0x00

; FUNCTION 0x0053bf4c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n24_N6glitch3gui15CGUIEnvironmentD0Ev
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
0053bf4c  00 30 90 e5                                      ldr r3, [r0]
0053bf50  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053bf54  03 00 80 e0                                      add r0, r0, r3
0053bf58  45 f5 ff ea                                      b #0x539474

; FUNCTION 0x0053bf5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n12_N6glitch3gui15CGUIEnvironmentD0Ev
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
0053bf5c  00 30 90 e5                                      ldr r3, [r0]
0053bf60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053bf64  03 00 80 e0                                      add r0, r0, r3
0053bf68  41 f5 ff ea                                      b #0x539474

; FUNCTION 0x0053bf6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n24_N6glitch3gui15CGUIEnvironmentD1Ev
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
0053bf6c  00 30 90 e5                                      ldr r3, [r0]
0053bf70  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0053bf74  03 00 80 e0                                      add r0, r0, r3
0053bf78  66 f4 ff ea                                      b #0x539118

; FUNCTION 0x0053bf7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n12_N6glitch3gui15CGUIEnvironmentD1Ev
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::~CGUIEnvironment()
; decoder-mode: arm
0053bf7c  00 30 90 e5                                      ldr r3, [r0]
0053bf80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0053bf84  03 00 80 e0                                      add r0, r0, r3
0053bf88  62 f4 ff ea                                      b #0x539118

; FUNCTION 0x0053bf8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n20_N6glitch3gui15CGUIEnvironment21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0053bf8c  00 30 90 e5                                      ldr r3, [r0]
0053bf90  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0053bf94  03 00 80 e0                                      add r0, r0, r3
0053bf98  9a e6 ff ea                                      b #0x535a08

; FUNCTION 0x0053bf9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIEnvironment
; alias: _ZTv0_n16_NK6glitch3gui15CGUIEnvironment19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIEnvironment::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0053bf9c  00 30 90 e5                                      ldr r3, [r0]
0053bfa0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0053bfa4  03 00 80 e0                                      add r0, r0, r3
0053bfa8  6b e6 ff ea                                      b #0x53595c
