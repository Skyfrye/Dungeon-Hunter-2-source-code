; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd310, declared_size=60, range_size=60, mode=arm
; class-group: CharAISkillScript** std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >
; alias: _ZNSt6vectorIP17CharAISkillScriptSaIS1_EE20_M_allocate_and_copyIPS1_EES5_RjT_S7_
; demangled: CharAISkillScript** std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >::_M_allocate_and_copy<CharAISkillScript**>(unsigned int&, CharAISkillScript**, CharAISkillScript**)
; decoder-mode: arm
003cd310  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd314  08 00 80 e2                                      add r0, r0, #8
003cd318  02 40 a0 e1                                      mov r4, r2
003cd31c  01 20 a0 e1                                      mov r2, r1
003cd320  00 10 91 e5                                      ldr r1, [r1]
003cd324  03 50 a0 e1                                      mov r5, r3
003cd328  dc ff ff eb                                      bl #0x3cd2a0
003cd32c  05 00 54 e1                                      cmp r4, r5
003cd330  00 60 a0 e1                                      mov r6, r0
003cd334  02 00 00 0a                                      beq #0x3cd344
003cd338  04 10 a0 e1                                      mov r1, r4
003cd33c  05 20 64 e0                                      rsb r2, r4, r5
003cd340  48 05 fd eb                                      bl #0x30e868
003cd344  06 00 a0 e1                                      mov r0, r6
003cd348  70 80 bd e8                                      pop {r4, r5, r6, pc}
