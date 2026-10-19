; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080f074, declared_size=4, range_size=4, mode=arm
; class-group: CNetLog
; alias: _ZN7CNetLogD1Ev
; demangled: CNetLog::~CNetLog()
; decoder-mode: arm
0080f074  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080f078, declared_size=4, range_size=4, mode=arm
; class-group: CNetLog
; alias: _ZN7CNetLog6UpdateEv
; demangled: CNetLog::Update()
; decoder-mode: arm
0080f078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0080f07c, declared_size=28, range_size=28, mode=arm
; class-group: CNetLog
; alias: _ZN7CNetLog11GetInstanceEv
; demangled: CNetLog::GetInstance()
; decoder-mode: arm
0080f07c  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0080f080  0c 20 9f e5                                      ldr r2, [pc, #0xc]
0080f084  03 30 8f e0                                      add r3, pc, r3
0080f088  02 00 93 e7                                      ldr r0, [r3, r2]
0080f08c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0080f090  0c 5a 18 00 d4 14 00 00                          .byte 0x0c, 0x5a, 0x18, 0x00, 0xd4, 0x14, 0x00, 0x00

; FUNCTION 0x0080f0f0, declared_size=52, range_size=52, mode=arm
; class-group: CNetLog
; alias: _ZN7CNetLogD0Ev
; demangled: CNetLog::~CNetLog()
; decoder-mode: arm
0080f0f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0080f0f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0080f0f8  10 40 2d e9                                      push {r4, lr}
0080f0fc  03 30 8f e0                                      add r3, pc, r3
0080f100  02 20 93 e7                                      ldr r2, [r3, r2]
0080f104  00 40 a0 e1                                      mov r4, r0
0080f108  08 20 82 e2                                      add r2, r2, #8
0080f10c  00 20 80 e5                                      str r2, [r0]
0080f110  ca 04 ec eb                                      bl #0x310440
0080f114  04 00 a0 e1                                      mov r0, r4
0080f118  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0080f11c  94 59 18 00 64 48 00 00                          .byte 0x94, 0x59, 0x18, 0x00, 0x64, 0x48, 0x00, 0x00
