; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082ce00, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp12IsSendByPostEv
; demangled: GLXPlayerHttp::IsSendByPost()
; decoder-mode: arm
0082ce00  24 04 d0 e5                                      ldrb r0, [r0, #0x424]
0082ce04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082ce08, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp5StartEv
; demangled: GLXPlayerHttp::Start()
; decoder-mode: arm
0082ce08  10 40 2d e9                                      push {r4, lr}
0082ce0c  04 30 90 e5                                      ldr r3, [r0, #4]
0082ce10  00 00 53 e3                                      cmp r3, #0
0082ce14  03 00 00 0a                                      beq #0x82ce28
0082ce18  03 00 a0 e1                                      mov r0, r3
0082ce1c  00 30 93 e5                                      ldr r3, [r3]
0082ce20  0f e0 a0 e1                                      mov lr, pc
0082ce24  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082ce28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082ce2c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp16GetServerAddressEv
; demangled: GLXPlayerHttp::GetServerAddress()
; decoder-mode: arm
0082ce2c  10 04 90 e5                                      ldr r0, [r0, #0x410]
0082ce30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082ce34, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp14GetRequestDataEv
; demangled: GLXPlayerHttp::GetRequestData()
; decoder-mode: arm
0082ce34  24 34 d0 e5                                      ldrb r3, [r0, #0x424]
0082ce38  00 00 53 e3                                      cmp r3, #0
0082ce3c  1c 04 90 15                                      ldrne r0, [r0, #0x41c]
0082ce40  08 00 80 02                                      addeq r0, r0, #8
0082ce44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082ce48, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp13UpdateRequestEv
; demangled: GLXPlayerHttp::UpdateRequest()
; decoder-mode: arm
0082ce48  10 40 2d e9                                      push {r4, lr}
0082ce4c  04 30 90 e5                                      ldr r3, [r0, #4]
0082ce50  00 00 53 e3                                      cmp r3, #0
0082ce54  03 00 00 0a                                      beq #0x82ce68
0082ce58  03 00 a0 e1                                      mov r0, r3
0082ce5c  00 30 93 e5                                      ldr r3, [r3]
0082ce60  0f e0 a0 e1                                      mov lr, pc
0082ce64  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0082ce68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082ce6c, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp12IsInProgressEv
; demangled: GLXPlayerHttp::IsInProgress()
; decoder-mode: arm
0082ce6c  10 40 2d e9                                      push {r4, lr}
0082ce70  04 30 90 e5                                      ldr r3, [r0, #4]
0082ce74  00 00 53 e3                                      cmp r3, #0
0082ce78  04 00 00 0a                                      beq #0x82ce90
0082ce7c  03 00 a0 e1                                      mov r0, r3
0082ce80  00 30 93 e5                                      ldr r3, [r3]
0082ce84  0f e0 a0 e1                                      mov lr, pc
0082ce88  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0082ce8c  10 80 bd e8                                      pop {r4, pc}
0082ce90  03 00 a0 e1                                      mov r0, r3
0082ce94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082ce98, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp15IsErrorOccurredEv
; demangled: GLXPlayerHttp::IsErrorOccurred()
; decoder-mode: arm
0082ce98  10 40 2d e9                                      push {r4, lr}
0082ce9c  04 30 90 e5                                      ldr r3, [r0, #4]
0082cea0  00 00 53 e3                                      cmp r3, #0
0082cea4  04 00 00 0a                                      beq #0x82cebc
0082cea8  03 00 a0 e1                                      mov r0, r3
0082ceac  00 30 93 e5                                      ldr r3, [r3]
0082ceb0  0f e0 a0 e1                                      mov lr, pc
0082ceb4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0082ceb8  10 80 bd e8                                      pop {r4, pc}
0082cebc  03 00 a0 e1                                      mov r0, r3
0082cec0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082cec4, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp11GetResponseEv
; demangled: GLXPlayerHttp::GetResponse()
; decoder-mode: arm
0082cec4  08 04 90 e5                                      ldr r0, [r0, #0x408]
0082cec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cecc, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp14GetResponseLenEv
; demangled: GLXPlayerHttp::GetResponseLen()
; decoder-mode: arm
0082cecc  0c 04 90 e5                                      ldr r0, [r0, #0x40c]
0082ced0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082ced4, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp14SetResponseLenEi
; demangled: GLXPlayerHttp::SetResponseLen(int)
; decoder-mode: arm
0082ced4  0c 14 80 e5                                      str r1, [r0, #0x40c]
0082ced8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082cedc, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp17GetSendPercentageEv
; demangled: GLXPlayerHttp::GetSendPercentage()
; decoder-mode: arm
0082cedc  04 00 90 e5                                      ldr r0, [r0, #4]
0082cee0  00 00 50 e3                                      cmp r0, #0
0082cee4  1e ff 2f 01                                      bxeq lr
0082cee8  5f 0c 00 ea                                      b #0x83006c

; FUNCTION 0x0082ceec, declared_size=96, range_size=96, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp6CancelEv
; demangled: GLXPlayerHttp::Cancel()
; decoder-mode: arm
0082ceec  10 40 2d e9                                      push {r4, lr}
0082cef0  04 30 90 e5                                      ldr r3, [r0, #4]
0082cef4  00 40 a0 e1                                      mov r4, r0
0082cef8  00 00 53 e3                                      cmp r3, #0
0082cefc  03 00 00 0a                                      beq #0x82cf10
0082cf00  03 00 a0 e1                                      mov r0, r3
0082cf04  00 30 93 e5                                      ldr r3, [r3]
0082cf08  0f e0 a0 e1                                      mov lr, pc
0082cf0c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0082cf10  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082cf14  00 00 50 e3                                      cmp r0, #0
0082cf18  02 00 00 0a                                      beq #0x82cf28
0082cf1c  e3 84 eb eb                                      bl #0x30e2b0
0082cf20  00 30 a0 e3                                      mov r3, #0
0082cf24  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082cf28  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082cf2c  00 00 50 e3                                      cmp r0, #0
0082cf30  02 00 00 0a                                      beq #0x82cf40
0082cf34  dd 84 eb eb                                      bl #0x30e2b0
0082cf38  00 30 a0 e3                                      mov r3, #0
0082cf3c  08 34 84 e5                                      str r3, [r4, #0x408]
0082cf40  00 30 a0 e3                                      mov r3, #0
0082cf44  0c 34 84 e5                                      str r3, [r4, #0x40c]
0082cf48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082cf4c, declared_size=724, range_size=724, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp12downloadFileEPcS0_S0_S0_ll
; demangled: GLXPlayerHttp::downloadFile(char*, char*, char*, char*, long, long)
; decoder-mode: arm
0082cf4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082cf50  84 52 9f e5                                      ldr r5, [pc, #0x284]
0082cf54  84 72 9f e5                                      ldr r7, [pc, #0x284]
0082cf58  00 40 a0 e1                                      mov r4, r0
0082cf5c  05 50 8f e0                                      add r5, pc, r5
0082cf60  07 c0 95 e7                                      ldr ip, [r5, r7]
0082cf64  78 02 9f e5                                      ldr r0, [pc, #0x278]
0082cf68  24 d0 4d e2                                      sub sp, sp, #0x24
0082cf6c  00 c0 9c e5                                      ldr ip, [ip]
0082cf70  00 00 8f e0                                      add r0, pc, r0
0082cf74  08 60 8d e2                                      add r6, sp, #8
0082cf78  03 90 a0 e1                                      mov sb, r3
0082cf7c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0082cf80  06 00 8d e8                                      stm sp, {r1, r2}
0082cf84  48 a0 9d e5                                      ldr sl, [sp, #0x48]
0082cf88  fd f9 ff eb                                      bl #0x82b784
0082cf8c  00 c0 a0 e3                                      mov ip, #0
0082cf90  04 30 86 e2                                      add r3, r6, #4
0082cf94  04 c0 83 e4                                      str ip, [r3], #4
0082cf98  04 c0 83 e4                                      str ip, [r3], #4
0082cf9c  04 c0 83 e4                                      str ip, [r3], #4
0082cfa0  08 80 84 e2                                      add r8, r4, #8
0082cfa4  0c 10 a0 e1                                      mov r1, ip
0082cfa8  01 2b a0 e3                                      mov r2, #0x400
0082cfac  00 c0 83 e5                                      str ip, [r3]
0082cfb0  08 00 a0 e1                                      mov r0, r8
0082cfb4  08 c0 8d e5                                      str ip, [sp, #8]
0082cfb8  e9 f8 ff eb                                      bl #0x82b364
0082cfbc  24 12 9f e5                                      ldr r1, [pc, #0x224]
0082cfc0  08 00 a0 e1                                      mov r0, r8
0082cfc4  20 b2 9f e5                                      ldr fp, [pc, #0x220]
0082cfc8  01 10 8f e0                                      add r1, pc, r1
0082cfcc  d9 f8 ff eb                                      bl #0x82b338
0082cfd0  04 10 9d e5                                      ldr r1, [sp, #4]
0082cfd4  08 00 a0 e1                                      mov r0, r8
0082cfd8  d6 f8 ff eb                                      bl #0x82b338
0082cfdc  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
0082cfe0  0b b0 8f e0                                      add fp, pc, fp
0082cfe4  08 00 a0 e1                                      mov r0, r8
0082cfe8  01 10 8f e0                                      add r1, pc, r1
0082cfec  d1 f8 ff eb                                      bl #0x82b338
0082cff0  0b 10 a0 e1                                      mov r1, fp
0082cff4  08 00 a0 e1                                      mov r0, r8
0082cff8  ce f8 ff eb                                      bl #0x82b338
0082cffc  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0082d000  08 00 a0 e1                                      mov r0, r8
0082d004  01 10 8f e0                                      add r1, pc, r1
0082d008  ca f8 ff eb                                      bl #0x82b338
0082d00c  00 10 9d e5                                      ldr r1, [sp]
0082d010  08 00 a0 e1                                      mov r0, r8
0082d014  c7 f8 ff eb                                      bl #0x82b338
0082d018  08 00 a0 e1                                      mov r0, r8
0082d01c  0b 10 a0 e1                                      mov r1, fp
0082d020  c4 f8 ff eb                                      bl #0x82b338
0082d024  00 00 5a e3                                      cmp sl, #0
0082d028  09 00 00 0a                                      beq #0x82d054
0082d02c  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0082d030  08 00 a0 e1                                      mov r0, r8
0082d034  01 10 8f e0                                      add r1, pc, r1
0082d038  be f8 ff eb                                      bl #0x82b338
0082d03c  0a 10 a0 e1                                      mov r1, sl
0082d040  08 00 a0 e1                                      mov r0, r8
0082d044  bb f8 ff eb                                      bl #0x82b338
0082d048  08 00 a0 e1                                      mov r0, r8
0082d04c  0b 10 a0 e1                                      mov r1, fp
0082d050  b8 f8 ff eb                                      bl #0x82b338
0082d054  a0 a1 9f e5                                      ldr sl, [pc, #0x1a0]
0082d058  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0082d05c  08 00 a0 e1                                      mov r0, r8
0082d060  0a a0 8f e0                                      add sl, pc, sl
0082d064  01 10 8f e0                                      add r1, pc, r1
0082d068  b2 f8 ff eb                                      bl #0x82b338
0082d06c  0a 10 a0 e1                                      mov r1, sl
0082d070  08 00 a0 e1                                      mov r0, r8
0082d074  af f8 ff eb                                      bl #0x82b338
0082d078  84 11 9f e5                                      ldr r1, [pc, #0x184]
0082d07c  08 00 a0 e1                                      mov r0, r8
0082d080  01 10 8f e0                                      add r1, pc, r1
0082d084  ab f8 ff eb                                      bl #0x82b338
0082d088  0a 10 a0 e1                                      mov r1, sl
0082d08c  08 00 a0 e1                                      mov r0, r8
0082d090  a8 f8 ff eb                                      bl #0x82b338
0082d094  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0082d098  08 00 a0 e1                                      mov r0, r8
0082d09c  01 10 8f e0                                      add r1, pc, r1
0082d0a0  a4 f8 ff eb                                      bl #0x82b338
0082d0a4  08 00 a0 e1                                      mov r0, r8
0082d0a8  0a 10 a0 e1                                      mov r1, sl
0082d0ac  a1 f8 ff eb                                      bl #0x82b338
0082d0b0  00 00 59 e3                                      cmp sb, #0
0082d0b4  09 00 00 0a                                      beq #0x82d0e0
0082d0b8  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0082d0bc  08 00 a0 e1                                      mov r0, r8
0082d0c0  01 10 8f e0                                      add r1, pc, r1
0082d0c4  9b f8 ff eb                                      bl #0x82b338
0082d0c8  09 10 a0 e1                                      mov r1, sb
0082d0cc  08 00 a0 e1                                      mov r0, r8
0082d0d0  98 f8 ff eb                                      bl #0x82b338
0082d0d4  08 00 a0 e1                                      mov r0, r8
0082d0d8  0a 10 a0 e1                                      mov r1, sl
0082d0dc  95 f8 ff eb                                      bl #0x82b338
0082d0e0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0082d0e4  00 00 52 e3                                      cmp r2, #0
0082d0e8  16 00 00 ba                                      blt #0x82d148
0082d0ec  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0082d0f0  08 00 a0 e1                                      mov r0, r8
0082d0f4  01 10 8f e0                                      add r1, pc, r1
0082d0f8  8e f8 ff eb                                      bl #0x82b338
0082d0fc  0a 20 a0 e3                                      mov r2, #0xa
0082d100  06 10 a0 e1                                      mov r1, r6
0082d104  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0082d108  57 f5 ff eb                                      bl #0x82a66c
0082d10c  06 10 a0 e1                                      mov r1, r6
0082d110  08 00 a0 e1                                      mov r0, r8
0082d114  87 f8 ff eb                                      bl #0x82b338
0082d118  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0082d11c  08 00 a0 e1                                      mov r0, r8
0082d120  01 10 8f e0                                      add r1, pc, r1
0082d124  83 f8 ff eb                                      bl #0x82b338
0082d128  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0082d12c  50 20 9d e5                                      ldr r2, [sp, #0x50]
0082d130  02 00 53 e1                                      cmp r3, r2
0082d134  1b 00 00 ba                                      blt #0x82d1a8
0082d138  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0082d13c  08 00 a0 e1                                      mov r0, r8
0082d140  01 10 8f e0                                      add r1, pc, r1
0082d144  7b f8 ff eb                                      bl #0x82b338
0082d148  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0082d14c  00 60 a0 e3                                      mov r6, #0
0082d150  08 00 a0 e1                                      mov r0, r8
0082d154  01 10 8f e0                                      add r1, pc, r1
0082d158  76 f8 ff eb                                      bl #0x82b338
0082d15c  04 00 a0 e1                                      mov r0, r4
0082d160  24 64 c4 e5                                      strb r6, [r4, #0x424]
0082d164  00 30 94 e5                                      ldr r3, [r4]
0082d168  0f e0 a0 e1                                      mov lr, pc
0082d16c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0082d170  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d174  06 00 50 e1                                      cmp r0, r6
0082d178  01 00 00 0a                                      beq #0x82d184
0082d17c  4b 84 eb eb                                      bl #0x30e2b0
0082d180  08 64 84 e5                                      str r6, [r4, #0x408]
0082d184  07 30 95 e7                                      ldr r3, [r5, r7]
0082d188  00 20 a0 e3                                      mov r2, #0
0082d18c  0c 24 84 e5                                      str r2, [r4, #0x40c]
0082d190  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0082d194  00 30 93 e5                                      ldr r3, [r3]
0082d198  03 00 52 e1                                      cmp r2, r3
0082d19c  0d 00 00 1a                                      bne #0x82d1d8
0082d1a0  24 d0 8d e2                                      add sp, sp, #0x24
0082d1a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082d1a8  06 00 a0 e1                                      mov r0, r6
0082d1ac  14 20 a0 e3                                      mov r2, #0x14
0082d1b0  00 10 a0 e3                                      mov r1, #0
0082d1b4  6a f8 ff eb                                      bl #0x82b364
0082d1b8  06 10 a0 e1                                      mov r1, r6
0082d1bc  50 00 9d e5                                      ldr r0, [sp, #0x50]
0082d1c0  0a 20 a0 e3                                      mov r2, #0xa
0082d1c4  28 f5 ff eb                                      bl #0x82a66c
0082d1c8  08 00 a0 e1                                      mov r0, r8
0082d1cc  06 10 a0 e1                                      mov r1, r6
0082d1d0  58 f8 ff eb                                      bl #0x82b338
0082d1d4  d7 ff ff ea                                      b #0x82d138
0082d1d8  4c 84 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082d1dc  34 7b 16 00 ac 40 00 00 18 f7 0d 00 e0 f6 0d 00  .byte 0x34, 0x7b, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0xf7, 0x0d, 0x00, 0xe0, 0xf6, 0x0d, 0x00
0082d1ec  20 30 09 00 c8 f6 0d 00 bc f6 0d 00 94 f6 0d 00  .byte 0x20, 0x30, 0x09, 0x00, 0xc8, 0xf6, 0x0d, 0x00, 0xbc, 0xf6, 0x0d, 0x00, 0x94, 0xf6, 0x0d, 0x00
0082d1fc  a0 2f 09 00 74 f6 0d 00 68 f6 0d 00 8c f6 0d 00  .byte 0xa0, 0x2f, 0x09, 0x00, 0x74, 0xf6, 0x0d, 0x00, 0x68, 0xf6, 0x0d, 0x00, 0x8c, 0xf6, 0x0d, 0x00
0082d20c  80 f6 0d 00 5c f6 0d 00 c0 58 0c 00 c0 2e 09 00  .byte 0x80, 0xf6, 0x0d, 0x00, 0x5c, 0xf6, 0x0d, 0x00, 0xc0, 0x58, 0x0c, 0x00, 0xc0, 0x2e, 0x09, 0x00
0082d21c  ac 2e 09 00                                      .byte 0xac, 0x2e, 0x09, 0x00

; FUNCTION 0x0082d220, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp16GetRequestLengthEv
; demangled: GLXPlayerHttp::GetRequestLength()
; decoder-mode: arm
0082d220  24 34 d0 e5                                      ldrb r3, [r0, #0x424]
0082d224  00 00 53 e3                                      cmp r3, #0
0082d228  01 00 00 0a                                      beq #0x82d234
0082d22c  20 04 90 e5                                      ldr r0, [r0, #0x420]
0082d230  1e ff 2f e1                                      bx lr
0082d234  08 00 80 e2                                      add r0, r0, #8
0082d238  5b f7 ff ea                                      b #0x82afac

; FUNCTION 0x0082d23c, declared_size=92, range_size=92, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp15SetResponseDataEPci
; demangled: GLXPlayerHttp::SetResponseData(char*, int)
; decoder-mode: arm
0082d23c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082d240  00 40 a0 e1                                      mov r4, r0
0082d244  08 04 90 e5                                      ldr r0, [r0, #0x408]
0082d248  01 60 a0 e1                                      mov r6, r1
0082d24c  02 50 a0 e1                                      mov r5, r2
0082d250  00 00 50 e3                                      cmp r0, #0
0082d254  02 00 00 0a                                      beq #0x82d264
0082d258  14 84 eb eb                                      bl #0x30e2b0
0082d25c  00 30 a0 e3                                      mov r3, #0
0082d260  08 34 84 e5                                      str r3, [r4, #0x408]
0082d264  01 70 85 e2                                      add r7, r5, #1
0082d268  07 00 a0 e1                                      mov r0, r7
0082d26c  97 83 eb eb                                      bl #0x30e0d0
0082d270  07 20 a0 e1                                      mov r2, r7
0082d274  08 04 84 e5                                      str r0, [r4, #0x408]
0082d278  00 10 a0 e3                                      mov r1, #0
0082d27c  38 f8 ff eb                                      bl #0x82b364
0082d280  06 10 a0 e1                                      mov r1, r6
0082d284  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d288  05 20 a0 e1                                      mov r2, r5
0082d28c  2f f8 ff eb                                      bl #0x82b350
0082d290  0c 54 84 e5                                      str r5, [r4, #0x40c]
0082d294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0082d298, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttpD1Ev
; demangled: GLXPlayerHttp::~GLXPlayerHttp()
; decoder-mode: arm
0082d298  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0082d29c  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0082d2a0  10 40 2d e9                                      push {r4, lr}
0082d2a4  03 30 8f e0                                      add r3, pc, r3
0082d2a8  02 20 93 e7                                      ldr r2, [r3, r2]
0082d2ac  00 40 a0 e1                                      mov r4, r0
0082d2b0  08 20 82 e2                                      add r2, r2, #8
0082d2b4  00 20 80 e5                                      str r2, [r0]
0082d2b8  0b ff ff eb                                      bl #0x82ceec
0082d2bc  10 04 94 e5                                      ldr r0, [r4, #0x410]
0082d2c0  00 00 50 e3                                      cmp r0, #0
0082d2c4  02 00 00 0a                                      beq #0x82d2d4
0082d2c8  7a 83 eb eb                                      bl #0x30e0b8
0082d2cc  00 30 a0 e3                                      mov r3, #0
0082d2d0  10 34 84 e5                                      str r3, [r4, #0x410]
0082d2d4  14 04 94 e5                                      ldr r0, [r4, #0x414]
0082d2d8  00 00 50 e3                                      cmp r0, #0
0082d2dc  02 00 00 0a                                      beq #0x82d2ec
0082d2e0  74 83 eb eb                                      bl #0x30e0b8
0082d2e4  00 30 a0 e3                                      mov r3, #0
0082d2e8  14 34 84 e5                                      str r3, [r4, #0x414]
0082d2ec  18 04 94 e5                                      ldr r0, [r4, #0x418]
0082d2f0  00 00 50 e3                                      cmp r0, #0
0082d2f4  02 00 00 0a                                      beq #0x82d304
0082d2f8  6e 83 eb eb                                      bl #0x30e0b8
0082d2fc  00 30 a0 e3                                      mov r3, #0
0082d300  18 34 84 e5                                      str r3, [r4, #0x418]
0082d304  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082d308  00 00 50 e3                                      cmp r0, #0
0082d30c  02 00 00 0a                                      beq #0x82d31c
0082d310  e6 83 eb eb                                      bl #0x30e2b0
0082d314  00 30 a0 e3                                      mov r3, #0
0082d318  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082d31c  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d320  00 00 50 e3                                      cmp r0, #0
0082d324  02 00 00 0a                                      beq #0x82d334
0082d328  e0 83 eb eb                                      bl #0x30e2b0
0082d32c  00 30 a0 e3                                      mov r3, #0
0082d330  08 34 84 e5                                      str r3, [r4, #0x408]
0082d334  04 30 94 e5                                      ldr r3, [r4, #4]
0082d338  00 00 53 e3                                      cmp r3, #0
0082d33c  03 00 00 0a                                      beq #0x82d350
0082d340  03 00 a0 e1                                      mov r0, r3
0082d344  00 30 93 e5                                      ldr r3, [r3]
0082d348  0f e0 a0 e1                                      mov lr, pc
0082d34c  04 f0 93 e5                                      ldr pc, [r3, #4]
0082d350  04 00 a0 e1                                      mov r0, r4
0082d354  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082d358  ec 77 16 00 bc 15 00 00                          .byte 0xec, 0x77, 0x16, 0x00, 0xbc, 0x15, 0x00, 0x00

; FUNCTION 0x0082d360, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttpD0Ev
; demangled: GLXPlayerHttp::~GLXPlayerHttp()
; decoder-mode: arm
0082d360  10 40 2d e9                                      push {r4, lr}
0082d364  00 40 a0 e1                                      mov r4, r0
0082d368  ca ff ff eb                                      bl #0x82d298
0082d36c  04 00 a0 e1                                      mov r0, r4
0082d370  ce 83 eb eb                                      bl #0x30e2b0
0082d374  04 00 a0 e1                                      mov r0, r4
0082d378  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082d37c, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttpD2Ev
; demangled: GLXPlayerHttp::~GLXPlayerHttp()
; decoder-mode: arm
0082d37c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0082d380  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0082d384  10 40 2d e9                                      push {r4, lr}
0082d388  03 30 8f e0                                      add r3, pc, r3
0082d38c  02 20 93 e7                                      ldr r2, [r3, r2]
0082d390  00 40 a0 e1                                      mov r4, r0
0082d394  08 20 82 e2                                      add r2, r2, #8
0082d398  00 20 80 e5                                      str r2, [r0]
0082d39c  d2 fe ff eb                                      bl #0x82ceec
0082d3a0  10 04 94 e5                                      ldr r0, [r4, #0x410]
0082d3a4  00 00 50 e3                                      cmp r0, #0
0082d3a8  02 00 00 0a                                      beq #0x82d3b8
0082d3ac  41 83 eb eb                                      bl #0x30e0b8
0082d3b0  00 30 a0 e3                                      mov r3, #0
0082d3b4  10 34 84 e5                                      str r3, [r4, #0x410]
0082d3b8  14 04 94 e5                                      ldr r0, [r4, #0x414]
0082d3bc  00 00 50 e3                                      cmp r0, #0
0082d3c0  02 00 00 0a                                      beq #0x82d3d0
0082d3c4  3b 83 eb eb                                      bl #0x30e0b8
0082d3c8  00 30 a0 e3                                      mov r3, #0
0082d3cc  14 34 84 e5                                      str r3, [r4, #0x414]
0082d3d0  18 04 94 e5                                      ldr r0, [r4, #0x418]
0082d3d4  00 00 50 e3                                      cmp r0, #0
0082d3d8  02 00 00 0a                                      beq #0x82d3e8
0082d3dc  35 83 eb eb                                      bl #0x30e0b8
0082d3e0  00 30 a0 e3                                      mov r3, #0
0082d3e4  18 34 84 e5                                      str r3, [r4, #0x418]
0082d3e8  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082d3ec  00 00 50 e3                                      cmp r0, #0
0082d3f0  02 00 00 0a                                      beq #0x82d400
0082d3f4  ad 83 eb eb                                      bl #0x30e2b0
0082d3f8  00 30 a0 e3                                      mov r3, #0
0082d3fc  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082d400  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d404  00 00 50 e3                                      cmp r0, #0
0082d408  02 00 00 0a                                      beq #0x82d418
0082d40c  a7 83 eb eb                                      bl #0x30e2b0
0082d410  00 30 a0 e3                                      mov r3, #0
0082d414  08 34 84 e5                                      str r3, [r4, #0x408]
0082d418  04 30 94 e5                                      ldr r3, [r4, #4]
0082d41c  00 00 53 e3                                      cmp r3, #0
0082d420  03 00 00 0a                                      beq #0x82d434
0082d424  03 00 a0 e1                                      mov r0, r3
0082d428  00 30 93 e5                                      ldr r3, [r3]
0082d42c  0f e0 a0 e1                                      mov lr, pc
0082d430  04 f0 93 e5                                      ldr pc, [r3, #4]
0082d434  04 00 a0 e1                                      mov r0, r4
0082d438  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082d43c  08 77 16 00 bc 15 00 00                          .byte 0x08, 0x77, 0x16, 0x00, 0xbc, 0x15, 0x00, 0x00

; FUNCTION 0x0082d444, declared_size=668, range_size=668, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp10sendByPostEPcS0_
; demangled: GLXPlayerHttp::sendByPost(char*, char*)
; decoder-mode: arm
0082d444  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082d448  74 72 9f e5                                      ldr r7, [pc, #0x274]
0082d44c  74 32 9f e5                                      ldr r3, [pc, #0x274]
0082d450  87 df 4d e2                                      sub sp, sp, #0x21c
0082d454  07 70 8f e0                                      add r7, pc, r7
0082d458  0c 30 8d e5                                      str r3, [sp, #0xc]
0082d45c  03 30 97 e7                                      ldr r3, [r7, r3]
0082d460  00 40 a0 e1                                      mov r4, r0
0082d464  60 02 9f e5                                      ldr r0, [pc, #0x260]
0082d468  00 30 93 e5                                      ldr r3, [r3]
0082d46c  01 a0 a0 e1                                      mov sl, r1
0082d470  02 60 a0 e1                                      mov r6, r2
0082d474  00 00 8f e0                                      add r0, pc, r0
0082d478  14 32 8d e5                                      str r3, [sp, #0x214]
0082d47c  c0 f8 ff eb                                      bl #0x82b784
0082d480  00 00 5a e3                                      cmp sl, #0
0082d484  00 00 56 13                                      cmpne r6, #0
0082d488  00 50 a0 13                                      movne r5, #0
0082d48c  01 50 a0 03                                      moveq r5, #1
0082d490  86 00 00 0a                                      beq #0x82d6b0
0082d494  45 8f 8d e2                                      add r8, sp, #0x114
0082d498  14 90 8d e2                                      add sb, sp, #0x14
0082d49c  05 10 a0 e1                                      mov r1, r5
0082d4a0  01 2c a0 e3                                      mov r2, #0x100
0082d4a4  08 00 a0 e1                                      mov r0, r8
0082d4a8  ec 83 eb eb                                      bl #0x30e460
0082d4ac  01 2c a0 e3                                      mov r2, #0x100
0082d4b0  05 10 a0 e1                                      mov r1, r5
0082d4b4  09 00 a0 e1                                      mov r0, sb
0082d4b8  e8 83 eb eb                                      bl #0x30e460
0082d4bc  08 00 a0 e1                                      mov r0, r8
0082d4c0  05 10 a0 e1                                      mov r1, r5
0082d4c4  01 2c a0 e3                                      mov r2, #0x100
0082d4c8  a5 f7 ff eb                                      bl #0x82b364
0082d4cc  09 00 a0 e1                                      mov r0, sb
0082d4d0  05 10 a0 e1                                      mov r1, r5
0082d4d4  01 2c a0 e3                                      mov r2, #0x100
0082d4d8  a1 f7 ff eb                                      bl #0x82b364
0082d4dc  2f 30 a0 e3                                      mov r3, #0x2f
0082d4e0  08 10 a0 e1                                      mov r1, r8
0082d4e4  02 20 a0 e3                                      mov r2, #2
0082d4e8  0a 00 a0 e1                                      mov r0, sl
0082d4ec  b8 f5 ff eb                                      bl #0x82abd4
0082d4f0  05 10 a0 e1                                      mov r1, r5
0082d4f4  00 b0 a0 e1                                      mov fp, r0
0082d4f8  01 2c a0 e3                                      mov r2, #0x100
0082d4fc  08 00 a0 e1                                      mov r0, r8
0082d500  97 f7 ff eb                                      bl #0x82b364
0082d504  0a 00 a0 e1                                      mov r0, sl
0082d508  a7 f6 ff eb                                      bl #0x82afac
0082d50c  0b 10 8a e0                                      add r1, sl, fp
0082d510  00 20 6b e0                                      rsb r2, fp, r0
0082d514  08 00 a0 e1                                      mov r0, r8
0082d518  8c f7 ff eb                                      bl #0x82b350
0082d51c  09 10 a0 e1                                      mov r1, sb
0082d520  05 20 a0 e1                                      mov r2, r5
0082d524  2f 30 a0 e3                                      mov r3, #0x2f
0082d528  08 00 a0 e1                                      mov r0, r8
0082d52c  a8 f5 ff eb                                      bl #0x82abd4
0082d530  08 00 a0 e1                                      mov r0, r8
0082d534  9c f6 ff eb                                      bl #0x82afac
0082d538  09 00 a0 e1                                      mov r0, sb
0082d53c  9a f6 ff eb                                      bl #0x82afac
0082d540  01 80 80 e2                                      add r8, r0, #1
0082d544  00 30 a0 e1                                      mov r3, r0
0082d548  08 00 a0 e1                                      mov r0, r8
0082d54c  08 30 8d e5                                      str r3, [sp, #8]
0082d550  de 82 eb eb                                      bl #0x30e0d0
0082d554  08 20 a0 e1                                      mov r2, r8
0082d558  05 10 a0 e1                                      mov r1, r5
0082d55c  00 b0 a0 e1                                      mov fp, r0
0082d560  7f f7 ff eb                                      bl #0x82b364
0082d564  08 30 9d e5                                      ldr r3, [sp, #8]
0082d568  09 10 a0 e1                                      mov r1, sb
0082d56c  0b 00 a0 e1                                      mov r0, fp
0082d570  03 20 a0 e1                                      mov r2, r3
0082d574  08 80 84 e2                                      add r8, r4, #8
0082d578  74 f7 ff eb                                      bl #0x82b350
0082d57c  08 00 a0 e1                                      mov r0, r8
0082d580  05 10 a0 e1                                      mov r1, r5
0082d584  01 2b a0 e3                                      mov r2, #0x400
0082d588  75 f7 ff eb                                      bl #0x82b364
0082d58c  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d590  00 00 50 e3                                      cmp r0, #0
0082d594  01 00 00 0a                                      beq #0x82d5a0
0082d598  44 83 eb eb                                      bl #0x30e2b0
0082d59c  08 54 84 e5                                      str r5, [r4, #0x408]
0082d5a0  28 11 9f e5                                      ldr r1, [pc, #0x128]
0082d5a4  06 00 a0 e1                                      mov r0, r6
0082d5a8  01 10 8f e0                                      add r1, pc, r1
0082d5ac  61 f7 ff eb                                      bl #0x82b338
0082d5b0  14 14 94 e5                                      ldr r1, [r4, #0x414]
0082d5b4  06 00 a0 e1                                      mov r0, r6
0082d5b8  5e f7 ff eb                                      bl #0x82b338
0082d5bc  06 00 a0 e1                                      mov r0, r6
0082d5c0  79 f6 ff eb                                      bl #0x82afac
0082d5c4  08 11 9f e5                                      ldr r1, [pc, #0x108]
0082d5c8  00 00 8d e5                                      str r0, [sp]
0082d5cc  0a 20 a0 e1                                      mov r2, sl
0082d5d0  01 10 8f e0                                      add r1, pc, r1
0082d5d4  08 00 a0 e1                                      mov r0, r8
0082d5d8  0b 30 a0 e1                                      mov r3, fp
0082d5dc  40 85 eb eb                                      bl #0x30eae4
0082d5e0  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082d5e4  00 00 50 e3                                      cmp r0, #0
0082d5e8  02 00 00 0a                                      beq #0x82d5f8
0082d5ec  2f 83 eb eb                                      bl #0x30e2b0
0082d5f0  00 30 a0 e3                                      mov r3, #0
0082d5f4  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082d5f8  08 00 a0 e1                                      mov r0, r8
0082d5fc  6a f6 ff eb                                      bl #0x82afac
0082d600  00 50 a0 e1                                      mov r5, r0
0082d604  06 00 a0 e1                                      mov r0, r6
0082d608  67 f6 ff eb                                      bl #0x82afac
0082d60c  05 50 80 e0                                      add r5, r0, r5
0082d610  01 a0 85 e2                                      add sl, r5, #1
0082d614  0a 00 a0 e1                                      mov r0, sl
0082d618  ac 82 eb eb                                      bl #0x30e0d0
0082d61c  0a 20 a0 e1                                      mov r2, sl
0082d620  1c 04 84 e5                                      str r0, [r4, #0x41c]
0082d624  00 10 a0 e3                                      mov r1, #0
0082d628  4d f7 ff eb                                      bl #0x82b364
0082d62c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0082d630  08 20 a0 e1                                      mov r2, r8
0082d634  06 30 a0 e1                                      mov r3, r6
0082d638  01 10 8f e0                                      add r1, pc, r1
0082d63c  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082d640  27 85 eb eb                                      bl #0x30eae4
0082d644  00 00 5b e3                                      cmp fp, #0
0082d648  20 54 84 e5                                      str r5, [r4, #0x420]
0082d64c  01 00 00 0a                                      beq #0x82d658
0082d650  0b 00 a0 e1                                      mov r0, fp
0082d654  15 83 eb eb                                      bl #0x30e2b0
0082d658  01 30 a0 e3                                      mov r3, #1
0082d65c  24 34 c4 e5                                      strb r3, [r4, #0x424]
0082d660  04 00 a0 e1                                      mov r0, r4
0082d664  00 30 94 e5                                      ldr r3, [r4]
0082d668  0f e0 a0 e1                                      mov lr, pc
0082d66c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0082d670  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d674  00 00 50 e3                                      cmp r0, #0
0082d678  02 00 00 0a                                      beq #0x82d688
0082d67c  0b 83 eb eb                                      bl #0x30e2b0
0082d680  00 30 a0 e3                                      mov r3, #0
0082d684  08 34 84 e5                                      str r3, [r4, #0x408]
0082d688  00 30 a0 e3                                      mov r3, #0
0082d68c  0c 34 84 e5                                      str r3, [r4, #0x40c]
0082d690  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0082d694  14 22 9d e5                                      ldr r2, [sp, #0x214]
0082d698  0c 30 97 e7                                      ldr r3, [r7, ip]
0082d69c  00 30 93 e5                                      ldr r3, [r3]
0082d6a0  03 00 52 e1                                      cmp r2, r3
0082d6a4  05 00 00 1a                                      bne #0x82d6c0
0082d6a8  87 df 8d e2                                      add sp, sp, #0x21c
0082d6ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082d6b0  24 00 9f e5                                      ldr r0, [pc, #0x24]
0082d6b4  00 00 8f e0                                      add r0, pc, r0
0082d6b8  31 f8 ff eb                                      bl #0x82b784
0082d6bc  f3 ff ff ea                                      b #0x82d690
0082d6c0  12 83 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082d6c4  3c 76 16 00 ac 40 00 00 ec f2 0d 00 08 f2 0d 00  .byte 0x3c, 0x76, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0xf2, 0x0d, 0x00, 0x08, 0xf2, 0x0d, 0x00
0082d6d4  e8 f1 0d 00 d0 34 09 00 cc f0 0d 00              .byte 0xe8, 0xf1, 0x0d, 0x00, 0xd0, 0x34, 0x09, 0x00, 0xcc, 0xf0, 0x0d, 0x00

; FUNCTION 0x0082d6e0, declared_size=716, range_size=716, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp15sendVideoByPostEPcS0_S0_RiS0_
; demangled: GLXPlayerHttp::sendVideoByPost(char*, char*, char*, int&, char*)
; decoder-mode: arm
0082d6e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082d6e4  a8 42 9f e5                                      ldr r4, [pc, #0x2a8]
0082d6e8  a8 c2 9f e5                                      ldr ip, [pc, #0x2a8]
0082d6ec  89 df 4d e2                                      sub sp, sp, #0x224
0082d6f0  04 40 8f e0                                      add r4, pc, r4
0082d6f4  10 c0 8d e5                                      str ip, [sp, #0x10]
0082d6f8  0c c0 94 e7                                      ldr ip, [r4, ip]
0082d6fc  47 7f 8d e2                                      add r7, sp, #0x11c
0082d700  1c 60 8d e2                                      add r6, sp, #0x1c
0082d704  00 c0 9c e5                                      ldr ip, [ip]
0082d708  01 b0 a0 e1                                      mov fp, r1
0082d70c  08 40 8d e5                                      str r4, [sp, #8]
0082d710  0c 20 8d e5                                      str r2, [sp, #0xc]
0082d714  00 40 a0 e1                                      mov r4, r0
0082d718  00 10 a0 e3                                      mov r1, #0
0082d71c  01 2c a0 e3                                      mov r2, #0x100
0082d720  07 00 a0 e1                                      mov r0, r7
0082d724  1c c2 8d e5                                      str ip, [sp, #0x21c]
0082d728  14 30 8d e5                                      str r3, [sp, #0x14]
0082d72c  48 52 9d e5                                      ldr r5, [sp, #0x248]
0082d730  4c 92 9d e5                                      ldr sb, [sp, #0x24c]
0082d734  49 83 eb eb                                      bl #0x30e460
0082d738  00 10 a0 e3                                      mov r1, #0
0082d73c  01 2c a0 e3                                      mov r2, #0x100
0082d740  06 00 a0 e1                                      mov r0, r6
0082d744  45 83 eb eb                                      bl #0x30e460
0082d748  07 00 a0 e1                                      mov r0, r7
0082d74c  00 10 a0 e3                                      mov r1, #0
0082d750  01 2c a0 e3                                      mov r2, #0x100
0082d754  02 f7 ff eb                                      bl #0x82b364
0082d758  06 00 a0 e1                                      mov r0, r6
0082d75c  01 2c a0 e3                                      mov r2, #0x100
0082d760  00 10 a0 e3                                      mov r1, #0
0082d764  fe f6 ff eb                                      bl #0x82b364
0082d768  2f 30 a0 e3                                      mov r3, #0x2f
0082d76c  07 10 a0 e1                                      mov r1, r7
0082d770  02 20 a0 e3                                      mov r2, #2
0082d774  0b 00 a0 e1                                      mov r0, fp
0082d778  15 f5 ff eb                                      bl #0x82abd4
0082d77c  00 10 a0 e3                                      mov r1, #0
0082d780  00 80 a0 e1                                      mov r8, r0
0082d784  01 2c a0 e3                                      mov r2, #0x100
0082d788  07 00 a0 e1                                      mov r0, r7
0082d78c  f4 f6 ff eb                                      bl #0x82b364
0082d790  0b 00 a0 e1                                      mov r0, fp
0082d794  04 f6 ff eb                                      bl #0x82afac
0082d798  08 10 8b e0                                      add r1, fp, r8
0082d79c  00 20 68 e0                                      rsb r2, r8, r0
0082d7a0  07 00 a0 e1                                      mov r0, r7
0082d7a4  e9 f6 ff eb                                      bl #0x82b350
0082d7a8  2f 30 a0 e3                                      mov r3, #0x2f
0082d7ac  06 10 a0 e1                                      mov r1, r6
0082d7b0  00 20 a0 e3                                      mov r2, #0
0082d7b4  07 00 a0 e1                                      mov r0, r7
0082d7b8  05 f5 ff eb                                      bl #0x82abd4
0082d7bc  07 00 a0 e1                                      mov r0, r7
0082d7c0  f9 f5 ff eb                                      bl #0x82afac
0082d7c4  06 00 a0 e1                                      mov r0, r6
0082d7c8  f7 f5 ff eb                                      bl #0x82afac
0082d7cc  01 a0 80 e2                                      add sl, r0, #1
0082d7d0  00 80 a0 e1                                      mov r8, r0
0082d7d4  0a 00 a0 e1                                      mov r0, sl
0082d7d8  3c 82 eb eb                                      bl #0x30e0d0
0082d7dc  0a 20 a0 e1                                      mov r2, sl
0082d7e0  00 70 a0 e1                                      mov r7, r0
0082d7e4  00 10 a0 e3                                      mov r1, #0
0082d7e8  dd f6 ff eb                                      bl #0x82b364
0082d7ec  07 00 a0 e1                                      mov r0, r7
0082d7f0  06 10 a0 e1                                      mov r1, r6
0082d7f4  08 20 a0 e1                                      mov r2, r8
0082d7f8  d4 f6 ff eb                                      bl #0x82b350
0082d7fc  1c 04 94 e5                                      ldr r0, [r4, #0x41c]
0082d800  00 00 50 e3                                      cmp r0, #0
0082d804  02 00 00 0a                                      beq #0x82d814
0082d808  2a 82 eb eb                                      bl #0x30e0b8
0082d80c  00 30 a0 e3                                      mov r3, #0
0082d810  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082d814  00 00 95 e5                                      ldr r0, [r5]
0082d818  7c a1 9f e5                                      ldr sl, [pc, #0x17c]
0082d81c  01 0b 80 e2                                      add r0, r0, #0x400
0082d820  2a 82 eb eb                                      bl #0x30e0d0
0082d824  1c 04 84 e5                                      str r0, [r4, #0x41c]
0082d828  00 20 95 e5                                      ldr r2, [r5]
0082d82c  00 10 a0 e3                                      mov r1, #0
0082d830  0a a0 8f e0                                      add sl, pc, sl
0082d834  01 2b 82 e2                                      add r2, r2, #0x400
0082d838  c9 f6 ff eb                                      bl #0x82b364
0082d83c  00 00 95 e5                                      ldr r0, [r5]
0082d840  01 0b 80 e2                                      add r0, r0, #0x400
0082d844  21 82 eb eb                                      bl #0x30e0d0
0082d848  00 20 95 e5                                      ldr r2, [r5]
0082d84c  00 10 a0 e3                                      mov r1, #0
0082d850  00 60 a0 e1                                      mov r6, r0
0082d854  01 2b 82 e2                                      add r2, r2, #0x400
0082d858  c1 f6 ff eb                                      bl #0x82b364
0082d85c  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
0082d860  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0082d864  01 10 8f e0                                      add r1, pc, r1
0082d868  b2 f6 ff eb                                      bl #0x82b338
0082d86c  14 14 94 e5                                      ldr r1, [r4, #0x414]
0082d870  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0082d874  af f6 ff eb                                      bl #0x82b338
0082d878  24 11 9f e5                                      ldr r1, [pc, #0x124]
0082d87c  09 20 a0 e1                                      mov r2, sb
0082d880  06 00 a0 e1                                      mov r0, r6
0082d884  01 10 8f e0                                      add r1, pc, r1
0082d888  95 84 eb eb                                      bl #0x30eae4
0082d88c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0082d890  00 90 a0 e1                                      mov sb, r0
0082d894  00 20 95 e5                                      ldr r2, [r5]
0082d898  00 00 86 e0                                      add r0, r6, r0
0082d89c  ab f6 ff eb                                      bl #0x82b350
0082d8a0  00 00 95 e5                                      ldr r0, [r5]
0082d8a4  0a 10 a0 e1                                      mov r1, sl
0082d8a8  1c 20 a0 e3                                      mov r2, #0x1c
0082d8ac  00 00 89 e0                                      add r0, sb, r0
0082d8b0  00 00 86 e0                                      add r0, r6, r0
0082d8b4  a5 f6 ff eb                                      bl #0x82b350
0082d8b8  0a 00 a0 e1                                      mov r0, sl
0082d8bc  00 a0 95 e5                                      ldr sl, [r5]
0082d8c0  b9 f5 ff eb                                      bl #0x82afac
0082d8c4  1c c4 94 e5                                      ldr ip, [r4, #0x41c]
0082d8c8  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0082d8cc  00 80 89 e0                                      add r8, sb, r0
0082d8d0  0a 80 88 e0                                      add r8, r8, sl
0082d8d4  01 10 8f e0                                      add r1, pc, r1
0082d8d8  0b 20 a0 e1                                      mov r2, fp
0082d8dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0082d8e0  0c 00 a0 e1                                      mov r0, ip
0082d8e4  80 01 8d e8                                      stm sp, {r7, r8}
0082d8e8  7d 84 eb eb                                      bl #0x30eae4
0082d8ec  00 00 85 e5                                      str r0, [r5]
0082d8f0  1c 34 94 e5                                      ldr r3, [r4, #0x41c]
0082d8f4  08 20 a0 e1                                      mov r2, r8
0082d8f8  06 10 a0 e1                                      mov r1, r6
0082d8fc  00 00 83 e0                                      add r0, r3, r0
0082d900  92 f6 ff eb                                      bl #0x82b350
0082d904  00 30 95 e5                                      ldr r3, [r5]
0082d908  00 00 56 e3                                      cmp r6, #0
0082d90c  03 80 88 e0                                      add r8, r8, r3
0082d910  00 80 85 e5                                      str r8, [r5]
0082d914  20 84 84 e5                                      str r8, [r4, #0x420]
0082d918  01 00 00 0a                                      beq #0x82d924
0082d91c  06 00 a0 e1                                      mov r0, r6
0082d920  e4 81 eb eb                                      bl #0x30e0b8
0082d924  00 00 57 e3                                      cmp r7, #0
0082d928  01 00 00 0a                                      beq #0x82d934
0082d92c  07 00 a0 e1                                      mov r0, r7
0082d930  5e 82 eb eb                                      bl #0x30e2b0
0082d934  01 30 a0 e3                                      mov r3, #1
0082d938  24 34 c4 e5                                      strb r3, [r4, #0x424]
0082d93c  04 00 a0 e1                                      mov r0, r4
0082d940  00 30 94 e5                                      ldr r3, [r4]
0082d944  0f e0 a0 e1                                      mov lr, pc
0082d948  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0082d94c  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082d950  00 00 50 e3                                      cmp r0, #0
0082d954  02 00 00 0a                                      beq #0x82d964
0082d958  54 82 eb eb                                      bl #0x30e2b0
0082d95c  00 30 a0 e3                                      mov r3, #0
0082d960  08 34 84 e5                                      str r3, [r4, #0x408]
0082d964  08 20 9d e5                                      ldr r2, [sp, #8]
0082d968  10 10 9d e5                                      ldr r1, [sp, #0x10]
0082d96c  01 30 92 e7                                      ldr r3, [r2, r1]
0082d970  00 20 a0 e3                                      mov r2, #0
0082d974  0c 24 84 e5                                      str r2, [r4, #0x40c]
0082d978  1c 22 9d e5                                      ldr r2, [sp, #0x21c]
0082d97c  00 30 93 e5                                      ldr r3, [r3]
0082d980  03 00 52 e1                                      cmp r2, r3
0082d984  01 00 00 1a                                      bne #0x82d990
0082d988  89 df 8d e2                                      add sp, sp, #0x224
0082d98c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082d990  5e 82 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082d994  a0 73 16 00 ac 40 00 00 60 f0 0d 00 4c ef 0d 00  .byte 0xa0, 0x73, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0xf0, 0x0d, 0x00, 0x4c, 0xef, 0x0d, 0x00
0082d9a4  9c ef 0d 00 dc ef 0d 00                          .byte 0x9c, 0xef, 0x0d, 0x00, 0xdc, 0xef, 0x0d, 0x00

; FUNCTION 0x0082d9ac, declared_size=656, range_size=656, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp9sendByGetEPcS0_
; demangled: GLXPlayerHttp::sendByGet(char*, char*)
; decoder-mode: arm
0082d9ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082d9b0  5c 62 9f e5                                      ldr r6, [pc, #0x25c]
0082d9b4  5c 92 9f e5                                      ldr sb, [pc, #0x25c]
0082d9b8  00 40 a0 e1                                      mov r4, r0
0082d9bc  06 60 8f e0                                      add r6, pc, r6
0082d9c0  09 30 96 e7                                      ldr r3, [r6, sb]
0082d9c4  50 02 9f e5                                      ldr r0, [pc, #0x250]
0082d9c8  85 df 4d e2                                      sub sp, sp, #0x214
0082d9cc  00 30 93 e5                                      ldr r3, [r3]
0082d9d0  01 80 a0 e1                                      mov r8, r1
0082d9d4  02 b0 a0 e1                                      mov fp, r2
0082d9d8  00 00 8f e0                                      add r0, pc, r0
0082d9dc  0c 32 8d e5                                      str r3, [sp, #0x20c]
0082d9e0  67 f7 ff eb                                      bl #0x82b784
0082d9e4  00 00 58 e3                                      cmp r8, #0
0082d9e8  00 00 5b 13                                      cmpne fp, #0
0082d9ec  00 50 a0 13                                      movne r5, #0
0082d9f0  01 50 a0 03                                      moveq r5, #1
0082d9f4  81 00 00 0a                                      beq #0x82dc00
0082d9f8  43 7f 8d e2                                      add r7, sp, #0x10c
0082d9fc  0c a0 8d e2                                      add sl, sp, #0xc
0082da00  05 10 a0 e1                                      mov r1, r5
0082da04  01 2c a0 e3                                      mov r2, #0x100
0082da08  07 00 a0 e1                                      mov r0, r7
0082da0c  93 82 eb eb                                      bl #0x30e460
0082da10  01 2c a0 e3                                      mov r2, #0x100
0082da14  0a 00 a0 e1                                      mov r0, sl
0082da18  05 10 a0 e1                                      mov r1, r5
0082da1c  8f 82 eb eb                                      bl #0x30e460
0082da20  07 00 a0 e1                                      mov r0, r7
0082da24  05 10 a0 e1                                      mov r1, r5
0082da28  01 2c a0 e3                                      mov r2, #0x100
0082da2c  4c f6 ff eb                                      bl #0x82b364
0082da30  0a 00 a0 e1                                      mov r0, sl
0082da34  05 10 a0 e1                                      mov r1, r5
0082da38  01 2c a0 e3                                      mov r2, #0x100
0082da3c  48 f6 ff eb                                      bl #0x82b364
0082da40  07 10 a0 e1                                      mov r1, r7
0082da44  2f 30 a0 e3                                      mov r3, #0x2f
0082da48  02 20 a0 e3                                      mov r2, #2
0082da4c  08 00 a0 e1                                      mov r0, r8
0082da50  5f f4 ff eb                                      bl #0x82abd4
0082da54  05 10 a0 e1                                      mov r1, r5
0082da58  00 30 a0 e1                                      mov r3, r0
0082da5c  01 2c a0 e3                                      mov r2, #0x100
0082da60  07 00 a0 e1                                      mov r0, r7
0082da64  00 30 8d e5                                      str r3, [sp]
0082da68  3d f6 ff eb                                      bl #0x82b364
0082da6c  08 00 a0 e1                                      mov r0, r8
0082da70  4d f5 ff eb                                      bl #0x82afac
0082da74  00 30 9d e5                                      ldr r3, [sp]
0082da78  00 20 63 e0                                      rsb r2, r3, r0
0082da7c  03 10 88 e0                                      add r1, r8, r3
0082da80  07 00 a0 e1                                      mov r0, r7
0082da84  31 f6 ff eb                                      bl #0x82b350
0082da88  0a 10 a0 e1                                      mov r1, sl
0082da8c  05 20 a0 e1                                      mov r2, r5
0082da90  2f 30 a0 e3                                      mov r3, #0x2f
0082da94  07 00 a0 e1                                      mov r0, r7
0082da98  4d f4 ff eb                                      bl #0x82abd4
0082da9c  07 00 a0 e1                                      mov r0, r7
0082daa0  41 f5 ff eb                                      bl #0x82afac
0082daa4  0a 00 a0 e1                                      mov r0, sl
0082daa8  3f f5 ff eb                                      bl #0x82afac
0082daac  01 20 80 e2                                      add r2, r0, #1
0082dab0  00 30 a0 e1                                      mov r3, r0
0082dab4  02 00 a0 e1                                      mov r0, r2
0082dab8  00 30 8d e5                                      str r3, [sp]
0082dabc  04 20 8d e5                                      str r2, [sp, #4]
0082dac0  82 81 eb eb                                      bl #0x30e0d0
0082dac4  05 10 a0 e1                                      mov r1, r5
0082dac8  04 20 9d e5                                      ldr r2, [sp, #4]
0082dacc  00 70 a0 e1                                      mov r7, r0
0082dad0  23 f6 ff eb                                      bl #0x82b364
0082dad4  00 30 9d e5                                      ldr r3, [sp]
0082dad8  0a 10 a0 e1                                      mov r1, sl
0082dadc  07 00 a0 e1                                      mov r0, r7
0082dae0  03 20 a0 e1                                      mov r2, r3
0082dae4  08 a0 84 e2                                      add sl, r4, #8
0082dae8  18 f6 ff eb                                      bl #0x82b350
0082daec  0a 00 a0 e1                                      mov r0, sl
0082daf0  05 10 a0 e1                                      mov r1, r5
0082daf4  01 2b a0 e3                                      mov r2, #0x400
0082daf8  19 f6 ff eb                                      bl #0x82b364
0082dafc  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082db00  00 00 50 e3                                      cmp r0, #0
0082db04  01 00 00 0a                                      beq #0x82db10
0082db08  e8 81 eb eb                                      bl #0x30e2b0
0082db0c  08 54 84 e5                                      str r5, [r4, #0x408]
0082db10  08 11 9f e5                                      ldr r1, [pc, #0x108]
0082db14  0a 00 a0 e1                                      mov r0, sl
0082db18  01 10 8f e0                                      add r1, pc, r1
0082db1c  07 f6 ff eb                                      bl #0x82b340
0082db20  08 10 a0 e1                                      mov r1, r8
0082db24  0a 00 a0 e1                                      mov r0, sl
0082db28  02 f6 ff eb                                      bl #0x82b338
0082db2c  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0082db30  0a 00 a0 e1                                      mov r0, sl
0082db34  01 10 8f e0                                      add r1, pc, r1
0082db38  fe f5 ff eb                                      bl #0x82b338
0082db3c  0b 10 a0 e1                                      mov r1, fp
0082db40  0a 00 a0 e1                                      mov r0, sl
0082db44  fb f5 ff eb                                      bl #0x82b338
0082db48  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0082db4c  0a 00 a0 e1                                      mov r0, sl
0082db50  01 10 8f e0                                      add r1, pc, r1
0082db54  f7 f5 ff eb                                      bl #0x82b338
0082db58  14 14 94 e5                                      ldr r1, [r4, #0x414]
0082db5c  0a 00 a0 e1                                      mov r0, sl
0082db60  f4 f5 ff eb                                      bl #0x82b338
0082db64  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0082db68  0a 00 a0 e1                                      mov r0, sl
0082db6c  01 10 8f e0                                      add r1, pc, r1
0082db70  f0 f5 ff eb                                      bl #0x82b338
0082db74  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0082db78  0a 00 a0 e1                                      mov r0, sl
0082db7c  01 10 8f e0                                      add r1, pc, r1
0082db80  ec f5 ff eb                                      bl #0x82b338
0082db84  07 10 a0 e1                                      mov r1, r7
0082db88  0a 00 a0 e1                                      mov r0, sl
0082db8c  e9 f5 ff eb                                      bl #0x82b338
0082db90  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0082db94  0a 00 a0 e1                                      mov r0, sl
0082db98  01 10 8f e0                                      add r1, pc, r1
0082db9c  e5 f5 ff eb                                      bl #0x82b338
0082dba0  00 00 57 e3                                      cmp r7, #0
0082dba4  01 00 00 0a                                      beq #0x82dbb0
0082dba8  07 00 a0 e1                                      mov r0, r7
0082dbac  bf 81 eb eb                                      bl #0x30e2b0
0082dbb0  00 50 a0 e3                                      mov r5, #0
0082dbb4  04 00 a0 e1                                      mov r0, r4
0082dbb8  24 54 c4 e5                                      strb r5, [r4, #0x424]
0082dbbc  00 30 94 e5                                      ldr r3, [r4]
0082dbc0  0f e0 a0 e1                                      mov lr, pc
0082dbc4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0082dbc8  08 04 94 e5                                      ldr r0, [r4, #0x408]
0082dbcc  05 00 50 e1                                      cmp r0, r5
0082dbd0  01 00 00 0a                                      beq #0x82dbdc
0082dbd4  b5 81 eb eb                                      bl #0x30e2b0
0082dbd8  08 54 84 e5                                      str r5, [r4, #0x408]
0082dbdc  00 30 a0 e3                                      mov r3, #0
0082dbe0  0c 34 84 e5                                      str r3, [r4, #0x40c]
0082dbe4  09 30 96 e7                                      ldr r3, [r6, sb]
0082dbe8  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0082dbec  00 30 93 e5                                      ldr r3, [r3]
0082dbf0  03 00 52 e1                                      cmp r2, r3
0082dbf4  05 00 00 1a                                      bne #0x82dc10
0082dbf8  85 df 8d e2                                      add sp, sp, #0x214
0082dbfc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082dc00  30 00 9f e5                                      ldr r0, [pc, #0x30]
0082dc04  00 00 8f e0                                      add r0, pc, r0
0082dc08  dd f6 ff eb                                      bl #0x82b784
0082dc0c  f4 ff ff ea                                      b #0x82dbe4
0082dc10  be 81 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082dc14  d4 70 16 00 ac 40 00 00 90 ef 0d 00 90 eb 0d 00  .byte 0xd4, 0x70, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0xef, 0x0d, 0x00, 0x90, 0xeb, 0x0d, 0x00
0082dc24  44 4f 0c 00 60 ec 0d 00 4c ee 0d 00 4c ee 0d 00  .byte 0x44, 0x4f, 0x0c, 0x00, 0x60, 0xec, 0x0d, 0x00, 0x4c, 0xee, 0x0d, 0x00, 0x4c, 0xee, 0x0d, 0x00
0082dc34  c8 ed 0d 00 84 ed 0d 00                          .byte 0xc8, 0xed, 0x0d, 0x00, 0x84, 0xed, 0x0d, 0x00

; FUNCTION 0x0082dc3c, declared_size=624, range_size=624, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttp18sendByGetWithNoVerEPcS0_
; demangled: GLXPlayerHttp::sendByGetWithNoVer(char*, char*)
; decoder-mode: arm
0082dc3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082dc40  40 62 9f e5                                      ldr r6, [pc, #0x240]
0082dc44  40 92 9f e5                                      ldr sb, [pc, #0x240]
0082dc48  00 50 a0 e1                                      mov r5, r0
0082dc4c  06 60 8f e0                                      add r6, pc, r6
0082dc50  09 30 96 e7                                      ldr r3, [r6, sb]
0082dc54  34 02 9f e5                                      ldr r0, [pc, #0x234]
0082dc58  85 df 4d e2                                      sub sp, sp, #0x214
0082dc5c  00 30 93 e5                                      ldr r3, [r3]
0082dc60  01 80 a0 e1                                      mov r8, r1
0082dc64  02 b0 a0 e1                                      mov fp, r2
0082dc68  00 00 8f e0                                      add r0, pc, r0
0082dc6c  0c 32 8d e5                                      str r3, [sp, #0x20c]
0082dc70  c3 f6 ff eb                                      bl #0x82b784
0082dc74  00 00 58 e3                                      cmp r8, #0
0082dc78  00 00 5b 13                                      cmpne fp, #0
0082dc7c  00 40 a0 13                                      movne r4, #0
0082dc80  01 40 a0 03                                      moveq r4, #1
0082dc84  7a 00 00 0a                                      beq #0x82de74
0082dc88  43 7f 8d e2                                      add r7, sp, #0x10c
0082dc8c  0c a0 8d e2                                      add sl, sp, #0xc
0082dc90  04 10 a0 e1                                      mov r1, r4
0082dc94  01 2c a0 e3                                      mov r2, #0x100
0082dc98  07 00 a0 e1                                      mov r0, r7
0082dc9c  ef 81 eb eb                                      bl #0x30e460
0082dca0  01 2c a0 e3                                      mov r2, #0x100
0082dca4  0a 00 a0 e1                                      mov r0, sl
0082dca8  04 10 a0 e1                                      mov r1, r4
0082dcac  eb 81 eb eb                                      bl #0x30e460
0082dcb0  07 00 a0 e1                                      mov r0, r7
0082dcb4  04 10 a0 e1                                      mov r1, r4
0082dcb8  01 2c a0 e3                                      mov r2, #0x100
0082dcbc  a8 f5 ff eb                                      bl #0x82b364
0082dcc0  0a 00 a0 e1                                      mov r0, sl
0082dcc4  04 10 a0 e1                                      mov r1, r4
0082dcc8  01 2c a0 e3                                      mov r2, #0x100
0082dccc  a4 f5 ff eb                                      bl #0x82b364
0082dcd0  07 10 a0 e1                                      mov r1, r7
0082dcd4  2f 30 a0 e3                                      mov r3, #0x2f
0082dcd8  02 20 a0 e3                                      mov r2, #2
0082dcdc  08 00 a0 e1                                      mov r0, r8
0082dce0  bb f3 ff eb                                      bl #0x82abd4
0082dce4  04 10 a0 e1                                      mov r1, r4
0082dce8  00 30 a0 e1                                      mov r3, r0
0082dcec  01 2c a0 e3                                      mov r2, #0x100
0082dcf0  07 00 a0 e1                                      mov r0, r7
0082dcf4  00 30 8d e5                                      str r3, [sp]
0082dcf8  99 f5 ff eb                                      bl #0x82b364
0082dcfc  08 00 a0 e1                                      mov r0, r8
0082dd00  a9 f4 ff eb                                      bl #0x82afac
0082dd04  00 30 9d e5                                      ldr r3, [sp]
0082dd08  00 20 63 e0                                      rsb r2, r3, r0
0082dd0c  03 10 88 e0                                      add r1, r8, r3
0082dd10  07 00 a0 e1                                      mov r0, r7
0082dd14  8d f5 ff eb                                      bl #0x82b350
0082dd18  0a 10 a0 e1                                      mov r1, sl
0082dd1c  04 20 a0 e1                                      mov r2, r4
0082dd20  2f 30 a0 e3                                      mov r3, #0x2f
0082dd24  07 00 a0 e1                                      mov r0, r7
0082dd28  a9 f3 ff eb                                      bl #0x82abd4
0082dd2c  07 00 a0 e1                                      mov r0, r7
0082dd30  9d f4 ff eb                                      bl #0x82afac
0082dd34  0a 00 a0 e1                                      mov r0, sl
0082dd38  9b f4 ff eb                                      bl #0x82afac
0082dd3c  01 20 80 e2                                      add r2, r0, #1
0082dd40  00 30 a0 e1                                      mov r3, r0
0082dd44  02 00 a0 e1                                      mov r0, r2
0082dd48  00 30 8d e5                                      str r3, [sp]
0082dd4c  04 20 8d e5                                      str r2, [sp, #4]
0082dd50  de 80 eb eb                                      bl #0x30e0d0
0082dd54  04 10 a0 e1                                      mov r1, r4
0082dd58  04 20 9d e5                                      ldr r2, [sp, #4]
0082dd5c  00 70 a0 e1                                      mov r7, r0
0082dd60  7f f5 ff eb                                      bl #0x82b364
0082dd64  00 30 9d e5                                      ldr r3, [sp]
0082dd68  0a 10 a0 e1                                      mov r1, sl
0082dd6c  07 00 a0 e1                                      mov r0, r7
0082dd70  03 20 a0 e1                                      mov r2, r3
0082dd74  08 a0 85 e2                                      add sl, r5, #8
0082dd78  74 f5 ff eb                                      bl #0x82b350
0082dd7c  0a 00 a0 e1                                      mov r0, sl
0082dd80  04 10 a0 e1                                      mov r1, r4
0082dd84  01 2b a0 e3                                      mov r2, #0x400
0082dd88  75 f5 ff eb                                      bl #0x82b364
0082dd8c  08 04 95 e5                                      ldr r0, [r5, #0x408]
0082dd90  00 00 50 e3                                      cmp r0, #0
0082dd94  01 00 00 0a                                      beq #0x82dda0
0082dd98  44 81 eb eb                                      bl #0x30e2b0
0082dd9c  08 44 85 e5                                      str r4, [r5, #0x408]
0082dda0  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0082dda4  0a 00 a0 e1                                      mov r0, sl
0082dda8  01 10 8f e0                                      add r1, pc, r1
0082ddac  63 f5 ff eb                                      bl #0x82b340
0082ddb0  08 10 a0 e1                                      mov r1, r8
0082ddb4  0a 00 a0 e1                                      mov r0, sl
0082ddb8  5e f5 ff eb                                      bl #0x82b338
0082ddbc  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0082ddc0  0a 00 a0 e1                                      mov r0, sl
0082ddc4  01 10 8f e0                                      add r1, pc, r1
0082ddc8  5a f5 ff eb                                      bl #0x82b338
0082ddcc  0b 10 a0 e1                                      mov r1, fp
0082ddd0  0a 00 a0 e1                                      mov r0, sl
0082ddd4  57 f5 ff eb                                      bl #0x82b338
0082ddd8  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0082dddc  0a 00 a0 e1                                      mov r0, sl
0082dde0  01 10 8f e0                                      add r1, pc, r1
0082dde4  53 f5 ff eb                                      bl #0x82b338
0082dde8  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0082ddec  0a 00 a0 e1                                      mov r0, sl
0082ddf0  01 10 8f e0                                      add r1, pc, r1
0082ddf4  4f f5 ff eb                                      bl #0x82b338
0082ddf8  07 10 a0 e1                                      mov r1, r7
0082ddfc  0a 00 a0 e1                                      mov r0, sl
0082de00  4c f5 ff eb                                      bl #0x82b338
0082de04  98 10 9f e5                                      ldr r1, [pc, #0x98]
0082de08  0a 00 a0 e1                                      mov r0, sl
0082de0c  01 10 8f e0                                      add r1, pc, r1
0082de10  48 f5 ff eb                                      bl #0x82b338
0082de14  00 00 57 e3                                      cmp r7, #0
0082de18  01 00 00 0a                                      beq #0x82de24
0082de1c  07 00 a0 e1                                      mov r0, r7
0082de20  22 81 eb eb                                      bl #0x30e2b0
0082de24  00 40 a0 e3                                      mov r4, #0
0082de28  05 00 a0 e1                                      mov r0, r5
0082de2c  24 44 c5 e5                                      strb r4, [r5, #0x424]
0082de30  00 30 95 e5                                      ldr r3, [r5]
0082de34  0f e0 a0 e1                                      mov lr, pc
0082de38  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0082de3c  08 04 95 e5                                      ldr r0, [r5, #0x408]
0082de40  04 00 50 e1                                      cmp r0, r4
0082de44  01 00 00 0a                                      beq #0x82de50
0082de48  18 81 eb eb                                      bl #0x30e2b0
0082de4c  08 44 85 e5                                      str r4, [r5, #0x408]
0082de50  00 30 a0 e3                                      mov r3, #0
0082de54  0c 34 85 e5                                      str r3, [r5, #0x40c]
0082de58  09 30 96 e7                                      ldr r3, [r6, sb]
0082de5c  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0082de60  00 30 93 e5                                      ldr r3, [r3]
0082de64  03 00 52 e1                                      cmp r2, r3
0082de68  05 00 00 1a                                      bne #0x82de84
0082de6c  85 df 8d e2                                      add sp, sp, #0x214
0082de70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082de74  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0082de78  00 00 8f e0                                      add r0, pc, r0
0082de7c  40 f6 ff eb                                      bl #0x82b784
0082de80  f4 ff ff ea                                      b #0x82de58
0082de84  21 81 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082de88  44 6e 16 00 ac 40 00 00 00 ed 0d 00 00 e9 0d 00  .byte 0x44, 0x6e, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0xed, 0x0d, 0x00, 0x00, 0xe9, 0x0d, 0x00
0082de98  b4 4c 0c 00 d8 eb 0d 00 d8 eb 0d 00 54 eb 0d 00  .byte 0xb4, 0x4c, 0x0c, 0x00, 0xd8, 0xeb, 0x0d, 0x00, 0xd8, 0xeb, 0x0d, 0x00, 0x54, 0xeb, 0x0d, 0x00
0082dea8  10 eb 0d 00                                      .byte 0x10, 0xeb, 0x0d, 0x00

; FUNCTION 0x0082deac, declared_size=168, range_size=168, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttpC1EPcS0_S0_
; demangled: GLXPlayerHttp::GLXPlayerHttp(char*, char*, char*)
; decoder-mode: arm
0082deac  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0082deb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082deb4  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0082deb8  0c c0 8f e0                                      add ip, pc, ip
0082debc  00 50 51 e2                                      subs r5, r1, #0
0082dec0  0e e0 9c e7                                      ldr lr, [ip, lr]
0082dec4  00 40 a0 e1                                      mov r4, r0
0082dec8  02 60 a0 e1                                      mov r6, r2
0082decc  08 e0 8e e2                                      add lr, lr, #8
0082ded0  00 e0 80 e5                                      str lr, [r0]
0082ded4  03 70 a0 e1                                      mov r7, r3
0082ded8  10 54 80 05                                      streq r5, [r0, #0x410]
0082dedc  02 00 00 0a                                      beq #0x82deec
0082dee0  05 00 a0 e1                                      mov r0, r5
0082dee4  ad f6 ff eb                                      bl #0x82b9a0
0082dee8  10 04 84 e5                                      str r0, [r4, #0x410]
0082deec  00 00 56 e3                                      cmp r6, #0
0082def0  14 64 84 05                                      streq r6, [r4, #0x414]
0082def4  02 00 00 0a                                      beq #0x82df04
0082def8  06 00 a0 e1                                      mov r0, r6
0082defc  a7 f6 ff eb                                      bl #0x82b9a0
0082df00  14 04 84 e5                                      str r0, [r4, #0x414]
0082df04  00 00 57 e3                                      cmp r7, #0
0082df08  18 74 84 05                                      streq r7, [r4, #0x418]
0082df0c  02 00 00 0a                                      beq #0x82df1c
0082df10  07 00 a0 e1                                      mov r0, r7
0082df14  a1 f6 ff eb                                      bl #0x82b9a0
0082df18  18 04 84 e5                                      str r0, [r4, #0x418]
0082df1c  05 00 a0 e1                                      mov r0, r5
0082df20  50 10 a0 e3                                      mov r1, #0x50
0082df24  04 20 a0 e1                                      mov r2, r4
0082df28  7e 0d 00 eb                                      bl #0x831528
0082df2c  00 30 a0 e3                                      mov r3, #0
0082df30  04 00 84 e5                                      str r0, [r4, #4]
0082df34  0c 34 84 e5                                      str r3, [r4, #0x40c]
0082df38  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082df3c  20 34 84 e5                                      str r3, [r4, #0x420]
0082df40  08 34 84 e5                                      str r3, [r4, #0x408]
0082df44  04 00 a0 e1                                      mov r0, r4
0082df48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082df4c  d8 6b 16 00 bc 15 00 00                          .byte 0xd8, 0x6b, 0x16, 0x00, 0xbc, 0x15, 0x00, 0x00

; FUNCTION 0x0082df54, declared_size=168, range_size=168, mode=arm
; class-group: GLXPlayerHttp
; alias: _ZN13GLXPlayerHttpC2EPcS0_S0_
; demangled: GLXPlayerHttp::GLXPlayerHttp(char*, char*, char*)
; decoder-mode: arm
0082df54  98 c0 9f e5                                      ldr ip, [pc, #0x98]
0082df58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082df5c  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0082df60  0c c0 8f e0                                      add ip, pc, ip
0082df64  00 50 51 e2                                      subs r5, r1, #0
0082df68  0e e0 9c e7                                      ldr lr, [ip, lr]
0082df6c  00 40 a0 e1                                      mov r4, r0
0082df70  02 60 a0 e1                                      mov r6, r2
0082df74  08 e0 8e e2                                      add lr, lr, #8
0082df78  00 e0 80 e5                                      str lr, [r0]
0082df7c  03 70 a0 e1                                      mov r7, r3
0082df80  10 54 80 05                                      streq r5, [r0, #0x410]
0082df84  02 00 00 0a                                      beq #0x82df94
0082df88  05 00 a0 e1                                      mov r0, r5
0082df8c  83 f6 ff eb                                      bl #0x82b9a0
0082df90  10 04 84 e5                                      str r0, [r4, #0x410]
0082df94  00 00 56 e3                                      cmp r6, #0
0082df98  14 64 84 05                                      streq r6, [r4, #0x414]
0082df9c  02 00 00 0a                                      beq #0x82dfac
0082dfa0  06 00 a0 e1                                      mov r0, r6
0082dfa4  7d f6 ff eb                                      bl #0x82b9a0
0082dfa8  14 04 84 e5                                      str r0, [r4, #0x414]
0082dfac  00 00 57 e3                                      cmp r7, #0
0082dfb0  18 74 84 05                                      streq r7, [r4, #0x418]
0082dfb4  02 00 00 0a                                      beq #0x82dfc4
0082dfb8  07 00 a0 e1                                      mov r0, r7
0082dfbc  77 f6 ff eb                                      bl #0x82b9a0
0082dfc0  18 04 84 e5                                      str r0, [r4, #0x418]
0082dfc4  05 00 a0 e1                                      mov r0, r5
0082dfc8  50 10 a0 e3                                      mov r1, #0x50
0082dfcc  04 20 a0 e1                                      mov r2, r4
0082dfd0  54 0d 00 eb                                      bl #0x831528
0082dfd4  00 30 a0 e3                                      mov r3, #0
0082dfd8  04 00 84 e5                                      str r0, [r4, #4]
0082dfdc  0c 34 84 e5                                      str r3, [r4, #0x40c]
0082dfe0  1c 34 84 e5                                      str r3, [r4, #0x41c]
0082dfe4  20 34 84 e5                                      str r3, [r4, #0x420]
0082dfe8  08 34 84 e5                                      str r3, [r4, #0x408]
0082dfec  04 00 a0 e1                                      mov r0, r4
0082dff0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0082dff4  30 6b 16 00 bc 15 00 00                          .byte 0x30, 0x6b, 0x16, 0x00, 0xbc, 0x15, 0x00, 0x00
