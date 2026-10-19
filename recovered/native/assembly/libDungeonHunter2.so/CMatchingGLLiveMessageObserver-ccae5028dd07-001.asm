; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008241d4, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveMessageObserver
; alias: _ZN30CMatchingGLLiveMessageObserver14OnNetworkErrorEv
; demangled: CMatchingGLLiveMessageObserver::OnNetworkError()
; decoder-mode: arm
008241d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008241d8, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveMessageObserver
; alias: _ZN30CMatchingGLLiveMessageObserver16OnRequestTimeoutEi
; demangled: CMatchingGLLiveMessageObserver::OnRequestTimeout(int)
; decoder-mode: arm
008241d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008241dc, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLiveMessageObserver
; alias: _ZN30CMatchingGLLiveMessageObserver16OnRequestFailureEii
; demangled: CMatchingGLLiveMessageObserver::OnRequestFailure(int, int)
; decoder-mode: arm
008241dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008241e0, declared_size=36, range_size=36, mode=arm
; class-group: CMatchingGLLiveMessageObserver
; alias: _ZN30CMatchingGLLiveMessageObserver16OnRequestSuccessEiPci
; demangled: CMatchingGLLiveMessageObserver::OnRequestSuccess(int, char*, int)
; decoder-mode: arm
008241e0  6f 10 41 e2                                      sub r1, r1, #0x6f
008241e4  01 00 51 e3                                      cmp r1, #1
008241e8  10 40 2d e9                                      push {r4, lr}
008241ec  03 00 00 8a                                      bhi #0x824200
008241f0  65 73 ff eb                                      bl #0x800f8c
008241f4  01 20 a0 e3                                      mov r2, #1
008241f8  02 3c 06 e3                                      movw r3, #0x6c02
008241fc  03 20 c0 e7                                      strb r2, [r0, r3]
00824200  10 80 bd e8                                      pop {r4, pc}
