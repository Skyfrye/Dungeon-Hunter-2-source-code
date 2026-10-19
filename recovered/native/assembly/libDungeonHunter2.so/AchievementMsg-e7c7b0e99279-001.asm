; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00380554, declared_size=88, range_size=88, mode=arm
; class-group: AchievementMsg
; alias: _ZN14AchievementMsgC1ERKS_
; demangled: AchievementMsg::AchievementMsg(AchievementMsg const&)
; decoder-mode: arm
00380554  70 40 2d e9                                      push {r4, r5, r6, lr}
00380558  00 40 a0 e1                                      mov r4, r0
0038055c  01 50 a0 e1                                      mov r5, r1
00380560  10 00 84 e5                                      str r0, [r4, #0x10]
00380564  14 00 84 e5                                      str r0, [r4, #0x14]
00380568  10 20 95 e5                                      ldr r2, [r5, #0x10]
0038056c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00380570  5c 44 fe eb                                      bl #0x3116e8
00380574  18 00 84 e2                                      add r0, r4, #0x18
00380578  28 00 84 e5                                      str r0, [r4, #0x28]
0038057c  2c 00 84 e5                                      str r0, [r4, #0x2c]
00380580  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00380584  28 20 95 e5                                      ldr r2, [r5, #0x28]
00380588  56 44 fe eb                                      bl #0x3116e8
0038058c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00380590  04 00 a0 e1                                      mov r0, r4
00380594  30 30 84 e5                                      str r3, [r4, #0x30]
00380598  34 30 95 e5                                      ldr r3, [r5, #0x34]
0038059c  34 30 84 e5                                      str r3, [r4, #0x34]
003805a0  38 30 95 e5                                      ldr r3, [r5, #0x38]
003805a4  38 30 84 e5                                      str r3, [r4, #0x38]
003805a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00433acc, declared_size=60, range_size=60, mode=arm
; class-group: AchievementMsg
; alias: _ZN14AchievementMsgC1ERKSsS1_iii
; demangled: AchievementMsg::AchievementMsg(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int, int, int)
; decoder-mode: arm
00433acc  70 40 2d e9                                      push {r4, r5, r6, lr}
00433ad0  00 40 a0 e1                                      mov r4, r0
00433ad4  02 50 a0 e1                                      mov r5, r2
00433ad8  03 60 a0 e1                                      mov r6, r3
00433adc  8d df fb eb                                      bl #0x32b918
00433ae0  05 10 a0 e1                                      mov r1, r5
00433ae4  18 00 84 e2                                      add r0, r4, #0x18
00433ae8  8a df fb eb                                      bl #0x32b918
00433aec  30 60 84 e5                                      str r6, [r4, #0x30]
00433af0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00433af4  04 00 a0 e1                                      mov r0, r4
00433af8  34 30 84 e5                                      str r3, [r4, #0x34]
00433afc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00433b00  38 30 84 e5                                      str r3, [r4, #0x38]
00433b04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00433b08, declared_size=60, range_size=60, mode=arm
; class-group: AchievementMsg
; alias: _ZN14AchievementMsgC2ERKSsS1_iii
; demangled: AchievementMsg::AchievementMsg(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int, int, int)
; decoder-mode: arm
00433b08  70 40 2d e9                                      push {r4, r5, r6, lr}
00433b0c  00 40 a0 e1                                      mov r4, r0
00433b10  02 50 a0 e1                                      mov r5, r2
00433b14  03 60 a0 e1                                      mov r6, r3
00433b18  7e df fb eb                                      bl #0x32b918
00433b1c  05 10 a0 e1                                      mov r1, r5
00433b20  18 00 84 e2                                      add r0, r4, #0x18
00433b24  7b df fb eb                                      bl #0x32b918
00433b28  30 60 84 e5                                      str r6, [r4, #0x30]
00433b2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00433b30  04 00 a0 e1                                      mov r0, r4
00433b34  34 30 84 e5                                      str r3, [r4, #0x34]
00433b38  14 30 9d e5                                      ldr r3, [sp, #0x14]
00433b3c  38 30 84 e5                                      str r3, [r4, #0x38]
00433b40  70 80 bd e8                                      pop {r4, r5, r6, pc}
