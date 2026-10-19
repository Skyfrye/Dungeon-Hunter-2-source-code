.syntax unified
.arm
.macro STARTFN base, lit1, lit2
  push {r4, lr}
  sub sp, sp, #40
  mov r4, r0
  add r0, sp, #16
  bl pthread_attr_init_plt
  add r0, sp, #16
  mov r1, #1
  bl pthread_attr_setdetachstate_plt
  ldr r12, 1f
  ldr r2, 2f
  add r12, pc, r12
  ldr r2, [r12, r2]
  add r0, sp, #4
  add r1, sp, #16
  mov r3, r4
  bl pthread_create_plt
  cmp r0, #0
  mvnne r0, #0
  add sp, sp, #40
  pop {r4, pc}
1: .word \lit1
2: .word \lit2
.endm
.section .patchA,"ax"
.global _start
_start:
STARTFN 0, 0x67cbd0, 0x397c
.section .patchB,"ax"
STARTFN 1, 0x67cb70, 0x38f4
