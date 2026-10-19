; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052eaa8, declared_size=32, range_size=32, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice15CallJNIFuncBoolEP7_jclassP10_jmethodID
; demangled: ADevice::CallJNIFuncBool(_jclass*, _jmethodID*)
; decoder-mode: arm
0052eaa8  70 40 2d e9                                      push {r4, r5, r6, lr}
0052eaac  01 40 a0 e1                                      mov r4, r1
0052eab0  00 50 a0 e1                                      mov r5, r0
0052eab4  99 14 00 eb                                      bl #0x533d20
0052eab8  05 10 a0 e1                                      mov r1, r5
0052eabc  04 20 a0 e1                                      mov r2, r4
0052eac0  eb ff ff eb                                      bl #0x52ea74
0052eac4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0052eac8, declared_size=48, range_size=48, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice12isWifiEnableEv
; demangled: ADevice::isWifiEnable()
; decoder-mode: arm
0052eac8  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0052eacc  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0052ead0  02 20 8f e0                                      add r2, pc, r2
0052ead4  03 10 92 e7                                      ldr r1, [r2, r3]
0052ead8  14 30 9f e5                                      ldr r3, [pc, #0x14]
0052eadc  00 00 91 e5                                      ldr r0, [r1]
0052eae0  03 30 92 e7                                      ldr r3, [r2, r3]
0052eae4  00 10 93 e5                                      ldr r1, [r3]
0052eae8  ee ff ff ea                                      b #0x52eaa8
; mapping-symbol data/literal pool
0052eaec  c0 5f 46 00 e8 15 00 00 c0 0f 00 00              .byte 0xc0, 0x5f, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xc0, 0x0f, 0x00, 0x00

; FUNCTION 0x0052eb2c, declared_size=40, range_size=40, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice18CallJNIFuncSendIntEP7_jclassP10_jmethodIDi
; demangled: ADevice::CallJNIFuncSendInt(_jclass*, _jmethodID*, int)
; decoder-mode: arm
0052eb2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0052eb30  01 50 a0 e1                                      mov r5, r1
0052eb34  02 40 a0 e1                                      mov r4, r2
0052eb38  00 60 a0 e1                                      mov r6, r0
0052eb3c  77 14 00 eb                                      bl #0x533d20
0052eb40  06 10 a0 e1                                      mov r1, r6
0052eb44  05 20 a0 e1                                      mov r2, r5
0052eb48  04 30 a0 e1                                      mov r3, r4
0052eb4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0052eb50  e8 ff ff ea                                      b #0x52eaf8

; FUNCTION 0x0052eb54, declared_size=52, range_size=52, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice13setUniqueCodeEi
; demangled: ADevice::setUniqueCode(int)
; decoder-mode: arm
0052eb54  20 30 9f e5                                      ldr r3, [pc, #0x20]
0052eb58  20 20 9f e5                                      ldr r2, [pc, #0x20]
0052eb5c  03 30 8f e0                                      add r3, pc, r3
0052eb60  02 c0 93 e7                                      ldr ip, [r3, r2]
0052eb64  18 20 9f e5                                      ldr r2, [pc, #0x18]
0052eb68  02 10 93 e7                                      ldr r1, [r3, r2]
0052eb6c  00 20 a0 e1                                      mov r2, r0
0052eb70  00 00 9c e5                                      ldr r0, [ip]
0052eb74  00 10 91 e5                                      ldr r1, [r1]
0052eb78  eb ff ff ea                                      b #0x52eb2c
; mapping-symbol data/literal pool
0052eb7c  34 5f 46 00 e8 15 00 00 d4 39 00 00              .byte 0x34, 0x5f, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xd4, 0x39, 0x00, 0x00

; FUNCTION 0x0052eb88, declared_size=88, range_size=88, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice19CallJNIFuncSendCharEP7_jclassP10_jmethodIDPc
; demangled: ADevice::CallJNIFuncSendChar(_jclass*, _jmethodID*, char*)
; decoder-mode: arm
0052eb88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052eb8c  02 50 a0 e1                                      mov r5, r2
0052eb90  01 60 a0 e1                                      mov r6, r1
0052eb94  00 70 a0 e1                                      mov r7, r0
0052eb98  60 14 00 eb                                      bl #0x533d20
0052eb9c  05 10 a0 e1                                      mov r1, r5
0052eba0  00 30 90 e5                                      ldr r3, [r0]
0052eba4  00 40 a0 e1                                      mov r4, r0
0052eba8  0f e0 a0 e1                                      mov lr, pc
0052ebac  9c f2 93 e5                                      ldr pc, [r3, #0x29c]
0052ebb0  00 50 a0 e1                                      mov r5, r0
0052ebb4  07 10 a0 e1                                      mov r1, r7
0052ebb8  05 30 a0 e1                                      mov r3, r5
0052ebbc  04 00 a0 e1                                      mov r0, r4
0052ebc0  06 20 a0 e1                                      mov r2, r6
0052ebc4  cb ff ff eb                                      bl #0x52eaf8
0052ebc8  04 00 a0 e1                                      mov r0, r4
0052ebcc  05 10 a0 e1                                      mov r1, r5
0052ebd0  00 30 94 e5                                      ldr r3, [r4]
0052ebd4  0f e0 a0 e1                                      mov lr, pc
0052ebd8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0052ebdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0052ebe0, declared_size=196, range_size=196, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice15CallJNIFuncCharEP7_jclassP10_jmethodIDPciS4_
; demangled: ADevice::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int, char*)
; decoder-mode: arm
0052ebe0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052ebe4  08 d0 4d e2                                      sub sp, sp, #8
0052ebe8  03 70 a0 e1                                      mov r7, r3
0052ebec  02 60 a0 e1                                      mov r6, r2
0052ebf0  01 50 a0 e1                                      mov r5, r1
0052ebf4  00 80 a0 e1                                      mov r8, r0
0052ebf8  48 14 00 eb                                      bl #0x533d20
0052ebfc  07 20 a0 e1                                      mov r2, r7
0052ec00  00 40 a0 e1                                      mov r4, r0
0052ec04  00 10 a0 e3                                      mov r1, #0
0052ec08  06 00 a0 e1                                      mov r0, r6
0052ec0c  13 7e f7 eb                                      bl #0x30e460
0052ec10  20 10 9d e5                                      ldr r1, [sp, #0x20]
0052ec14  00 30 94 e5                                      ldr r3, [r4]
0052ec18  04 00 a0 e1                                      mov r0, r4
0052ec1c  0f e0 a0 e1                                      mov lr, pc
0052ec20  9c f2 93 e5                                      ldr pc, [r3, #0x29c]
0052ec24  00 70 a0 e1                                      mov r7, r0
0052ec28  05 20 a0 e1                                      mov r2, r5
0052ec2c  08 10 a0 e1                                      mov r1, r8
0052ec30  07 30 a0 e1                                      mov r3, r7
0052ec34  04 00 a0 e1                                      mov r0, r4
0052ec38  ae ff ff eb                                      bl #0x52eaf8
0052ec3c  00 30 94 e5                                      ldr r3, [r4]
0052ec40  00 50 a0 e1                                      mov r5, r0
0052ec44  00 10 a0 e1                                      mov r1, r0
0052ec48  04 00 a0 e1                                      mov r0, r4
0052ec4c  0f e0 a0 e1                                      mov lr, pc
0052ec50  ac f2 93 e5                                      ldr pc, [r3, #0x2ac]
0052ec54  00 c0 94 e5                                      ldr ip, [r4]
0052ec58  00 30 a0 e1                                      mov r3, r0
0052ec5c  05 10 a0 e1                                      mov r1, r5
0052ec60  04 00 a0 e1                                      mov r0, r4
0052ec64  00 20 a0 e3                                      mov r2, #0
0052ec68  00 60 8d e5                                      str r6, [sp]
0052ec6c  0f e0 a0 e1                                      mov lr, pc
0052ec70  20 f3 9c e5                                      ldr pc, [ip, #0x320]
0052ec74  05 10 a0 e1                                      mov r1, r5
0052ec78  04 00 a0 e1                                      mov r0, r4
0052ec7c  00 30 94 e5                                      ldr r3, [r4]
0052ec80  0f e0 a0 e1                                      mov lr, pc
0052ec84  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0052ec88  04 00 a0 e1                                      mov r0, r4
0052ec8c  07 10 a0 e1                                      mov r1, r7
0052ec90  00 30 94 e5                                      ldr r3, [r4]
0052ec94  0f e0 a0 e1                                      mov lr, pc
0052ec98  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0052ec9c  08 d0 8d e2                                      add sp, sp, #8
0052eca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0052eca4, declared_size=148, range_size=148, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice15CallJNIFuncCharEP7_jclassP10_jmethodIDPci
; demangled: ADevice::CallJNIFuncChar(_jclass*, _jmethodID*, char*, int)
; decoder-mode: arm
0052eca4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052eca8  08 d0 4d e2                                      sub sp, sp, #8
0052ecac  03 80 a0 e1                                      mov r8, r3
0052ecb0  02 60 a0 e1                                      mov r6, r2
0052ecb4  01 50 a0 e1                                      mov r5, r1
0052ecb8  00 70 a0 e1                                      mov r7, r0
0052ecbc  17 14 00 eb                                      bl #0x533d20
0052ecc0  08 20 a0 e1                                      mov r2, r8
0052ecc4  00 40 a0 e1                                      mov r4, r0
0052ecc8  00 10 a0 e3                                      mov r1, #0
0052eccc  06 00 a0 e1                                      mov r0, r6
0052ecd0  e2 7d f7 eb                                      bl #0x30e460
0052ecd4  05 20 a0 e1                                      mov r2, r5
0052ecd8  07 10 a0 e1                                      mov r1, r7
0052ecdc  04 00 a0 e1                                      mov r0, r4
0052ece0  84 ff ff eb                                      bl #0x52eaf8
0052ece4  00 30 94 e5                                      ldr r3, [r4]
0052ece8  00 50 a0 e1                                      mov r5, r0
0052ecec  00 10 a0 e1                                      mov r1, r0
0052ecf0  04 00 a0 e1                                      mov r0, r4
0052ecf4  0f e0 a0 e1                                      mov lr, pc
0052ecf8  ac f2 93 e5                                      ldr pc, [r3, #0x2ac]
0052ecfc  00 c0 94 e5                                      ldr ip, [r4]
0052ed00  00 30 a0 e1                                      mov r3, r0
0052ed04  05 10 a0 e1                                      mov r1, r5
0052ed08  04 00 a0 e1                                      mov r0, r4
0052ed0c  00 60 8d e5                                      str r6, [sp]
0052ed10  00 20 a0 e3                                      mov r2, #0
0052ed14  0f e0 a0 e1                                      mov lr, pc
0052ed18  20 f3 9c e5                                      ldr pc, [ip, #0x320]
0052ed1c  04 00 a0 e1                                      mov r0, r4
0052ed20  05 10 a0 e1                                      mov r1, r5
0052ed24  00 30 94 e5                                      ldr r3, [r4]
0052ed28  0f e0 a0 e1                                      mov lr, pc
0052ed2c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0052ed30  08 d0 8d e2                                      add sp, sp, #8
0052ed34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0052ed38, declared_size=56, range_size=56, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice12getUserAgentEPc
; demangled: ADevice::getUserAgent(char*)
; decoder-mode: arm
0052ed38  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0052ed3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0052ed40  00 20 a0 e1                                      mov r2, r0
0052ed44  0c c0 8f e0                                      add ip, pc, ip
0052ed48  03 10 9c e7                                      ldr r1, [ip, r3]
0052ed4c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0052ed50  00 00 91 e5                                      ldr r0, [r1]
0052ed54  03 30 9c e7                                      ldr r3, [ip, r3]
0052ed58  00 10 93 e5                                      ldr r1, [r3]
0052ed5c  ff 30 a0 e3                                      mov r3, #0xff
0052ed60  cf ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052ed64  4c 5d 46 00 e8 15 00 00 e8 29 00 00              .byte 0x4c, 0x5d, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xe8, 0x29, 0x00, 0x00

; FUNCTION 0x0052ed70, declared_size=64, range_size=64, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice11getHostNameEPci
; demangled: ADevice::getHostName(char*, int)
; decoder-mode: arm
0052ed70  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0052ed74  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0052ed78  30 00 2d e9                                      push {r4, r5}
0052ed7c  0c c0 8f e0                                      add ip, pc, ip
0052ed80  03 50 9c e7                                      ldr r5, [ip, r3]
0052ed84  20 30 9f e5                                      ldr r3, [pc, #0x20]
0052ed88  00 20 a0 e1                                      mov r2, r0
0052ed8c  00 00 95 e5                                      ldr r0, [r5]
0052ed90  03 40 9c e7                                      ldr r4, [ip, r3]
0052ed94  01 30 a0 e1                                      mov r3, r1
0052ed98  00 10 94 e5                                      ldr r1, [r4]
0052ed9c  30 00 bd e8                                      pop {r4, r5}
0052eda0  bf ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052eda4  14 5d 46 00 e8 15 00 00 e8 26 00 00              .byte 0x14, 0x5d, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xe8, 0x26, 0x00, 0x00

; FUNCTION 0x0052edb0, declared_size=8, range_size=8, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice11getHostNameEPc
; demangled: ADevice::getHostName(char*)
; decoder-mode: arm
0052edb0  ff 10 a0 e3                                      mov r1, #0xff
0052edb4  ed ff ff ea                                      b #0x52ed70

; FUNCTION 0x0052edb8, declared_size=64, range_size=64, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice14getGameVersionEPci
; demangled: ADevice::getGameVersion(char*, int)
; decoder-mode: arm
0052edb8  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0052edbc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0052edc0  30 00 2d e9                                      push {r4, r5}
0052edc4  0c c0 8f e0                                      add ip, pc, ip
0052edc8  03 50 9c e7                                      ldr r5, [ip, r3]
0052edcc  20 30 9f e5                                      ldr r3, [pc, #0x20]
0052edd0  00 20 a0 e1                                      mov r2, r0
0052edd4  00 00 95 e5                                      ldr r0, [r5]
0052edd8  03 40 9c e7                                      ldr r4, [ip, r3]
0052eddc  01 30 a0 e1                                      mov r3, r1
0052ede0  00 10 94 e5                                      ldr r1, [r4]
0052ede4  30 00 bd e8                                      pop {r4, r5}
0052ede8  ad ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052edec  cc 5c 46 00 e8 15 00 00 3c 31 00 00              .byte 0xcc, 0x5c, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0x3c, 0x31, 0x00, 0x00

; FUNCTION 0x0052edf8, declared_size=8, range_size=8, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice14getGameVersionEPc
; demangled: ADevice::getGameVersion(char*)
; decoder-mode: arm
0052edf8  07 10 a0 e3                                      mov r1, #7
0052edfc  ed ff ff ea                                      b #0x52edb8

; FUNCTION 0x0052ee00, declared_size=56, range_size=56, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice13getLineNumberEPc
; demangled: ADevice::getLineNumber(char*)
; decoder-mode: arm
0052ee00  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0052ee04  24 30 9f e5                                      ldr r3, [pc, #0x24]
0052ee08  00 20 a0 e1                                      mov r2, r0
0052ee0c  0c c0 8f e0                                      add ip, pc, ip
0052ee10  03 10 9c e7                                      ldr r1, [ip, r3]
0052ee14  18 30 9f e5                                      ldr r3, [pc, #0x18]
0052ee18  00 00 91 e5                                      ldr r0, [r1]
0052ee1c  03 30 9c e7                                      ldr r3, [ip, r3]
0052ee20  00 10 93 e5                                      ldr r1, [r3]
0052ee24  ff 30 a0 e3                                      mov r3, #0xff
0052ee28  9d ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052ee2c  84 5c 46 00 e8 15 00 00 d8 13 00 00              .byte 0x84, 0x5c, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xd8, 0x13, 0x00, 0x00

; FUNCTION 0x0052ee38, declared_size=56, range_size=56, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice15getOperatorNameEPc
; demangled: ADevice::getOperatorName(char*)
; decoder-mode: arm
0052ee38  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0052ee3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0052ee40  00 20 a0 e1                                      mov r2, r0
0052ee44  0c c0 8f e0                                      add ip, pc, ip
0052ee48  03 10 9c e7                                      ldr r1, [ip, r3]
0052ee4c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0052ee50  00 00 91 e5                                      ldr r0, [r1]
0052ee54  03 30 9c e7                                      ldr r3, [ip, r3]
0052ee58  00 10 93 e5                                      ldr r1, [r3]
0052ee5c  ff 30 a0 e3                                      mov r3, #0xff
0052ee60  8f ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052ee64  4c 5c 46 00 e8 15 00 00 e0 29 00 00              .byte 0x4c, 0x5c, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xe0, 0x29, 0x00, 0x00

; FUNCTION 0x0052ee70, declared_size=56, range_size=56, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice7getIMEIEPc
; demangled: ADevice::getIMEI(char*)
; decoder-mode: arm
0052ee70  24 c0 9f e5                                      ldr ip, [pc, #0x24]
0052ee74  24 30 9f e5                                      ldr r3, [pc, #0x24]
0052ee78  00 20 a0 e1                                      mov r2, r0
0052ee7c  0c c0 8f e0                                      add ip, pc, ip
0052ee80  03 10 9c e7                                      ldr r1, [ip, r3]
0052ee84  18 30 9f e5                                      ldr r3, [pc, #0x18]
0052ee88  00 00 91 e5                                      ldr r0, [r1]
0052ee8c  03 30 9c e7                                      ldr r3, [ip, r3]
0052ee90  00 10 93 e5                                      ldr r1, [r3]
0052ee94  ff 30 a0 e3                                      mov r3, #0xff
0052ee98  81 ff ff ea                                      b #0x52eca4
; mapping-symbol data/literal pool
0052ee9c  14 5c 46 00 e8 15 00 00 c4 23 00 00              .byte 0x14, 0x5c, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xc4, 0x23, 0x00, 0x00

; FUNCTION 0x0052eea8, declared_size=64, range_size=64, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice11currentTimeEv
; demangled: ADevice::currentTime()
; decoder-mode: arm
0052eea8  04 e0 2d e5                                      str lr, [sp, #-4]!
0052eeac  0c d0 4d e2                                      sub sp, sp, #0xc
0052eeb0  00 10 a0 e3                                      mov r1, #0
0052eeb4  0d 00 a0 e1                                      mov r0, sp
0052eeb8  19 7e f7 eb                                      bl #0x30e724
0052eebc  04 20 9d e5                                      ldr r2, [sp, #4]
0052eec0  d3 3d 04 e3                                      movw r3, #0x4dd3
0052eec4  62 30 41 e3                                      movt r3, #0x1062
0052eec8  93 12 c3 e0                                      smull r1, r3, r3, r2
0052eecc  c2 2f a0 e1                                      asr r2, r2, #0x1f
0052eed0  43 33 62 e0                                      rsb r3, r2, r3, asr #6
0052eed4  00 20 9d e5                                      ldr r2, [sp]
0052eed8  fa 0f a0 e3                                      mov r0, #0x3e8
0052eedc  90 32 20 e0                                      mla r0, r0, r2, r3
0052eee0  0c d0 8d e2                                      add sp, sp, #0xc
0052eee4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0052eee8, declared_size=496, range_size=496, mode=arm
; class-group: ADevice
; alias: _ZN7ADevice4InitEP7_JNIEnvP7_jclass
; demangled: ADevice::Init(_JNIEnv*, _jclass*)
; decoder-mode: arm
0052eee8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052eeec  00 30 90 e5                                      ldr r3, [r0]
0052eef0  00 40 a0 e1                                      mov r4, r0
0052eef4  0f e0 a0 e1                                      mov lr, pc
0052eef8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0052eefc  80 51 9f e5                                      ldr r5, [pc, #0x180]
0052ef00  80 31 9f e5                                      ldr r3, [pc, #0x180]
0052ef04  80 71 9f e5                                      ldr r7, [pc, #0x180]
0052ef08  05 50 8f e0                                      add r5, pc, r5
0052ef0c  03 60 95 e7                                      ldr r6, [r5, r3]
0052ef10  78 21 9f e5                                      ldr r2, [pc, #0x178]
0052ef14  07 70 8f e0                                      add r7, pc, r7
0052ef18  00 00 86 e5                                      str r0, [r6]
0052ef1c  00 10 a0 e1                                      mov r1, r0
0052ef20  02 20 8f e0                                      add r2, pc, r2
0052ef24  07 30 a0 e1                                      mov r3, r7
0052ef28  00 c0 94 e5                                      ldr ip, [r4]
0052ef2c  04 00 a0 e1                                      mov r0, r4
0052ef30  0f e0 a0 e1                                      mov lr, pc
0052ef34  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052ef38  54 31 9f e5                                      ldr r3, [pc, #0x154]
0052ef3c  54 21 9f e5                                      ldr r2, [pc, #0x154]
0052ef40  00 10 96 e5                                      ldr r1, [r6]
0052ef44  03 c0 95 e7                                      ldr ip, [r5, r3]
0052ef48  02 20 8f e0                                      add r2, pc, r2
0052ef4c  07 30 a0 e1                                      mov r3, r7
0052ef50  00 00 8c e5                                      str r0, [ip]
0052ef54  00 c0 94 e5                                      ldr ip, [r4]
0052ef58  04 00 a0 e1                                      mov r0, r4
0052ef5c  0f e0 a0 e1                                      mov lr, pc
0052ef60  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052ef64  30 31 9f e5                                      ldr r3, [pc, #0x130]
0052ef68  30 21 9f e5                                      ldr r2, [pc, #0x130]
0052ef6c  00 10 96 e5                                      ldr r1, [r6]
0052ef70  03 c0 95 e7                                      ldr ip, [r5, r3]
0052ef74  02 20 8f e0                                      add r2, pc, r2
0052ef78  07 30 a0 e1                                      mov r3, r7
0052ef7c  00 00 8c e5                                      str r0, [ip]
0052ef80  00 c0 94 e5                                      ldr ip, [r4]
0052ef84  04 00 a0 e1                                      mov r0, r4
0052ef88  0f e0 a0 e1                                      mov lr, pc
0052ef8c  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052ef90  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0052ef94  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0052ef98  00 10 96 e5                                      ldr r1, [r6]
0052ef9c  03 c0 95 e7                                      ldr ip, [r5, r3]
0052efa0  02 20 8f e0                                      add r2, pc, r2
0052efa4  07 30 a0 e1                                      mov r3, r7
0052efa8  00 00 8c e5                                      str r0, [ip]
0052efac  00 c0 94 e5                                      ldr ip, [r4]
0052efb0  04 00 a0 e1                                      mov r0, r4
0052efb4  0f e0 a0 e1                                      mov lr, pc
0052efb8  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052efbc  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0052efc0  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
0052efc4  03 10 95 e7                                      ldr r1, [r5, r3]
0052efc8  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
0052efcc  02 20 8f e0                                      add r2, pc, r2
0052efd0  00 00 81 e5                                      str r0, [r1]
0052efd4  03 30 8f e0                                      add r3, pc, r3
0052efd8  00 10 96 e5                                      ldr r1, [r6]
0052efdc  00 c0 94 e5                                      ldr ip, [r4]
0052efe0  04 00 a0 e1                                      mov r0, r4
0052efe4  0f e0 a0 e1                                      mov lr, pc
0052efe8  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052efec  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0052eff0  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0052eff4  00 10 96 e5                                      ldr r1, [r6]
0052eff8  03 c0 95 e7                                      ldr ip, [r5, r3]
0052effc  02 20 8f e0                                      add r2, pc, r2
0052f000  07 30 a0 e1                                      mov r3, r7
0052f004  00 00 8c e5                                      str r0, [ip]
0052f008  00 c0 94 e5                                      ldr ip, [r4]
0052f00c  04 00 a0 e1                                      mov r0, r4
0052f010  0f e0 a0 e1                                      mov lr, pc
0052f014  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052f018  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0052f01c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0052f020  03 10 95 e7                                      ldr r1, [r5, r3]
0052f024  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0052f028  02 20 8f e0                                      add r2, pc, r2
0052f02c  00 00 81 e5                                      str r0, [r1]
0052f030  03 30 8f e0                                      add r3, pc, r3
0052f034  00 10 96 e5                                      ldr r1, [r6]
0052f038  00 c0 94 e5                                      ldr ip, [r4]
0052f03c  04 00 a0 e1                                      mov r0, r4
0052f040  0f e0 a0 e1                                      mov lr, pc
0052f044  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052f048  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0052f04c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0052f050  00 10 96 e5                                      ldr r1, [r6]
0052f054  03 c0 95 e7                                      ldr ip, [r5, r3]
0052f058  02 20 8f e0                                      add r2, pc, r2
0052f05c  07 30 a0 e1                                      mov r3, r7
0052f060  00 00 8c e5                                      str r0, [ip]
0052f064  00 c0 94 e5                                      ldr ip, [r4]
0052f068  04 00 a0 e1                                      mov r0, r4
0052f06c  0f e0 a0 e1                                      mov lr, pc
0052f070  c4 f1 9c e5                                      ldr pc, [ip, #0x1c4]
0052f074  58 30 9f e5                                      ldr r3, [pc, #0x58]
0052f078  03 30 95 e7                                      ldr r3, [r5, r3]
0052f07c  00 00 83 e5                                      str r0, [r3]
0052f080  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0052f084  88 5b 46 00 e8 15 00 00 f4 df 3a 00 00 2f 39 00  .byte 0x88, 0x5b, 0x46, 0x00, 0xe8, 0x15, 0x00, 0x00, 0xf4, 0xdf, 0x3a, 0x00, 0x00, 0x2f, 0x39, 0x00
0052f094  c4 23 00 00 50 c9 3d 00 e0 29 00 00 14 31 3c 00  .byte 0xc4, 0x23, 0x00, 0x00, 0x50, 0xc9, 0x3d, 0x00, 0xe0, 0x29, 0x00, 0x00, 0x14, 0x31, 0x3c, 0x00
0052f0a4  d8 13 00 00 50 7d 3b 00 3c 31 00 00 44 df 3a 00  .byte 0xd8, 0x13, 0x00, 0x00, 0x50, 0x7d, 0x3b, 0x00, 0x3c, 0x31, 0x00, 0x00, 0x44, 0xdf, 0x3a, 0x00
0052f0b4  4c df 3a 00 c0 0f 00 00 2c df 3a 00 e8 26 00 00  .byte 0x4c, 0xdf, 0x3a, 0x00, 0xc0, 0x0f, 0x00, 0x00, 0x2c, 0xdf, 0x3a, 0x00, 0xe8, 0x26, 0x00, 0x00
0052f0c4  d0 06 3b 00 08 df 3a 00 d4 39 00 00 a0 3d 3b 00  .byte 0xd0, 0x06, 0x3b, 0x00, 0x08, 0xdf, 0x3a, 0x00, 0xd4, 0x39, 0x00, 0x00, 0xa0, 0x3d, 0x3b, 0x00
0052f0d4  e8 29 00 00                                      .byte 0xe8, 0x29, 0x00, 0x00
