; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0089a6e4, declared_size=4, range_size=4, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck14ValidateNativeEv
; demangled: ALicenseCheck::ValidateNative()
; decoder-mode: arm
0089a6e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089a6e8, declared_size=176, range_size=176, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck6LOGGEREPKcz
; demangled: ALicenseCheck::LOGGER(char const*, ...)
; decoder-mode: arm
0089a6e8  0f 00 2d e9                                      push {r0, r1, r2, r3}
0089a6ec  94 30 9f e5                                      ldr r3, [pc, #0x94]
0089a6f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0089a6f4  90 20 9f e5                                      ldr r2, [pc, #0x90]
0089a6f8  03 30 8f e0                                      add r3, pc, r3
0089a6fc  01 db 4d e2                                      sub sp, sp, #0x400
0089a700  02 40 93 e7                                      ldr r4, [r3, r2]
0089a704  08 d0 4d e2                                      sub sp, sp, #8
0089a708  80 50 9f e5                                      ldr r5, [pc, #0x80]
0089a70c  00 e0 94 e5                                      ldr lr, [r4]
0089a710  08 60 8d e2                                      add r6, sp, #8
0089a714  41 ce 8d e2                                      add ip, sp, #0x410
0089a718  0c c0 8c e2                                      add ip, ip, #0xc
0089a71c  04 60 46 e2                                      sub r6, r6, #4
0089a720  0c 20 a0 e1                                      mov r2, ip
0089a724  18 14 9d e5                                      ldr r1, [sp, #0x418]
0089a728  05 50 8f e0                                      add r5, pc, r5
0089a72c  06 00 a0 e1                                      mov r0, r6
0089a730  04 e4 8d e5                                      str lr, [sp, #0x404]
0089a734  00 c0 8d e5                                      str ip, [sp]
0089a738  ca ce e9 eb                                      bl #0x30e268
0089a73c  06 10 a0 e1                                      mov r1, r6
0089a740  05 00 a0 e1                                      mov r0, r5
0089a744  ce cd e9 eb                                      bl #0x30de84
0089a748  44 10 9f e5                                      ldr r1, [pc, #0x44]
0089a74c  05 20 a0 e1                                      mov r2, r5
0089a750  06 30 a0 e1                                      mov r3, r6
0089a754  01 10 8f e0                                      add r1, pc, r1
0089a758  04 00 a0 e3                                      mov r0, #4
0089a75c  8b ce e9 eb                                      bl #0x30e190
0089a760  04 24 9d e5                                      ldr r2, [sp, #0x404]
0089a764  00 30 94 e5                                      ldr r3, [r4]
0089a768  03 00 52 e1                                      cmp r2, r3
0089a76c  04 00 00 1a                                      bne #0x89a784
0089a770  08 d0 8d e2                                      add sp, sp, #8
0089a774  01 db 8d e2                                      add sp, sp, #0x400
0089a778  70 40 bd e8                                      pop {r4, r5, r6, lr}
0089a77c  10 d0 8d e2                                      add sp, sp, #0x10
0089a780  1e ff 2f e1                                      bx lr
0089a784  e1 ce e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089a788  98 a3 0f 00 ac 40 00 00 c8 46 05 00 bc a1 07 00  .byte 0x98, 0xa3, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x46, 0x05, 0x00, 0xbc, 0xa1, 0x07, 0x00

; FUNCTION 0x0089a798, declared_size=64, range_size=64, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck11currentTimeEv
; demangled: ALicenseCheck::currentTime()
; decoder-mode: arm
0089a798  04 e0 2d e5                                      str lr, [sp, #-4]!
0089a79c  0c d0 4d e2                                      sub sp, sp, #0xc
0089a7a0  0d 00 a0 e1                                      mov r0, sp
0089a7a4  00 10 a0 e3                                      mov r1, #0
0089a7a8  dd cf e9 eb                                      bl #0x30e724
0089a7ac  04 30 9d e5                                      ldr r3, [sp, #4]
0089a7b0  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0089a7b4  c3 2f a0 e1                                      asr r2, r3, #0x1f
0089a7b8  90 c3 c1 e0                                      smull ip, r1, r0, r3
0089a7bc  fa 0f a0 e3                                      mov r0, #0x3e8
0089a7c0  41 33 62 e0                                      rsb r3, r2, r1, asr #6
0089a7c4  00 20 9d e5                                      ldr r2, [sp]
0089a7c8  92 30 20 e0                                      mla r0, r2, r0, r3
0089a7cc  0c d0 8d e2                                      add sp, sp, #0xc
0089a7d0  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
0089a7d4  d3 4d 62 10                                      .byte 0xd3, 0x4d, 0x62, 0x10

; FUNCTION 0x0089a7d8, declared_size=72, range_size=72, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck16createUniqueCodeEv
; demangled: ALicenseCheck::createUniqueCode()
; decoder-mode: arm
0089a7d8  10 40 2d e9                                      push {r4, lr}
0089a7dc  ed ff ff eb                                      bl #0x89a798
0089a7e0  59 d0 e9 eb                                      bl #0x30e94c
0089a7e4  6f d1 e9 eb                                      bl #0x30eda8
0089a7e8  50 d1 e9 eb                                      bl #0x30ed30
0089a7ec  00 20 a0 e3                                      mov r2, #0
0089a7f0  3e 34 a0 e3                                      mov r3, #0x3e000000
0089a7f4  ae d0 e9 eb                                      bl #0x30eab4
0089a7f8  00 20 a0 e3                                      mov r2, #0
0089a7fc  14 30 9f e5                                      ldr r3, [pc, #0x14]
0089a800  ab d0 e9 eb                                      bl #0x30eab4
0089a804  00 20 a0 e3                                      mov r2, #0
0089a808  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0089a80c  cc d0 e9 eb                                      bl #0x30eb44
0089a810  83 d0 e9 eb                                      bl #0x30ea24
0089a814  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0089a818  80 5c c1 40 00 5c 91 40                          .byte 0x80, 0x5c, 0xc1, 0x40, 0x00, 0x5c, 0x91, 0x40

; FUNCTION 0x0089a820, declared_size=192, range_size=192, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck3XOREPKcS1_Pc
; demangled: ALicenseCheck::XOR(char const*, char const*, char*)
; decoder-mode: arm
0089a820  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089a824  ac 70 9f e5                                      ldr r7, [pc, #0xac]
0089a828  ac 80 9f e5                                      ldr r8, [pc, #0xac]
0089a82c  82 df 4d e2                                      sub sp, sp, #0x208
0089a830  07 70 8f e0                                      add r7, pc, r7
0089a834  08 30 97 e7                                      ldr r3, [r7, r8]
0089a838  04 40 8d e2                                      add r4, sp, #4
0089a83c  00 50 a0 e1                                      mov r5, r0
0089a840  00 30 93 e5                                      ldr r3, [r3]
0089a844  01 60 a0 e1                                      mov r6, r1
0089a848  02 a0 a0 e1                                      mov sl, r2
0089a84c  00 10 a0 e3                                      mov r1, #0
0089a850  02 2c a0 e3                                      mov r2, #0x200
0089a854  04 00 a0 e1                                      mov r0, r4
0089a858  04 32 8d e5                                      str r3, [sp, #0x204]
0089a85c  ff ce e9 eb                                      bl #0x30e460
0089a860  06 00 a0 e1                                      mov r0, r6
0089a864  7a cd e9 eb                                      bl #0x30de54
0089a868  00 90 a0 e1                                      mov sb, r0
0089a86c  05 00 a0 e1                                      mov r0, r5
0089a870  77 cd e9 eb                                      bl #0x30de54
0089a874  00 00 50 e3                                      cmp r0, #0
0089a878  0b 00 00 0a                                      beq #0x89a8ac
0089a87c  00 20 a0 e3                                      mov r2, #0
0089a880  02 30 a0 e1                                      mov r3, r2
0089a884  03 c0 d6 e7                                      ldrb ip, [r6, r3]
0089a888  02 10 d5 e7                                      ldrb r1, [r5, r2]
0089a88c  01 30 83 e2                                      add r3, r3, #1
0089a890  03 00 59 e1                                      cmp sb, r3
0089a894  01 10 2c e0                                      eor r1, ip, r1
0089a898  02 10 c4 e7                                      strb r1, [r4, r2]
0089a89c  01 20 82 e2                                      add r2, r2, #1
0089a8a0  00 30 a0 93                                      movls r3, #0
0089a8a4  00 00 52 e1                                      cmp r2, r0
0089a8a8  f5 ff ff 1a                                      bne #0x89a884
0089a8ac  0a 00 a0 e1                                      mov r0, sl
0089a8b0  04 10 a0 e1                                      mov r1, r4
0089a8b4  19 cf e9 eb                                      bl #0x30e520
0089a8b8  08 30 97 e7                                      ldr r3, [r7, r8]
0089a8bc  04 22 9d e5                                      ldr r2, [sp, #0x204]
0089a8c0  00 30 93 e5                                      ldr r3, [r3]
0089a8c4  03 00 52 e1                                      cmp r2, r3
0089a8c8  01 00 00 1a                                      bne #0x89a8d4
0089a8cc  82 df 8d e2                                      add sp, sp, #0x208
0089a8d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089a8d4  8d ce e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089a8d8  60 a2 0f 00 ac 40 00 00                          .byte 0x60, 0xa2, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089a8e0, declared_size=196, range_size=196, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPciS4_
; demangled: ALicenseCheck::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int, char*)
; decoder-mode: arm
0089a8e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089a8e4  08 d0 4d e2                                      sub sp, sp, #8
0089a8e8  03 70 a0 e1                                      mov r7, r3
0089a8ec  02 60 a0 e1                                      mov r6, r2
0089a8f0  01 50 a0 e1                                      mov r5, r1
0089a8f4  00 80 a0 e1                                      mov r8, r0
0089a8f8  08 65 f2 eb                                      bl #0x533d20
0089a8fc  07 20 a0 e1                                      mov r2, r7
0089a900  00 40 a0 e1                                      mov r4, r0
0089a904  00 10 a0 e3                                      mov r1, #0
0089a908  06 00 a0 e1                                      mov r0, r6
0089a90c  d3 ce e9 eb                                      bl #0x30e460
0089a910  20 10 9d e5                                      ldr r1, [sp, #0x20]
0089a914  00 30 94 e5                                      ldr r3, [r4]
0089a918  04 00 a0 e1                                      mov r0, r4
0089a91c  0f e0 a0 e1                                      mov lr, pc
0089a920  9c f2 93 e5                                      ldr pc, [r3, #0x29c]
0089a924  00 70 a0 e1                                      mov r7, r0
0089a928  05 20 a0 e1                                      mov r2, r5
0089a92c  08 10 a0 e1                                      mov r1, r8
0089a930  07 30 a0 e1                                      mov r3, r7
0089a934  04 00 a0 e1                                      mov r0, r4
0089a938  6e 50 f2 eb                                      bl #0x52eaf8
0089a93c  00 30 94 e5                                      ldr r3, [r4]
0089a940  00 50 a0 e1                                      mov r5, r0
0089a944  00 10 a0 e1                                      mov r1, r0
0089a948  04 00 a0 e1                                      mov r0, r4
0089a94c  0f e0 a0 e1                                      mov lr, pc
0089a950  ac f2 93 e5                                      ldr pc, [r3, #0x2ac]
0089a954  00 c0 94 e5                                      ldr ip, [r4]
0089a958  00 30 a0 e1                                      mov r3, r0
0089a95c  05 10 a0 e1                                      mov r1, r5
0089a960  04 00 a0 e1                                      mov r0, r4
0089a964  00 20 a0 e3                                      mov r2, #0
0089a968  00 60 8d e5                                      str r6, [sp]
0089a96c  0f e0 a0 e1                                      mov lr, pc
0089a970  20 f3 9c e5                                      ldr pc, [ip, #0x320]
0089a974  05 10 a0 e1                                      mov r1, r5
0089a978  04 00 a0 e1                                      mov r0, r4
0089a97c  00 30 94 e5                                      ldr r3, [r4]
0089a980  0f e0 a0 e1                                      mov lr, pc
0089a984  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0089a988  04 00 a0 e1                                      mov r0, r4
0089a98c  07 10 a0 e1                                      mov r1, r7
0089a990  00 30 94 e5                                      ldr r3, [r4]
0089a994  0f e0 a0 e1                                      mov lr, pc
0089a998  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0089a99c  08 d0 8d e2                                      add sp, sp, #8
0089a9a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0089a9a4, declared_size=148, range_size=148, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck15CallJNIFuncCharEP7_jclassP10_jmethodIDPci
; demangled: ALicenseCheck::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int)
; decoder-mode: arm
0089a9a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089a9a8  08 d0 4d e2                                      sub sp, sp, #8
0089a9ac  03 80 a0 e1                                      mov r8, r3
0089a9b0  02 60 a0 e1                                      mov r6, r2
0089a9b4  01 50 a0 e1                                      mov r5, r1
0089a9b8  00 70 a0 e1                                      mov r7, r0
0089a9bc  d7 64 f2 eb                                      bl #0x533d20
0089a9c0  08 20 a0 e1                                      mov r2, r8
0089a9c4  00 40 a0 e1                                      mov r4, r0
0089a9c8  00 10 a0 e3                                      mov r1, #0
0089a9cc  06 00 a0 e1                                      mov r0, r6
0089a9d0  a2 ce e9 eb                                      bl #0x30e460
0089a9d4  05 20 a0 e1                                      mov r2, r5
0089a9d8  07 10 a0 e1                                      mov r1, r7
0089a9dc  04 00 a0 e1                                      mov r0, r4
0089a9e0  44 50 f2 eb                                      bl #0x52eaf8
0089a9e4  00 30 94 e5                                      ldr r3, [r4]
0089a9e8  00 50 a0 e1                                      mov r5, r0
0089a9ec  00 10 a0 e1                                      mov r1, r0
0089a9f0  04 00 a0 e1                                      mov r0, r4
0089a9f4  0f e0 a0 e1                                      mov lr, pc
0089a9f8  ac f2 93 e5                                      ldr pc, [r3, #0x2ac]
0089a9fc  00 c0 94 e5                                      ldr ip, [r4]
0089aa00  00 30 a0 e1                                      mov r3, r0
0089aa04  05 10 a0 e1                                      mov r1, r5
0089aa08  04 00 a0 e1                                      mov r0, r4
0089aa0c  00 60 8d e5                                      str r6, [sp]
0089aa10  00 20 a0 e3                                      mov r2, #0
0089aa14  0f e0 a0 e1                                      mov lr, pc
0089aa18  20 f3 9c e5                                      ldr pc, [ip, #0x320]
0089aa1c  04 00 a0 e1                                      mov r0, r4
0089aa20  05 10 a0 e1                                      mov r1, r5
0089aa24  00 30 94 e5                                      ldr r3, [r4]
0089aa28  0f e0 a0 e1                                      mov lr, pc
0089aa2c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0089aa30  08 d0 8d e2                                      add sp, sp, #8
0089aa34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0089aa38, declared_size=208, range_size=208, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck10LoadConfigEv
; demangled: ALicenseCheck::LoadConfig()
; decoder-mode: arm
0089aa38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0089aa3c  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0089aa40  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0089aa44  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0089aa48  04 40 8f e0                                      add r4, pc, r4
0089aa4c  03 60 94 e7                                      ldr r6, [r4, r3]
0089aa50  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0089aa54  01 d7 4d e2                                      sub sp, sp, #0x40000
0089aa58  14 d0 4d e2                                      sub sp, sp, #0x14
0089aa5c  03 30 94 e7                                      ldr r3, [r4, r3]
0089aa60  00 c0 96 e5                                      ldr ip, [r6]
0089aa64  02 20 94 e7                                      ldr r2, [r4, r2]
0089aa68  00 00 93 e5                                      ldr r0, [r3]
0089aa6c  10 50 8d e2                                      add r5, sp, #0x10
0089aa70  01 37 a0 e3                                      mov r3, #0x40000
0089aa74  03 e0 8d e0                                      add lr, sp, r3
0089aa78  04 70 45 e2                                      sub r7, r5, #4
0089aa7c  0c c0 8e e5                                      str ip, [lr, #0xc]
0089aa80  00 10 92 e5                                      ldr r1, [r2]
0089aa84  08 50 45 e2                                      sub r5, r5, #8
0089aa88  07 20 a0 e1                                      mov r2, r7
0089aa8c  c4 ff ff eb                                      bl #0x89a9a4
0089aa90  05 00 a0 e1                                      mov r0, r5
0089aa94  0e 05 00 eb                                      bl #0x89bed4
0089aa98  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0089aa9c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0089aaa0  05 00 a0 e1                                      mov r0, r5
0089aaa4  03 20 94 e7                                      ldr r2, [r4, r3]
0089aaa8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0089aaac  01 c0 94 e7                                      ldr ip, [r4, r1]
0089aab0  07 10 a0 e1                                      mov r1, r7
0089aab4  03 30 94 e7                                      ldr r3, [r4, r3]
0089aab8  00 c0 8d e5                                      str ip, [sp]
0089aabc  3c 05 00 eb                                      bl #0x89bfb4
0089aac0  05 00 a0 e1                                      mov r0, r5
0089aac4  04 05 00 eb                                      bl #0x89bedc
0089aac8  01 37 8d e2                                      add r3, sp, #0x40000
0089aacc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0089aad0  00 30 96 e5                                      ldr r3, [r6]
0089aad4  03 00 52 e1                                      cmp r2, r3
0089aad8  02 00 00 1a                                      bne #0x89aae8
0089aadc  14 d0 8d e2                                      add sp, sp, #0x14
0089aae0  01 d7 8d e2                                      add sp, sp, #0x40000
0089aae4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0089aae8  08 ce e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089aaec  48 a0 0f 00 ac 40 00 00 40 41 00 00 b8 1d 00 00  .byte 0x48, 0xa0, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x41, 0x00, 0x00, 0xb8, 0x1d, 0x00, 0x00
0089aafc  4c 06 00 00 fc 15 00 00 fc 35 00 00              .byte 0x4c, 0x06, 0x00, 0x00, 0xfc, 0x15, 0x00, 0x00, 0xfc, 0x35, 0x00, 0x00

; FUNCTION 0x0089ab08, declared_size=444, range_size=444, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck4InitEP7_JNIEnvP7_jclass
; demangled: ALicenseCheck::Init(_JNIEnv*, _jclass*)
; decoder-mode: arm
0089ab08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089ab0c  00 30 90 e5                                      ldr r3, [r0]
0089ab10  00 40 a0 e1                                      mov r4, r0
0089ab14  0f e0 a0 e1                                      mov lr, pc
0089ab18  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0089ab1c  58 51 9f e5                                      ldr r5, [pc, #0x158]
0089ab20  58 31 9f e5                                      ldr r3, [pc, #0x158]
0089ab24  58 21 9f e5                                      ldr r2, [pc, #0x158]
0089ab28  05 50 8f e0                                      add r5, pc, r5
0089ab2c  03 70 95 e7                                      ldr r7, [r5, r3]
0089ab30  50 31 9f e5                                      ldr r3, [pc, #0x150]
0089ab34  00 10 a0 e1                                      mov r1, r0
0089ab38  00 00 87 e5                                      str r0, [r7]
0089ab3c  02 20 8f e0                                      add r2, pc, r2
0089ab40  03 30 8f e0                                      add r3, pc, r3
0089ab44  00 c0 94 e5                                      ldr ip, [r4]
0089ab48  04 00 a0 e1                                      mov r0, r4
0089ab4c  0f e0 a0 e1                                      mov lr, pc
0089ab50  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0089ab54  30 31 9f e5                                      ldr r3, [pc, #0x130]
0089ab58  30 61 9f e5                                      ldr r6, [pc, #0x130]
0089ab5c  30 21 9f e5                                      ldr r2, [pc, #0x130]
0089ab60  03 30 95 e7                                      ldr r3, [r5, r3]
0089ab64  06 60 8f e0                                      add r6, pc, r6
0089ab68  02 20 8f e0                                      add r2, pc, r2
0089ab6c  00 00 83 e5                                      str r0, [r3]
0089ab70  00 10 97 e5                                      ldr r1, [r7]
0089ab74  06 30 a0 e1                                      mov r3, r6
0089ab78  00 c0 94 e5                                      ldr ip, [r4]
0089ab7c  04 00 a0 e1                                      mov r0, r4
0089ab80  0f e0 a0 e1                                      mov lr, pc
0089ab84  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0089ab88  08 21 9f e5                                      ldr r2, [pc, #0x108]
0089ab8c  06 30 a0 e1                                      mov r3, r6
0089ab90  00 10 97 e5                                      ldr r1, [r7]
0089ab94  02 c0 95 e7                                      ldr ip, [r5, r2]
0089ab98  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
0089ab9c  00 00 8c e5                                      str r0, [ip]
0089aba0  02 20 8f e0                                      add r2, pc, r2
0089aba4  00 c0 94 e5                                      ldr ip, [r4]
0089aba8  04 00 a0 e1                                      mov r0, r4
0089abac  0f e0 a0 e1                                      mov lr, pc
0089abb0  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0089abb4  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
0089abb8  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0089abbc  00 10 97 e5                                      ldr r1, [r7]
0089abc0  03 30 95 e7                                      ldr r3, [r5, r3]
0089abc4  02 20 8f e0                                      add r2, pc, r2
0089abc8  00 00 83 e5                                      str r0, [r3]
0089abcc  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0089abd0  00 c0 94 e5                                      ldr ip, [r4]
0089abd4  04 00 a0 e1                                      mov r0, r4
0089abd8  03 30 8f e0                                      add r3, pc, r3
0089abdc  0f e0 a0 e1                                      mov lr, pc
0089abe0  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0089abe4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0089abe8  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0089abec  03 30 95 e7                                      ldr r3, [r5, r3]
0089abf0  01 10 8f e0                                      add r1, pc, r1
0089abf4  00 00 83 e5                                      str r0, [r3]
0089abf8  00 30 94 e5                                      ldr r3, [r4]
0089abfc  04 00 a0 e1                                      mov r0, r4
0089ac00  0f e0 a0 e1                                      mov lr, pc
0089ac04  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0089ac08  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0089ac0c  00 00 50 e3                                      cmp r0, #0
0089ac10  03 60 95 e7                                      ldr r6, [r5, r3]
0089ac14  00 00 86 e5                                      str r0, [r6]
0089ac18  16 00 00 0a                                      beq #0x89ac78
0089ac1c  00 10 a0 e1                                      mov r1, r0
0089ac20  00 30 94 e5                                      ldr r3, [r4]
0089ac24  04 00 a0 e1                                      mov r0, r4
0089ac28  0f e0 a0 e1                                      mov lr, pc
0089ac2c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0089ac30  80 30 9f e5                                      ldr r3, [pc, #0x80]
0089ac34  00 00 86 e5                                      str r0, [r6]
0089ac38  00 10 a0 e3                                      mov r1, #0
0089ac3c  03 00 95 e7                                      ldr r0, [r5, r3]
0089ac40  ff 20 a0 e3                                      mov r2, #0xff
0089ac44  05 ce e9 eb                                      bl #0x30e460
0089ac48  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0089ac4c  00 10 a0 e3                                      mov r1, #0
0089ac50  ff 20 a0 e3                                      mov r2, #0xff
0089ac54  03 00 95 e7                                      ldr r0, [r5, r3]
0089ac58  00 ce e9 eb                                      bl #0x30e460
0089ac5c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0089ac60  00 10 a0 e3                                      mov r1, #0
0089ac64  02 2c a0 e3                                      mov r2, #0x200
0089ac68  03 00 95 e7                                      ldr r0, [r5, r3]
0089ac6c  fb cd e9 eb                                      bl #0x30e460
0089ac70  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0089ac74  6f ff ff ea                                      b #0x89aa38
0089ac78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089ac7c  68 9f 0f 00 b8 1d 00 00 b4 c1 04 00 f0 2b 04 00  .byte 0x68, 0x9f, 0x0f, 0x00, 0xb8, 0x1d, 0x00, 0x00, 0xb4, 0xc1, 0x04, 0x00, 0xf0, 0x2b, 0x04, 0x00
0089ac8c  c8 24 00 00 a4 23 04 00 b8 9d 07 00 40 41 00 00  .byte 0xc8, 0x24, 0x00, 0x00, 0xa4, 0x23, 0x04, 0x00, 0xb8, 0x9d, 0x07, 0x00, 0x40, 0x41, 0x00, 0x00
0089ac9c  88 9d 07 00 f0 43 00 00 6c 9d 07 00 60 9d 07 00  .byte 0x88, 0x9d, 0x07, 0x00, 0xf0, 0x43, 0x00, 0x00, 0x6c, 0x9d, 0x07, 0x00, 0x60, 0x9d, 0x07, 0x00
0089acac  f4 17 00 00 68 9d 07 00 34 33 00 00 4c 06 00 00  .byte 0xf4, 0x17, 0x00, 0x00, 0x68, 0x9d, 0x07, 0x00, 0x34, 0x33, 0x00, 0x00, 0x4c, 0x06, 0x00, 0x00
0089acbc  fc 35 00 00 fc 15 00 00                          .byte 0xfc, 0x35, 0x00, 0x00, 0xfc, 0x15, 0x00, 0x00

; FUNCTION 0x0089acfc, declared_size=420, range_size=420, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck7getIMEIEPci
; demangled: ALicenseCheck::getIMEI(char*, int)
; decoder-mode: arm
0089acfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089ad00  01 60 a0 e1                                      mov r6, r1
0089ad04  00 70 a0 e1                                      mov r7, r0
0089ad08  04 64 f2 eb                                      bl #0x533d20
0089ad0c  64 51 9f e5                                      ldr r5, [pc, #0x164]
0089ad10  00 40 a0 e1                                      mov r4, r0
0089ad14  06 20 a0 e1                                      mov r2, r6
0089ad18  00 10 a0 e3                                      mov r1, #0
0089ad1c  07 00 a0 e1                                      mov r0, r7
0089ad20  ce cd e9 eb                                      bl #0x30e460
0089ad24  50 31 9f e5                                      ldr r3, [pc, #0x150]
0089ad28  05 50 8f e0                                      add r5, pc, r5
0089ad2c  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
0089ad30  03 60 95 e7                                      ldr r6, [r5, r3]
0089ad34  48 31 9f e5                                      ldr r3, [pc, #0x148]
0089ad38  00 c0 94 e5                                      ldr ip, [r4]
0089ad3c  00 10 96 e5                                      ldr r1, [r6]
0089ad40  02 20 8f e0                                      add r2, pc, r2
0089ad44  03 30 8f e0                                      add r3, pc, r3
0089ad48  04 00 a0 e1                                      mov r0, r4
0089ad4c  0f e0 a0 e1                                      mov lr, pc
0089ad50  40 f2 9c e5                                      ldr pc, [ip, #0x240]
0089ad54  00 20 a0 e1                                      mov r2, r0
0089ad58  00 10 96 e5                                      ldr r1, [r6]
0089ad5c  00 30 94 e5                                      ldr r3, [r4]
0089ad60  04 00 a0 e1                                      mov r0, r4
0089ad64  0f e0 a0 e1                                      mov lr, pc
0089ad68  44 f2 93 e5                                      ldr pc, [r3, #0x244]
0089ad6c  14 31 9f e5                                      ldr r3, [pc, #0x114]
0089ad70  00 60 a0 e1                                      mov r6, r0
0089ad74  04 00 a0 e1                                      mov r0, r4
0089ad78  03 20 95 e7                                      ldr r2, [r5, r3]
0089ad7c  08 31 9f e5                                      ldr r3, [pc, #0x108]
0089ad80  00 10 92 e5                                      ldr r1, [r2]
0089ad84  03 30 95 e7                                      ldr r3, [r5, r3]
0089ad88  00 20 93 e5                                      ldr r2, [r3]
0089ad8c  59 4f f2 eb                                      bl #0x52eaf8
0089ad90  00 30 94 e5                                      ldr r3, [r4]
0089ad94  00 50 a0 e1                                      mov r5, r0
0089ad98  00 10 a0 e1                                      mov r1, r0
0089ad9c  04 00 a0 e1                                      mov r0, r4
0089ada0  0f e0 a0 e1                                      mov lr, pc
0089ada4  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0089ada8  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0089adac  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0089adb0  00 c0 94 e5                                      ldr ip, [r4]
0089adb4  00 10 a0 e1                                      mov r1, r0
0089adb8  02 20 8f e0                                      add r2, pc, r2
0089adbc  03 30 8f e0                                      add r3, pc, r3
0089adc0  04 00 a0 e1                                      mov r0, r4
0089adc4  0f e0 a0 e1                                      mov lr, pc
0089adc8  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0089adcc  05 10 a0 e1                                      mov r1, r5
0089add0  00 20 a0 e1                                      mov r2, r0
0089add4  06 30 a0 e1                                      mov r3, r6
0089add8  04 00 a0 e1                                      mov r0, r4
0089addc  b9 ff ff eb                                      bl #0x89acc8
0089ade0  00 30 94 e5                                      ldr r3, [r4]
0089ade4  00 50 a0 e1                                      mov r5, r0
0089ade8  00 10 a0 e1                                      mov r1, r0
0089adec  04 00 a0 e1                                      mov r0, r4
0089adf0  0f e0 a0 e1                                      mov lr, pc
0089adf4  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
0089adf8  98 20 9f e5                                      ldr r2, [pc, #0x98]
0089adfc  98 30 9f e5                                      ldr r3, [pc, #0x98]
0089ae00  00 10 a0 e1                                      mov r1, r0
0089ae04  00 c0 94 e5                                      ldr ip, [r4]
0089ae08  03 30 8f e0                                      add r3, pc, r3
0089ae0c  02 20 8f e0                                      add r2, pc, r2
0089ae10  04 00 a0 e1                                      mov r0, r4
0089ae14  0f e0 a0 e1                                      mov lr, pc
0089ae18  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0089ae1c  05 10 a0 e1                                      mov r1, r5
0089ae20  00 20 a0 e1                                      mov r2, r0
0089ae24  04 00 a0 e1                                      mov r0, r4
0089ae28  a6 ff ff eb                                      bl #0x89acc8
0089ae2c  00 30 94 e5                                      ldr r3, [r4]
0089ae30  00 10 a0 e1                                      mov r1, r0
0089ae34  00 20 a0 e3                                      mov r2, #0
0089ae38  04 00 a0 e1                                      mov r0, r4
0089ae3c  0f e0 a0 e1                                      mov lr, pc
0089ae40  a4 f2 93 e5                                      ldr pc, [r3, #0x2a4]
0089ae44  00 50 50 e2                                      subs r5, r0, #0
0089ae48  04 00 00 0a                                      beq #0x89ae60
0089ae4c  00 cc e9 eb                                      bl #0x30de54
0089ae50  05 10 a0 e1                                      mov r1, r5
0089ae54  00 20 a0 e1                                      mov r2, r0
0089ae58  07 00 a0 e1                                      mov r0, r7
0089ae5c  81 ce e9 eb                                      bl #0x30e868
0089ae60  04 00 a0 e1                                      mov r0, r4
0089ae64  06 10 a0 e1                                      mov r1, r6
0089ae68  00 30 94 e5                                      ldr r3, [r4]
0089ae6c  0f e0 a0 e1                                      mov lr, pc
0089ae70  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0089ae74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089ae78  68 9d 0f 00 34 33 00 00 30 9c 07 00 44 9c 07 00  .byte 0x68, 0x9d, 0x0f, 0x00, 0x34, 0x33, 0x00, 0x00, 0x30, 0x9c, 0x07, 0x00, 0x44, 0x9c, 0x07, 0x00
0089ae88  b8 1d 00 00 f4 17 00 00 e8 9b 07 00 fc 9b 07 00  .byte 0xb8, 0x1d, 0x00, 0x00, 0xf4, 0x17, 0x00, 0x00, 0xe8, 0x9b, 0x07, 0x00, 0xfc, 0x9b, 0x07, 0x00
0089ae98  d4 9b 07 00 f0 29 04 00                          .byte 0xd4, 0x9b, 0x07, 0x00, 0xf0, 0x29, 0x04, 0x00

; FUNCTION 0x0089aed4, declared_size=32, range_size=32, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck15CallJNIFuncVoidEP7_jclassP10_jmethodID
; demangled: ALicenseCheck::CallJNIFuncVoid(_jclass*, _jmethodID*)
; decoder-mode: arm
0089aed4  70 40 2d e9                                      push {r4, r5, r6, lr}
0089aed8  01 40 a0 e1                                      mov r4, r1
0089aedc  00 50 a0 e1                                      mov r5, r0
0089aee0  8e 63 f2 eb                                      bl #0x533d20
0089aee4  05 10 a0 e1                                      mov r1, r5
0089aee8  04 20 a0 e1                                      mov r2, r4
0089aeec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0089aef0  ea ff ff ea                                      b #0x89aea0

; FUNCTION 0x0089aef4, declared_size=104, range_size=104, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck7DestroyEv
; demangled: ALicenseCheck::Destroy()
; decoder-mode: arm
0089aef4  70 40 2d e9                                      push {r4, r5, r6, lr}
0089aef8  50 40 9f e5                                      ldr r4, [pc, #0x50]
0089aefc  50 30 9f e5                                      ldr r3, [pc, #0x50]
0089af00  04 40 8f e0                                      add r4, pc, r4
0089af04  03 50 94 e7                                      ldr r5, [r4, r3]
0089af08  00 30 95 e5                                      ldr r3, [r5]
0089af0c  00 00 53 e3                                      cmp r3, #0
0089af10  05 00 00 0a                                      beq #0x89af2c
0089af14  03 00 a0 e1                                      mov r0, r3
0089af18  00 30 93 e5                                      ldr r3, [r3]
0089af1c  0f e0 a0 e1                                      mov lr, pc
0089af20  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0089af24  00 30 a0 e3                                      mov r3, #0
0089af28  00 30 85 e5                                      str r3, [r5]
0089af2c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0089af30  03 40 94 e7                                      ldr r4, [r4, r3]
0089af34  00 00 94 e5                                      ldr r0, [r4]
0089af38  00 00 50 e3                                      cmp r0, #0
0089af3c  02 00 00 0a                                      beq #0x89af4c
0089af40  da cc e9 eb                                      bl #0x30e2b0
0089af44  00 30 a0 e3                                      mov r3, #0
0089af48  00 30 84 e5                                      str r3, [r4]
0089af4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0089af50  90 9b 0f 00 40 36 00 00 f0 48 00 00              .byte 0x90, 0x9b, 0x0f, 0x00, 0x40, 0x36, 0x00, 0x00, 0xf0, 0x48, 0x00, 0x00

; FUNCTION 0x0089af5c, declared_size=232, range_size=232, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck13getPhpAddressEPc
; demangled: ALicenseCheck::getPhpAddress(char*)
; decoder-mode: arm
0089af5c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
0089af60  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0089af64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089af68  03 30 8f e0                                      add r3, pc, r3
0089af6c  02 60 93 e7                                      ldr r6, [r3, r2]
0089af70  42 df 4d e2                                      sub sp, sp, #0x108
0089af74  04 40 8d e2                                      add r4, sp, #4
0089af78  00 c0 96 e5                                      ldr ip, [r6]
0089af7c  00 50 a0 e1                                      mov r5, r0
0089af80  00 10 a0 e3                                      mov r1, #0
0089af84  01 2c a0 e3                                      mov r2, #0x100
0089af88  04 00 a0 e1                                      mov r0, r4
0089af8c  04 c1 8d e5                                      str ip, [sp, #0x104]
0089af90  32 cd e9 eb                                      bl #0x30e460
0089af94  04 00 a0 e1                                      mov r0, r4
0089af98  01 2c a0 e3                                      mov r2, #0x100
0089af9c  00 10 a0 e3                                      mov r1, #0
0089afa0  d6 07 00 eb                                      bl #0x89cf00
0089afa4  2f 30 a0 e3                                      mov r3, #0x2f
0089afa8  05 00 a0 e1                                      mov r0, r5
0089afac  04 10 a0 e1                                      mov r1, r4
0089afb0  03 20 a0 e3                                      mov r2, #3
0089afb4  34 06 00 eb                                      bl #0x89c88c
0089afb8  00 10 a0 e3                                      mov r1, #0
0089afbc  01 70 40 e2                                      sub r7, r0, #1
0089afc0  01 2c a0 e3                                      mov r2, #0x100
0089afc4  04 00 a0 e1                                      mov r0, r4
0089afc8  cc 07 00 eb                                      bl #0x89cf00
0089afcc  05 00 a0 e1                                      mov r0, r5
0089afd0  30 07 00 eb                                      bl #0x89cc98
0089afd4  07 10 85 e0                                      add r1, r5, r7
0089afd8  00 20 67 e0                                      rsb r2, r7, r0
0089afdc  04 00 a0 e1                                      mov r0, r4
0089afe0  c1 07 00 eb                                      bl #0x89ceec
0089afe4  04 00 a0 e1                                      mov r0, r4
0089afe8  2a 07 00 eb                                      bl #0x89cc98
0089afec  01 80 80 e2                                      add r8, r0, #1
0089aff0  00 70 a0 e1                                      mov r7, r0
0089aff4  08 00 a0 e1                                      mov r0, r8
0089aff8  34 cc e9 eb                                      bl #0x30e0d0
0089affc  08 20 a0 e1                                      mov r2, r8
0089b000  00 50 a0 e1                                      mov r5, r0
0089b004  00 10 a0 e3                                      mov r1, #0
0089b008  bc 07 00 eb                                      bl #0x89cf00
0089b00c  07 20 a0 e1                                      mov r2, r7
0089b010  05 00 a0 e1                                      mov r0, r5
0089b014  04 10 a0 e1                                      mov r1, r4
0089b018  b3 07 00 eb                                      bl #0x89ceec
0089b01c  04 21 9d e5                                      ldr r2, [sp, #0x104]
0089b020  00 30 96 e5                                      ldr r3, [r6]
0089b024  05 00 a0 e1                                      mov r0, r5
0089b028  03 00 52 e1                                      cmp r2, r3
0089b02c  01 00 00 1a                                      bne #0x89b038
0089b030  42 df 8d e2                                      add sp, sp, #0x108
0089b034  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089b038  b4 cc e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089b03c  28 9b 0f 00 ac 40 00 00                          .byte 0x28, 0x9b, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089b044, declared_size=296, range_size=296, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck7getHostEPc
; demangled: ALicenseCheck::getHost(char*)
; decoder-mode: arm
0089b044  18 31 9f e5                                      ldr r3, [pc, #0x118]
0089b048  18 21 9f e5                                      ldr r2, [pc, #0x118]
0089b04c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089b050  03 30 8f e0                                      add r3, pc, r3
0089b054  02 70 93 e7                                      ldr r7, [r3, r2]
0089b058  82 df 4d e2                                      sub sp, sp, #0x208
0089b05c  41 4f 8d e2                                      add r4, sp, #0x104
0089b060  00 c0 97 e5                                      ldr ip, [r7]
0089b064  00 60 a0 e1                                      mov r6, r0
0089b068  04 50 8d e2                                      add r5, sp, #4
0089b06c  00 10 a0 e3                                      mov r1, #0
0089b070  01 2c a0 e3                                      mov r2, #0x100
0089b074  04 00 a0 e1                                      mov r0, r4
0089b078  04 c2 8d e5                                      str ip, [sp, #0x204]
0089b07c  f7 cc e9 eb                                      bl #0x30e460
0089b080  00 10 a0 e3                                      mov r1, #0
0089b084  01 2c a0 e3                                      mov r2, #0x100
0089b088  05 00 a0 e1                                      mov r0, r5
0089b08c  f3 cc e9 eb                                      bl #0x30e460
0089b090  04 00 a0 e1                                      mov r0, r4
0089b094  00 10 a0 e3                                      mov r1, #0
0089b098  01 2c a0 e3                                      mov r2, #0x100
0089b09c  97 07 00 eb                                      bl #0x89cf00
0089b0a0  05 00 a0 e1                                      mov r0, r5
0089b0a4  01 2c a0 e3                                      mov r2, #0x100
0089b0a8  00 10 a0 e3                                      mov r1, #0
0089b0ac  93 07 00 eb                                      bl #0x89cf00
0089b0b0  2f 30 a0 e3                                      mov r3, #0x2f
0089b0b4  04 10 a0 e1                                      mov r1, r4
0089b0b8  06 00 a0 e1                                      mov r0, r6
0089b0bc  02 20 a0 e3                                      mov r2, #2
0089b0c0  f1 05 00 eb                                      bl #0x89c88c
0089b0c4  00 10 a0 e3                                      mov r1, #0
0089b0c8  00 80 a0 e1                                      mov r8, r0
0089b0cc  01 2c a0 e3                                      mov r2, #0x100
0089b0d0  04 00 a0 e1                                      mov r0, r4
0089b0d4  89 07 00 eb                                      bl #0x89cf00
0089b0d8  06 00 a0 e1                                      mov r0, r6
0089b0dc  ed 06 00 eb                                      bl #0x89cc98
0089b0e0  08 10 86 e0                                      add r1, r6, r8
0089b0e4  00 20 68 e0                                      rsb r2, r8, r0
0089b0e8  04 00 a0 e1                                      mov r0, r4
0089b0ec  7e 07 00 eb                                      bl #0x89ceec
0089b0f0  2f 30 a0 e3                                      mov r3, #0x2f
0089b0f4  05 10 a0 e1                                      mov r1, r5
0089b0f8  00 20 a0 e3                                      mov r2, #0
0089b0fc  04 00 a0 e1                                      mov r0, r4
0089b100  e1 05 00 eb                                      bl #0x89c88c
0089b104  04 00 a0 e1                                      mov r0, r4
0089b108  e2 06 00 eb                                      bl #0x89cc98
0089b10c  05 00 a0 e1                                      mov r0, r5
0089b110  e0 06 00 eb                                      bl #0x89cc98
0089b114  01 80 80 e2                                      add r8, r0, #1
0089b118  00 60 a0 e1                                      mov r6, r0
0089b11c  08 00 a0 e1                                      mov r0, r8
0089b120  ea cb e9 eb                                      bl #0x30e0d0
0089b124  08 20 a0 e1                                      mov r2, r8
0089b128  00 40 a0 e1                                      mov r4, r0
0089b12c  00 10 a0 e3                                      mov r1, #0
0089b130  72 07 00 eb                                      bl #0x89cf00
0089b134  06 20 a0 e1                                      mov r2, r6
0089b138  04 00 a0 e1                                      mov r0, r4
0089b13c  05 10 a0 e1                                      mov r1, r5
0089b140  69 07 00 eb                                      bl #0x89ceec
0089b144  04 22 9d e5                                      ldr r2, [sp, #0x204]
0089b148  00 30 97 e5                                      ldr r3, [r7]
0089b14c  04 00 a0 e1                                      mov r0, r4
0089b150  03 00 52 e1                                      cmp r2, r3
0089b154  01 00 00 1a                                      bne #0x89b160
0089b158  82 df 8d e2                                      add sp, sp, #0x208
0089b15c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089b160  6a cc e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089b164  40 9a 0f 00 ac 40 00 00                          .byte 0x40, 0x9a, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089b16c, declared_size=148, range_size=148, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck11initXPlayerEv
; demangled: ALicenseCheck::initXPlayer()
; decoder-mode: arm
0089b16c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089b170  78 40 9f e5                                      ldr r4, [pc, #0x78]
0089b174  78 30 9f e5                                      ldr r3, [pc, #0x78]
0089b178  04 40 8f e0                                      add r4, pc, r4
0089b17c  03 50 94 e7                                      ldr r5, [r4, r3]
0089b180  05 00 a0 e1                                      mov r0, r5
0089b184  ae ff ff eb                                      bl #0x89b044
0089b188  00 60 a0 e1                                      mov r6, r0
0089b18c  05 00 a0 e1                                      mov r0, r5
0089b190  71 ff ff eb                                      bl #0x89af5c
0089b194  00 50 a0 e1                                      mov r5, r0
0089b198  42 0e a0 e3                                      mov r0, #0x420
0089b19c  08 00 80 e2                                      add r0, r0, #8
0089b1a0  b9 cd e9 eb                                      bl #0x30e88c
0089b1a4  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0089b1a8  05 30 a0 e1                                      mov r3, r5
0089b1ac  06 10 a0 e1                                      mov r1, r6
0089b1b0  02 20 8f e0                                      add r2, pc, r2
0089b1b4  00 70 a0 e1                                      mov r7, r0
0089b1b8  e4 09 00 eb                                      bl #0x89d950
0089b1bc  38 30 9f e5                                      ldr r3, [pc, #0x38]
0089b1c0  00 00 56 e3                                      cmp r6, #0
0089b1c4  03 30 94 e7                                      ldr r3, [r4, r3]
0089b1c8  00 70 83 e5                                      str r7, [r3]
0089b1cc  01 00 00 0a                                      beq #0x89b1d8
0089b1d0  06 00 a0 e1                                      mov r0, r6
0089b1d4  35 cc e9 eb                                      bl #0x30e2b0
0089b1d8  00 00 55 e3                                      cmp r5, #0
0089b1dc  02 00 00 0a                                      beq #0x89b1ec
0089b1e0  05 00 a0 e1                                      mov r0, r5
0089b1e4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0089b1e8  30 cc e9 ea                                      b #0x30e2b0
0089b1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0089b1f0  18 99 0f 00 fc 15 00 00 c0 3f 02 00 40 36 00 00  .byte 0x18, 0x99, 0x0f, 0x00, 0xfc, 0x15, 0x00, 0x00, 0xc0, 0x3f, 0x02, 0x00, 0x40, 0x36, 0x00, 0x00

; FUNCTION 0x0089b200, declared_size=88, range_size=88, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck11SetRMS_PATHEPKc
; demangled: ALicenseCheck::SetRMS_PATH(char const*)
; decoder-mode: arm
0089b200  70 40 2d e9                                      push {r4, r5, r6, lr}
0089b204  00 60 a0 e1                                      mov r6, r0
0089b208  a2 06 00 eb                                      bl #0x89cc98
0089b20c  01 50 80 e2                                      add r5, r0, #1
0089b210  00 40 a0 e1                                      mov r4, r0
0089b214  05 00 a0 e1                                      mov r0, r5
0089b218  ac cb e9 eb                                      bl #0x30e0d0
0089b21c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0089b220  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0089b224  05 20 a0 e1                                      mov r2, r5
0089b228  03 30 8f e0                                      add r3, pc, r3
0089b22c  01 50 93 e7                                      ldr r5, [r3, r1]
0089b230  00 10 a0 e3                                      mov r1, #0
0089b234  00 00 85 e5                                      str r0, [r5]
0089b238  30 07 00 eb                                      bl #0x89cf00
0089b23c  00 00 95 e5                                      ldr r0, [r5]
0089b240  06 10 a0 e1                                      mov r1, r6
0089b244  04 20 a0 e1                                      mov r2, r4
0089b248  70 40 bd e8                                      pop {r4, r5, r6, lr}
0089b24c  26 07 00 ea                                      b #0x89ceec
; mapping-symbol data/literal pool
0089b250  68 98 0f 00 f0 48 00 00                          .byte 0x68, 0x98, 0x0f, 0x00, 0xf0, 0x48, 0x00, 0x00

; FUNCTION 0x0089b25c, declared_size=1024, range_size=1024, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck7LoadRMSEv
; demangled: ALicenseCheck::LoadRMS()
; decoder-mode: arm
0089b25c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089b260  d0 53 9f e5                                      ldr r5, [pc, #0x3d0]
0089b264  d0 b3 9f e5                                      ldr fp, [pc, #0x3d0]
0089b268  d0 23 9f e5                                      ldr r2, [pc, #0x3d0]
0089b26c  05 50 8f e0                                      add r5, pc, r5
0089b270  0b 30 95 e7                                      ldr r3, [r5, fp]
0089b274  02 d7 4d e2                                      sub sp, sp, #0x80000
0089b278  41 de 4d e2                                      sub sp, sp, #0x410
0089b27c  04 d0 4d e2                                      sub sp, sp, #4
0089b280  00 30 93 e5                                      ldr r3, [r3]
0089b284  02 20 95 e7                                      ldr r2, [r5, r2]
0089b288  b4 13 9f e5                                      ldr r1, [pc, #0x3b4]
0089b28c  02 47 8d e2                                      add r4, sp, #0x80000
0089b290  02 c7 8d e2                                      add ip, sp, #0x80000
0089b294  c3 4f 84 e2                                      add r4, r4, #0x30c
0089b298  01 10 8f e0                                      add r1, pc, r1
0089b29c  00 20 92 e5                                      ldr r2, [r2]
0089b2a0  0c 34 8c e5                                      str r3, [ip, #0x40c]
0089b2a4  04 00 a0 e1                                      mov r0, r4
0089b2a8  0d ce e9 eb                                      bl #0x30eae4
0089b2ac  94 13 9f e5                                      ldr r1, [pc, #0x394]
0089b2b0  04 00 a0 e1                                      mov r0, r4
0089b2b4  01 10 8f e0                                      add r1, pc, r1
0089b2b8  92 cc e9 eb                                      bl #0x30e508
0089b2bc  00 60 50 e2                                      subs r6, r0, #0
0089b2c0  ba 00 00 0a                                      beq #0x89b5b0
0089b2c4  41 4e 8d e2                                      add r4, sp, #0x410
0089b2c8  01 4b 44 e2                                      sub r4, r4, #0x400
0089b2cc  04 40 44 e2                                      sub r4, r4, #4
0089b2d0  01 10 a0 e3                                      mov r1, #1
0089b2d4  06 30 a0 e1                                      mov r3, r6
0089b2d8  02 27 a0 e3                                      mov r2, #0x80000
0089b2dc  04 00 a0 e1                                      mov r0, r4
0089b2e0  01 cc e9 eb                                      bl #0x30e2ec
0089b2e4  06 00 a0 e1                                      mov r0, r6
0089b2e8  09 ce e9 eb                                      bl #0x30eb14
0089b2ec  58 13 9f e5                                      ldr r1, [pc, #0x358]
0089b2f0  02 a7 8d e2                                      add sl, sp, #0x80000
0089b2f4  00 30 a0 e3                                      mov r3, #0
0089b2f8  01 10 8f e0                                      add r1, pc, r1
0089b2fc  83 af 8a e2                                      add sl, sl, #0x20c
0089b300  34 00 81 e2                                      add r0, r1, #0x34
0089b304  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0089b308  02 20 d1 e7                                      ldrb r2, [r1, r2]
0089b30c  03 20 ca e7                                      strb r2, [sl, r3]
0089b310  01 30 83 e2                                      add r3, r3, #1
0089b314  08 00 53 e3                                      cmp r3, #8
0089b318  f9 ff ff 1a                                      bne #0x89b304
0089b31c  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
0089b320  02 3a a0 e3                                      mov r3, #0x2000
0089b324  0c 30 83 e2                                      add r3, r3, #0xc
0089b328  01 90 95 e7                                      ldr sb, [r5, r1]
0089b32c  03 30 d4 e7                                      ldrb r3, [r4, r3]
0089b330  02 17 8d e2                                      add r1, sp, #0x80000
0089b334  02 1c 81 e2                                      add r1, r1, #0x200
0089b338  81 2d a0 e3                                      mov r2, #0x2040
0089b33c  00 60 a0 e3                                      mov r6, #0
0089b340  10 20 82 e2                                      add r2, r2, #0x10
0089b344  14 60 c1 e5                                      strb r6, [r1, #0x14]
0089b348  09 00 a0 e1                                      mov r0, sb
0089b34c  02 80 d4 e7                                      ldrb r8, [r4, r2]
0089b350  00 30 8d e5                                      str r3, [sp]
0089b354  be ca e9 eb                                      bl #0x30de54
0089b358  00 70 50 e2                                      subs r7, r0, #0
0089b35c  00 30 9d e5                                      ldr r3, [sp]
0089b360  9d 00 00 da                                      ble #0x89b5dc
0089b364  e8 02 9f e5                                      ldr r0, [pc, #0x2e8]
0089b368  06 20 a0 e1                                      mov r2, r6
0089b36c  02 67 8d e2                                      add r6, sp, #0x80000
0089b370  43 6f 86 e2                                      add r6, r6, #0x10c
0089b374  d9 10 92 e1                                      ldrsb r1, [r2, sb]
0089b378  ff 00 51 e3                                      cmp r1, #0xff
0089b37c  00 c0 95 97                                      ldrls ip, [r5, r0]
0089b380  00 c0 9c 95                                      ldrls ip, [ip]
0089b384  81 10 8c 90                                      addls r1, ip, r1, lsl #1
0089b388  f2 10 d1 91                                      ldrshls r1, [r1, #2]
0089b38c  02 10 c6 e7                                      strb r1, [r6, r2]
0089b390  01 20 82 e2                                      add r2, r2, #1
0089b394  02 00 57 e1                                      cmp r7, r2
0089b398  f5 ff ff 1a                                      bne #0x89b374
0089b39c  00 90 a0 e3                                      mov sb, #0
0089b3a0  06 00 a0 e1                                      mov r0, r6
0089b3a4  0a 10 a0 e1                                      mov r1, sl
0089b3a8  06 20 a0 e1                                      mov r2, r6
0089b3ac  07 90 c6 e7                                      strb sb, [r6, r7]
0089b3b0  00 30 8d e5                                      str r3, [sp]
0089b3b4  19 fd ff eb                                      bl #0x89a820
0089b3b8  00 30 9d e5                                      ldr r3, [sp]
0089b3bc  02 c7 8d e2                                      add ip, sp, #0x80000
0089b3c0  41 ce 8c e2                                      add ip, ip, #0x410
0089b3c4  03 20 8c e0                                      add r2, ip, r3
0089b3c8  07 10 8c e0                                      add r1, ip, r7
0089b3cc  7e 2a 42 e2                                      sub r2, r2, #0x7e000
0089b3d0  02 07 8d e2                                      add r0, sp, #0x80000
0089b3d4  04 93 41 e5                                      strb sb, [r1, #-0x304]
0089b3d8  e1 2f 42 e2                                      sub r2, r2, #0x384
0089b3dc  01 0c 80 e2                                      add r0, r0, #0x100
0089b3e0  00 20 d2 e5                                      ldrb r2, [r2]
0089b3e4  0c 10 d0 e5                                      ldrb r1, [r0, #0xc]
0089b3e8  02 00 51 e1                                      cmp r1, r2
0089b3ec  08 30 83 00                                      addeq r3, r3, r8
0089b3f0  82 3d 83 02                                      addeq r3, r3, #0x2080
0089b3f4  05 00 00 0a                                      beq #0x89b410
0089b3f8  6c 00 00 ea                                      b #0x89b5b0
0089b3fc  03 10 d4 e7                                      ldrb r1, [r4, r3]
0089b400  09 20 d6 e7                                      ldrb r2, [r6, sb]
0089b404  08 30 83 e0                                      add r3, r3, r8
0089b408  02 00 51 e1                                      cmp r1, r2
0089b40c  67 00 00 1a                                      bne #0x89b5b0
0089b410  01 90 89 e2                                      add sb, sb, #1
0089b414  09 00 57 e1                                      cmp r7, sb
0089b418  f7 ff ff 1a                                      bne #0x89b3fc
0089b41c  06 3a a0 e3                                      mov r3, #0x6000
0089b420  0c 30 83 e2                                      add r3, r3, #0xc
0089b424  03 00 d4 e7                                      ldrb r0, [r4, r3]
0089b428  06 3a a0 e3                                      mov r3, #0x6000
0089b42c  50 30 83 e2                                      add r3, r3, #0x50
0089b430  00 00 50 e3                                      cmp r0, #0
0089b434  03 c0 d4 e7                                      ldrb ip, [r4, r3]
0089b438  10 00 00 0a                                      beq #0x89b480
0089b43c  06 3a a0 e3                                      mov r3, #0x6000
0089b440  80 30 83 e2                                      add r3, r3, #0x80
0089b444  d3 30 94 e1                                      ldrsb r3, [r4, r3]
0089b448  0f 00 53 e3                                      cmp r3, #0xf
0089b44c  06 2a 8c d2                                      addle r2, ip, #0x6000
0089b450  80 20 82 d2                                      addle r2, r2, #0x80
0089b454  00 30 a0 d3                                      movle r3, #0
0089b458  05 00 00 da                                      ble #0x89b474
0089b45c  53 00 00 ea                                      b #0x89b5b0
0089b460  02 10 d4 e7                                      ldrb r1, [r4, r2]
0089b464  0c 20 82 e0                                      add r2, r2, ip
0089b468  01 1c a0 e1                                      lsl r1, r1, #0x18
0089b46c  0f 04 51 e3                                      cmp r1, #0xf000000
0089b470  4e 00 00 ca                                      bgt #0x89b5b0
0089b474  01 30 83 e2                                      add r3, r3, #1
0089b478  00 00 53 e1                                      cmp r3, r0
0089b47c  f7 ff ff 1a                                      bne #0x89b460
0089b480  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
0089b484  0e 2a a0 e3                                      mov r2, #0xe000
0089b488  02 30 a0 e1                                      mov r3, r2
0089b48c  01 90 95 e7                                      ldr sb, [r5, r1]
0089b490  0c 20 82 e2                                      add r2, r2, #0xc
0089b494  02 20 d4 e7                                      ldrb r2, [r4, r2]
0089b498  50 30 83 e2                                      add r3, r3, #0x50
0089b49c  09 00 a0 e1                                      mov r0, sb
0089b4a0  04 20 8d e5                                      str r2, [sp, #4]
0089b4a4  03 80 d4 e7                                      ldrb r8, [r4, r3]
0089b4a8  69 ca e9 eb                                      bl #0x30de54
0089b4ac  00 70 50 e2                                      subs r7, r0, #0
0089b4b0  55 00 00 da                                      ble #0x89b60c
0089b4b4  02 67 8d e2                                      add r6, sp, #0x80000
0089b4b8  94 11 9f e5                                      ldr r1, [pc, #0x194]
0089b4bc  10 60 86 e2                                      add r6, r6, #0x10
0089b4c0  04 60 46 e2                                      sub r6, r6, #4
0089b4c4  00 30 a0 e3                                      mov r3, #0
0089b4c8  d9 20 93 e1                                      ldrsb r2, [r3, sb]
0089b4cc  ff 00 52 e3                                      cmp r2, #0xff
0089b4d0  01 00 95 97                                      ldrls r0, [r5, r1]
0089b4d4  00 00 90 95                                      ldrls r0, [r0]
0089b4d8  82 20 80 90                                      addls r2, r0, r2, lsl #1
0089b4dc  f2 20 d2 91                                      ldrshls r2, [r2, #2]
0089b4e0  03 20 c6 e7                                      strb r2, [r6, r3]
0089b4e4  01 30 83 e2                                      add r3, r3, #1
0089b4e8  03 00 57 e1                                      cmp r7, r3
0089b4ec  f5 ff ff 1a                                      bne #0x89b4c8
0089b4f0  0a 10 a0 e1                                      mov r1, sl
0089b4f4  00 a0 a0 e3                                      mov sl, #0
0089b4f8  04 90 9d e5                                      ldr sb, [sp, #4]
0089b4fc  06 20 a0 e1                                      mov r2, r6
0089b500  06 00 a0 e1                                      mov r0, r6
0089b504  07 a0 c6 e7                                      strb sl, [r6, r7]
0089b508  c4 fc ff eb                                      bl #0x89a820
0089b50c  02 17 8d e2                                      add r1, sp, #0x80000
0089b510  41 1e 81 e2                                      add r1, r1, #0x410
0089b514  09 30 81 e0                                      add r3, r1, sb
0089b518  07 20 81 e0                                      add r2, r1, r7
0089b51c  72 3a 43 e2                                      sub r3, r3, #0x72000
0089b520  04 a4 42 e5                                      strb sl, [r2, #-0x404]
0089b524  c1 3f 43 e2                                      sub r3, r3, #0x304
0089b528  02 c7 8d e2                                      add ip, sp, #0x80000
0089b52c  00 30 d3 e5                                      ldrb r3, [r3]
0089b530  0c 20 dc e5                                      ldrb r2, [ip, #0xc]
0089b534  03 00 52 e1                                      cmp r2, r3
0089b538  08 30 89 00                                      addeq r3, sb, r8
0089b53c  e1 3c 83 02                                      addeq r3, r3, #0xe100
0089b540  05 00 00 0a                                      beq #0x89b55c
0089b544  19 00 00 ea                                      b #0x89b5b0
0089b548  03 10 d4 e7                                      ldrb r1, [r4, r3]
0089b54c  0a 20 d6 e7                                      ldrb r2, [r6, sl]
0089b550  08 30 83 e0                                      add r3, r3, r8
0089b554  02 00 51 e1                                      cmp r1, r2
0089b558  14 00 00 1a                                      bne #0x89b5b0
0089b55c  01 a0 8a e2                                      add sl, sl, #1
0089b560  0a 00 57 e1                                      cmp r7, sl
0089b564  f7 ff ff 1a                                      bne #0x89b548
0089b568  32 3a a0 e3                                      mov r3, #0x32000
0089b56c  19 09 a0 e3                                      mov r0, #0x64000
0089b570  02 3c 83 e2                                      add r3, r3, #0x200
0089b574  02 0c 80 e2                                      add r0, r0, #0x200
0089b578  00 20 a0 e3                                      mov r2, #0
0089b57c  d3 10 94 e1                                      ldrsb r1, [r4, r3]
0089b580  01 30 83 e2                                      add r3, r3, #1
0089b584  00 00 53 e1                                      cmp r3, r0
0089b588  01 20 82 e0                                      add r2, r2, r1
0089b58c  fa ff ff 1a                                      bne #0x89b57c
0089b590  19 39 a0 e3                                      mov r3, #0x64000
0089b594  0a 3d 83 e2                                      add r3, r3, #0x280
0089b598  03 30 d4 e7                                      ldrb r3, [r4, r3]
0089b59c  ff 20 02 e2                                      and r2, r2, #0xff
0089b5a0  03 00 52 e1                                      cmp r2, r3
0089b5a4  00 00 a0 13                                      movne r0, #0
0089b5a8  01 00 a0 03                                      moveq r0, #1
0089b5ac  00 00 00 ea                                      b #0x89b5b4
0089b5b0  00 00 a0 e3                                      mov r0, #0
0089b5b4  0b 30 95 e7                                      ldr r3, [r5, fp]
0089b5b8  02 17 8d e2                                      add r1, sp, #0x80000
0089b5bc  0c 24 91 e5                                      ldr r2, [r1, #0x40c]
0089b5c0  00 30 93 e5                                      ldr r3, [r3]
0089b5c4  03 00 52 e1                                      cmp r2, r3
0089b5c8  19 00 00 1a                                      bne #0x89b634
0089b5cc  14 d0 8d e2                                      add sp, sp, #0x14
0089b5d0  01 db 8d e2                                      add sp, sp, #0x400
0089b5d4  02 d7 8d e2                                      add sp, sp, #0x80000
0089b5d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089b5dc  02 37 8d e2                                      add r3, sp, #0x80000
0089b5e0  43 3f 83 e2                                      add r3, r3, #0x10c
0089b5e4  03 20 a0 e1                                      mov r2, r3
0089b5e8  07 60 c3 e7                                      strb r6, [r3, r7]
0089b5ec  03 00 a0 e1                                      mov r0, r3
0089b5f0  0a 10 a0 e1                                      mov r1, sl
0089b5f4  89 fc ff eb                                      bl #0x89a820
0089b5f8  02 27 8d e2                                      add r2, sp, #0x80000
0089b5fc  41 2e 82 e2                                      add r2, r2, #0x410
0089b600  07 70 82 e0                                      add r7, r2, r7
0089b604  04 63 47 e5                                      strb r6, [r7, #-0x304]
0089b608  83 ff ff ea                                      b #0x89b41c
0089b60c  02 37 8d e2                                      add r3, sp, #0x80000
0089b610  10 30 83 e2                                      add r3, r3, #0x10
0089b614  04 30 43 e2                                      sub r3, r3, #4
0089b618  00 c0 a0 e3                                      mov ip, #0
0089b61c  03 00 a0 e1                                      mov r0, r3
0089b620  0a 10 a0 e1                                      mov r1, sl
0089b624  03 20 a0 e1                                      mov r2, r3
0089b628  07 c0 c3 e7                                      strb ip, [r3, r7]
0089b62c  7b fc ff eb                                      bl #0x89a820
0089b630  cc ff ff ea                                      b #0x89b568
0089b634  35 cb e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089b638  24 98 0f 00 ac 40 00 00 f0 48 00 00 58 97 07 00  .byte 0x24, 0x98, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x48, 0x00, 0x00, 0x58, 0x97, 0x07, 0x00
0089b648  ec 54 02 00 c0 95 07 00 a8 33 00 00 28 06 00 00  .byte 0xec, 0x54, 0x02, 0x00, 0xc0, 0x95, 0x07, 0x00, 0xa8, 0x33, 0x00, 0x00, 0x28, 0x06, 0x00, 0x00
0089b658  fc 19 00 00                                      .byte 0xfc, 0x19, 0x00, 0x00

; FUNCTION 0x0089b65c, declared_size=1136, range_size=1136, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck7SaveRMSEb
; demangled: ALicenseCheck::SaveRMS(bool)
; decoder-mode: arm
0089b65c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089b660  3c 44 9f e5                                      ldr r4, [pc, #0x43c]
0089b664  3c 94 9f e5                                      ldr sb, [pc, #0x43c]
0089b668  3c 24 9f e5                                      ldr r2, [pc, #0x43c]
0089b66c  04 40 8f e0                                      add r4, pc, r4
0089b670  09 30 94 e7                                      ldr r3, [r4, sb]
0089b674  02 d7 4d e2                                      sub sp, sp, #0x80000
0089b678  41 de 4d e2                                      sub sp, sp, #0x410
0089b67c  04 d0 4d e2                                      sub sp, sp, #4
0089b680  00 30 93 e5                                      ldr r3, [r3]
0089b684  02 20 94 e7                                      ldr r2, [r4, r2]
0089b688  20 14 9f e5                                      ldr r1, [pc, #0x420]
0089b68c  02 57 8d e2                                      add r5, sp, #0x80000
0089b690  02 c7 8d e2                                      add ip, sp, #0x80000
0089b694  c3 5f 85 e2                                      add r5, r5, #0x30c
0089b698  01 10 8f e0                                      add r1, pc, r1
0089b69c  00 20 92 e5                                      ldr r2, [r2]
0089b6a0  0c 34 8c e5                                      str r3, [ip, #0x40c]
0089b6a4  00 60 a0 e1                                      mov r6, r0
0089b6a8  05 00 a0 e1                                      mov r0, r5
0089b6ac  0c cd e9 eb                                      bl #0x30eae4
0089b6b0  fc 13 9f e5                                      ldr r1, [pc, #0x3fc]
0089b6b4  05 00 a0 e1                                      mov r0, r5
0089b6b8  01 10 8f e0                                      add r1, pc, r1
0089b6bc  91 cb e9 eb                                      bl #0x30e508
0089b6c0  00 b0 50 e2                                      subs fp, r0, #0
0089b6c4  1f 00 00 0a                                      beq #0x89b748
0089b6c8  32 fc ff eb                                      bl #0x89a798
0089b6cc  9e cc e9 eb                                      bl #0x30e94c
0089b6d0  41 5e 8d e2                                      add r5, sp, #0x410
0089b6d4  dc a3 9f e5                                      ldr sl, [pc, #0x3dc]
0089b6d8  01 5b 45 e2                                      sub r5, r5, #0x400
0089b6dc  04 50 45 e2                                      sub r5, r5, #4
0089b6e0  00 70 a0 e3                                      mov r7, #0
0089b6e4  ff 80 a0 e3                                      mov r8, #0xff
0089b6e8  ae cd e9 eb                                      bl #0x30eda8
0089b6ec  9a 10 c2 e0                                      smull r1, r2, sl, r0
0089b6f0  c0 3f a0 e1                                      asr r3, r0, #0x1f
0089b6f4  00 20 82 e0                                      add r2, r2, r0
0089b6f8  c2 23 63 e0                                      rsb r2, r3, r2, asr #7
0089b6fc  98 02 03 e0                                      mul r3, r8, r2
0089b700  00 00 63 e0                                      rsb r0, r3, r0
0089b704  01 00 80 e2                                      add r0, r0, #1
0089b708  07 00 c5 e7                                      strb r0, [r5, r7]
0089b70c  01 70 87 e2                                      add r7, r7, #1
0089b710  02 07 57 e3                                      cmp r7, #0x80000
0089b714  f3 ff ff 1a                                      bne #0x89b6e8
0089b718  00 00 56 e3                                      cmp r6, #0
0089b71c  81 3d a0 03                                      moveq r3, #0x2040
0089b720  10 30 83 02                                      addeq r3, r3, #0x10
0089b724  03 60 c5 07                                      strbeq r6, [r5, r3]
0089b728  10 00 00 1a                                      bne #0x89b770
0089b72c  05 00 a0 e1                                      mov r0, r5
0089b730  01 10 a0 e3                                      mov r1, #1
0089b734  02 27 a0 e3                                      mov r2, #0x80000
0089b738  0b 30 a0 e1                                      mov r3, fp
0089b73c  95 cb e9 eb                                      bl #0x30e598
0089b740  0b 00 a0 e1                                      mov r0, fp
0089b744  f2 cc e9 eb                                      bl #0x30eb14
0089b748  09 30 94 e7                                      ldr r3, [r4, sb]
0089b74c  02 17 8d e2                                      add r1, sp, #0x80000
0089b750  0c 24 91 e5                                      ldr r2, [r1, #0x40c]
0089b754  00 30 93 e5                                      ldr r3, [r3]
0089b758  03 00 52 e1                                      cmp r2, r3
0089b75c  cf 00 00 1a                                      bne #0x89baa0
0089b760  14 d0 8d e2                                      add sp, sp, #0x14
0089b764  01 db 8d e2                                      add sp, sp, #0x400
0089b768  02 d7 8d e2                                      add sp, sp, #0x80000
0089b76c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089b770  44 13 9f e5                                      ldr r1, [pc, #0x344]
0089b774  02 a7 8d e2                                      add sl, sp, #0x80000
0089b778  00 30 a0 e3                                      mov r3, #0
0089b77c  01 10 8f e0                                      add r1, pc, r1
0089b780  83 af 8a e2                                      add sl, sl, #0x20c
0089b784  34 00 81 e2                                      add r0, r1, #0x34
0089b788  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0089b78c  02 20 d1 e7                                      ldrb r2, [r1, r2]
0089b790  03 20 ca e7                                      strb r2, [sl, r3]
0089b794  01 30 83 e2                                      add r3, r3, #1
0089b798  08 00 53 e3                                      cmp r3, #8
0089b79c  f9 ff ff 1a                                      bne #0x89b788
0089b7a0  02 3a a0 e3                                      mov r3, #0x2000
0089b7a4  0c 30 83 e2                                      add r3, r3, #0xc
0089b7a8  03 10 d5 e7                                      ldrb r1, [r5, r3]
0089b7ac  81 3d a0 e3                                      mov r3, #0x2040
0089b7b0  10 30 83 e2                                      add r3, r3, #0x10
0089b7b4  03 00 51 e3                                      cmp r1, #3
0089b7b8  82 0d a0 d3                                      movle r0, #0x2080
0089b7bc  04 00 80 d2                                      addle r0, r0, #4
0089b7c0  04 00 8d d5                                      strle r0, [sp, #4]
0089b7c4  f4 02 9f e5                                      ldr r0, [pc, #0x2f4]
0089b7c8  03 80 d5 e7                                      ldrb r8, [r5, r3]
0089b7cc  02 c7 8d e2                                      add ip, sp, #0x80000
0089b7d0  02 cc 8c e2                                      add ip, ip, #0x200
0089b7d4  82 3d 81 c2                                      addgt r3, r1, #0x2080
0089b7d8  00 20 a0 e3                                      mov r2, #0
0089b7dc  00 60 94 e7                                      ldr r6, [r4, r0]
0089b7e0  14 20 cc e5                                      strb r2, [ip, #0x14]
0089b7e4  04 10 a0 d3                                      movle r1, #4
0089b7e8  04 30 8d c5                                      strgt r3, [sp, #4]
0089b7ec  02 20 a0 e3                                      mov r2, #2
0089b7f0  03 00 58 e3                                      cmp r8, #3
0089b7f4  04 80 a0 d3                                      movle r8, #4
0089b7f8  00 24 c5 e5                                      strb r2, [r5, #0x400]
0089b7fc  81 3d a0 e3                                      mov r3, #0x2040
0089b800  02 2a a0 e3                                      mov r2, #0x2000
0089b804  08 c0 a0 d1                                      movle ip, r8
0089b808  ff c0 08 c2                                      andgt ip, r8, #0xff
0089b80c  0c 20 82 e2                                      add r2, r2, #0xc
0089b810  10 30 83 e2                                      add r3, r3, #0x10
0089b814  06 00 a0 e1                                      mov r0, r6
0089b818  02 10 c5 e7                                      strb r1, [r5, r2]
0089b81c  03 c0 c5 e7                                      strb ip, [r5, r3]
0089b820  8b c9 e9 eb                                      bl #0x30de54
0089b824  00 70 50 e2                                      subs r7, r0, #0
0089b828  8f 00 00 da                                      ble #0x89ba6c
0089b82c  90 02 9f e5                                      ldr r0, [pc, #0x290]
0089b830  06 10 a0 e1                                      mov r1, r6
0089b834  02 67 8d e2                                      add r6, sp, #0x80000
0089b838  00 30 a0 e3                                      mov r3, #0
0089b83c  43 6f 86 e2                                      add r6, r6, #0x10c
0089b840  d1 20 93 e1                                      ldrsb r2, [r3, r1]
0089b844  ff 00 52 e3                                      cmp r2, #0xff
0089b848  00 c0 94 97                                      ldrls ip, [r4, r0]
0089b84c  00 c0 9c 95                                      ldrls ip, [ip]
0089b850  82 20 8c 90                                      addls r2, ip, r2, lsl #1
0089b854  f2 20 d2 91                                      ldrshls r2, [r2, #2]
0089b858  03 20 c6 e7                                      strb r2, [r6, r3]
0089b85c  01 30 83 e2                                      add r3, r3, #1
0089b860  03 00 57 e1                                      cmp r7, r3
0089b864  f5 ff ff 1a                                      bne #0x89b840
0089b868  00 30 a0 e3                                      mov r3, #0
0089b86c  07 30 c6 e7                                      strb r3, [r6, r7]
0089b870  06 20 a0 e1                                      mov r2, r6
0089b874  06 00 a0 e1                                      mov r0, r6
0089b878  0a 10 a0 e1                                      mov r1, sl
0089b87c  00 30 8d e5                                      str r3, [sp]
0089b880  e6 fb ff eb                                      bl #0x89a820
0089b884  04 20 9d e5                                      ldr r2, [sp, #4]
0089b888  00 30 9d e5                                      ldr r3, [sp]
0089b88c  03 10 d6 e7                                      ldrb r1, [r6, r3]
0089b890  01 30 83 e2                                      add r3, r3, #1
0089b894  03 00 57 e1                                      cmp r7, r3
0089b898  02 10 c5 e7                                      strb r1, [r5, r2]
0089b89c  08 20 82 e0                                      add r2, r2, r8
0089b8a0  f9 ff ff 1a                                      bne #0x89b88c
0089b8a4  06 3a a0 e3                                      mov r3, #0x6000
0089b8a8  0c 30 83 e2                                      add r3, r3, #0xc
0089b8ac  03 20 d5 e7                                      ldrb r2, [r5, r3]
0089b8b0  06 3a a0 e3                                      mov r3, #0x6000
0089b8b4  50 30 83 e2                                      add r3, r3, #0x50
0089b8b8  03 30 d5 e7                                      ldrb r3, [r5, r3]
0089b8bc  0a 20 82 e2                                      add r2, r2, #0xa
0089b8c0  14 00 52 e3                                      cmp r2, #0x14
0089b8c4  ff e0 02 c2                                      andgt lr, r2, #0xff
0089b8c8  18 00 a0 d3                                      movle r0, #0x18
0089b8cc  00 e0 a0 d1                                      movle lr, r0
0089b8d0  0e 00 a0 c1                                      movgt r0, lr
0089b8d4  06 2a a0 e3                                      mov r2, #0x6000
0089b8d8  03 00 53 e3                                      cmp r3, #3
0089b8dc  ff 10 03 c2                                      andgt r1, r3, #0xff
0089b8e0  04 c0 a0 d3                                      movle ip, #4
0089b8e4  02 30 a0 e1                                      mov r3, r2
0089b8e8  0c 10 a0 d1                                      movle r1, ip
0089b8ec  01 c0 a0 c1                                      movgt ip, r1
0089b8f0  0c 20 82 e2                                      add r2, r2, #0xc
0089b8f4  50 30 83 e2                                      add r3, r3, #0x50
0089b8f8  00 00 50 e3                                      cmp r0, #0
0089b8fc  02 e0 c5 e7                                      strb lr, [r5, r2]
0089b900  03 10 c5 e7                                      strb r1, [r5, r3]
0089b904  09 00 00 0a                                      beq #0x89b930
0089b908  06 3a a0 e3                                      mov r3, #0x6000
0089b90c  80 30 83 e2                                      add r3, r3, #0x80
0089b910  00 20 a0 e3                                      mov r2, #0
0089b914  03 10 d5 e7                                      ldrb r1, [r5, r3]
0089b918  01 20 82 e2                                      add r2, r2, #1
0089b91c  00 00 52 e1                                      cmp r2, r0
0089b920  0f 10 01 e2                                      and r1, r1, #0xf
0089b924  03 10 c5 e7                                      strb r1, [r5, r3]
0089b928  0c 30 83 e0                                      add r3, r3, ip
0089b92c  f8 ff ff 1a                                      bne #0x89b914
0089b930  0e 3a a0 e3                                      mov r3, #0xe000
0089b934  0c 30 83 e2                                      add r3, r3, #0xc
0089b938  03 c0 d5 e7                                      ldrb ip, [r5, r3]
0089b93c  0e 3a a0 e3                                      mov r3, #0xe000
0089b940  50 30 83 e2                                      add r3, r3, #0x50
0089b944  03 80 d5 e7                                      ldrb r8, [r5, r3]
0089b948  78 31 9f e5                                      ldr r3, [pc, #0x178]
0089b94c  03 00 5c e3                                      cmp ip, #3
0089b950  e1 cc a0 d3                                      movle ip, #0xe100
0089b954  04 c0 8c d2                                      addle ip, ip, #4
0089b958  e1 0c 8c c2                                      addgt r0, ip, #0xe100
0089b95c  03 30 94 e7                                      ldr r3, [r4, r3]
0089b960  04 c0 8d d5                                      strle ip, [sp, #4]
0089b964  04 00 8d c5                                      strgt r0, [sp, #4]
0089b968  04 c0 a0 d3                                      movle ip, #4
0089b96c  0e 1a a0 e3                                      mov r1, #0xe000
0089b970  03 00 58 e3                                      cmp r8, #3
0089b974  04 80 a0 d3                                      movle r8, #4
0089b978  01 20 a0 e1                                      mov r2, r1
0089b97c  08 e0 a0 d1                                      movle lr, r8
0089b980  ff e0 08 c2                                      andgt lr, r8, #0xff
0089b984  0c 10 81 e2                                      add r1, r1, #0xc
0089b988  50 20 82 e2                                      add r2, r2, #0x50
0089b98c  03 00 a0 e1                                      mov r0, r3
0089b990  01 c0 c5 e7                                      strb ip, [r5, r1]
0089b994  02 e0 c5 e7                                      strb lr, [r5, r2]
0089b998  00 30 8d e5                                      str r3, [sp]
0089b99c  2c c9 e9 eb                                      bl #0x30de54
0089b9a0  00 70 50 e2                                      subs r7, r0, #0
0089b9a4  00 30 9d e5                                      ldr r3, [sp]
0089b9a8  38 00 00 da                                      ble #0x89ba90
0089b9ac  02 67 8d e2                                      add r6, sp, #0x80000
0089b9b0  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
0089b9b4  10 60 86 e2                                      add r6, r6, #0x10
0089b9b8  04 60 46 e2                                      sub r6, r6, #4
0089b9bc  00 20 a0 e3                                      mov r2, #0
0089b9c0  d3 10 92 e1                                      ldrsb r1, [r2, r3]
0089b9c4  ff 00 51 e3                                      cmp r1, #0xff
0089b9c8  00 c0 94 97                                      ldrls ip, [r4, r0]
0089b9cc  00 c0 9c 95                                      ldrls ip, [ip]
0089b9d0  81 10 8c 90                                      addls r1, ip, r1, lsl #1
0089b9d4  f2 10 d1 91                                      ldrshls r1, [r1, #2]
0089b9d8  02 10 c6 e7                                      strb r1, [r6, r2]
0089b9dc  01 20 82 e2                                      add r2, r2, #1
0089b9e0  02 00 57 e1                                      cmp r7, r2
0089b9e4  f5 ff ff 1a                                      bne #0x89b9c0
0089b9e8  0a 10 a0 e1                                      mov r1, sl
0089b9ec  00 a0 a0 e3                                      mov sl, #0
0089b9f0  06 20 a0 e1                                      mov r2, r6
0089b9f4  06 00 a0 e1                                      mov r0, r6
0089b9f8  07 a0 c6 e7                                      strb sl, [r6, r7]
0089b9fc  87 fb ff eb                                      bl #0x89a820
0089ba00  06 00 a0 e1                                      mov r0, r6
0089ba04  12 c9 e9 eb                                      bl #0x30de54
0089ba08  00 00 57 e1                                      cmp r7, r0
0089ba0c  46 ff ff 1a                                      bne #0x89b72c
0089ba10  0a 00 57 e1                                      cmp r7, sl
0089ba14  04 30 9d c5                                      ldrgt r3, [sp, #4]
0089ba18  05 00 00 da                                      ble #0x89ba34
0089ba1c  0a 20 d6 e7                                      ldrb r2, [r6, sl]
0089ba20  01 a0 8a e2                                      add sl, sl, #1
0089ba24  0a 00 57 e1                                      cmp r7, sl
0089ba28  03 20 c5 e7                                      strb r2, [r5, r3]
0089ba2c  08 30 83 e0                                      add r3, r3, r8
0089ba30  f9 ff ff ca                                      bgt #0x89ba1c
0089ba34  32 3a a0 e3                                      mov r3, #0x32000
0089ba38  19 09 a0 e3                                      mov r0, #0x64000
0089ba3c  02 3c 83 e2                                      add r3, r3, #0x200
0089ba40  02 0c 80 e2                                      add r0, r0, #0x200
0089ba44  00 20 a0 e3                                      mov r2, #0
0089ba48  d3 10 95 e1                                      ldrsb r1, [r5, r3]
0089ba4c  01 30 83 e2                                      add r3, r3, #1
0089ba50  00 00 53 e1                                      cmp r3, r0
0089ba54  01 20 82 e0                                      add r2, r2, r1
0089ba58  fa ff ff 1a                                      bne #0x89ba48
0089ba5c  19 39 a0 e3                                      mov r3, #0x64000
0089ba60  0a 3d 83 e2                                      add r3, r3, #0x280
0089ba64  03 20 c5 e7                                      strb r2, [r5, r3]
0089ba68  2f ff ff ea                                      b #0x89b72c
0089ba6c  02 37 8d e2                                      add r3, sp, #0x80000
0089ba70  43 3f 83 e2                                      add r3, r3, #0x10c
0089ba74  00 c0 a0 e3                                      mov ip, #0
0089ba78  03 00 a0 e1                                      mov r0, r3
0089ba7c  0a 10 a0 e1                                      mov r1, sl
0089ba80  03 20 a0 e1                                      mov r2, r3
0089ba84  07 c0 c3 e7                                      strb ip, [r3, r7]
0089ba88  64 fb ff eb                                      bl #0x89a820
0089ba8c  84 ff ff ea                                      b #0x89b8a4
0089ba90  02 67 8d e2                                      add r6, sp, #0x80000
0089ba94  10 60 86 e2                                      add r6, r6, #0x10
0089ba98  04 60 46 e2                                      sub r6, r6, #4
0089ba9c  d1 ff ff ea                                      b #0x89b9e8
0089baa0  1a ca e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089baa4  24 94 0f 00 ac 40 00 00 f0 48 00 00 58 93 07 00  .byte 0x24, 0x94, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x48, 0x00, 0x00, 0x58, 0x93, 0x07, 0x00
0089bab4  e0 38 04 00 81 80 80 80 3c 91 07 00 a8 33 00 00  .byte 0xe0, 0x38, 0x04, 0x00, 0x81, 0x80, 0x80, 0x80, 0x3c, 0x91, 0x07, 0x00, 0xa8, 0x33, 0x00, 0x00
0089bac4  28 06 00 00 fc 19 00 00                          .byte 0x28, 0x06, 0x00, 0x00, 0xfc, 0x19, 0x00, 0x00

; FUNCTION 0x0089bacc, declared_size=364, range_size=364, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck16validateResponseEPc
; demangled: ALicenseCheck::validateResponse(char*)
; decoder-mode: arm
0089bacc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0089bad0  50 41 9f e5                                      ldr r4, [pc, #0x150]
0089bad4  50 61 9f e5                                      ldr r6, [pc, #0x150]
0089bad8  30 d0 4d e2                                      sub sp, sp, #0x30
0089badc  04 40 8f e0                                      add r4, pc, r4
0089bae0  06 20 94 e7                                      ldr r2, [r4, r6]
0089bae4  00 80 a0 e3                                      mov r8, #0
0089bae8  10 30 8d e2                                      add r3, sp, #0x10
0089baec  00 20 92 e5                                      ldr r2, [r2]
0089baf0  04 50 8d e2                                      add r5, sp, #4
0089baf4  0c a0 8d e2                                      add sl, sp, #0xc
0089baf8  2c 20 8d e5                                      str r2, [sp, #0x2c]
0089bafc  04 80 83 e4                                      str r8, [r3], #4
0089bb00  04 80 83 e4                                      str r8, [r3], #4
0089bb04  04 80 83 e4                                      str r8, [r3], #4
0089bb08  04 80 83 e4                                      str r8, [r3], #4
0089bb0c  04 80 83 e4                                      str r8, [r3], #4
0089bb10  04 80 83 e4                                      str r8, [r3], #4
0089bb14  00 80 83 e5                                      str r8, [r3]
0089bb18  00 70 a0 e1                                      mov r7, r0
0089bb1c  08 10 a0 e1                                      mov r1, r8
0089bb20  05 00 a0 e1                                      mov r0, r5
0089bb24  06 20 a0 e3                                      mov r2, #6
0089bb28  04 80 8d e5                                      str r8, [sp, #4]
0089bb2c  b8 80 cd e1                                      strh r8, [sp, #8]
0089bb30  0c 80 8d e5                                      str r8, [sp, #0xc]
0089bb34  f1 04 00 eb                                      bl #0x89cf00
0089bb38  0a 00 a0 e1                                      mov r0, sl
0089bb3c  08 10 a0 e1                                      mov r1, r8
0089bb40  20 20 a0 e3                                      mov r2, #0x20
0089bb44  ed 04 00 eb                                      bl #0x89cf00
0089bb48  0a 10 a0 e1                                      mov r1, sl
0089bb4c  01 20 a0 e3                                      mov r2, #1
0089bb50  7c 30 a0 e3                                      mov r3, #0x7c
0089bb54  07 00 a0 e1                                      mov r0, r7
0089bb58  4b 03 00 eb                                      bl #0x89c88c
0089bb5c  01 20 40 e2                                      sub r2, r0, #1
0089bb60  01 30 42 e2                                      sub r3, r2, #1
0089bb64  05 00 53 e3                                      cmp r3, #5
0089bb68  00 a0 a0 e1                                      mov sl, r0
0089bb6c  0f 00 00 8a                                      bhi #0x89bbb0
0089bb70  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
0089bb74  07 10 a0 e1                                      mov r1, r7
0089bb78  05 00 a0 e1                                      mov r0, r5
0089bb7c  da 04 00 eb                                      bl #0x89ceec
0089bb80  08 80 94 e7                                      ldr r8, [r4, r8]
0089bb84  05 00 a0 e1                                      mov r0, r5
0089bb88  ff 10 88 e2                                      add r1, r8, #0xff
0089bb8c  d5 04 00 eb                                      bl #0x89cee8
0089bb90  00 90 50 e2                                      subs sb, r0, #0
0089bb94  1b 00 00 0a                                      beq #0x89bc08
0089bb98  7f 1f 88 e2                                      add r1, r8, #0x1fc
0089bb9c  05 00 a0 e1                                      mov r0, r5
0089bba0  02 10 81 e2                                      add r1, r1, #2
0089bba4  cf 04 00 eb                                      bl #0x89cee8
0089bba8  00 50 50 e2                                      subs r5, r0, #0
0089bbac  08 00 00 0a                                      beq #0x89bbd4
0089bbb0  00 00 a0 e3                                      mov r0, #0
0089bbb4  a8 fe ff eb                                      bl #0x89b65c
0089bbb8  06 30 94 e7                                      ldr r3, [r4, r6]
0089bbbc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0089bbc0  00 30 93 e5                                      ldr r3, [r3]
0089bbc4  03 00 52 e1                                      cmp r2, r3
0089bbc8  11 00 00 1a                                      bne #0x89bc14
0089bbcc  30 d0 8d e2                                      add sp, sp, #0x30
0089bbd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0089bbd4  0a 00 87 e0                                      add r0, r7, sl
0089bbd8  bb 04 00 eb                                      bl #0x89cecc
0089bbdc  50 20 9f e5                                      ldr r2, [pc, #0x50]
0089bbe0  0d 3a a0 e3                                      mov r3, #0xd000
0089bbe4  a4 30 83 e2                                      add r3, r3, #0xa4
0089bbe8  02 20 94 e7                                      ldr r2, [r4, r2]
0089bbec  03 30 20 e0                                      eor r3, r0, r3
0089bbf0  00 20 92 e5                                      ldr r2, [r2]
0089bbf4  02 00 53 e1                                      cmp r3, r2
0089bbf8  06 00 00 1a                                      bne #0x89bc18
0089bbfc  01 00 a0 e3                                      mov r0, #1
0089bc00  95 fe ff eb                                      bl #0x89b65c
0089bc04  eb ff ff ea                                      b #0x89bbb8
0089bc08  93 fe ff eb                                      bl #0x89b65c
0089bc0c  09 00 a0 e1                                      mov r0, sb
0089bc10  8c c8 e9 eb                                      bl #0x30de48
0089bc14  bd c9 e9 eb                                      bl #0x30e310
0089bc18  05 00 a0 e1                                      mov r0, r5
0089bc1c  8e fe ff eb                                      bl #0x89b65c
0089bc20  05 00 a0 e1                                      mov r0, r5
0089bc24  87 c8 e9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0089bc28  b4 8f 0f 00 ac 40 00 00 e0 13 00 00 34 1c 00 00  .byte 0xb4, 0x8f, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x13, 0x00, 0x00, 0x34, 0x1c, 0x00, 0x00

; FUNCTION 0x0089bc38, declared_size=392, range_size=392, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck16sendRequestByGetEv
; demangled: ALicenseCheck::sendRequestByGet()
; decoder-mode: arm
0089bc38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0089bc3c  54 41 9f e5                                      ldr r4, [pc, #0x154]
0089bc40  54 61 9f e5                                      ldr r6, [pc, #0x154]
0089bc44  54 51 9f e5                                      ldr r5, [pc, #0x154]
0089bc48  04 40 8f e0                                      add r4, pc, r4
0089bc4c  06 20 94 e7                                      ldr r2, [r4, r6]
0089bc50  05 30 94 e7                                      ldr r3, [r4, r5]
0089bc54  11 dc 4d e2                                      sub sp, sp, #0x1100
0089bc58  00 20 92 e5                                      ldr r2, [r2]
0089bc5c  00 30 93 e5                                      ldr r3, [r3]
0089bc60  10 d0 4d e2                                      sub sp, sp, #0x10
0089bc64  01 1a 8d e2                                      add r1, sp, #0x1000
0089bc68  00 00 52 e3                                      cmp r2, #0
0089bc6c  0c 31 81 e5                                      str r3, [r1, #0x10c]
0089bc70  45 00 00 0a                                      beq #0x89bd8c
0089bc74  28 31 9f e5                                      ldr r3, [pc, #0x128]
0089bc78  28 01 9f e5                                      ldr r0, [pc, #0x128]
0089bc7c  01 7a 8d e2                                      add r7, sp, #0x1000
0089bc80  03 10 94 e7                                      ldr r1, [r4, r3]
0089bc84  20 31 9f e5                                      ldr r3, [pc, #0x120]
0089bc88  00 e0 94 e7                                      ldr lr, [r4, r0]
0089bc8c  00 c0 91 e5                                      ldr ip, [r1]
0089bc90  03 20 94 e7                                      ldr r2, [r4, r3]
0089bc94  14 11 9f e5                                      ldr r1, [pc, #0x114]
0089bc98  14 31 9f e5                                      ldr r3, [pc, #0x114]
0089bc9c  0c 70 87 e2                                      add r7, r7, #0xc
0089bca0  01 10 8f e0                                      add r1, pc, r1
0089bca4  03 30 94 e7                                      ldr r3, [r4, r3]
0089bca8  07 00 a0 e1                                      mov r0, r7
0089bcac  00 e0 8d e5                                      str lr, [sp]
0089bcb0  04 c0 8d e5                                      str ip, [sp, #4]
0089bcb4  8a cb e9 eb                                      bl #0x30eae4
0089bcb8  07 00 a0 e1                                      mov r0, r7
0089bcbc  28 05 00 eb                                      bl #0x89d164
0089bcc0  10 70 8d e2                                      add r7, sp, #0x10
0089bcc4  04 70 47 e2                                      sub r7, r7, #4
0089bcc8  00 80 a0 e1                                      mov r8, r0
0089bccc  00 10 a0 e3                                      mov r1, #0
0089bcd0  07 00 a0 e1                                      mov r0, r7
0089bcd4  01 2a a0 e3                                      mov r2, #0x1000
0089bcd8  88 04 00 eb                                      bl #0x89cf00
0089bcdc  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0089bce0  07 00 a0 e1                                      mov r0, r7
0089bce4  08 20 a0 e1                                      mov r2, r8
0089bce8  01 10 8f e0                                      add r1, pc, r1
0089bcec  7c cb e9 eb                                      bl #0x30eae4
0089bcf0  00 00 58 e3                                      cmp r8, #0
0089bcf4  01 00 00 0a                                      beq #0x89bd00
0089bcf8  08 00 a0 e1                                      mov r0, r8
0089bcfc  6b c9 e9 eb                                      bl #0x30e2b0
0089bd00  06 60 94 e7                                      ldr r6, [r4, r6]
0089bd04  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0089bd08  07 20 a0 e1                                      mov r2, r7
0089bd0c  00 00 96 e5                                      ldr r0, [r6]
0089bd10  03 10 94 e7                                      ldr r1, [r4, r3]
0089bd14  63 06 00 eb                                      bl #0x89d6a8
0089bd18  00 00 96 e5                                      ldr r0, [r6]
0089bd1c  a7 05 00 eb                                      bl #0x89d3c0
0089bd20  00 00 96 e5                                      ldr r0, [r6]
0089bd24  ac 05 00 eb                                      bl #0x89d3dc
0089bd28  00 00 50 e3                                      cmp r0, #0
0089bd2c  f9 ff ff 1a                                      bne #0x89bd18
0089bd30  00 00 96 e5                                      ldr r0, [r6]
0089bd34  af 05 00 eb                                      bl #0x89d3f8
0089bd38  00 00 50 e3                                      cmp r0, #0
0089bd3c  08 00 00 0a                                      beq #0x89bd64
0089bd40  05 30 94 e7                                      ldr r3, [r4, r5]
0089bd44  01 1a 8d e2                                      add r1, sp, #0x1000
0089bd48  0c 21 91 e5                                      ldr r2, [r1, #0x10c]
0089bd4c  00 30 93 e5                                      ldr r3, [r3]
0089bd50  03 00 52 e1                                      cmp r2, r3
0089bd54  0e 00 00 1a                                      bne #0x89bd94
0089bd58  11 de 8d e2                                      add sp, sp, #0x110
0089bd5c  01 da 8d e2                                      add sp, sp, #0x1000
0089bd60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0089bd64  00 00 96 e5                                      ldr r0, [r6]
0089bd68  a9 05 00 eb                                      bl #0x89d414
0089bd6c  03 05 00 eb                                      bl #0x89d180
0089bd70  00 60 a0 e1                                      mov r6, r0
0089bd74  54 ff ff eb                                      bl #0x89bacc
0089bd78  00 00 56 e3                                      cmp r6, #0
0089bd7c  ef ff ff 0a                                      beq #0x89bd40
0089bd80  06 00 a0 e1                                      mov r0, r6
0089bd84  49 c9 e9 eb                                      bl #0x30e2b0
0089bd88  ec ff ff ea                                      b #0x89bd40
0089bd8c  f6 fc ff eb                                      bl #0x89b16c
0089bd90  b7 ff ff ea                                      b #0x89bc74
0089bd94  5d c9 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089bd98  48 8e 0f 00 40 36 00 00 ac 40 00 00 34 1c 00 00  .byte 0x48, 0x8e, 0x0f, 0x00, 0x40, 0x36, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x1c, 0x00, 0x00
0089bda8  fc 19 00 00 a8 33 00 00 60 8d 07 00 fc 35 00 00  .byte 0xfc, 0x19, 0x00, 0x00, 0xa8, 0x33, 0x00, 0x00, 0x60, 0x8d, 0x07, 0x00, 0xfc, 0x35, 0x00, 0x00
0089bdb8  50 0e 07 00 fc 15 00 00                          .byte 0x50, 0x0e, 0x07, 0x00, 0xfc, 0x15, 0x00, 0x00

; FUNCTION 0x0089bdc0, declared_size=268, range_size=268, mode=arm
; class-group: ALicenseCheck
; alias: _ZN13ALicenseCheck14ValidateServerEb
; demangled: ALicenseCheck::ValidateServer(bool)
; decoder-mode: arm
0089bdc0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0089bdc4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0089bdc8  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
0089bdcc  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
0089bdd0  04 40 8f e0                                      add r4, pc, r4
0089bdd4  07 30 94 e7                                      ldr r3, [r4, r7]
0089bdd8  02 50 94 e7                                      ldr r5, [r4, r2]
0089bddc  85 df 4d e2                                      sub sp, sp, #0x214
0089bde0  00 30 93 e5                                      ldr r3, [r3]
0089bde4  ff 10 a0 e3                                      mov r1, #0xff
0089bde8  00 a0 a0 e1                                      mov sl, r0
0089bdec  05 00 a0 e1                                      mov r0, r5
0089bdf0  0c 32 8d e5                                      str r3, [sp, #0x20c]
0089bdf4  c0 fb ff eb                                      bl #0x89acfc
0089bdf8  76 fa ff eb                                      bl #0x89a7d8
0089bdfc  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0089be00  03 20 94 e7                                      ldr r2, [r4, r3]
0089be04  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0089be08  00 00 82 e5                                      str r0, [r2]
0089be0c  03 80 94 e7                                      ldr r8, [r4, r3]
0089be10  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0089be14  00 00 98 e5                                      ldr r0, [r8]
0089be18  03 60 94 e7                                      ldr r6, [r4, r3]
0089be1c  98 30 9f e5                                      ldr r3, [pc, #0x98]
0089be20  06 20 a0 e1                                      mov r2, r6
0089be24  03 30 94 e7                                      ldr r3, [r4, r3]
0089be28  00 10 93 e5                                      ldr r1, [r3]
0089be2c  ff 30 a0 e3                                      mov r3, #0xff
0089be30  db fa ff eb                                      bl #0x89a9a4
0089be34  84 30 9f e5                                      ldr r3, [pc, #0x84]
0089be38  06 20 a0 e1                                      mov r2, r6
0089be3c  0c 00 8d e2                                      add r0, sp, #0xc
0089be40  03 10 94 e7                                      ldr r1, [r4, r3]
0089be44  78 30 9f e5                                      ldr r3, [pc, #0x78]
0089be48  00 50 8d e5                                      str r5, [sp]
0089be4c  03 30 94 e7                                      ldr r3, [r4, r3]
0089be50  23 cb e9 eb                                      bl #0x30eae4
0089be54  77 ff ff eb                                      bl #0x89bc38
0089be58  ff fc ff eb                                      bl #0x89b25c
0089be5c  00 00 50 e3                                      cmp r0, #0
0089be60  0d 00 00 0a                                      beq #0x89be9c
0089be64  00 00 5a e3                                      cmp sl, #0
0089be68  04 00 00 0a                                      beq #0x89be80
0089be6c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0089be70  00 00 98 e5                                      ldr r0, [r8]
0089be74  03 30 94 e7                                      ldr r3, [r4, r3]
0089be78  00 10 93 e5                                      ldr r1, [r3]
0089be7c  14 fc ff eb                                      bl #0x89aed4
0089be80  07 30 94 e7                                      ldr r3, [r4, r7]
0089be84  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0089be88  00 30 93 e5                                      ldr r3, [r3]
0089be8c  03 00 52 e1                                      cmp r2, r3
0089be90  02 00 00 1a                                      bne #0x89bea0
0089be94  85 df 8d e2                                      add sp, sp, #0x214
0089be98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0089be9c  e9 c7 e9 eb                                      bl #0x30de48
0089bea0  1a c9 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089bea4  c0 8c 0f 00 ac 40 00 00 fc 19 00 00 34 1c 00 00  .byte 0xc0, 0x8c, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x19, 0x00, 0x00, 0x34, 0x1c, 0x00, 0x00
0089beb4  b8 1d 00 00 a8 33 00 00 f0 43 00 00 fc 15 00 00  .byte 0xb8, 0x1d, 0x00, 0x00, 0xa8, 0x33, 0x00, 0x00, 0xf0, 0x43, 0x00, 0x00, 0xfc, 0x15, 0x00, 0x00
0089bec4  fc 35 00 00 c8 24 00 00                          .byte 0xfc, 0x35, 0x00, 0x00, 0xc8, 0x24, 0x00, 0x00
