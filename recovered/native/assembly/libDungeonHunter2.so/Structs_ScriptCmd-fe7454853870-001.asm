; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c60, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ScriptCmd
; alias: _ZN7Structs9ScriptCmdD2Ev
; demangled: Structs::ScriptCmd::~ScriptCmd()
; decoder-mode: arm
004c6c60  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c64, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ScriptCmd
; alias: _ZN7Structs9ScriptCmdD1Ev
; demangled: Structs::ScriptCmd::~ScriptCmd()
; decoder-mode: arm
004c6c64  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c6c68, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ScriptCmd
; alias: _ZN7Structs9ScriptCmd8finalizeEv
; demangled: Structs::ScriptCmd::finalize()
; decoder-mode: arm
004c6c68  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cdd38, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ScriptCmd
; alias: _ZN7Structs9ScriptCmdD0Ev
; demangled: Structs::ScriptCmd::~ScriptCmd()
; decoder-mode: arm
004cdd38  10 40 2d e9                                      push {r4, lr}
004cdd3c  00 40 a0 e1                                      mov r4, r0
004cdd40  c7 e3 ff eb                                      bl #0x4c6c64
004cdd44  04 00 a0 e1                                      mov r0, r4
004cdd48  bc 09 f9 eb                                      bl #0x310440
004cdd4c  04 00 a0 e1                                      mov r0, r4
004cdd50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff828, declared_size=112, range_size=112, mode=arm
; class-group: Structs::ScriptCmd
; alias: _ZN7Structs9ScriptCmd4readEP11IStreamBase
; demangled: Structs::ScriptCmd::read(IStreamBase*)
; decoder-mode: arm
004ff828  10 40 2d e9                                      push {r4, lr}
004ff82c  00 40 a0 e1                                      mov r4, r0
004ff830  08 d0 4d e2                                      sub sp, sp, #8
004ff834  01 00 a0 e1                                      mov r0, r1
004ff838  04 10 84 e2                                      add r1, r4, #4
004ff83c  13 66 fd eb                                      bl #0x459090
004ff840  01 30 a0 e3                                      mov r3, #1
004ff844  00 00 53 e3                                      cmp r3, #0
004ff848  04 30 8d e5                                      str r3, [sp, #4]
004ff84c  0f 00 00 1a                                      bne #0x4ff890
004ff850  06 30 84 e2                                      add r3, r4, #6
004ff854  05 40 84 e2                                      add r4, r4, #5
004ff858  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff85c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff860  03 00 54 e1                                      cmp r4, r3
004ff864  02 20 21 e0                                      eor r2, r1, r2
004ff868  01 20 44 e5                                      strb r2, [r4, #-1]
004ff86c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff870  01 20 22 e0                                      eor r2, r2, r1
004ff874  01 20 c3 e5                                      strb r2, [r3, #1]
004ff878  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff87c  01 30 43 e2                                      sub r3, r3, #1
004ff880  01 20 22 e0                                      eor r2, r2, r1
004ff884  01 20 44 e5                                      strb r2, [r4, #-1]
004ff888  01 40 84 e2                                      add r4, r4, #1
004ff88c  f1 ff ff 3a                                      blo #0x4ff858
004ff890  08 d0 8d e2                                      add sp, sp, #8
004ff894  10 80 bd e8                                      pop {r4, pc}
