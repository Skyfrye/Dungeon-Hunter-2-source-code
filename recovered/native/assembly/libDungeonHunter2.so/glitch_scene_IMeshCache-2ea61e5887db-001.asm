; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006be470, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IMeshCache
; alias: _ZN6glitch5scene10IMeshCacheD1Ev
; demangled: glitch::scene::IMeshCache::~IMeshCache()
; decoder-mode: arm
006be470  1e ff 2f e1                                      bx lr

; FUNCTION 0x006be7ac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IMeshCache
; alias: _ZN6glitch5scene10IMeshCacheD0Ev
; demangled: glitch::scene::IMeshCache::~IMeshCache()
; decoder-mode: arm
006be7ac  10 40 2d e9                                      push {r4, lr}
006be7b0  00 40 a0 e1                                      mov r4, r0
006be7b4  bd 3e f1 eb                                      bl #0x30e2b0
006be7b8  04 00 a0 e1                                      mov r0, r4
006be7bc  10 80 bd e8                                      pop {r4, pc}
