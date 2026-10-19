; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00821254, declared_size=44, range_size=44, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserverC2Ev
; demangled: CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver()
; decoder-mode: arm
00821254  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00821258  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0082125c  00 c0 a0 e3                                      mov ip, #0
00821260  03 30 8f e0                                      add r3, pc, r3
00821264  02 20 93 e7                                      ldr r2, [r3, r2]
00821268  04 c0 c0 e5                                      strb ip, [r0, #4]
0082126c  08 20 82 e2                                      add r2, r2, #8
00821270  00 20 80 e5                                      str r2, [r0]
00821274  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00821278  30 38 17 00 80 29 00 00                          .byte 0x30, 0x38, 0x17, 0x00, 0x80, 0x29, 0x00, 0x00

; FUNCTION 0x00821280, declared_size=44, range_size=44, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserverC1Ev
; demangled: CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver()
; decoder-mode: arm
00821280  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00821284  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00821288  00 c0 a0 e3                                      mov ip, #0
0082128c  03 30 8f e0                                      add r3, pc, r3
00821290  02 20 93 e7                                      ldr r2, [r3, r2]
00821294  04 c0 c0 e5                                      strb ip, [r0, #4]
00821298  08 20 82 e2                                      add r2, r2, #8
0082129c  00 20 80 e5                                      str r2, [r0]
008212a0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008212a4  04 38 17 00 80 29 00 00                          .byte 0x04, 0x38, 0x17, 0x00, 0x80, 0x29, 0x00, 0x00

; FUNCTION 0x008212ac, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserverD2Ev
; demangled: CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver()
; decoder-mode: arm
008212ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x008212b0, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserverD1Ev
; demangled: CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver()
; decoder-mode: arm
008212b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008212b4, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserver14OnNetworkErrorEv
; demangled: CMatchingGLLiveFriendObserver::OnNetworkError()
; decoder-mode: arm
008212b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008212b8, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserver16OnRequestTimeoutEi
; demangled: CMatchingGLLiveFriendObserver::OnRequestTimeout(int)
; decoder-mode: arm
008212b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008212bc, declared_size=16, range_size=16, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserver16OnRequestSuccessEiPci
; demangled: CMatchingGLLiveFriendObserver::OnRequestSuccess(int, char*, int)
; decoder-mode: arm
008212bc  3d 00 51 e3                                      cmp r1, #0x3d
008212c0  01 30 a0 03                                      moveq r3, #1
008212c4  04 30 c0 05                                      strbeq r3, [r0, #4]
008212c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008212cc, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveFriendObserver
; alias: _ZN29CMatchingGLLiveFriendObserver16OnRequestFailureEii
; demangled: CMatchingGLLiveFriendObserver::OnRequestFailure(int, int)
; decoder-mode: arm
008212cc  1e ff 2f e1                                      bx lr
