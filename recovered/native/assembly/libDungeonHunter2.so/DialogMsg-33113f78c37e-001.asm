; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031feb0, declared_size=40, range_size=40, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgD1Ev
; demangled: DialogMsg::~DialogMsg()
; decoder-mode: arm
0031feb0  10 40 2d e9                                      push {r4, lr}
0031feb4  00 40 a0 e1                                      mov r4, r0
0031feb8  34 00 80 e2                                      add r0, r0, #0x34
0031febc  ba ce ff eb                                      bl #0x3139ac
0031fec0  18 00 84 e2                                      add r0, r4, #0x18
0031fec4  b8 ce ff eb                                      bl #0x3139ac
0031fec8  04 00 a0 e1                                      mov r0, r4
0031fecc  b6 ce ff eb                                      bl #0x3139ac
0031fed0  04 00 a0 e1                                      mov r0, r4
0031fed4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00433b9c, declared_size=56, range_size=56, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgC1ERKS_
; demangled: DialogMsg::DialogMsg(DialogMsg const&)
; decoder-mode: arm
00433b9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00433ba0  00 40 a0 e1                                      mov r4, r0
00433ba4  01 50 a0 e1                                      mov r5, r1
00433ba8  5a df fb eb                                      bl #0x32b918
00433bac  18 10 85 e2                                      add r1, r5, #0x18
00433bb0  18 00 84 e2                                      add r0, r4, #0x18
00433bb4  57 df fb eb                                      bl #0x32b918
00433bb8  30 30 95 e5                                      ldr r3, [r5, #0x30]
00433bbc  34 10 85 e2                                      add r1, r5, #0x34
00433bc0  34 00 84 e2                                      add r0, r4, #0x34
00433bc4  30 30 84 e5                                      str r3, [r4, #0x30]
00433bc8  52 df fb eb                                      bl #0x32b918
00433bcc  04 00 a0 e1                                      mov r0, r4
00433bd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00433dd8, declared_size=208, range_size=208, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsg12SetActorNameEi
; demangled: DialogMsg::SetActorName(int)
; decoder-mode: arm
00433dd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00433ddc  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
00433de0  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
00433de4  38 d0 4d e2                                      sub sp, sp, #0x38
00433de8  04 40 8f e0                                      add r4, pc, r4
00433dec  05 30 94 e7                                      ldr r3, [r4, r5]
00433df0  00 00 51 e3                                      cmp r1, #0
00433df4  00 30 93 e5                                      ldr r3, [r3]
00433df8  34 30 8d e5                                      str r3, [sp, #0x34]
00433dfc  1d 00 00 ba                                      blt #0x433e78
00433e00  98 30 9f e5                                      ldr r3, [pc, #0x98]
00433e04  98 20 9f e5                                      ldr r2, [pc, #0x98]
00433e08  34 80 80 e2                                      add r8, r0, #0x34
00433e0c  03 30 94 e7                                      ldr r3, [r4, r3]
00433e10  02 20 94 e7                                      ldr r2, [r4, r2]
00433e14  1c 60 8d e2                                      add r6, sp, #0x1c
00433e18  00 30 93 e5                                      ldr r3, [r3]
00433e1c  34 00 92 e5                                      ldr r0, [r2, #0x34]
00433e20  14 20 a0 e3                                      mov r2, #0x14
00433e24  92 31 21 e0                                      mla r1, r2, r1, r3
00433e28  04 70 8d e2                                      add r7, sp, #4
00433e2c  10 10 91 e5                                      ldr r1, [r1, #0x10]
00433e30  29 54 03 eb                                      bl #0x508edc
00433e34  0d 20 a0 e1                                      mov r2, sp
00433e38  00 10 a0 e1                                      mov r1, r0
00433e3c  06 00 a0 e1                                      mov r0, r6
00433e40  a9 80 fb eb                                      bl #0x3140ec
00433e44  07 00 a0 e1                                      mov r0, r7
00433e48  06 10 a0 e1                                      mov r1, r6
00433e4c  ab ff ff eb                                      bl #0x433d00
00433e50  07 00 58 e1                                      cmp r8, r7
00433e54  03 00 00 0a                                      beq #0x433e68
00433e58  08 00 a0 e1                                      mov r0, r8
00433e5c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00433e60  14 20 9d e5                                      ldr r2, [sp, #0x14]
00433e64  dd 72 fb eb                                      bl #0x3109e0
00433e68  07 00 a0 e1                                      mov r0, r7
00433e6c  ce 7e fb eb                                      bl #0x3139ac
00433e70  06 00 a0 e1                                      mov r0, r6
00433e74  cc 7e fb eb                                      bl #0x3139ac
00433e78  05 30 94 e7                                      ldr r3, [r4, r5]
00433e7c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00433e80  00 30 93 e5                                      ldr r3, [r3]
00433e84  03 00 52 e1                                      cmp r2, r3
00433e88  01 00 00 1a                                      bne #0x433e94
00433e8c  38 d0 8d e2                                      add sp, sp, #0x38
00433e90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00433e94  1d 69 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00433e98  a8 0c 56 00 ac 40 00 00 a4 36 00 00 f4 37 00 00  .byte 0xa8, 0x0c, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x36, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00433ea8, declared_size=92, range_size=92, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgC1ERKSsS1_ii
; demangled: DialogMsg::DialogMsg(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int, int)
; decoder-mode: arm
00433ea8  70 40 2d e9                                      push {r4, r5, r6, lr}
00433eac  00 40 a0 e1                                      mov r4, r0
00433eb0  02 50 a0 e1                                      mov r5, r2
00433eb4  03 60 a0 e1                                      mov r6, r3
00433eb8  90 ff ff eb                                      bl #0x433d00
00433ebc  05 10 a0 e1                                      mov r1, r5
00433ec0  18 00 84 e2                                      add r0, r4, #0x18
00433ec4  8d ff ff eb                                      bl #0x433d00
00433ec8  34 30 84 e2                                      add r3, r4, #0x34
00433ecc  03 00 a0 e1                                      mov r0, r3
00433ed0  44 30 84 e5                                      str r3, [r4, #0x44]
00433ed4  48 30 84 e5                                      str r3, [r4, #0x48]
00433ed8  30 60 84 e5                                      str r6, [r4, #0x30]
00433edc  10 10 a0 e3                                      mov r1, #0x10
00433ee0  e5 75 fb eb                                      bl #0x31167c
00433ee4  44 30 94 e5                                      ldr r3, [r4, #0x44]
00433ee8  00 20 a0 e3                                      mov r2, #0
00433eec  10 10 9d e5                                      ldr r1, [sp, #0x10]
00433ef0  04 00 a0 e1                                      mov r0, r4
00433ef4  00 20 c3 e5                                      strb r2, [r3]
00433ef8  b6 ff ff eb                                      bl #0x433dd8
00433efc  04 00 a0 e1                                      mov r0, r4
00433f00  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004343d8, declared_size=92, range_size=92, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgC2ERKSsS1_ii
; demangled: DialogMsg::DialogMsg(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int, int)
; decoder-mode: arm
004343d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004343dc  00 40 a0 e1                                      mov r4, r0
004343e0  02 50 a0 e1                                      mov r5, r2
004343e4  03 60 a0 e1                                      mov r6, r3
004343e8  44 fe ff eb                                      bl #0x433d00
004343ec  05 10 a0 e1                                      mov r1, r5
004343f0  18 00 84 e2                                      add r0, r4, #0x18
004343f4  41 fe ff eb                                      bl #0x433d00
004343f8  34 30 84 e2                                      add r3, r4, #0x34
004343fc  03 00 a0 e1                                      mov r0, r3
00434400  44 30 84 e5                                      str r3, [r4, #0x44]
00434404  48 30 84 e5                                      str r3, [r4, #0x48]
00434408  30 60 84 e5                                      str r6, [r4, #0x30]
0043440c  10 10 a0 e3                                      mov r1, #0x10
00434410  99 74 fb eb                                      bl #0x31167c
00434414  44 30 94 e5                                      ldr r3, [r4, #0x44]
00434418  00 20 a0 e3                                      mov r2, #0
0043441c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00434420  04 00 a0 e1                                      mov r0, r4
00434424  00 20 c3 e5                                      strb r2, [r3]
00434428  6a fe ff eb                                      bl #0x433dd8
0043442c  04 00 a0 e1                                      mov r0, r4
00434430  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00434434, declared_size=248, range_size=248, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgC1Eiiii
; demangled: DialogMsg::DialogMsg(int, int, int, int)
; decoder-mode: arm
00434434  e4 c0 9f e5                                      ldr ip, [pc, #0xe4]
00434438  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0043443c  e0 e0 9f e5                                      ldr lr, [pc, #0xe0]
00434440  0c c0 8f e0                                      add ip, pc, ip
00434444  44 d0 4d e2                                      sub sp, sp, #0x44
00434448  0e 50 9c e7                                      ldr r5, [ip, lr]
0043444c  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
00434450  00 40 a0 e1                                      mov r4, r0
00434454  03 70 a0 e1                                      mov r7, r3
00434458  0e 60 9c e7                                      ldr r6, [ip, lr]
0043445c  00 e0 95 e5                                      ldr lr, [r5]
00434460  02 80 a0 e1                                      mov r8, r2
00434464  34 00 96 e5                                      ldr r0, [r6, #0x34]
00434468  3c e0 8d e5                                      str lr, [sp, #0x3c]
0043446c  9a 52 03 eb                                      bl #0x508edc
00434470  24 a0 8d e2                                      add sl, sp, #0x24
00434474  08 20 8d e2                                      add r2, sp, #8
00434478  00 10 a0 e1                                      mov r1, r0
0043447c  0a 00 a0 e1                                      mov r0, sl
00434480  19 7f fb eb                                      bl #0x3140ec
00434484  0a 10 a0 e1                                      mov r1, sl
00434488  04 00 a0 e1                                      mov r0, r4
0043448c  1b fe ff eb                                      bl #0x433d00
00434490  0a 00 a0 e1                                      mov r0, sl
00434494  44 7d fb eb                                      bl #0x3139ac
00434498  08 10 a0 e1                                      mov r1, r8
0043449c  34 00 96 e5                                      ldr r0, [r6, #0x34]
004344a0  8d 52 03 eb                                      bl #0x508edc
004344a4  0c 60 8d e2                                      add r6, sp, #0xc
004344a8  04 20 8d e2                                      add r2, sp, #4
004344ac  00 10 a0 e1                                      mov r1, r0
004344b0  06 00 a0 e1                                      mov r0, r6
004344b4  0c 7f fb eb                                      bl #0x3140ec
004344b8  06 10 a0 e1                                      mov r1, r6
004344bc  18 00 84 e2                                      add r0, r4, #0x18
004344c0  0e fe ff eb                                      bl #0x433d00
004344c4  06 00 a0 e1                                      mov r0, r6
004344c8  37 7d fb eb                                      bl #0x3139ac
004344cc  34 30 84 e2                                      add r3, r4, #0x34
004344d0  03 00 a0 e1                                      mov r0, r3
004344d4  44 30 84 e5                                      str r3, [r4, #0x44]
004344d8  48 30 84 e5                                      str r3, [r4, #0x48]
004344dc  10 10 a0 e3                                      mov r1, #0x10
004344e0  30 70 84 e5                                      str r7, [r4, #0x30]
004344e4  64 74 fb eb                                      bl #0x31167c
004344e8  44 30 94 e5                                      ldr r3, [r4, #0x44]
004344ec  00 20 a0 e3                                      mov r2, #0
004344f0  60 10 9d e5                                      ldr r1, [sp, #0x60]
004344f4  04 00 a0 e1                                      mov r0, r4
004344f8  00 20 c3 e5                                      strb r2, [r3]
004344fc  35 fe ff eb                                      bl #0x433dd8
00434500  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00434504  00 30 95 e5                                      ldr r3, [r5]
00434508  04 00 a0 e1                                      mov r0, r4
0043450c  03 00 52 e1                                      cmp r2, r3
00434510  01 00 00 1a                                      bne #0x43451c
00434514  44 d0 8d e2                                      add sp, sp, #0x44
00434518  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0043451c  7b 67 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00434520  50 06 56 00 ac 40 00 00 f4 37 00 00              .byte 0x50, 0x06, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0043452c, declared_size=248, range_size=248, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgC2Eiiii
; demangled: DialogMsg::DialogMsg(int, int, int, int)
; decoder-mode: arm
0043452c  e4 c0 9f e5                                      ldr ip, [pc, #0xe4]
00434530  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00434534  e0 e0 9f e5                                      ldr lr, [pc, #0xe0]
00434538  0c c0 8f e0                                      add ip, pc, ip
0043453c  44 d0 4d e2                                      sub sp, sp, #0x44
00434540  0e 50 9c e7                                      ldr r5, [ip, lr]
00434544  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
00434548  00 40 a0 e1                                      mov r4, r0
0043454c  03 70 a0 e1                                      mov r7, r3
00434550  0e 60 9c e7                                      ldr r6, [ip, lr]
00434554  00 e0 95 e5                                      ldr lr, [r5]
00434558  02 80 a0 e1                                      mov r8, r2
0043455c  34 00 96 e5                                      ldr r0, [r6, #0x34]
00434560  3c e0 8d e5                                      str lr, [sp, #0x3c]
00434564  5c 52 03 eb                                      bl #0x508edc
00434568  24 a0 8d e2                                      add sl, sp, #0x24
0043456c  08 20 8d e2                                      add r2, sp, #8
00434570  00 10 a0 e1                                      mov r1, r0
00434574  0a 00 a0 e1                                      mov r0, sl
00434578  db 7e fb eb                                      bl #0x3140ec
0043457c  0a 10 a0 e1                                      mov r1, sl
00434580  04 00 a0 e1                                      mov r0, r4
00434584  dd fd ff eb                                      bl #0x433d00
00434588  0a 00 a0 e1                                      mov r0, sl
0043458c  06 7d fb eb                                      bl #0x3139ac
00434590  08 10 a0 e1                                      mov r1, r8
00434594  34 00 96 e5                                      ldr r0, [r6, #0x34]
00434598  4f 52 03 eb                                      bl #0x508edc
0043459c  0c 60 8d e2                                      add r6, sp, #0xc
004345a0  04 20 8d e2                                      add r2, sp, #4
004345a4  00 10 a0 e1                                      mov r1, r0
004345a8  06 00 a0 e1                                      mov r0, r6
004345ac  ce 7e fb eb                                      bl #0x3140ec
004345b0  06 10 a0 e1                                      mov r1, r6
004345b4  18 00 84 e2                                      add r0, r4, #0x18
004345b8  d0 fd ff eb                                      bl #0x433d00
004345bc  06 00 a0 e1                                      mov r0, r6
004345c0  f9 7c fb eb                                      bl #0x3139ac
004345c4  34 30 84 e2                                      add r3, r4, #0x34
004345c8  03 00 a0 e1                                      mov r0, r3
004345cc  44 30 84 e5                                      str r3, [r4, #0x44]
004345d0  48 30 84 e5                                      str r3, [r4, #0x48]
004345d4  10 10 a0 e3                                      mov r1, #0x10
004345d8  30 70 84 e5                                      str r7, [r4, #0x30]
004345dc  26 74 fb eb                                      bl #0x31167c
004345e0  44 30 94 e5                                      ldr r3, [r4, #0x44]
004345e4  00 20 a0 e3                                      mov r2, #0
004345e8  60 10 9d e5                                      ldr r1, [sp, #0x60]
004345ec  04 00 a0 e1                                      mov r0, r4
004345f0  00 20 c3 e5                                      strb r2, [r3]
004345f4  f7 fd ff eb                                      bl #0x433dd8
004345f8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
004345fc  00 30 95 e5                                      ldr r3, [r5]
00434600  04 00 a0 e1                                      mov r0, r4
00434604  03 00 52 e1                                      cmp r2, r3
00434608  01 00 00 1a                                      bne #0x434614
0043460c  44 d0 8d e2                                      add sp, sp, #0x44
00434610  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00434614  3d 67 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00434618  58 05 56 00 ac 40 00 00 f4 37 00 00              .byte 0x58, 0x05, 0x56, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0043f828, declared_size=104, range_size=104, mode=arm
; class-group: DialogMsg
; alias: _ZN9DialogMsgaSERKS_
; demangled: DialogMsg::operator=(DialogMsg const&)
; decoder-mode: arm
0043f828  01 00 50 e1                                      cmp r0, r1
0043f82c  70 40 2d e9                                      push {r4, r5, r6, lr}
0043f830  01 40 a0 e1                                      mov r4, r1
0043f834  00 50 a0 e1                                      mov r5, r0
0043f838  02 00 00 0a                                      beq #0x43f848
0043f83c  14 10 91 e5                                      ldr r1, [r1, #0x14]
0043f840  10 20 94 e5                                      ldr r2, [r4, #0x10]
0043f844  65 44 fb eb                                      bl #0x3109e0
0043f848  18 00 85 e2                                      add r0, r5, #0x18
0043f84c  18 30 84 e2                                      add r3, r4, #0x18
0043f850  03 00 50 e1                                      cmp r0, r3
0043f854  02 00 00 0a                                      beq #0x43f864
0043f858  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0043f85c  28 20 94 e5                                      ldr r2, [r4, #0x28]
0043f860  5e 44 fb eb                                      bl #0x3109e0
0043f864  30 30 94 e5                                      ldr r3, [r4, #0x30]
0043f868  34 00 85 e2                                      add r0, r5, #0x34
0043f86c  34 20 84 e2                                      add r2, r4, #0x34
0043f870  02 00 50 e1                                      cmp r0, r2
0043f874  30 30 85 e5                                      str r3, [r5, #0x30]
0043f878  02 00 00 0a                                      beq #0x43f888
0043f87c  44 20 94 e5                                      ldr r2, [r4, #0x44]
0043f880  48 10 94 e5                                      ldr r1, [r4, #0x48]
0043f884  55 44 fb eb                                      bl #0x3109e0
0043f888  05 00 a0 e1                                      mov r0, r5
0043f88c  70 80 bd e8                                      pop {r4, r5, r6, pc}
