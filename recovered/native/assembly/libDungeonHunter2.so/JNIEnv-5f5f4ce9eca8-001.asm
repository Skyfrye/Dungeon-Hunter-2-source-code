; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052ea74, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv23CallStaticBooleanMethodEP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)
; decoder-mode: arm
0052ea74  0c 00 2d e9                                      push {r2, r3}
0052ea78  04 e0 2d e5                                      str lr, [sp, #-4]!
0052ea7c  0c d0 4d e2                                      sub sp, sp, #0xc
0052ea80  14 30 8d e2                                      add r3, sp, #0x14
0052ea84  04 30 8d e5                                      str r3, [sp, #4]
0052ea88  00 c0 90 e5                                      ldr ip, [r0]
0052ea8c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0052ea90  0f e0 a0 e1                                      mov lr, pc
0052ea94  d8 f1 9c e5                                      ldr pc, [ip, #0x1d8]
0052ea98  0c d0 8d e2                                      add sp, sp, #0xc
0052ea9c  04 e0 9d e4                                      pop {lr}
0052eaa0  08 d0 8d e2                                      add sp, sp, #8
0052eaa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0052eaf8, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv22CallStaticObjectMethodEP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallStaticObjectMethod(_jclass*, _jmethodID*, ...)
; decoder-mode: arm
0052eaf8  0c 00 2d e9                                      push {r2, r3}
0052eafc  04 e0 2d e5                                      str lr, [sp, #-4]!
0052eb00  0c d0 4d e2                                      sub sp, sp, #0xc
0052eb04  14 30 8d e2                                      add r3, sp, #0x14
0052eb08  04 30 8d e5                                      str r3, [sp, #4]
0052eb0c  00 c0 90 e5                                      ldr ip, [r0]
0052eb10  10 20 9d e5                                      ldr r2, [sp, #0x10]
0052eb14  0f e0 a0 e1                                      mov lr, pc
0052eb18  cc f1 9c e5                                      ldr pc, [ip, #0x1cc]
0052eb1c  0c d0 8d e2                                      add sp, sp, #0xc
0052eb20  04 e0 9d e4                                      pop {lr}
0052eb24  08 d0 8d e2                                      add sp, sp, #8
0052eb28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed78, declared_size=20, range_size=20, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv11GetMethodIDEP7_jclassPKcS3_
; demangled: _JNIEnv::GetMethodID(_jclass*, char const*, char const*)
; decoder-mode: arm
0088ed78  10 40 2d e9                                      push {r4, lr}
0088ed7c  00 c0 90 e5                                      ldr ip, [r0]
0088ed80  0f e0 a0 e1                                      mov lr, pc
0088ed84  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0088ed88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088ee94, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::NewObject(_jclass*, _jmethodID*, ...)
; decoder-mode: arm
0088ee94  0c 00 2d e9                                      push {r2, r3}
0088ee98  04 e0 2d e5                                      str lr, [sp, #-4]!
0088ee9c  0c d0 4d e2                                      sub sp, sp, #0xc
0088eea0  14 30 8d e2                                      add r3, sp, #0x14
0088eea4  04 30 8d e5                                      str r3, [sp, #4]
0088eea8  00 c0 90 e5                                      ldr ip, [r0]
0088eeac  10 20 9d e5                                      ldr r2, [sp, #0x10]
0088eeb0  0f e0 a0 e1                                      mov lr, pc
0088eeb4  74 f0 9c e5                                      ldr pc, [ip, #0x74]
0088eeb8  0c d0 8d e2                                      add sp, sp, #0xc
0088eebc  04 e0 9d e4                                      pop {lr}
0088eec0  08 d0 8d e2                                      add sp, sp, #8
0088eec4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088eec8, declared_size=56, range_size=56, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv24CallNonvirtualVoidMethodEP8_jobjectP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallNonvirtualVoidMethod(_jobject*, _jclass*, _jmethodID*, ...)
; decoder-mode: arm
0088eec8  04 30 2d e5                                      str r3, [sp, #-4]!
0088eecc  04 e0 2d e5                                      str lr, [sp, #-4]!
0088eed0  10 d0 4d e2                                      sub sp, sp, #0x10
0088eed4  18 30 8d e2                                      add r3, sp, #0x18
0088eed8  00 30 8d e5                                      str r3, [sp]
0088eedc  0c 30 8d e5                                      str r3, [sp, #0xc]
0088eee0  00 c0 90 e5                                      ldr ip, [r0]
0088eee4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088eee8  0f e0 a0 e1                                      mov lr, pc
0088eeec  70 f1 9c e5                                      ldr pc, [ip, #0x170]
0088eef0  10 d0 8d e2                                      add sp, sp, #0x10
0088eef4  04 e0 9d e4                                      pop {lr}
0088eef8  04 d0 8d e2                                      add sp, sp, #4
0088eefc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ef00, declared_size=56, range_size=56, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv23CallNonvirtualIntMethodEP8_jobjectP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallNonvirtualIntMethod(_jobject*, _jclass*, _jmethodID*, ...)
; decoder-mode: arm
0088ef00  04 30 2d e5                                      str r3, [sp, #-4]!
0088ef04  04 e0 2d e5                                      str lr, [sp, #-4]!
0088ef08  10 d0 4d e2                                      sub sp, sp, #0x10
0088ef0c  18 30 8d e2                                      add r3, sp, #0x18
0088ef10  0c 30 8d e5                                      str r3, [sp, #0xc]
0088ef14  00 c0 90 e5                                      ldr ip, [r0]
0088ef18  00 30 8d e5                                      str r3, [sp]
0088ef1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0088ef20  0f e0 a0 e1                                      mov lr, pc
0088ef24  40 f1 9c e5                                      ldr pc, [ip, #0x140]
0088ef28  10 d0 8d e2                                      add sp, sp, #0x10
0088ef2c  04 e0 9d e4                                      pop {lr}
0088ef30  04 d0 8d e2                                      add sp, sp, #4
0088ef34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ef38, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv19CallStaticIntMethodEP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallStaticIntMethod(_jclass*, _jmethodID*, ...)
; decoder-mode: arm
0088ef38  0c 00 2d e9                                      push {r2, r3}
0088ef3c  04 e0 2d e5                                      str lr, [sp, #-4]!
0088ef40  0c d0 4d e2                                      sub sp, sp, #0xc
0088ef44  14 30 8d e2                                      add r3, sp, #0x14
0088ef48  04 30 8d e5                                      str r3, [sp, #4]
0088ef4c  00 c0 90 e5                                      ldr ip, [r0]
0088ef50  10 20 9d e5                                      ldr r2, [sp, #0x10]
0088ef54  0f e0 a0 e1                                      mov lr, pc
0088ef58  08 f2 9c e5                                      ldr pc, [ip, #0x208]
0088ef5c  0c d0 8d e2                                      add sp, sp, #0xc
0088ef60  04 e0 9d e4                                      pop {lr}
0088ef64  08 d0 8d e2                                      add sp, sp, #8
0088ef68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089acc8, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz
; demangled: _JNIEnv::CallObjectMethod(_jobject*, _jmethodID*, ...)
; decoder-mode: arm
0089acc8  0c 00 2d e9                                      push {r2, r3}
0089accc  04 e0 2d e5                                      str lr, [sp, #-4]!
0089acd0  0c d0 4d e2                                      sub sp, sp, #0xc
0089acd4  14 30 8d e2                                      add r3, sp, #0x14
0089acd8  04 30 8d e5                                      str r3, [sp, #4]
0089acdc  00 c0 90 e5                                      ldr ip, [r0]
0089ace0  10 20 9d e5                                      ldr r2, [sp, #0x10]
0089ace4  0f e0 a0 e1                                      mov lr, pc
0089ace8  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
0089acec  0c d0 8d e2                                      add sp, sp, #0xc
0089acf0  04 e0 9d e4                                      pop {lr}
0089acf4  08 d0 8d e2                                      add sp, sp, #8
0089acf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089aea0, declared_size=52, range_size=52, mode=arm
; class-group: _JNIEnv
; alias: _ZN7_JNIEnv20CallStaticVoidMethodEP7_jclassP10_jmethodIDz
; demangled: _JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)
; decoder-mode: arm
0089aea0  0c 00 2d e9                                      push {r2, r3}
0089aea4  04 e0 2d e5                                      str lr, [sp, #-4]!
0089aea8  0c d0 4d e2                                      sub sp, sp, #0xc
0089aeac  14 30 8d e2                                      add r3, sp, #0x14
0089aeb0  04 30 8d e5                                      str r3, [sp, #4]
0089aeb4  00 c0 90 e5                                      ldr ip, [r0]
0089aeb8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0089aebc  0f e0 a0 e1                                      mov lr, pc
0089aec0  38 f2 9c e5                                      ldr pc, [ip, #0x238]
0089aec4  0c d0 8d e2                                      add sp, sp, #0xc
0089aec8  04 e0 9d e4                                      pop {lr}
0089aecc  08 d0 8d e2                                      add sp, sp, #8
0089aed0  1e ff 2f e1                                      bx lr
