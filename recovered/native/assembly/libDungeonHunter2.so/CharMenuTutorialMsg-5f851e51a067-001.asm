; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00433b44, declared_size=44, range_size=44, mode=arm
; class-group: CharMenuTutorialMsg
; alias: _ZN19CharMenuTutorialMsgC1EiRKSsS1_
; demangled: CharMenuTutorialMsg::CharMenuTutorialMsg(int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00433b44  70 40 2d e9                                      push {r4, r5, r6, lr}
00433b48  00 40 a0 e1                                      mov r4, r0
00433b4c  03 50 a0 e1                                      mov r5, r3
00433b50  04 10 80 e4                                      str r1, [r0], #4
00433b54  02 10 a0 e1                                      mov r1, r2
00433b58  6e df fb eb                                      bl #0x32b918
00433b5c  05 10 a0 e1                                      mov r1, r5
00433b60  1c 00 84 e2                                      add r0, r4, #0x1c
00433b64  6b df fb eb                                      bl #0x32b918
00433b68  04 00 a0 e1                                      mov r0, r4
00433b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00433b70, declared_size=44, range_size=44, mode=arm
; class-group: CharMenuTutorialMsg
; alias: _ZN19CharMenuTutorialMsgC2EiRKSsS1_
; demangled: CharMenuTutorialMsg::CharMenuTutorialMsg(int, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00433b70  70 40 2d e9                                      push {r4, r5, r6, lr}
00433b74  00 40 a0 e1                                      mov r4, r0
00433b78  03 50 a0 e1                                      mov r5, r3
00433b7c  04 10 80 e4                                      str r1, [r0], #4
00433b80  02 10 a0 e1                                      mov r1, r2
00433b84  63 df fb eb                                      bl #0x32b918
00433b88  05 10 a0 e1                                      mov r1, r5
00433b8c  1c 00 84 e2                                      add r0, r4, #0x1c
00433b90  60 df fb eb                                      bl #0x32b918
00433b94  04 00 a0 e1                                      mov r0, r4
00433b98  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0045a780, declared_size=72, range_size=72, mode=arm
; class-group: CharMenuTutorialMsg
; alias: _ZN19CharMenuTutorialMsgC1ERKS_
; demangled: CharMenuTutorialMsg::CharMenuTutorialMsg(CharMenuTutorialMsg const&)
; decoder-mode: arm
0045a780  70 40 2d e9                                      push {r4, r5, r6, lr}
0045a784  00 30 91 e5                                      ldr r3, [r1]
0045a788  00 40 a0 e1                                      mov r4, r0
0045a78c  01 50 a0 e1                                      mov r5, r1
0045a790  04 30 80 e4                                      str r3, [r0], #4
0045a794  14 00 84 e5                                      str r0, [r4, #0x14]
0045a798  18 00 84 e5                                      str r0, [r4, #0x18]
0045a79c  14 20 95 e5                                      ldr r2, [r5, #0x14]
0045a7a0  18 10 91 e5                                      ldr r1, [r1, #0x18]
0045a7a4  cf db fa eb                                      bl #0x3116e8
0045a7a8  1c 00 84 e2                                      add r0, r4, #0x1c
0045a7ac  2c 00 84 e5                                      str r0, [r4, #0x2c]
0045a7b0  30 00 84 e5                                      str r0, [r4, #0x30]
0045a7b4  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
0045a7b8  30 10 95 e5                                      ldr r1, [r5, #0x30]
0045a7bc  c9 db fa eb                                      bl #0x3116e8
0045a7c0  04 00 a0 e1                                      mov r0, r4
0045a7c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
